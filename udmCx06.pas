unit udmCx06;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TdmCx06 = class(TDataModule)
    cdsVenda: TClientDataSet;
    dspVenda: TDataSetProvider;
    qryVenda: TSQLQuery;
    cdsVendaENTREGA_VENDA: TStringField;
    cdsVendaFATURA_VENDA: TFMTBCDField;
    cdsVendaDESCONTO_VENDA: TFMTBCDField;
    cdsVendaVENDEDOR_VENDA: TIntegerField;
    cdsVendaDATA_VENDA: TDateField;
    cdsVendaHORA_VENDA: TStringField;
    cdsVendaTROCO_VENDA: TFMTBCDField;
    cdsVendaNOME_VENDEDOR: TStringField;
    cdsVendaNOME_CLIENTE: TStringField;
    qryVendaENTREGA_VENDA: TStringField;
    qryVendaFATURA_VENDA: TFMTBCDField;
    qryVendaDESCONTO_VENDA: TFMTBCDField;
    qryVendaVALORNOTA_VENDA: TFMTBCDField;
    qryVendaVENDEDOR_VENDA: TIntegerField;
    qryVendaDATA_VENDA: TDateField;
    qryVendaHORA_VENDA: TStringField;
    qryVendaTROCO_VENDA: TFMTBCDField;
    qryVendaNOME_VENDEDOR: TStringField;
    qryVendaNOME_CLIENTE: TStringField;
    cdsVendaVALORNOTA_VENDA: TFMTBCDField;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    qryCliente: TSQLQuery;
    cdsClienteUTILIZADO_CLIENTE: TFMTBCDField;
    qryClienteUTILIZADO_CLIENTE: TFMTBCDField;
    qryVendaEXCLUSAO_VENDA: TDateField;
    cdsVendaEXCLUSAO_VENDA: TDateField;
    qryVendaEMISSAO_VENDA: TDateField;
    cdsVendaEMISSAO_VENDA: TDateField;
    qryVendaCHAVE_VENDA: TStringField;
    cdsVendaCHAVE_VENDA: TStringField;
    qryVendaCODIGO_VENDA: TIntegerField;
    cdsVendaCODIGO_VENDA: TIntegerField;
    dspVendasItem: TDataSetProvider;
    cdsVendasItem: TClientDataSet;
    cdsVendasItemCODIGO_IVENDA: TIntegerField;
    cdsVendasItemPRODUTO_IVENDA: TIntegerField;
    cdsVendasItemDESCRICAO_IVENDAS: TStringField;
    cdsVendasItemVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsVendasItemQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsVendasItemGRADE_IVENDAS: TStringField;
    cdsVendasItemPROMOCAO_IVENDAS: TStringField;
    cdsVendasItemFABRICA_IVENDAS: TStringField;
    cdsVendasItemSERIE_IVENDAS: TStringField;
    cdsVendasItemDESCONTO_IVENDAS: TFMTBCDField;
    cdsVendasItemICM_IVENDAS: TFMTBCDField;
    cdsVendasItemIPI_IVENDAS: TFMTBCDField;
    cdsVendasItemREDUTOR_IVENDAS: TFMTBCDField;
    cdsVendasItemTRIBUTACAO_IVENDAS: TStringField;
    cdsVendasItemFISCAL_IVENDAS: TStringField;
    cdsVendasItemGARANTIA_IVENDAS: TStringField;
    cdsVendasItemTECNICO_IVENDAS: TIntegerField;
    cdsVendasItemALTURA_IVENDAS: TFMTBCDField;
    cdsVendasItemLARGURA_IVENDAS: TFMTBCDField;
    cdsVendasItemCOMPRIMENTO_VENDAS: TFMTBCDField;
    cdsVendasItemQTDE_VENDAS: TIntegerField;
    cdsVendasItemCOMPLEMENTO: TStringField;
    cdsVendasItemCOD_EMPRESA: TIntegerField;
    cdsVendasItemVALORTOTAL: TFMTBCDField;
    cdsVendasItemFABRICA_PRODUTO: TIntegerField;
    cdsVendasItemFABRICANTE_PRODUTO: TStringField;
    cdsVendasItemUNIDADE_PRODUTO: TStringField;
    cdsVendasItemID_VENDA_ITEM: TIntegerField;
    cdsVendasItemCODIGO_GRADE: TStringField;
    cdsVendasItemCLASSE_IVENDA: TStringField;
    cdsVendasItemCFOP: TStringField;
    qryVendasItem: TSQLQuery;
    qryVendasItemCODIGO_IVENDA: TIntegerField;
    qryVendasItemPRODUTO_IVENDA: TIntegerField;
    qryVendasItemDESCRICAO_IVENDAS: TStringField;
    qryVendasItemVALORBRUTO_IVENDAS: TFMTBCDField;
    qryVendasItemQUANTIDADE_IVENDAS: TFMTBCDField;
    qryVendasItemGRADE_IVENDAS: TStringField;
    qryVendasItemPROMOCAO_IVENDAS: TStringField;
    qryVendasItemFABRICA_IVENDAS: TStringField;
    qryVendasItemSERIE_IVENDAS: TStringField;
    qryVendasItemDESCONTO_IVENDAS: TFMTBCDField;
    qryVendasItemICM_IVENDAS: TFMTBCDField;
    qryVendasItemIPI_IVENDAS: TFMTBCDField;
    qryVendasItemREDUTOR_IVENDAS: TFMTBCDField;
    qryVendasItemTRIBUTACAO_IVENDAS: TStringField;
    qryVendasItemFISCAL_IVENDAS: TStringField;
    qryVendasItemGARANTIA_IVENDAS: TStringField;
    qryVendasItemTECNICO_IVENDAS: TIntegerField;
    qryVendasItemALTURA_IVENDAS: TFMTBCDField;
    qryVendasItemLARGURA_IVENDAS: TFMTBCDField;
    qryVendasItemCOMPRIMENTO_VENDAS: TFMTBCDField;
    qryVendasItemQTDE_VENDAS: TIntegerField;
    qryVendasItemCOMPLEMENTO: TStringField;
    qryVendasItemCOD_EMPRESA: TIntegerField;
    qryVendasItemVALORTOTAL: TFMTBCDField;
    qryVendasItemFABRICA_PRODUTO: TIntegerField;
    qryVendasItemFABRICANTE_PRODUTO: TStringField;
    qryVendasItemUNIDADE_PRODUTO: TStringField;
    qryVendasItemID_VENDA_ITEM: TIntegerField;
    qryVendasItemCODIGO_GRADE: TStringField;
    qryVendasItemCLASSE_IVENDA: TStringField;
    qryVendasItemCFOP: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCx06: TdmCx06;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
