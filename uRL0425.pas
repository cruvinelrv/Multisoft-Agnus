unit uRL0425;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, DB, ppDB,
  ppStrtch, ppSubRpt, ppDBPipe, StrUtils, Grids, DBGrids;

type
  TfrmRL0425 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cmbSerie: TRadioGroup;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    edtNomeVendedor: TEdit;
    edtNomeCliente: TEdit;
    edtNomeProduto: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label5: TLabel;
    edtCodigoVendedor: TJvValidateEdit;
    edtCodigoCliente: TJvValidateEdit;
    edtCodigoProduto: TJvValidateEdit;
    rptRelatorio: TppReport;
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
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    dbpDoc_Simples: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine3: TppLine;
    chkProdutos: TCheckBox;
    dbpItens_Doc_Simples: TppDBPipeline;
    ppLabel9: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure edtCodigoVendedorExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtCodigoClienteExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtCodigoProdutoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ppDBText13GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0425: TfrmRL0425;

implementation

uses uGlobal, uConsulta, udmRL0425;

{$R *.dfm}

procedure TfrmRL0425.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0425.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0425.edtCodigoVendedorExit(Sender: TObject);
begin
   if edtCodigoVendedor.Value > 0 then
   begin
      if not Busca_Dados(edtCodigoVendedor, edtNomeVendedor, 'P_VENDEDOR', 'CODIGO_VENDEDOR', 'NOME_VENDEDOR') then
      begin
         edtCodigoVendedor.SetFocus;
         Exit;
      end;
   end
   else
      edtNomeVendedor.Text := '';
end;

procedure TfrmRL0425.edtDataFimExit(Sender: TObject);
begin
   if edtDataFim.Date > 0 then
   begin
      if edtDataFim.Date < edtDataIni.Date  then
      begin
         Application.MessageBox('Período inválido','Atenção',MB_ICONERROR);
         edtDataFim.SetFocus;
      end;
   end;
end;

procedure TfrmRL0425.SpeedButton1Click(Sender: TObject);
begin
   edtCodigoVendedor.SetFocus;

   ConsultaVendedor(edtCodigoVendedor);
end;

procedure TfrmRL0425.edtCodigoClienteExit(Sender: TObject);
begin
   if edtCodigoCliente.Value > 0 then
   begin
      if not Busca_Dados(edtCodigoCliente, edtNomeCliente, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edtCodigoCliente.SetFocus;
         Exit;
      end;
   end
   else
      edtNomeCliente.Text := '';
end;

procedure TfrmRL0425.SpeedButton2Click(Sender: TObject);
begin
   edtCodigoCliente.SetFocus;

   ConsultaCliente(edtCodigoCliente);
end;

procedure TfrmRL0425.edtCodigoProdutoExit(Sender: TObject);
begin
   if edtCodigoProduto.Value > 0 then
   begin
      if not Busca_Dados(edtCodigoProduto, edtNomeProduto, 'P_PRODUTOS', 'CODIGO_PRODUTO', 'DESCRICAO_PRODUTO') then
      begin
         edtCodigoProduto.SetFocus;
         Exit;
      end;
   end
   else
      edtNomeProduto.Text := '';
end;

procedure TfrmRL0425.SpeedButton3Click(Sender: TObject);
begin
   edtCodigoProduto.SetFocus;

   ConsultaProduto(edtCodigoProduto);
end;

procedure TfrmRL0425.FormCreate(Sender: TObject);
begin
   dmRL0425 := TdmRL0425.Create(Self);
end;

procedure TfrmRL0425.btnImprimirClick(Sender: TObject);
var Sql1: String;
begin
// inicio validacoes
   edtDataFimExit(Sender);
// fim validacoes

   Sql1 := 'SELECT CODIGO_VENDA, DATA_VENDA, HORA_VENDA, VENDEDOR_VENDA, CLIENTE_VENDA, VALORNOTA_VENDA, SERIE_VENDA, NOTAFISCAL_VENDA, CFOP_VENDA, ' +
           'NOME_VENDEDOR, ' +
           'NOME_CLIENTE ' +
           'FROM P_DOC_SIMPLES ' +
           'LEFT OUTER JOIN P_VENDEDOR ON (VENDEDOR_VENDA = CODIGO_VENDEDOR) ' +
           'LEFT OUTER JOIN E_CLIENTE ON (CLIENTE_VENDA = CODIGO_CLIENTE) ' +
           'WHERE P_DOC_SIMPLES.COD_EMPRESA = ' + CodigoEmpresa1 +
           ' AND DATA_VENDA >= ' + QuotedStr( FormatDateTime('mm/dd/yyyy',edtDataIni.Date)) +
           ' AND DATA_VENDA <= ' + QuotedStr( FormatDateTime('mm/dd/yyyy',edtDataFim.Date));

   if edtCodigoVendedor.Value > 0 then
      Sql1 := Sql1 + ' AND VENDEDOR_VENDA = ' + edtCodigoVendedor.Text;

   if edtCodigoCliente.Value > 0 then
      Sql1 := Sql1 + ' AND CLIENTE_VENDA = ' + edtCodigoCliente.Text;

   if edtCodigoProduto.Value > 0 then
      Sql1 := Sql1 + ' AND P.CODIGO_PRODUTO = ' + edtCodigoProduto.Text;

   if cmbSerie.ItemIndex > 0 then
   begin
      if cmbSerie.ItemIndex = 1 then
         Sql1 := Sql1 + ' AND SERIE_VENDA = ''NF'''
      else if cmbSerie.ItemIndex = 2 then
         Sql1 := Sql1 + ' AND SERIE_VENDA <> ''NF''';
   end;

   ExecutaSql(dmRL0425.cdsDoc_Simples, Sql1);

   if dmRL0425.cdsDoc_Simples.RecordCount = 0 then
   begin
      Application.MessageBox('Dados não localizados','Atenção',MB_ICONWARNING);
      Exit;
   end;

   dmRL0425.cdsDoc_Simples.IndexFieldNames := 'CODIGO_VENDA';

   ppSubReport1.Visible := chkProdutos.Checked;
   lblEmpresa.Text      := Empresa1;
   lblData.Text         := DateToStr(DataSystem1);

   rptRelatorio.Print;
end;

procedure TfrmRL0425.FormShow(Sender: TObject);
begin
   edtDataIni.Date := DataSystem1;
   edtDataFim.Date := DataSystem1;
end;

procedure TfrmRL0425.ppDBText3GetText(Sender: TObject; var Text: String);
begin
   Text := LeftStr(dmRL0425.cdsDoc_Simples.FieldByName('HORA_VENDA').Value,5);
end;

procedure TfrmRL0425.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end
end;

procedure TfrmRL0425.ppDBText13GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0425.cdsItens_Doc_Simples.FieldByName('VALORBRUTO_IVENDAS').AsFloat);
end;

procedure TfrmRL0425.ppLabel9GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0425.cdsItens_Doc_Simples.FieldByName('QUANTIDADE_IVENDAS').AsFloat * dmRL0425.cdsItens_Doc_Simples.FieldByName('VALORBRUTO_IVENDAS').AsFloat);
end;

procedure TfrmRL0425.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
