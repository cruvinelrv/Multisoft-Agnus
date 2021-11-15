unit udmCd13;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd13 = class(TDataModule)
    qryMarca: TSQLQuery;
    dspMarca: TDataSetProvider;
    cdsMarca: TClientDataSet;
    qryMarcaCODIGO_MARCA: TIntegerField;
    qryMarcaDESCRICAO_MARCA: TStringField;
    cdsMarcaCODIGO_MARCA: TIntegerField;
    cdsMarcaDESCRICAO_MARCA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd13: TdmCd13;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
