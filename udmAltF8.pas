unit udmAltF8;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmAltF8 = class(TDataModule)
    qryTipoDocumento: TSQLQuery;
    qryTipoDocumentoCODIGO_TIPODOCUMENTO: TIntegerField;
    qryTipoDocumentoDESCRICAO_TIPODOCUMENTO: TStringField;
    dspTipoDocumento: TDataSetProvider;
    cdsTipoDocumento: TClientDataSet;
    cdsTipoDocumentoCODIGO_TIPODOCUMENTO: TIntegerField;
    cdsTipoDocumentoDESCRICAO_TIPODOCUMENTO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAltF8: TdmAltF8;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
