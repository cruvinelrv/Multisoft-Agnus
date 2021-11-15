unit uRL0408;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, DBCtrls, ppBands, ppCtrls, ppPrnabl, ppVar, ppCache, ppStrtch,
  ppSubRpt, ppParameter, ppModule, raCodMod;

type
  TfrmRL0408 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    edtVendedor: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    cbxImprime: TCheckBox;
    cbxExibe: TCheckBox;
    cbxApura: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    edtSecao: TJvValidateEdit;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Label7: TLabel;
    edtGrupo: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    Edit3: TEdit;
    rptRel_Sintetico: TppReport;
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
    ppLine2: TppLine;
    lblData: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    edtSerie: TEdit;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine3: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppParameterList1: TppParameterList;
    ppPercent_Lucro: TppVariable;
    raCodeModule1: TraCodeModule;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppVariable1: TppVariable;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    rptRel_Analitico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine6: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine7: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel29: TppLabel;
    ppVariable2: TppVariable;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine8: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine9: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel34: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel28: TppLabel;
    ppDBText10: TppDBText;
    ppLabel27: TppLabel;
    ppDBText11: TppDBText;
    ppLabel26: TppLabel;
    ppDBText12: TppDBText;
    ppLabel24: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel25: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    Percent_Des: TppVariable;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    Percent_Lucro_Ana: TppVariable;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLine11: TppLine;
    Lucro_Perc: TppVariable;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppLine10: TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    Label8: TLabel;
    edtReserva: TEdit;
    Label9: TLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure edtSerieExit(Sender: TObject);
    procedure ppDBCalc5GetText(Sender: TObject; var Text: String);
    procedure ppPercent_LucroCalc(Sender: TObject; var Value: Variant);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppVariable1GetText(Sender: TObject; var Text: String);
    procedure ComboBox1Exit(Sender: TObject);
    procedure Percent_DesCalc(Sender: TObject; var Value: Variant);
    procedure Percent_Lucro_AnaCalc(Sender: TObject; var Value: Variant);
    procedure Lucro_PercCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable3GetText(Sender: TObject; var Text: String);
    procedure ppVariable4GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure edtVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSecaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function RemoveInteiro_Local(Const Texto : String) : String;
    procedure Alimenta_Serie(pSerie : String);
  public
    { Public declarations }
    Serie1, Serie2,
    Serie3, Serie4,
    Serie5, Serie6,
    Serie7, Serie8,
    Serie9, Serie10,
    Concatena_Serie : String;
    Percent_Lucro   : Double;
  end;

var
  frmRL0408: TfrmRL0408;

implementation

uses uGlobal, uConsulta, udmRL0408, uProcesso2;

{$R *.dfm}

procedure TfrmRL0408.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0408.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0408.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0408.FormCreate(Sender: TObject);
begin
   dmRL0408 := TdmRL0408.Create(Self);

   dmRL0408.cdsEmpresa.Close;
   dmRL0408.cdsEmpresa.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmRL0408.cdsEmpresa.Open;

   if not dmRL0408.cdsEmpresa.IsEmpty then
   begin
      if (dmRL0408.cdsEmpresaTIPO_COM_EMP.AsString <> 'G') and (dmRL0408.cdsEmpresaTIPO_COM_EMP.AsString <> 'P') then
      begin
         Application.MessageBox('O sistema n�o esta configurado para ' + #13 +
                                'trabalhar com esta comiss�o ' + #13 +
                                'verifique os Par�metros do Sistema', 'Informa��o', MB_OK+MB_ICONQUESTION);
        Panel1.Enabled := False;
        btnImprimir.Enabled := False;
      end
      else
      begin
         Panel1.Enabled := True;
         btnImprimir.Enabled := True;
      end;
   end;

   Concatena_Serie := '';

   if edtSerie.Text = '' then
   begin
      dmRL0408.cdsSerie.Open;

      if dmRL0408.cdsSerie.RecordCount > 0 then
      begin
         dmRL0408.cdsSerie.First;

         while not dmRL0408.cdsSerie.Eof do
         begin
            if dmRL0408.cdsSerieSERIE_SERIE.AsString <> 'CI' then
               Concatena_Serie := Concatena_Serie + dmRL0408.cdsSerieSERIE_SERIE.AsString;

            dmRL0408.cdsSerie.Next;
         end;

         Alimenta_Serie(Concatena_Serie);
      end;
   end
   else
      Alimenta_Serie(edtSerie.Text);  // procedure
end;

procedure TfrmRL0408.SpeedButton1Click(Sender: TObject);
begin
   edtVendedor.SetFocus;

   ConsultaVendedor(edtVendedor);
end;

procedure TfrmRL0408.SpeedButton2Click(Sender: TObject);
begin
   edtSecao.SetFocus;

   ConsultaSecao(edtSecao);
end;

procedure TfrmRL0408.SpeedButton3Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0408.btnImprimirClick(Sender: TObject);
Var
  Sql1 : String;
  Val_liq,
  Lucro1 : Double;
begin
   Lucro1        := 0;
   Val_liq       := 0;
   Percent_Lucro := 0;

   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   dmRL0408.cdsConsulta.Close;

   if edtVendedor.Value > 0 then
   begin
      dmRL0408.cdsConsulta.Params.ParamByName('Ven1').AsInteger := edtVendedor.Value;
      dmRL0408.cdsConsulta.Params.ParamByName('Ven2').AsInteger := edtVendedor.Value;
   end
   else
   begin
      dmRL0408.cdsConsulta.Params.ParamByName('Ven1').AsInteger := 0;
      dmRL0408.cdsConsulta.Params.ParamByName('Ven2').AsInteger := 999999999;
   end;

   if (edtDataIni.Text <> '') and (edtDataFim.Text <> '') then
   begin
      dmRL0408.cdsConsulta.Params.ParamByName('Dat1').AsDate := edtDataIni.Date;
      dmRL0408.cdsConsulta.Params.ParamByName('Dat2').AsDate := edtDataFim.Date;
   end;

   if edtSecao.Value > 0 then
   begin
      dmRL0408.cdsConsulta.Params.ParamByName('Sec1').AsInteger := edtSecao.Value;
      dmRL0408.cdsConsulta.Params.ParamByName('Sec2').AsInteger := edtSecao.Value;
   end
   else
   begin
      dmRL0408.cdsConsulta.Params.ParamByName('Sec1').AsInteger := 0;
      dmRL0408.cdsConsulta.Params.ParamByName('Sec2').AsInteger := 999999999;
   end;

   if edtGrupo.Value > 0 then
   begin
      dmRL0408.cdsConsulta.Params.ParamByName('Gru1').AsInteger := edtGrupo.Value;
      dmRL0408.cdsConsulta.Params.ParamByName('Gru2').AsInteger := edtGrupo.Value;
   end
   else
   begin
      dmRL0408.cdsConsulta.Params.ParamByName('Gru1').AsInteger := 0;
      dmRL0408.cdsConsulta.Params.ParamByName('Gru2').AsInteger := 999999999;
   end;

   if (Serie1 <> '') or  (Serie2 <> '') or (Serie3 <> '') or
      (Serie4 <> '') or  (Serie5 <> '') or (Serie6 <> '') or
      (Serie7 <> '') or  (Serie8 <> '') or (Serie9 <> '') or (Serie10 <> '') then
   begin
      dmRL0408.cdsConsulta.Params.ParamByName('Ser1').Clear;
      dmRL0408.cdsConsulta.Params.ParamByName('Ser2').Clear;
      dmRL0408.cdsConsulta.Params.ParamByName('Ser3').Clear;
      dmRL0408.cdsConsulta.Params.ParamByName('Ser4').Clear;
      dmRL0408.cdsConsulta.Params.ParamByName('Ser5').Clear;
      dmRL0408.cdsConsulta.Params.ParamByName('Ser6').Clear;
      dmRL0408.cdsConsulta.Params.ParamByName('Ser7').Clear;
      dmRL0408.cdsConsulta.Params.ParamByName('Ser8').Clear;
      dmRL0408.cdsConsulta.Params.ParamByName('Ser9').Clear;
      dmRL0408.cdsConsulta.Params.ParamByName('Ser10').Clear;
   end;

   if edtReserva.Text = '�' then
   begin
      if Serie1 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser1').AsString := Serie1;

      if Serie2 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser2').AsString := Serie2;

      if Serie3 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser3').AsString := Serie3;

      if Serie4 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser4').AsString := Serie4;

      if Serie5 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser5').AsString := Serie5;

      if Serie6 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser6').AsString := Serie6;

      if Serie7 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser7').AsString := Serie7;

      if Serie8 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser8').AsString := Serie8;

      if Serie9 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser9').AsString := Serie9;

      if Serie10 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser10').AsString := Serie10;
  end
  else
  begin
      if (Serie1 <> '') and (Serie1 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser1').AsString := Serie1;

      if Serie1 = '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser1').AsString := Serie1;

      if (Serie2 <> '') and (Serie2 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser2').AsString := Serie2;

      if Serie2 <> '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser2').AsString := Serie2;

      if (Serie3 <> '') and (Serie3 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser3').AsString := Serie3;

      if Serie3 = '' then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser3').AsString := Serie3;

      if (Serie4 <> '') and (Serie4 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser4').AsString := Serie4;

      if (Serie5 <> '') and (Serie5 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser5').AsString := Serie5;

      if (Serie6 <> '') and (Serie6 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser6').AsString := Serie6;

      if (Serie7 <> '') and (Serie7 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser7').AsString := Serie7;

      if (Serie8 <> '') and (Serie8 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser8').AsString := Serie8;

      if (Serie9 <> '') and (Serie9 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser9').AsString := Serie9;

      if (Serie10 <> '') and (Serie10 <> 'CI') then
         dmRL0408.cdsConsulta.Params.ParamByName('Ser10').AsString := Serie10;
  end;

  dmRL0408.cdsConsulta.IndexFieldNames := 'vendedor_venda';

  dmRL0408.cdsConsulta.Open;

  frmProcesso2.Close;

  if dmRL0408.cdsConsulta.IsEmpty then
  begin
     Application.MessageBox('Nenhum registro encontrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
     Exit;
  end;

  if dmRL0408.cdsConsulta.RecordCount > 0 then
  begin
     dmRL0408.cdsConsulta.First;

     while not dmRL0408.cdsConsulta.Eof do
     begin
        Lucro1 := Lucro1 + dmRL0408.cdsConsultaLucro.AsFloat;

        Val_liq := Val_liq + dmRL0408.cdsConsultaValor_liquido.AsFloat;

        dmRL0408.cdsConsulta.Next;
     end;
  end;

  // achando o percentual de lucro tendo como base o valor total
  if (Lucro1 > 0) and (Val_liq > 0) then
  begin
     if Lucro1 > Val_liq then
        Percent_Lucro := ArredondarDecimal(((Val_liq / Lucro1) * 100), 2)
     else
        Percent_Lucro := ArredondarDecimal(((Lucro1 / Val_liq) * 100), 2);
  end;

  if cbxImprime.Checked = True then
  begin
     ppSubReport1.Visible := True;
     ppSubReport2.Visible := True;
  end
  else
  begin
     ppSubReport1.Visible := False;
     ppSubReport2.Visible := False;
  end;

  if cbxExibe.Checked = True then
  begin
     ppPercent_Lucro.Visible   := True;
     ppLabel8.Visible          := True;
     ppLabel25.Visible         := True;
     Percent_Lucro_Ana.Visible := True;
     Lucro_Perc.Visible        := True;
     ppVariable2.Visible       := True;
  end
  else
  begin
     ppPercent_Lucro.Visible   := False;
     ppLabel8.Visible          := False;
     ppLabel25.Visible         := False;
     Percent_Lucro_Ana.Visible := False;
     Lucro_Perc.Visible        := False;
     ppVariable2.Visible       := False;
  end;

  if cbxApura.Checked = True then
  begin
     ppLabel6.Visible  := True;
     ppDBCalc3.Visible := True;
  end
  else
  begin
     ppLabel6.Visible  := False;
     ppDBCalc3.Visible := False;
  end;


  if ComboBox1.ItemIndex = 0 then
     rptRel_Sintetico.Print;

  if ComboBox1.ItemIndex = 1 then
     rptRel_Analitico.Print;
end;

procedure TfrmRL0408.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0408.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := edtDataIni.Text;
end;

procedure TfrmRL0408.ppLabel3GetText(Sender: TObject; var Text: String);
begin
   Text := edtDataFim.Text;
end;

procedure TfrmRL0408.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Text := Edit1.Text + ' - ' + ComboBox1.Text;
end;

procedure TfrmRL0408.edtSerieExit(Sender: TObject);
begin
   Concatena_Serie := '';

   if edtSerie.Text = '' then
   begin
      dmRL0408.cdsSerie.Open;

      if dmRL0408.cdsSerie.RecordCount > 0 then
      begin
         dmRL0408.cdsSerie.First;

         while not dmRL0408.cdsSerie.Eof do
         begin
            if dmRL0408.cdsSerieSERIE_SERIE.AsString <> 'CI' then
               Concatena_Serie := Concatena_Serie + dmRL0408.cdsSerieSERIE_SERIE.AsString;

            dmRL0408.cdsSerie.Next;
         end;

         Alimenta_Serie(Concatena_Serie);
      end;
   end
   else
      Alimenta_Serie(edtSerie.Text);  // procedure
end;

function TfrmRL0408.RemoveInteiro_Local(const Texto: String): String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['A'..'Z','a'..'z','�','�','�','�','�','�','�','�',
          '�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�',
          '�','�','�','�']) then
      begin
         S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;

end;

procedure TfrmRL0408.ppDBCalc5GetText(Sender: TObject; var Text: String);
begin
   if Percent_Lucro <> 0 then
      Text := FormatFloat('#,##0.00', Percent_Lucro)
   else
      Text := '0,00';
end;

procedure TfrmRL0408.ppPercent_LucroCalc(Sender: TObject;
  var Value: Variant);
Var Valor_Liq, Lucro2 : String;
begin
   // c�lculo do percentual de lucro total do relat�rio sint�tico

   ppDBCalc2.DisplayFormat := '0.00';

   Valor_Liq := ppDBCalc2.Text;

   Lucro2    := ppDBCalc6.Text;

   if (StrToFloat(Valor_Liq) > 0) and (StrToFloat(Lucro2) > 0) then
   begin
      if StrToFloat(Valor_Liq) <  StrToFloat(Lucro2) then // ordena��o para que o valor menor seja dividido pelo maior valor
         ppPercent_Lucro.AsDouble := (StrToFloat(Valor_Liq) / StrToFloat(Lucro2)) * 100
      else
         ppPercent_Lucro.AsDouble := (StrToFloat(Lucro2) / StrToFloat(Valor_Liq)) * 100;
   end;

   ppDBCalc2.DisplayFormat := '#,##0.00';
end;

procedure TfrmRL0408.ppLabel12GetText(Sender: TObject; var Text: String);
begin
   Text := ppDBCalc4.Text;
end;

procedure TfrmRL0408.ppLabel13GetText(Sender: TObject; var Text: String);
begin
   Text := ppDBCalc1.Text;
end;

procedure TfrmRL0408.ppVariable1GetText(Sender: TObject; var Text: String);
begin
   if Percent_Lucro <> 0 then
      Text := FormatFloat('#,##0.00', Percent_Lucro)
   else
      Text := '0,00';
end;

procedure TfrmRL0408.ComboBox1Exit(Sender: TObject);
begin
   if ComboBox1.ItemIndex = 1 then
      cbxApura.Enabled := False
   else
      cbxApura.Enabled := True;
end;

procedure TfrmRL0408.Percent_DesCalc(Sender: TObject;
  var Value: Variant);
Var
  Val_Bruto_IVen,
  Val_Desc_IVen : Double;
begin
   // c�lculo do percentual de desconto no relat�rio anal�tico

   Val_Bruto_IVen := 0;

   Val_Desc_IVen  := 0;

   Val_Bruto_IVen := StrToFloat(ppDBCalc18.Text);

   Val_Desc_IVen  := StrToFloat(ppDBCalc17.Text);

   if (Val_Bruto_IVen > 0) and (Val_Desc_IVen > 0) then
   begin
      if Val_Bruto_IVen < Val_Desc_IVen then
         Percent_Des.AsDouble := (Val_Bruto_IVen / Val_Desc_IVen) * 100
      else
         Percent_Des.AsDouble := (Val_Desc_IVen / Val_Bruto_IVen) * 100;
   end
   else
      Percent_Des.AsDouble := 0;
end;

procedure TfrmRL0408.Percent_Lucro_AnaCalc(Sender: TObject;
  var Value: Variant);
Var
  Val_Recebido,
  Lucro_Ana : Double;
begin
   // c�lculo do percentual de lucro no relat�rio anal�tico

   Val_Recebido := 0;
   Lucro_Ana    := 0;

   Val_Recebido := StrToFloat(ppDBCalc19.Text);

   Lucro_Ana    := StrToFloat(ppDBCalc20.Text);

   if (Val_Recebido > 0) and (Lucro_Ana > 0) then
   begin
      if Val_Recebido < Lucro_Ana then
         Percent_Lucro_Ana.AsDouble := (Val_Recebido / Lucro_Ana) * 100
      else
         Percent_Lucro_Ana.AsDouble := (Lucro_Ana / Val_Recebido) * 100;
   end
   else
      Percent_Lucro_Ana.AsDouble := 0;

end;

procedure TfrmRL0408.Lucro_PercCalc(Sender: TObject; var Value: Variant);
Var
  Valor_Recebido,
  Lucro_Ana : Double;
begin
   // c�lculo do percentual total de lucro no relat�rio anal�tico

   Valor_Recebido := 0;
   Lucro_Ana      := 0;

   Valor_Recebido := StrToFloat(ppDBCalc10.Text);

   Lucro_Ana      := StrToFloat(ppDBCalc11.Text);

   if (Valor_Recebido > 0) and (Lucro_Ana > 0) then
   begin
      if Valor_Recebido < Lucro_Ana then
         Lucro_Perc.AsDouble := (Valor_Recebido / Lucro_Ana) * 100
      else
         Lucro_Perc.AsDouble := (Lucro_Ana / Valor_Recebido) * 100;
   end
   else
      Lucro_Perc.AsDouble := 0;

end;

procedure TfrmRL0408.ppVariable3GetText(Sender: TObject; var Text: String);
begin
   if ppDBCalc14.Text <> '' then
      Text := FormatFloat('#,##0.00', StrToFloat(ppDBCalc14.Text))
   else
      Text := '0,00';
end;

procedure TfrmRL0408.ppVariable4GetText(Sender: TObject; var Text: String);
begin
   if ppDBCalc13.Text <> '' then
      Text := FormatFloat('#,##0.00', StrToFloat(ppDBCalc13.Text))
   else
      Text := ppDBCalc13.Text;
end;

procedure TfrmRL0408.ppLabel20GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0408.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data inicial do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0408.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data final do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0408.Alimenta_Serie(pSerie : String);

   function TestaParaPar(TestaInteiro: Integer): boolean;
   begin
     if (TestaInteiro div 2) = (TestaInteiro/2) then
        Result := True
     else
        Result := False;
   end;

Var
  A, B, C, D, Pos : Integer;
  Descri_Serie    : String;
begin
   Serie1       := '';
   Serie2       := '';
   Serie3       := '';
   Serie4       := '';
   Serie5       := '';
   Serie6       := '';
   Serie7       := '';
   Serie8       := '';
   Serie9       := '';
   Serie10      := '';
   Descri_Serie := '';

   if pSerie <> '' then
   begin
      Descri_Serie := RemoveInteiro_Local(pSerie); // remove n�mero e virgula

      A := 0;
      B := 0;

      for A := 1 to Length(Descri_Serie) do
      begin
         B := B + 1;
      end;

      if not TestaParaPar(B) then
      begin
         Application.MessageBox('A descri��o da S�rie informada esta errada', 'Informa��o', MB_OK+MB_ICONQUESTION);
         edtSerie.SetFocus;
         Exit;
      end;

      A   := 0;
      C   := 0;
      D   := 0;
      Pos := 0;

      for A := 1 to Length(Descri_Serie) do
      begin
         C := C + 1;
         D := D + 1;

         if (C <= 2) and (D <= 2) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie1 := Serie1 + copy(Descri_Serie, Pos, 1);
         end;

         if (C <= 2) and ((D > 2 ) and (D <= 4)) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie2 := Serie2 + copy(Descri_Serie, Pos, 1);
         end;

         if (C <= 2) and ((D > 4 ) and (D <= 6)) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie3 := Serie3 + copy(Descri_Serie, Pos, 1);
         end;

         if (C <= 2) and ((D > 6 ) and (D <= 8)) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie4 := Serie4 + copy(Descri_Serie, Pos, 1);
         end;

         if (C <= 2) and ((D > 8 ) and (D <= 10)) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie5 := Serie5 + copy(Descri_Serie, Pos, 1);
         end;

         if (C <= 2) and ((D > 10 ) and (D <= 12)) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie6 := Serie6 + copy(Descri_Serie, Pos, 1);
         end;

         if (C <= 2) and ((D > 12) and (D <= 14)) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie7 := Serie7 + copy(Descri_Serie, Pos, 1);
         end;

         if (C <= 2) and ((D > 14 ) and (D <= 16)) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie8 := Serie8 + copy(Descri_Serie, Pos, 1);
         end;

         if (C <= 2) and ((D > 16 ) and (D <= 18)) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie9 := Serie9 + copy(Descri_Serie, Pos, 1);
         end;

         if (C <= 2) and ((D > 18 ) and (D <= 20)) then
         begin
            Pos := Pos + 1;

            if C = 2 then
               C := 0;

            Serie10 := Serie10 + copy(Descri_Serie, Pos, 1);
         end;

         if D >= 20 then
            D := 0;
      end;
   end;
end;

procedure TfrmRL0408.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0408.edtVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtVendedor, Edit1, 'P_VENDEDOR', 'CODIGO_VENDEDOR', 'NOME_VENDEDOR') then
      begin
         edtVendedor.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0408.edtSecaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtSecao, Edit2, 'P_SECAO', 'CODIGO_SECAO', 'DESCRICAO_SECAO') then
      begin
         edtSecao.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0408.edtGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtGrupo, Edit3, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
      begin
         edtGrupo.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0408.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
