unit uDmCd08;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TdmCd08 = class(TDataModule)
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
    dspVendedor: TDataSetProvider;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd08: TdmCd08;

implementation

{$R *.dfm}

end.
