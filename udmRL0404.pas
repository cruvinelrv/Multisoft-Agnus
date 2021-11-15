unit udmRL0404;

interface

uses
  SysUtils, Classes, FMTBcd, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0404 = class(TDataModule)
    qryVendas: TSQLQuery;
    dspVendas: TDataSetProvider;
    dtsVendas: TDataSource;
    cdsVendas: TClientDataSet;
    cdsVendasCODIGO_VENDA: TIntegerField;
    cdsVendasVENDEDOR_VENDA: TIntegerField;
    cdsVendasPARCEIRO_VENDA: TIntegerField;
    cdsVendasCLIENTE_VENDA: TIntegerField;
    cdsVendasPROPRIEDADE_VENDA: TIntegerField;
    cdsVendasNOMECLIENTE_VENDA: TStringField;
    cdsVendasDATA_VENDA: TDateField;
    cdsVendasEXCLUSAO_VENDA: TDateField;
    cdsVendasHORA_VENDA: TStringField;
    cdsVendasFATURA_VENDA: TFMTBCDField;
    cdsVendasDESCONTO_VENDA: TFMTBCDField;
    cdsVendasDESCON_ESP_VENDA: TFMTBCDField;
    cdsVendasCPAGAMENTO_VENDA: TFMTBCDField;
    cdsVendasCHAVE_VENDA: TStringField;
    cdsVendasCAIXA_VENDA: TFMTBCDField;
    cdsVendasTIPO_PRECO_VENDA: TStringField;
    cdsVendasCFOP_VENDA: TStringField;
    cdsVendasNOTAFISCAL_VENDA: TIntegerField;
    cdsVendasSERIE_VENDA: TStringField;
    cdsVendasCONFIRMA_VENDA: TStringField;
    cdsVendasEMISSAO_VENDA: TDateField;
    cdsVendasDATASAIDA_VENDA: TDateField;
    cdsVendasHORASAIDA_VENDA: TStringField;
    cdsVendasVALORNOTA_VENDA: TFMTBCDField;
    cdsVendasBASEICMS_VENDA: TFMTBCDField;
    cdsVendasICMS_VENDA: TFMTBCDField;
    cdsVendasBASEICMSSB_VENDA: TFMTBCDField;
    cdsVendasICMSSB_VENDA: TFMTBCDField;
    cdsVendasIPI_VENDA: TFMTBCDField;
    cdsVendasTRANSPORTA_VENDA: TIntegerField;
    cdsVendasPESOBRUTO_VENDA: TFMTBCDField;
    cdsVendasPESOLIQUIDO_VENDA: TFMTBCDField;
    cdsVendasOBSERVACAO_VENDA: TStringField;
    cdsVendasPARCELAS_VENDA: TIntegerField;
    cdsVendasVALOR01_VENDA: TFMTBCDField;
    cdsVendasVALOR02_VENDA: TFMTBCDField;
    cdsVendasVALOR03_VENDA: TFMTBCDField;
    cdsVendasVALOR04_VENDA: TFMTBCDField;
    cdsVendasVALOR05_VENDA: TFMTBCDField;
    cdsVendasVALOR06_VENDA: TFMTBCDField;
    cdsVendasVALOR07_VENDA: TFMTBCDField;
    cdsVendasVALOR08_VENDA: TFMTBCDField;
    cdsVendasVALOR09_VENDA: TFMTBCDField;
    cdsVendasVALOR10_VENDA: TFMTBCDField;
    cdsVendasVALOR11_VENDA: TFMTBCDField;
    cdsVendasVALOR12_VENDA: TFMTBCDField;
    cdsVendasVALOR13_VENDA: TFMTBCDField;
    cdsVendasVALOR14_VENDA: TFMTBCDField;
    cdsVendasVALOR15_VENDA: TFMTBCDField;
    cdsVendasVENCIMEN01_VENDA: TDateField;
    cdsVendasVENCIMEN02_VENDA: TDateField;
    cdsVendasVENCIMEN03_VENDA: TDateField;
    cdsVendasVENCIMEN04_VENDA: TDateField;
    cdsVendasVENCIMEN05_VENDA: TDateField;
    cdsVendasVENCIMEN06_VENDA: TDateField;
    cdsVendasVENCIMEN07_VENDA: TDateField;
    cdsVendasVENCIMEN08_VENDA: TDateField;
    cdsVendasVENCIMEN09_VENDA: TDateField;
    cdsVendasVENCIMEN10_VENDA: TDateField;
    cdsVendasVENCIMEN11_VENDA: TDateField;
    cdsVendasVENCIMEN12_VENDA: TDateField;
    cdsVendasVENCIMEN13_VENDA: TDateField;
    cdsVendasVENCIMEN14_VENDA: TDateField;
    cdsVendasVENCIMEN15_VENDA: TDateField;
    cdsVendasCOMISSAO_VENDA: TFMTBCDField;
    cdsVendasTIPO_VENDA: TStringField;
    cdsVendasTIPO1_VENDA: TStringField;
    cdsVendasDEVOLVE_VENDA: TStringField;
    cdsVendasENTREGA_VENDA: TStringField;
    cdsVendasTROCO_VENDA: TFMTBCDField;
    cdsVendasFRETE_VENDA: TFMTBCDField;
    cdsVendasSEGURO_VENDA: TFMTBCDField;
    cdsVendasOUTROS_VENDA: TFMTBCDField;
    cdsVendasROMANEIO_VENDA: TIntegerField;
    cdsVendasPLACASAIDA_VENDA: TStringField;
    cdsVendasESTADOSAIDA_VENDA: TStringField;
    cdsVendasNRFATURA_VENDA: TIntegerField;
    cdsVendasAUTONOMO_VENDA: TStringField;
    cdsVendasEXPORTADO_VENDA: TStringField;
    cdsVendasTIPO_DOC_VENDA: TStringField;
    cdsVendasINFOADICIONA_VENDA: TStringField;
    cdsVendasMACHO_4_VENDA: TIntegerField;
    cdsVendasMACHO_4_12_VENDA: TIntegerField;
    cdsVendasMACHO_12_24_VENDA: TIntegerField;
    cdsVendasMACHO_24_36_VENDA: TIntegerField;
    cdsVendasMACHO_M36_VENDA: TIntegerField;
    cdsVendasFEMEA_4_VENDA: TIntegerField;
    cdsVendasFEMEA_4_12_VENDA: TIntegerField;
    cdsVendasFEMEA_12_24_VENDA: TIntegerField;
    cdsVendasFEMEA_24_36_VENDA: TIntegerField;
    cdsVendasFEMEA_M36_VENDA: TIntegerField;
    cdsVendasBUFALOS_VENDA: TIntegerField;
    cdsVendasCAPRINOS_VENDA: TIntegerField;
    cdsVendasOVINOS_VENDA: TIntegerField;
    cdsVendasSUINOS_VENDA: TIntegerField;
    cdsVendasTROCA_VENDA: TIntegerField;
    cdsVendasOS_VENDA: TIntegerField;
    cdsVendasCNPJCLIENTE_VENDA: TStringField;
    cdsVendasRGCLIENTE_VENDA: TStringField;
    cdsVendasENDCLIENTE_VENDA: TStringField;
    cdsVendasBAICLIENTE_VENDA: TStringField;
    cdsVendasCIDCLIENTE_VENDA: TStringField;
    cdsVendasESTCLIENTE_VENDA: TStringField;
    cdsVendasCEPCLIENTE_VENDA: TStringField;
    cdsVendasFONECLIENTE_VENDA: TStringField;
    cdsVendasCARNE_VENDA: TStringField;
    cdsVendasUSUARIO_VENDA: TStringField;
    cdsVendasUSUALTERA_VENDA: TStringField;
    cdsVendasCOD_EMPRESA: TIntegerField;
    cdsVendasOBS1: TStringField;
    cdsVendasOBS2: TStringField;
    cdsVendasOBS3: TStringField;
    cdsVendasOBS4: TStringField;
    cdsVendasNF_SERV: TIntegerField;
    cdsVendasQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsVendasDESCRICAO_CPAGAMENTO: TStringField;
    cdsVendasCAIXA_CPAGAMENTO: TIntegerField;
    cdsVendasDESCONTO_IVENDAS: TFMTBCDField;
    cdsVendasGRUPO_PRODUTO: TIntegerField;
    cdsVendasTOTAL_IVENDA: TFMTBCDField;
    cdsVendasPERC_DESC: TFMTBCDField;
    cdsVendasDESCRICAO_GRUPO: TStringField;
    ppVendas: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0404: TdmRL0404;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
