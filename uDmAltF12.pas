unit uDmAltF12;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmAltF12 = class(TDataModule)
    qryParceiro: TSQLQuery;
    qryParceiroCODIGO_PARCEIRO: TIntegerField;
    qryParceiroNOME_PARCEIRO: TStringField;
    qryParceiroENDERECO_PARCEIRO: TStringField;
    qryParceiroCIDADE_PARCEIRO: TStringField;
    qryParceiroESTADO_PARCEIRO: TStringField;
    qryParceiroTELEFONE_PARCEIRO: TStringField;
    qryParceiroCONTATO_PARCEIRO: TStringField;
    qryParceiroRAMO_PARCEIRO: TIntegerField;
    qryParceiroCELULAR_PARCEIRO: TStringField;
    qryParceiroEMAIL_PARCEIRO: TStringField;
    qryParceiroCOD_EMPRESA: TIntegerField;
    dsParceiro: TDataSetProvider;
    cdsParceiro: TClientDataSet;
    cdsParceiroCODIGO_PARCEIRO: TIntegerField;
    cdsParceiroNOME_PARCEIRO: TStringField;
    cdsParceiroENDERECO_PARCEIRO: TStringField;
    cdsParceiroCIDADE_PARCEIRO: TStringField;
    cdsParceiroESTADO_PARCEIRO: TStringField;
    cdsParceiroTELEFONE_PARCEIRO: TStringField;
    cdsParceiroCONTATO_PARCEIRO: TStringField;
    cdsParceiroRAMO_PARCEIRO: TIntegerField;
    cdsParceiroCELULAR_PARCEIRO: TStringField;
    cdsParceiroEMAIL_PARCEIRO: TStringField;
    cdsParceiroCOD_EMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAltF12: TdmAltF12;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
