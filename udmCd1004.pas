unit udmCd1004;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd1004 = class(TDataModule)
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
  dmCd1004: TdmCd1004;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
