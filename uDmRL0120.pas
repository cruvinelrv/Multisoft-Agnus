unit uDmRL0120;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmRL0120 = class(TDataModule)
    qryPesquisa1: TSQLQuery;
    cdsPesquisa1: TClientDataSet;
    dspPesquisa1: TDataSetProvider;
    qryPesquisa2: TSQLQuery;
    dspPesquisa2: TDataSetProvider;
    cdsPesquisa2: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0120: TdmRL0120;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
