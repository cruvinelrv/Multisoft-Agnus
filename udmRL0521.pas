unit udmRL0521;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DBClient, DB, SqlExpr, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TdmRL0521 = class(TDataModule)
    qryAcesso: TSQLQuery;
    cdsAcesso: TClientDataSet;
    dspAcesso: TDataSetProvider;
    dsAcesso: TDataSource;
    pplAcesso: TppDBPipeline;
    cdsAcessoDATA_ACESSO: TDateField;
    cdsAcessoHORA_ACESSO: TTimeField;
    cdsAcessoUSUARIO_ACESSO: TStringField;
    cdsAcessoROTINA_ACESSO: TStringField;
    cdsAcessoHISTORICO_ACESSO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0521: TdmRL0521;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
