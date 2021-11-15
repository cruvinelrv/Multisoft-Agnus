unit uRL0702;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppModule, raCodMod, ppStrtch, ppSubRpt;

type
  TfrmRL0702 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    edtEspecifico: TJvValidateEdit;
    SpeedButton6: TSpeedButton;
    Edit1: TEdit;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    Label10: TLabel;
    cbxPeriodo: TComboBox;
    cbxSituacao: TComboBox;
    cbxTipo: TComboBox;
    rdgRecibos: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    rptRel_Analitico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine4: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppVariable4: TppVariable;
    ppDBText10: TppDBText;
    ppVariable6: TppVariable;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText19: TppDBText;
    ppLabel37: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLabel35: TppLabel;
    ppVariable8: TppVariable;
    ppVariable9: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine6: TppLine;
    ppLabel36: TppLabel;
    ppVariable10: TppVariable;
    ppVariable11: TppVariable;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    edtCorrente: TJvValidateEdit;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppTitleBand1: TppTitleBand;
    ppLabel2: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    raCodeModule1: TraCodeModule;
    ppVariable3: TppVariable;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppVariable5: TppVariable;
    rptRel_Sintetico: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel30: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel47: TppLabel;
    ppVariable15: TppVariable;
    ppVariable16: TppVariable;
    ppVariable17: TppVariable;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine7: TppLine;
    ppLabel48: TppLabel;
    ppVariable18: TppVariable;
    ppVariable19: TppVariable;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel49: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel50: TppLabel;
    ppLine8: TppLine;
    raCodeModule3: TraCodeModule;
    ppVariable20: TppVariable;
    raCodeModule4: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppLine9: TppLine;
    ppDBText16: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtEspecificoExit(Sender: TObject);
    procedure edtCorrenteExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel22GetText(Sender: TObject; var Text: String);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable17Calc(Sender: TObject; var Value: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Valor_Total, Total_Recibo, Soma1 : Double;
  end;

var
  frmRL0702: TfrmRL0702;

implementation

uses udmRL0702, uConsulta, uGlobal, uProcesso2, DB;

{$R *.dfm}

procedure TfrmRL0702.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0702.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0702.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0702.FormCreate(Sender: TObject);
begin
   dmRL0702 := TdmRL0702.Create(Self);
end;

procedure TfrmRL0702.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial do período', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0702.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data final do período', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0702.edtEspecificoExit(Sender: TObject);
begin
   rdgRecibos.ItemIndex := 1;

   if edtEspecifico.Value <= 0 then
      rdgRecibos.Enabled := False
   else
      rdgRecibos.Enabled := True;

   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtEspecifico, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
   begin
      edtEspecifico.SetFocus;
      Exit;
   end
   else
   begin
      if Tipo_Cliente = 0 then
      begin
         Edit1.Clear;
         Application.MessageBox('O código informado é inválido', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtEspecifico.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0702.edtCorrenteExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtCorrente, Edit2, 'P_BANCO', 'CODIGO_BANCO', 'DESCRICAO_BANCO') then
   begin
      edtCorrente.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0702.SpeedButton6Click(Sender: TObject);
begin
   edtEspecifico.SetFocus;

   ConsultaFornecedor(edtEspecifico);
end;

procedure TfrmRL0702.SpeedButton2Click(Sender: TObject);
begin
   edtCorrente.SetFocus;

   ConsultaContaBanco(edtCorrente);
end;

procedure TfrmRL0702.btnImprimirClick(Sender: TObject);
Var
  Sql1 : String;
  Dias : Double;
begin
   Soma1         := 0;
   Valor_Total   := 0;
   Total_Recibo  := 0;

   Sql1 := 'select p.documento_pagar, p.notafiscal, p.emissao_pagar, p.vencimento_pagar, '+
           'p.data_cadastro, p.previsao_pagar, p.fornecedor_pagar, c.nome_cliente, '+
           'p.centro_pagar, p.portador_pagar, p.tipo_pagar, p.valor_pagar, p.valorpago_pagar, '+
           'Case when (not p.valorpago_pagar is null) then (p.valor_pagar - p.valorpago_pagar) '+
           'else p.valor_pagar '+
           'end as "Valor_Total", '+
           'p.historico_pagar, p.mora_dia_pagar, p.multa_pagar, p.entrada_pagar, p.movimento_pagar, '+
           'p.tipo_baixa_pagar, p.cod_empresa_pagar, e.datasystem_emp, b.descricao_banco '+
           'from P_PAGAR p '+
           'left outer join e_cliente c on (p.fornecedor_pagar = c.codigo_cliente) '+
           'left outer join empresa e on (p.cod_empresa_pagar = e.codigo_emp) '+
           'left outer join p_banco b on (p.corrente_pagar = b.codigo_banco) '+
           'where p.cod_empresa_pagar > 0 ';

   if edtEspecifico.Value > 0 then
      Sql1 := Sql1 + ' and p.fornecedor_pagar = ' + QuotedStr(edtEspecifico.EditText);

   Case cbxPeriodo.ItemIndex of
      0:
      begin
         Sql1 := Sql1 + ' and p.emissao_pagar >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + ' and p.emissao_pagar <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;

      1:
      begin
         Sql1 := Sql1 + ' and p.vencimento_pagar >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + ' and p.vencimento_pagar <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;

      2:
      begin
         Sql1 := Sql1 + ' and p.movimento_pagar >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + ' and p.movimento_pagar <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;
   end;

   Case cbxSituacao.ItemIndex of
      0: Sql1 := Sql1 + ' and ((p.tipo_baixa_pagar = ''A'') or (p.tipo_baixa_pagar is null))';
      1: Sql1 := Sql1 + ' and ((p.tipo_baixa_pagar = ''T''))';
      2: Sql1 := Sql1 + ' and ((p.tipo_baixa_pagar = ''T'') or (p.tipo_baixa_pagar = ''A'') or (p.tipo_baixa_pagar = ''P''))';
   end;

   if edtCorrente.Value > 0 then
      Sql1 := Sql1 + ' and p.corrente_pagar = ' + QuotedStr(edtCorrente.EditText);

   with dmRL0702 do
   begin
      cdsConsulta.Close;

      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsConsulta.CommandText := Sql1;
      cdsConsulta.open;

      dtsConsulta.Enabled := False;

      cdsConsulta.First;
      while not cdsConsulta.Eof do
      begin
         Valor_Total    := Valor_Total + cdsConsultaValor_Total.AsFloat;

         if (cbxSituacao.ItemIndex = 1) or (cbxSituacao.ItemIndex = 2) then
            Valor_Total := Valor_Total + cdsConsultaVALOR_PAGAR.AsFloat;

         cdsConsulta.Next;
      end;

      cdsRecibo.Close;
      cdsRecibo.Params.ParamByName('FORNECEDOR').AsInteger := edtEspecifico.Value;
      cdsRecibo.Open;

      cdsRecibo.First;
      while not cdsRecibo.Eof do
      begin
         Total_Recibo      := Total_Recibo + cdsReciboVALOR_RECIBO.AsFloat;

         cdsRecibo.Next;
      end;

      cdsConsulta.First;
      cdsConsulta.IndexFieldNames := 'fornecedor_pagar; vencimento_pagar';
      dtsConsulta.Enabled := True;

      frmProcesso2.Close;

      if rdgRecibos.ItemIndex = 0 then
      begin
         ppSubReport1.Visible := True;
         ppSubReport2.Visible := True;
      end
      else
      begin
         ppSubReport1.Visible := False;
         ppSubReport2.Visible := False;
      end;

      if cbxTipo.ItemIndex = 1 then
         rptRel_Analitico.Print
      else
         rptRel_Sintetico.Print;
   end;
end;

procedure TfrmRL0702.ppLabel18GetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0702.ppLabel19GetText(Sender: TObject; var Text: String);
begin
   if edtEspecifico.Value > 0 then
      Text := 'Contas a Pagar p/ Fornecedor de ' + edtDataIni.Text + ' a ' + edtDataFim.Text + '   ' + 'Específico'
   else
      Text := 'Contas a Pagar p/ Fornecedor de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0702.ppLabel20GetText(Sender: TObject; var Text: String);
begin
   Text := '      ' + cbxSituacao.Text + ' / Período Referente a Data de ' + cbxPeriodo.Text;
end;

procedure TfrmRL0702.ppLabel22GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0702.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
   if ppSubReport1.Visible = True then
      ppVariable1.AsDouble := Valor_Total + Total_Recibo
   else
      ppVariable1.AsDouble := Valor_Total;
end;

procedure TfrmRL0702.ppVariable17Calc(Sender: TObject; var Value: Variant);
begin
   if ppSubReport2.Visible = True then
      ppVariable17.AsDouble := Valor_Total + Total_Recibo
   else
      ppVariable17.AsDouble := Valor_Total;
end;

procedure TfrmRL0702.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
