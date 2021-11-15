unit uRL0301;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache,
  ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmRL0301 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    edtGrupo: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    rptRel_Produtos: TppReport;
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
    ppLabel3: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel9: TppLabel;
    ppDBText12: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText13: TppDBText;
    ppLabel12: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppDBCalc2: TppDBCalc;
    rptRel_Maximo: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine4: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine5: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel32: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText25: TppDBText;
    ppLabel33: TppLabel;
    ppDBText26: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel34: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine6: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function Nome_Relatorio() : String;
    function Rel_Maximo() : String;
  public
    { Public declarations }
  end;

var
  frmRL0301: TfrmRL0301;

implementation

uses udmRL0301, uGlobal, uConsulta;

{$R *.dfm}

procedure TfrmRL0301.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0301.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0301.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0301.FormCreate(Sender: TObject);
begin
   dmRL0301 := TdmRL0301.Create(Self);
end;

procedure TfrmRL0301.FormShow(Sender: TObject);
begin
   Case Self.Tag of
      0: Self.Caption := 'Zerados (01)';
      1: Self.Caption := 'Negativos';
      2: Self.Caption := 'Acima do Máximo';
      3: Self.Caption := 'Abaixo do Mínimo';
   end;
end;

procedure TfrmRL0301.edtGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtGrupo, Edit1, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0301.SpeedButton3Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0301.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   with dmRL0301 do
   begin
      Sql1 := '';

      Sql1 := 'select p. *, g.descricao_grupo, (P.maximo_produto - P.estoque_produto) AS EST_REPOR, '+
              '((p.maximo_produto - p.estoque_produto) * P.preco_compra_produto) as VAL_REPOR '+
              'from P_PRODUTOS p '+
              'left outer join p_grupos g on (p.grupo_produto = g.codigo_grupo) where P.codigo_produto > 0 ';

      if edtGrupo.Value > 0 then
         Sql1 := Sql1 + ' and p.grupo_produto = ' + QuotedStr(edtGrupo.EditText);

      Case Self.Tag of
         0: Sql1 := Sql1 + ' and p.estoque_produto = ''0''';
         1: Sql1 := Sql1 + ' and p.estoque_produto < ''0''';
         2: Sql1 := Rel_Maximo; // function
         3: Sql1 := Sql1 + ' and p.estoque_produto < p.minimo_produto';
      end;

      cdsProdutos.Close;
      cdsProdutos.CommandText := Sql1;
      cdsProdutos.Open;

      cdsProdutos.IndexFieldNames := 'grupo_produto; descricao_grupo';

      if Self.Tag = 2 then
         rptRel_Maximo.Print
      else
         rptRel_Produtos.Print;
   end;
end;

function TfrmRL0301.Nome_Relatorio: String;
Var Parametro : String;
begin
   Result := '';

   Parametro := '';

   if edtGrupo.Value <> 0 then
      Parametro := '- Grupo /' + Edit1.Text
   else
      Parametro := '- Todos os Grupos ';

   Case Self.Tag of
      0: Result := 'Produtos Zerados ' + Parametro;
      1: Result := 'Produtos Negativos ' + Parametro;
      2: Result := 'Produtos Acima do Máximo ' + Parametro;
      3: Result := 'Produtos Abaixo do Mínimo ' + Parametro;
   end;
end;

procedure TfrmRL0301.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0301.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := Nome_Relatorio; // function
end;

procedure TfrmRL0301.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

function TfrmRL0301.Rel_Maximo: String;
begin
   Result := '';

   Result := 'select p. *, g.descricao_grupo, (P.estoque_produto - P.maximo_produto) AS EST_REPOR, '+
             '((P.estoque_produto - P.maximo_produto) * P.preco_compra_produto) as VAL_REPOR '+
             'from P_PRODUTOS p '+
             'left outer join p_grupos g on (p.grupo_produto = g.codigo_grupo) where P.codigo_produto > 0 '+
             'and p.estoque_produto > p.maximo_produto';

   if edtGrupo.Value > 0 then
         Result := Result + ' and p.grupo_produto = ' + QuotedStr(edtGrupo.EditText);
end;

procedure TfrmRL0301.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
