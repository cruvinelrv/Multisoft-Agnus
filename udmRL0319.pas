unit udmRL0319;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, ppComm, ppRelatv, ppDB, ppDBPipe,
  DBClient, Provider;

type
  TdmRL0319 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaDATA_VENDA: TDateField;
    cdsConsultaCODIGO_VENDA: TIntegerField;
    cdsConsultaCODIGO_PRODUTO: TIntegerField;
    cdsConsultaDESCRICAO_PRODUTO: TStringField;
    cdsConsultaQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsConsultaESTOQUE_PRODUTO: TFMTBCDField;
    cdsConsultaGRUPO_PRODUTO: TIntegerField;
    cdsProdutosTemp: TClientDataSet;
    cdsProdutosTempCODIGO_PRODUTO: TIntegerField;
    cdsProdutosTempDESCRICAO_PRODUTO: TStringField;
    cdsProdutosTempTOTAL_VENDIDO: TFloatField;
    cdsProdutosTempESTOQUE_ATUAL: TFloatField;
    cdsProdutosTempJANEIRO: TFloatField;
    cdsProdutosTempFEVEREIRO: TFloatField;
    cdsProdutosTempMARCO: TFloatField;
    cdsProdutosTempABRIL: TFloatField;
    cdsProdutosTempMAIO: TFloatField;
    cdsProdutosTempJUNHO: TFloatField;
    cdsProdutosTempJULHO: TFloatField;
    cdsProdutosTempAGOSTO: TFloatField;
    cdsProdutosTempSETEMBRO: TFloatField;
    cdsProdutosTempOUTUBRO: TFloatField;
    cdsProdutosTempNOVEMBRO: TFloatField;
    cdsProdutosTempDEZEMBRO: TFloatField;
    cdsConsultaEXCLUSAO_VENDA: TDateField;
    cdsConsultaTIPO_DOC_VENDA: TStringField;
    dtsProdutosTemp: TDataSource;
    ppProdutosTemp: TppDBPipeline;
    cdsConsultaFABRICA_PRODUTO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0319: TdmRL0319;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
