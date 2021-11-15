unit udmRL0322;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, SqlExpr, FMTBcd;

type
  TdmRL0322 = class(TDataModule)
    qryProdutos: TSQLQuery;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    qryPesquisa1: TSQLQuery;
    dspPesquisa1: TDataSetProvider;
    cdsPesquisa1: TClientDataSet;
    qryVendas: TSQLQuery;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    qryAjuste: TSQLQuery;
    dspAjuste: TDataSetProvider;
    cdsAjuste: TClientDataSet;
    qryCompras: TSQLQuery;
    dspCompras: TDataSetProvider;
    cdsCompras: TClientDataSet;
    qryBalanco: TSQLQuery;
    dspBalanco: TDataSetProvider;
    cdsBalanco: TClientDataSet;
    qryDevVenda: TSQLQuery;
    dspDevVenda: TDataSetProvider;
    cdsDevVenda: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0322: TdmRL0322;

implementation

{$R *.dfm}

end.
