unit udmFn15_1;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmFn15_1 = class(TDataModule)
    qryRecibo: TSQLQuery;
    qryReciboCODIGO_RECIBO: TIntegerField;
    qryReciboNUM_DOC_RECIBO: TStringField;
    qryReciboTIP_DOC_RECIBO: TStringField;
    qryReciboEMIS_PGTO_RECIBO: TDateField;
    qryReciboVENCIMENTO_RECIBO: TDateField;
    qryReciboVALOR_RECIBO: TFMTBCDField;
    qryReciboJUROS_DESC_RECIBO: TFMTBCDField;
    qryReciboVALOR_PAGO_RECIBO: TFMTBCDField;
    qryReciboCLI_FOR_RECIBO: TIntegerField;
    qryReciboFAVORECIDO_RECIBO: TStringField;
    qryReciboCNPJ_RECIBO: TStringField;
    qryReciboENDERECO_RECIBO: TStringField;
    qryReciboBAIRRO_RECIBO: TStringField;
    qryReciboCODIGO_CIDADE: TIntegerField;
    qryReciboESTADO_RECIBO: TStringField;
    qryReciboHISTORICO_RECIBO: TMemoField;
    qryReciboDESCRICAO_CIDADE: TStringField;
    qryReciboNOME_CLIENTE: TStringField;
    qryReciboCOD_EMPRESA: TIntegerField;
    qryReciboHISTORICO2_RECIBO: TMemoField;
    dspRecibo: TDataSetProvider;
    cdsRecibo: TClientDataSet;
    cdsReciboCODIGO_RECIBO: TIntegerField;
    cdsReciboNUM_DOC_RECIBO: TStringField;
    cdsReciboTIP_DOC_RECIBO: TStringField;
    cdsReciboEMIS_PGTO_RECIBO: TDateField;
    cdsReciboVENCIMENTO_RECIBO: TDateField;
    cdsReciboVALOR_RECIBO: TFMTBCDField;
    cdsReciboJUROS_DESC_RECIBO: TFMTBCDField;
    cdsReciboVALOR_PAGO_RECIBO: TFMTBCDField;
    cdsReciboCLI_FOR_RECIBO: TIntegerField;
    cdsReciboFAVORECIDO_RECIBO: TStringField;
    cdsReciboCNPJ_RECIBO: TStringField;
    cdsReciboENDERECO_RECIBO: TStringField;
    cdsReciboBAIRRO_RECIBO: TStringField;
    cdsReciboCODIGO_CIDADE: TIntegerField;
    cdsReciboESTADO_RECIBO: TStringField;
    cdsReciboHISTORICO_RECIBO: TMemoField;
    cdsReciboDESCRICAO_CIDADE: TStringField;
    cdsReciboNOME_CLIENTE: TStringField;
    cdsReciboCOD_EMPRESA: TIntegerField;
    cdsReciboHISTORICO2_RECIBO: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn15_1: TdmFn15_1;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
