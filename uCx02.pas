{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> EST001
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> EVALDO BARCELOS PALMA
 DATA DE CONCEPÇÃO    --> 18/10/2006
 FINALIDADE           --> Lança Saldo inicial no caixa.
 COMENTARIO           --> TAG 1 --> ENTRADAS CAIXA  TAG 2 --> RETIRADAS CAIXA
 ******************************************************************************}

unit uCx02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvDBControls, JvBaseEdits, Mask, JvExMask, JvToolEdit,
  ExtCtrls, DBCtrls, Buttons, DB, DBClient, ppBands, ppCache, ppClass,
  ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppPrnabl, ppStrtch,
  ppCTMain, ppVar, ppCtrls, ppModule, raCodMod;

type
  TfrmCx02 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    edtDataCaixa: TJvDateEdit;
    edtTurno: TJvCalcEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    edtValor: TJvCalcEdit;
    cobOperacao: TComboBox;
    cobContaBanco: TDBLookupComboBox;
    edtObservacao: TEdit;
    btnGravar: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    edtCaixa: TJvDBCalcEdit;
    dsCaixa: TDataSource;
    GroupBox9: TGroupBox;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Label1: TLabel;
    cobTipoOperacao: TComboBox;
    cobTipOperacao1: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cobContaBancoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmCx02: TfrmCx02;

implementation

uses uDmCx02, uGlobal, uDmPrincipal;

{$R *.dfm}

procedure TfrmCx02.BitBtn2Click(Sender: TObject);
begin

   Close;

end;

procedure TfrmCx02.FormShow(Sender: TObject);
var
   mEntraAntes: Currency;
begin
   DmCx02.qryContaBanco.close;
   DmCx02.cdsContaBanco.close;

   if self.Tag = 2 then  // Se for Retiradas
   begin
      cobOperacao.Visible     := True;
      cobTipoOperacao.Visible := False;
      cobTipOperacao1.Visible := False;
      GroupBox7.Enabled       := true;
      GroupBox9.Visible       := true;
      GroupBox5.Caption       := 'Retiradas a soma';

      if not (DmCx02.cdsContaBanco.Eof) then
         cobContaBanco.KeyValue:=1;

      DmCx02.qryContaBanco.ParamByName('EMPRESA').AsInteger := StrToInt(CodigoEmpresa1);
      DmCx02.qryContaBanco.Open;
      DmCx02.cdsContaBanco.Open;
   end
   else
   begin
      cobOperacao.Visible     := False;
      cobTipoOperacao.Visible := True;
      cobTipOperacao1.Visible := False;
      GroupBox9.Visible := False;
      GroupBox5.Caption := 'Entradas a somar';
   end;

   DmCx02.cdsCaixa.Close;
   DmCx02.qryCaixa.Open;
   DmCx02.qryCaixa.ParamByName('CAIXA').AsInteger  :=StrToInt(NumeroCaixa1);
   DmCx02.qryCaixa.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
   DmCx02.qryCaixa.Open;
   DmCx02.cdsCaixa.Open;

   DmCx02.cdsCaixa.IndexFieldNames := 'CHAVE_CAIXA';

   if not DmCx02.cdsCaixa.Eof then
   begin
      DmCx02.cdsCaixa.First;
      while not DmCx02.cdsCaixa.Eof do
      begin
         if Length(DmCx02.cdsCaixaCHAVE_CAIXA.AsString) = 11 then
         begin
            edtDataCaixa.Date := StrToDate(copy(DmCx02.cdsCaixaCHAVE_CAIXA.AsString,1,pos('_',DmCx02.cdsCaixaCHAVE_CAIXA.AsString)-1));
            edtTurno.Value    := StrToInt(copy(DmCx02.cdsCaixaCHAVE_CAIXA.AsString,pos('_',DmCx02.cdsCaixaCHAVE_CAIXA.AsString)+1,1));

            DmCx02.cdsCaixa.Edit;

            btnGravar.Enabled := true;
            exit;
         end;

         DmCx02.cdsCaixa.Next;
      end;
   end;
end;

procedure TfrmCx02.btnGravarClick(Sender: TObject);
var
   mValorAntes: Currency;
   mOperacao: String;
begin
   case ModeloCaixa1 of
      1:
       begin
          case cobOperacao.ItemIndex of
              0: mOperacao := 'D';
              1: mOperacao := 'C';
              2: mOperacao := 'O';
           end;
      end;
      2:
       begin
          case cobTipoOperacao.ItemIndex of
             0: mOperacao := 'R';
             1: mOperacao := 'T';
             2: mOperacao := 'D';
             3: mOperacao := 'C';
             4: mOperacao := 'O';
             5: mOperacao := 'A';
          end;
       end;
   end ;

   if edtValor.Value <= 0 then
   begin
      Application.MessageBox('Valor Invalido','Erro',MB_ICONERROR);
      edtValor.SetFocus;
      exit;
   end;

   DmCx02.cdsCaixa.Edit;

   if self.tag = 1 then  // Para entradas
   begin
      mValorAntes := DmCx02.cdsCaixaENTRADAS_CAIXA.AsCurrency;
      DmCx02.cdsCaixaENTRADAS_CAIXA.AsCurrency := mValorAntes + edtValor.Value;
   end;

   if self.Tag = 2 then  // Para Retiradas.
   begin
      mValorAntes := DmCx02.cdsCaixaRETIRADAS_CAIXA.AsCurrency;
      DmCx02.cdsCaixaRETIRADAS_CAIXA.AsCurrency := mValorAntes + edtValor.Value;
   end;

   DmCx02.cdsCaixa.Post;

   if DmCx02.cdsCaixa.ApplyUpdates(0) = 0 then
   begin
      DmCx02.cdsCaiMov.Insert;

      DmCx02.cdsCaiMovCOD_EMPRESA         .AsInteger  := StrToInt(CodigoEmpresa1);
      DmCx02.cdsCaiMovDATA_CAIXAMOV       .AsDateTime := edtDataCaixa.Date;
      DmCx02.cdsCaiMovVALOR_CAIXAMOV      .AsCurrency := edtValor.Value;
      DmCx02.cdsCaiMovHORA_CAIXAMOV       .AsDateTime := time;
      DmCx02.cdsCaiMovOBSERVACAO_CAIXAMOV .AsString   := edtObservacao.Text;
      DmCx02.cdsCaiMovCHAVE_CAIXAMOV      .AsString   := FormatDateTime('dd/mm/yy',edtDataCaixa.Date) + '_' + edtTurno.Text ;
      DmCx02.cdsCaiMovCAIXA_CAIXAMOV      .AsInteger  := round(edtCaixa.Value);
      DmCx02.cdsCaiMovUSUARIO_CAIXAMOV    .AsString   := Usuario1;

      case self.Tag of
        1: DmCx02.cdsCaiMovTIPO_CAIXAMOV.AsString := 'E';
        2: DmCx02.cdsCaiMovTIPO_CAIXAMOV.AsString := 'R';
      end;

      case ModeloCaixa1 of
         1:
          begin
             case cobOperacao.ItemIndex of
                0: DmCx02.cdsCaiMovTIPO_PAG_CAIXAMOV.AsString := 'D';
                1: DmCx02.cdsCaiMovTIPO_PAG_CAIXAMOV.AsString := 'C';
                2: DmCx02.cdsCaiMovTIPO_PAG_CAIXAMOV.AsString := 'O';
             end;
         end;
        2:
         begin
            if self.Tag = 2 then  // se for Retiradas e Modelo de Caixa for 2.
            begin
               case cobTipoOperacao.ItemIndex of
                  0: DmCx02.cdsCaiMovORIGEM_CAIXAMOV.AsString := 'R';
                  1: DmCx02.cdsCaiMovORIGEM_CAIXAMOV.AsString := 'T';
                  2: DmCx02.cdsCaiMovORIGEM_CAIXAMOV.AsString := 'D';
                  3: DmCx02.cdsCaiMovORIGEM_CAIXAMOV.AsString := 'C';
                  4: DmCx02.cdsCaiMovORIGEM_CAIXAMOV.AsString := 'O';
                  5: DmCx02.cdsCaiMovORIGEM_CAIXAMOV.AsString := 'A';
               end;
            end;

            if self.Tag = 1 then  // se for entrdas e Modelo de Caixa for 2.
            begin
               case cobTipOperacao1.ItemIndex of
                  0: DmCx02.cdsCaiMovORIGEM_CAIXAMOV.AsString := 'R';
                  1: DmCx02.cdsCaiMovORIGEM_CAIXAMOV.AsString := '0';
               end;
            end;
         end;
      end;

      DmCx02.cdsCaiMovTIPO_PAG_CAIXAMOV.AsString:=mOperacao;
      DmCx02.cdsCaiMov.Post;

      if DmCx02.cdsCaiMov.ApplyUpdates(0) = 0 then
      begin
         if self.Tag = 2 then
         begin
            DmCx02.cdsResBan.Insert;

            DmCx02.cdsResBanCHAVE_RESBAN   .AsString   := edtDataCaixa.Text + '_' + FormatFloat('000',DmCx02.cdsContaBancoCODIGO_BANCO.AsInteger);
            DmCx02.cdsResBanBANCO_RESBAN   .AsInteger  := DmCx02.cdsContaBancoCODIGO_BANCO.AsInteger;
            DmCx02.cdsResBanCREDITO_RESBAN .AsCurrency := edtValor.Value;
            DmCx02.cdsResBanCOD_EMPRESA    .AsInteger  := StrToInt(CodigoEmpresa1);

            DmCx02.cdsResBan.Post;
            DmCx02.cdsResBan.ApplyUpdates(0);

            DmCx02.cdsConLan.Insert;

            DmCx02.cdsConLanCODIGO_CONLAN    .AsInteger  := Busca_Proximo('P_CONLAN','CODIGO_CONLAN');
            DmCx02.cdsConLanCORRENTE_CONLAN  .AsInteger  := DmCx02.cdsContaBancoCODIGO_BANCO.AsInteger;
            DmCx02.cdsConLanCONTA_CONLAN     .AsInteger  := 0;
            DmCx02.cdsConLanCENTRO_CONLAN    .AsInteger  := 0;
            DmCx02.cdsConLanCLI_FOR_CONLAN   .AsInteger  := 0;
            DmCx02.cdsConLanTIPO_C_F_CONLAN  .AsString   := '';
            DmCx02.cdsConLanDOCUMENTO_CONLAN .AsString   := 'TRANSF FAT';
            DmCx02.cdsConLanDATA_CONLAN      .AsDateTime := edtDataCaixa.Date;
            DmCx02.cdsConLanMOVIMENTO_CONLAN .AsDateTime := DataSystem1;
            DmCx02.cdsConLanHISTORICO_CONLAN .AsString   := 'Valor recebido do caixa faturamento';
            DmCx02.cdsConLanVALOR_CONLAN     .AsCurrency := edtValor.Value;
            DmCx02.cdsConLanTIPO_CONLAN      .AsString   := 'C';
            DmCx02.cdsConLanORIGEM_CONLAN    .AsString   := 'T';
            DmCx02.cdsConLanESTORNO_CONLAN   .AsString   := '';
            DmCx02.cdsConLanCOD_EMPRESA      .AsInteger  := StrToInt(CodigoEmpresa1);

            DmCx02.cdsConLan.Post;
            DmCx02.cdsConLan.ApplyUpdates(0);
         end;
      end;
   end;

   edtValor      .Value     := 0;
   cobOperacao   .ItemIndex := 0;
   edtObservacao .Text      := '';
   edtValor      .SetFocus;
end;

procedure TfrmCx02.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCx02.FormCreate(Sender: TObject);
begin
   DmCx02 := TDmCx02.Create(Self);
   //Movimento do Caixa.
   DmCx02.qryCaiMov.Close;
   DmCx02.cdsCaiMov.Close;
   DmCx02.qryCaiMov.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
   DmCx02.qryCaiMov.Open;
   DmCx02.cdsCaiMov.Open;

   //Movimento do Banco
   DmCx02.cdsResBan.Close;
   DmCx02.qryResBan.Close;
   DmCx02.qryResBan.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
   DmCx02.qryResBan.Close;
   DmCx02.cdsResBan.open;

   //Movimento do ConLan
   DmCx02.qryConLan.Close;
   DmCx02.cdsConLan.Close;
   DmCx02.qryConLan.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
   DmCx02.qryConLan.open;
   DmCx02.cdsConLan.open;

   if ModeloCaixa1 = 1 then
   begin
      cobTipoOperacao.Visible := false;
      cobOperacao.Visible     := True;
   end;

   if ModeloCaixa1 = 2 then
   begin
      if self.Tag = 1 then
         cobTipOperacao1.Visible := false
      else
         cobTipoOperacao.Visible := True;

      cobOperacao.Visible := False;
   end;
end;

procedure TfrmCx02.cobContaBancoExit(Sender: TObject);
begin
   if cobContaBanco.KeyValue > 0 then
      edtObservacao.Text := 'Transferência para a conta ' + StrZero(cobContaBanco.KeyValue, 3);
end;

procedure TfrmCx02.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
