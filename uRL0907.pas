unit uRL0907;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppParameter, ppBands,
  ppClass, ppModule, raCodMod, ppVar, ppCtrls, ppReport, ppSubRpt,
  ppStrtch, ppMemo, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd;

type
  TfrmRL0907 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    edtEspecifico: TEdit;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    Label10: TLabel;
    edtDataFim: TJvDateEdit;
    Label3: TLabel;
    cbxTipoRel: TComboBox;
    rdgPercentuais: TRadioGroup;
    rdgCredito: TRadioGroup;
    rdgConta: TRadioGroup;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    rdg999: TRadioGroup;
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
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppSubReport2: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppLine3: TppLine;
    Credito2: TppVariable;
    Debito2: TppVariable;
    Per_Credito2: TppVariable;
    Per_Debito2: TppVariable;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    raCodeModule2: TraCodeModule;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Per_Credito: TppVariable;
    Per_Debito: TppVariable;
    Credito: TppDBCalc;
    Debito: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppLabel16: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppVariable4: TppVariable;
    ppSubReport1: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppLabel11: TppLabel;
    ppVariable5: TppVariable;
    ppLine5: TppLine;
    raCodeModule3: TraCodeModule;
    ppLabel37: TppLabel;
    Credito_Cen: TppDBCalc;
    Debito_Cen: TppDBCalc;
    Total_Conta: TppVariable;
    ppLabel2: TppLabel;
    rptRel_Sintetico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine4: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine6: TppLine;
    ppLabel22: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport4: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand5: TppDetailBand;
    ppLine7: TppLine;
    Credito2_Sin: TppVariable;
    Debito2_Sin: TppVariable;
    Per_Credito2_Sin: TppVariable;
    Per_Debito2_Sin: TppVariable;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppVariable9: TppVariable;
    ppVariable10: TppVariable;
    ppLabel34: TppLabel;
    raCodeModule4: TraCodeModule;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel35: TppLabel;
    ppVariable11: TppVariable;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel36: TppLabel;
    Credito1_Sin: TppDBCalc;
    Debito1_Sin: TppDBCalc;
    Per_Credito_Sin: TppVariable;
    Per_Debito_Sin: TppVariable;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppSubReport3: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand6: TppDetailBand;
    ppLabel38: TppLabel;
    ppVariable14: TppVariable;
    ppLine8: TppLine;
    raCodeModule5: TraCodeModule;
    ppGroupFooterBand4: TppGroupFooterBand;
    Credito_Sin: TppDBCalc;
    Debito_Sin: TppDBCalc;
    Total_Conta_Sin: TppVariable;
    raCodeModule6: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    edtConta: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtEspecificoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtContaExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure Per_CreditoCalc(Sender: TObject; var Value: Variant);
    procedure Per_DebitoCalc(Sender: TObject; var Value: Variant);
    procedure Credito2Calc(Sender: TObject; var Value: Variant);
    procedure Debito2Calc(Sender: TObject; var Value: Variant);
    procedure Per_Credito2Calc(Sender: TObject; var Value: Variant);
    procedure Per_Debito2Calc(Sender: TObject; var Value: Variant);
    procedure Per_Credito_SinCalc(Sender: TObject; var Value: Variant);
    procedure Per_Debito_SinCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable9Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable10Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure Credito2_SinCalc(Sender: TObject; var Value: Variant);
    procedure Debito2_SinCalc(Sender: TObject; var Value: Variant);
    procedure Per_Credito2_SinCalc(Sender: TObject; var Value: Variant);
    procedure Per_Debito2_SinCalc(Sender: TObject; var Value: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Total_Credito, Total_Debito : Double;
  end;

var
  frmRL0907: TfrmRL0907;

implementation

uses udmRL0907, uGlobal, uConsulta, uProcesso2;

{$R *.dfm}

procedure TfrmRL0907.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0907.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0907.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0907.FormCreate(Sender: TObject);
begin
   dmRL0907 := TdmRL0907.Create(Self);
end;

procedure TfrmRL0907.edtDataIniExit(Sender: TObject);
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

procedure TfrmRL0907.edtDataFimExit(Sender: TObject);
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

procedure TfrmRL0907.edtEspecificoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtEspecifico, Edit1, 'E_CENTRO', 'CODIGO_CENTRO', 'DESCRICAO_CENTRO') then
   begin
      edtEspecifico.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0907.SpeedButton1Click(Sender: TObject);
begin
   edtEspecifico.SetFocus;

   ConsultaCentroCusto(edtEspecifico);
end;

procedure TfrmRL0907.edtContaExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtConta, Edit2, 'E_CONTA', 'CODIGO_CONTA', 'DESCRICAO_CONTA') then
   begin
      edtConta.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0907.SpeedButton2Click(Sender: TObject);
begin
   edtConta.SetFocus;

   ConsultaConta(edtConta);
end;

procedure TfrmRL0907.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Total_Credito  := 0;
   Total_Debito   := 0;

   Sql1 := 'select c.codigo_conlan, c.corrente_conlan, c.conta_conlan, c.data_conlan, ce.descricao_centro, '+
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
      Sql1 := Sql1 + ' and c.centro_conlan = ' + QuotedStr(edtEspecifico.Text);

   if (edtDataIni.Date <> 0) and (edtDataFim.Date <> 0) then
   begin
      Sql1 := Sql1 + ' and c.movimento_conlan >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
      Sql1 := Sql1 + ' and c.movimento_conlan <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
   end;

   if edtConta.Text <> '' then
      Sql1 := Sql1 + ' and c.conta_conlan = ' + QuotedStr(edtConta.Text);

   if rdg999.ItemIndex = 1 then
      Sql1 := Sql1 + ' and not (c.corrente_conlan = ''999'') ';

   with dmRL0907 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsConsulta.IndexFieldNames := 'centro_conlan; conta_conlan';

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

      frmProcesso2.Close;

      if cbxTipoRel.ItemIndex = 1 then  // anal�tico
      begin
         if rdgConta.ItemIndex = 0 then // com separa��o por conta
         begin
            ppSubReport1.Visible := True;
            Total_Conta.Visible  := True;
            Credito.Visible      := True;
            Debito.Visible       := True;
         end
         else
         begin
            ppSubReport1.Visible := False;
            Total_Conta.Visible  := False;
            Credito.Visible      := False;
            Debito.Visible       := False;
         end;

         rptRel_Analitico.Print;
      end
      else
      begin  // sint�tico
         if rdgConta.ItemIndex = 0 then // com separa��o por conta
         begin
            ppSubReport3.Visible     := True; 
            Total_Conta_Sin.Visible  := True;
            Credito_Sin.Visible      := True;
            Debito_Sin.Visible       := True;
         end
         else
         begin
            ppSubReport3.Visible     := False;
            Total_Conta_Sin.Visible  := False;
            Credito_Sin.Visible      := False;
            Debito_Sin.Visible       := False;
         end;

         rptRel_Sintetico.Print;
      end;

   end;
end;

procedure TfrmRL0907.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0907.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   if rdgConta.ItemIndex = 1 then
   begin
      if edtEspecifico.Text <> '' then
         Text := 'Movimento - Centro de Custo ' + edtDataIni.Text + ' a ' + edtDataFim.Text + ' - ' + 'Todos'
      else
         Text := 'Movimento - Centro de Custo ' + edtDataIni.Text + ' a ' + edtDataFim.Text + ' - ' + 'Espec�fico';
   end
   else
   begin
      if edtEspecifico.Text <> '' then
         Text := 'Movimento - Centro de Custo Separado por Conta ' + edtDataIni.Text + ' a ' + edtDataFim.Text + ' - ' + 'Todos'
      else
         Text := 'Movimento - Centro de Custo Separado por Conta ' + edtDataIni.Text + ' a ' + edtDataFim.Text + ' - ' + 'Espec�fico';
   end;
end;

procedure TfrmRL0907.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0907.Per_CreditoCalc(Sender: TObject; var Value: Variant);
begin
   // acha o sutotal do cr�dito

   if rdgPercentuais.ItemIndex = 0 then
   begin
      if dmRL0907.cdsConsultaCredito.AsFloat > 0 then
      begin
         Per_Credito.AsFloat := Porcento(Credito_Cen.Value, Total_Credito);
         Per_Credito.AsString := '(' + FormatFloat('#,##0.00', Per_Credito.AsFloat) + '%' + ')';
      end;
   end;
end;

procedure TfrmRL0907.Per_DebitoCalc(Sender: TObject; var Value: Variant);
begin
   // acha o sutotal do d�bito  / com referencia ao cr�dito

   if rdgPercentuais.ItemIndex = 0 then
   begin
      if rdgCredito.ItemIndex = 0 then
      begin
         if dmRL0907.cdsConsultaDebito.AsFloat > 0 then
         begin
            Per_Debito.AsFloat := Porcento(Debito_Cen.Value, Total_Credito);
            Per_Debito.AsString := '(' + FormatFloat('#,##0.00', Per_Debito.AsFloat) + '%' + ')';
         end;
      end
      else
      begin
         if dmRL0907.cdsConsultaDebito.AsFloat > 0 then
         begin
            Per_Debito.AsFloat := Porcento(Debito_Cen.Value, Total_Debito);
            Per_Debito.AsString := '(' + FormatFloat('#,##0.00', Per_Debito.AsFloat) + '%' + ')';
         end;
      end;
   end;
end;

procedure TfrmRL0907.Credito2Calc(Sender: TObject; var Value: Variant);
begin
   Credito2.AsDouble :=  Total_Credito;
end;

procedure TfrmRL0907.Debito2Calc(Sender: TObject; var Value: Variant);
begin
   Debito2.AsDouble := Total_Debito;
end;

procedure TfrmRL0907.Per_Credito2Calc(Sender: TObject; var Value: Variant);
begin
   // acha o total geral do cr�dito

   if rdgPercentuais.ItemIndex = 0 then // Imprime Percentuais
   begin
      Per_Credito2.AsFloat := Porcento(Total_Credito, Total_Credito);
      Per_Credito2.AsString := '(' + FormatFloat('#,##0.00', Per_Credito2.AsFloat) + '%' + ')';
   end;
end;

procedure TfrmRL0907.Per_Debito2Calc(Sender: TObject; var Value: Variant);
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

procedure TfrmRL0907.Per_Credito_SinCalc(Sender: TObject;
  var Value: Variant);
begin
   // acha o sutotal do cr�dito

   if rdgPercentuais.ItemIndex = 0 then
   begin
      if dmRL0907.cdsConsultaCredito.AsFloat > 0 then
      begin
         Per_Credito_Sin.AsFloat := Porcento(Credito1_Sin.Value, Total_Credito);
         Per_Credito_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Credito_Sin.AsFloat) + '%' + ')';
      end;
   end;
end;

procedure TfrmRL0907.Per_Debito_SinCalc(Sender: TObject;
  var Value: Variant);
begin
   // acha o sutotal do d�bito  / com referencia ao cr�dito

   if rdgPercentuais.ItemIndex = 0 then
   begin
      if rdgCredito.ItemIndex = 0 then
      begin
         if dmRL0907.cdsConsultaDebito.AsFloat > 0 then
         begin
            Per_Debito_Sin.AsFloat := Porcento(Debito1_Sin.Value, Total_Credito);
            Per_Debito_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Debito_Sin.AsFloat) + '%' + ')';
         end;
      end
      else
      begin
         if dmRL0907.cdsConsultaDebito.AsFloat > 0 then
         begin
            Per_Debito_Sin.AsFloat := Porcento(Debito1_Sin.Value, Total_Debito);
            Per_Debito_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Debito_Sin.AsFloat) + '%' + ')';
         end;
      end;
   end;
end;

procedure TfrmRL0907.ppVariable9Calc(Sender: TObject; var Value: Variant);
begin
   Value := Total_Credito + Total_Debito;
end;

procedure TfrmRL0907.ppVariable10Calc(Sender: TObject; var Value: Variant);
begin
   if Total_Credito > Total_Debito then
      Value := Total_Credito - Total_Debito
   else
      Value := Total_Debito - Total_Credito;
end;

procedure TfrmRL0907.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
   Value := Total_Credito + Total_Debito; 
end;

procedure TfrmRL0907.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
   if Total_Credito > Total_Debito then
      Value := Total_Credito - Total_Debito
   else
      Value := Total_Debito - Total_Credito;
end;

procedure TfrmRL0907.Credito2_SinCalc(Sender: TObject; var Value: Variant);
begin
   Value := Total_Credito; 
end;

procedure TfrmRL0907.Debito2_SinCalc(Sender: TObject; var Value: Variant);
begin
   Value := Total_Debito;
end;

procedure TfrmRL0907.Per_Credito2_SinCalc(Sender: TObject;
  var Value: Variant);
begin
   // acha o total geral do cr�dito

   if rdgPercentuais.ItemIndex = 0 then // Imprime Percentuais
   begin
      Per_Credito2_Sin.AsFloat := Porcento(Total_Credito, Total_Credito);
      Per_Credito2_Sin.AsString := '(' + FormatFloat('#,##0.00', Per_Credito2_Sin.AsFloat) + '%' + ')';
   end;
end;

procedure TfrmRL0907.Per_Debito2_SinCalc(Sender: TObject;
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

procedure TfrmRL0907.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
