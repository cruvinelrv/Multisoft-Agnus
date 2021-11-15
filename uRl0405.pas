unit uRl0405;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, DB,
  ppStrtch, ppSubRpt;

type
  TfrmRl0405 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    edtData_inicial: TJvDateEdit;
    edtData_final: TJvDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    edtCodCliente: TJvValidateEdit;
    Edit1: TEdit;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    edtPagamento: TJvValidateEdit;
    Edit2: TEdit;
    rptVendas: TppReport;
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
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    Label1: TLabel;
    Label2: TLabel;
    edtReserva: TEdit;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    rptProdutos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine4: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine5: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppLabel32: TppLabel;
    ppLine6: TppLine;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPagamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRl0405: TfrmRl0405;

implementation

uses uConsulta, uGlobal, udmRl0405;

{$R *.dfm}

procedure TfrmRl0405.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRl0405.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRl0405.SpeedButton2Click(Sender: TObject);
begin
   edtCodCliente.SetFocus;

   ConsultaCliente(edtCodCliente);
end;

procedure TfrmRl0405.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRl0405.btnImprimirClick(Sender: TObject);
begin
   if (edtData_inicial.Text = '  /  /    ') or (edtData_final.Text = '  /  /    ') then
   begin
      Application.MessageBox('Informe o período.','Atenção', MB_OK + MB_ICONERROR);
      exit;
   end;

   lblEmpresa.Caption := Empresa1;
   lblParam1.Caption := 'Período: ' + edtData_inicial.Text + ' a ' + edtData_final.Text;
   lblParam2.Caption := 'Forma de pagamento: ' + Edit2.Text;

   dmRl0405.cdsVendas.Close;
   dmRl0405.cdsVendas.Params.ParamByName('DATA_INICIAL') .AsDate := edtData_inicial.Date;
   dmRl0405.cdsVendas.Params.ParamByName('DATA_FINAL')   .AsDate := edtData_final.Date;

   if edtCodCliente.Value > 0 then
   begin
      dmRl0405.cdsVendas.Params.ParamByName('CLI1').AsInteger := edtCodCliente.Value;
      dmRl0405.cdsVendas.Params.ParamByName('CLI2').AsInteger := edtCodCliente.Value;
   end
   else
   begin
      dmRl0405.cdsVendas.Params.ParamByName('CLI1').AsInteger := 0;
      dmRl0405.cdsVendas.Params.ParamByName('CLI2').AsInteger := 999999999;
   end;

   if edtPagamento.Value > 0 then
   begin
      dmRl0405.cdsVendas.Params.ParamByName('PGT1').AsInteger := edtPagamento.Value;
      dmRl0405.cdsVendas.Params.ParamByName('PGT2').AsInteger := edtPagamento.Value;
   end
   else
   begin
      dmRl0405.cdsVendas.Params.ParamByName('PGT1').AsInteger := 0;
      dmRl0405.cdsVendas.Params.ParamByName('PGT2').AsInteger := 9999;
   end;

   if edtReserva.Text <> 'Æ' then
      dmRl0405.cdsVendas.Params.ParamByName('SER1').AsString := 'CI'
   else
      dmRl0405.cdsVendas.Params.ParamByName('SER1').AsString := '';

   dmRl0405.cdsVendas.Open;

   // Somente vendas
   if not CheckBox1.Checked then
   begin
      lblEmpresa.Caption := Empresa1;
      lblParam1.Caption := 'Período: ' + edtData_inicial.Text + ' a ' + edtData_final.Text;
      lblParam2.Caption := 'Forma de pagamento: ' + Edit2.Text;
      
      rptVendas.Print;
   end
   else
   // Produtos da venda
   begin
      ppLabel16.Caption := Empresa1;
      ppLabel18.Caption := 'Período: ' + edtData_inicial.Text + ' a ' + edtData_final.Text;
      ppLabel19.Caption := 'Forma de pagamento: ' + Edit2.Text;

      rptProdutos.Print;
   end;
end;

procedure TfrmRl0405.FormCreate(Sender: TObject);
begin
   dmRl0405 := TdmRl0405.Create(Self);
end;

procedure TfrmRl0405.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRl0405.edtCodClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtCodCliente, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edtCodCliente.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRl0405.edtPagamentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtPagamento, Edit2, 'P_CPAGAMENTO', 'CODIGO_CPAGAMENTO', 'DESCRICAO_CPAGAMENTO') then
      begin
         edtPagamento.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRl0405.SpeedButton1Click(Sender: TObject);
begin
   edtPagamento.SetFocus;

   ConsultaPagamento(edtPagamento);
end;

procedure TfrmRl0405.DataSource1DataChange(Sender: TObject; Field: TField);
begin
   if CheckBox1.Checked then
   begin
      dmRl0405.cdsItensVenda.Close;
      dmRl0405.cdsItensVenda.Params.ParamByName('CODVENDA').AsInteger := dmRl0405.cdsVendasCODIGO_VENDA.AsInteger;
      dmRl0405.cdsItensVenda.Open;
   end;
end;

procedure TfrmRl0405.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
