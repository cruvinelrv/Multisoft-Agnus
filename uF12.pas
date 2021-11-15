 {
  ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
  PROGRAMADOR          --> JETER DE O. R. JÚNIOR
  ==============================================================================
  SISTEMA              --> MultiSoft
  Formulario           --> dmF12
  UNIT                 --> uF12l
  DATA DE CONCEPCAO    -->  05/02/2007
  FINALIDADE           --> Consulta de produtos
  COMENTARIO           --> Tag = 1 >>> Não fecha a tabela no OnClose do form
                           Tag = 0 >>> Fecha a tabela no OnClose do form
  ==============================================================================
  }

unit uF12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, DBCtrls, FMTBcd, SqlExpr, DBClient, Provider, uMultiClasses,
  JvExControls, JvInspector, JvDesignSurface, JvBitmapButton;

type
  TfrmF12 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dsProdutos: TDataSource;
    StatusBar1: TStatusBar;
    edtPesquisa: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label10: TLabel;
    DBText3: TDBText;
    dsSimilar01: TDataSource;
    dsSimilar02: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    cbxBusca: TComboBox;
    Label32: TLabel;
    Label33: TLabel;
    Label8: TLabel;
    DBText4: TDBText;
    Label34: TLabel;
    DBText5: TDBText;
    btnTabela: TBitBtn;
    btnGrade: TBitBtn;
    btnSimula: TBitBtn;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure fecha_buscas();
    procedure DBGrid1Enter(Sender: TObject);
    procedure BitBtn1Enter(Sender: TObject);
    procedure BitBtn2Enter(Sender: TObject);
    procedure executa_busca();
    procedure Similares();
    procedure edtPesquisaEnter(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edtPesquisaChange(Sender: TObject);
    procedure cbxBuscaChange(Sender: TObject);
    procedure btnTabelaClick(Sender: TObject);
    procedure btnGradeClick(Sender: TObject);
    procedure btnSimulaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmF12: TfrmF12;

implementation

uses uDmPrincipal, uGlobal, uVd1101_1, uF12_1,
  uCd04_1_2, uDmF12, uProcesso2;

{$R *.dfm}

procedure TfrmF12.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 46) Then
   KEY := 0;

   if key = 13 then
   begin
      frmF12.Tag := 1;
      close;
   end;
end;
procedure TfrmF12.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      executa_busca;
end;

procedure TfrmF12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmF12.Tag = 0 then
   begin
      dmF12.cdsPesqProdutos.Close;
   end;
end;

procedure TfrmF12.BitBtn1Click(Sender: TObject);
begin
   frmF12.Tag := 1;
   close;   
end;

procedure TfrmF12.dsProdutosDataChange(Sender: TObject; Field: TField);
begin
   if dmF12.cdsPesqProdutosCLASSE_PRODUTO.AsInteger = 1 then
      Label21.Caption := 'PRODUTO'
   else
      Label21.Caption := 'SERVIÇO';

   Similares;
end;

procedure TfrmF12.FormCreate(Sender: TObject);
Var Sql1 : String;
begin
   dmF12 := TdmF12.Create(Self);

   Sql1 := 'SELECT FIRST 100 SKIP 1 P. *, C.CODIGO_CLIENTE AS CODIGO_FABRICANTE, C.NOME_CLIENTE AS NOME_FABRICANTE, '+
           'G.DESCRICAO_GRUPO AS NOME_GRUPO, M.DESCRICAO_MARCA '+
           'FROM P_PRODUTOS P '+
           'LEFT OUTER JOIN E_CLIENTE  C  ON (C.CODIGO_CLIENTE = P.FABRICA_PRODUTO) '+
           'LEFT OUTER JOIN P_GRUPOS   G  ON (G.CODIGO_GRUPO   = P.GRUPO_PRODUTO) '+
           'LEFT OUTER JOIN P_MARCA    M  ON (P.MARCA = M.CODIGO_MARCA) '+
           'WHERE P.COD_EMPRESA=:CODEMP AND ((P.DESUSO_PRODUTO = ''F'') OR (P.DESUSO_PRODUTO IS NULL)) ';

   with dmF12 do
   begin
      cdsPesqProdutos.Close;
      cdsPesqProdutos.CommandText := Sql1;
      cdsPesqProdutos.Params.ParamByName('CODEMP').AsString := CodigoEmpresa1;
      cdsPesqProdutos.Open;

      cdsPesqProdutos.IndexFieldNames := 'DESCRICAO_PRODUTO';
      cdsPesqProdutos.First;
   end;
end;

procedure TfrmF12.RadioGroup2Click(Sender: TObject);
begin
   executa_busca;
   fecha_buscas;
   exit;
end;

procedure TfrmF12.BitBtn2Click(Sender: TObject);
begin
   close
end;

procedure TfrmF12.fecha_buscas;
begin
   { DBGrid1.Height := 275;
    edtPesquisa.Visible := False;
    RadioGroup1.Visible := False;
    RadioGroup2.Visible := False;}
end;

procedure TfrmF12.DBGrid1Enter(Sender: TObject);
begin
   fecha_buscas;
end;

procedure TfrmF12.BitBtn1Enter(Sender: TObject);
begin
   fecha_buscas
end;

procedure TfrmF12.BitBtn2Enter(Sender: TObject);
begin
   fecha_buscas
end;

procedure TfrmF12.executa_busca;
var
   Condicao, Sql1: String;
begin
   Sql1 := 'SELECT P. *, C.CODIGO_CLIENTE AS CODIGO_FABRICANTE, C.NOME_CLIENTE AS NOME_FABRICANTE, '+
           'G.DESCRICAO_GRUPO AS NOME_GRUPO, M.DESCRICAO_MARCA '+
           'FROM P_PRODUTOS P '+
           'LEFT OUTER JOIN E_CLIENTE  C  ON (C.CODIGO_CLIENTE = P.FABRICA_PRODUTO) '+
           'LEFT OUTER JOIN P_GRUPOS   G  ON (G.CODIGO_GRUPO   = P.GRUPO_PRODUTO) '+
           'LEFT OUTER JOIN P_MARCA    M  ON (P.MARCA = M.CODIGO_MARCA) '+
           'WHERE P.COD_EMPRESA = '+ QuotedStr(CodigoEmpresa1);

   if edtPesquisa.Text <> '' then
   begin
      Case cbxBusca.ItemIndex of
         1: Sql1 := Sql1 + ' AND P.CODIGO_PRODUTO = '+ QuotedStr(edtPesquisa.Text);
         2: Sql1 := Sql1 + ' AND P.FABRICANTE_PRODUTO LIKE '+ QuotedStr(edtPesquisa.Text + '%');
         3: Sql1 := Sql1 + ' AND P.FABRICANTE_PRODUTO = '+ QuotedStr(edtPesquisa.Text);
         4: Sql1 := Sql1 + ' AND P.FABRICANTE_PRODUTO LIKE '+ QuotedStr('%' + edtPesquisa.Text + '%');
         5: Sql1 := Sql1 + ' AND P.BARRA_PRODUTO = '+ QuotedStr(edtPesquisa.Text);
         6: Sql1 := Sql1 + ' AND P.DESCRICAO_PRODUTO LIKE '+ QuotedStr(edtPesquisa.Text + '%');
         7: Sql1 := Sql1 + ' AND P.DESCRICAO_PRODUTO = '+ QuotedStr(edtPesquisa.Text);
         8: Sql1 := Sql1 + ' AND P.DESCRICAO_PRODUTO LIKE '+ QuotedStr('%' + edtPesquisa.Text + '%');
         9: Sql1 := Sql1 + ' AND P.FABRICA_PRODUTO = '+ QuotedStr(edtPesquisa.Text);
        10: Sql1 := Sql1 + ' AND P.SIMILAR1_PRODUTO = '+ QuotedStr(edtPesquisa.Text);
        11: Sql1 := Sql1 + ' AND P.SIMILAR2_PRODUTO = '+ QuotedStr(edtPesquisa.Text);
        12: Sql1 := Sql1 + ' AND P.CLASSE_PRODUTO = ''2'' ';
        13: Sql1 := Sql1 + ' AND P.GRUPO_PRODUTO = '+ QuotedStr(edtPesquisa.Text);
        14: Sql1 := Sql1 + ' AND P.OBSERVACAO_PRODUTO LIKE '+ QuotedStr('%' + edtPesquisa.Text + '%');
        15: Sql1 := Sql1 + ' AND P.REFERENCIA_PRODUTO = '+ QuotedStr(edtPesquisa.Text);
        16: Sql1 := Sql1 + ' AND M.DESCRICAO_MARCA LIKE '+ QuotedStr(edtPesquisa.Text + '%');
      end;
   end;

   Sql1 := Sql1 + ' AND ((P.DESUSO_PRODUTO = ''F'') OR (P.DESUSO_PRODUTO IS NULL))';

   with dmF12 do
   begin
      if cbxBusca.ItemIndex = 0 then
      begin
         frmProcesso2 := TfrmProcesso2.Create(Application);
         frmProcesso2.Label1.Caption := 'Aguarde, buscando todos os registros...';
         frmProcesso2.Show;
         Application.ProcessMessages;
      end;

      cdsPesqProdutos.Close;
      cdsPesqProdutos.CommandText := Sql1;
      cdsPesqProdutos.Open;

      cdsPesqProdutos.IndexFieldNames := 'DESCRICAO_PRODUTO';

      if frmProcesso2 <> nil then
         FreeAndNil(frmProcesso2);
   end;
end;

procedure TfrmF12.Similares;
begin
   if dmF12.cdsSimilar1.Active then
      dmF12.cdsSimilar1.EmptyDataSet;

   Panel3.Caption := dmF12.cdsPesqProdutosOBSERVACAO_PRODUTO.AsString; 

   dmF12.cdsSimilar1.Close;
   dmF12.cdsSimilar1.Params.ParamByName('CODIGO').AsInteger := dmF12.cdsPesqProdutos.FieldByName('SIMILAR1_PRODUTO').AsInteger;
   dmF12.cdsSimilar1.Open;

   Label22.Caption := dmF12.cdsSimilar1ESTOQUE_PRODUTO.AsString;
   Label23.Caption := dmF12.cdsSimilar1DESCRICAO_PRODUTO.AsString;

   if dmF12.cdsSimilar1PRECO_LISTA_PRODUTO.AsFloat > 0 then
      Label24.Caption := FloatToStrF(dmF12.cdsSimilar1PRECO_LISTA_PRODUTO.AsFloat,ffFixed,18,2)
   else
      Label24.Caption := '';

   Label25.Caption := dmF12.cdsSimilar1FABRICA_PRODUTO.AsString;

   if dmF12.cdsSimilar1CODIGO_PRODUTO.AsString <> '' then
      Label26.Caption := StrZero(dmF12.cdsSimilar1CODIGO_PRODUTO.AsString,6)
   else
      Label26.Caption := '';

   if dmF12.cdsSimilar2.Active then
      dmF12.cdsSimilar2.EmptyDataSet;

   dmF12.cdsSimilar2.Close;
   dmF12.cdsSimilar2.Params.ParamByName('CODIGO').AsInteger := dmF12.cdsPesqProdutosSIMILAR2_PRODUTO.AsInteger;
   dmF12.cdsSimilar2.Open;

   Label27.Caption := dmF12.cdsSimilar2ESTOQUE_PRODUTO.AsString;
   Label28.Caption := dmF12.cdsSimilar2DESCRICAO_PRODUTO.AsString;

   if dmF12.cdsSimilar2PRECO_LISTA_PRODUTO.AsFloat > 0 then
      Label29.Caption := FloatToStrF(dmF12.cdsSimilar2PRECO_LISTA_PRODUTO.AsFloat,ffFixed,18,2)
   else
      Label29.Caption := '';

   Label30.Caption := dmF12.cdsSimilar2FABRICA_PRODUTO.AsString;

   if dmF12.cdsSimilar2CODIGO_PRODUTO.AsString <> '' then
      Label31.Caption := StrZero(dmF12.cdsSimilar2CODIGO_PRODUTO.AsString,6)
   else
      Label31.Caption := '';
end;

procedure TfrmF12.edtPesquisaEnter(Sender: TObject);
begin
   frmF12.KeyPreview := False;
end;

procedure TfrmF12.edtPesquisaExit(Sender: TObject);
begin
   frmF12.KeyPreview := True;
end;

procedure TfrmF12.DBGrid1TitleClick(Column: TColumn);
var
   i: Integer;
begin
   // Desmarca todos os títulos da grid

   for i := 0 to DBGrid1.Columns.Count - 1 do
      DBGrid1.Columns.Items[i].Title.Font.Style := [];

   Column.Title.Font.Style := [fsBold];
   dmF12.cdsPesqProdutos.IndexFieldNames := Column.FieldName;
end;

procedure TfrmF12.edtPesquisaChange(Sender: TObject);
begin
   if edtPesquisa.Text <> '' then
   begin
      if (cbxBusca.ItemIndex = 1) or
         (cbxBusca.ItemIndex = 9) or
         (cbxBusca.ItemIndex = 10) or
         (cbxBusca.ItemIndex = 11) or
         (cbxBusca.ItemIndex = 13) then
      begin
         edtPesquisa.Text := RemoveChar(edtPesquisa.Text);
      end;
    end;
end;

procedure TfrmF12.cbxBuscaChange(Sender: TObject);
begin
   edtPesquisa.Clear;

   if (cbxBusca.ItemIndex = 0) or (cbxBusca.ItemIndex = 12) then
   begin
      edtPesquisa.ReadOnly := True;
      executa_busca;
   end
   else
   begin
      edtPesquisa.ReadOnly := False;
      edtPesquisa.SetFocus;
   end;
end;

procedure TfrmF12.btnTabelaClick(Sender: TObject);
begin
   if DBGrid1.Height > 195 then
   begin
      if not dmF12.cdsPesqProdutosMETRO_CUB_PRODUTO.AsBoolean then
      begin
         Application.MessageBox('Produto não utiliza cáuculos de m³', 'Atenção', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end;

      frmCd04_1_2 := TfrmCd04_1_2.Create(Self);
      frmCd04_1_2.CodigoProduto1 := dmF12.cdsPesqProdutosCODIGO_PRODUTO.Value;
      frmCd04_1_2.ShowModal;
      frmCd04_1_2.Release;
      frmCd04_1_2 := nil;
   end;
end;

procedure TfrmF12.btnGradeClick(Sender: TObject);
begin
   if DBGrid1.Height > 195 then
   begin
      if dmF12.cdsPesqProdutos.FieldByName('GRADE_PRODUTO').AsBoolean = True then
      begin
         dmF12.cdsProdutosGrade.close;
         dmF12.cdsProdutosGrade.CommandText := 'SELECT * FROM P_PRODUTOS_GRADE WHERE COD_EMPRESA=:EMPRESA AND PRODUTO_GRADE=:PRODUTO';
         dmF12.cdsProdutosGrade.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
         dmF12.cdsProdutosGrade.Params.ParamByName('PRODUTO').AsString := dmF12.cdsPesqProdutos.FieldByName('CODIGO_PRODUTO').AsString;
         dmF12.cdsProdutosGrade.Open;

         frmVd1101_1 := TfrmVd1101_1.Create(Self);
         frmVd1101_1.dsGrade.DataSet := dmF12.cdsProdutosGrade;
         frmVd1101_1.Tag := 1;
         frmVd1101_1.ShowModal;
         frmVd1101_1.Release;
         frmVd1101_1 := nil;
      end
      else
         Application.MessageBox('Produto não possui grade.','Atenção', MB_OK + MB_ICONINFORMATION);
   end;
end;

procedure TfrmF12.btnSimulaClick(Sender: TObject);
begin
   if DBGrid1.Height > 195 then
   begin
      frmF12_1 := TfrmF12_1.Create(Self);
      frmF12_1.ShowModal;
      frmF12_1.Release;
      frmF12_1 := nil;
   end;
end;

procedure TfrmF12.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
