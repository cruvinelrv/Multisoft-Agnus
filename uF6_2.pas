unit uF6_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, DBCtrls, DBClient;

type
  TfrmF6_2 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    dsReceber: TDataSource;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    lblVencidos: TLabel;
    Label5: TLabel;
    lblAVencer: TLabel;
    Label7: TLabel;
    lblTotal: TLabel;
    StatusBar1: TStatusBar;
    cdsDuplicata: TClientDataSet;
    cdsDuplicataDUPLICATA: TStringField;
    cdsDuplicataEMISSAO: TDateField;
    cdsDuplicataPRORROGACAO: TDateField;
    cdsDuplicataVENCIMENTO: TDateField;
    cdsDuplicataDIAS: TIntegerField;
    cdsDuplicataVALOR: TCurrencyField;
    cdsDuplicataRECEBIDO: TCurrencyField;
    cdsDuplicataJUROS: TCurrencyField;
    cdsDuplicataTOTAL: TCurrencyField;
    cdsDuplicataPORTADOR: TIntegerField;
    cdsDuplicataBAIXA: TStringField;
    cdsDuplicataNOME_CLIENTE: TStringField;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
    Cod_cliente: String;

  end;

var
  frmF6_2: TfrmF6_2;

implementation

uses uDmPrincipal, uGlobal, udmF6, uF7;

{$R *.dfm}

procedure TfrmF6_2.BitBtn4Click(Sender: TObject);
begin
    close;

end;

procedure TfrmF6_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dmF6.Tag = 1 then
      dmF6 := nil;
end;

procedure TfrmF6_2.FormShow(Sender: TObject);
var
   mVencidos: Real;
   mAVencer: Real;
begin
   mVencidos := 0;
   mAVencer  := 0;
   cdsDuplicata.Close;
   cdsDuplicata.CreateDataSet;
   cdsDuplicata.Open;

   if dmF6 = nil then
   begin
      dmF6 := TdmF6.Create(Self);
      dmF6.Tag := 1; // Diz ao form liberar mem�ria no OnClose deste
   end
   else
      ;//Cod_cliente := dmF6.cdsPesqClientes2CODIGO_CLIENTE.AsString;

   with dmF6 do
   begin

      dmPrincipal.sdsTemporario.Close;
      dmPrincipal.sdsTemporario.CommandText := 'SELECT DUPLICATA_RECEBER,EMISSAO_RECEBER,VENCIMENTO_RECEBER,' +
                                               'PREVISAO_RECEBER,VENCIMENTO_RECEBER,PREVISAO_RECEBER,'        +
                                               'codigo_portador_receber,valor_receber,DESCJUROS_RECEBER,'     +
                                               ' C.NOME_CLIENTE, '                                            +
                                               ' valorpago_receber,TIPO_BAIXA_RECEBER FROM P_RECEBER'         +
                                               ' LEFT OUTER JOIN E_CLIENTE C ON (CODIGO_CLIENTE_RECEBER = C.CODIGO_CLIENTE) '+
                                               ' WHERE CODIGO_CLIENTE_RECEBER=' + Cod_cliente + ' AND (TIPO_BAIXA_RECEBER IS NULL OR TIPO_BAIXA_RECEBER<>''T'')' + mOpcaoEmpresa;
      dmPrincipal.sdsTemporario.ExecSQL(true);
      dmPrincipal.sdsTemporario.Open;

      if not dmPrincipal.sdsTemporario.IsEmpty then
      begin

        dmPrincipal.sdsTemporario.First; 
        While not dmPrincipal.sdsTemporario.Eof do
        begin
           cdsDuplicata.Insert;
           cdsDuplicataDUPLICATA.AsString     := dmPrincipal.sdsTemporario.fieldByName('DUPLICATA_RECEBER').AsString;
           cdsDuplicataEMISSAO.AsDateTime     := dmPrincipal.sdsTemporario.fieldByName('EMISSAO_RECEBER').AsDateTime;
           cdsDuplicataVENCIMENTO.AsDateTime  := dmPrincipal.sdsTemporario.fieldByName('VENCIMENTO_RECEBER').AsDateTime;
           cdsDuplicataDIAS.AsInteger         := Round(dmPrincipal.sdsTemporario.fieldByName('VENCIMENTO_RECEBER').AsDateTime - DataSystem1);

           cdsDuplicataPRORROGACAO.AsDateTime := dmPrincipal.sdsTemporario.fieldByName('PREVISAO_RECEBER').AsDateTime;
           if cdsDuplicataPRORROGACAO.AsString = '30/12/1899' then
              cdsDuplicataPRORROGACAO.Clear;

           cdsDuplicataVALOR.AsCurrency       := dmPrincipal.sdsTemporario.fieldByName('VALOR_RECEBER').AsCurrency;
           cdsDuplicataRECEBIDO.AsCurrency    := dmPrincipal.sdsTemporario.fieldByName('VALORPAGO_RECEBER').AsCurrency;
           cdsDuplicataBAIXA.AsString         := dmPrincipal.sdsTemporario.fieldByName('TIPO_BAIXA_RECEBER').AsString;
           cdsDuplicataJUROS.AsCurrency       := dmPrincipal.sdsTemporario.fieldByName('DESCJUROS_RECEBER').AsCurrency;
           cdsDuplicataTOTAL.AsCurrency       := dmPrincipal.sdsTemporario.FieldByName('VALOR_RECEBER').AsCurrency-dmPrincipal.sdsTemporario.FieldByName('VALORPAGO_RECEBER').AsCurrency;
           cdsDuplicataPORTADOR.AsInteger     := dmPrincipal.sdsTemporario.FieldByName('codigo_portador_receber').AsInteger;
           cdsDuplicataNOME_CLIENTE.AsString  := dmPrincipal.sdsTemporario.FieldByName('NOME_CLIENTE').AsString;

           if dmPrincipal.sdsTemporario.FieldByName('TIPO_BAIXA_RECEBER').AsString='P' then
              cdsDuplicataBAIXA.AsString := 'Bx Parcial';

           if dmPrincipal.sdsTemporario.fieldByName('VENCIMENTO_RECEBER').AsDateTime < DataSystem1 then
              mVencidos := ((mVencidos + dmPrincipal.sdsTemporario.fieldByName('VALOR_RECEBER').AsCurrency) - dmPrincipal.sdsTemporario.fieldByName('VALORPAGO_RECEBER').AsCurrency)
           else
              mAVencer  := ((mAVencer + dmPrincipal.sdsTemporario.fieldByName('VALOR_RECEBER').AsCurrency) - dmPrincipal.sdsTemporario.fieldByName('VALORPAGO_RECEBER').AsCurrency);

             cdsDuplicata.Post;
             dmPrincipal.sdsTemporario.Next;
        end;
      end;

   lblVencidos.Caption := FormatFloat('###,###0.00',mVencidos);
   lblAVencer.Caption  := FormatFloat('###,###0.00',mAVencer);
   lblTotal.Caption    := FormatFloat('###,###0.00',mAVencer+mVencidos);

   end;
end;

procedure TfrmF6_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
