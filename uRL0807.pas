{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> uRL0807
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> RAFAEL F. S. MOTA
 DATA DE CONCEPÇÃO    --> 03/09/2007
 FINALIDADE           --> RELATORIO DE FATURAMENTO
 COMENTARIO           -->
 ******************************************************************************}

 unit uRL0807;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, DB, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, Grids, DBGrids, ppStrtch, ppSubRpt;

type
  TfrmRL0807 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtReserva: TEdit;
    rdgTipo: TRadioGroup;
    chkListaVendas: TCheckBox;
    chkListaTitulos: TCheckBox;
    Label7: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    edtFatura: TJvValidateEdit;
    edtVenda: TJvValidateEdit;
    edtCliente: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    edtNomeCliente: TEdit;
    rptRel_Fatura: TppReport;
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
    dbpFatura: TppDBPipeline;
    dtsFatura: TDataSource;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    rptRel_Vendas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    lblEmpresa2: TppLabel;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    lblParam11: TppLabel;
    lblParam22: TppLabel;
    ppLine4: TppLine;
    lblData2: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    dbpVendas: TppDBPipeline;
    dtsVendas: TDataSource;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine6: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc2: TppDBCalc;
    dtsReceber: TDataSource;
    dbpReceber: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport2: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel35: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rdgTipoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtsFaturaDataChange(Sender: TObject; Field: TField);
    procedure ppLabel28GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0807: TfrmRL0807;

implementation

uses uGlobal, uConsulta, udmRL0807;

{$R *.dfm}

procedure TfrmRL0807.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0807.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0807.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRL0807.rdgTipoClick(Sender: TObject);
begin
   edtFatura.Enabled       := (rdgTipo.ItemIndex = 0);
   chkListaVendas.Enabled  := (rdgTipo.ItemIndex = 0);
   chkListaTitulos.Enabled := (rdgTipo.ItemIndex = 0);

   edtVenda.Enabled        := (rdgTipo.ItemIndex = 1);
end;

procedure TfrmRL0807.FormShow(Sender: TObject);
begin
   rdgTipoClick(Sender);

   edtDataIni.Date := DataSystem1;
   edtDataFim.Date := DataSystem1;
end;

procedure TfrmRL0807.btnImprimirClick(Sender: TObject);
var Sql1, Parametro1, Parametro2: String;
begin
// validacoes

   if edtDataFim.Date < edtDataIni.Date then
   begin
      Application.MessageBox('Período inválido','Atenção',MB_ICONERROR);
      edtDataFim.SetFocus;
      Exit;
   end;

// fim validacoes

   Sql1 := '';
   Parametro1 := 'Período: ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
   Parametro2 := '';

   if rdgTipo.ItemIndex = 0 then  //..................................relatorio de faturas
   begin
      Sql1 := 'SELECT CODIGO_FATURA, CODIGO_CLIENTE_FATURA, EMISSAO_FATURA, SERIE_FATURA, NOTAFISCAL_FATURA, VALOR_FATURA, ' +
              'NOME_CLIENTE ' +
              'FROM P_FATURA ' +
              'LEFT OUTER JOIN E_CLIENTE ON (P_FATURA.CODIGO_CLIENTE_FATURA = E_CLIENTE.CODIGO_CLIENTE) ' +
              'WHERE ' +
              'EMISSAO_FATURA >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date)) + ' AND EMISSAO_FATURA <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date)) + ' ' +
              'AND P_FATURA.COD_EMPRESA = ' + CodigoEmpresa1;

      if edtFatura.Value > 0 then
      begin
         Sql1 := Sql1 + ' AND CODIGO_FATURA = ' + edtFatura.Text;
         Parametro2 := 'Fatura: ' + edtFatura.Text;
      end;

      if edtCliente.Value > 0 then
      begin
         Sql1 := Sql1 + ' AND CODIGO_CLIENTE_FATURA = ' + edtCliente.Text;
         Parametro2 := Parametro2 + '  Cliente: ' + edtCliente.Text;
      end;

      if edtReserva.Text <> 'Æ' then
         Sql1 := Sql1 + ' AND SERIE_FATURA <> ''CI''';


      ExecutaSql(dmRL0807.cdsFatura, Sql1);

      if dmRL0807.cdsFatura.RecordCount = 0 then
      begin
         Application.MessageBox('Dados não localizados','Atenção',MB_ICONWARNING);
         rdgTipo.SetFocus;
         Exit;
      end;

      dmRL0807.cdsFatura.IndexFieldNames := 'EMISSAO_FATURA';

      lblData.Text    := DateToStr(DataSystem1);
      lblEmpresa.Text := Empresa1;

      ppSubReport1.Visible := chkListaTitulos.Checked;
      ppSubReport2.Visible := chkListaVendas.Checked;

      lblParam1.Text  := Parametro1;
      lblParam2.Text  := Parametro2;

      rptRel_Fatura.Print;
   end
   else if rdgTipo.ItemIndex = 1 then  //..................................relatorio de vendas
   begin
      Sql1 := 'SELECT CODIGO_VENDA, CLIENTE_VENDA, VENDEDOR_VENDA, DATA_VENDA, CPAGAMENTO_VENDA, VALORNOTA_VENDA, SERIE_VENDA, NOTAFISCAL_VENDA, ' +
              'NOME_CLIENTE, ' +
              'DESCRICAO_CPAGAMENTO, ' +
              'NOME_VENDEDOR, ' +
              'EMISSAO_FATURA ' +
              'FROM P_VENDAS ' +
              'LEFT OUTER JOIN E_CLIENTE ON (P_VENDAS.CLIENTE_VENDA = E_CLIENTE.CODIGO_CLIENTE) ' +
              'LEFT OUTER JOIN P_CPAGAMENTO ON (P_VENDAS.CPAGAMENTO_VENDA = P_CPAGAMENTO.CODIGO_CPAGAMENTO) ' +
              'LEFT OUTER JOIN P_VENDEDOR ON (P_VENDAS.VENDEDOR_VENDA = P_VENDEDOR.CODIGO_VENDEDOR) ' +
              'LEFT OUTER JOIN P_FATURA ON (P_VENDAS.NRFATURA_VENDA = P_FATURA.CODIGO_FATURA) ' +
              'WHERE ' +
              'EMISSAO_FATURA >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date)) + ' AND EMISSAO_FATURA <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date)) + ' ' +
              'AND NRFATURA_VENDA > 0 ' +
              'AND P_VENDAS.COD_EMPRESA = ' + CodigoEmpresa1;

      if edtVenda.Value > 0 then
      begin
         Sql1 := Sql1 + ' AND CODIGO_VENDA = ' + edtVenda.Text;
         Parametro2 := 'Venda: ' + edtVenda.Text;
      end;

      if edtCliente.Value > 0 then
      begin
         Sql1 := Sql1 + ' AND CLIENTE_VENDA = ' + edtCliente.Text;
         Parametro2 := Parametro2 + '  Cliente: ' + edtCliente.Text;
      end;

      if edtReserva.Text <> 'Æ' then
         Sql1 := Sql1 + ' AND SERIE_VENDA <> ''CI''';
        

      ExecutaSql(dmRL0807.cdsVendas, Sql1);

      if dmRL0807.cdsVendas.RecordCount = 0 then
      begin
         Application.MessageBox('Dados não localizados','Atenção',MB_ICONWARNING);
         rdgTipo.SetFocus;
         Exit;
      end;

      dmRL0807.cdsVendas.IndexFieldNames := 'DATA_VENDA';

      lblData2.Text    := DateToStr(DataSystem1);
      lblEmpresa2.Text := Empresa1;

      lblParam11.Text := Parametro1;
      lblParam22.Text := Parametro2;

      rptRel_Vendas.Print;
   end;
end;

procedure TfrmRL0807.edtClienteExit(Sender: TObject);
begin
   if not Busca_Dados(edtCliente, edtNomeCliente, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
   begin
      edtCliente.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0807.SpeedButton1Click(Sender: TObject);
begin
   edtCliente.SetFocus;

   ConsultaCliente(edtCliente);
end;

procedure TfrmRL0807.FormCreate(Sender: TObject);
begin
   dmRL0807 := TdmRL0807.Create(Self);
end;

procedure TfrmRL0807.dtsFaturaDataChange(Sender: TObject; Field: TField);
var Sql1: String;
begin
   if chkListaTitulos.Checked then
   begin
      Sql1 := 'SELECT DUPLICATA_RECEBER, EMISSAO_RECEBER, VENCIMENTO_RECEBER, VALOR_RECEBER, TIPO_BAIXA_RECEBER ' +
              'FROM P_RECEBER ' +
              'WHERE DUPLICATA_RECEBER LIKE ' +  QuotedStr( '%FT' + StrZero(dmRL0807.cdsFatura.FieldByName('CODIGO_FATURA').AsString,6) + '%' );

      ExecutaSql(dmRL0807.cdsReceber, Sql1);
   end;


   if chkListaVendas.Checked then
   begin
     dmRL0807.qryVendas.Close;
     dmRL0807.cdsVendas.Close;
     dmRL0807.qryVendas.ParamByName('FATURA').AsString := dmRL0807.cdsFatura.FieldByName('CODIGO_FATURA').AsString;
     dmRL0807.qryVendas.Open;
     dmRL0807.cdsVendas.Open;
   end;
end;

procedure TfrmRL0807.ppLabel28GetText(Sender: TObject; var Text: String);
begin
   if dmRL0807.cdsReceber.FieldByName('TIPO_BAIXA_RECEBER').AsString = 'T' then
      Text := 'Pago'
   else
      Text := 'Aberto';
end;

procedure TfrmRL0807.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
