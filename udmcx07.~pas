unit udmCx07;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TdmCx07 = class(TDataModule)
    qryCaixa: TSQLQuery;
    cdsCaixa: TClientDataSet;
    cdsCai_Mov: TClientDataSet;
    dspCaixa: TDataSetProvider;
    dspCai_Mov: TDataSetProvider;
    qryCai_Mov: TSQLQuery;
    qryCai_MovCOD_EMPRESA: TIntegerField;
    qryCai_MovDATA_CAIXAMOV: TDateField;
    qryCai_MovVALOR_CAIXAMOV: TFMTBCDField;
    qryCai_MovHORA_CAIXAMOV: TTimeField;
    qryCai_MovCHAVE_CAIXAMOV: TStringField;
    qryCai_MovCAIXA_CAIXAMOV: TIntegerField;
    qryCai_MovUSUARIO_CAIXAMOV: TStringField;
    qryCai_MovTIPO_CAIXAMOV: TStringField;
    qryCai_MovORIGEM_CAIXAMOV: TStringField;
    qryCai_MovTIPO_PAG_CAIXAMOV: TStringField;
    qryCai_MovTITULO_CAIXAMOV: TStringField;
    qryCai_MovTURNO: TStringField;
    cdsCai_MovCOD_EMPRESA: TIntegerField;
    cdsCai_MovDATA_CAIXAMOV: TDateField;
    cdsCai_MovVALOR_CAIXAMOV: TFMTBCDField;
    cdsCai_MovHORA_CAIXAMOV: TTimeField;
    cdsCai_MovCHAVE_CAIXAMOV: TStringField;
    cdsCai_MovCAIXA_CAIXAMOV: TIntegerField;
    cdsCai_MovUSUARIO_CAIXAMOV: TStringField;
    cdsCai_MovTIPO_CAIXAMOV: TStringField;
    cdsCai_MovORIGEM_CAIXAMOV: TStringField;
    cdsCai_MovTIPO_PAG_CAIXAMOV: TStringField;
    cdsCai_MovTITULO_CAIXAMOV: TStringField;
    cdsCai_MovTURNO: TStringField;
    qryCaixaCHAVE_CAIXA: TStringField;
    qryCaixaRETIRADAS_CAIXA: TFMTBCDField;
    qryCaixaENTRADAS_CAIXA: TFMTBCDField;
    cdsCaixaCHAVE_CAIXA: TStringField;
    cdsCaixaRETIRADAS_CAIXA: TFMTBCDField;
    cdsCaixaENTRADAS_CAIXA: TFMTBCDField;
    cdsPagar: TClientDataSet;
    cdsReceber: TClientDataSet;
    dspPagar: TDataSetProvider;
    dspReceber: TDataSetProvider;
    qryPagar: TSQLQuery;
    qryReceber: TSQLQuery;
    qryReceberDUPLICATA_RECEBER: TStringField;
    qryReceberTIPO_BAIXA_RECEBER: TStringField;
    qryReceberMOVIMENTO_RECEBER: TDateField;
    qryReceberVALORPAGO_RECEBER: TFMTBCDField;
    qryReceberPREVISAO_RECEBER: TDateField;
    cdsReceberDUPLICATA_RECEBER: TStringField;
    cdsReceberTIPO_BAIXA_RECEBER: TStringField;
    cdsReceberMOVIMENTO_RECEBER: TDateField;
    cdsReceberVALORPAGO_RECEBER: TFMTBCDField;
    cdsReceberPREVISAO_RECEBER: TDateField;
    qryReceberVENCIMENTO_RECEBER: TDateField;
    cdsReceberVENCIMENTO_RECEBER: TDateField;
    qryPagarDOCUMENTO_PAGAR: TStringField;
    qryPagarTIPO_BAIXA_PAGAR: TStringField;
    qryPagarMOVIMENTO_PAGAR: TDateField;
    qryPagarVALORPAGO_PAGAR: TFMTBCDField;
    qryPagarPREVISAO_PAGAR: TDateField;
    qryPagarVENCIMENTO_PAGAR: TDateField;
    cdsPagarDOCUMENTO_PAGAR: TStringField;
    cdsPagarTIPO_BAIXA_PAGAR: TStringField;
    cdsPagarMOVIMENTO_PAGAR: TDateField;
    cdsPagarVALORPAGO_PAGAR: TFMTBCDField;
    cdsPagarPREVISAO_PAGAR: TDateField;
    cdsPagarVENCIMENTO_PAGAR: TDateField;
    cdsConLan: TClientDataSet;
    cdsResBan: TClientDataSet;
    dspConLan: TDataSetProvider;
    dspResBan: TDataSetProvider;
    qryConLan: TSQLQuery;
    qryResBan: TSQLQuery;
    qryConLanDOCUMENTO_CONLAN: TStringField;
    cdsConLanDOCUMENTO_CONLAN: TStringField;
    qryResBanCHAVE_RESBAN: TStringField;
    cdsResBanCHAVE_RESBAN: TStringField;
    qryResBanCREDITO_RESBAN: TFMTBCDField;
    qryResBanDEBITO_RESBAN: TFMTBCDField;
    cdsResBanCREDITO_RESBAN: TFMTBCDField;
    cdsResBanDEBITO_RESBAN: TFMTBCDField;
    qryCaixaCOD_EMPRESA: TIntegerField;
    cdsCaixaCOD_EMPRESA: TIntegerField;
    qryCaixaCODIGO_CAIXA: TIntegerField;
    cdsCaixaCODIGO_CAIXA: TIntegerField;
    qryCai_MovOBSERVACAO_CAIXAMOV: TStringField;
    cdsCai_MovOBSERVACAO_CAIXAMOV: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCx07: TdmCx07;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
