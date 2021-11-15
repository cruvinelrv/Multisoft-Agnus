unit udmFn0202;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmFn0202 = class(TDataModule)
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
    qryCliente: TSQLQuery;
    qryClienteCODIGO_CLIENTE: TIntegerField;
    qryClienteUTILIZADO_CLIENTE: TFMTBCDField;
    qryContaCorrente: TSQLQuery;
    qryContaCorrenteBANCO_RESBAN: TIntegerField;
    qryContaCorrenteCHAVE_RESBAN: TStringField;
    qryContaCorrenteCREDITO_RESBAN: TFMTBCDField;
    qryLancamento: TSQLQuery;
    qryLancamentoCODIGO_CONLAN: TIntegerField;
    qryLancamentoCORRENTE_CONLAN: TIntegerField;
    qryLancamentoCENTRO_CONLAN: TIntegerField;
    qryLancamentoCLI_FOR_CONLAN: TIntegerField;
    qryLancamentoTIPO_C_F_CONLAN: TStringField;
    qryLancamentoDOCUMENTO_CONLAN: TStringField;
    qryLancamentoDATA_CONLAN: TDateField;
    qryLancamentoMOVIMENTO_CONLAN: TDateField;
    qryLancamentoHISTORICO_CONLAN: TStringField;
    qryLancamentoVALOR_CONLAN: TFMTBCDField;
    qryLancamentoTIPO_CONLAN: TStringField;
    qryLancamentoORIGEM_CONLAN: TStringField;
    qryLancamentoCOD_EMPRESA: TIntegerField;
    qryCai_Mov: TSQLQuery;
    qryCai_MovCOD_EMPRESA: TIntegerField;
    qryCai_MovDATA_CAIXAMOV: TDateField;
    qryCai_MovVALOR_CAIXAMOV: TFMTBCDField;
    qryCai_MovHORA_CAIXAMOV: TTimeField;
    qryCai_MovCHAVE_CAIXAMOV: TStringField;
    qryCai_MovCAIXA_CAIXAMOV: TIntegerField;
    qryCai_MovUSUARIO_CAIXAMOV: TStringField;
    qryCai_MovTIPO_CAIXAMOV: TStringField;
    qryCai_MovTIPO_PAG_CAIXAMOV: TStringField;
    qryCai_MovTITULO_CAIXAMOV: TStringField;
    qryCaixa: TSQLQuery;
    qryCaixaCOD_EMPRESA: TIntegerField;
    qryCaixaCODIGO_CAIXA: TIntegerField;
    qryCaixaENTRADAS_CAIXA: TFMTBCDField;
    qryParcial: TSQLQuery;
    qryParcialCODIGO_PARCIAL: TIntegerField;
    qryParcialDUPLICATA_PARCIAL: TStringField;
    qryParcialVALOR_PARCIAL: TFMTBCDField;
    qryParcialJUROS_PARCIAL: TFMTBCDField;
    qryParcialDATA_PARCIAL: TDateField;
    qryParcialTIPO_PARCIAL: TStringField;
    dspCliente: TDataSetProvider;
    dspContaCorrente: TDataSetProvider;
    dspLancamento: TDataSetProvider;
    dspCai_Mov: TDataSetProvider;
    dspCaixa: TDataSetProvider;
    dspParcial: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCODIGO_CLIENTE: TIntegerField;
    cdsClienteUTILIZADO_CLIENTE: TFMTBCDField;
    cdsContaCorrente: TClientDataSet;
    cdsContaCorrenteBANCO_RESBAN: TIntegerField;
    cdsContaCorrenteCHAVE_RESBAN: TStringField;
    cdsContaCorrenteCREDITO_RESBAN: TFMTBCDField;
    cdsLancamento: TClientDataSet;
    cdsLancamentoCODIGO_CONLAN: TIntegerField;
    cdsLancamentoCORRENTE_CONLAN: TIntegerField;
    cdsLancamentoCENTRO_CONLAN: TIntegerField;
    cdsLancamentoCLI_FOR_CONLAN: TIntegerField;
    cdsLancamentoTIPO_C_F_CONLAN: TStringField;
    cdsLancamentoDOCUMENTO_CONLAN: TStringField;
    cdsLancamentoDATA_CONLAN: TDateField;
    cdsLancamentoMOVIMENTO_CONLAN: TDateField;
    cdsLancamentoHISTORICO_CONLAN: TStringField;
    cdsLancamentoVALOR_CONLAN: TFMTBCDField;
    cdsLancamentoTIPO_CONLAN: TStringField;
    cdsLancamentoORIGEM_CONLAN: TStringField;
    cdsLancamentoCOD_EMPRESA: TIntegerField;
    cdsCai_Mov: TClientDataSet;
    cdsCai_MovCOD_EMPRESA: TIntegerField;
    cdsCai_MovDATA_CAIXAMOV: TDateField;
    cdsCai_MovVALOR_CAIXAMOV: TFMTBCDField;
    cdsCai_MovHORA_CAIXAMOV: TTimeField;
    cdsCai_MovCHAVE_CAIXAMOV: TStringField;
    cdsCai_MovCAIXA_CAIXAMOV: TIntegerField;
    cdsCai_MovUSUARIO_CAIXAMOV: TStringField;
    cdsCai_MovTIPO_CAIXAMOV: TStringField;
    cdsCai_MovTIPO_PAG_CAIXAMOV: TStringField;
    cdsCai_MovTITULO_CAIXAMOV: TStringField;
    cdsCaixa: TClientDataSet;
    cdsCaixaCOD_EMPRESA: TIntegerField;
    cdsCaixaCODIGO_CAIXA: TIntegerField;
    cdsCaixaENTRADAS_CAIXA: TFMTBCDField;
    cdsParcial: TClientDataSet;
    cdsParcialCODIGO_PARCIAL: TIntegerField;
    cdsParcialDUPLICATA_PARCIAL: TStringField;
    cdsParcialVALOR_PARCIAL: TFMTBCDField;
    cdsParcialJUROS_PARCIAL: TFMTBCDField;
    cdsParcialDATA_PARCIAL: TDateField;
    cdsParcialTIPO_PARCIAL: TStringField;
    sqqConsulta: TSQLQuery;
    qryReceberLocal: TSQLQuery;
    qryReceberLocalDUPLICATA_RECEBER: TStringField;
    qryReceberLocalCODIGO_CLIENTE_RECEBER: TIntegerField;
    qryReceberLocalEMISSAO_RECEBER: TDateField;
    qryReceberLocalVENCIMENTO_RECEBER: TDateField;
    qryReceberLocalPREVISAO_RECEBER: TDateField;
    qryReceberLocalVALOR_RECEBER: TFMTBCDField;
    qryReceberLocalVALORPAGO_RECEBER: TFMTBCDField;
    qryReceberLocalCODIGO_PORTADOR_RECEBER: TIntegerField;
    qryReceberLocalTIPO_BAIXA_RECEBER: TStringField;
    qryReceberLocalSALDO_RECEBER: TFMTBCDField;
    qryReceberLocalCOD_EMPRESA: TIntegerField;
    qryReceberLocalNOME_CLIENTE: TStringField;
    qryPesquisa2: TSQLQuery;
    qryPesquisa3: TSQLQuery;
    dspReceberLocal: TDataSetProvider;
    dspPesquisa2: TDataSetProvider;
    dspPesquisa3: TDataSetProvider;
    cdsReceberLocal: TClientDataSet;
    cdsPesquisa2: TClientDataSet;
    cdsPesquisa3: TClientDataSet;
    qryContaCorrenteCOD_EMPRESA: TIntegerField;
    cdsContaCorrenteCOD_EMPRESA: TIntegerField;
    cdsBaixaTitulos: TClientDataSet;
    cdsBaixaTitulosDUPLICATA: TStringField;
    cdsBaixaTitulosCODIGO_CLIENTE: TIntegerField;
    cdsBaixaTitulosEMISSAO: TDateField;
    cdsBaixaTitulosVENCIMENTO: TDateField;
    cdsBaixaTitulosPREVISAO: TDateField;
    cdsBaixaTitulosVALOR: TFloatField;
    cdsBaixaTitulosVALORPAGO: TFloatField;
    cdsBaixaTitulosNOME_CLIENTE: TStringField;
    cdsBaixaTitulosJUROS: TFloatField;
    cdsBaixaTitulosDESCONTO: TFloatField;
    cdsGrid: TClientDataSet;
    cdsGridDUPLICATA: TStringField;
    cdsGridCODIGO_CLIENTE: TIntegerField;
    cdsGridEMISSAO: TDateField;
    cdsGridVENCIMENTO: TDateField;
    cdsGridPREVISAO: TDateField;
    cdsGridVALOR: TFloatField;
    cdsGridVALORPAGO: TFloatField;
    cdsGridCODIGO_PORTADOR: TIntegerField;
    cdsGridTIPO_BAIXA: TStringField;
    cdsGridSALDO: TFloatField;
    cdsGridSELECIONADO: TStringField;
    cdsGridNOME_CLIENTE: TStringField;
    cdsGridCOD_EMPRESA: TIntegerField;
    cdsGridVALOR_JUROS: TFloatField;
    cdsGridDIAS_ATRASO: TFloatField;
    cdsBaixaTitulosVALOR_JUROS: TFloatField;
    qryEmpresa: TSQLQuery;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    qryEmpresaCODIGO_EMP: TIntegerField;
    qryEmpresaJUROS_EMP: TFMTBCDField;
    cdsEmpresaCODIGO_EMP: TIntegerField;
    cdsEmpresaJUROS_EMP: TFMTBCDField;
    qryEmpresaDIAS_BLOQ_EMP: TIntegerField;
    cdsEmpresaDIAS_BLOQ_EMP: TIntegerField;
    qryEmpresaTIPO_JUR_EMP: TStringField;
    cdsEmpresaTIPO_JUR_EMP: TStringField;
    cdsBaixaTitulosDIAS_ATRASO: TIntegerField;
    qryReceberDATA_BASE_RECEBER: TDateField;
    cdsReceberDATA_BASE_RECEBER: TDateField;
    cdsRelatorio: TClientDataSet;
    cdsRelatorioNUM_DOCUMENTO: TStringField;
    cdsRelatorioEMISSAO: TDateField;
    cdsRelatorioVENCIMENTO: TDateField;
    cdsRelatorioVALOR: TFloatField;
    cdsRelatorioJUROS_DESCONTO: TFloatField;
    cdsRelatorioVALOR_PAGO: TFloatField;
    cdsRelatorioCODIGO_CLIENTE: TIntegerField;
    cdsRelatorioNOME_CLIENTE: TStringField;
    qryReceberLocalPARCIAL_RECEBER: TFMTBCDField;
    qryReceberLocalDATA_BASE_RECEBER: TDateField;
    qryPesquisa2VENCIMENTO_RECEBER: TDateField;
    qryPesquisa2VALOR_RECEBER: TFMTBCDField;
    qryPesquisa2VALORPAGO_RECEBER: TFMTBCDField;
    qryPesquisa2CODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsPesquisa2VENCIMENTO_RECEBER: TDateField;
    cdsPesquisa2VALOR_RECEBER: TFMTBCDField;
    cdsPesquisa2VALORPAGO_RECEBER: TFMTBCDField;
    cdsPesquisa2CODIGO_CLIENTE_RECEBER: TIntegerField;
    qryPesquisa2TIPO_BAIXA_RECEBER: TStringField;
    cdsPesquisa2TIPO_BAIXA_RECEBER: TStringField;
    qryPesquisa3VENCIMENTO_RECEBER: TDateField;
    qryPesquisa3VALOR_RECEBER: TFMTBCDField;
    qryPesquisa3VALORPAGO_RECEBER: TFMTBCDField;
    qryPesquisa3CODIGO_CLIENTE_RECEBER: TIntegerField;
    qryPesquisa3TIPO_BAIXA_RECEBER: TStringField;
    cdsPesquisa3VENCIMENTO_RECEBER: TDateField;
    cdsPesquisa3VALOR_RECEBER: TFMTBCDField;
    cdsPesquisa3VALORPAGO_RECEBER: TFMTBCDField;
    cdsPesquisa3CODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsPesquisa3TIPO_BAIXA_RECEBER: TStringField;
    cdsReceberLocalDUPLICATA_RECEBER: TStringField;
    cdsReceberLocalCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsReceberLocalEMISSAO_RECEBER: TDateField;
    cdsReceberLocalVENCIMENTO_RECEBER: TDateField;
    cdsReceberLocalPREVISAO_RECEBER: TDateField;
    cdsReceberLocalVALOR_RECEBER: TFMTBCDField;
    cdsReceberLocalVALORPAGO_RECEBER: TFMTBCDField;
    cdsReceberLocalCODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsReceberLocalTIPO_BAIXA_RECEBER: TStringField;
    cdsReceberLocalSALDO_RECEBER: TFMTBCDField;
    cdsReceberLocalCOD_EMPRESA: TIntegerField;
    cdsReceberLocalNOME_CLIENTE: TStringField;
    cdsReceberLocalPARCIAL_RECEBER: TFMTBCDField;
    cdsReceberLocalDATA_BASE_RECEBER: TDateField;
    qryPesquisa4: TSQLQuery;
    dspPesquisa4: TDataSetProvider;
    cdsPesquisa4: TClientDataSet;
    qryPesquisa4VENCIMENTO_RECEBER: TDateField;
    qryPesquisa4VALOR_RECEBER: TFMTBCDField;
    qryPesquisa4VALORPAGO_RECEBER: TFMTBCDField;
    qryPesquisa4CODIGO_CLIENTE_RECEBER: TIntegerField;
    qryPesquisa4TIPO_BAIXA_RECEBER: TStringField;
    cdsPesquisa4VENCIMENTO_RECEBER: TDateField;
    cdsPesquisa4VALOR_RECEBER: TFMTBCDField;
    cdsPesquisa4VALORPAGO_RECEBER: TFMTBCDField;
    cdsPesquisa4CODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsPesquisa4TIPO_BAIXA_RECEBER: TStringField;
    qryReceberLocal2: TSQLQuery;
    dspReceberLocal2: TDataSetProvider;
    cdsReceberLocal2: TClientDataSet;
    qryReceberLocal2DUPLICATA_RECEBER: TStringField;
    qryReceberLocal2CODIGO_CLIENTE_RECEBER: TIntegerField;
    qryReceberLocal2EMISSAO_RECEBER: TDateField;
    qryReceberLocal2VENCIMENTO_RECEBER: TDateField;
    qryReceberLocal2PREVISAO_RECEBER: TDateField;
    qryReceberLocal2VALOR_RECEBER: TFMTBCDField;
    qryReceberLocal2VALORPAGO_RECEBER: TFMTBCDField;
    qryReceberLocal2CODIGO_PORTADOR_RECEBER: TIntegerField;
    qryReceberLocal2TIPO_BAIXA_RECEBER: TStringField;
    qryReceberLocal2SALDO_RECEBER: TFMTBCDField;
    qryReceberLocal2COD_EMPRESA: TIntegerField;
    qryReceberLocal2NOME_CLIENTE: TStringField;
    qryReceberLocal2PARCIAL_RECEBER: TFMTBCDField;
    qryReceberLocal2DATA_BASE_RECEBER: TDateField;
    cdsReceberLocal2DUPLICATA_RECEBER: TStringField;
    cdsReceberLocal2CODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsReceberLocal2EMISSAO_RECEBER: TDateField;
    cdsReceberLocal2VENCIMENTO_RECEBER: TDateField;
    cdsReceberLocal2PREVISAO_RECEBER: TDateField;
    cdsReceberLocal2VALOR_RECEBER: TFMTBCDField;
    cdsReceberLocal2VALORPAGO_RECEBER: TFMTBCDField;
    cdsReceberLocal2CODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsReceberLocal2TIPO_BAIXA_RECEBER: TStringField;
    cdsReceberLocal2SALDO_RECEBER: TFMTBCDField;
    cdsReceberLocal2COD_EMPRESA: TIntegerField;
    cdsReceberLocal2NOME_CLIENTE: TStringField;
    cdsReceberLocal2PARCIAL_RECEBER: TFMTBCDField;
    cdsReceberLocal2DATA_BASE_RECEBER: TDateField;
    qryReceberCODIGO_CONTA_RECEBER: TStringField;
    cdsReceberCODIGO_CONTA_RECEBER: TStringField;
    qryLancamentoCONTA_CONLAN: TStringField;
    cdsLancamentoCONTA_CONLAN: TStringField;
    qryCai_MovOBSERVACAO_CAIXAMOV: TStringField;
    cdsCai_MovOBSERVACAO_CAIXAMOV: TStringField;
    qrySPC: TSQLQuery;
    dspSPC: TDataSetProvider;
    cdsSPC: TClientDataSet;
    qrySPCCODIGO_CLIENTE_SPC: TIntegerField;
    qrySPCNEGATIVAC_SPC: TDateField;
    qrySPCDESBLOQ_SPC: TDateField;
    qrySPCTITULO_SPC: TStringField;
    cdsSPCCODIGO_CLIENTE_SPC: TIntegerField;
    cdsSPCNEGATIVAC_SPC: TDateField;
    cdsSPCDESBLOQ_SPC: TDateField;
    cdsSPCTITULO_SPC: TStringField;
    qryClienteDATABLOQUEIO_CLIENTE: TDateField;
    cdsClienteDATABLOQUEIO_CLIENTE: TDateField;
    qryCaixaCHAVE_CAIXA: TStringField;
    cdsCaixaCHAVE_CAIXA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn0202: TdmFn0202;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
