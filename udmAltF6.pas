unit udmAltF6;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmAltF6 = class(TDataModule)
    qryPortador: TSQLQuery;
    qryPortadorCODIGO_PORTADOR: TIntegerField;
    qryPortadorDESCRICAO_PORTADOR: TStringField;
    qryPortadorTIPO_PORTADOR: TStringField;
    dspPortador: TDataSetProvider;
    cdsPortador: TClientDataSet;
    cdsPortadorCODIGO_PORTADOR: TIntegerField;
    cdsPortadorDESCRICAO_PORTADOR: TStringField;
    cdsPortadorTIPO_PORTADOR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAltF6: TdmAltF6;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
