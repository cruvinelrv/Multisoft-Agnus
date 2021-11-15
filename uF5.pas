unit uF5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, DBCtrls, DBClient, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, SqlExpr;

type
  TfrmF5 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    dsVendas: TDataSource;
    StatusBar1: TStatusBar;
    dsClientes: TDataSource;
    Label1: TLabel;
    edtCaixa: TDBText;
    Label2: TLabel;
    edtDataCaixa: TDBText;
    edtTurno: TDBText;
    Label3: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel3: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edtSaldoInicial: TDBText;
    DBText17: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    dsCaixa: TDataSource;
    edtDevCompra: TJvCalcEdit;
    edtDevVenda: TJvCalcEdit;
    edtAvista: TJvCalcEdit;
    edtAprazo: TJvCalcEdit;
    edtCartao: TJvCalcEdit;
    edtCheque: TJvCalcEdit;
    edtConvenio: TJvCalcEdit;
    edtEntrada: TJvCalcEdit;
    edtOutras: TJvCalcEdit;
    edtTotal: TJvCalcEdit;
    edtTotalDia: TJvCalcEdit;
    edtRetiradas: TJvCalcEdit;
    edtDevolucao: TJvCalcEdit;
    edtTotalVenda: TJvCalcEdit;
    edtEntrega: TJvCalcEdit;
    edtTroco: TJvCalcEdit;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmF5: TfrmF5;
  GerEntrada : String;
  DevNoCaixa : String;

implementation

uses uDmPrincipal, uGlobal,
   udmF5, udmProgs, DateUtils;

{$R *.dfm}

procedure TfrmF5.BitBtn4Click(Sender: TObject);
begin
   close;
end;

procedure TfrmF5.FormCreate(Sender: TObject);
var
  mTotDevVenda : Currency;
  mTotDevCompra: Currency;
  mRetiradas2  : Currency;
  mEntrada2    : Currency;
  mAvista      : Currency;
  mAPrazo      : Currency;
  mVCartao     : Currency;
  mVConvenio   : Currency;
  mVPredatado  : Currency;
  mVOutras     : Currency;
  mFormaVenda  : Integer;
  mTipoVenda   : String;
  mSaldoAntes  : Currency;
  mEntrega2    : Currency;
  mTroco2      : Currency;

  //Entrada
  mVencimento: TDateTime;

begin
  dmF5 := TdmF5.Create(Self);

  mTotDevVenda :=0;
  mTotDevCompra:=0;
  mRetiradas2  :=0;
  mEntrada2    :=0;
  mAvista      :=0;
  mAPrazo      :=0;
  mVCartao     :=0;
  mVConvenio   :=0;
  mVPredatado  :=0;
  mVOutras     :=0;
  mFormaVenda  :=0;
  mTipoVenda   :='';
  mSaldoAntes  :=0;
  mEntrega2    :=0;
  mTroco2      :=0;
   edtCaixa.Caption:=NumeroCaixa1;
    with dmProgs do
    begin
      qryEmpresa.SQL.Clear;
      qryEmpresa.SQL.Add('SELECT * FROM EMPRESA WHERE CODIGO_EMP=:EMPRESA');
      qryEmpresa.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
      qryEmpresa.Open;
      if not qryEmpresa.IsEmpty then
      begin
          GerEntrada :=qryEmpresaENTRAD_GER_EMP.AsString ;
          DevNoCaixa :=qryEmpresaDEV_CAIXA_EMP.AsString  ;

      end ;
      qryEmpresa.Close;

    end ;
    With dmF5 do
    begin
        qryVendas.Close;
        cdsVendas.Close;
        qryVendas.SQL.Clear;
        qryVendas.SQL.Add('SELECT * FROM P_VENDAS WHERE COD_EMPRESA=:EMPRESA AND CHAVE_VENDA IS NULL AND CAIXA_VENDA='+NumeroCaixa1);
        qryVendas.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
        qryVendas.Open;
        if not (qryVendas.Eof) then
        begin
            while not (qryVendas.Eof) do
            begin
                // Totaliza as Devoluções
                if qryVendasTIPO_DOC_VENDA.AsString='3' then
                   mTotDevVenda :=mTotDevVenda +qryVendasVALORNOTA_VENDA.AsCurrency;

                if qryVendasTIPO_DOC_VENDA.AsString='4' then
                   mTotDevCompra:=mTotDevCompra +qryVendasVALORNOTA_VENDA.AsCurrency;

                mTipoVenda:=qryVendasTIPO_DOC_VENDA.AsString;

                if (mTipoVenda='3') or  ( mTipoVenda='4' ) or ( mTipoVenda='5' ) then
                begin
                     qryVendas.Next;
                     continue;

                end ;

                //
                if GerEntrada='T' then
                begin
                    mVencimento:=qryVendasVENCIMEN01_VENDA.AsDateTime;

                end ;

                qryTipoPagamento.Close;
                qryTipoPagamento.SQL.Clear;
                qryTipoPagamento.SQL.Add('SELECT * FROM P_CPAGAMENTO WHERE COD_EMPRESA='+CodigoEmpresa1+' and codigo_cpagamento='+qryVendasCPAGAMENTO_VENDA.AsString);
                qryTipoPagamento.Open;


                mFormaVenda:=qryTipoPagamentoCAIXA_CPAGAMENTO.AsInteger;
                if qryVendasENTREGA_VENDA.AsString='F' then
                begin
                    case mFormaVenda of
                      1: mAvista    :=mAvista+(qryVendasFATURA_VENDA.AsCurrency-qryVendasDESCONTO_VENDA.AsCurrency ) ;
                      2:
                      begin
                         mVCartao   :=mVCartao+(qryVendasFATURA_VENDA.AsCurrency-qryVendasDESCONTO_VENDA.AsCurrency ) ;
                         if mVencimento=qryVendasDATA_VENDA.AsDateTime then
                         begin
                            mEntrada2:=(mEntrada2+cdsVendasVALOR01_VENDA.AsCurrency);
                            mVCartao :=mVCartao-qryVendasDESCONTO_VENDA.AsCurrency;

                         end ;

                      end ;
                      3:
                      begin
                          mVPredatado:=mVPredatado+(qryVendasFATURA_VENDA.AsCurrency-qryVendasDESCONTO_VENDA.AsCurrency );
                          if mVencimento=qryVendasDATA_VENDA.AsDateTime then
                          begin
                             mEntrada2:=(mEntrada2+cdsVendasVALOR01_VENDA.AsCurrency);
                             mVPredatado:=(mVPredatado-qryVendasDESCONTO_VENDA.AsCurrency)

                          end ;

                      end ;
                      4:
                      begin
                          mVConvenio :=mVConvenio+(qryVendasFATURA_VENDA.AsCurrency-qryVendasDESCONTO_VENDA.AsCurrency );
                          if mVencimento=qryVendasDATA_VENDA.AsDateTime then
                          begin
                             mEntrada2 :=(mEntrada2+cdsVendasVALOR01_VENDA.AsCurrency);
                             mVConvenio:=(mVConvenio-qryVendasDESCONTO_VENDA.AsCurrency)

                          end ;

                      end ;

                      5:
                      begin
                          mAPrazo:=mAPrazo+(qryVendasFATURA_VENDA.AsCurrency-qryVendasDESCONTO_VENDA.AsCurrency ) ;
                          if mVencimento=qryVendasDATA_VENDA.AsDateTime then
                          begin
                             mEntrada2:=(mEntrada2+cdsVendasVALOR01_VENDA.AsCurrency);
                             mAPrazo  :=(mAPrazo-qryVendasDESCONTO_VENDA.AsCurrency)

                          end ;

                      end ;
                    else
                       mVOutras :=mVOutras +(qryVendasFATURA_VENDA.AsCurrency-qryVendasDESCONTO_VENDA.AsCurrency ) ;

                    end ;
                end else if qryVendasENTREGA_VENDA.AsString='T'  then
                begin
                     mEntrega2:=mEntrega2+(qryVendasFATURA_VENDA.AsCurrency-qryVendasDESCONTO_VENDA.AsCurrency );
                     mTroco2:=mTroco2+(qryVendasTROCO_VENDA.AsCurrency-(qryVendasFATURA_VENDA.AsCurrency-qryVendasDESCONTO_VENDA.AsCurrency ));

                end ;

                qryVendas.Next;

            end;
            edtEntrega.Value:=mEntrega2 ;
            edtTroco.Value  :=mtroco2 ;
            edtDevCompra.Value:=mTotDevCompra ;
            edtDevVenda.Value :=mTotDevVenda;
            edtAvista.Value   :=mAvista;
            edtAprazo.Value   :=mAPrazo;
            edtCartao.Value   :=mVCartao;
            edtCheque.Value   :=mVPredatado;
            edtConvenio.Value :=mVConvenio;
            edtOutras.Value   :=mVOutras;
            edtEntrada.Value  :=mEntrada2;
            edtTotal.Value:=(mAvista+mVCartao+mVPredatado+mVConvenio+mAPrazo+mVOutras+mEntrada2);
            edtTotalVenda.Value:=edtTotal.Value;
            edtDevolucao.Value:=(mTotDevVenda+mTotDevCompra)

        end ;
        // Caixa
        qryVendas.close;
        cdsVendas.Close;
        cdsVendas.CommandText:=('SELECT * FROM P_VENDAS WHERE COD_EMPRESA='+CodigoEmpresa1+' AND CHAVE_VENDA IS NULL AND CAIXA_VENDA='+NumeroCaixa1+' and tipo_doc_venda NOT IN(3,4,5)');
        cdsVendas.Open;
        
        cdsCaixa.Close;
        qryCaixa.Close;
        qryCaixa.SQL.Clear;
        qryCaixa.SQL.Add('SELECT * FROM P_CAIXA WHERE COD_EMPRESA=:EMPRESA AND CODIGO_CAIXA=:CAIXA AND SUBSTRING(CHAVE_CAIXA FROM 12 FOR 10) = ''''');
        qryCaixa.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1) ;
        qryCaixa.ParamByName('CAIXA').AsInteger:=StrToInt(NumeroCaixa1);
        qryCaixa.Open;
        cdsCaixa.Open;
        if not cdsCaixa.IsEmpty  then
        begin
           //edtDataCaixa.Caption:=copy(cdsCaixaCHAVE_CAIXA.AsString,1,pos('_',cdsCaixaCHAVE_CAIXA.AsString)-1);
           //edtTurno.Caption:=copy(cdsCaixaCHAVE_CAIXA.AsString,pos('_',cdsCaixaCHAVE_CAIXA.AsString)+1,1);
           edtDataCaixa.Caption := copy(cdsCaixaCHAVE_CAIXA.AsString , 1, 8);
           edtTurno.Caption     := copy(cdsCaixaCHAVE_CAIXA.AsString , 10, 1);

           mEntrada2:=cdsCaixaRECOUTALOJA_CAIXA.AsCurrency + cdsCaixaENTRADAS_CAIXA.AsCurrency;

           mRetiradas2:=cdsCaixaRETIRADAS_CAIXA.AsCurrency+cdsCaixaREMECABANCO_CAIXA.AsCurrency+
                        cdsCaixaTRANSGERENCIA_CAIXA.AsCurrency+cdsCaixaDESPESADIA_CAIXA.AsCurrency+
                        cdsCaixaRETCARTAO_CAIXA.AsCurrency;

           mSaldoAntes:=cdsCaixaSALDO_INICIAL_CAIXA.AsCurrency;
        end else
        begin
            Application.MessageBox('Caixa não localizado','Informação',mb_ok+MB_ICONINFORMATION);

        end ;
        edtRetiradas.Value:=mRetiradas2;
        edtTotalDia.Value := edtTotal.Value + mSaldoAntes + mEntrada2 - (mRetiradas2);


    end;

end;

procedure TfrmF5.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 46) Then
   KEY := 0;
end;

procedure TfrmF5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmF5.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
