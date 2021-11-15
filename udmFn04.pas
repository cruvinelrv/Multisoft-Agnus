unit udmFn04;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmFn04 = class(TDataModule)
    qryConlan: TSQLQuery;
    qryConlanCODIGO_CONLAN: TIntegerField;
    qryConlanCORRENTE_CONLAN: TIntegerField;
    qryConlanDATA_CONLAN: TDateField;
    qryConlanMOVIMENTO_CONLAN: TDateField;
    qryConlanHISTORICO_CONLAN: TStringField;
    qryConlanVALOR_CONLAN: TFMTBCDField;
    qryConlanTIPO_CONLAN: TStringField;
    qryConlanORIGEM_CONLAN: TStringField;
    qryConlanCOD_EMPRESA: TIntegerField;
    qryConlanDESCRICAO_BANCO: TStringField;
    dspConlan: TDataSetProvider;
    cdsConlan: TClientDataSet;
    cdsConlanCODIGO_CONLAN: TIntegerField;
    cdsConlanCORRENTE_CONLAN: TIntegerField;
    cdsConlanDATA_CONLAN: TDateField;
    cdsConlanMOVIMENTO_CONLAN: TDateField;
    cdsConlanHISTORICO_CONLAN: TStringField;
    cdsConlanVALOR_CONLAN: TFMTBCDField;
    cdsConlanTIPO_CONLAN: TStringField;
    cdsConlanORIGEM_CONLAN: TStringField;
    cdsConlanCOD_EMPRESA: TIntegerField;
    cdsConlanDESCRICAO_BANCO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn04: TdmFn04;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
