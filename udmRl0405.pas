unit udmRl0405;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  Provider, DBClient, SqlExpr;

type
  TdmRl0405 = class(TDataModule)
    qryVendas: TSQLQuery;
    cdsVendas: TClientDataSet;
    dspVendas: TDataSetProvider;
    dsVendas: TDataSource;
    pplVendas: TppDBPipeline;
    qryItensVenda: TSQLQuery;
    cdsItensVenda: TClientDataSet;
    dspItensVenda: TDataSetProvider;
    dsItensVenda: TDataSource;
    pplItensVenda: TppDBPipeline;
    cdsVendasCODIGO_VENDA: TIntegerField;
    cdsVendasSERIE_VENDA: TStringField;
    cdsVendasNOTAFISCAL_VENDA: TIntegerField;
    cdsVendasDATA_VENDA: TDateField;
    cdsVendasHORA_VENDA: TStringField;
    cdsVendasFATURA_VENDA: TFMTBCDField;
    cdsVendasDESC_PORCENT: TFMTBCDField;
    cdsVendasVALORNOTA_VENDA: TFMTBCDField;
    cdsVendasTIPO_DOC_VENDA: TStringField;
    cdsVendasCLIENTE_VENDA: TIntegerField;
    cdsVendasNOME_VENDEDOR: TStringField;
    qryVendasCODIGO_VENDA: TIntegerField;
    qryVendasSERIE_VENDA: TStringField;
    qryVendasNOTAFISCAL_VENDA: TIntegerField;
    qryVendasDATA_VENDA: TDateField;
    qryVendasHORA_VENDA: TStringField;
    qryVendasFATURA_VENDA: TFMTBCDField;
    qryVendasDESC_PORCENT: TFMTBCDField;
    qryVendasVALORNOTA_VENDA: TFMTBCDField;
    qryVendasTIPO_DOC_VENDA: TStringField;
    qryVendasCLIENTE_VENDA: TIntegerField;
    qryVendasNOME_VENDEDOR: TStringField;
    qryItensVendaCODIGO_VENDA: TIntegerField;
    qryItensVendaSERIE_VENDA: TStringField;
    qryItensVendaNOTAFISCAL_VENDA: TIntegerField;
    qryItensVendaDATA_VENDA: TDateField;
    qryItensVendaHORA_VENDA: TStringField;
    qryItensVendaPRODUTO_IVENDA: TIntegerField;
    qryItensVendaDESCRICAO_IVENDAS: TStringField;
    qryItensVendaQUANTIDADE_IVENDAS: TFMTBCDField;
    qryItensVendaVALORBRUTO_IVENDAS: TFMTBCDField;
    qryItensVendaTOTAL_IVENDAS: TFMTBCDField;
    qryItensVendaCLIENTE_VENDA: TIntegerField;
    cdsItensVendaCODIGO_VENDA: TIntegerField;
    cdsItensVendaSERIE_VENDA: TStringField;
    cdsItensVendaNOTAFISCAL_VENDA: TIntegerField;
    cdsItensVendaDATA_VENDA: TDateField;
    cdsItensVendaHORA_VENDA: TStringField;
    cdsItensVendaPRODUTO_IVENDA: TIntegerField;
    cdsItensVendaDESCRICAO_IVENDAS: TStringField;
    cdsItensVendaQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsItensVendaVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsItensVendaTOTAL_IVENDAS: TFMTBCDField;
    cdsItensVendaCLIENTE_VENDA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRl0405: TdmRl0405;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
