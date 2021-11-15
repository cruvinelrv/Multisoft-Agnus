unit udmFn10;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmFn10 = class(TDataModule)
    qryEmpresa: TSQLQuery;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    qryEmpresaCODIGO_EMP: TIntegerField;
    qryEmpresaJUROS_EMP: TFMTBCDField;
    qryEmpresaJURO_MIN_EMP: TFMTBCDField;
    qryEmpresaDIAS_EMP: TIntegerField;
    cdsEmpresaCODIGO_EMP: TIntegerField;
    cdsEmpresaJUROS_EMP: TFMTBCDField;
    cdsEmpresaJURO_MIN_EMP: TFMTBCDField;
    cdsEmpresaDIAS_EMP: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn10: TdmFn10;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
