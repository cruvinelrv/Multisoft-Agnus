unit udmAltF9;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmAltF9 = class(TDataModule)
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
  dmAltF9: TdmAltF9;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
