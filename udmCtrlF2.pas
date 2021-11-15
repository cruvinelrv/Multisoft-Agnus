unit udmCtrlF2;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCtrlF2 = class(TDataModule)
    qryNatureza: TSQLQuery;
    dspNatureza: TDataSetProvider;
    cdsNatureza: TClientDataSet;
    qryNaturezaCOD_ANT: TStringField;
    qryNaturezaCODIGO_NAT: TStringField;
    qryNaturezaOPERACAO_NAT: TStringField;
    qryNaturezaDESCRICAO_NAT: TStringField;
    cdsNaturezaCOD_ANT: TStringField;
    cdsNaturezaCODIGO_NAT: TStringField;
    cdsNaturezaOPERACAO_NAT: TStringField;
    cdsNaturezaDESCRICAO_NAT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCtrlF2: TdmCtrlF2;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
