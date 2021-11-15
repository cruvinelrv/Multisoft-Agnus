unit udmRL0409;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, ppDB, ppComm,
  ppRelatv, ppDBPipe;

type
  TdmRL0409 = class(TDataModule)
    qryVenda: TSQLQuery;
    dspVenda: TDataSetProvider;
    cdsVenda: TClientDataSet;
    qryVendaCODIGO_VENDA: TIntegerField;
    qryVendaDATA_VENDA: TDateField;
    cdsVendaCODIGO_VENDA: TIntegerField;
    cdsVendaDATA_VENDA: TDateField;
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    qryConsultaID_VENDA_ITEM: TIntegerField;
    qryConsultaCODIGO_IVENDA: TIntegerField;
    qryConsultaPRODUTO_IVENDA: TIntegerField;
    qryConsultaDESCRICAO_IVENDAS: TStringField;
    qryConsultaVALORBRUTO_IVENDAS: TFMTBCDField;
    qryConsultaQUANTIDADE_IVENDAS: TFMTBCDField;
    qryConsultaValor_Total: TFMTBCDField;
    qryConsultaFABRICA_IVENDAS: TStringField;
    qryConsultaSERIE_IVENDAS: TStringField;
    qryConsultaDESCONTO_IVENDAS: TFMTBCDField;
    qryConsultaQTDE_VENDAS: TIntegerField;
    qryConsultaCOD_EMPRESA: TIntegerField;
    qryConsultaESTOQUE_PRODUTO: TFMTBCDField;
    qryConsultaPRECO_COMPRA_PRODUTO: TFMTBCDField;
    qryConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField;
    qryConsultaPRECO_LISTA_PRODUTO: TFMTBCDField;
    qryConsultaUNIDADE_PRODUTO: TStringField;
    qryConsultaCODIGO_GRUPO: TIntegerField;
    qryConsultaDESCRICAO_GRUPO: TStringField;
    qryConsultaDATA_VENDA: TDateField;
    qryConsultaCODIGO_CPAGAMENTO: TIntegerField;
    qryConsultaDESCRICAO_CPAGAMENTO: TStringField;
    qryConsultaCODIGO_CLIENTE: TIntegerField;
    qryConsultaNOME_CLIENTE: TStringField;
    cdsConsulta: TClientDataSet;
    cdsConsultaID_VENDA_ITEM: TIntegerField;
    cdsConsultaCODIGO_IVENDA: TIntegerField;
    cdsConsultaPRODUTO_IVENDA: TIntegerField;
    cdsConsultaDESCRICAO_IVENDAS: TStringField;
    cdsConsultaVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsConsultaQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsConsultaValor_Total: TFMTBCDField;
    cdsConsultaFABRICA_IVENDAS: TStringField;
    cdsConsultaSERIE_IVENDAS: TStringField;
    cdsConsultaDESCONTO_IVENDAS: TFMTBCDField;
    cdsConsultaQTDE_VENDAS: TIntegerField;
    cdsConsultaCOD_EMPRESA: TIntegerField;
    cdsConsultaESTOQUE_PRODUTO: TFMTBCDField;
    cdsConsultaPRECO_COMPRA_PRODUTO: TFMTBCDField;
    cdsConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField;
    cdsConsultaPRECO_LISTA_PRODUTO: TFMTBCDField;
    cdsConsultaUNIDADE_PRODUTO: TStringField;
    cdsConsultaCODIGO_GRUPO: TIntegerField;
    cdsConsultaDESCRICAO_GRUPO: TStringField;
    cdsConsultaDATA_VENDA: TDateField;
    cdsConsultaCODIGO_CPAGAMENTO: TIntegerField;
    cdsConsultaDESCRICAO_CPAGAMENTO: TStringField;
    cdsConsultaCODIGO_CLIENTE: TIntegerField;
    cdsConsultaNOME_CLIENTE: TStringField;
    dtsConsulta: TDataSource;
    ppDBConsulta: TppDBPipeline;
    qryConsultaCOMPRIMENTO_VENDAS: TFMTBCDField;
    cdsConsultaCOMPRIMENTO_VENDAS: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0409: TdmRL0409;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
