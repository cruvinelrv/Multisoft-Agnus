unit udmCd12;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd12 = class(TDataModule)
    qrySubProduto: TSQLQuery;
    qrySubProdutoCODIGO_SUBPRODUTO: TIntegerField;
    qrySubProdutoPRODUTO_SUBPRODUTO: TIntegerField;
    qrySubProdutoSUBPRODUTO_SUBPRODUTO: TIntegerField;
    qrySubProdutoQTD_BAIXA_SUBPRODUTO: TFloatField;
    qrySubProdutoCOD_EMPRESA: TIntegerField;
    qrySubProdutoNOME_PRODUTO: TStringField;
    qrySubProdutoNOME_SUBPRODUTO: TStringField;
    dspSubProduto: TDataSetProvider;
    cdsSubProduto: TClientDataSet;
    cdsSubProdutoCODIGO_SUBPRODUTO: TIntegerField;
    cdsSubProdutoPRODUTO_SUBPRODUTO: TIntegerField;
    cdsSubProdutoSUBPRODUTO_SUBPRODUTO: TIntegerField;
    cdsSubProdutoQTD_BAIXA_SUBPRODUTO: TFloatField;
    cdsSubProdutoCOD_EMPRESA: TIntegerField;
    cdsSubProdutoNOME_PRODUTO: TStringField;
    cdsSubProdutoNOME_SUBPRODUTO: TStringField;
    cdsPesquisa1: TClientDataSet;
    dspPesquisa1: TDataSetProvider;
    qryPesquisa1: TSQLQuery;
    cdsPesqProdutos: TClientDataSet;
    cdsPesqProdutosDESCRICAO_PRODUTO: TStringField;
    cdsPesqProdutosCODIGO_PRODUTO: TIntegerField;
    cdsPesqProdutosDESUSO_PRODUTO: TStringField;
    cdsPesqProdutosFABRICA_PRODUTO: TIntegerField;
    cdsPesqProdutosSIMILAR1_PRODUTO: TIntegerField;
    cdsPesqProdutosSIMILAR2_PRODUTO: TIntegerField;
    cdsPesqProdutosCLASSE_PRODUTO: TIntegerField;
    cdsPesqProdutosGRADE_PRODUTO: TStringField;
    cdsPesqProdutosCODIGO_FABRICANTE: TIntegerField;
    cdsPesqProdutosNOME_FABRICANTE: TStringField;
    cdsPesqProdutosNOME_GRUPO: TStringField;
    cdsPesqProdutosUNIDADE_PRODUTO: TStringField;
    cdsPesqProdutosPRECO_LISTA_PRODUTO: TFMTBCDField;
    cdsPesqProdutosESTOQUE_PRODUTO: TFMTBCDField;
    dspPesqProdutos: TDataSetProvider;
    qryPesqProdutos: TSQLQuery;
    qryPesqProdutosDESCRICAO_PRODUTO: TStringField;
    qryPesqProdutosCODIGO_PRODUTO: TIntegerField;
    qryPesqProdutosDESUSO_PRODUTO: TStringField;
    qryPesqProdutosFABRICA_PRODUTO: TIntegerField;
    qryPesqProdutosSIMILAR1_PRODUTO: TIntegerField;
    qryPesqProdutosSIMILAR2_PRODUTO: TIntegerField;
    qryPesqProdutosCLASSE_PRODUTO: TIntegerField;
    qryPesqProdutosGRADE_PRODUTO: TStringField;
    qryPesqProdutosCODIGO_FABRICANTE: TIntegerField;
    qryPesqProdutosNOME_FABRICANTE: TStringField;
    qryPesqProdutosNOME_GRUPO: TStringField;
    qryPesqProdutosUNIDADE_PRODUTO: TStringField;
    qryPesqProdutosPRECO_LISTA_PRODUTO: TFMTBCDField;
    qryPesqProdutosESTOQUE_PRODUTO: TFMTBCDField;
    qrySecao: TSQLQuery;
    dspSecao: TDataSetProvider;
    cdsSecao: TClientDataSet;
    cdsSecaoCODIGO_SECAO: TIntegerField;
    cdsSecaoDESCRICAO_SECAO: TStringField;
    cdsSecaoCOD_EMPRESA: TIntegerField;
    qryConsulta: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd12: TdmCd12;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
