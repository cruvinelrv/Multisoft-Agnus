unit uRL0802;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit, DBCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppParameter, ppModule, raCodMod,
  ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt, ppClass, ppVar, ppPrnabl,
  ppCache, ppComm, ppRelatv, ppProd;

type
  TfrmRL0802 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    Label10: TLabel;
    edtDataFim: TJvDateEdit;
    Label4: TLabel;
    edtSerie: TEdit;
    Label3: TLabel;
    cbxPeriodo: TComboBox;
    Label1: TLabel;
    cbxSituacao: TComboBox;
    Label5: TLabel;
    edtTaxa: TDBEdit;
    Label6: TLabel;
    edtEspecifico: TJvValidateEdit;
    SpeedButton6: TSpeedButton;
    Edit1: TEdit;
    Label7: TLabel;
    cbxEndereco: TComboBox;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label9: TLabel;
    rdgProdutos: TRadioGroup;
    rdgBloquetes: TRadioGroup;
    edtPortador: TJvValidateEdit;
    Edit2: TEdit;
    Label11: TLabel;
    edtReserva: TEdit;
    Label12: TLabel;
    rdgModelo: TRadioGroup;
    rptRel_Modelo: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa: TppLabel;
    ppLine7: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppLine8: TppLine;
    lblData: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel3: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel52: TppLabel;
    ppDBText27: TppDBText;
    ppLabel53: TppLabel;
    ppDBText28: TppDBText;
    ppLabel54: TppLabel;
    ppDBText29: TppDBText;
    ppLabel55: TppLabel;
    ppDBText30: TppDBText;
    ppLabel56: TppLabel;
    ppDBText31: TppDBText;
    ppLabel57: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppVariable7: TppVariable;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppVariable13: TppVariable;
    ppVariable14: TppVariable;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppLabel58: TppLabel;
    ppLine9: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine10: TppLine;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    raCodeModule3: TraCodeModule;
    ppLine12: TppLine;
    ppLabel66: TppLabel;
    ppVariable15: TppVariable;
    ppVariable16: TppVariable;
    ppVariable17: TppVariable;
    ppSummaryBand4: TppSummaryBand;
    ppLabel69: TppLabel;
    ppVariable24: TppVariable;
    ppVariable25: TppVariable;
    ppVariable26: TppVariable;
    ppTitleBand2: TppTitleBand;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    rptRel_Modelo2: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel11: TppLabel;
    ppDBText3: TppDBText;
    ppLabel12: TppLabel;
    ppDBText4: TppDBText;
    ppLabel13: TppLabel;
    ppDBText5: TppDBText;
    ppLabel14: TppLabel;
    ppVariable1: TppVariable;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel15: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel16: TppLabel;
    ppVariable2: TppVariable;
    ppLine3: TppLine;
    ppLabel17: TppLabel;
    ppVariable3: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    ppVariable4: TppVariable;
    ppHeaderBand1: TppHeaderBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine4: TppLine;
    ppVariable5: TppVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtEspecificoExit(Sender: TObject);
    procedure edtPortadorExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtSerieExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppVariable13Calc(Sender: TObject; var Value: Variant);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppVariable4GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
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
  frmRL0802: TfrmRL0802;

implementation

uses udmRL0802, uGlobal, uConsulta, uProcesso2, DB;

{$R *.dfm}

procedure TfrmRL0802.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0802.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0802.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0802.FormCreate(Sender: TObject);
begin
   dmRL0802 := TdmRL0802.Create(Self);

   with dmRL0802 do
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

procedure TfrmRL0802.edtDataIniExit(Sender: TObject);
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

procedure TfrmRL0802.edtDataFimExit(Sender: TObject);
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

procedure TfrmRL0802.edtEspecificoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtEspecifico, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
   begin
      edtEspecifico.SetFocus;
      Exit;
   end
   else
   begin
      if Tipo_Cliente = 2 then
      begin
         Edit1.Clear;
         Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
         edtEspecifico.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0802.edtPortadorExit(Sender: TObject);
begin
   if not Busca_Dados(edtPortador, Edit2, 'E_PORTADOR', 'CODIGO_PORTADOR', 'DESCRICAO_PORTADOR') then
   begin
      edtPortador.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0802.SpeedButton6Click(Sender: TObject);
begin
   edtEspecifico.SetFocus;

   ConsultaCliente(edtEspecifico);
end;

procedure TfrmRL0802.SpeedButton2Click(Sender: TObject);
begin
   edtPortador.SetFocus;

   ConsultaPortador(edtPortador);
end;

procedure TfrmRL0802.Alimenta_Serie(pSerie: String);

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
         if (Texto[I] in ['A'..'Z','a'..'z','�','�','�','�','�','�','�','�',
             '�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�',
             '�','�','�','�']) then
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

procedure TfrmRL0802.edtSerieExit(Sender: TObject);
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

procedure TfrmRL0802.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Dias_Atrazo := 0;

   if rdgModelo.ItemIndex = 0 then
   begin
      Sql1 := 'select r.codigo_cliente_receber, r.duplicata_receber, r.emissao_receber, r.vencimento_receber, c.nome_cliente, r.codigo_portador_receber, r.tipo_baixa_receber, '+
              'r.tipo_documento_receber, r.movimento_receber, r.codigo_vendedor_receber, p.descricao_portador, r.tit_princ_receber,'+
              '(r.valor_receber - r.valorpago_receber) as "Valor_Total", r.valorpago_receber, r.previsao_receber, '+
              'e.datasystem_emp, e.tipo_jur_emp, e.juros_emp, e.juro_min_emp, r.valor_receber, '+
              'r.bloquete_receber, c.endereco_cliente, c.bairro_cliente, c.trab_endereco_cliente, '+
              'c.cidade_cliente, ci.descricao_cidade, c.telefone_cliente, c.celular_cliente, c.fax_cliente '+
              'from P_RECEBER r '+
              'left outer join e_cliente c on (r.codigo_cliente_receber = c.codigo_cliente) '+
              'left outer join e_cidade ci on (c.cidade_cliente = ci.codigo_cidade) '+
              'left outer join empresa e on (r.cod_empresa = e.codigo_emp) '+
              'left outer join e_portador p on (r.codigo_portador_receber = p.codigo_portador) '+
              'where ((r.tit_princ_receber is null) or (r.tit_princ_receber = '''')) ';
   end
   else
   begin
      Sql1 := 'select r.duplicata_receber, r.emissao_receber, r.vencimento_receber, r.previsao_receber, '+
              'r.codigo_cliente_receber, c.nome_cliente, r.codigo_portador_receber, r.tipo_baixa_receber, '+
              'r.tipo_documento_receber, r.movimento_receber, r.codigo_vendedor_receber, p.descricao_portador, '+
              '(r.valor_receber - r.valorpago_receber) as "Valor_Total", r.valorpago_receber, r.tit_princ_receber,'+
              'e.datasystem_emp, e.tipo_jur_emp, e.juros_emp, e.juro_min_emp, r.valor_receber, '+
              'r.bloquete_receber, c.endereco_cliente, c.bairro_cliente, c.trab_endereco_cliente, '+
              'c.cidade_cliente, ci.descricao_cidade, c.telefone_cliente, c.celular_cliente, c.fax_cliente '+
              'from P_RECEBER r '+
              'left outer join e_cliente c on (r.codigo_cliente_receber = c.codigo_cliente) '+
              'left outer join e_cidade ci on (c.cidade_cliente = ci.codigo_cidade) '+
              'left outer join empresa e on (r.cod_empresa = e.codigo_emp) '+
              'left outer join e_portador p on (r.codigo_portador_receber = p.codigo_portador) '+
              'where ((r.tit_princ_receber is null) or (r.tit_princ_receber = '''')) ';
   end;

   if (edtDataIni.Date <> 0) and (edtDataFim.Date <> 0) then
   begin
      Case cbxPeriodo.ItemIndex of
         0:
         begin
            Sql1 := Sql1 + ' and r.previsao_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and r.previsao_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
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

         3:
         begin
            Sql1 := Sql1 + ' and r.emissao_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and r.emissao_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;
      end;
   end;

   Case cbxSituacao.ItemIndex of
      0: Sql1 := Sql1 + ' and ((r.tipo_baixa_receber = ''A''))';
      1: Sql1 := Sql1 + ' and ((r.tipo_baixa_receber = ''T''))';
      2: Sql1 := Sql1 + ' and ((r.tipo_baixa_receber = ''T'') or (r.tipo_baixa_receber = ''A'') or (r.tipo_baixa_receber = ''P''))';
   end;

   if edtEspecifico.Value > 0 then
      Sql1 := Sql1 + ' and r.codigo_cliente_receber = ' + QuotedStr(edtEspecifico.EditText);

   Case cbxEndereco.ItemIndex of
      0: Sql1 := Sql1 + ' and ((c.endereco_cliente is not null) or (c.endereco_cliente <> ''''))';
      1: Sql1 := Sql1 + ' and ((c.trab_endereco_cliente is not null) or (c.trab_endereco_cliente <> ''''))';
   end;

   if edtPortador.Value > 0 then
      Sql1 := Sql1 + ' and r.codigo_portador_receber = ' + QuotedStr(edtPortador.EditText);

   if rdgBloquetes.ItemIndex = 0 then
      Sql1 := Sql1 + ' and ((r.bloquete_receber is not null) or (r.bloquete_receber <> '')) ';


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

   if edtReserva.Text <> '�' then
      Sql1 := Sql1 + ' and not ((r.duplicata_receber like ' + QuotedStr('CI%') + ')) ';


   with dmRL0802 do
   begin
      dtsConsulta.Enabled := False;

      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      if rdgModelo.ItemIndex = 0 then
      begin
         cdsConsulta.Close;
         cdsConsulta.CommandText := Sql1;
         cdsConsulta.Open;

         cdsConsulta.IndexFieldNames := 'codigo_cliente_receber; duplicata_receber';

         dtsConsulta.Enabled := True;

         if rdgProdutos.ItemIndex = 0 then
            ppSubReport2.Visible := True
         else
            ppSubReport2.Visible := False;

         rptRel_Modelo.Print;
      end
      else
      begin
         cdsConsulta2.Close;
         cdsConsulta2.CommandText := Sql1;
         cdsConsulta2.Open;

         cdsConsulta2.IndexFieldNames := 'codigo_cliente_receber; duplicata_receber';

         rptRel_Modelo2.Print;
      end;

      frmProcesso2.Close;
   end;
end;

procedure TfrmRL0802.ppVariable13Calc(Sender: TObject; var Value: Variant);
Var Valor1 : Double;
begin
   Valor1 := 0;

   // c�uculo de juros simples ou composto

   with dmRL0802 do
   begin
      if cdsConsultaMOVIMENTO_RECEBER.AsString = '' then
      begin
         if cdsConsultaValor_Total.AsFloat > 0 then
            Valor1 := cdsConsultaValor_Total.AsFloat
         else
            Valor1 := cdsConsultaVALOR_RECEBER.AsFloat;

         Dias_Atrazo := ArredondarDecimal(DataSystem1 - cdsConsultaVENCIMENTO_RECEBER.AsDateTime, 0);

         if Dias_Atrazo > 0 then
         begin
            if cdsConsultaTIPO_JUR_EMP.AsString = 'S' then
               ppVariable13.AsDouble := Calcula_Juro_Simples(Dias_Atrazo, Valor1, cdsTaxaTAXA_DE_JUROS.AsFloat)
            else
               ppVariable13.AsDouble := Calcula_Juro_Composto(Dias_Atrazo, Valor1, cdsTaxaTAXA_DE_JUROS.AsFloat);
         end
         else
            ppVariable13.AsDouble := 0;
      end
      else
         ppVariable13.AsDouble := 0;
   end;

end;

procedure TfrmRL0802.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0802.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Contas a Receber por Clientes de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0802.lblParam1GetText(Sender: TObject; var Text: String);
begin
   if edtSerie.Text = '' then
      Text := '     Taxa de Juros : ' + FormatFloat('#,##0.00', dmRL0802.cdsTaxaTAXA_DE_JUROS.AsFloat) + ' % ' + cbxSituacao.Text + ' Todas as S�ries'
   else
      Text := '     Taxa de Juros : ' + FormatFloat('#,##0.00', dmRL0802.cdsTaxaTAXA_DE_JUROS.AsFloat) + ' % ' + cbxSituacao.Text + ' ' + edtSerie.Text;
end;

procedure TfrmRL0802.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0802.ppLabel5GetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0802.ppLabel6GetText(Sender: TObject; var Text: String);
begin
   Text := 'Contas a Receber por Clientes de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0802.ppLabel7GetText(Sender: TObject; var Text: String);
begin
   if edtSerie.Text = '' then
      Text := '     Taxa de Juros : ' + FormatFloat('#,##0.00', dmRL0802.cdsTaxaTAXA_DE_JUROS.AsFloat) + ' % ' + cbxSituacao.Text + ' Todas as S�ries'
   else
      Text := '     Taxa de Juros : ' + FormatFloat('#,##0.00', dmRL0802.cdsTaxaTAXA_DE_JUROS.AsFloat) + ' % ' + cbxSituacao.Text + ' ' + edtSerie.Text;
end;

procedure TfrmRL0802.ppVariable4GetText(Sender: TObject; var Text: String);
Var Atrazo, Vencito : Double;
begin
   Atrazo  := 0;
   Vencito := 0;

   with dmRL0802 do
   begin
      if cdsConsulta2MOVIMENTO_RECEBER.AsString <> '' then
      begin
         Text := 'Pago em ' + cdsConsulta2MOVIMENTO_RECEBER.AsString
      end
      else
      begin
         if DataSystem1 > cdsConsulta2VENCIMENTO_RECEBER.AsDateTime then
         begin
            Atrazo := ArredondarDecimal(DataSystem1 - cdsConsulta2VENCIMENTO_RECEBER.AsFloat, 0);
            Text := 'Atrazo ' + FloatToStr(Atrazo) + ' dias'
         end
         else
         begin
            Vencito := ArredondarDecimal(cdsConsulta2VENCIMENTO_RECEBER.AsFloat - DataSystem1, 0);
            Text := 'A Vencer em ' + FloatToStr(Vencito) + ' dias';
         end;
      end;
   end;
end;

procedure TfrmRL0802.ppLabel9GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0802.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
