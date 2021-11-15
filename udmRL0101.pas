unit udmRL0101;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmRL0101 = class(TDataModule)
    qryPesquisa1: TSQLQuery;
    dspPesquisa1: TDataSetProvider;
    cdsPesquisa1: TClientDataSet;
    qrySecao: TSQLQuery;
    dspSecao: TDataSetProvider;
    cdsSecao: TClientDataSet;
    cdsSecaoCODIGO_SECAO: TIntegerField;
    cdsSecaoDESCRICAO_SECAO: TStringField;
    cdsSecaoCOD_EMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0101: TdmRL0101;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
