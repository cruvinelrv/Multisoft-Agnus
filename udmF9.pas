unit udmF9;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, SqlExpr, DB, DBClient;

type
  TdmF9 = class(TDataModule)
    cdsPedidoCompra: TClientDataSet;
    cdsPedidoCompraCODIGO_PEDIDO: TIntegerField;
    cdsPedidoCompraFORNECEDOR_PEDIDO: TIntegerField;
    cdsPedidoCompraCONTATO_PEDIDO: TStringField;
    cdsPedidoCompraDATA_PEDIDO: TDateField;
    cdsPedidoCompraCONDICOES_PEDIDO: TStringField;
    cdsPedidoCompraOBSERVACAO_PEDIDO: TStringField;
    cdsPedidoCompraCLIENTE_PEDIDO: TIntegerField;
    cdsPedidoCompraIPI_PEDIDO: TFMTBCDField;
    cdsPedidoCompraICMS_PEDIDO: TFMTBCDField;
    cdsPedidoCompraSEGURO_PEDIDO: TFMTBCDField;
    cdsPedidoCompraICMSSB_PEDIDO: TFMTBCDField;
    cdsPedidoCompraFRETE_PEDIDO: TFMTBCDField;
    cdsPedidoCompraOUTROS_PEDIDO: TFMTBCDField;
    cdsPedidoCompraCOD_EMPRESA: TIntegerField;
    cdsPedidoCompraVALORPRODUTO_PEDIDO: TFMTBCDField;
    qryPedidoCompra: TSQLQuery;
    qryPedidoCompraCODIGO_PEDIDO: TIntegerField;
    qryPedidoCompraFORNECEDOR_PEDIDO: TIntegerField;
    qryPedidoCompraCONTATO_PEDIDO: TStringField;
    qryPedidoCompraDATA_PEDIDO: TDateField;
    qryPedidoCompraCONDICOES_PEDIDO: TStringField;
    qryPedidoCompraOBSERVACAO_PEDIDO: TStringField;
    qryPedidoCompraCLIENTE_PEDIDO: TIntegerField;
    qryPedidoCompraIPI_PEDIDO: TFMTBCDField;
    qryPedidoCompraICMS_PEDIDO: TFMTBCDField;
    qryPedidoCompraSEGURO_PEDIDO: TFMTBCDField;
    qryPedidoCompraICMSSB_PEDIDO: TFMTBCDField;
    qryPedidoCompraFRETE_PEDIDO: TFMTBCDField;
    qryPedidoCompraOUTROS_PEDIDO: TFMTBCDField;
    qryPedidoCompraCOD_EMPRESA: TIntegerField;
    qryPedidoCompraVALORPRODUTO_PEDIDO: TFMTBCDField;
    dspPedidoCompra: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmF9: TdmF9;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
