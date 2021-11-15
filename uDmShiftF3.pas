unit uDmShiftF3;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmShiftF3 = class(TDataModule)
    qrySecao: TSQLQuery;
    dspSecao: TDataSetProvider;
    cdsSecao: TClientDataSet;
    cdsSecaoCODIGO_SECAO: TIntegerField;
    cdsSecaoDESCRICAO_SECAO: TStringField;
    cdsSecaoCOD_EMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmShiftF3: TdmShiftF3;

implementation

{$R *.dfm}

end.
