unit udmRL0104;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmRL0104 = class(TDataModule)
    qryPesquisa2: TSQLQuery;
    dspPesquisa2: TDataSetProvider;
    cdsPesquisa2: TClientDataSet;
    qryPesquisa1: TSQLQuery;
    dspPesquisa1: TDataSetProvider;
    cdsPesquisa1: TClientDataSet;
    qryPesquisa3: TSQLQuery;
    dspPesquisa3: TDataSetProvider;
    cdsPesquisa3: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0104: TdmRL0104;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
