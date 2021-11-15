unit uShiftF10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Mask, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids,
  JvExMask, JvToolEdit, DB;

type
  TfrmShiftF10 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    RadioGroupF10: TRadioGroup;
    Panel2: TPanel;
    edtPesquisa: TMaskEdit;
    RadioGroupF: TRadioGroup;
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    btnConsultar: TBitBtn;
    btnSair: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure edtDataIniEnter(Sender: TObject);
    procedure edtDataFimEnter(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroupFClick(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure RadioGroupF10Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    DataDeBusca : array of string;
    CampoDeBusca: array of string;
    procedure Consultar;
    procedure LimpaStatusBar;
    function FiltraEdit(Valor : String) : String;
    function FiltraDocumento(Texto : String) : String;
    function FiltraValor(Valor : String) : String;
  public
    { Public declarations }
  end;

var
  frmShiftF10: TfrmShiftF10;

implementation

uses udmShiftF10, uGlobal, uHistorico, uProcess;

{$R *.dfm}

{ TfrmShiftF10 }

procedure TfrmShiftF10.Consultar;
Var
  Sql1 : String;
  Dias_Atraso : Double;
begin
   Dias_Atraso := 0;

   if (edtDataIni.Text = '  /  /    ') and (edtDataFim.Text = '  /  /    ') then
      Abort;

   SetLength(DataDeBusca, 2); // vetor dinâmico para consulta de data // combobox1

   DataDeBusca[0] := 'VENCIMENTO_PAGAR';
   DataDeBusca[1] := 'EMISSAO_PAGAR';

   SetLength(CampoDeBusca, 3);

   CampoDeBusca[0] := 'VALOR_PAGAR'; // vetor dinâmico para consulta de campos // radiogroupF
   CampoDeBusca[1] := 'TIPO_BAIXA_PAGAR = ' + QuotedStr('A');
   CampoDeBusca[2] := 'TIPO_BAIXA_PAGAR = ' + QuotedStr('T');


   Sql1 := ' select p.documento_pagar, p.fornecedor_pagar, p.emissao_pagar, p.vencimento_pagar, ' +
           ' p.previsao_pagar, p.valor_pagar, p.valorpago_pagar, p.tipo_baixa_pagar, ' +
           ' p.historico_pagar, p.parcial_pagar, p.mora_dia_pagar ' +
           ' from P_PAGAR p ';

   if (edtDataIni.Text <> '  /  /    ') and (edtDataFim.Text <> '  /  /    ') then
   begin
      Sql1 := Sql1 + ' where ' + UpperCase(DataDeBusca[ComboBox1.ItemIndex]) + ' >= ' +
                     QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(edtDataIni.Text))) +
                     ' and ' + UpperCase(DataDeBusca[ComboBox1.ItemIndex]) + ' <= ' +
                     QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDate(edtDataFim.Text)));
   end;

   if RadioGroupF.ItemIndex <> 3 then
   begin
      if RadioGroupF.ItemIndex <> -1 then
      begin
         if RadioGroupF.ItemIndex = 0 then
         begin                       // posição do vetor
            Sql1 := Sql1 + ' and ' + UpperCase(CampoDeBusca[RadioGroupF.ItemIndex]) + '=' + QuotedStr(edtPesquisa.Text);
         end
         else                         // posição do vetor
            Sql1 := Sql1 + ' and ' +  UpperCase(CampoDeBusca[RadioGroupF.ItemIndex]);
      end;
   end;

   dmShiftF10.cdsConsulta.Close;
   dmShiftF10.cdsConsulta.CommandText := Sql1;
   dmShiftF10.cdsConsulta.Open;

   dmShiftF10.cdsGrid.Close;
   dmShiftF10.cdsGrid.CreateDataSet;

   if not dmShiftF10.cdsConsulta.IsEmpty then
   begin
      DBGrid1.DataSource.Enabled := False;

      frmProcess := TfrmProcess.Create(Self);
      frmProcess.JvgLabel1.Caption := 'Processando...';
      frmProcess.ProgressBar1.Max := dmShiftF10.cdsConsulta.RecordCount;
      frmProcess.Show;

      dmShiftF10.cdsEmpresa.Close; // Busca os Parâmetros do sistema na tabela Empresa
      dmShiftF10.cdsEmpresa.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmShiftF10.cdsEmpresa.Open;

      dmShiftF10.cdsConsulta.First;
      while not dmShiftF10.cdsConsulta.Eof  do
      begin
         frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
         frmProcess.Refresh;

         dmShiftF10.cdsGrid.Append;

         dmShiftF10.cdsGridDOCUMENTO_PAGAR.AsString       := dmShiftF10.cdsConsultaDOCUMENTO_PAGAR.AsString;

         dmShiftF10.cdsGridFORNECEDOR_PAGAR.AsInteger := dmShiftF10.cdsConsultaFORNECEDOR_PAGAR.AsInteger;

         dmShiftF10.cdsGridEMISSAO_PAGAR.AsDateTime       := dmShiftF10.cdsConsultaEMISSAO_PAGAR.AsDateTime;

         dmShiftF10.cdsGridVENCIMENTO_PAGAR.AsDateTime    := dmShiftF10.cdsConsultaVENCIMENTO_PAGAR.AsDateTime;

         dmShiftF10.cdsGridPREVISAO_PAGAR.AsDateTime      := dmShiftF10.cdsConsultaPREVISAO_PAGAR.AsDateTime;

         dmShiftF10.cdsGridVALOR_PAGAR.AsFloat            := dmShiftF10.cdsConsultaVALOR_PAGAR.AsFloat;

         dmShiftF10.cdsGridVALORPAGO_PAGAR.AsFloat        := dmShiftF10.cdsConsultaVALORPAGO_PAGAR.AsFloat;

         if dmShiftF10.cdsConsultaTIPO_BAIXA_PAGAR.AsString = 'A' then
            dmShiftF10.cdsGridTIPO_BAIXA_PAGAR.AsString   := ''
         else
            dmShiftF10.cdsGridTIPO_BAIXA_PAGAR.AsString   := dmShiftF10.cdsConsultaTIPO_BAIXA_PAGAR.AsString;

         dmShiftF10.cdsGridHISTORICO_PAGAR.AsVariant      := dmShiftF10.cdsConsultaHISTORICO_PAGAR.AsVariant;

         if dmShiftF10.cdsConsultaVALORPAGO_PAGAR.AsFloat <= dmShiftF10.cdsConsultaVALOR_PAGAR.AsFloat then
            dmShiftF10.cdsGridSALDO.AsFloat               := dmShiftF10.cdsConsultaVALOR_PAGAR.AsFloat - dmShiftF10.cdsConsultaVALORPAGO_PAGAR.AsFloat;


         if (dmShiftF10.cdsConsultaTIPO_BAIXA_PAGAR.AsString <> 'T') and (dmShiftF10.cdsGridSALDO.AsFloat > 0) then
         begin
            if DataSystem1 > dmShiftF10.cdsConsultaVENCIMENTO_PAGAR.AsDateTime then
            begin
               Dias_Atraso := DataSystem1 - dmShiftF10.cdsConsultaVENCIMENTO_PAGAR.AsDateTime;

               if dmShiftF10.cdsEmpresaDIAS_BLOQ_EMP.AsFloat > 0 then
                  Dias_Atraso := Dias_Atraso - dmShiftF10.cdsEmpresaDIAS_BLOQ_EMP.AsFloat;

               if Dias_Atraso > 0 then
               begin
                  dmShiftF10.cdsGridDIAS_ATRASO.AsFloat := ArredondarDecimal(Dias_Atraso, 0);
                  dmShiftF10.cdsGridMORA_DIA.AsFloat    := ArredondarDecimal((dmShiftF10.cdsConsultaMORA_DIA_PAGAR.AsFloat * Dias_Atraso), 2);

                  if dmShiftF10.cdsEmpresaTIPO_JUR_EMP.AsString = 'C' then
                     dmShiftF10.cdsGridJUROS.AsFloat := Calcula_Juro_Composto(Dias_Atraso, dmShiftF10.cdsGridSALDO.AsFloat, dmShiftF10.cdsEmpresaJUROS_EMP.AsFloat)
                  else
                     dmShiftF10.cdsGridJUROS.AsFloat := Calcula_Juro_Simples(Dias_Atraso, dmShiftF10.cdsGridSALDO.AsFloat, dmShiftF10.cdsEmpresaJUROS_EMP.AsFloat);
               end;
            end;
         end;

         dmShiftF10.cdsGrid.Post;

         dmShiftF10.cdsConsulta.Next;
      end;

      DBGrid1.DataSource.Enabled := True;
      frmProcess.Release;
      frmProcess := nil;
   end;

   dmShiftF10.cdsGrid.First;

   DBGrid1.SetFocus;
end;

procedure TfrmShiftF10.FormCreate(Sender: TObject);
begin
   dmShiftF10 := TdmShiftF10.Create(Self);
end;

procedure TfrmShiftF10.FormShow(Sender: TObject);
begin
   edtDataIni.SetFocus;

   edtDataIni.Date := DataSystem1 - 30;

   edtDataFim.Date := DataSystem1;
end;

procedure TfrmShiftF10.btnConsultarClick(Sender: TObject);
begin
   // procedure
   Consultar;
end;

procedure TfrmShiftF10.LimpaStatusBar;
begin
   if StatusBar1.Panels[0].Text <> '' then
      StatusBar1.Panels[0].Text := '';

   if StatusBar1.Panels[1].Text <> '' then
      StatusBar1.Panels[1].Text := '';

   if StatusBar1.Panels[2].Text <> '' then
      StatusBar1.Panels[2].Text := '';

   if StatusBar1.Panels[3].Text <> '' then
      StatusBar1.Panels[3].Text := '';

   if StatusBar1.Panels[4].Text <> '' then
      StatusBar1.Panels[4].Text := '';
end;

procedure TfrmShiftF10.edtDataIniEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Data inicial do período ';
   StatusBar1.Panels[0].Width := 1000;
end;

procedure TfrmShiftF10.edtDataFimEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Data final do período ';
   StatusBar1.Panels[0].Width := 1000;
end;

procedure TfrmShiftF10.ComboBox1Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o tipo de data ';
   StatusBar1.Panels[0].Width := 1000;
end;

procedure TfrmShiftF10.DBGrid1Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorna ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [ENTER] » Retorna Nº ';
   StatusBar1.Panels[1].Width := 120;

   StatusBar1.Panels[2].Text := ' [F10] » Procura ';
   StatusBar1.Panels[2].Width := 100;

   StatusBar1.Panels[3].Text := ' [H] » Histórico ';
   StatusBar1.Panels[3].Width := 100;

   StatusBar1.Panels[4].Text := ' [F] » Filtro ';
   StatusBar1.Panels[4].Width := 1000;
end;

procedure TfrmShiftF10.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      Consultar; // Procedure
end;

procedure TfrmShiftF10.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 70 then
      RadioGroupF.Visible := True
   else
      RadioGroupF.Visible := False;

   if Key = 121 then
   begin
      RadioGroupF10.Visible := True;
      RadioGroupF10.ItemIndex := -1;
   end
   else
      RadioGroupF10.Visible := False;

   if Key = 27 then
   begin
      Panel2.Visible := False;
      RadioGroupF.Visible := False;
      RadioGroupF10.Visible := False;
      edtPesquisa.Text := '';
      edtPesquisa.EditMask := '';
   end;

   if Key = 72 then
   begin
      frmHistorico := TfrmHistorico.Create(Self);
      frmHistorico.DataSource1.DataSet := dmShiftF10.cdsGrid;
      frmHistorico.DBMemo1.DataField := 'HISTORICO_PAGAR';
      frmHistorico.ShowModal;
      frmHistorico.Release;
      frmHistorico := nil;
   end;

   if Key = 13 then
   begin
      frmShiftF10.Tag := 1;
      Close;
   end;
end;

procedure TfrmShiftF10.RadioGroupFClick(Sender: TObject);
begin
   if RadioGroupF.ItemIndex = 0 then
   begin
      Panel2.Visible := True;
      edtPesquisa.SetFocus;
      Exit;
   end
   else
   begin
      Consultar; // procedure

      RadioGroupF.ItemIndex := -1;
      Panel2.Visible := False;
      RadioGroupF.Visible := False;
   end;
end;

function TfrmShiftF10.FiltraEdit(Valor: String): String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Valor) Do
   begin
      if (Valor[I] in [',', '.', '0'..'9']) then
      begin
         if Valor[I] = ',' then
            Valor[I] := '.'; // troca o separador decimal para gerar
                             // a instrução sql

          S := S + Copy(Valor, I, 1);
       end;
   end;

   Result := S;

end;

function TfrmShiftF10.FiltraDocumento(Texto: String): String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['A'..'Z', '0'..'9']) then
      begin
          S := S + Copy(Texto, I, 1);
       end;
   end;

   Result := S;

end;

function TfrmShiftF10.FiltraValor(Valor: String): String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Valor) Do
   begin
      if (Valor[I] in [',', '0'..'9']) then
      begin
          S := S + Copy(Valor, I, 1);
       end;
   end;

   Result := S;

end;


procedure TfrmShiftF10.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
  begin
     if RadioGroupF.ItemIndex = 0 then
     begin
         if edtPesquisa.Text <> '' then
         begin
            edtPesquisa.Text := FiltraEdit(edtPesquisa.Text); // troca o separador decimal de (,) p/ (.) // Local

            Consultar; // procedure
         end;
      end;

      if RadioGroupF10.ItemIndex = 0 then
      begin
         if edtPesquisa.Text <> '' then
         begin
            edtPesquisa.Text := FiltraDocumento(edtPesquisa.Text); // permite digitar apenas letras e números // Local

            dmShiftF10.cdsGrid.IndexFieldNames := 'DOCUMENTO_PAGAR';
            if not dmShiftF10.cdsGrid.FindKey([edtPesquisa.Text]) then
            begin
               Application.MessageBox('Documento não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            end;
         end;
      end;

      if RadioGroupF10.ItemIndex = 1 then
      begin
         if edtPesquisa.Text <> '' then
         begin
            edtPesquisa.Text := RemoveString(edtPesquisa.Text); // permite digitar apenas números // Global

            dmShiftF10.cdsGrid.IndexFieldNames := 'FORNECEDOR_PAGAR';
            if not dmShiftF10.cdsGrid.FindKey([edtPesquisa.Text]) then
            begin
               Application.MessageBox('Fornecedor não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            end;
         end;
      end;

      if RadioGroupF10.ItemIndex = 2 then
      begin
         dmShiftF10.cdsGrid.IndexFieldNames := 'PREVISAO_PAGAR';
         if not dmShiftF10.cdsGrid.FindKey([edtPesquisa.Text]) then
         begin
            Application.MessageBox('Data de Previsão não encontrada', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         end;
      end;

      if RadioGroupF10.ItemIndex = 3 then
      begin
         dmShiftF10.cdsGrid.IndexFieldNames := 'VENCIMENTO_PAGAR';
         if not dmShiftF10.cdsGrid.FindKey([edtPesquisa.Text]) then
         begin
            Application.MessageBox('Data de Vencimento não encontrada', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         end;
      end;

      if RadioGroupF10.ItemIndex = 4 then
      begin
         if edtPesquisa.Text <> '' then
         begin
            edtPesquisa.Text := FiltraValor(edtPesquisa.Text); // permite digitar números e separador decimal (,) // Local

            dmShiftF10.cdsGrid.IndexFieldNames := 'VALOR_PAGAR';
            if not dmShiftF10.cdsGrid.FindKey([edtPesquisa.Text]) then
            begin
               Application.MessageBox('Valor do Documento não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            end;
         end;
      end;

      if RadioGroupF10.ItemIndex = 5 then
      begin
         if edtPesquisa.Text <> '' then
         begin
            edtPesquisa.Text := RemoveInteiro(edtPesquisa.Text); // permite digitar apenas letras // Global

            dmShiftF10.cdsGrid.IndexFieldNames := 'HISTORICO_PAGAR';
            if not dmShiftF10.cdsGrid.FindKey([edtPesquisa.Text]) then
            begin
               Application.MessageBox('Não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            end;
         end;
      end;

      RadioGroupF.ItemIndex := -1;
      RadioGroupF10.ItemIndex := -1;
      edtPesquisa.Text := '';
      edtPesquisa.EditMask := '';

      Panel2.Visible := False;
      RadioGroupF.Visible := False;
      RadioGroupF10.Visible := False;

      DBGrid1.SetFocus;
  end;
end;

procedure TfrmShiftF10.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if frmShiftF10.Tag = 0 then
      dmShiftF10.cdsGrid.Close;
end;

procedure TfrmShiftF10.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmShiftF10.RadioGroupF10Click(Sender: TObject);
begin
   Panel2.Visible := True;
   edtPesquisa.SetFocus;

   if RadioGroupF10.ItemIndex = 2 then
      edtPesquisa.EditMask := '!99/00/0000;1;';

   if RadioGroupF10.ItemIndex = 3 then
      edtPesquisa.EditMask := '!99/00/0000;1;';
end;

procedure TfrmShiftF10.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
