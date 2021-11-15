unit udmRL0511;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TdmRL0511 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    qryConsultaCODIGO_COMPRA: TIntegerField;
    qryConsultaENTRADA_COMPRA: TDateField;
    qryConsultaHORA_COMPRA: TStringField;
    qryConsultaCFOP_COMPRA: TStringField;
    qryConsultaNOTAFISCAL_COMPRA: TIntegerField;
    qryConsultaFORNECEDOR_COMPRA: TIntegerField;
    qryConsultaVALOR_COMPRA: TFMTBCDField;
    qryConsultaNOME_CLIENTE: TStringField;
    qryConsultaCODIGO_PRODUTO: TIntegerField;
    qryConsultaSERIE_COMPRA: TStringField;
    qryConsultaEMISSAO_COMPRA: TDateField;
    qryConsultaTRANSPORTA_COMPRA: TFMTBCDField;
    qryConsultaIICM_COMPRA: TFMTBCDField;
    qryConsultaICMSUB_PRODUTO: TFMTBCDField;
    qryConsultaICM_ENTRADA_PRODUTO: TFMTBCDField;
    qryConsultaSEGURO_COMPRA: TFMTBCDField;
    qryConsultaDESCONTO_COMPRA: TFMTBCDField;
    qryConsultaFRETE_COMPRA: TFMTBCDField;
    qryConsultaPESOLIQUIDO_COMPRA: TFMTBCDField;
    qryConsultaIIPI_COMPRA: TFMTBCDField;
    qryConsultaCONHECIMEN_COMPRA: TStringField;
    qryConsultaBICM_COMPRA: TFMTBCDField;
    qryConsultaPESOBRUTO_COMPRA: TFMTBCDField;
    qryConsultaVOLUMES_COMPRA: TIntegerField;
    qryConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField;
    qryConsultaGRADE_COMPRA: TStringField;
    qryConsultaBICS_COMPRA: TFMTBCDField;
    qryConsultaOUTRAS_COMPRA: TFMTBCDField;
    qryConsultaTotal_ICompra: TFMTBCDField;
    qryConsultaPRECOUNIT_COMPRA: TFMTBCDField;
    cdsConsultaCODIGO_COMPRA: TIntegerField;
    cdsConsultaENTRADA_COMPRA: TDateField;
    cdsConsultaHORA_COMPRA: TStringField;
    cdsConsultaCFOP_COMPRA: TStringField;
    cdsConsultaNOTAFISCAL_COMPRA: TIntegerField;
    cdsConsultaFORNECEDOR_COMPRA: TIntegerField;
    cdsConsultaVALOR_COMPRA: TFMTBCDField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaCODIGO_PRODUTO: TIntegerField;
    cdsConsultaSERIE_COMPRA: TStringField;
    cdsConsultaEMISSAO_COMPRA: TDateField;
    cdsConsultaTRANSPORTA_COMPRA: TFMTBCDField;
    cdsConsultaIICM_COMPRA: TFMTBCDField;
    cdsConsultaICMSUB_PRODUTO: TFMTBCDField;
    cdsConsultaICM_ENTRADA_PRODUTO: TFMTBCDField;
    cdsConsultaSEGURO_COMPRA: TFMTBCDField;
    cdsConsultaDESCONTO_COMPRA: TFMTBCDField;
    cdsConsultaFRETE_COMPRA: TFMTBCDField;
    cdsConsultaPESOLIQUIDO_COMPRA: TFMTBCDField;
    cdsConsultaIIPI_COMPRA: TFMTBCDField;
    cdsConsultaCONHECIMEN_COMPRA: TStringField;
    cdsConsultaBICM_COMPRA: TFMTBCDField;
    cdsConsultaPESOBRUTO_COMPRA: TFMTBCDField;
    cdsConsultaVOLUMES_COMPRA: TIntegerField;
    cdsConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField;
    cdsConsultaGRADE_COMPRA: TStringField;
    cdsConsultaBICS_COMPRA: TFMTBCDField;
    cdsConsultaOUTRAS_COMPRA: TFMTBCDField;
    cdsConsultaTotal_ICompra: TFMTBCDField;
    cdsConsultaPRECOUNIT_COMPRA: TFMTBCDField;
    qryConsultaVICM_COMPRA: TFMTBCDField;
    qryConsultaVIPI_COMPRA: TFMTBCDField;
    qryConsultaVICS_COMPRA: TFMTBCDField;
    cdsConsultaVICM_COMPRA: TFMTBCDField;
    cdsConsultaVIPI_COMPRA: TFMTBCDField;
    cdsConsultaVICS_COMPRA: TFMTBCDField;
    qryConsultaESPECIE_COMPRA: TStringField;
    cdsConsultaESPECIE_COMPRA: TStringField;
    qryConsultaDESCRICAO_PRODUTO: TStringField;
    cdsConsultaDESCRICAO_PRODUTO: TStringField;
    qryConsultaQUANTIDADE_COMPRA: TFMTBCDField;
    qryConsultaPRECO_COMPRA_PRODUTO: TFMTBCDField;
    qryConsultaVALIDADE_PRODUTO: TDateField;
    qryConsultaIPI_PRODUTO: TFMTBCDField;
    cdsConsultaQUANTIDADE_COMPRA: TFMTBCDField;
    cdsConsultaPRECO_COMPRA_PRODUTO: TFMTBCDField;
    cdsConsultaVALIDADE_PRODUTO: TDateField;
    cdsConsultaIPI_PRODUTO: TFMTBCDField;
    ppDBConsulta: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0511: TdmRL0511;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
