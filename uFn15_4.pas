{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN018)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 10/04/2007
 FINALIDADE           --> Baixar Contas a Receber / Recibo
 COMENTARIO           -->

 *******************************************************************************}

unit uFn15_4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExMask, JvToolEdit, JvDBControls, Mask,
  DBCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, DB, ppDB, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, SqlExpr, Buttons, ppStrtch, ppMemo;

type
  TfrmFn15_4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtDataVencimento: TJvDBDateEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DataSource1: TDataSource;
    edtDataPagamento: TJvDateEdit;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel11: TppLabel;
    ppLine8: TppLine;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLine9: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLine11: TppLine;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel4: TppLabel;
    ppLabel23: TppLabel;
    ppDBText5: TppDBText;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel20: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    btnCancelar: TBitBtn;
    btnImprimir: TBitBtn;
    ppLabel30: TppLabel;
    ppDBText7: TppDBText;
    edtJurosDesc: TJvValidateEdit;
    ppLabel8: TppLabel;
    ppLabel13: TppLabel;
    ppDBMemo1: TppDBMemo;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppLabel29GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLabel21GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel27GetText(Sender: TObject; var Text: String);
    procedure ppLabel28GetText(Sender: TObject; var Text: String);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppLabel30GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    CNPJEmpresa,
    EndereEmpresa,
    BairroEmpresa,
    CidadeEmpresa,
    EstadoEmpresa,
    NomeEmpresa : String;
  end;

var
  frmFn15_4: TfrmFn15_4;

implementation

uses uGlobal, uFn0202, uDmPrincipal, udmFn0202, uProcess;

{$R *.dfm}

procedure TfrmFn15_4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then // esc
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn15_4.FormShow(Sender: TObject);
begin
   dmFn0202.cdsRecibo.Close;
   dmFn0202.cdsRecibo.Params.ParamByName('cod_empresa').AsInteger := 0;
   dmFn0202.cdsRecibo.Open;

   if (not(dmFn0202.cdsRecibo.State = dsInsert)) then
      dmFn0202.cdsRecibo.Append;

   edtDataVencimento.Date := frmFn0202.edtDataVencimento.Date;

   if frmFn0202.Baixa_Varios_Titulos = True then
   begin
      dmFn0202.cdsReciboCODIGO_RECIBO.AsInteger    := 999999999;
      dmFn0202.cdsReciboNUM_DOC_RECIBO.AsString    := 'Títulos';
      dmFn0202.cdsReciboCLI_FOR_RECIBO.AsInteger   := dmFn0202.cdsReceberCODIGO_CLIENTE_RECEBER.AsInteger;
      dmFn0202.cdsReciboNOME_CLIENTE.AsString      := dmFn0202.cdsReceberNOME_CLIENTE.AsString;
      dmFn0202.cdsReciboHISTORICO_RECIBO.AsString  := frmFn0202.Historico_P_Relatorio3;

      // se frmFn0202.Dif_ValorPago_P_Relat > 0 é porque foi dado um desconto em cima do valor principal
      // do título, neste caso o processo tem que proceder da seguinte forma:
      if frmFn0202.Dif_ValorPago_P_Relat > 0 then
      begin
         dmFn0202.cdsReciboJUROS_DESC_RECIBO.AsFloat  := frmFn0202.Dif_ValorPago_P_Relat;
         edtJurosDesc.Value                           := (-1 * frmFn0202.Dif_ValorPago_P_Relat);
      end
      else
      begin
         dmFn0202.cdsReciboJUROS_DESC_RECIBO.AsFloat  := frmFn0202.edtJurosDesconto.Value;
         edtJurosDesc.Value                           := frmFn0202.edtJurosDesconto.Value;
      end;

      dmFn0202.cdsReciboVALOR_RECIBO.AsFloat       := frmFn0202.Valor_Pago_Relat;
      dmFn0202.cdsReciboVALOR_PAGO_RECIBO.AsFloat  := frmFn0202.Valor_Pago_Relat;
      dmFn0202.cdsReciboFAVORECIDO_RECIBO.AsString := dmFn0202.cdsReceberNOME_CLIENTE.AsString;

      edtDataPagamento.Date := frmFn0202.Data_Fluxo_Caixa;

      dmFn0202.cdsRecibo.Post;

      Exit;
   end;

   dmFn0202.cdsReciboNUM_DOC_RECIBO.AsString := dmFn0202.cdsReceberDUPLICATA_RECEBER.AsString;

   dmFn0202.cdsReciboVENCIMENTO_RECIBO.AsDateTime := dmFn0202.cdsReceberVENCIMENTO_RECEBER.AsDateTime;

   dmFn0202.cdsReciboCLI_FOR_RECIBO.AsInteger := dmFn0202.cdsReceberCODIGO_CLIENTE_RECEBER.AsInteger;

   dmFn0202.cdsReciboNOME_CLIENTE.AsString := dmFn0202.cdsReceberNOME_CLIENTE.AsString;

   dmFn0202.cdsReciboHISTORICO_RECIBO.AsString := frmFn0202.Historico_P_Relatorio;

   edtDataPagamento.Date := frmFn0202.Data_Fluxo_Caixa;

   dmFn0202.cdsReciboVALOR_RECIBO.AsFloat := frmFn0202.edtValorPago.Value; // baixa parcial

   if frmFn0202.cbxTipoBaixa.ItemIndex = 0 then // baixa total
      edtJurosDesc.Value := dmFn0202.cdsReceberDESCJUROS_RECEBER.AsString
   else
      edtJurosDesc.Value := frmFn0202.edtJuro.Value;

   dmFn0202.cdsReciboVALOR_PAGO_RECIBO.AsFloat := frmFn0202.edtValorPago.Value;

   dmFn0202.cdsReciboFAVORECIDO_RECIBO.AsString := dmFn0202.cdsReceberNOME_CLIENTE.AsString;
end;

procedure TfrmFn15_4.FormCreate(Sender: TObject);
Var
  FSQL : TSqlquery;
begin
   FSQL := TSQLQuery.Create(Application);

   try
   FSQL.SQLConnection := DmPrincipal.DbConexao;
   FSQL.Close;
   FSQL.SQL.Clear;
   FSQL.SQL.Add(' SELECT * FROM EMPRESA WHERE CODIGO_EMP = ' + CodigoEmpresa1);

   FSQL.Open;

   if not FSQL.IsEmpty then
   begin
      Text := FSQL.FieldByName('EMPRESA').AsString;
      NomeEmpresa := FSQL.FieldByName('EMPRESA').AsString;
      CNPJEmpresa := FSQL.FieldByName('CGC_EMP').AsString;
      EndereEmpresa := FSQL.FieldByName('ENDERECO_EMP').AsString;
      BairroEmpresa := FSQL.FieldByName('BAIRRO_EMP').AsString;
      CidadeEmpresa := FSQL.FieldByName('CIDADE_EMP').AsString;
      EstadoEmpresa := FSQL.FieldByName('ESTADO_EMP').AsString;
   end;

   Finally
   FreeAndNil(FSQL);
  end;
end;

procedure TfrmFn15_4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmFn0202.Baixa_Varios_Titulos = True then
   begin
      if not dmFn0202.cdsReceber.IsEmpty then
      begin
         dmFn0202.cdsRecibo.EmptyDataSet;

         dmFn0202.cdsRelatorio.First;

         DataSource1.Enabled := False;

         frmProcess := TfrmProcess.Create(Self);
         frmProcess.JvgLabel1.Caption := 'Processando Finalização...';
         frmProcess.ProgressBar1.Max := dmFn0202.cdsRelatorio.RecordCount;
         frmProcess.Show;
         Application.ProcessMessages;

         while not dmFn0202.cdsRelatorio.Eof do
         begin
            frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
            frmProcess.Refresh;

            dmFn0202.cdsRecibo.Append;

            dmFn0202.cdsReciboCODIGO_RECIBO.AsInteger      := Busca_Proximo('P_RECIBO', 'CODIGO_RECIBO');
            dmFn0202.cdsReciboCLI_FOR_RECIBO.AsInteger     := dmFn0202.cdsRelatorioCODIGO_CLIENTE.AsInteger;
            dmFn0202.cdsReciboVALOR_RECIBO.AsFloat         := dmFn0202.cdsRelatorioVALOR.AsFloat;
            dmFn0202.cdsReciboVALOR_PAGO_RECIBO.AsFloat    := dmFn0202.cdsRelatorioVALOR_PAGO.AsFloat;
            dmFn0202.cdsReciboFAVORECIDO_RECIBO.asString   := dmFn0202.cdsRelatorioNOME_CLIENTE.AsString;
            dmFn0202.cdsReciboHISTORICO_RECIBO.AsString    := 'Baixa Total do Titulo -' + dmFn0202.cdsRelatorioNUM_DOCUMENTO.AsString;
            dmFn0202.cdsReciboNUM_DOC_RECIBO.AsString      := dmFn0202.cdsRelatorioNUM_DOCUMENTO.AsString;
            dmFn0202.cdsReciboVENCIMENTO_RECIBO.AsDateTime := dmFn0202.cdsRelatorioVENCIMENTO.AsDateTime;
            dmFn0202.cdsReciboCOD_EMPRESA.AsInteger        := StrToInt(CodigoEmpresa1);
            dmFn0202.cdsReciboJUROS_DESC_RECIBO.AsFloat    := dmFn0202.cdsRelatorioJUROS_DESCONTO.AsFloat;
            dmFn0202.cdsReciboTIP_DOC_RECIBO.AsString      := 'R';
            dmFn0202.cdsReciboEMIS_PGTO_RECIBO.AsDateTime  := dmFn0202.cdsRelatorioEMISSAO.AsDateTime;

            GravaLogUser(self, ' Grava Recibo : ' + dmFn0202.cdsReciboCODIGO_RECIBO.AsString);

            dmFn0202.cdsRecibo.Post;

            dmFn0202.cdsRelatorio.Next;
         end;

         frmProcess.Release;
         frmProcess := nil;

         DataSource1.Enabled := True;
      end;

      dmFn0202.cdsRecibo.ApplyUpdates(0);

      Exit;
   end;

   if dmFn0202.cdsRecibo.State in [dsInsert, dsEdit] then
   begin
      if dmFn0202.cdsRecibo.State = dsInsert then
         GravaLogUser(self, ' Grava Recibo : ' + dmFn0202.cdsReciboCODIGO_RECIBO.AsString)
      else
         GravaLogUser(self, ' Altera Recibo : ' + dmFn0202.cdsReciboCODIGO_RECIBO.AsString);

      dmFn0202.cdsReciboCODIGO_RECIBO.AsInteger := Busca_Proximo('P_RECIBO', 'CODIGO_RECIBO');
      dmFn0202.cdsReciboCOD_EMPRESA.AsInteger := StrToInt(CodigoEmpresa1);
      dmFn0202.cdsReciboJUROS_DESC_RECIBO.AsVariant := edtJurosDesc.Value;
      dmFn0202.cdsReciboTIP_DOC_RECIBO.AsString := 'R';
      dmFn0202.cdsReciboEMIS_PGTO_RECIBO.AsDateTime := frmFn0202.edtDataEmissao.Field.AsDateTime;

      dmFn0202.cdsRecibo.Post;

      dmFn0202.cdsRecibo.ApplyUpdates(0);
   end;
end;

procedure TfrmFn15_4.ppLabel29GetText(Sender: TObject; var Text: String);
begin
    if frmFn0202.Baixa_Varios_Titulos = True then
   begin
      Text := UpperCase('(' + Extenso(dmFn0202.cdsReciboVALOR_PAGO_RECIBO.AsFloat) + ')');
      Exit;
   end;

        // função retorna valor por extenso
   Text := UpperCase('(' + Extenso(frmFn0202.edtValorPago.Value) + ')');
end;

procedure TfrmFn15_4.ppLabel4GetText(Sender: TObject; var Text: String);
begin
   if frmFn0202.cbxTipoBaixa.ItemIndex = 0 then
      Text := 'Referente ao pagamento total do seguinte documento:'
   else
      Text := 'Referente ao pagamento parcial do seguinte documento:';
end;

procedure TfrmFn15_4.ppLabel11GetText(Sender: TObject; var Text: String);
begin
   if frmFn0202.Baixa_Varios_Titulos = True then
   begin
      // se frmFn0202.Dif_ValorPago_P_Relat > 0 é porque foi dado um desconto em cima do valor principal
      // do título, neste o caso, por exemplo 100,00 tem que ser modificado para
      // - 100,00 para que fique claro p/ o usuario que foi dado um desconto
      if frmFn0202.Dif_ValorPago_P_Relat > 0 then
         Text := FormatFloat('#,##0.00', ArredondarDecimal(-1 * dmFn0202.cdsReciboJUROS_DESC_RECIBO.AsFloat, 2))
      else
         Text := FormatFloat('#,##0.00', ArredondarDecimal(dmFn0202.cdsReciboJUROS_DESC_RECIBO.AsFloat, 2));

      Exit;
   end
   else
   begin
      //if frmFn0202.Recibo_Juros > 0 then
         //Text := FormatFloat('0.00', ArredondarDecimal(frmFn0202.Recibo_Juros, 2));

      //if frmFn0202.Recibo_Desconto < 0 then
         //Text := FormatFloat('0.00', ArredondarDecimal(frmFn0202.Recibo_Desconto, 2));

      Text := edtJurosDesc.EditText;
   end;
end;

procedure TfrmFn15_4.ppLabel21GetText(Sender: TObject; var Text: String);
begin
   if frmFn0202.Baixa_Varios_Titulos = True then
   begin
      // se frmFn0202.Dif_ValorPago_P_Relat > 0 é porque foi dado um desconto em cima do valor principal
      // do título, neste caso o processo tem que proceder da seguinte forma:
      if frmFn0202.Dif_ValorPago_P_Relat > 0 then
         Text := FormatFloat('#,##0.00', ArredondarDecimal(frmFn0202.Valor_Pago_Ini_Relat - dmFn0202.cdsReciboJUROS_DESC_RECIBO.Asfloat, 2))
      else
         Text := FormatFloat('#,##0.00', ArredondarDecimal(frmFn0202.Valor_Pago_Ini_Relat + dmFn0202.cdsReciboJUROS_DESC_RECIBO.Asfloat, 2));

      Exit;
   end;

  { if frmFn0202.cbxTipoBaixa.ItemIndex = 0 then // Baixa total
   begin
      if edtJurosDesc.Value <> 0 then // juros + valor total
         Text := FormatFloat('0.00', ArredondarDecimal(edtJurosDesc.Value + DBEdit2.Field.AsFloat, 2)) // valor total + Juros
      else
      begin
         if DBEdit2.Field.AsFloat > 0 then
            Text := FormatFloat('0.00', DBEdit2.Field.AsFloat)
         else
            Text := '0,00';
      end;
   end
   else
   begin
      if frmFn0202.Juros_Parcial_P_Relat > 0 then
         Text := FormatFloat('0.00', ArredondarDecimal(DBEdit2.Field.AsFloat + frmFn0202.Juros_Parcial_P_Relat, 2));

      if frmFn0202.Juros_Parcial_P_Relat < 0 then
         Text := FormatFloat('0.00', ArredondarDecimal(DBEdit2.Field.AsFloat - (-1 * frmFn0202.Juros_Parcial_P_Relat), 2));

      if frmFn0202.Juros_Parcial_P_Relat = 0 then
      begin
         if frmFn0202.cbxTipoBaixa.ItemIndex = 1 then // baixa parcial
            Text := frmFn0202.edtPrincipal1.EditText
         else
            Text := FormatFloat('0.00', frmFn0202.Valor_Pago_Inicio);
      end
      else
      begin
         Text := '0,00';
      end;}

   Text := FormatFloat('#,##0.00', ArredondarDecimal(DBEdit2.Field.AsFloat, 2));
end;

procedure TfrmFn15_4.ppLabel12GetText(Sender: TObject; var Text: String);
begin
   Text := frmFn0202.ContaCorrente_P_Relat; // tipo de conta
end;

procedure TfrmFn15_4.ppLabel17GetText(Sender: TObject; var Text: String);
begin
   Text := CidadeEmpresa + '-' + EstadoEmpresa + '    ' + DataExtenso(frmFn0202.Data_Fluxo_Caixa);
end;

procedure TfrmFn15_4.ppLabel13GetText(Sender: TObject; var Text: String);
begin
   Text := edtDataPagamento.Text;
end;

procedure TfrmFn15_4.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := NomeEmpresa;
end;

procedure TfrmFn15_4.ppLabel20GetText(Sender: TObject; var Text: String);
begin
   Text := NomeEmpresa;
end;

procedure TfrmFn15_4.ppLabel27GetText(Sender: TObject; var Text: String);
begin
   Text := EndereEmpresa + ' - ' + BairroEmpresa;
end;

procedure TfrmFn15_4.ppLabel28GetText(Sender: TObject; var Text: String);
begin
   Text := BairroEmpresa;
end;

procedure TfrmFn15_4.btnCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn15_4.btnImprimirClick(Sender: TObject);
begin
  ppReport1.Print;

  Close;
end;

procedure TfrmFn15_4.ppLabel30GetText(Sender: TObject; var Text: String);
begin
   if frmFn0202.cbxTipoBaixa.ItemIndex = 0 then
      Text := 'Valor Princ.'
   else
      Text := 'Valor Parcial';
end;

procedure TfrmFn15_4.ppLabel8GetText(Sender: TObject; var Text: String);
begin
   if frmFn0202.Baixa_Varios_Titulos = True then
   begin
      Text := FormatFloat('#,##0.00', frmFn0202.Valor_Pago_Ini_Relat);
      Exit;
   end;

   {if frmFn0202.cbxTipoBaixa.ItemIndex = 1 then // baixa parcial
      Text := frmFn0202.edtPrincipal1.EditText
   else
      Text := FormatFloat('0.00', frmFn0202.Valor_Pago_Inicio); }

  // Text := FormatFloat('0.00', frmFn0202.Recibo_Principal);

  Text := FormatFloat('#,##0.00', ArredondarDecimal((DBEdit2.Field.AsFloat - edtJurosDesc.Value), 2));
end;

procedure TfrmFn15_4.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0); 
      Key := #0;
   end;
end;

end.
