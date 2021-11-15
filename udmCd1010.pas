unit udmCd1010;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd1010 = class(TDataModule)
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
    qryRamoAtividade: TSQLQuery;
    qryRamoAtividadeCODIGO_ATIVIDADE: TIntegerField;
    qryRamoAtividadeTIPO_ATIVIDADE: TStringField;
    qryRamoAtividadeDESCRICAO_ATIVIDADE: TStringField;
    dspRamoAtividade: TDataSetProvider;
    cdsRamoAtividade: TClientDataSet;
    cdsRamoAtividadeCODIGO_ATIVIDADE: TIntegerField;
    cdsRamoAtividadeTIPO_ATIVIDADE: TStringField;
    cdsRamoAtividadeDESCRICAO_ATIVIDADE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd1010: TdmCd1010;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
