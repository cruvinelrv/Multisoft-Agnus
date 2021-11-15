unit udmCd1006;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd1006 = class(TDataModule)
    qryAssociacao: TSQLQuery;
    qryAssociacaoCODIGO_ASSOCIACAO: TIntegerField;
    qryAssociacaoDESCRICAO_ASSOCIACAO: TStringField;
    qryAssociacaoREPRESENTA_ASSOCIACAO: TStringField;
    qryAssociacaoENDERECO_ASSOCIACAO: TStringField;
    qryAssociacaoBAIRRO_ASSOCIACAO: TStringField;
    qryAssociacaoCIDADE_ASSOCIACAO: TStringField;
    qryAssociacaoESTADO_ASSOCIACAO: TStringField;
    qryAssociacaoCEP_ASSOCIACAO: TStringField;
    qryAssociacaoFONE_ASSOCIACAO: TStringField;
    qryAssociacaoFAX_ASSOCIACAO: TStringField;
    qryAssociacaoOBSERVACAO_ASSOCIACAO: TMemoField;
    dspAssociacao: TDataSetProvider;
    cdsAssociacao: TClientDataSet;
    cdsAssociacaoCODIGO_ASSOCIACAO: TIntegerField;
    cdsAssociacaoDESCRICAO_ASSOCIACAO: TStringField;
    cdsAssociacaoREPRESENTA_ASSOCIACAO: TStringField;
    cdsAssociacaoENDERECO_ASSOCIACAO: TStringField;
    cdsAssociacaoBAIRRO_ASSOCIACAO: TStringField;
    cdsAssociacaoCIDADE_ASSOCIACAO: TStringField;
    cdsAssociacaoESTADO_ASSOCIACAO: TStringField;
    cdsAssociacaoCEP_ASSOCIACAO: TStringField;
    cdsAssociacaoFONE_ASSOCIACAO: TStringField;
    cdsAssociacaoOBSERVACAO_ASSOCIACAO: TMemoField;
    cdsAssociacaoFAX_ASSOCIACAO: TStringField;
    qrySecao: TSQLQuery;
    dspSecao: TDataSetProvider;
    cdsSecao: TClientDataSet;
    cdsSecaoCODIGO_SECAO: TIntegerField;
    cdsSecaoDESCRICAO_SECAO: TStringField;
    cdsSecaoCOD_EMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd1006: TdmCd1006;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
