unit udmRL0205;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, SqlExpr, FMTBcd;

type
  TdmRL0205 = class(TDataModule)
    qryClientes: TSQLQuery;
    dspClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    qryPesquisa1: TSQLQuery;
    dspPesquisa1: TDataSetProvider;
    cdsPesquisa1: TClientDataSet;
    qryPesquisa2: TSQLQuery;
    dspPesquisa2: TDataSetProvider;
    cdsPesquisa2: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0205: TdmRL0205;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
