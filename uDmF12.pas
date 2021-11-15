unit uDmF12;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TdmF12 = class(TDataModule)
    dspSimilar1: TDataSetProvider;
    cdsSimilar1: TClientDataSet;
    qrySimilar1: TSQLQuery;
    dspSimilar2: TDataSetProvider;
    cdsSimilar2: TClientDataSet;
    qrySimilar2: TSQLQuery;
    cdsProdutosGrade: TClientDataSet;
    cdsProdutosGradePRODUTO_GRADE: TIntegerField;
    cdsProdutosGradeCODIGO_GRADE: TStringField;
    cdsProdutosGradeESTOQUE_GRADE: TFMTBCDField;
    cdsProdutosGradeCOD_EMPRESA: TIntegerField;
    cdsProdutosGradeBARRA_GRADE: TStringField;
    cdsProdutosGradeDESCRICAO_GRADE: TStringField;
    dspProdutoGrade: TDataSetProvider;
    qryProdutosGrade: TSQLQuery;
    qryProdutosGradePRODUTO_GRADE: TIntegerField;
    qryProdutosGradeCODIGO_GRADE: TStringField;
    qryProdutosGradeESTOQUE_GRADE: TFMTBCDField;
    qryProdutosGradeCOD_EMPRESA: TIntegerField;
    qryProdutosGradeBARRA_GRADE: TStringField;
    qryProdutosGradeDESCRICAO_GRADE: TStringField;
    qrySimilar1ESTOQUE_PRODUTO: TFMTBCDField;
    qrySimilar1CODIGO_PRODUTO: TIntegerField;
    qrySimilar1DESCRICAO_PRODUTO: TStringField;
    qrySimilar1ESTOQUE_PRODUTO_1: TFMTBCDField;
    qrySimilar1PRECO_LISTA_PRODUTO: TFMTBCDField;
    qrySimilar2ESTOQUE_PRODUTO: TFMTBCDField;
    qrySimilar2CODIGO_PRODUTO: TIntegerField;
    qrySimilar2DESCRICAO_PRODUTO: TStringField;
    qrySimilar2ESTOQUE_PRODUTO_1: TFMTBCDField;
    qrySimilar2PRECO_LISTA_PRODUTO: TFMTBCDField;
    cdsSimilar1ESTOQUE_PRODUTO: TFMTBCDField;
    cdsSimilar1CODIGO_PRODUTO: TIntegerField;
    cdsSimilar1DESCRICAO_PRODUTO: TStringField;
    cdsSimilar1ESTOQUE_PRODUTO_1: TFMTBCDField;
    cdsSimilar1PRECO_LISTA_PRODUTO: TFMTBCDField;
    cdsSimilar2ESTOQUE_PRODUTO: TFMTBCDField;
    cdsSimilar2CODIGO_PRODUTO: TIntegerField;
    cdsSimilar2DESCRICAO_PRODUTO: TStringField;
    cdsSimilar2ESTOQUE_PRODUTO_1: TFMTBCDField;
    cdsSimilar2PRECO_LISTA_PRODUTO: TFMTBCDField;
    qryPesqProdutos: TSQLQuery;
    cdsPesqProdutos: TClientDataSet;
    dspPesqProdutos: TDataSetProvider;
    qrySimilar1FABRICA_PRODUTO: TIntegerField;
    qrySimilar2FABRICA_PRODUTO: TIntegerField;
    cdsSimilar1FABRICA_PRODUTO: TIntegerField;
    cdsSimilar2FABRICA_PRODUTO: TIntegerField;
    qryPesqProdutosFABRICANTE_PRODUTO: TStringField;
    qryPesqProdutosDESCRICAO_PRODUTO: TStringField;
    qryPesqProdutosCODIGO_PRODUTO: TIntegerField;
    qryPesqProdutosDESUSO_PRODUTO: TStringField;
    qryPesqProdutosFABRICA_PRODUTO: TIntegerField;
    qryPesqProdutosSIMILAR1_PRODUTO: TIntegerField;
    qryPesqProdutosSIMILAR2_PRODUTO: TIntegerField;
    qryPesqProdutosCLASSE_PRODUTO: TIntegerField;
    qryPesqProdutosGRADE_PRODUTO: TStringField;
    qryPesqProdutosUNIDADE_PRODUTO: TStringField;
    qryPesqProdutosPRECOUNIT_PRODUTO: TFMTBCDField;
    qryPesqProdutosESTOQUE_PRODUTO: TFMTBCDField;
    qryPesqProdutosCOD_EMPRESA: TIntegerField;
    qryPesqProdutosBARRA_PRODUTO: TStringField;
    qryPesqProdutosMETRO_CUB_PRODUTO: TStringField;
    qryPesqProdutosOBSERVACAO_PRODUTO: TMemoField;
    qryPesqProdutosGRUPO_PRODUTO: TIntegerField;
    qryPesqProdutosREFERENCIA_PRODUTO: TStringField;
    cdsPesqProdutosFABRICANTE_PRODUTO: TStringField;
    cdsPesqProdutosDESCRICAO_PRODUTO: TStringField;
    cdsPesqProdutosCODIGO_PRODUTO: TIntegerField;
    cdsPesqProdutosDESUSO_PRODUTO: TStringField;
    cdsPesqProdutosFABRICA_PRODUTO: TIntegerField;
    cdsPesqProdutosSIMILAR1_PRODUTO: TIntegerField;
    cdsPesqProdutosSIMILAR2_PRODUTO: TIntegerField;
    cdsPesqProdutosCLASSE_PRODUTO: TIntegerField;
    cdsPesqProdutosGRADE_PRODUTO: TStringField;
    cdsPesqProdutosUNIDADE_PRODUTO: TStringField;
    cdsPesqProdutosPRECOUNIT_PRODUTO: TFMTBCDField;
    cdsPesqProdutosESTOQUE_PRODUTO: TFMTBCDField;
    cdsPesqProdutosCOD_EMPRESA: TIntegerField;
    cdsPesqProdutosBARRA_PRODUTO: TStringField;
    cdsPesqProdutosMETRO_CUB_PRODUTO: TStringField;
    cdsPesqProdutosOBSERVACAO_PRODUTO: TMemoField;
    cdsPesqProdutosGRUPO_PRODUTO: TIntegerField;
    cdsPesqProdutosREFERENCIA_PRODUTO: TStringField;
    qryPesqProdutosDESCRICAO_MARCA: TStringField;
    qryPesqProdutosCODIGO_FABRICANTE: TIntegerField;
    qryPesqProdutosNOME_FABRICANTE: TStringField;
    qryPesqProdutosNOME_GRUPO: TStringField;
    cdsPesqProdutosDESCRICAO_MARCA: TStringField;
    cdsPesqProdutosCODIGO_FABRICANTE: TIntegerField;
    cdsPesqProdutosNOME_FABRICANTE: TStringField;
    cdsPesqProdutosNOME_GRUPO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmF12: TdmF12;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.                
