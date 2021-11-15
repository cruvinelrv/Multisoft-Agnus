unit udmGr09;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmGr09 = class(TDataModule)
    qryPedido: TSQLQuery;
    dspPedido: TDataSetProvider;
    cdsPedido: TClientDataSet;
    qryPedidoCODIGO_PEDIDO: TIntegerField;
    qryPedidoFORNECEDOR_PEDIDO: TIntegerField;
    qryPedidoCONTATO_PEDIDO: TStringField;
    qryPedidoDATA_PEDIDO: TDateField;
    qryPedidoCONDICOES_PEDIDO: TStringField;
    qryPedidoOBSERVACAO_PEDIDO: TStringField;
    qryPedidoCLIENTE_PEDIDO: TIntegerField;
    qryPedidoIPI_PEDIDO: TFMTBCDField;
    qryPedidoICMS_PEDIDO: TFMTBCDField;
    qryPedidoSEGURO_PEDIDO: TFMTBCDField;
    qryPedidoICMSSB_PEDIDO: TFMTBCDField;
    qryPedidoFRETE_PEDIDO: TFMTBCDField;
    qryPedidoOUTROS_PEDIDO: TFMTBCDField;
    qryPedidoCOD_EMPRESA: TIntegerField;
    qryPedidoVALORPRODUTO_PEDIDO: TFMTBCDField;
    qryPedidoNOME_FORNECEDOR: TStringField;
    qryPedidoNOME_CLIENTE: TStringField;
    cdsPedidoCODIGO_PEDIDO: TIntegerField;
    cdsPedidoFORNECEDOR_PEDIDO: TIntegerField;
    cdsPedidoCONTATO_PEDIDO: TStringField;
    cdsPedidoDATA_PEDIDO: TDateField;
    cdsPedidoCONDICOES_PEDIDO: TStringField;
    cdsPedidoOBSERVACAO_PEDIDO: TStringField;
    cdsPedidoCLIENTE_PEDIDO: TIntegerField;
    cdsPedidoIPI_PEDIDO: TFMTBCDField;
    cdsPedidoICMS_PEDIDO: TFMTBCDField;
    cdsPedidoSEGURO_PEDIDO: TFMTBCDField;
    cdsPedidoICMSSB_PEDIDO: TFMTBCDField;
    cdsPedidoFRETE_PEDIDO: TFMTBCDField;
    cdsPedidoOUTROS_PEDIDO: TFMTBCDField;
    cdsPedidoCOD_EMPRESA: TIntegerField;
    cdsPedidoVALORPRODUTO_PEDIDO: TFMTBCDField;
    cdsPedidoNOME_FORNECEDOR: TStringField;
    cdsPedidoNOME_CLIENTE: TStringField;
    qryPedido_Item: TSQLQuery;
    qryPedido_ItemCODIGO_PEDIDO: TIntegerField;
    qryPedido_ItemPRODUTO_PEDIDO: TIntegerField;
    qryPedido_ItemDESCRICAO_PEDIDO: TStringField;
    qryPedido_ItemQUANTIDADE_PEDIDO: TFMTBCDField;
    qryPedido_ItemPRECO_PEDIDO: TFMTBCDField;
    qryPedido_ItemFABRICA_PEDIDO: TStringField;
    qryPedido_ItemCOD_EMPRESA: TIntegerField;
    dspPedido_Item: TDataSetProvider;
    cdsPedido_Item: TClientDataSet;
    cdsPedido_ItemCODIGO_PEDIDO: TIntegerField;
    cdsPedido_ItemPRODUTO_PEDIDO: TIntegerField;
    cdsPedido_ItemDESCRICAO_PEDIDO: TStringField;
    cdsPedido_ItemQUANTIDADE_PEDIDO: TFMTBCDField;
    cdsPedido_ItemPRECO_PEDIDO: TFMTBCDField;
    cdsPedido_ItemFABRICA_PEDIDO: TStringField;
    cdsPedido_ItemCOD_EMPRESA: TIntegerField;
    qryEmpresa: TSQLQuery;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    qryEmpresaRAZAOSOCIA_EMP: TStringField;
    qryEmpresaENDERECO_EMP: TStringField;
    qryEmpresaBAIRRO_EMP: TStringField;
    qryEmpresaCIDADE_EMP: TStringField;
    qryEmpresaESTADO_EMP: TStringField;
    qryEmpresaCEP_EMP: TStringField;
    qryEmpresaCGC_EMP: TStringField;
    qryEmpresaINSCRICAO_EMP: TStringField;
    qryEmpresaTELEFONE_EMP: TStringField;
    qryEmpresaFAX_EMP: TStringField;
    qryEmpresaORD_PEDIDO_EMP: TStringField;
    qryEmpresaCODIGO_EMP: TIntegerField;
    cdsEmpresaRAZAOSOCIA_EMP: TStringField;
    cdsEmpresaENDERECO_EMP: TStringField;
    cdsEmpresaBAIRRO_EMP: TStringField;
    cdsEmpresaCIDADE_EMP: TStringField;
    cdsEmpresaESTADO_EMP: TStringField;
    cdsEmpresaCEP_EMP: TStringField;
    cdsEmpresaCGC_EMP: TStringField;
    cdsEmpresaINSCRICAO_EMP: TStringField;
    cdsEmpresaTELEFONE_EMP: TStringField;
    cdsEmpresaFAX_EMP: TStringField;
    cdsEmpresaORD_PEDIDO_EMP: TStringField;
    cdsEmpresaCODIGO_EMP: TIntegerField;
    qryPedidoCIDADE_CLIENTE: TIntegerField;
    qryPedidoESTADO_CLIENTE: TStringField;
    qryPedidoENDERECO_CLIENTE: TStringField;
    qryPedidoBAIRRO_CLIENTE: TStringField;
    qryPedidoCEP_CLIENTE: TStringField;
    qryPedidoTELEFONE_CLIENTE: TStringField;
    qryPedidoFAX_CLIENTE: TStringField;
    qryPedidoINSCRICAO_CLIENTE: TStringField;
    qryPedidoCNPJ_CLIENTE: TStringField;
    cdsPedidoCIDADE_CLIENTE: TIntegerField;
    cdsPedidoESTADO_CLIENTE: TStringField;
    cdsPedidoENDERECO_CLIENTE: TStringField;
    cdsPedidoBAIRRO_CLIENTE: TStringField;
    cdsPedidoCEP_CLIENTE: TStringField;
    cdsPedidoTELEFONE_CLIENTE: TStringField;
    cdsPedidoFAX_CLIENTE: TStringField;
    cdsPedidoINSCRICAO_CLIENTE: TStringField;
    cdsPedidoCNPJ_CLIENTE: TStringField;
    qryPedidoFANTASIA_CLIENTE: TStringField;
    cdsPedidoFANTASIA_CLIENTE: TStringField;
    qryPedidoDESCRICAO_CIDADE: TStringField;
    cdsPedidoDESCRICAO_CIDADE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmGr09: TdmGr09;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
