unit udmCd1001;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd1001 = class(TDataModule)
    qryDolar: TSQLQuery;
    qryDolarDATA_DOLAR: TDateField;
    qryDolarCCOMPRA_DOLAR: TFMTBCDField;
    qryDolarCVENDA_DOLAR: TFMTBCDField;
    qryDolarPCOMPRA_DOLAR: TFMTBCDField;
    qryDolarPVENDA_DOLAR: TFMTBCDField;
    dspDolar: TDataSetProvider;
    cdsDolar: TClientDataSet;
    cdsDolarDATA_DOLAR: TDateField;
    cdsDolarCCOMPRA_DOLAR: TFMTBCDField;
    cdsDolarCVENDA_DOLAR: TFMTBCDField;
    cdsDolarPCOMPRA_DOLAR: TFMTBCDField;
    cdsDolarPVENDA_DOLAR: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd1001: TdmCd1001;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
