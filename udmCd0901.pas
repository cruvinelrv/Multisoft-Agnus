unit udmCd0901;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd0901 = class(TDataModule)
    qryCentroCusto: TSQLQuery;
    qryCentroCustoCODIGO_CENTRO: TIntegerField;
    qryCentroCustoDESCRICAO_CENTRO: TStringField;
    dspCentroCusto: TDataSetProvider;
    cdsCentroCusto: TClientDataSet;
    cdsCentroCustoCODIGO_CENTRO: TIntegerField;
    cdsCentroCustoDESCRICAO_CENTRO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd0901: TdmCd0901;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
