unit udmFn0201;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmFn0201 = class(TDataModule)
    qryReceber: TSQLQuery;
    qryReceberDUPLICATA_RECEBER: TStringField;
    qryReceberTIPO_DOCUMENTO_RECEBER: TIntegerField;
    qryReceberCODIGO_CLIENTE_RECEBER: TIntegerField;
    qryReceberEMISSAO_RECEBER: TDateField;
    qryReceberVENCIMENTO_RECEBER: TDateField;
    qryReceberPREVISAO_RECEBER: TDateField;
    qryReceberALTERACAO_RECEBER: TDateField;
    qryReceberVALOR_RECEBER: TFMTBCDField;
    qryReceberPARCIAL_RECEBER: TFMTBCDField;
    qryReceberDESCJUROS_RECEBER: TFMTBCDField;
    qryReceberCOMISSAO_RECEBER: TFMTBCDField;
    qryReceberCODIGO_PORTADOR_RECEBER: TIntegerField;
    qryReceberCODIGO_CENTRO_RECEBER: TIntegerField;
    qryReceberCODIGO_CORRENTE_RECEBER: TIntegerField;
    qryReceberCODIGO_VENDEDOR_RECEBER: TIntegerField;
    qryReceberCODIGO_PARCEIRO_RECEBER: TIntegerField;
    qryReceberCODIGO_BANCO_RECEBER: TIntegerField;
    qryReceberBLOQUETE_RECEBER: TStringField;
    qryReceberEMIS_BLOQ_RECEBER: TDateField;
    qryReceberVENC_BLOQ_RECEBER: TDateField;
    qryReceberREMESSA_RECEBER: TIntegerField;
    qryReceberMORA_DIA_RECEBER: TFMTBCDField;
    qryReceberINSTRUCAO_RECEBER: TStringField;
    qryReceberDESCONTO_RECEBER: TFMTBCDField;
    qryReceberDESC_ATE_RECEBER: TDateField;
    qryReceberCONDICOES_RECEBER: TStringField;
    qryReceberTIPO_BAIXA_RECEBER: TStringField;
    qryReceberTIPO_DUP_RECEBER: TStringField;
    qryReceberMOVIMENTO_RECEBER: TDateField;
    qryReceberCODIGO_CAIXA_RECEBER: TIntegerField;
    qryReceberS_RECEBER: TStringField;
    qryReceberFORMAPAGTO_RECEBER: TStringField;
    qryReceberTIT_PRINC_RECEBER: TStringField;
    qryReceberCOD_EMPRESA: TIntegerField;
    qryReceberDESCRICAO_TIPODOCUMENTO: TStringField;
    qryReceberNOME_CLIENTE: TStringField;
    qryReceberDESCRICAO_PORTADOR: TStringField;
    qryReceberDESCRICAO_CENTRO: TStringField;
    qryReceberDESCRICAO_CONTA: TStringField;
    qryReceberNOME_VENDEDOR: TStringField;
    qryReceberNOME_PARCEIRO: TStringField;
    qryReceberDESCRICAO_BANCO: TStringField;
    qryReceberVALORPAGO_RECEBER: TFMTBCDField;
    qryReceberHISTORICO_RECEBER: TMemoField;
    dspReceber: TDataSetProvider;
    cdsReceber: TClientDataSet;
    cdsReceberDUPLICATA_RECEBER: TStringField;
    cdsReceberTIPO_DOCUMENTO_RECEBER: TIntegerField;
    cdsReceberCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsReceberEMISSAO_RECEBER: TDateField;
    cdsReceberVENCIMENTO_RECEBER: TDateField;
    cdsReceberPREVISAO_RECEBER: TDateField;
    cdsReceberALTERACAO_RECEBER: TDateField;
    cdsReceberVALOR_RECEBER: TFMTBCDField;
    cdsReceberPARCIAL_RECEBER: TFMTBCDField;
    cdsReceberDESCJUROS_RECEBER: TFMTBCDField;
    cdsReceberCOMISSAO_RECEBER: TFMTBCDField;
    cdsReceberCODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsReceberCODIGO_CENTRO_RECEBER: TIntegerField;
    cdsReceberCODIGO_CORRENTE_RECEBER: TIntegerField;
    cdsReceberCODIGO_VENDEDOR_RECEBER: TIntegerField;
    cdsReceberCODIGO_PARCEIRO_RECEBER: TIntegerField;
    cdsReceberCODIGO_BANCO_RECEBER: TIntegerField;
    cdsReceberBLOQUETE_RECEBER: TStringField;
    cdsReceberEMIS_BLOQ_RECEBER: TDateField;
    cdsReceberVENC_BLOQ_RECEBER: TDateField;
    cdsReceberREMESSA_RECEBER: TIntegerField;
    cdsReceberMORA_DIA_RECEBER: TFMTBCDField;
    cdsReceberINSTRUCAO_RECEBER: TStringField;
    cdsReceberDESCONTO_RECEBER: TFMTBCDField;
    cdsReceberDESC_ATE_RECEBER: TDateField;
    cdsReceberCONDICOES_RECEBER: TStringField;
    cdsReceberTIPO_BAIXA_RECEBER: TStringField;
    cdsReceberTIPO_DUP_RECEBER: TStringField;
    cdsReceberMOVIMENTO_RECEBER: TDateField;
    cdsReceberCODIGO_CAIXA_RECEBER: TIntegerField;
    cdsReceberS_RECEBER: TStringField;
    cdsReceberFORMAPAGTO_RECEBER: TStringField;
    cdsReceberTIT_PRINC_RECEBER: TStringField;
    cdsReceberCOD_EMPRESA: TIntegerField;
    cdsReceberDESCRICAO_TIPODOCUMENTO: TStringField;
    cdsReceberNOME_CLIENTE: TStringField;
    cdsReceberDESCRICAO_PORTADOR: TStringField;
    cdsReceberDESCRICAO_CENTRO: TStringField;
    cdsReceberDESCRICAO_CONTA: TStringField;
    cdsReceberNOME_VENDEDOR: TStringField;
    cdsReceberNOME_PARCEIRO: TStringField;
    cdsReceberDESCRICAO_BANCO: TStringField;
    cdsReceberVALORPAGO_RECEBER: TFMTBCDField;
    cdsReceberHISTORICO_RECEBER: TMemoField;
    cdsTemporario: TClientDataSet;
    cdsTemporarioDUPLICATA_RECEBER: TStringField;
    cdsTemporarioTIPO_DOCUMENTO_RECEBER: TIntegerField;
    cdsTemporarioCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsTemporarioEMISSAO_RECEBER: TDateField;
    cdsTemporarioVENCIMENTO_RECEBER: TDateField;
    cdsTemporarioPREVISAO_RECEBER: TDateField;
    cdsTemporarioALTERACAO_REBER: TDateField;
    cdsTemporarioVALOR_RECEBER: TStringField;
    cdsTemporarioPARCIAL_RECEBER: TStringField;
    cdsTemporarioVALORPAGO_RECEBER: TStringField;
    cdsTemporarioDESCJUROS_REBER: TStringField;
    cdsTemporarioCOMISSA_RECEBER: TStringField;
    cdsTemporarioCODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsTemporarioCODIGO_CENTRO_REBER: TIntegerField;
    cdsTemporarioCODIGO_CORRENTE_RECEBER: TIntegerField;
    cdsTemporarioCODIGO_VENDEDOR_RECEBER: TIntegerField;
    cdsTemporarioCODIGO_PARCEIRO_RECEBER: TIntegerField;
    cdsTemporarioHISTORICO_RECEBER: TStringField;
    cdsTemporarioCODIGO_BANCO_RECEBER: TIntegerField;
    cdsTemporarioBLOQUETE_RECEBER: TStringField;
    cdsTemporarioEMIS_BLOQ_RECEBER: TDateField;
    cdsTemporarioVENC_BLOQ_RECEBER: TDateField;
    cdsTemporarioREMESSA_RECEBER: TIntegerField;
    cdsTemporarioMORA_DIA_RECEBER: TStringField;
    cdsTemporarioINSTRUCAO_RECEBER: TStringField;
    cdsTemporarioDESCONTO_RECEBER: TStringField;
    cdsTemporarioDESC_ATE_RECEBER: TDateField;
    cdsTemporarioCONDICOES_RECEBER: TStringField;
    cdsTemporarioTIPO_BAIXA_RECEBER: TStringField;
    cdsTemporarioTIPO_DUP_RECEBER: TStringField;
    cdsTemporarioMOVIMENTO_RECEBER: TDateField;
    cdsTemporarioCODIGO_CAIXA_RECEBER: TIntegerField;
    cdsTemporarioS_RECEBER: TStringField;
    cdsTemporarioFORMAPAGTO_RECEBER: TStringField;
    cdsTemporarioTIT_PRINC_RECEBER: TStringField;
    sqqReabreTit: TSQLQuery;
    cdsParcelas: TClientDataSet;
    cdsParcelasNUM_DOCUMENTO: TStringField;
    cdsParcelasDATA_VENCIMENTO: TDateField;
    qryParcelas2: TSQLQuery;
    dspParcelas2: TDataSetProvider;
    cdsParcelas2: TClientDataSet;
    qryReceberCODIGO_CONTA_RECEBER: TStringField;
    cdsReceberCODIGO_CONTA_RECEBER: TStringField;
    qryReceberDemo: TSQLQuery;
    dspReceberDemo: TDataSetProvider;
    cdsReceberDemo: TClientDataSet;
    cdsReceberDemoTOTALREG: TIntegerField;
    cdsTemporarioCODIGO_CONTA_RECEBER: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn0201: TdmFn0201;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
