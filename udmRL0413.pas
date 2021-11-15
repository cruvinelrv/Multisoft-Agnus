unit udmRL0413;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, SqlExpr, FMTBcd;

type
  TdmRL0413 = class(TDataModule)
    qryVendedor: TSQLQuery;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    qryVendas: TSQLQuery;
    cdsVendas: TClientDataSet;
    cdsVendasVendedor: TStringField;
    cdsVendasValor: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0413: TdmRL0413;

implementation

{$R *.dfm}

end.
