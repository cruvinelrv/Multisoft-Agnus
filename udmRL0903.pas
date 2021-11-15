unit udmRL0903;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0903 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    cdsConsultaEMITENTE: TStringField;
    cdsConsultaBANCO: TIntegerField;
    cdsConsultaCHEQUE: TStringField;
    cdsConsultaVALOR: TFMTBCDField;
    cdsConsultaVENCIMENTO: TDateField;
    cdsConsultaEMISSAO: TDateField;
    cdsConsultaOBSERVACAO: TStringField;
    cdsConsultaDEVOLUCAO1: TDateField;
    cdsConsultaDEVOLUCAO2: TDateField;
    cdsConsultaDT_BAIXA: TDateField;
    cdsConsultaDT_LANCTO: TDateField;
    cdsConsultaLIQUIDACAO: TDateField;
    ppDBConsulta: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0903: TdmRL0903;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
