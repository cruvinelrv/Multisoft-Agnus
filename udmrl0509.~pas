unit udmRL0509;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0509 = class(TDataModule)
    qryVendas_Itens: TSQLQuery;
    dspVendas_Itens: TDataSetProvider;
    cdsVendas_Itens: TClientDataSet;
    cdsTemp: TClientDataSet;
    cdsTempCODIGO: TIntegerField;
    cdsTempDESCRICAO: TStringField;
    cdsTempEST_ATUAL: TFloatField;
    cdsTempMES_3: TFloatField;
    cdsTempMES_2: TFloatField;
    cdsTempMES_1: TFloatField;
    cdsTempMEDIA: TFloatField;
    cdsTempSUGES: TFloatField;
    cdsTempULT_COM: TDateField;
    cdsTempULT_PRE_COM: TFloatField;
    cdsTempTOTAL: TFloatField;
    qryProduto: TSQLQuery;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dtsTemp: TDataSource;
    ppDBTemp: TppDBPipeline;
    qryProdutoGRUPO_PRODUTO: TIntegerField;
    qryProdutoCODIGO_PRODUTO: TIntegerField;
    qryProdutoFABRICA_PRODUTO: TIntegerField;
    qryProdutoDESCRICAO_PRODUTO: TStringField;
    qryProdutoDISTRIB1_PRODUTO: TIntegerField;
    qryProdutoDISTRIB2_PRODUTO: TIntegerField;
    qryProdutoESTOQUE_PRODUTO: TFMTBCDField;
    qryProdutoDATA_COMPRA_PRODUTO: TDateField;
    qryProdutoPRECO_COMPRA_PRODUTO: TFMTBCDField;
    cdsProdutoGRUPO_PRODUTO: TIntegerField;
    cdsProdutoCODIGO_PRODUTO: TIntegerField;
    cdsProdutoFABRICA_PRODUTO: TIntegerField;
    cdsProdutoDESCRICAO_PRODUTO: TStringField;
    cdsProdutoDISTRIB1_PRODUTO: TIntegerField;
    cdsProdutoDISTRIB2_PRODUTO: TIntegerField;
    cdsProdutoESTOQUE_PRODUTO: TFMTBCDField;
    cdsProdutoDATA_COMPRA_PRODUTO: TDateField;
    cdsProdutoPRECO_COMPRA_PRODUTO: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0509: TdmRL0509;

implementation

uses uDmPrincipal;

{$R *.dfm}



end.
