unit udmRL0323;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TdmRL0323 = class(TDataModule)
    qryProduto: TSQLQuery;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutoCODIGO_PRODUTO: TIntegerField;
    cdsProdutoGRUPO_PRODUTO: TIntegerField;
    cdsProdutoDESCRICAO_PRODUTO: TStringField;
    cdsProdutoESTOQUE_PRODUTO: TFMTBCDField;
    cdsProdutoFABRICANTE_PRODUTO: TStringField;
    cdsProdutoPRECO_COMPRA_PRODUTO: TFMTBCDField;
    cdsProdutoPRECO_CUSTO_PRODUTO: TFMTBCDField;
    cdsProdutoPRECO_LISTA_PRODUTO: TFMTBCDField;
    qryProdutoCODIGO_PRODUTO: TIntegerField;
    qryProdutoGRUPO_PRODUTO: TIntegerField;
    qryProdutoDESCRICAO_PRODUTO: TStringField;
    qryProdutoESTOQUE_PRODUTO: TFMTBCDField;
    qryProdutoFABRICANTE_PRODUTO: TStringField;
    qryProdutoPRECO_COMPRA_PRODUTO: TFMTBCDField;
    qryProdutoPRECO_CUSTO_PRODUTO: TFMTBCDField;
    qryProdutoPRECO_LISTA_PRODUTO: TFMTBCDField;
    dsProduto: TDataSource;
    pplProduto: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0323: TdmRL0323;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
