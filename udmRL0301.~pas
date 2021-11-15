unit udmRL0301;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0301 = class(TDataModule)
    qryProdutos: TSQLQuery;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    dtsProdutos: TDataSource;
    cdsProdutosCODIGO_PRODUTO: TIntegerField;
    cdsProdutosCLASSE_PRODUTO: TIntegerField;
    cdsProdutosGRUPO_PRODUTO: TIntegerField;
    cdsProdutosSUBGRUPO_PRODUTO: TIntegerField;
    cdsProdutosDESCRICAO_PRODUTO: TStringField;
    cdsProdutosUNIDADE_PRODUTO: TStringField;
    cdsProdutosPESO_PRODUTO: TFMTBCDField;
    cdsProdutosSERIE_PRODUTO: TStringField;
    cdsProdutosDESUSO_PRODUTO: TStringField;
    cdsProdutosGRADE_PRODUTO: TStringField;
    cdsProdutosESTOQUE_PRODUTO: TFMTBCDField;
    cdsProdutosESTOQUE1_PRODUTO: TFMTBCDField;
    cdsProdutosESTOQUE2_PRODUTO: TFMTBCDField;
    cdsProdutosESTOQUE3_PRODUTO: TFMTBCDField;
    cdsProdutosMINIMO_PRODUTO: TFMTBCDField;
    cdsProdutosMAXIMO_PRODUTO: TFMTBCDField;
    cdsProdutosRESERVA_PRODUTO: TFMTBCDField;
    cdsProdutosPRECOUNIT_PRODUTO: TFMTBCDField;
    cdsProdutosPROMOCAO_PRODUTO: TFMTBCDField;
    cdsProdutosPRECO_ANT_PRODUTO: TFMTBCDField;
    cdsProdutosPRECO_COMPRA_PRODUTO: TFMTBCDField;
    cdsProdutosPRECO_CUSTO_PRODUTO: TFMTBCDField;
    cdsProdutosPRECO_LISTA_PRODUTO: TFMTBCDField;
    cdsProdutosPER_DESCON_PRODUTO: TFMTBCDField;
    cdsProdutosPER_ANTER_PRODUTO: TFMTBCDField;
    cdsProdutosDATA_CUSTO_PRODUTO: TDateField;
    cdsProdutosVLRATACADO_PRODUTO: TFMTBCDField;
    cdsProdutosADQUIRIDA_PRODUTO: TFMTBCDField;
    cdsProdutosADQUIRIDA1_PRODUTO: TFMTBCDField;
    cdsProdutosDATA_COMPRA_PRODUTO: TDateField;
    cdsProdutosDATA_COMPRA1_PRODUTO: TDateField;
    cdsProdutosULT_VENDA_PRODUTO: TDateField;
    cdsProdutosCADASTRO_PRODUTO: TDateField;
    cdsProdutosFIM_PROMOCAO_PRODUTO: TDateField;
    cdsProdutosFABRICANTE_PRODUTO: TStringField;
    cdsProdutosBARRA_PRODUTO: TStringField;
    cdsProdutosMARKUP_PRODUTO: TFMTBCDField;
    cdsProdutosREFERENCIA_PRODUTO: TStringField;
    cdsProdutosICMSUB_PRODUTO: TFMTBCDField;
    cdsProdutosICMSUB_VENDA_PRODUTO: TFMTBCDField;
    cdsProdutosICM_ENTRADA_PRODUTO: TFMTBCDField;
    cdsProdutosICMSAIDA_PRODUTO: TFMTBCDField;
    cdsProdutosICMSAIDA_FORA_PRODUTO: TFMTBCDField;
    cdsProdutosFRETE_PRODUTO: TFMTBCDField;
    cdsProdutosCOMISSAO1_PRODUTO: TFMTBCDField;
    cdsProdutosCOMISSAO2_PRODUTO: TFMTBCDField;
    cdsProdutosDESCONTO_PRODUTO: TFMTBCDField;
    cdsProdutosDESCONTOC_PRODUTO: TFMTBCDField;
    cdsProdutosIPI_PRODUTO: TFMTBCDField;
    cdsProdutosII_PRODUTO: TFMTBCDField;
    cdsProdutosOUTROS_PRODUTO: TFMTBCDField;
    cdsProdutosTMP_GARANTIA_PRODUTO: TStringField;
    cdsProdutosMEDIA_PRODUTO: TFMTBCDField;
    cdsProdutosREDU_DENTR_PRODUTO: TFMTBCDField;
    cdsProdutosREDU_FORA_PRODUTO: TFMTBCDField;
    cdsProdutosOBS_DENTR_PRODUTO: TIntegerField;
    cdsProdutosOBS_FORA_PRODUTO: TIntegerField;
    cdsProdutosISS_PRODUTO: TFMTBCDField;
    cdsProdutosPRAT1_PRODUTO: TStringField;
    cdsProdutosPRAT2_PRODUTO: TStringField;
    cdsProdutosFABRICA_PRODUTO: TIntegerField;
    cdsProdutosDISTRIB1_PRODUTO: TIntegerField;
    cdsProdutosDISTRIB2_PRODUTO: TIntegerField;
    cdsProdutosVALIDADE_PRODUTO: TDateField;
    cdsProdutosTRIB_DENTRO_PRODUTO: TStringField;
    cdsProdutosTRIB_FORA_PRODUTO: TStringField;
    cdsProdutosSIMILAR1_PRODUTO: TIntegerField;
    cdsProdutosSIMILAR2_PRODUTO: TIntegerField;
    cdsProdutosOBSERVACAO_PRODUTO: TMemoField;
    cdsProdutosSEXO_PRODUTO: TStringField;
    cdsProdutosFISCAL_PRODUTO: TStringField;
    cdsProdutosCONTABIL_PRODUTO: TStringField;
    cdsProdutosC_DEFEITO_PRODUTO: TFMTBCDField;
    cdsProdutosENV_GARANTIA_PRODUTO: TFMTBCDField;
    cdsProdutosLOCAL_ESTOQUE_PRODUTO: TIntegerField;
    cdsProdutosEXPORTADO_PRODUTO: TDateField;
    cdsProdutosSELECAO_PRODUTO: TStringField;
    cdsProdutosMETRO_CUB_PRODUTO: TStringField;
    cdsProdutosRECEITUAR_PRODUTO: TStringField;
    cdsProdutosRED_CONTRI_PRODUTO: TStringField;
    cdsProdutosALI_CONTRI_PRODUTO: TFMTBCDField;
    cdsProdutosTRIB_U_A_PRODUTO: TStringField;
    cdsProdutosTRIB_F_A_PRODUTO: TStringField;
    cdsProdutosRED_U_A_PRODUTO: TFMTBCDField;
    cdsProdutosRED_F_A_PRODUTO: TFMTBCDField;
    cdsProdutosMERCOSUL_PRODUTO: TStringField;
    cdsProdutosCOD_EMPRESA: TIntegerField;
    cdsProdutosFOTO_PRODUTO: TStringField;
    cdsProdutosQTD_FRACIONADA: TStringField;
    cdsProdutosDESCRICAO_GRUPO: TStringField;
    cdsProdutosEST_REPOR: TFMTBCDField;
    cdsProdutosVAL_REPOR: TFMTBCDField;
    ppProdutos: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0301: TdmRL0301;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
