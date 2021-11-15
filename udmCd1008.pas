unit udmCd1008;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd1008 = class(TDataModule)
    qryObservacao: TSQLQuery;
    qryObservacaoCODIGO_OBSERVACAO: TIntegerField;
    qryObservacaoTEXTO_OBSERVACAO: TMemoField;
    qryObservacaoDESCRICAO_OBSERVACAO: TStringField;
    dspObservacao: TDataSetProvider;
    cdsObservacao: TClientDataSet;
    cdsObservacaoCODIGO_OBSERVACAO: TIntegerField;
    cdsObservacaoTEXTO_OBSERVACAO: TMemoField;
    cdsObservacaoDESCRICAO_OBSERVACAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd1008: TdmCd1008;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
