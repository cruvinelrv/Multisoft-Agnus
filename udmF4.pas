unit udmF4;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmF4 = class(TDataModule)
    qryVendedor: TSQLQuery;
    qryVendedorCODIGO_VENDEDOR: TIntegerField;
    qryVendedorNOME_VENDEDOR: TStringField;
    qryVendedorCHAVE_VENDEDOR: TStringField;
    qryVendedorSITUACAO_VENDEDOR: TStringField;
    qryVendedorFUNCAO_VENDEDOR: TStringField;
    qryVendedorTABELA_VENDEDOR: TIntegerField;
    qryVendedorCODCLI_VENDEDOR: TIntegerField;
    qryVendedorDEPARTAMENTO_VENDEDOR: TStringField;
    qryVendedorENDERECO_VENDEDOR: TStringField;
    qryVendedorVLR_HORA_VENDEDOR: TFMTBCDField;
    qryVendedorCOD_EMPRESA: TIntegerField;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    cdsVendedorCODIGO_VENDEDOR: TIntegerField;
    cdsVendedorNOME_VENDEDOR: TStringField;
    cdsVendedorCHAVE_VENDEDOR: TStringField;
    cdsVendedorSITUACAO_VENDEDOR: TStringField;
    cdsVendedorFUNCAO_VENDEDOR: TStringField;
    cdsVendedorTABELA_VENDEDOR: TIntegerField;
    cdsVendedorCODCLI_VENDEDOR: TIntegerField;
    cdsVendedorDEPARTAMENTO_VENDEDOR: TStringField;
    cdsVendedorENDERECO_VENDEDOR: TStringField;
    cdsVendedorVLR_HORA_VENDEDOR: TFMTBCDField;
    cdsVendedorCOD_EMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmF4: TdmF4;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
