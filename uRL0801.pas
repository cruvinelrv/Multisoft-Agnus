unit uRL0801;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit, DB,
  Grids, DBGrids, ppParameter, ppModule, raCodMod, ppCtrls, ppBands,
  ppReport, ppStrtch, ppSubRpt, ppClass, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, DBCtrls;

type
  TfrmRL0801 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    Label10: TLabel;
    edtDataFim: TJvDateEdit;
    Label3: TLabel;
    cbxPeriodo: TComboBox;
    Label1: TLabel;
    Label4: TLabel;
    edtSerie: TEdit;
    Label8: TLabel;
    edtReserva: TEdit;
    Label9: TLabel;
    rptRelatorio: TppReport;
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
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppVariable4: TppVariable;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppVariable3: TppVariable;
    ppVariable2: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel35: TppLabel;
    ppVariable8: TppVariable;
    ppVariable9: TppVariable;
    ppVariable1: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine6: TppLine;
    ppLabel36: TppLabel;
    ppVariable10: TppVariable;
    ppVariable11: TppVariable;
    ppVariable5: TppVariable;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    edtTaxa: TDBEdit;
    ppVariable6: TppVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtSerieExit(Sender: TObject);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure ppLabel22GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Alimenta_Serie(pSerie : String);
  public
    { Public declarations }
    Serie1, Serie2,
    Serie3, Serie4,
    Serie5, Serie6,
    Serie7, Serie8,
    Serie9, Serie10,
    Concatena_Serie : String;
    Dias_Atrazo : Double;
  end;

var
  frmRL0801: TfrmRL0801;

implementation

uses udmRL0801, uProcesso2, uGlobal;

{$R *.dfm}

procedure TfrmRL0801.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0801.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0801.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0801.FormCreate(Sender: TObject);
begin
   dmRL0801 := TdmRL0801.Create(Self);

   with dmRL0801 do
   begin
      cdsEmpresa.Open;

      cdsTaxa.Close;
      cdsTaxa.CreateDataSet;

      cdsTaxa.Append;
      cdsTaxaTAXA_DE_JUROS.AsFloat := cdsEmpresaJUROS_EMP.AsFloat;
      cdsTaxa.Post;
      cdsTaxa.Edit;
   end;
end;

procedure TfrmRL0801.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Dias_Atrazo := 0;

   Sql1 := 'select r.duplicata_receber, r.emissao_receber, r.vencimento_receber, r.codigo_cliente_receber, '+
           'c.nome_cliente, r.codigo_portador_receber, r.tipo_documento_receber, r.movimento_receber, r.codigo_vendedor_receber, '+
           '(r.valor_receber - r.valorpago_receber) as "Valor_Total", r.valorpago_receber, e.datasystem_emp, r.valor_receber,'+
           'e.tipo_jur_emp, e.juros_emp, e.juro_min_emp '+
           'from P_RECEBER r '+
           'left outer join e_cliente c on (r.codigo_cliente_receber = c.codigo_cliente) '+
           'left outer join empresa e on (r.cod_empresa = e.codigo_emp) '+
           'where r.cod_empresa > 0 ';

   Case cbxPeriodo.ItemIndex of
      0:
      begin
         Sql1 := Sql1 + ' and r.emissao_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + ' and r.emissao_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;

      1:
      begin
         Sql1 := Sql1 + ' and r.vencimento_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + ' and r.vencimento_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;

      2:
      begin
         Sql1 := Sql1 + ' and r.movimento_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + ' and r.movimento_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;
   end;


   if (Serie1 <> '') or  (Serie2 <> '') or (Serie3 <> '') or
      (Serie4 <> '') or  (Serie5 <> '') or (Serie6 <> '') or
      (Serie7 <> '') or  (Serie8 <> '') or (Serie9 <> '') or (Serie10 <> '') then
   begin
      if Serie1 = '' then
         Serie1 := '''';

      if Serie2 = '' then
         Serie2 := '''';

      if Serie3 = '' then
         Serie3 := '''';

      if Serie4 = '' then
         Serie4 := '''';

      if Serie5 = '' then
         Serie5 := '''';

      if Serie6 = '' then
         Serie6 := '''';

      if Serie7 = '' then
         Serie7 := '''';

      if Serie8 = '' then
         Serie8 := '''';

      if Serie9 = '' then
         Serie9 := '''';

      if Serie10 = '' then
         Serie10 := '''';

      Sql1 := Sql1 + ' and ((r.duplicata_receber like ' + QuotedStr(Serie1 + '%') + ') or '+
                   ' (r.duplicata_receber like ' + QuotedStr(Serie2 + '%') + ') or '+
                   ' (r.duplicata_receber like ' + QuotedStr(Serie3 + '%') + ') or '+
                   ' (r.duplicata_receber like ' + QuotedStr(Serie4 + '%') + ') or '+
                   ' (r.duplicata_receber like ' + QuotedStr(Serie5 + '%') + ') or '+
                   ' (r.duplicata_receber like ' + QuotedStr(Serie6 + '%') + ') or '+
                   ' (r.duplicata_receber like ' + QuotedStr(Serie7 + '%') + ') or '+
                   ' (r.duplicata_receber like ' + QuotedStr(Serie8 + '%') + ') or '+
                   ' (r.duplicata_receber like ' + QuotedStr(Serie9 + '%') + ') or '+
                   ' (r.duplicata_receber like ' + QuotedStr(Serie10 + '%') + ')) ';

   end;

   if edtReserva.Text <> 'Æ' then
      Sql1 := Sql1 + ' and not ((r.duplicata_receber like ' + QuotedStr('CI%') + ')) ';


   with dmRL0801 do
   begin
      cdsConsulta.Close;

      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsConsulta.CommandText := Sql1;
      cdsConsulta.Open;

      cdsConsulta.IndexFieldNames := 'vencimento_receber';

      frmProcesso2.Close;
   end;

   rptRelatorio.Print;
end;

procedure TfrmRL0801.edtDataIniExit(Sender: TObject);
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

procedure TfrmRL0801.edtDataFimExit(Sender: TObject);
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

procedure TfrmRL0801.Alimenta_Serie(pSerie: String);

   function TestaParaPar(TestaInteiro: Integer): boolean;
   begin
     if (TestaInteiro div 2) = (TestaInteiro/2) then
        Result := True
     else
        Result := False;
   end;

   function RemoveInteiro_Local(const Texto: String): String;
   var
     I: integer;
     S: string;
   begin
      S := '';
      for I := 1 To Length(Texto) Do
      begin
         if (Texto[I] in ['A'..'Z','a'..'z','à','â','ê','ô','û','ã','õ','á',
             'é','í','ó','ú','ç','ü','À','Â','Ê','Ô','Û','Ã','Õ','Á','É','Í',
             'Ó','Ú','Ç','Ü']) then
         begin
            S := S + Copy(Texto, I, 1);
         end;
      end;

      Result := S;
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
      Descri_Serie := RemoveInteiro_Local(pSerie); // remove número e virgula

      A := 0;
      B := 0;

      for A := 1 to Length(Descri_Serie) do
      begin
         B := B + 1;
      end;

      if not TestaParaPar(B) then
      begin
         Application.MessageBox('A descrição da Série informada esta errada', 'Informação', MB_OK+MB_ICONQUESTION);
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


procedure TfrmRL0801.edtSerieExit(Sender: TObject);
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

   if edtSerie.Text <> '' then
      Alimenta_Serie(edtSerie.Text);  // procedure
end;

procedure TfrmRL0801.ppLabel18GetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1; 
end;

procedure TfrmRL0801.ppLabel19GetText(Sender: TObject; var Text: String);
begin
   Text := 'Previsão de Recebimento de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0801.ppLabel20GetText(Sender: TObject; var Text: String);
begin
   Text := '         Período Referente a: Data de ' + cbxPeriodo.Text;
end;

procedure TfrmRL0801.ppVariable3Calc(Sender: TObject; var Value: Variant);
Var Valor1 : Double;
begin
   Valor1 := 0;

   with dmRL0801 do
   begin
      if cdsConsultaValor_Total.AsFloat > 0 then
         Valor1 := cdsConsultaValor_Total.AsFloat
      else
         Valor1 := cdsConsultaVALOR_RECEBER.AsFloat;

      Dias_Atrazo := ArredondarDecimal(DataSystem1 - cdsConsultaVENCIMENTO_RECEBER.AsDateTime, 0);

      if Dias_Atrazo > 0 then
      begin
         if cdsConsultaTIPO_JUR_EMP.AsString = 'S' then
            ppVariable3.AsDouble := Calcula_Juro_Simples(Dias_Atrazo, Valor1, cdsTaxaTAXA_DE_JUROS.AsFloat)
         else
            ppVariable3.AsDouble := Calcula_Juro_Composto(Dias_Atrazo, Valor1, cdsTaxaTAXA_DE_JUROS.AsFloat);
      end
      else
         ppVariable3.AsDouble := 0;
   end;
end;

procedure TfrmRL0801.ppLabel22GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0801.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
