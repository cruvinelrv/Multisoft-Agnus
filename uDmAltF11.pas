unit uDmAltF11;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmAltF11 = class(TDataModule)
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
  dmAltF11: TdmAltF11;

implementation

{$R *.dfm}

end.
