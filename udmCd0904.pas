unit udmCd0904;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd0904 = class(TDataModule)
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
  dmCd0904: TdmCd0904;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
