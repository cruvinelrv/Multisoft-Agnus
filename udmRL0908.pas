unit udmRL0908;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0908 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    ppDBConsulta: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0908: TdmRL0908;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
