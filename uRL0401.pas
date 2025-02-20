unit uRL0401;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppSubRpt, DBCtrls;

type
  TfrmRL0401 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    cbxEspecificar: TComboBox;
    Label3: TLabel;
    edtDataIni: TJvDateEdit;
    Label4: TLabel;
    edtDataFim: TJvDateEdit;
    Label5: TLabel;
    cbxModelo: TComboBox;
    Label6: TLabel;
    cbxParcelas: TComboBox;
    Label7: TLabel;
    cbxCST: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    edtSerie: TJvValidateEdit;
    edtReserva: TJvValidateEdit;
    rptRel_Comum: TppReport;
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
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLabel15: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel16: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel17: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine3: TppLine;
    ppLabel18: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel21: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    rptRel_Parcelas: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine4: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine5: TppLine;
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
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDetailBand3: TppDetailBand;
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
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel47: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLabel48: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppLabel49: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppLine6: TppLine;
    ppLabel50: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel53: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLine7: TppLine;
    dblTipoPagto: TDBLookupComboBox;
    cbxTipoPagto: TComboBox;
    rptRel_Sintetico: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine8: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLine9: TppLine;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel86: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel87: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppLabel88: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppLine10: TppLine;
    ppLabel89: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel92: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure cbxModeloChange(Sender: TObject);
    procedure cbxEspecificarChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Calcula_CST : Boolean;
  end;

var
  frmRL0401: TfrmRL0401;

implementation

uses udmRL0401, uConsulta, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0401.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0401.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0401.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmRL0401.FormCreate(Sender: TObject);
begin
   dmRL0401 := TdmRL0401.Create(Self);

   dmRL0401.cdsCpagamento.Open;

   dblTipoPagto.Visible := not(cbxEspecificar.ItemIndex = 0);
   cbxTipoPagto.Visible := (cbxEspecificar.ItemIndex = 0);

   Calcula_CST := False;
end;

procedure TfrmRL0401.edtDataIniExit(Sender: TObject);
begin
   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0401.edtDataFimExit(Sender: TObject);
begin
   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data final', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0401.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   // no form o objeto cbxTipoPgto est� sobreposto ao objeto dblTipoPagto
   // ambos sendo controlados pela propriedade visible

   Sql1 := 'select v. *, c.descricao_cpagamento, ve.nome_vendedor, cl.nome_cliente, '+
           '((v.desconto_venda * 100) / V.fatura_venda) as PERC_DESC, '+
           '(v.fatura_venda - v.desconto_venda) as VALOR_RECEBIDO, '+
           'Case when v.cpagamento_venda > 1 and c.caixa_cpagamento = 5 then v.valornota_venda '+
           'else 0 '+
           'end as ENT_PERIODO, '+
           'Case when c.caixa_cpagamento <> 7 then v.valornota_venda '+
           'else 0 '+
           'end as VALOR_VENDA, '+
           'substring(v.chave_venda from 1 for 8) as DATA_CAIXA, '+
           'substring(v.chave_venda from 10 for 1) as TIPO, '+
           'substring(v.chave_venda from 12 for 10) as FUNCIONARIO '+
           'from P_VENDAS v '+
           'left outer join p_vendedor ve on (v.vendedor_venda = ve.codigo_vendedor) '+
           'left outer join e_cliente cl on (v.cliente_venda = cl.codigo_cliente) '+
           'left outer join p_cpagamento c on (v.cpagamento_venda = c.codigo_cpagamento) '+
           'left outer join e_natureza n on (v.cfop_venda = n.codigo_nat) '+
           'where v.exclusao_venda is null and n.operacao_nat = ''5'' ';


   Sql1 := Sql1 + ' and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
   Sql1 := Sql1 + ' and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));

   if cbxEspecificar.ItemIndex = 1 then  // forma de pagamento
   begin
      if not(dblTipoPagto.KeyValue = null) then
         Sql1 := Sql1 + ' and v.cpagamento_venda = ' + QuotedStr(IntToStr(dblTipoPagto.KeyValue));
   end
   else
   begin
      if cbxTipoPagto.ItemIndex > 0 then // resumo de caixa
         Sql1 := Sql1 + ' and c.caixa_cpagamento = ' + QuotedStr(IntToStr(cbxTipoPagto.ItemIndex));
   end;

   if cbxCST.ItemIndex = 1 then
      Calcula_CST := True
   else
      Calcula_CST := False;

   if edtReserva.EditText = '�' then
   begin
      if edtSerie.EditText <> '' then
         Sql1 := Sql1 + ' and v.serie_venda = ' + QuotedStr(edtSerie.EditText);
   end
   else
   begin
      if (edtSerie.EditText <> 'CI') and (edtSerie.EditText <> '') then
         Sql1 := Sql1 + ' and v.serie_venda = ' + QuotedStr(edtSerie.EditText)
      else
         Sql1 := Sql1 + ' and not v.serie_venda = ''CI'' ';
   end;

   with dmRL0401 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsVenda.Close;
      cdsVenda.CommandText := Sql1;
      cdsVenda.Open;

      cdsVenda.IndexFieldNames := 'cpagamento_venda';

      frmProcesso2.Close;

      Case cbxModelo.ItemIndex of
         0:
         begin
            Case cbxParcelas.ItemIndex of
               0: rptRel_Comum.Print;
               1: rptRel_Parcelas.Print;
            end;
         end;

         1:
         begin
            rptRel_Sintetico.Print;
         end;
      end;
   end;
end;

procedure TfrmRL0401.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0401.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Vendas / Tipo de Pagto de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0401.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Text := '         Espec�fico - ' + cbxModelo.Text;
end;

procedure TfrmRL0401.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0401.cbxModeloChange(Sender: TObject);
begin
   cbxParcelas.Enabled := not(cbxModelo.ItemIndex = 1);
   cbxParcelas.Enabled := (cbxModelo.ItemIndex = 1);
end;

procedure TfrmRL0401.cbxEspecificarChange(Sender: TObject);
begin
   dblTipoPagto.Visible := not(cbxEspecificar.ItemIndex = 0);
   cbxTipoPagto.Visible := (cbxEspecificar.ItemIndex = 0);
end;

procedure TfrmRL0401.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
