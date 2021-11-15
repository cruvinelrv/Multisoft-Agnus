unit uDmCx02;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCx02 = class(TDataModule)
    qryContaBanco: TSQLQuery;
    qryContaBancoCODIGO_BANCO: TIntegerField;
    qryContaBancoDESCRICAO_BANCO: TStringField;
    qryContaBancoAGENCIA_BANCO: TStringField;
    qryContaBancoDIGITO1_BANCO: TStringField;
    qryContaBancoCONTA_BANCO: TStringField;
    qryContaBancoDIGITO2_BANCO: TStringField;
    qryContaBancoCONVENIO_BANCO: TStringField;
    qryContaBancoVINCULADO_BANCO: TStringField;
    qryContaBancoCENTRAL_BANCO: TStringField;
    qryContaBancoCODIGO_PORTADOR_BANCO: TFMTBCDField;
    qryContaBancoLIMITE_BANCO: TFMTBCDField;
    qryContaBancoTIPO_BANCO: TStringField;
    qryContaBancoCANHOTO_BANCO: TStringField;
    qryContaBancoCOD_EMPRESA: TIntegerField;
    dspContaBanco: TDataSetProvider;
    cdsContaBanco: TClientDataSet;
    cdsContaBancoCODIGO_BANCO: TIntegerField;
    cdsContaBancoDESCRICAO_BANCO: TStringField;
    cdsContaBancoAGENCIA_BANCO: TStringField;
    cdsContaBancoDIGITO1_BANCO: TStringField;
    cdsContaBancoCONTA_BANCO: TStringField;
    cdsContaBancoDIGITO2_BANCO: TStringField;
    cdsContaBancoCONVENIO_BANCO: TStringField;
    cdsContaBancoVINCULADO_BANCO: TStringField;
    cdsContaBancoCENTRAL_BANCO: TStringField;
    cdsContaBancoCODIGO_PORTADOR_BANCO: TFMTBCDField;
    cdsContaBancoLIMITE_BANCO: TFMTBCDField;
    cdsContaBancoTIPO_BANCO: TStringField;
    cdsContaBancoCANHOTO_BANCO: TStringField;
    cdsContaBancoCOD_EMPRESA: TIntegerField;
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
    dspCaiMov: TDataSetProvider;
    cdsCaiMov: TClientDataSet;
    cdsCaiMovTITULO_CAIXAMOV: TStringField;
    cdsCaiMovCOD_EMPRESA: TIntegerField;
    cdsCaiMovDATA_CAIXAMOV: TDateField;
    cdsCaiMovVALOR_CAIXAMOV: TFMTBCDField;
    cdsCaiMovHORA_CAIXAMOV: TTimeField;
    cdsCaiMovCHAVE_CAIXAMOV: TStringField;
    cdsCaiMovCAIXA_CAIXAMOV: TIntegerField;
    cdsCaiMovUSUARIO_CAIXAMOV: TStringField;
    cdsCaiMovTIPO_CAIXAMOV: TStringField;
    cdsCaiMovORIGEM_CAIXAMOV: TStringField;
    cdsCaiMovTIPO_PAG_CAIXAMOV: TStringField;
    qryCaiMov: TSQLQuery;
    qryCaiMovTITULO_CAIXAMOV: TStringField;
    qryCaiMovCOD_EMPRESA: TIntegerField;
    qryCaiMovDATA_CAIXAMOV: TDateField;
    qryCaiMovVALOR_CAIXAMOV: TFMTBCDField;
    qryCaiMovHORA_CAIXAMOV: TTimeField;
    qryCaiMovCHAVE_CAIXAMOV: TStringField;
    qryCaiMovCAIXA_CAIXAMOV: TIntegerField;
    qryCaiMovUSUARIO_CAIXAMOV: TStringField;
    qryCaiMovTIPO_CAIXAMOV: TStringField;
    qryCaiMovORIGEM_CAIXAMOV: TStringField;
    qryCaiMovTIPO_PAG_CAIXAMOV: TStringField;
    qryResBan: TSQLQuery;
    qryResBanBANCO_RESBAN: TIntegerField;
    qryResBanCHAVE_RESBAN: TStringField;
    qryResBanANTERIOR_RESBAN: TFMTBCDField;
    qryResBanDEBITO_RESBAN: TFMTBCDField;
    qryResBanCREDITO_RESBAN: TFMTBCDField;
    qryResBanCOD_EMPRESA: TIntegerField;
    cdsResBan: TClientDataSet;
    cdsResBanBANCO_RESBAN: TIntegerField;
    cdsResBanCHAVE_RESBAN: TStringField;
    cdsResBanANTERIOR_RESBAN: TFMTBCDField;
    cdsResBanDEBITO_RESBAN: TFMTBCDField;
    cdsResBanCREDITO_RESBAN: TFMTBCDField;
    cdsResBanCOD_EMPRESA: TIntegerField;
    dspResBan: TDataSetProvider;
    qryConLan: TSQLQuery;
    dspConLan: TDataSetProvider;
    cdsConLan: TClientDataSet;
    qryConLanCODIGO_CONLAN: TIntegerField;
    qryConLanCORRENTE_CONLAN: TIntegerField;
    qryConLanCENTRO_CONLAN: TIntegerField;
    qryConLanCLI_FOR_CONLAN: TIntegerField;
    qryConLanTIPO_C_F_CONLAN: TStringField;
    qryConLanDOCUMENTO_CONLAN: TStringField;
    qryConLanDATA_CONLAN: TDateField;
    qryConLanMOVIMENTO_CONLAN: TDateField;
    qryConLanHISTORICO_CONLAN2: TStringField;
    qryConLanHISTORIC2_CONLAN: TStringField;
    qryConLanVALOR_CONLAN: TFMTBCDField;
    qryConLanTIPO_CONLAN: TStringField;
    qryConLanORIGEM_CONLAN: TStringField;
    qryConLanESTORNO_CONLAN: TStringField;
    qryConLanCOD_EMPRESA: TIntegerField;
    qryConLanCONTA_CONLAN: TStringField;
    cdsConLanCODIGO_CONLAN: TIntegerField;
    cdsConLanCORRENTE_CONLAN: TIntegerField;
    cdsConLanCENTRO_CONLAN: TIntegerField;
    cdsConLanCLI_FOR_CONLAN: TIntegerField;
    cdsConLanTIPO_C_F_CONLAN: TStringField;
    cdsConLanDOCUMENTO_CONLAN: TStringField;
    cdsConLanDATA_CONLAN: TDateField;
    cdsConLanMOVIMENTO_CONLAN: TDateField;
    cdsConLanHISTORICO_CONLAN: TStringField;
    cdsConLanHISTORIC2_CONLAN: TStringField;
    cdsConLanVALOR_CONLAN: TFMTBCDField;
    cdsConLanTIPO_CONLAN: TStringField;
    cdsConLanORIGEM_CONLAN: TStringField;
    cdsConLanESTORNO_CONLAN: TStringField;
    cdsConLanCOD_EMPRESA: TIntegerField;
    cdsConLanCONTA_CONLAN: TStringField;
    qryCaiMovOBSERVACAO_CAIXAMOV: TStringField;
    cdsCaiMovOBSERVACAO_CAIXAMOV: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCx02: TdmCx02;

implementation

{$R *.dfm}

end.
