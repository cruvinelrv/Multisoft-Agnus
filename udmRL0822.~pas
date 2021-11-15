unit udmRL0822;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0822 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    cdsConsultaDUPLICATA_RECEBER: TStringField;
    cdsConsultaCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaEMISSAO_RECEBER: TDateField;
    cdsConsultaVENCIMENTO_RECEBER: TDateField;
    cdsConsultaMOVIMENTO_RECEBER: TDateField;
    cdsConsultaCODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsConsultaDESCRICAO_PORTADOR: TStringField;
    cdsConsultaTIT_PRINC_RECEBER: TStringField;
    cdsConsultaVALOR_RECEBER: TFMTBCDField;
    cdsConsultaVALORPAGO_RECEBER: TFMTBCDField;
    cdsConsultaValor_Total: TFMTBCDField;
    cdsConsultaTIPO_BAIXA_RECEBER: TStringField;
    ppDBConsulta: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0822: TdmRL0822;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
