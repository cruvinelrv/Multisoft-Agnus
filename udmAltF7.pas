unit udmAltF7;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmAltF7 = class(TDataModule)
    qryContaBanco: TSQLQuery;
    qryContaBancoCODIGO_BANCO: TIntegerField;
    qryContaBancoDESCRICAO_BANCO: TStringField;
    qryContaBancoAGENCIA_BANCO: TStringField;
    qryContaBancoDIGITO1_BANCO: TStringField;
    qryContaBancoCONTA_BANCO: TStringField;
    qryContaBancoDIGITO2_BANCO: TStringField;
    qryContaBancoCONVENIO_BANCO: TStringField;
    qryContaBancoVINCULADO_BANCO: TStringField;
    qryContaBancoCENTRAL_BANCO: TStringField;
    qryContaBancoCODIGO_PORTADOR_BANCO: TFMTBCDField;
    qryContaBancoLIMITE_BANCO: TFMTBCDField;
    qryContaBancoTIPO_BANCO: TStringField;
    qryContaBancoCANHOTO_BANCO: TStringField;
    qryContaBancoCOD_EMPRESA: TIntegerField;
    dspContaBanco: TDataSetProvider;
    cdsContaBanco: TClientDataSet;
    cdsContaBancoCODIGO_BANCO: TIntegerField;
    cdsContaBancoDESCRICAO_BANCO: TStringField;
    cdsContaBancoAGENCIA_BANCO: TStringField;
    cdsContaBancoDIGITO1_BANCO: TStringField;
    cdsContaBancoCONTA_BANCO: TStringField;
    cdsContaBancoDIGITO2_BANCO: TStringField;
    cdsContaBancoCONVENIO_BANCO: TStringField;
    cdsContaBancoVINCULADO_BANCO: TStringField;
    cdsContaBancoCENTRAL_BANCO: TStringField;
    cdsContaBancoCODIGO_PORTADOR_BANCO: TFMTBCDField;
    cdsContaBancoLIMITE_BANCO: TFMTBCDField;
    cdsContaBancoTIPO_BANCO: TStringField;
    cdsContaBancoCANHOTO_BANCO: TStringField;
    cdsContaBancoCOD_EMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAltF7: TdmAltF7;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
