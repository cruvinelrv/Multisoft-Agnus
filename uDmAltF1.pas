unit uDmAltF1;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TdmAltF1 = class(TDataModule)
    cdsDolar: TClientDataSet;
    cdsDolarDATA_DOLAR: TDateField;
    cdsDolarCCOMPRA_DOLAR: TFMTBCDField;
    cdsDolarCVENDA_DOLAR: TFMTBCDField;
    cdsDolarPCOMPRA_DOLAR: TFMTBCDField;
    cdsDolarPVENDA_DOLAR: TFMTBCDField;
    dspDolar: TDataSetProvider;
    qryDolar: TSQLQuery;
    qryDolarDATA_DOLAR: TDateField;
    qryDolarCCOMPRA_DOLAR: TFMTBCDField;
    qryDolarCVENDA_DOLAR: TFMTBCDField;
    qryDolarPCOMPRA_DOLAR: TFMTBCDField;
    qryDolarPVENDA_DOLAR: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAltF1: TdmAltF1;

implementation

{$R *.dfm}

end.
