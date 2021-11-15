unit udmRL0821;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0821 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    cdsConsultaDUPLICATA_RECEBER: TStringField;
    cdsConsultaCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaVENCIMENTO_RECEBER: TDateField;
    cdsConsultaVALOR_RECEBER: TFMTBCDField;
    cdsConsultaValor_Total: TFMTBCDField;
    cdsConsultaMOVIMENTO_RECEBER: TDateField;
    cdsConsultaTIPO_JUR_EMP: TStringField;
    cdsConsultaJUROS_EMP: TFMTBCDField;
    cdsConsultaVALORPAGO_RECEBER: TFMTBCDField;
    ppDBConsulta: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0821: TdmRL0821;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
