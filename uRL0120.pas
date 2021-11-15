unit uRL0120;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, DB, JvExStdCtrls, JvEdit, JvValidateEdit, Grids, DBGrids,
  ppStrtch, ppSubRpt;

type
  TfrmRL0120 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    dtsProduto: TDataSource;
    rptRelatorio: TppReport;
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
    ppDetailBand2: TppDetailBand;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    edtNomeProd: TEdit;
    edtNomeSub: TEdit;
    edtProduto: TJvValidateEdit;
    edtSubProduto: TJvValidateEdit;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    lblProduto: TppDBText;
    ppDBText2: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    dbpRelatorio: TppDBPipeline;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    lblValUnit: TppDBText;
    lblQtde: TppDBText;
    lblValTotal: TppLabel;
    ppLine3: TppLine;
    lblData: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtProdutoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtSubProdutoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblValTotalGetText(Sender: TObject; var Text: String);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Total1: Double;
  public
    { Public declarations }
  end;

var
  frmRL0120: TfrmRL0120;

implementation

uses uGlobal, uF12, uDmF12, uDmRL0120;

{$R *.dfm}

procedure TfrmRL0120.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0120.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0120.FormShow(Sender: TObject);
var Sql1, Sql2: String;
begin
   Sql1 := 'SELECT CODIGO_PRODUTO, DESCRICAO_PRODUTO FROM P_PRODUTOS WHERE COD_EMPRESA = ' + CodigoEmpresa1 + ' AND CLASSE_PRODUTO = 1';
   Sql2 := Sql1;
end;

procedure TfrmRL0120.edtProdutoExit(Sender: TObject);
var Sql1: String;
begin
   if (edtProduto.Text = '') or (edtProduto.Text = '0') then
      Exit;

   Sql1 := 'SELECT CODIGO_PRODUTO, DESCRICAO_PRODUTO FROM P_PRODUTOS WHERE CODIGO_PRODUTO = ' + edtProduto.Text + ' ' +
           'AND CLASSE_PRODUTO = 1 AND COD_EMPRESA = ' + CodigoEmpresa1;

   ExecutaSql(dmRl0120.cdsPesquisa1, Sql1);

   if dmRl0120.cdsPesquisa1.RecordCount > 0 then
      edtNomeProd.Text := dmRl0120.cdsPesquisa1.FieldByName('DESCRICAO_PRODUTO').AsString
   else
   begin
      Application.MessageBox('Produto não localizado','Atenção',MB_ICONWARNING);
      edtProduto.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0120.SpeedButton1Click(Sender: TObject);
begin
   frmF12     := TfrmF12.Create(Self);
   frmF12.Tag := 1;
   frmF12.ShowModal;

   edtProduto.Text  := dmF12.cdsPesqProdutosCODIGO_PRODUTO.AsString;
   edtNomeProd.Text := dmF12.cdsPesqProdutosDESCRICAO_PRODUTO.AsString;
   edtProduto.SetFocus;

   frmF12.Release;
   frmF12 := nil;
end;

procedure TfrmRL0120.SpeedButton2Click(Sender: TObject);
begin
   frmF12     := TfrmF12.Create(Self);
   frmF12.Tag := 1;
   frmF12.ShowModal;

   edtSubProduto.Text := dmF12.cdsPesqProdutosCODIGO_PRODUTO.AsString;
   edtNomeSub.Text    := dmF12.cdsPesqProdutosDESCRICAO_PRODUTO.AsString;
   edtSubProduto.SetFocus;

   frmF12.Release;
   frmF12 := nil;
end;

procedure TfrmRL0120.edtSubProdutoExit(Sender: TObject);
var Sql1: String;
begin
   if edtSubProduto.Text = edtProduto.Text then
   begin
      edtSubProduto.SetFocus;
      Exit;
   end;


   if (edtSubProduto.Text = '') or (edtSubProduto.Text = '0') then
      Exit;

   Sql1 := 'SELECT CODIGO_PRODUTO, DESCRICAO_PRODUTO FROM P_PRODUTOS WHERE CODIGO_PRODUTO = ' + edtSubProduto.Text + ' ' +
           'AND CLASSE_PRODUTO = 1 AND COD_EMPRESA = ' + CodigoEmpresa1;

   ExecutaSql(dmRl0120.cdsPesquisa1, Sql1);

   if dmRl0120.cdsPesquisa1.RecordCount > 0 then
      edtNomeSub.Text := dmRl0120.cdsPesquisa1.FieldByName('DESCRICAO_PRODUTO').AsString
   else
   begin
      Application.MessageBox('Produto não localizado','Atenção',MB_ICONWARNING);
      edtSubProduto.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0120.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin

      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

  end;
end;

procedure TfrmRL0120.btnImprimirClick(Sender: TObject);
var Sql1, Sql2, Condicao1: String;
begin
   edtSubProdutoExit(Sender);

{
SELECT P_SUBPRODUTO.*, P1.DESCRICAO_PRODUTO AS NOME_PRODUTO, P2.DESCRICAO_PRODUTO AS NOME_SUBPRODUTO FROM P_SUBPRODUTO
LEFT JOIN P_PRODUTOS P1 ON (P_SUBPRODUTO.PRODUTO_SUBPRODUTO = P1.CODIGO_PRODUTO)
LEFT JOIN P_PRODUTOS P2 ON (P_SUBPRODUTO.SUBPRODUTO_SUBPRODUTO = P2.CODIGO_PRODUTO)
WHERE P_SUBPRODUTO.COD_EMPRESA=:EMPRESA
}
   Condicao1 := 'P_SUBPRODUTO.COD_EMPRESA = ' + CodigoEmpresa1 + ' ';

   if edtProduto.Value > 0 then
      Condicao1 := Condicao1 + 'AND P_SUBPRODUTO.PRODUTO_SUBPRODUTO = ' + edtProduto.Text + ' ';

   if edtSubProduto.Value > 0 then
      Condicao1 := Condicao1 + 'AND P_SUBPRODUTO.SUBPRODUTO_SUBPRODUTO = ' + edtSubProduto.Text + ' ';
      

   Sql1 := 'SELECT P_SUBPRODUTO.*, P1.DESCRICAO_PRODUTO AS NOME_PRODUTO, P2.DESCRICAO_PRODUTO AS NOME_SUBPRODUTO, P2.PRECOUNIT_PRODUTO AS PRECO_SUBPRODUTO FROM P_SUBPRODUTO ' +
            'LEFT JOIN P_PRODUTOS P1 ON (P_SUBPRODUTO.PRODUTO_SUBPRODUTO = P1.CODIGO_PRODUTO) ' +
            'LEFT JOIN P_PRODUTOS P2 ON (P_SUBPRODUTO.SUBPRODUTO_SUBPRODUTO = P2.CODIGO_PRODUTO) ' +
            'WHERE ' + Condicao1 + ' ' +
            'ORDER BY P_SUBPRODUTO.PRODUTO_SUBPRODUTO';

   ExecutaSql(dmRl0120.cdsPesquisa2, Sql1);


   Total1 := 0;

   lblEmpresa.Caption := Empresa1;

   rptRelatorio.Print;
end;

procedure TfrmRL0120.lblValTotalGetText(Sender: TObject; var Text: String);
begin
   try
      Text := FloatToStr( StrToFloat(lblValUnit.Text) * StrToFloat(lblQtde.Text) );
   except
      Text := '';
   end;
end;

procedure TfrmRL0120.ppDetailBand2BeforePrint(Sender: TObject);
begin
   if lblValTotal.Text <> '' then
      Total1 := Total1 + StrToFloat(lblValTotal.Text);
end;

procedure TfrmRL0120.ppLabel9GetText(Sender: TObject; var Text: String);
begin
   Text := FloatToStr(Total1);
end;

procedure TfrmRL0120.FormCreate(Sender: TObject);
begin
   dmRL0120 := TdmRL0120.Create(Self);
end;

procedure TfrmRL0120.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0120.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
