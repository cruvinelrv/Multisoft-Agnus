unit uRL0906;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppModule, raCodMod, ppStrtch, ppSubRpt, ppMemo;

type
  TfrmRL0906 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    Label10: TLabel;
    Label3: TLabel;
    cbxTipoRel: TComboBox;
    rdgPercentuais: TRadioGroup;
    rdgCredito: TRadioGroup;
    rdgCaixa: TRadioGroup;
    edtCentro: TJvValidateEdit;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    rdg999: TRadioGroup;
    Label4: TLabel;
    rptRel_Analitico: TppReport;
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
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    edtEspecifico: TEdit;
    ppLabel1: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel11: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBText3: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLabel14: TppLabel;
    Per_Credito: TppVariable;
    Per_Debito: TppVariable;
    Credito: TppDBCalc;
    Debito: TppDBCalc;
    ppSubReport2: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppLine3: TppLine;
    Credito2: TppVariable;
    Debito2: TppVariable;
    Per_Credito2: TppVariable;
    Per_Debito2: TppVariable;
    raCodeModule2: TraCodeModule;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    rptRel_Sintetico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine4: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine5: TppLine;
    ppLabel23: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppLabel33: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand6: TppDetailBand;
    ppLine6: TppLine;
    Credito2_Sin: TppVariable;
    Debito2_Sin: TppVariable;
    Per_Credito2_Sin: TppVariable;
    Per_Debito2_Sin: TppVariable;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppVariable8: TppVariable;
    ppVariable9: TppVariable;
    raCodeModule3: TraCodeModule;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel37: TppLabel;
    ppVariable10: TppVariable;
    ppGroupFooterBand2: TppGroupFooterBand;
    Per_Credito_Sin: TppVariable;
    Per_Debito_Sin: TppVariable;
    Credito_Sin: TppDBCalc;
    Debito_Sin: TppDBCalc;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel40: TppLabel;
    ppLabel38: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    Caixa_Credito_Rel: TppVariable;
    Caixa_Debito_Rel: TppVariable;
    ppLabel34: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel41: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtCentroExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtEspecificoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure Per_CreditoCalc(Sender: TObject; var Value: Variant);
    procedure Per_DebitoCalc(Sender: TObject; var Value: Variant);
    procedure Per_Credito2Calc(Sender: TObject; var Value: Variant);
    procedure Per_Debito2Calc(Sender: TObject; var Value: Variant);
    procedure Credito2Calc(Sender: TObject; var Value: Variant);
    procedure Debito2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure Per_Credito_SinCalc(Sender: TObject; var Value: Variant);
    procedure Per_Debito_SinCalc(Sender: TObject; var Value: Variant);
    procedure Per_Credito2_SinCalc(Sender: TObject; var Value: Variant);
    procedure Per_Debito2_SinCalc(Sender: TObject; var Value: Variant);
    procedure Credito2_SinCalc(Sender: TObject; var Value: Variant);
    procedure Debito2_SinCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable8Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable9Calc(Sender: TObject; var Value: Variant);
    procedure Caixa_Credito_RelCalc(Sender: TObject; var Value: Variant);
    procedure Caixa_Debito_RelCalc(Sender: TObject; var Value: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Total_Credito, Total_Debito,
    Caixa_Credito, Caixa_Debito : Double;
  end;

var
  frmRL0906: TfrmRL0906;

implementation

uses udmRL0906, uConsulta, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0906.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0906.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0906.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0906.FormCreate(Sender: TObject);
begin
   dmRL0906 := TdmRL0906.Create(Self);
end;

procedure TfrmRL0906.edtDataIniExit(Sender: TObject);
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

procedure TfrmRL0906.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data final do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0906.edtCentroExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtCentro, Edit2, 'E_CENTRO', 'CODIGO_CENTRO', 'DESCRICAO_CENTRO') then
   begin
      edtCentro.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0906.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Total_Credito  := 0;
   Total_Debito   := 0;
   Caixa_Credito  := 0;
   Caixa_Debito   := 0;

   Sql1 := 'select c.codigo_conlan, c.corrente_conlan, c.conta_conlan,  c.data_conlan, ce.descricao_centro, '+
           'co.descricao_conta, co.tipo_conta, co.titulo_conta, c.historico_conlan, c.valor_conlan, '+
           'c.movimento_conlan, c.centro_conlan, c.documento_conlan, c.origem_conlan, c.tipo_conlan, '+
           'Case when c.tipo_conlan = ''C'' then (c.valor_conlan) '+
           'end as "Credito", '+
           'Case when c.tipo_conlan = ''D'' then (c.valor_conlan) '+
           'end as "Debito" '+
           'from P_CONLAN c '+
           'left outer join e_conta co on (c.conta_conlan = co.codigo_conta) '+
           'left outer join e_centro ce on (c.centro_conlan = ce.codigo_centro) '+
           'where c.codigo_conlan > 0 and not (c.documento_conlan = ''TRANSF FAT'')';

   if edtEspecifico.Text <> '' then
      Sql1 := Sql1 + ' and c.conta_conlan = ' + QuotedStr(edtEspecifico.Text);

   if (edtDataIni.Date <> 0) and (edtDataFim.Date <> 0) then
   begin
      Sql1 := Sql1 + ' and c.movimento_conlan >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
      Sql1 := Sql1 + ' and c.movimento_conlan <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
   end;

   if edtCentro.Value > 0 then
      Sql1 := Sql1 + ' and c.centro_conlan = ' + QuotedStr(edtCentro.EditText);

   if rdg999.ItemIndex = 1 then
      Sql1 := Sql1 + ' and not (c.corrente_conlan = ''999'') ';

   Sql1 := Sql1 + ' and c.conta_conlan <> '''' ';

   with dmRL0906 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsConsulta.IndexFieldNames := 'conta_conlan; codigo_conlan';

      cdsConsulta.Close;
      cdsConsulta.CommandText := Sql1;
      cdsConsulta.Open;

      cdsConsulta.First;
      while not cdsConsulta.Eof do
      begin
         Total_Credito := Total_Credito + cdsConsultaCredito.AsFloat;
         Total_Debito  := Total_Debito + cdsConsultaDebito.AsFloat;

         cdsConsulta.Next;
      end;

      if rdgCaixa.ItemIndex = 0 then
      begin
         cdsCaixa999.Open;

         ppSubReport1.Visible := True; // anal�tico
         ppSubReport3.Visible := True; // Sint�tico

         cdsCaixa999.First;
         while not cdsCaixa999.Eof do
         begin
            Caixa_Credito := Caixa_Credito + cdsCaixa999Credito.AsFloat;
            Caixa_Debito  := Caixa_Debito + cdsCaixa999Debito.AsFloat;
            Total_Credito := Total_Credito + cdsCaixa999Credito.AsFloat;
            Total_Debito  := Total_Debito + cdsCaixa999Debito.AsFloat;

            cdsCaixa999.Next;
         end;
      end
      else
      begin
         ppSubReport1.Visible := False;
         ppSubReport3.Visible := False;
         cdsCaixa999.Close;
      end;

      frmProcesso2.Close;

      if cbxTipoRel.ItemIndex = 0 then
         rptRel_Sintetico.Print
      else
         rptRel_Analitico.Print;
   end;
end;

procedure TfrmRL0906.edtEspecificoExit(Sender: TObject);
begin
   if not Busca_Dados(edtEspecifico, Edit1, 'E_CONTA', 'CODIGO_CONTA', 'DESCRICAO_CONTA') then
   begin
      edtEspecifico.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0906.SpeedButton1Click(Sender: TObject);
begin
   edtEspecifico.SetFocus;

   ConsultaConta(edtEspecifico);
end;

procedure TfrmRL0906.SpeedButton2Click(Sender: TObject);
begin
   edtCentro.SetFocus;

   ConsultaCentroCusto(edtCentro);
end;

procedure TfrmRL0906.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0906.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0906.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   if edtEspecifico.Text = '' then
      Text := 'Movimento - Conta Cont�bil ' + edtDataIni.Text + ' a ' + edtDataFim.Text + ' Todos'
   else
      Text := 'Movimento - Conta Cont�bil ' + edtDataIni.Text + ' a ' + edtDataFim.Text + ' Espec�fico';
end;

procedure TfrmRL0906.Per_CreditoCalc(Sender: TObject; var Value: Variant);
begin
   // acha o sutotal do cr�dito

   if rdgPercentuais.ItemIndex = 0 then
   begin
      if dmRL0906.cdsConsultaCredito.AsFloat > 0 then
      begin
         Per_Credito.AsFloat := Porcento(Credito.Value, Total_Credito);
         Per_Credito.AsString := '(' + FormatFloat('#,##0.00', Per_Credito.AsFloat) + '%' + ')';
      end;
   end;
end;

procedure TfrmRL0906.Per_DebitoCalc(Sender: TObject; var Value: Variant);
begin
   // acha o sutotal do d�bito  / com referencia ao cr�dito

   if rdgPercentuais.ItemIndex = 0 then
   begin
      if rdgCredito.ItemIndex = 0 then
      begin
         if dmRL0906.cdsConsultaDebito.AsFloat > 0 then
         begin
            Per_Debito.AsFloat := Porcento(Debito.Value, Total_Credito);
            Per_Debito.AsString := '(' + FormatFloat('#,##0.00', Per_Debito.AsFloat) + '%' + ')';
         end;
      end
      else
      begin
         if dmRL0906.cdsConsultaDebito.AsFloat > 0 then
         begin
            Per_Debito.AsFloat := Porcento(Debito.Value, Total_Debito);
            Per_Debito.AsString := '(' + FormatFloat('#,##0.00', Per_Debito.AsFloat) + '%' + ')';
         end;
      end;
   end;
end;

procedure TfrmRL0906.Per_Credito2Calc(Sender: TObject; var Value: Variant);
begin
   // acha o total geral do cr�dito

   if rdgPercentuais.ItemIndex = 0 then // Imprime Percentuais
   begin
      Per_Credito2.AsFloat := Porcento(Total_Credito, Total_Credito);
      Per_Credito2.AsString := '(' + FormatFloat('#,##0.00', Per_Credito2.AsFloat) + '%' + ')';
   end;
end;

procedure TfrmRL0906.Per_Debito2Calc(Sender: TObject; var Value: Variant);
begin
   // acha o total geral do d�bito / com referencia ao cr�dito

   if rdgPercentuais.ItemIndex = 0 then // Imprime Percentuais
   begin
      if rdgCredito.ItemIndex = 0 then // Percentual Referente a Cr�dito
      begin
         Per_Debito2.AsFloat  := Porcento(Total_Debito, Total_Credito);
         Per_Debito2.AsString := '(' + FormatFloat('#,##0.00', Per_Debito2.AsFloat) + '%' + ')';
      end
      else
      begin
         Per_Debito2.AsFloat  := Porcento(Total_Debito, Total_Debito);
         Per_Debito2.AsString := '(' + FormatFloat('#,##0.00', Per_Debito2.AsFloat) + '%' + ')';
      end;
   end;
end;

procedure TfrmRL0906.Credito2Calc(Sender: TObject; var Value: Variant);
begin
   Credito2.AsDouble :=  Total_Credito;
end;

procedure TfrmRL0906.Debito2Calc(Sender: TObject; var Value: Variant);
begin
   Debito2.AsDouble := Total_Debito;
end;

procedure TfrmRL0906.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
   Value := Total_Credito + Total_Debito;
end;

procedure TfrmRL0906.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
   if Total_Credito > Total_Debito then
      Value := Total_Credito - Total_Debito
   else
      Value := Total_Debito - Total_Credito;
end;

procedure TfrmRL0906.Per_Credito_SinCalc(Sender: TObject;
  var Value: Variant);
begin
   // acha o sutotal do cr�dito

   if rdgPercentuais.ItemIndex = 0 then
   begin
      if dmRL0906.cdsConsultaCredito.AsFloat > 0 then
      begin
         Per_Credito_Sin.AsFloat := Porcento(Credito_Sin.Value, Total_Credito);
         Per_Credito_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Credito_Sin.AsFloat) + '%' + ')';
      end;
   end;
end;

procedure TfrmRL0906.Per_Debito_SinCalc(Sender: TObject;
  var Value: Variant);
begin
   // acha o sutotal do d�bito  / com referencia ao cr�dito

   if rdgPercentuais.ItemIndex = 0 then
   begin
      if rdgCredito.ItemIndex = 0 then
      begin
         if dmRL0906.cdsConsultaDebito.AsFloat > 0 then
         begin
            Per_Debito_Sin.AsFloat := Porcento(Debito_Sin.Value, Total_Credito);
            Per_Debito_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Debito_Sin.AsFloat) + '%' + ')';
         end;
      end
      else
      begin
         if dmRL0906.cdsConsultaDebito.AsFloat > 0 then
         begin
            Per_Debito_Sin.AsFloat := Porcento(Debito_Sin.Value, Total_Debito);
            Per_Debito_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Debito_Sin.AsFloat) + '%' + ')';
         end;
      end;
   end;
end;

procedure TfrmRL0906.Per_Credito2_SinCalc(Sender: TObject;
  var Value: Variant);
begin
   // acha o total geral do cr�dito

   if rdgPercentuais.ItemIndex = 0 then // Imprime Percentuais
   begin
      Per_Credito2_Sin.AsFloat := Porcento(Total_Credito, Total_Credito);
      Per_Credito2_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Credito2_Sin.AsFloat) + '%' + ')';
   end;
end;

procedure TfrmRL0906.Per_Debito2_SinCalc(Sender: TObject;
  var Value: Variant);
begin
   // acha o total geral do d�bito / com referencia ao cr�dito

   if rdgPercentuais.ItemIndex = 0 then // Imprime Percentuais
   begin
      if rdgCredito.ItemIndex = 0 then // Percentual Referente a Cr�dito
      begin
         Per_Debito2_Sin.AsFloat  := Porcento(Total_Debito, Total_Credito);
         Per_Debito2_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Debito2_Sin.AsFloat) + '%' + ')';
      end
      else
      begin
         Per_Debito2_Sin.AsFloat  := Porcento(Total_Debito, Total_Debito);
         Per_Debito2_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Debito2_Sin.AsFloat) + '%' + ')';
      end;
   end;
end;

procedure TfrmRL0906.Credito2_SinCalc(Sender: TObject; var Value: Variant);
begin
   Credito2_Sin.AsDouble :=  Total_Credito;
end;

procedure TfrmRL0906.Debito2_SinCalc(Sender: TObject; var Value: Variant);
begin
   Debito2_Sin.AsDouble := Total_Debito;
end;

procedure TfrmRL0906.ppVariable8Calc(Sender: TObject; var Value: Variant);
begin
   Value := Total_Credito + Total_Debito;
end;

procedure TfrmRL0906.ppVariable9Calc(Sender: TObject; var Value: Variant);
begin
   if Total_Credito > Total_Debito then
      Value := Total_Credito - Total_Debito
   else
      Value := Total_Debito - Total_Credito;
end;

procedure TfrmRL0906.Caixa_Credito_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Value := Caixa_Credito;
end;

procedure TfrmRL0906.Caixa_Debito_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Value := Caixa_Debito;
end;

procedure TfrmRL0906.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
