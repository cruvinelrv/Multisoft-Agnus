unit udmRL0507;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  Provider, DBClient, SqlExpr;

type
  TdmRL0507 = class(TDataModule)
    qryCliente: TSQLQuery;
    cdsCliente: TClientDataSet;
    dspCliente: TDataSetProvider;
    dtsCliente: TDataSource;
    ppCliente: TppDBPipeline;
    cdsClienteCODIGO_VENDA: TIntegerField;
    cdsClienteVENDEDOR_VENDA: TIntegerField;
    cdsClientePARCEIRO_VENDA: TIntegerField;
    cdsClienteCLIENTE_VENDA: TIntegerField;
    cdsClientePROPRIEDADE_VENDA: TIntegerField;
    cdsClienteNOMECLIENTE_VENDA: TStringField;
    cdsClienteDATA_VENDA: TDateField;
    cdsClienteEXCLUSAO_VENDA: TDateField;
    cdsClienteHORA_VENDA: TStringField;
    cdsClienteFATURA_VENDA: TFMTBCDField;
    cdsClienteDESCONTO_VENDA: TFMTBCDField;
    cdsClienteDESCON_ESP_VENDA: TFMTBCDField;
    cdsClienteCPAGAMENTO_VENDA: TFMTBCDField;
    cdsClienteCHAVE_VENDA: TStringField;
    cdsClienteCAIXA_VENDA: TFMTBCDField;
    cdsClienteTIPO_PRECO_VENDA: TStringField;
    cdsClienteCFOP_VENDA: TStringField;
    cdsClienteNOTAFISCAL_VENDA: TIntegerField;
    cdsClienteSERIE_VENDA: TStringField;
    cdsClienteCONFIRMA_VENDA: TStringField;
    cdsClienteEMISSAO_VENDA: TDateField;
    cdsClienteDATASAIDA_VENDA: TDateField;
    cdsClienteHORASAIDA_VENDA: TStringField;
    cdsClienteVALORNOTA_VENDA: TFMTBCDField;
    cdsClienteBASEICMS_VENDA: TFMTBCDField;
    cdsClienteICMS_VENDA: TFMTBCDField;
    cdsClienteBASEICMSSB_VENDA: TFMTBCDField;
    cdsClienteICMSSB_VENDA: TFMTBCDField;
    cdsClienteIPI_VENDA: TFMTBCDField;
    cdsClienteTRANSPORTA_VENDA: TIntegerField;
    cdsClientePESOBRUTO_VENDA: TFMTBCDField;
    cdsClientePESOLIQUIDO_VENDA: TFMTBCDField;
    cdsClienteOBSERVACAO_VENDA: TStringField;
    cdsClientePARCELAS_VENDA: TIntegerField;
    cdsClienteVALOR01_VENDA: TFMTBCDField;
    cdsClienteVALOR02_VENDA: TFMTBCDField;
    cdsClienteVALOR03_VENDA: TFMTBCDField;
    cdsClienteVALOR04_VENDA: TFMTBCDField;
    cdsClienteVALOR05_VENDA: TFMTBCDField;
    cdsClienteVALOR06_VENDA: TFMTBCDField;
    cdsClienteVALOR07_VENDA: TFMTBCDField;
    cdsClienteVALOR08_VENDA: TFMTBCDField;
    cdsClienteVALOR09_VENDA: TFMTBCDField;
    cdsClienteVALOR10_VENDA: TFMTBCDField;
    cdsClienteVALOR11_VENDA: TFMTBCDField;
    cdsClienteVALOR12_VENDA: TFMTBCDField;
    cdsClienteVALOR13_VENDA: TFMTBCDField;
    cdsClienteVALOR14_VENDA: TFMTBCDField;
    cdsClienteVALOR15_VENDA: TFMTBCDField;
    cdsClienteVENCIMEN01_VENDA: TDateField;
    cdsClienteVENCIMEN02_VENDA: TDateField;
    cdsClienteVENCIMEN03_VENDA: TDateField;
    cdsClienteVENCIMEN04_VENDA: TDateField;
    cdsClienteVENCIMEN05_VENDA: TDateField;
    cdsClienteVENCIMEN06_VENDA: TDateField;
    cdsClienteVENCIMEN07_VENDA: TDateField;
    cdsClienteVENCIMEN08_VENDA: TDateField;
    cdsClienteVENCIMEN09_VENDA: TDateField;
    cdsClienteVENCIMEN10_VENDA: TDateField;
    cdsClienteVENCIMEN11_VENDA: TDateField;
    cdsClienteVENCIMEN12_VENDA: TDateField;
    cdsClienteVENCIMEN13_VENDA: TDateField;
    cdsClienteVENCIMEN14_VENDA: TDateField;
    cdsClienteVENCIMEN15_VENDA: TDateField;
    cdsClienteCOMISSAO_VENDA: TFMTBCDField;
    cdsClienteTIPO_VENDA: TStringField;
    cdsClienteTIPO1_VENDA: TStringField;
    cdsClienteDEVOLVE_VENDA: TStringField;
    cdsClienteENTREGA_VENDA: TStringField;
    cdsClienteTROCO_VENDA: TFMTBCDField;
    cdsClienteFRETE_VENDA: TFMTBCDField;
    cdsClienteSEGURO_VENDA: TFMTBCDField;
    cdsClienteOUTROS_VENDA: TFMTBCDField;
    cdsClienteROMANEIO_VENDA: TIntegerField;
    cdsClientePLACASAIDA_VENDA: TStringField;
    cdsClienteESTADOSAIDA_VENDA: TStringField;
    cdsClienteNRFATURA_VENDA: TIntegerField;
    cdsClienteAUTONOMO_VENDA: TStringField;
    cdsClienteEXPORTADO_VENDA: TStringField;
    cdsClienteTIPO_DOC_VENDA: TStringField;
    cdsClienteINFOADICIONA_VENDA: TStringField;
    cdsClienteMACHO_4_VENDA: TIntegerField;
    cdsClienteMACHO_4_12_VENDA: TIntegerField;
    cdsClienteMACHO_12_24_VENDA: TIntegerField;
    cdsClienteMACHO_24_36_VENDA: TIntegerField;
    cdsClienteMACHO_M36_VENDA: TIntegerField;
    cdsClienteFEMEA_4_VENDA: TIntegerField;
    cdsClienteFEMEA_4_12_VENDA: TIntegerField;
    cdsClienteFEMEA_12_24_VENDA: TIntegerField;
    cdsClienteFEMEA_24_36_VENDA: TIntegerField;
    cdsClienteFEMEA_M36_VENDA: TIntegerField;
    cdsClienteBUFALOS_VENDA: TIntegerField;
    cdsClienteCAPRINOS_VENDA: TIntegerField;
    cdsClienteOVINOS_VENDA: TIntegerField;
    cdsClienteSUINOS_VENDA: TIntegerField;
    cdsClienteTROCA_VENDA: TIntegerField;
    cdsClienteOS_VENDA: TIntegerField;
    cdsClienteCNPJCLIENTE_VENDA: TStringField;
    cdsClienteRGCLIENTE_VENDA: TStringField;
    cdsClienteENDCLIENTE_VENDA: TStringField;
    cdsClienteBAICLIENTE_VENDA: TStringField;
    cdsClienteCIDCLIENTE_VENDA: TStringField;
    cdsClienteESTCLIENTE_VENDA: TStringField;
    cdsClienteCEPCLIENTE_VENDA: TStringField;
    cdsClienteFONECLIENTE_VENDA: TStringField;
    cdsClienteCARNE_VENDA: TStringField;
    cdsClienteUSUARIO_VENDA: TStringField;
    cdsClienteUSUALTERA_VENDA: TStringField;
    cdsClienteCOD_EMPRESA: TIntegerField;
    cdsClienteOBS1: TStringField;
    cdsClienteOBS2: TStringField;
    cdsClienteOBS3: TStringField;
    cdsClienteOBS4: TStringField;
    cdsClienteNF_SERV: TIntegerField;
    cdsClienteNOME_CLIENTE: TStringField;
    cdsClienteTOTAL_VENDA: TFMTBCDField;
    cdsTemp_01: TClientDataSet;
    cdsTemp_02: TClientDataSet;
    cdsTemp_01COLOCACAO: TStringField;
    cdsTemp_01NOME_CLIENTE: TStringField;
    cdsTemp_01CODIGO_CLIENTE: TIntegerField;
    cdsTemp_01TOTAL: TFloatField;
    cdsTemp_01QTD_DUP: TIntegerField;
    cdsTemp_01VALOR_MAIOR: TFloatField;
    cdsTemp_01VALOR_MENOR: TFloatField;
    cdsTemp_02COLOCACAO: TStringField;
    cdsTemp_02NOME_CLIENTE: TStringField;
    cdsTemp_02CODIGO_CLIENTE: TIntegerField;
    cdsTemp_02TOTAL: TFloatField;
    cdsTemp_02QTD_DUP: TIntegerField;
    cdsTemp_02VALOR_MAIOR: TFloatField;
    cdsTemp_02VALOR_MENOR: TFloatField;
    cdsTemp_01IND_PERC: TFloatField;
    cdsTemp_01TOT_PERC: TFloatField;
    cdsTemp_02IND_PERC: TFloatField;
    cdsTemp_02TOT_PERC: TFloatField;
    dtsTemp_01: TDataSource;
    ppTemp_01: TppDBPipeline;
    dtsTemp_02: TDataSource;
    ppTemp_02: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0507: TdmRL0507;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
