unit udmFn06;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmFn06 = class(TDataModule)
    qryEmpresa: TSQLQuery;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    qryEmpresaCODIGO_EMP: TIntegerField;
    qryEmpresaAPAGA_LANC_EMP: TStringField;
    cdsEmpresaCODIGO_EMP: TIntegerField;
    cdsEmpresaAPAGA_LANC_EMP: TStringField;
    qryConlan: TSQLQuery;
    dspConlan: TDataSetProvider;
    cdsConlan: TClientDataSet;
    qryPagar: TSQLQuery;
    dspPagar: TDataSetProvider;
    cdsPagar: TClientDataSet;
    qryReceber: TSQLQuery;
    dspReceber: TDataSetProvider;
    cdsReceber: TClientDataSet;
    qryParcial: TSQLQuery;
    dspParcial: TDataSetProvider;
    cdsParcial: TClientDataSet;
    qryResban: TSQLQuery;
    dspResban: TDataSetProvider;
    cdsResban: TClientDataSet;
    qryConlanCORRENTE_CONLAN: TIntegerField;
    qryConlanDATA_CONLAN: TDateField;
    qryConlanMOVIMENTO_CONLAN: TDateField;
    qryConlanHISTORICO_CONLAN: TStringField;
    qryConlanVALOR_CONLAN: TFMTBCDField;
    qryConlanTIPO_CONLAN: TStringField;
    qryConlanORIGEM_CONLAN: TStringField;
    qryConlanCOD_EMPRESA: TIntegerField;
    qryConlanDESCRICAO_BANCO: TStringField;
    qryConlanDOCUMENTO_CONLAN: TStringField;
    qryConlanESTORNO_CONLAN: TStringField;
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
    cdsConlanDOCUMENTO_CONLAN: TStringField;
    cdsConlanESTORNO_CONLAN: TStringField;
    qryPagarDOCUMENTO_PAGAR: TStringField;
    qryPagarVALORPAGO_PAGAR: TFMTBCDField;
    qryPagarMOVIMENTO_PAGAR: TDateField;
    qryPagarHISTORICO_PAGAR: TMemoField;
    qryPagarTIPO_BAIXA_PAGAR: TStringField;
    qryPagarPREVISAO_PAGAR: TDateField;
    qryPagarPARCIAL_PAGAR: TFMTBCDField;
    qryPagarVENCIMENTO_PAGAR: TDateField;
    qryPagarCOD_EMPRESA_PAGAR: TIntegerField;
    cdsPagarDOCUMENTO_PAGAR: TStringField;
    cdsPagarVALORPAGO_PAGAR: TFMTBCDField;
    cdsPagarMOVIMENTO_PAGAR: TDateField;
    cdsPagarHISTORICO_PAGAR: TMemoField;
    cdsPagarTIPO_BAIXA_PAGAR: TStringField;
    cdsPagarPREVISAO_PAGAR: TDateField;
    cdsPagarPARCIAL_PAGAR: TFMTBCDField;
    cdsPagarVENCIMENTO_PAGAR: TDateField;
    cdsPagarCOD_EMPRESA_PAGAR: TIntegerField;
    qryReceberDUPLICATA_RECEBER: TStringField;
    qryReceberVALORPAGO_RECEBER: TFMTBCDField;
    qryReceberMOVIMENTO_RECEBER: TDateField;
    qryReceberTIPO_BAIXA_RECEBER: TStringField;
    qryReceberPREVISAO_RECEBER: TDateField;
    qryReceberVENCIMENTO_RECEBER: TDateField;
    qryReceberPARCIAL_RECEBER: TFMTBCDField;
    cdsReceberDUPLICATA_RECEBER: TStringField;
    cdsReceberVALORPAGO_RECEBER: TFMTBCDField;
    cdsReceberMOVIMENTO_RECEBER: TDateField;
    cdsReceberTIPO_BAIXA_RECEBER: TStringField;
    cdsReceberPREVISAO_RECEBER: TDateField;
    cdsReceberVENCIMENTO_RECEBER: TDateField;
    cdsReceberPARCIAL_RECEBER: TFMTBCDField;
    qryParcialCODIGO_PARCIAL: TIntegerField;
    qryParcialDUPLICATA_PARCIAL: TStringField;
    cdsParcialCODIGO_PARCIAL: TIntegerField;
    cdsParcialDUPLICATA_PARCIAL: TStringField;
    qryResbanCHAVE_RESBAN: TStringField;
    qryResbanCREDITO_RESBAN: TFMTBCDField;
    qryResbanDEBITO_RESBAN: TFMTBCDField;
    cdsResbanCHAVE_RESBAN: TStringField;
    cdsResbanCREDITO_RESBAN: TFMTBCDField;
    cdsResbanDEBITO_RESBAN: TFMTBCDField;
    qryConlanCENTRO_CONLAN: TIntegerField;
    qryConlanHISTORIC2_CONLAN: TStringField;
    cdsConlanCENTRO_CONLAN: TIntegerField;
    cdsConlanHISTORIC2_CONLAN: TStringField;
    qryConlan2: TSQLQuery;
    dspConlan2: TDataSetProvider;
    cdsConlan2: TClientDataSet;
    qryConlan2CODIGO_CONLAN: TIntegerField;
    qryConlan2CORRENTE_CONLAN: TIntegerField;
    qryConlan2DATA_CONLAN: TDateField;
    qryConlan2MOVIMENTO_CONLAN: TDateField;
    qryConlan2HISTORICO_CONLAN: TStringField;
    qryConlan2VALOR_CONLAN: TFMTBCDField;
    qryConlan2TIPO_CONLAN: TStringField;
    qryConlan2ORIGEM_CONLAN: TStringField;
    qryConlan2COD_EMPRESA: TIntegerField;
    qryConlan2DESCRICAO_BANCO: TStringField;
    qryConlan2DOCUMENTO_CONLAN: TStringField;
    qryConlan2ESTORNO_CONLAN: TStringField;
    qryConlan2CENTRO_CONLAN: TIntegerField;
    qryConlan2HISTORIC2_CONLAN: TStringField;
    cdsConlan2CODIGO_CONLAN: TIntegerField;
    cdsConlan2CORRENTE_CONLAN: TIntegerField;
    cdsConlan2DATA_CONLAN: TDateField;
    cdsConlan2MOVIMENTO_CONLAN: TDateField;
    cdsConlan2HISTORICO_CONLAN: TStringField;
    cdsConlan2VALOR_CONLAN: TFMTBCDField;
    cdsConlan2TIPO_CONLAN: TStringField;
    cdsConlan2ORIGEM_CONLAN: TStringField;
    cdsConlan2COD_EMPRESA: TIntegerField;
    cdsConlan2DESCRICAO_BANCO: TStringField;
    cdsConlan2DOCUMENTO_CONLAN: TStringField;
    cdsConlan2ESTORNO_CONLAN: TStringField;
    cdsConlan2CENTRO_CONLAN: TIntegerField;
    cdsConlan2HISTORIC2_CONLAN: TStringField;
    cdsGrid: TClientDataSet;
    cdsGridCODIGO_CONLAN: TIntegerField;
    cdsGridCORRENTE_CONLAN: TIntegerField;
    cdsGridDATA_CONLAN: TDateField;
    cdsGridMOVIMENTO_CONLAN: TDateField;
    cdsGridVALOR_CONLAN: TFloatField;
    cdsGridDOCUMENTO_CONLAN: TStringField;
    qryConlanCLI_FOR_CONLAN: TIntegerField;
    qryConlan2CLI_FOR_CONLAN: TIntegerField;
    qryConlanTIPO_CLIENTE: TIntegerField;
    cdsConlanCLI_FOR_CONLAN: TIntegerField;
    cdsConlanTIPO_CLIENTE: TIntegerField;
    cdsGridCENTRO_CONLAN: TIntegerField;
    cdsGridTIPO_CONLAN: TStringField;
    cdsGridCLI_FOR_CONLAN: TStringField;
    cdsGridHISTORICO_CONLAN: TStringField;
    qryConlan2TIPO_CLIENTE: TIntegerField;
    qryConlan2DESCRICAO_CONTA: TStringField;
    qryConlan2DESCRICAO_CENTRO: TStringField;
    cdsConlan2CLI_FOR_CONLAN: TIntegerField;
    cdsConlan2TIPO_CLIENTE: TIntegerField;
    cdsConlan2DESCRICAO_CONTA: TStringField;
    cdsConlan2DESCRICAO_CENTRO: TStringField;
    cdsGridCLIENTE: TIntegerField;
    cdsGridFORNECEDOR: TIntegerField;
    qryConlanCODIGO_CONLAN: TIntegerField;
    qryConlan2CONTA_CONLAN: TStringField;
    cdsConlan2CONTA_CONLAN: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn06: TdmFn06;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
