unit udmCd1011;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd1011 = class(TDataModule)
    qryCidade: TSQLQuery;
    qryCidadeCODIGO_CIDADE: TIntegerField;
    qryCidadeDESCRICAO_CIDADE: TStringField;
    qryCidadeCEP_INICIA_CIDADE: TStringField;
    qryCidadeCEP_FINAL_CIDADE: TStringField;
    qryCidadeUF_CIDADE: TStringField;
    qryCidadePAIS_CIDADE: TStringField;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    cdsCidadeCODIGO_CIDADE: TIntegerField;
    cdsCidadeDESCRICAO_CIDADE: TStringField;
    cdsCidadeCEP_INICIA_CIDADE: TStringField;
    cdsCidadeCEP_FINAL_CIDADE: TStringField;
    cdsCidadeUF_CIDADE: TStringField;
    cdsCidadePAIS_CIDADE: TStringField;
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
  dmCd1011: TdmCd1011;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
