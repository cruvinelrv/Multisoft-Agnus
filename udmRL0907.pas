unit udmRL0907;

interface

uses
  SysUtils, Classes, FMTBcd, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0907 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaCODIGO_CONLAN: TIntegerField;
    cdsConsultaCORRENTE_CONLAN: TIntegerField;
    cdsConsultaCONTA_CONLAN: TStringField;
    cdsConsultaDESCRICAO_CONTA: TStringField;
    cdsConsultaTIPO_CONTA: TStringField;
    cdsConsultaTITULO_CONTA: TStringField;
    cdsConsultaHISTORICO_CONLAN: TStringField;
    cdsConsultaVALOR_CONLAN: TFMTBCDField;
    cdsConsultaMOVIMENTO_CONLAN: TDateField;
    cdsConsultaCENTRO_CONLAN: TIntegerField;
    cdsConsultaDOCUMENTO_CONLAN: TStringField;
    cdsConsultaORIGEM_CONLAN: TStringField;
    cdsConsultaTIPO_CONLAN: TStringField;
    cdsConsultaDATA_CONLAN: TDateField;
    cdsConsultaCredito: TFMTBCDField;
    cdsConsultaDebito: TFMTBCDField;
    dtsConsulta: TDataSource;
    cdsConsultaDESCRICAO_CENTRO: TStringField;
    ppDBConsulta: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0907: TdmRL0907;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
