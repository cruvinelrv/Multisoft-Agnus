unit udmRL0119;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmRL0119 = class(TDataModule)
    qryPesquisa1: TSQLQuery;
    dspPesquisa1: TDataSetProvider;
    cdsPesquisa1: TClientDataSet;
    qryPesquisa2: TSQLQuery;
    dspPesquisa2: TDataSetProvider;
    cdsPesquisa2: TClientDataSet;
    qryPesquisa3: TSQLQuery;
    dspPesquisa3: TDataSetProvider;
    cdsPesquisa3: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0119: TdmRL0119;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
