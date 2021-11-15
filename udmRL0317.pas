unit udmRL0317;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, SqlExpr;

type
  TdmRL0317 = class(TDataModule)
    qryPesquisa1: TSQLQuery;
    dspPesquisa1: TDataSetProvider;
    cdsPesquisa1: TClientDataSet;
    qryPesquisa2: TSQLQuery;
    dspPesquisa2: TDataSetProvider;
    cdsPesquisa2: TClientDataSet;
    qryProdutos: TSQLQuery;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0317: TdmRL0317;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
