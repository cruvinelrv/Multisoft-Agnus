{A conexão xxxPagarDemo foi criada para verificar o total de registros da tabela
 P_Pagar para poder controlar a inserção de apenas 10 registros se for versão demo.}

unit udmFn0101;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, Dialogs;

type
  TdmFn0101 = class(TDataModule)
    qryPagar: TSQLQuery;
    qryPagarDOCUMENTO_PAGAR: TStringField;
    qryPagarNOTAFISCAL: TIntegerField;
    qryPagarTIPO_PAGAR: TIntegerField;
    qryPagarCENTRO_PAGAR: TIntegerField;
    qryPagarPORTADOR_PAGAR: TIntegerField;
    qryPagarCORRENTE_PAGAR: TIntegerField;
    qryPagarFORNECEDOR_PAGAR: TIntegerField;
    qryPagarENTRADA_PAGAR: TDateField;
    qryPagarEMISSAO_PAGAR: TDateField;
    qryPagarVENCIMENTO_PAGAR: TDateField;
    qryPagarPREVISAO_PAGAR: TDateField;
    qryPagarVALOR_PAGAR: TFMTBCDField;
    qryPagarPARCIAL_PAGAR: TFMTBCDField;
    qryPagarMORA_DIA_PAGAR: TFMTBCDField;
    qryPagarVALORPAGO_PAGAR: TFMTBCDField;
    qryPagarFORMAPAGTO_PAGAR: TStringField;
    qryPagarCHAVE_PAGAR: TStringField;
    qryPagarTIPO_BAIXA_PAGAR: TStringField;
    qryPagarMOVIMENTO_PAGAR: TDateField;
    qryPagarCAIXA_PAGAR: TIntegerField;
    qryPagarCOD_EMPRESA_PAGAR: TIntegerField;
    qryPagarSALDO_PAGAR: TFMTBCDField;
    qryPagarCAMPO_BUSCA: TIntegerField;
    qryPagarDESCRICAO_CPAGAMENTO: TStringField;
    qryPagarNOME_CLIENTE: TStringField;
    qryPagarDESCRICAO_BANCO: TStringField;
    qryPagarDATA_CADASTRO: TDateField;
    qryPagarTIPODOCUMENTO_PAGAR: TIntegerField;
    qryPagarDESCRICAO_PORTADOR: TStringField;
    qryPagarDESCRICAO_CENTRO: TStringField;
    qryPagarDESCRICAO_CONTA: TStringField;
    qryPagarDESCRICAO_TIPODOCUMENTO: TStringField;
    qryPagarMULTA_PAGAR: TFMTBCDField;
    qryPagarHISTORICO_PAGAR: TMemoField;
    dspPagar: TDataSetProvider;
    cdsPagar: TClientDataSet;
    cdsPagarDOCUMENTO_PAGAR: TStringField;
    cdsPagarNOTAFISCAL: TIntegerField;
    cdsPagarTIPO_PAGAR: TIntegerField;
    cdsPagarCENTRO_PAGAR: TIntegerField;
    cdsPagarPORTADOR_PAGAR: TIntegerField;
    cdsPagarCORRENTE_PAGAR: TIntegerField;
    cdsPagarFORNECEDOR_PAGAR: TIntegerField;
    cdsPagarENTRADA_PAGAR: TDateField;
    cdsPagarEMISSAO_PAGAR: TDateField;
    cdsPagarVENCIMENTO_PAGAR: TDateField;
    cdsPagarPREVISAO_PAGAR: TDateField;
    cdsPagarVALOR_PAGAR: TFMTBCDField;
    cdsPagarPARCIAL_PAGAR: TFMTBCDField;
    cdsPagarMORA_DIA_PAGAR: TFMTBCDField;
    cdsPagarVALORPAGO_PAGAR: TFMTBCDField;
    cdsPagarFORMAPAGTO_PAGAR: TStringField;
    cdsPagarCHAVE_PAGAR: TStringField;
    cdsPagarTIPO_BAIXA_PAGAR: TStringField;
    cdsPagarMOVIMENTO_PAGAR: TDateField;
    cdsPagarCAIXA_PAGAR: TIntegerField;
    cdsPagarCOD_EMPRESA_PAGAR: TIntegerField;
    cdsPagarSALDO_PAGAR: TFMTBCDField;
    cdsPagarCAMPO_BUSCA: TIntegerField;
    cdsPagarDESCRICAO_CPAGAMENTO: TStringField;
    cdsPagarNOME_CLIENTE: TStringField;
    cdsPagarDESCRICAO_BANCO: TStringField;
    cdsPagarDATA_CADASTRO: TDateField;
    cdsPagarTIPODOCUMENTO_PAGAR: TIntegerField;
    cdsPagarDESCRICAO_PORTADOR: TStringField;
    cdsPagarDESCRICAO_CENTRO: TStringField;
    cdsPagarDESCRICAO_CONTA: TStringField;
    cdsPagarDESCRICAO_TIPODOCUMENTO: TStringField;
    cdsPagarMULTA_PAGAR: TFMTBCDField;
    cdsPagarHISTORICO_PAGAR: TMemoField;
    cdsTemporario: TClientDataSet;
    cdsTemporarioDOCUMENTO_PAGAR: TStringField;
    cdsTemporarioNOTAFISCAL: TIntegerField;
    cdsTemporarioTIPO_PAGAR: TIntegerField;
    cdsTemporarioCENTRO_PAGAR: TStringField;
    cdsTemporarioPORTA_PAGAR: TStringField;
    cdsTemporarioCONTA_PAGAR: TStringField;
    cdsTemporarioCORRENTE_PAGAR: TStringField;
    cdsTemporarioFORNECEDOR_PAGAR: TStringField;
    cdsTemporarioENTRADA_PAGAR: TStringField;
    cdsTemporarioEMISSAO_PAGAR: TDateField;
    cdsTemporarioVENCIMENTO_PAGAR: TDateField;
    cdsTemporarioPREVISAO_PAGAR: TDateField;
    cdsTemporarioVALOR_PAGAR: TStringField;
    cdsTemporarioPARCIAL_PAGAR: TStringField;
    cdsTemporarioMORA_DIA_PAGAR: TStringField;
    cdsTemporarioVALORPAGO_PAGAR: TStringField;
    cdsTemporarioFORMAPAGTO_PAGAR: TStringField;
    cdsTemporarioCHAVE_PAGAR: TStringField;
    cdsTemporarioHISTORICO_PAGAR: TMemoField;
    cdsTemporarioTIPO_BAIXA_PAGAR: TStringField;
    cdsTemporarioMOVIMENTO_PAGAR: TStringField;
    cdsTemporarioCAIXA_PAGAR: TStringField;
    cdsTemporarioCOD_EMPRESA_PAGAR: TStringField;
    cdsTemporarioDATA_CADASTRO: TDateField;
    cdsTemporarioSALDO_PAGAR: TStringField;
    cdsTemporarioTIPODOCUMENTO_PAGAR: TStringField;
    cdsTemporarioMULTA_PAGAR: TStringField;
    cdsParcelas: TClientDataSet;
    cdsParcelasNUM_DOCUMENTO: TStringField;
    cdsParcelasDATA_VENCIMENTO: TDateField;
    cdsParcelasMEMO: TStringField;
    qryParcelas2: TSQLQuery;
    dspParcelas2: TDataSetProvider;
    cdsParcelas2: TClientDataSet;
    qryPagarCONTA_PAGAR: TStringField;
    cdsPagarCONTA_PAGAR: TStringField;
    qryPagarDemo: TSQLQuery;
    dspPagarDemo: TDataSetProvider;
    cdsPagarDemo: TClientDataSet;
    cdsPagarDemoTOTALREG: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn0101: TdmFn0101;

implementation

uses uDmPrincipal, uGlobal;

{$R *.dfm}

end.
