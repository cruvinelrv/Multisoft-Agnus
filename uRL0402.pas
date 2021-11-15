{
 SISTEMA              --> MultWin
 PROGRAMA             --> RL0402
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> RAFAEL F. S. MOTA
 DATA DE CONCEPCAO    --> 14/07/2007
 FINALIDADE           --> Relatorio de vendas por vendedor
 COMENTARIO           -->
}

unit uRL0402;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit, DBCtrls,
  DB, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppVar, ppCache, ppStrtch, ppSubRpt, Grids, DBGrids, StrUtils,
  ppRegion;

type
  TfrmRL0402 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    edtReserva: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    rdgTipo: TRadioGroup;
    cmbVendedor: TDBLookupComboBox;
    edtDataFim: TJvDateEdit;
    edtDataIni: TJvDateEdit;
    cmbSecao: TDBLookupComboBox;
    dtsVendedor: TDataSource;
    dtsSecao: TDataSource;
    dtsVendedor2: TDataSource;
    dtsVendas: TDataSource;
    dbpRelatorio: TppDBPipeline;
    dbpVendas: TppDBPipeline;
    rptModelo1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa: TppLabel;
    ppLine1: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppLine2: TppLine;
    lblData: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    rptModelo2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    dtsRelatorio: TDataSource;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText8: TppDBText;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLine5: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppRegion1: TppRegion;
    ppDBText1: TppDBText;
    ppDBText6: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText2: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure ppLabel40GetText(Sender: TObject; var Text: String);
    procedure ppLabel35GetText(Sender: TObject; var Text: String);
    procedure ppLabel36GetText(Sender: TObject; var Text: String);
    procedure ppLabel37GetText(Sender: TObject; var Text: String);
    procedure ppLabel38GetText(Sender: TObject; var Text: String);
    procedure Apura_Vendas(pVendedor1: String);
    procedure dtsVendedor2DataChange(Sender: TObject; Field: TField);
    procedure ppLabel24GetText(Sender: TObject; var Text: String);
    procedure ppLabel26GetText(Sender: TObject; var Text: String);
    procedure ppLabel28GetText(Sender: TObject; var Text: String);
    procedure ppDBCalc1Print(Sender: TObject);
    procedure ppDBCalc2Print(Sender: TObject);
    procedure ppDBCalc3Print(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    TotValTabela, TotValReceb: Double;
    TotNumVendas: Integer;
  public
    { Public declarations }
  end;

var
  frmRL0402: TfrmRL0402;

implementation

uses udmRL0402, uGlobal;

{$R *.dfm}

procedure TfrmRL0402.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0402.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0402.FormCreate(Sender: TObject);
begin
   dmRL0402 := TdmRL0402.Create(Self);
end;

procedure TfrmRL0402.FormShow(Sender: TObject);
begin
   dmRL0402.cdsVendedor.Close;
   dmRL0402.qryVendedor.ParamByName('Empresa').AsString := CodigoEmpresa1;
   dmRL0402.cdsVendedor.Open;

   dmRL0402.cdsSecao.Close;
   dmRL0402.qrySecao.ParamByName('Empresa').AsString := CodigoEmpresa1;
   dmRL0402.cdsSecao.Open;

   edtDataIni.Date := DataSystem1;
   edtDataFim.Date := DataSystem1;
end;

procedure TfrmRL0402.btnImprimirClick(Sender: TObject);
var Sql1, Param1, Param2: String;
begin
   Param1 := '';
   Param2 := '';

   TotValTabela    := 0;
   TotValReceb     := 0;
   TotNumVendas    := 0;

   // inicio validacoes

   if (edtDataFim.Date < edtDataIni.Date) and not (btnFechar.Focused) then
   begin
      Application.MessageBox('Data final inválida','Anteção',MB_ICONERROR);
      edtDataFim.SetFocus;
      Exit;
   end;

   // ^ fim validacoes ^


   // inicio apuracao de dados vendedores

   Sql1 := 'SELECT DISTINCT VENDEDOR_VENDA, ' +
           'P_VENDEDOR.NOME_VENDEDOR ' +
           'FROM P_VENDAS ' +
           'LEFT OUTER JOIN P_VENDEDOR ON (P_VENDEDOR.CODIGO_VENDEDOR = P_VENDAS.VENDEDOR_VENDA)' +
           'WHERE P_VENDAS.COD_EMPRESA = ' + CodigoEmpresa1 + ' ' +
           'AND P_VENDAS.DATA_VENDA >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date)) + ' ' +
           'AND P_VENDAS.DATA_VENDA <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date)) + ' ' ;

   if cmbVendedor.Text <> '' then
      Sql1 := Sql1 + 'AND P_VENDAS.vendedor_venda = ' + dmRL0402.cdsVendedor.FieldByName('CODIGO_VENDEDOR').AsString + ' ';

   ExecutaSql(dmRL0402.cdsVendedor2, Sql1);

   if dmRL0402.cdsVendedor2.RecordCount = 0 then
   begin
      Application.MessageBox('Dados não encontrados','Atenção',MB_ICONERROR);
      Exit;
   end;

   dmRL0402.cdsVendedor2.IndexFieldNames := 'VENDEDOR_VENDA';

   dmRL0402.cdsVendedor2.First;

   // ^ fim apuracao de dados vendedores ^

   dmRL0402.cdsRelatorio.Open;
   dmRL0402.cdsRelatorio.EmptyDataSet;
   
   dmRL0402.cdsVendedor2.First;

   while not dmRL0402.cdsVendedor2.Eof do
   begin

      dmRL0402.cdsVendas.First;

      while not dmRL0402.cdsVendas.Eof do
      begin
         dmRL0402.cdsRelatorio.Insert;

         dmRL0402.cdsRelatorioVENDEDOR.Value     := StrZero(dmRL0402.cdsVendedor2.FieldByName('VENDEDOR_VENDA').AsString,3) + '-' + dmRL0402.cdsVendedor2.FieldByName('NOME_VENDEDOR').AsString;
         dmRL0402.cdsRelatorioCOD_VENDA.Value    := dmRL0402.cdsVendas.FieldByName('CODIGO_VENDA').AsInteger;
         dmRL0402.cdsRelatorioDATA.Value         := dmRL0402.cdsVendas.FieldByName('DATA_VENDA').AsDateTime;
         dmRL0402.cdsRelatorioHORA.Value         := LeftStr(dmRL0402.cdsVendas.FieldByName('HORA_VENDA').AsString,5);
         dmRL0402.cdsRelatorioVAL_TABELA.Value   := dmRL0402.cdsVendas.FieldByName('FATURA_VENDA').AsFloat;
         dmRL0402.cdsRelatorioDESCONTO.Value     := Porcento(dmRL0402.cdsVendas.FieldByName('DESCONTO_VENDA').AsFloat, dmRL0402.cdsVendas.FieldByName('FATURA_VENDA').AsFloat);
         dmRL0402.cdsRelatorioVAL_RECEBIDO.Value := dmRL0402.cdsVendas.FieldByName('VALORNOTA_VENDA').AsFloat;
         dmRL0402.cdsRelatorioTIPO_PGTO.Value    := dmRL0402.cdsVendas.FieldByName('DESCRICAO_CPAGAMENTO').AsString;
         dmRL0402.cdsRelatorioDATA_CAIXA.Value   := Copy(dmRL0402.cdsVendas.FieldByName('CHAVE_VENDA').AsString, 1, 8);
         dmRL0402.cdsRelatorioTURNO.Value        := Copy(dmRL0402.cdsVendas.FieldByName('CHAVE_VENDA').AsString,10,1);
         dmRL0402.cdsRelatorioFUNCIONARIO.Value  := Copy(dmRL0402.cdsVendas.FieldByName('CHAVE_VENDA').AsString,12,10);
         dmRL0402.cdsRelatorioNUM_DOC.Value      := dmRL0402.cdsVendas.FieldByName('SERIE_VENDA').AsString + ' ' + dmRL0402.cdsVendas.FieldByName('NOTAFISCAL_VENDA').AsString;
         dmRL0402.cdsRelatorioCFOP.Value         := dmRL0402.cdsVendas.FieldByName('CFOP_VENDA').AsString;
         dmRL0402.cdsRelatorioCLIENTE.Value      := dmRL0402.cdsVendas.FieldByName('NOME_CLIENTE').AsString;
   //      dmRL0402.cdsRelatorio.Value := dmRL0402.cdsVendas.FieldByName('').Value;

         dmRL0402.cdsVendas.Next;
      end;    // while

      dmRL0402.cdsVendedor2.Next;
   end;    // while

   dmRL0402.cdsRelatorio.IndexFieldNames := 'Vendedor';

   if cmbVendedor.Text <> '' then
      Param1 := 'Vendedor: ' + cmbVendedor.Text;

   if cmbSecao.Text <> '' then
      Param2 := 'Seção: ' + cmbSecao.Text;

   lblEmpresa.Text := Empresa1;
   lblParam1.Text  := Param1;
   lblParam2.Text  := Param2;

   if rdgTipo.ItemIndex = 0 then
      ppRegion1.Visible := False
   else
      ppRegion1.Visible := True;

   rptModelo1.Print;
end;

procedure TfrmRL0402.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRL0402.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0402.ppLabel40GetText(Sender: TObject; var Text: String);
begin
   if dmRL0402.cdsVendas.FieldByName('DESCONTO_VENDA').AsFloat > 0 then
      Text :=  FormatFloat('0.00', Porcento(dmRL0402.cdsVendas.FieldByName('DESCONTO_VENDA').AsFloat, dmRL0402.cdsVendas.FieldByName('FATURA_VENDA').AsFloat))
   else
      Text := '0,00';
end;

procedure TfrmRL0402.ppLabel35GetText(Sender: TObject; var Text: String);
begin
   Text := Copy(dmRL0402.cdsVendas.FieldByName('CHAVE_VENDA').AsString,1,8);
end;

procedure TfrmRL0402.ppLabel36GetText(Sender: TObject; var Text: String);
begin
   Text := Copy(dmRL0402.cdsVendas.FieldByName('CHAVE_VENDA').AsString,10,1);
end;

procedure TfrmRL0402.ppLabel37GetText(Sender: TObject; var Text: String);
begin
   Text := Copy(dmRL0402.cdsVendas.FieldByName('CHAVE_VENDA').AsString,12,10);
end;

procedure TfrmRL0402.ppLabel38GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0402.cdsVendas.FieldByName('SERIE_VENDA').AsString + ' ' + dmRL0402.cdsVendas.FieldByName('NOTAFISCAL_VENDA').AsString
end;

procedure TfrmRL0402.Apura_Vendas(pVendedor1: String);
var Sql1: String;
begin
   Sql1 := 'SELECT CODIGO_VENDA, DATA_VENDA, HORA_VENDA, FATURA_VENDA, DESCONTO_VENDA, VALORNOTA_VENDA, CPAGAMENTO_VENDA, CHAVE_VENDA, P_VENDAS.SERIE_VENDA, NOTAFISCAL_VENDA, CFOP_VENDA, CLIENTE_VENDA, ' +
           'P_VENDAS_ITENS.PRODUTO_IVENDA, ' +
           'P_PRODUTOS.GRUPO_PRODUTO, ' +
           'P_SECAO.CODIGO_SECAO, ' +
           'E_CLIENTE.NOME_CLIENTE, ' +
           'P_CPAGAMENTO.DESCRICAO_CPAGAMENTO ' +
           'FROM P_VENDAS ' +
           'LEFT OUTER JOIN P_VENDAS_ITENS ON (P_VENDAS.CODIGO_VENDA = P_VENDAS_ITENS.CODIGO_IVENDA) ' +
           'LEFT OUTER JOIN P_PRODUTOS ON (P_VENDAS_ITENS.PRODUTO_IVENDA = P_PRODUTOS.CODIGO_PRODUTO) ' +
           'LEFT OUTER JOIN P_GRUPOS ON (P_PRODUTOS.GRUPO_PRODUTO = P_GRUPOS.CODIGO_GRUPO) ' +
           'LEFT OUTER JOIN P_SECAO ON (P_GRUPOS.CODIGO_SECAO_GRUPO = P_SECAO.CODIGO_SECAO) ' +
           'LEFT OUTER JOIN E_CLIENTE ON (P_VENDAS.CLIENTE_VENDA = E_CLIENTE.CODIGO_CLIENTE) ' +
           'LEFT OUTER JOIN P_CPAGAMENTO ON (P_VENDAS.CPAGAMENTO_VENDA = P_CPAGAMENTO.CODIGO_CPAGAMENTO) ' +
           'WHERE P_VENDAS.COD_EMPRESA = ' + CodigoEmpresa1  + ' ' +
           'AND P_VENDAS.DATA_VENDA >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date)) + ' ' +
           'AND P_VENDAS.DATA_VENDA <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date)) + ' ' +
           'AND P_VENDAS.VENDEDOR_VENDA = ' + pVendedor1 + ' ';

   if edtReserva.Text <> 'Æ' then
      Sql1 := Sql1 + 'AND P_VENDAS.SERIE_VENDA <> ''CI'' ';

   if cmbSecao.Text <> '' then
      Sql1 := Sql1 + 'AND P_SECAO.CODIGO_SECAO = ' + dmRL0402.cdsSecao.FieldByName('CODIGO_SECAO').AsString + ' ';

   ExecutaSql(dmRL0402.cdsVendas, Sql1);
end;

procedure TfrmRL0402.dtsVendedor2DataChange(Sender: TObject;
  Field: TField);
begin
   if dmRL0402.cdsVendedor2.FieldByName('VENDEDOR_VENDA').AsString <> '' then
      Apura_Vendas(dmRL0402.cdsVendedor2.FieldByName('VENDEDOR_VENDA').AsString);
end;

procedure TfrmRL0402.ppLabel24GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('#,##0.00', TotValTabela);
end;

procedure TfrmRL0402.ppLabel26GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('#,##0.00', TotValReceb);
end;

procedure TfrmRL0402.ppLabel28GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('#,##0', TotNumVendas);
end;

procedure TfrmRL0402.ppDBCalc1Print(Sender: TObject);
begin
   TotValTabela := TotValTabela + ppDBCalc1.Value;
end;

procedure TfrmRL0402.ppDBCalc2Print(Sender: TObject);
begin
   TotValReceb := TotValReceb + ppDBCalc2.Value;
end;

procedure TfrmRL0402.ppDBCalc3Print(Sender: TObject);
begin
   TotNumVendas := TotNumVendas + ppDBCalc3.Value;
end;

procedure TfrmRL0402.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
