unit udmCd1005;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmCd1005 = class(TDataModule)
    qryVeiculos: TSQLQuery;
    dspVeiculos: TDataSetProvider;
    cdsVeiculos: TClientDataSet;
    cdsVeiculosCODIGO_VEICULO: TIntegerField;
    cdsVeiculosDESCRICAO_VEICULO: TStringField;
    cdsVeiculosCAPACIDADE_VEICULO: TFMTBCDField;
    cdsVeiculosFABRICA_VEICULO: TStringField;
    cdsVeiculosANO_VEICULO: TIntegerField;
    cdsVeiculosCOD_EMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd1005: TdmCd1005;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
