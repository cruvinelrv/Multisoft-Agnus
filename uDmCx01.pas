unit uDmCx01;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient;

type
  TdmCx01 = class(TDataModule)
    cdsCaixa: TClientDataSet;
    cdsCaixaCOD_EMPRESA: TIntegerField;
    cdsCaixaCHAVE_CAIXA: TStringField;
    cdsCaixaCODIGO_CAIXA: TIntegerField;
    cdsCaixaDINHEIRO_TUR_CAIXA: TFMTBCDField;
    cdsCaixaENTRADA_TUR_CAIXA: TFMTBCDField;
    cdsCaixaCARTAO_TUR_CAIXA: TFMTBCDField;
    cdsCaixaPREDATADO_TUR_CAIXA: TFMTBCDField;
    cdsCaixaCONVENIO_TUR_CAIXA: TFMTBCDField;
    cdsCaixaPRAZO_TUR_CAIXA: TFMTBCDField;
    cdsCaixaOUTRASTUR_CAIXA: TFMTBCDField;
    cdsCaixaDEVOLUCAOTUR_CAIXA: TFMTBCDField;
    cdsCaixaSALDO_INICIAL_CAIXA: TFMTBCDField;
    cdsCaixaENTRADAS_CAIXA: TFMTBCDField;
    cdsCaixaRETIRADAS_CAIXA: TFMTBCDField;
    cdsCaixaENTREGA_CAIXA: TFMTBCDField;
    cdsCaixaTROCO_ENTREGA_CAIXA: TFMTBCDField;
    cdsCaixaRECOUTALOJA_CAIXA: TFMTBCDField;
    cdsCaixaPRESTRECEBIDA_CAIXA: TFMTBCDField;
    cdsCaixaPRESTATRAZO_CAIXA: TFMTBCDField;
    cdsCaixaTAXA_CAIXA: TFMTBCDField;
    cdsCaixaPRESTANT_CAIXA: TFMTBCDField;
    cdsCaixaREMECABANCO_CAIXA: TFMTBCDField;
    cdsCaixaTRANSGERENCIA_CAIXA: TFMTBCDField;
    cdsCaixaDESPESADIA_CAIXA: TFMTBCDField;
    cdsCaixaDINHEIRO_CAIXA: TFMTBCDField;
    cdsCaixaRETCARTAO_CAIXA: TFMTBCDField;
    cdsCaixaSALDOINICHEQUE: TFMTBCDField;
    cdsCaixaCHEQUES_CAIXA: TFMTBCDField;
    dspCaixa: TDataSetProvider;
    qryCaixa: TSQLQuery;
    qryCaixaCOD_EMPRESA: TIntegerField;
    qryCaixaCHAVE_CAIXA: TStringField;
    qryCaixaCODIGO_CAIXA: TIntegerField;
    qryCaixaDINHEIRO_TUR_CAIXA: TFMTBCDField;
    qryCaixaENTRADA_TUR_CAIXA: TFMTBCDField;
    qryCaixaCARTAO_TUR_CAIXA: TFMTBCDField;
    qryCaixaPREDATADO_TUR_CAIXA: TFMTBCDField;
    qryCaixaCONVENIO_TUR_CAIXA: TFMTBCDField;
    qryCaixaPRAZO_TUR_CAIXA: TFMTBCDField;
    qryCaixaOUTRASTUR_CAIXA: TFMTBCDField;
    qryCaixaDEVOLUCAOTUR_CAIXA: TFMTBCDField;
    qryCaixaSALDO_INICIAL_CAIXA: TFMTBCDField;
    qryCaixaENTRADAS_CAIXA: TFMTBCDField;
    qryCaixaRETIRADAS_CAIXA: TFMTBCDField;
    qryCaixaENTREGA_CAIXA: TFMTBCDField;
    qryCaixaTROCO_ENTREGA_CAIXA: TFMTBCDField;
    qryCaixaRECOUTALOJA_CAIXA: TFMTBCDField;
    qryCaixaPRESTRECEBIDA_CAIXA: TFMTBCDField;
    qryCaixaPRESTATRAZO_CAIXA: TFMTBCDField;
    qryCaixaTAXA_CAIXA: TFMTBCDField;
    qryCaixaPRESTANT_CAIXA: TFMTBCDField;
    qryCaixaREMECABANCO_CAIXA: TFMTBCDField;
    qryCaixaTRANSGERENCIA_CAIXA: TFMTBCDField;
    qryCaixaDESPESADIA_CAIXA: TFMTBCDField;
    qryCaixaDINHEIRO_CAIXA: TFMTBCDField;
    qryCaixaRETCARTAO_CAIXA: TFMTBCDField;
    qryCaixaSALDOINICHEQUE: TFMTBCDField;
    qryCaixaCHEQUES_CAIXA: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCx01: TdmCx01;

implementation

{$R *.dfm}

end.
