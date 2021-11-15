unit udmCd1002;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd1002 = class(TDataModule)
    qryEstados: TSQLQuery;
    qryEstadosCODIGO_ESTADO: TStringField;
    qryEstadosNOME_ESTADO: TStringField;
    qryEstadosICMS_VD_CT: TFMTBCDField;
    qryEstadosICMS_VD_NC: TFMTBCDField;
    dspEstados: TDataSetProvider;
    cdsEstados: TClientDataSet;
    cdsEstadosCODIGO_ESTADO: TStringField;
    cdsEstadosNOME_ESTADO: TStringField;
    cdsEstadosICMS_VD_CT: TFMTBCDField;
    cdsEstadosICMS_VD_NC: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd1002: TdmCd1002;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
