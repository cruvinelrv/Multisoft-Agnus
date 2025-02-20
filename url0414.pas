unit uRL0414;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppSubRpt, ppParameter, ppModule, raCodMod;

type
  TfrmRL0414 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label5: TLabel;
    edtDataIni: TJvDateEdit;
    Label11: TLabel;
    edtDataFim: TJvDateEdit;
    Label1: TLabel;
    edtOperacao: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Label6: TLabel;
    edtSerie: TEdit;
    Label2: TLabel;
    cbxCFOP: TComboBox;
    Label3: TLabel;
    Label8: TLabel;
    edtReserva: TEdit;
    Label7: TLabel;
    cbxTotaliza: TComboBox;
    rptRel_Vendas: TppReport;
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
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppDBText8: TppDBText;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel17: TppLabel;
    Total_Fatura: TppDBCalc;
    Total_Recebido: TppDBCalc;
    Total_Desc: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel18: TppLabel;
    Geral_Fatura: TppDBCalc;
    Geral_Desc: TppVariable;
    Geral_Recebido: TppDBCalc;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine4: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine5: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel42: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppVariable1: TppVariable;
    ppDBCalc3: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText31: TppDBText;
    ppLabel43: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel44: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppVariable2: TppVariable;
    ppLine6: TppLine;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel47: TppLabel;
    ppDBText32: TppDBText;
    ppDBCalc6: TppDBCalc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtOperacaoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure cbxCFOPChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0414: TfrmRL0414;

implementation

uses udmRL0414, uConsulta, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0414.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0414.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0414.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmRL0414.FormCreate(Sender: TObject);
begin
   dmRL0414 := TdmRL0414.Create(Self);
end;

procedure TfrmRL0414.edtOperacaoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtOperacao, Edit1, 'E_NATUREZA', 'CODIGO_NAT', 'DESCRICAO_NAT') then
   begin
      edtOperacao.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0414.SpeedButton1Click(Sender: TObject);
begin
   edtOperacao.SetFocus;

   ConsultaCFOP(edtOperacao);
end;

procedure TfrmRL0414.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0414.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data Final do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0414.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Sql1 := 'select v. *, c.nome_cliente, '+
           'Case when (not v.desconto_venda is null) then ((v.desconto_venda * 100) / v.fatura_venda) '+
           'else 0 '+
           'end as PERC_DESC, '+
           'Case when (not v.desconto_venda is null) then (v.fatura_venda - v.desconto_venda) '+
           'else 0 '+
           'end as VALOR_RECE '+
           'from P_VENDAS v '+
           'left outer join e_cliente c on (v.cliente_venda = c.codigo_cliente) '+
           'where (v.exclusao_venda is null) ';

   Sql1 := Sql1 + ' and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
   Sql1 := Sql1 + ' and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));

   if edtOperacao.Value > 0 then
      Sql1 := Sql1 + ' and v.cfop_venda = ' + QuotedStr(edtOperacao.EditText);

   if edtReserva.Text = '�' then
   begin
      if edtSerie.Text <> '' then
         Sql1 := Sql1 + ' and v.serie_venda = ' + QuotedStr(edtSerie.Text);
   end
   else
   begin
      if (edtSerie.Text <> 'CI') and (edtSerie.Text <> '') then
         Sql1 := Sql1 + ' and v.serie_venda = ' + QuotedStr(edtSerie.Text)
      else
         Sql1 := Sql1 + ' and (not v.serie_venda = ''CI'') ';
   end;

   with dmRL0414 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsVendas.Close;
      cdsVendas.CommandText := Sql1;
      cdsVendas.Open;
      cdsVendas.IndexFieldNames := 'DATA_VENDA; CFOP_VENDA';

      cdsCFOP.Close;
      cdsCFOP.CommandText := Sql1;
      cdsCFOP.Open;
      cdsCFOP.IndexFieldNames := 'CFOP_VENDA';

      frmProcesso2.Close;

      if (cbxCFOP.ItemIndex = 0) and (cbxTotaliza.ItemIndex = 1) then
         rptRel_Vendas.Print;

      if (cbxCFOP.ItemIndex = 0) and (cbxTotaliza.ItemIndex = 0) then
         ppReport1.Print;
   end;
end;

procedure TfrmRL0414.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0414.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Vendas / Data da Venda de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0414.lblParam1GetText(Sender: TObject; var Text: String);
begin
   if edtOperacao.Value > 0 then
      Text := edtOperacao.EditText + '  ' + Edit1.Text
   else
      Text := '';
end;

procedure TfrmRL0414.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0414.cbxCFOPChange(Sender: TObject);
begin
   cbxTotaliza.Enabled := not(cbxCFOP.ItemIndex = 0);
   cbxTotaliza.Enabled := cbxCFOP.ItemIndex = 0;
end;

procedure TfrmRL0414.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
