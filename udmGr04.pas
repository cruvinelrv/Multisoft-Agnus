unit udmGr04;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmGr04 = class(TDataModule)
    qryProdutos: TSQLQuery;
    qryProdutosMINIMO_PRODUTO: TFMTBCDField;
    qryProdutosCODIGO_PRODUTO: TIntegerField;
    qryProdutosCLASSE_PRODUTO: TIntegerField;
    qryProdutosGRUPO_PRODUTO: TIntegerField;
    qryProdutosSUBGRUPO_PRODUTO: TIntegerField;
    qryProdutosDESCRICAO_PRODUTO: TStringField;
    qryProdutosUNIDADE_PRODUTO: TStringField;
    qryProdutosPESO_PRODUTO: TFMTBCDField;
    qryProdutosSERIE_PRODUTO: TStringField;
    qryProdutosDESUSO_PRODUTO: TStringField;
    qryProdutosGRADE_PRODUTO: TStringField;
    qryProdutosESTOQUE_PRODUTO: TFMTBCDField;
    qryProdutosESTOQUE1_PRODUTO: TFMTBCDField;
    qryProdutosESTOQUE2_PRODUTO: TFMTBCDField;
    qryProdutosESTOQUE3_PRODUTO: TFMTBCDField;
    qryProdutosMAXIMO_PRODUTO: TFMTBCDField;
    qryProdutosRESERVA_PRODUTO: TFMTBCDField;
    qryProdutosPRECOUNIT_PRODUTO: TFMTBCDField;
    qryProdutosPROMOCAO_PRODUTO: TFMTBCDField;
    qryProdutosPRECO_ANT_PRODUTO: TFMTBCDField;
    qryProdutosPRECO_COMPRA_PRODUTO: TFMTBCDField;
    qryProdutosPRECO_CUSTO_PRODUTO: TFMTBCDField;
    qryProdutosPRECO_LISTA_PRODUTO: TFMTBCDField;
    qryProdutosPER_DESCON_PRODUTO: TFMTBCDField;
    qryProdutosPER_ANTER_PRODUTO: TFMTBCDField;
    qryProdutosDATA_CUSTO_PRODUTO: TDateField;
    qryProdutosVLRATACADO_PRODUTO: TFMTBCDField;
    qryProdutosADQUIRIDA_PRODUTO: TFMTBCDField;
    qryProdutosADQUIRIDA1_PRODUTO: TFMTBCDField;
    qryProdutosDATA_COMPRA_PRODUTO: TDateField;
    qryProdutosDATA_COMPRA1_PRODUTO: TDateField;
    qryProdutosULT_VENDA_PRODUTO: TDateField;
    qryProdutosCADASTRO_PRODUTO: TDateField;
    qryProdutosFIM_PROMOCAO_PRODUTO: TDateField;
    qryProdutosFABRICANTE_PRODUTO: TStringField;
    qryProdutosBARRA_PRODUTO: TStringField;
    qryProdutosMARKUP_PRODUTO: TFMTBCDField;
    qryProdutosREFERENCIA_PRODUTO: TStringField;
    qryProdutosICMSUB_PRODUTO: TFMTBCDField;
    qryProdutosICMSUB_VENDA_PRODUTO: TFMTBCDField;
    qryProdutosICM_ENTRADA_PRODUTO: TFMTBCDField;
    qryProdutosICMSAIDA_PRODUTO: TFMTBCDField;
    qryProdutosICMSAIDA_FORA_PRODUTO: TFMTBCDField;
    qryProdutosFRETE_PRODUTO: TFMTBCDField;
    qryProdutosCOMISSAO1_PRODUTO: TFMTBCDField;
    qryProdutosCOMISSAO2_PRODUTO: TFMTBCDField;
    qryProdutosDESCONTO_PRODUTO: TFMTBCDField;
    qryProdutosDESCONTOC_PRODUTO: TFMTBCDField;
    qryProdutosIPI_PRODUTO: TFMTBCDField;
    qryProdutosII_PRODUTO: TFMTBCDField;
    qryProdutosOUTROS_PRODUTO: TFMTBCDField;
    qryProdutosTMP_GARANTIA_PRODUTO: TStringField;
    qryProdutosMEDIA_PRODUTO: TFMTBCDField;
    qryProdutosREDU_DENTR_PRODUTO: TFMTBCDField;
    qryProdutosREDU_FORA_PRODUTO: TFMTBCDField;
    qryProdutosOBS_DENTR_PRODUTO: TIntegerField;
    qryProdutosOBS_FORA_PRODUTO: TIntegerField;
    qryProdutosISS_PRODUTO: TFMTBCDField;
    qryProdutosPRAT1_PRODUTO: TStringField;
    qryProdutosPRAT2_PRODUTO: TStringField;
    qryProdutosFABRICA_PRODUTO: TIntegerField;
    qryProdutosDISTRIB1_PRODUTO: TIntegerField;
    qryProdutosDISTRIB2_PRODUTO: TIntegerField;
    qryProdutosVALIDADE_PRODUTO: TDateField;
    qryProdutosTRIB_DENTRO_PRODUTO: TStringField;
    qryProdutosTRIB_FORA_PRODUTO: TStringField;
    qryProdutosSIMILAR1_PRODUTO: TIntegerField;
    qryProdutosSIMILAR2_PRODUTO: TIntegerField;
    qryProdutosOBSERVACAO_PRODUTO: TMemoField;
    qryProdutosSEXO_PRODUTO: TStringField;
    qryProdutosFISCAL_PRODUTO: TStringField;
    qryProdutosCONTABIL_PRODUTO: TStringField;
    qryProdutosC_DEFEITO_PRODUTO: TFMTBCDField;
    qryProdutosENV_GARANTIA_PRODUTO: TFMTBCDField;
    qryProdutosLOCAL_ESTOQUE_PRODUTO: TIntegerField;
    qryProdutosEXPORTADO_PRODUTO: TDateField;
    qryProdutosSELECAO_PRODUTO: TStringField;
    qryProdutosMETRO_CUB_PRODUTO: TStringField;
    qryProdutosRECEITUAR_PRODUTO: TStringField;
    qryProdutosRED_CONTRI_PRODUTO: TStringField;
    qryProdutosALI_CONTRI_PRODUTO: TFMTBCDField;
    qryProdutosTRIB_U_A_PRODUTO: TStringField;
    qryProdutosTRIB_F_A_PRODUTO: TStringField;
    qryProdutosRED_U_A_PRODUTO: TFMTBCDField;
    qryProdutosRED_F_A_PRODUTO: TFMTBCDField;
    qryProdutosMERCOSUL_PRODUTO: TStringField;
    qryProdutosCOD_EMPRESA: TIntegerField;
    qryProdutosFOTO_PRODUTO: TStringField;
    qryProdutosQTD_FRACIONADA: TStringField;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    cdsProdutosCODIGO_PRODUTO: TIntegerField;
    cdsProdutosCLASSE_PRODUTO: TIntegerField;
    cdsProdutosGRUPO_PRODUTO: TIntegerField;
    cdsProdutosSUBGRUPO_PRODUTO: TIntegerField;
    cdsProdutosDESCRICAO_PRODUTO: TStringField;
    cdsProdutosUNIDADE_PRODUTO: TStringField;
    cdsProdutosPESO_PRODUTO: TFMTBCDField;
    cdsProdutosSERIE_PRODUTO: TStringField;
    cdsProdutosGRADE_PRODUTO: TStringField;
    cdsProdutosESTOQUE_PRODUTO: TFMTBCDField;
    f: TFMTBCDField;
    cdsProdutosESTOQUE2_PRODUTO: TFMTBCDField;
    cdsProdutosDESUSO_PRODUTO: TStringField;
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
    cdsProdutosDESCONTO_PRODUTO: TFMTBCDField;
    cdsProdutosFOTO_PRODUTO: TStringField;
    cdsProdutosQTD_FRACIONADA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmGr04: TdmGr04;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
