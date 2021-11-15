unit udmRL0514;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TdmRL0514 = class(TDataModule)
    qryVenda: TSQLQuery;
    dspVenda: TDataSetProvider;
    dtsVenda: TDataSource;
    cdsVenda: TClientDataSet;
    cdsVendaCODIGO_VENDA: TIntegerField;
    cdsVendaVENDEDOR_VENDA: TIntegerField;
    cdsVendaPARCEIRO_VENDA: TIntegerField;
    cdsVendaCLIENTE_VENDA: TIntegerField;
    cdsVendaPROPRIEDADE_VENDA: TIntegerField;
    cdsVendaNOMECLIENTE_VENDA: TStringField;
    cdsVendaDATA_VENDA: TDateField;
    cdsVendaEXCLUSAO_VENDA: TDateField;
    cdsVendaHORA_VENDA: TStringField;
    cdsVendaFATURA_VENDA: TFMTBCDField;
    cdsVendaDESCONTO_VENDA: TFMTBCDField;
    cdsVendaDESCON_ESP_VENDA: TFMTBCDField;
    cdsVendaCPAGAMENTO_VENDA: TFMTBCDField;
    cdsVendaCHAVE_VENDA: TStringField;
    cdsVendaCAIXA_VENDA: TFMTBCDField;
    cdsVendaTIPO_PRECO_VENDA: TStringField;
    cdsVendaCFOP_VENDA: TStringField;
    cdsVendaNOTAFISCAL_VENDA: TIntegerField;
    cdsVendaSERIE_VENDA: TStringField;
    cdsVendaCONFIRMA_VENDA: TStringField;
    cdsVendaEMISSAO_VENDA: TDateField;
    cdsVendaDATASAIDA_VENDA: TDateField;
    cdsVendaHORASAIDA_VENDA: TStringField;
    cdsVendaVALORNOTA_VENDA: TFMTBCDField;
    cdsVendaBASEICMS_VENDA: TFMTBCDField;
    cdsVendaICMS_VENDA: TFMTBCDField;
    cdsVendaBASEICMSSB_VENDA: TFMTBCDField;
    cdsVendaICMSSB_VENDA: TFMTBCDField;
    cdsVendaIPI_VENDA: TFMTBCDField;
    cdsVendaTRANSPORTA_VENDA: TIntegerField;
    cdsVendaPESOBRUTO_VENDA: TFMTBCDField;
    cdsVendaPESOLIQUIDO_VENDA: TFMTBCDField;
    cdsVendaOBSERVACAO_VENDA: TStringField;
    cdsVendaPARCELAS_VENDA: TIntegerField;
    cdsVendaVALOR01_VENDA: TFMTBCDField;
    cdsVendaVALOR02_VENDA: TFMTBCDField;
    cdsVendaVALOR03_VENDA: TFMTBCDField;
    cdsVendaVALOR04_VENDA: TFMTBCDField;
    cdsVendaVALOR05_VENDA: TFMTBCDField;
    cdsVendaVALOR06_VENDA: TFMTBCDField;
    cdsVendaVALOR07_VENDA: TFMTBCDField;
    cdsVendaVALOR08_VENDA: TFMTBCDField;
    cdsVendaVALOR09_VENDA: TFMTBCDField;
    cdsVendaVALOR10_VENDA: TFMTBCDField;
    cdsVendaVALOR11_VENDA: TFMTBCDField;
    cdsVendaVALOR12_VENDA: TFMTBCDField;
    cdsVendaVALOR13_VENDA: TFMTBCDField;
    cdsVendaVALOR14_VENDA: TFMTBCDField;
    cdsVendaVALOR15_VENDA: TFMTBCDField;
    cdsVendaVENCIMEN01_VENDA: TDateField;
    cdsVendaVENCIMEN02_VENDA: TDateField;
    cdsVendaVENCIMEN03_VENDA: TDateField;
    cdsVendaVENCIMEN04_VENDA: TDateField;
    cdsVendaVENCIMEN05_VENDA: TDateField;
    cdsVendaVENCIMEN06_VENDA: TDateField;
    cdsVendaVENCIMEN07_VENDA: TDateField;
    cdsVendaVENCIMEN08_VENDA: TDateField;
    cdsVendaVENCIMEN09_VENDA: TDateField;
    cdsVendaVENCIMEN10_VENDA: TDateField;
    cdsVendaVENCIMEN11_VENDA: TDateField;
    cdsVendaVENCIMEN12_VENDA: TDateField;
    cdsVendaVENCIMEN13_VENDA: TDateField;
    cdsVendaVENCIMEN14_VENDA: TDateField;
    cdsVendaVENCIMEN15_VENDA: TDateField;
    cdsVendaCOMISSAO_VENDA: TFMTBCDField;
    cdsVendaTIPO_VENDA: TStringField;
    cdsVendaTIPO1_VENDA: TStringField;
    cdsVendaDEVOLVE_VENDA: TStringField;
    cdsVendaENTREGA_VENDA: TStringField;
    cdsVendaTROCO_VENDA: TFMTBCDField;
    cdsVendaFRETE_VENDA: TFMTBCDField;
    cdsVendaSEGURO_VENDA: TFMTBCDField;
    cdsVendaOUTROS_VENDA: TFMTBCDField;
    cdsVendaROMANEIO_VENDA: TIntegerField;
    cdsVendaPLACASAIDA_VENDA: TStringField;
    cdsVendaESTADOSAIDA_VENDA: TStringField;
    cdsVendaNRFATURA_VENDA: TIntegerField;
    cdsVendaAUTONOMO_VENDA: TStringField;
    cdsVendaEXPORTADO_VENDA: TStringField;
    cdsVendaTIPO_DOC_VENDA: TStringField;
    cdsVendaINFOADICIONA_VENDA: TStringField;
    cdsVendaMACHO_4_VENDA: TIntegerField;
    cdsVendaMACHO_4_12_VENDA: TIntegerField;
    cdsVendaMACHO_12_24_VENDA: TIntegerField;
    cdsVendaMACHO_24_36_VENDA: TIntegerField;
    cdsVendaMACHO_M36_VENDA: TIntegerField;
    cdsVendaFEMEA_4_VENDA: TIntegerField;
    cdsVendaFEMEA_4_12_VENDA: TIntegerField;
    cdsVendaFEMEA_12_24_VENDA: TIntegerField;
    cdsVendaFEMEA_24_36_VENDA: TIntegerField;
    cdsVendaFEMEA_M36_VENDA: TIntegerField;
    cdsVendaBUFALOS_VENDA: TIntegerField;
    cdsVendaCAPRINOS_VENDA: TIntegerField;
    cdsVendaOVINOS_VENDA: TIntegerField;
    cdsVendaSUINOS_VENDA: TIntegerField;
    cdsVendaTROCA_VENDA: TIntegerField;
    cdsVendaOS_VENDA: TIntegerField;
    cdsVendaCNPJCLIENTE_VENDA: TStringField;
    cdsVendaRGCLIENTE_VENDA: TStringField;
    cdsVendaENDCLIENTE_VENDA: TStringField;
    cdsVendaBAICLIENTE_VENDA: TStringField;
    cdsVendaCIDCLIENTE_VENDA: TStringField;
    cdsVendaESTCLIENTE_VENDA: TStringField;
    cdsVendaCEPCLIENTE_VENDA: TStringField;
    cdsVendaFONECLIENTE_VENDA: TStringField;
    cdsVendaCARNE_VENDA: TStringField;
    cdsVendaUSUARIO_VENDA: TStringField;
    cdsVendaUSUALTERA_VENDA: TStringField;
    cdsVendaCOD_EMPRESA: TIntegerField;
    cdsVendaOBS1: TStringField;
    cdsVendaOBS2: TStringField;
    cdsVendaOBS3: TStringField;
    cdsVendaOBS4: TStringField;
    cdsVendaNF_SERV: TIntegerField;
    cdsVendaVALOR_LIQUIDO: TFMTBCDField;
    cdsVendaPERC_DESC: TFMTBCDField;
    cdsVendaCAIXA: TStringField;
    cdsVendaTURNO: TStringField;
    cdsVendaFUNCIONARIO: TStringField;
    cdsVendaNOME_VENDEDOR: TStringField;
    ppVenda: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0514: TdmRL0514;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
