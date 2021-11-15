unit udmRL0801;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TdmRL0801 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    qryEmpresa: TSQLQuery;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    qryEmpresaCODIGO_EMP: TIntegerField;
    qryEmpresaJUROS_EMP: TFMTBCDField;
    qryEmpresaTIPO_JUR_EMP: TStringField;
    cdsEmpresaCODIGO_EMP: TIntegerField;
    cdsEmpresaJUROS_EMP: TFMTBCDField;
    cdsEmpresaTIPO_JUR_EMP: TStringField;
    cdsConsultaDUPLICATA_RECEBER: TStringField;
    cdsConsultaEMISSAO_RECEBER: TDateField;
    cdsConsultaVENCIMENTO_RECEBER: TDateField;
    cdsConsultaCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaCODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsConsultaTIPO_DOCUMENTO_RECEBER: TIntegerField;
    cdsConsultaMOVIMENTO_RECEBER: TDateField;
    cdsConsultaCODIGO_VENDEDOR_RECEBER: TIntegerField;
    cdsConsultaValor_Total: TFMTBCDField;
    cdsConsultaVALORPAGO_RECEBER: TFMTBCDField;
    cdsConsultaDATASYSTEM_EMP: TSQLTimeStampField;
    cdsConsultaTIPO_JUR_EMP: TStringField;
    cdsConsultaJUROS_EMP: TFMTBCDField;
    cdsConsultaJURO_MIN_EMP: TFMTBCDField;
    cdsTaxa: TClientDataSet;
    cdsTaxaTAXA_DE_JUROS: TFloatField;
    dtsTaxa: TDataSource;
    ppDBTaxa: TppDBPipeline;
    cdsConsultaVALOR_RECEBER: TFMTBCDField;
    ppDBConsulta: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0801: TdmRL0801;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
