unit uRL0322;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, ppStrtch, ppSubRpt, ppModule, raCodMod, ppParameter,
  ppRegion;

type
  TfrmRL0322 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    edtDataInicial: TJvDateEdit;
    edtDataFinal: TJvDateEdit;
    edtCodProduto: TJvValidateEdit;
    edtCodCliente: TJvValidateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtDescProduto: TEdit;
    edtDescCliente: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    dtsVendas: TDataSource;
    dbpVendas: TppDBPipeline;
    rptRelatorio: TppReport;
    ppParameterList1: TppParameterList;
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
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
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
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText10: TppDBText;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel21: TppLabel;
    lblQtdTotalVenda: TppLabel;
    ppLine5: TppLine;
    raCodeModule1: TraCodeModule;
    raCodeModule2: TraCodeModule;
    dbpAjuste: TppDBPipeline;
    dtsAjuste: TDataSource;
    ppSubReport2: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel25: TppLabel;
    ppLine6: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel29: TppLabel;
    ppLine7: TppLine;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLine9: TppLine;
    dtsCompras: TDataSource;
    dbpCompras: TppDBPipeline;
    dtsBalanco: TDataSource;
    dbpBalanco: TppDBPipeline;
    ppSubReport4: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel52: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel66: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppLine13: TppLine;
    ppSubReport5: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel58: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel59: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel65: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    lblQtdTotalDevVenda: TppLabel;
    ppLine17: TppLine;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBText43: TppDBText;
    ppDBText46: TppDBText;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    dtsDevVenda: TDataSource;
    dbpDevVenda: TppDBPipeline;
    ppLabel77: TppLabel;
    raCodeModule3: TraCodeModule;
    lblData: TppLabel;
    Label5: TLabel;
    edtReserva: TEdit;
    Label6: TLabel;
    ppSubReport3: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel78: TppLabel;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLabel91: TppLabel;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppLabel92: TppLabel;
    lblQtdTotalCompra: TppLabel;
    ppLine20: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure edtDataFinalExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppLabel22GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel24GetText(Sender: TObject; var Text: String);
    procedure ppDBText6Print(Sender: TObject);
    procedure lblQtdTotalVendaGetText(Sender: TObject; var Text: String);
    procedure ppDBText12GetText(Sender: TObject; var Text: String);
    procedure ppDBText13GetText(Sender: TObject; var Text: String);
    procedure ppDBText14GetText(Sender: TObject; var Text: String);
    procedure ppDBText15GetText(Sender: TObject; var Text: String);
    procedure ppDBText16GetText(Sender: TObject; var Text: String);
    procedure lblQtdTotalCompraGetText(Sender: TObject; var Text: String);
    procedure ppLabel63GetText(Sender: TObject; var Text: String);
    procedure ppDBText29GetText(Sender: TObject; var Text: String);
    procedure ppDBText30GetText(Sender: TObject; var Text: String);
    procedure ppDBText23GetText(Sender: TObject; var Text: String);
    procedure ppDBText35GetText(Sender: TObject; var Text: String);
    procedure ppLabel77GetText(Sender: TObject; var Text: String);
    procedure ppLabel76GetText(Sender: TObject; var Text: String);
    procedure ppLabel75GetText(Sender: TObject; var Text: String);
    procedure ppDBText42Print(Sender: TObject);
    procedure lblQtdTotalDevVendaGetText(Sender: TObject;
      var Text: String);
    procedure ppDBText43GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    QtdTotalVenda, QtdTotalCompra, QtdTotalDevVenda: Double;
  public
    { Public declarations }
  end;

var
  frmRL0322: TfrmRL0322;

implementation

uses udmRL0322, uConsulta, uGlobal;

{$R *.dfm}

procedure TfrmRL0322.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0322.btnFecharClick(Sender: TObject);
begin

   Close;
end;

procedure TfrmRL0322.SpeedButton1Click(Sender: TObject);
begin
   edtCodProduto.SetFocus;

   ConsultaProduto(edtCodProduto);
end;

procedure TfrmRL0322.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRL0322.SpeedButton2Click(Sender: TObject);
begin
   edtCodCliente.SetFocus;

   ConsultaCliente(edtCodCliente);
end;

procedure TfrmRL0322.edtCodProdutoExit(Sender: TObject);
var Sql1: String;
begin
   if edtCodProduto.Value = 0 then
      Exit;

//   edtDescProduto.Text := Buca_Dados(Valor: Integer, NomeTabela: TClientDataSet, NomeCampoPesquisa:String, NomeCampoRetorno: String);

   Sql1 := 'SELECT CODIGO_PRODUTO, DESCRICAO_PRODUTO, GRUPO_PRODUTO, FABRICANTE_PRODUTO, FABRICA_PRODUTO, ' +
           'E_CLIENTE.NOME_CLIENTE, ' +
           'P_GRUPOS.DESCRICAO_GRUPO ' +
           'FROM P_PRODUTOS ' +
           'LEFT JOIN E_CLIENTE ON (P_PRODUTOS.FABRICA_PRODUTO = E_CLIENTE.CODIGO_CLIENTE) ' +
           'LEFT OUTER JOIN P_GRUPOS ON (P_PRODUTOS.GRUPO_PRODUTO = P_GRUPOS.CODIGO_GRUPO) ' +
           'WHERE CODIGO_PRODUTO = ' + edtCodProduto.Text +
           ' AND P_PRODUTOS.COD_EMPRESA = ' + CodigoEmpresa1;

   ExecutaSql(dmRL0322.cdsProdutos, Sql1);

   if dmRL0322.cdsProdutos.RecordCount = 0 then
   begin
      Application.MessageBox('Produto não cadastrado','Atenção',MB_ICONERROR);
      edtCodProduto.SetFocus;
      Abort;
   end;

   edtDescProduto.Text := dmRL0322.cdsProdutos.FieldByName('DESCRICAO_PRODUTO').AsString;
end;

procedure TfrmRL0322.FormCreate(Sender: TObject);
begin
   dmRL0322 := TdmRL0322.Create(Self);
end;

procedure TfrmRL0322.edtCodClienteExit(Sender: TObject);
var Sql1: String;
begin
   if edtCodCliente.Value = 0 then
      Exit;

   Sql1 := 'SELECT CODIGO_CLIENTE, FANTASIA_CLIENTE FROM E_CLIENTE WHERE CODIGO_CLIENTE = ' + edtCodCliente.Text +
           ' AND TIPO_CLIENTE = 0';

   ExecutaSql(dmRL0322.cdsPesquisa1, Sql1);

   if dmRL0322.cdsPesquisa1.RecordCount = 0 then
   begin
      Application.MessageBox('Cliente não cadastrado','Atenção',MB_ICONERROR);
      edtCodCliente.SetFocus;
      Abort;
   end;

   edtDescCliente.Text := dmRL0322.cdsPesquisa1.FieldByName('FANTASIA_CLIENTE').AsString;
end;

procedure TfrmRL0322.edtDataFinalExit(Sender: TObject);
begin
   if edtDataInicial.Date > 0 then
   begin
      if edtDataFinal.Date > 0 then
      begin
         if edtDataFinal.Date < edtDataInicial.Date then
         begin
            Application.MessageBox('Data Final Inconsistente','Atenção',MB_ICONERROR);
            edtDataFinal.SetFocus;
            Exit;
         end;
      end;
   end;
end;

procedure TfrmRL0322.btnImprimirClick(Sender: TObject);
var Sql1: String;
    Ok1: Byte;
begin
   Ok1 := 0;

// validacoes

   if (edtDataInicial.Date = 0) or (edtDataFinal.Date = 0) then
   begin
      Application.MessageBox('Período Inválido','Atenção',MB_ICONERROR);
      edtDataInicial.SetFocus;
      Exit;
   end;

   edtDataFinalExit(Sender);

   if edtCodProduto.Value = 0 then
   begin
      Application.MessageBox('Informe o produto','Atenção',MB_ICONEXCLAMATION);
      edtCodProduto.SetFocus;
      Exit;
   end;

// ^ fim validacoes ^


   lblEmpresa.Caption := Empresa1;
   lblParam1.Caption  := 'Período: ' + edtDataInicial.Text + ' a ' + edtDataFinal.Text;

   if edtDescCliente.Text <> '' then
      lblParam2.Caption := 'Cliente: ' + edtDescCliente.Text
   else
      lblParam2.Caption := '';

   // inicio apuração de vendas

   dmRL0322.cdsVendas.Close;
   dmRL0322.qryVendas.ParamByName('EMPRESA').AsString  := CodigoEmpresa1;
   dmRL0322.qryVendas.ParamByName('PRODUTO').AsString  := edtCodProduto.Text;
   dmRL0322.qryVendas.ParamByName('DATA_INI').AsDate   := edtDataInicial.Date;
   dmRL0322.qryVendas.ParamByName('DATA_FIM').AsDate   := edtDataFinal.Date;

   if edtReserva.Text = 'Æ' then
      dmRL0322.qryVendas.ParamByName('SERIE').AsString := '#@'
   else
      dmRL0322.qryVendas.ParamByName('SERIE').AsString := 'CI';

   if edtCodCliente.Value > 0 then
   begin
      dmRL0322.qryVendas.SQL.Text := dmRL0322.qryVendas.SQL.Text + ' AND (P_VENDAS.CLIENTE_VENDA = :Cliente)';
      dmRL0322.qryVendas.ParamByName('CLIENTE').AsString := edtCodCliente.Text;
   end;

   dmRL0322.cdsVendas.Open;

   QtdTotalVenda  := 0;

   if dmRL0322.cdsVendas.RecordCount = 0 then
      Ok1 := Ok1 + 1;

   // ^ fim apuração de venda ^


   // inicio apuração de ajuste de estoque

   dmRL0322.cdsAjuste.Close;
   dmRL0322.qryAjuste.ParamByName('EMPRESA').AsString  := CodigoEmpresa1;
   dmRL0322.qryAjuste.ParamByName('DATA_INI').AsDate   := edtDataInicial.Date;
   dmRL0322.qryAjuste.ParamByName('DATA_FIM').AsDate   := edtDataFinal.Date;
   dmRL0322.qryAjuste.ParamByName('PRODUTO').AsString  := edtCodProduto.Text;
   dmRL0322.cdsAjuste.Open;

   if dmRL0322.cdsAjuste.RecordCount = 0 then
      Ok1 := Ok1 + 1;

   // ^ fim apuração de ajuste de estoque ^


   // inicio apuração de compras

   dmRL0322.cdsCompras.Close;
   dmRL0322.qryCompras.ParamByName('EMPRESA').AsString  := CodigoEmpresa1;
   dmRL0322.qryCompras.ParamByName('DATA_INI').AsDate   := edtDataInicial.Date;
   dmRL0322.qryCompras.ParamByName('DATA_FIM').AsDate   := edtDataFinal.Date;
   dmRL0322.qryCompras.ParamByName('PRODUTO').AsString  := edtCodProduto.Text;

   if edtReserva.Text = 'Æ' then
      dmRL0322.qryCompras.ParamByName('NR_NOTA').AsInteger  := 0
   else
      dmRL0322.qryCompras.ParamByName('NR_NOTA').AsInteger  := 999999;

   dmRL0322.cdsCompras.Open;

   QtdTotalCompra := 0;

   if dmRL0322.cdsCompras.RecordCount = 0 then
      Ok1 := Ok1 + 1;

   // ^ fim apuração de compras ^


   // inicio apuração de balanco

   dmRL0322.cdsBalanco.Close;
   dmRL0322.qryBalanco.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmRL0322.qryBalanco.ParamByName('PRODUTO').AsString := edtCodProduto.Text;
   dmRL0322.qryBalanco.ParamByName('DATA_INI').AsDate  := edtDataInicial.Date;
   dmRL0322.qryBalanco.ParamByName('DATA_FIM').AsDate  := edtDataFinal.Date;
   dmRL0322.cdsBalanco.Open;

   if dmRL0322.cdsBalanco.RecordCount = 0 then
      Ok1 := Ok1 + 1;

   // ^ fim apuração de balanco ^


   // inicio apuração de devolucao de venda

   dmRL0322.cdsDevVenda.Close;
   dmRL0322.qryDevVenda.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmRL0322.qryDevVenda.ParamByName('DATA_INI').AsDate  := edtDataInicial.Date;
   dmRL0322.qryDevVenda.ParamByName('DATA_FIM').AsDate  := edtDataFinal.Date;
   dmRL0322.qryDevVenda.ParamByName('PRODUTO').AsString := edtCodProduto.Text;
   dmRL0322.cdsDevVenda.Open;

   QtdTotalDevVenda := 0;

   if dmRL0322.cdsDevVenda.RecordCount = 0 then
      Ok1 := Ok1 + 1;

   // ^ fim apuração de devolucao de venda ^

   if Ok1 = 5 then
      Application.MessageBox('Dados não encontrados','Atenção',MB_ICONINFORMATION)
   else
      rptRelatorio.Print;
end;

procedure TfrmRL0322.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0322.cdsProdutos.FieldByName('CODIGO_PRODUTO').AsString + '-' + dmRL0322.cdsProdutos.FieldByName('DESCRICAO_PRODUTO').AsString;
end;

procedure TfrmRL0322.ppLabel4GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0322.cdsProdutos.FieldByName('GRUPO_PRODUTO').AsString + '-' + dmRL0322.cdsProdutos.FieldByName('DESCRICAO_GRUPO').AsString;
end;

procedure TfrmRL0322.ppLabel7GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0322.cdsProdutos.FieldByName('FABRICA_PRODUTO').AsString + '-' + dmRL0322.cdsProdutos.FieldByName('NOME_CLIENTE').AsString;
end;

procedure TfrmRL0322.ppLabel8GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0322.cdsProdutos.FieldByName('FABRICANTE_PRODUTO').AsString;
end;

procedure TfrmRL0322.ppLabel22GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('#,##0.00', dmRL0322.cdsVendas.FieldByName('QUANTIDADE_IVENDAS').AsFloat * dmRL0322.cdsVendas.FieldByName('VALORBRUTO_IVENDAS').AsFloat );
end;

procedure TfrmRL0322.ppLabel23GetText(Sender: TObject; var Text: String);
begin
   Text := '';

   if (dmRL0322.cdsVendas.FieldByName('DESCONTO_VENDA').AsString <> '') and (dmRL0322.cdsVendas.FieldByName('FATURA_VENDA').AsString <> '') then
      Text := FormatFloat('##0.00', Porcento(dmRL0322.cdsVendas.FieldByName('DESCONTO_VENDA').AsFloat, dmRL0322.cdsVendas.FieldByName('FATURA_VENDA').AsFloat ));
end;

procedure TfrmRL0322.ppLabel24GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0322.cdsVendas.FieldByName('SERIE_VENDA').AsString + ' ' + Trim(dmRL0322.cdsVendas.FieldByName('NOTAFISCAL_VENDA').AsString);
end;

procedure TfrmRL0322.ppDBText6Print(Sender: TObject);
begin
   QtdTotalVenda := QtdTotalVenda + dmRL0322.cdsVendas.FieldByName('QUANTIDADE_IVENDAS').AsFloat;
end;

procedure TfrmRL0322.lblQtdTotalVendaGetText(Sender: TObject;
  var Text: String);
begin
   Text := FormatFloat('#,##0.00', QtdTotalVenda);
end;

procedure TfrmRL0322.ppDBText12GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoCompra1, dmRL0322.cdsAjuste.FieldByName('PRECO4_TABELA02').AsFloat);
end;

procedure TfrmRL0322.ppDBText13GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoCompra1, dmRL0322.cdsAjuste.FieldByName('PRECO5_TABELA02').AsFloat);
end;

procedure TfrmRL0322.ppDBText14GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0322.cdsAjuste.FieldByName('PRECO1_TABELA02').AsFloat);
end;

procedure TfrmRL0322.ppDBText15GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0322.cdsAjuste.FieldByName('PRECO2_TABELA02').AsFloat);
end;

procedure TfrmRL0322.ppDBText16GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0322.cdsAjuste.FieldByName('PRECO3_TABELA02').AsFloat);
end;

procedure TfrmRL0322.lblQtdTotalCompraGetText(Sender: TObject;
  var Text: String);
begin
   Text := FormatFloat('#,##0.00', QtdTotalCompra);
end;

procedure TfrmRL0322.ppLabel63GetText(Sender: TObject; var Text: String);
begin
   Text :=  FormatFloat(MascaraPrecoCompra1, dmRL0322.cdsCompras.FieldByName('PRECOUNIT_COMPRA').AsFloat * dmRL0322.cdsCompras.FieldByName('QUANTIDADE_COMPRA').AsFloat);
end;

procedure TfrmRL0322.ppDBText29GetText(Sender: TObject; var Text: String);
begin
   QtdTotalCompra := QtdTotalCompra + dmRL0322.cdsCompras.FieldByName('QUANTIDADE_COMPRA').AsFloat;

   Text := FormatFloat('#,##0.00', QtdTotalCompra);
end;

procedure TfrmRL0322.ppDBText30GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoCompra1, dmRL0322.cdsCompras.FieldByName('PRECOUNIT_COMPRA').AsFloat);
end;

procedure TfrmRL0322.ppDBText23GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0322.cdsBalanco.FieldByName('PCUSTO_BALANCO').Value);
end;

procedure TfrmRL0322.ppDBText35GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0322.cdsBalanco.FieldByName('PCOMPRA_BALANCO').Value);
end;

procedure TfrmRL0322.ppLabel77GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, (dmRL0322.cdsDevVenda.FieldByName('QUANTIDADE_IVENDAS').AsFloat * dmRL0322.cdsDevVenda.FieldByName('VALORBRUTO_IVENDAS').AsFloat));
end;

procedure TfrmRL0322.ppLabel76GetText(Sender: TObject; var Text: String);
begin
   if dmRL0322.cdsDevVenda.FieldByName('DESCONTO_VENDA').AsFloat > 0 then
      Text := FormatFloat('##0.00', Porcento(dmRL0322.cdsDevVenda.FieldByName('DESCONTO_VENDA').AsFloat, dmRL0322.cdsDevVenda.FieldByName('FATURA_VENDA').AsFloat))
   else
      Text := '0,00';
end;

procedure TfrmRL0322.ppLabel75GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0322.cdsDevVenda.FieldByName('SERIE_VENDA').AsString + ' ' + dmRL0322.cdsDevVenda.FieldByName('NOTAFISCAL_VENDA').AsString;
end;

procedure TfrmRL0322.ppDBText42Print(Sender: TObject);
begin
   QtdTotalDevVenda := QtdTotalDevVenda + dmRL0322.cdsDevVenda.FieldByName('QUANTIDADE_IVENDAS').AsFloat;
end;

procedure TfrmRL0322.lblQtdTotalDevVendaGetText(Sender: TObject;
  var Text: String);
begin
   Text := FormatFloat('#,##0.00', QtdTotalDevVenda);
end;

procedure TfrmRL0322.ppDBText43GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0322.cdsDevVenda.FieldByName('VALORBRUTO_IVENDAS').AsFloat);
end;

procedure TfrmRL0322.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0322.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
