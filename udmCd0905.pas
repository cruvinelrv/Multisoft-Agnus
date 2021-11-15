unit udmCd0905;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd0905 = class(TDataModule)
    qryConta: TSQLQuery;
    qryContaDESCRICAO_CONTA: TStringField;
    qryContaTIPO_CONTA: TStringField;
    dspConta: TDataSetProvider;
    cdsConta: TClientDataSet;
    cdsContaDESCRICAO_CONTA: TStringField;
    cdsContaTIPO_CONTA: TStringField;
    qryContaCODIGO_CONTA: TStringField;
    cdsContaCODIGO_CONTA: TStringField;
    qryConsultaConta: TSQLQuery;
    dspConsultaConta: TDataSetProvider;
    cdsConsultaConta: TClientDataSet;
    qryConsultaContaCODIGO_CONTA: TStringField;
    qryConsultaContaDESCRICAO_CONTA: TStringField;
    qryConsultaContaTIPO_CONTA: TStringField;
    cdsConsultaContaCODIGO_CONTA: TStringField;
    cdsConsultaContaDESCRICAO_CONTA: TStringField;
    cdsConsultaContaTIPO_CONTA: TStringField;
    qryContaTITULO_CONTA: TStringField;
    cdsContaTITULO_CONTA: TStringField;
    qryConta2: TSQLQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    dspConta2: TDataSetProvider;
    cdsConta2: TClientDataSet;
    cdsConta2CODIGO_CONTA: TStringField;
    cdsConta2DESCRICAO_CONTA: TStringField;
    cdsConta2TIPO_CONTA: TStringField;
    cdsConta2TITULO_CONTA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd0905: TdmCd0905;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
