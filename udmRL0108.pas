unit udmRL0108;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmRL0108 = class(TDataModule)
    qrySecao: TSQLQuery;
    dspSecao: TDataSetProvider;
    cdsSecao: TClientDataSet;
    cdsSecaoCODIGO_SECAO: TIntegerField;
    cdsSecaoDESCRICAO_SECAO: TStringField;
    cdsSecaoCOD_EMPRESA: TIntegerField;
    qryPesquisa1: TSQLQuery;
    dspPesquisa1: TDataSetProvider;
    cdsPesquisa1: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0108: TdmRL0108;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
