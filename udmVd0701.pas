unit udmVd0701;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, ApoDSet;

type
  TdmVd0701 = class(TDataModule)
    dspVendasItem: TDataSetProvider;
    cdsVendasItem: TClientDataSet;
    qryVendasItem: TSQLQuery;
    qryVendasItemCODIGO_IVENDA: TIntegerField;
    qryVendasItemPRODUTO_IVENDA: TIntegerField;
    qryVendasItemQUANTIDADE_IVENDAS: TFMTBCDField;
    qryVendasItemGRADE_IVENDAS: TStringField;
    qryVendasItemCOD_EMPRESA: TIntegerField;
    cdsVendasItemCODIGO_IVENDA: TIntegerField;
    cdsVendasItemPRODUTO_IVENDA: TIntegerField;
    cdsVendasItemQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsVendasItemGRADE_IVENDAS: TStringField;
    cdsVendasItemCOD_EMPRESA: TIntegerField;
    qryVendas: TSQLQuery;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    cdsVendasCODIGO_VENDA: TIntegerField;
    cdsVendasNOTAFISCAL_VENDA: TIntegerField;
    cdsVendasCOD_EMPRESA: TIntegerField;
    cdsVendasDATA_VENDA: TDateField;
    cdsVendasEMISSAO_VENDA: TDateField;
    cdsVendasDATASAIDA_VENDA: TDateField;
    cdsVendasHORASAIDA_VENDA: TStringField;
    cdsVendasBASEICMS_VENDA: TFMTBCDField;
    cdsVendasICMSSB_VENDA: TFMTBCDField;
    cdsVendasICMS_VENDA: TFMTBCDField;
    cdsVendasIPI_VENDA: TFMTBCDField;
    cdsVendasPESOBRUTO_VENDA: TFMTBCDField;
    cdsVendasPESOLIQUIDO_VENDA: TFMTBCDField;
    cdsVendasEXCLUSAO_VENDA: TDateField;
    qryVendasCODIGO_VENDA: TIntegerField;
    qryVendasNOTAFISCAL_VENDA: TIntegerField;
    qryVendasCOD_EMPRESA: TIntegerField;
    qryVendasDATA_VENDA: TDateField;
    qryVendasEMISSAO_VENDA: TDateField;
    qryVendasDATASAIDA_VENDA: TDateField;
    qryVendasHORASAIDA_VENDA: TStringField;
    qryVendasBASEICMS_VENDA: TFMTBCDField;
    qryVendasICMSSB_VENDA: TFMTBCDField;
    qryVendasICMS_VENDA: TFMTBCDField;
    qryVendasIPI_VENDA: TFMTBCDField;
    qryVendasPESOBRUTO_VENDA: TFMTBCDField;
    qryVendasPESOLIQUIDO_VENDA: TFMTBCDField;
    qryVendasEXCLUSAO_VENDA: TDateField;
    qryVendasDESCONTO_VENDA: TFMTBCDField;
    qryVendasVALORNOTA_VENDA: TFMTBCDField;
    qryVendasVALOR_BRUTO: TFMTBCDField;
    qryVendasNOME_CLIENTE: TStringField;
    qryVendasDESCRICAO_CPAGAMENTO: TStringField;
    qryVendasNOME_VENDEDOR: TStringField;
    cdsVendasDESCONTO_VENDA: TFMTBCDField;
    cdsVendasVALORNOTA_VENDA: TFMTBCDField;
    cdsVendasVALOR_BRUTO: TFMTBCDField;
    cdsVendasNOME_CLIENTE: TStringField;
    cdsVendasDESCRICAO_CPAGAMENTO: TStringField;
    cdsVendasNOME_VENDEDOR: TStringField;
    tblECF: TApolloTable;
    tblECFECF: TStringField;
    tblECFTEF: TStringField;
    tblECFPORTA: TStringField;
    tblECFSERIAL: TStringField;
    tblECFCAIXA: TSmallintField;
    tblECFBALANCA: TStringField;
    tblECFPORTA_BAL: TSmallintField;
    tblECFBAUD_BAL: TSmallintField;
    tblECFBITS_BAL: TSmallintField;
    tblECFPARID_BAL: TSmallintField;
    tblECFESCRIT_BAL: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVd0701: TdmVd0701;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
