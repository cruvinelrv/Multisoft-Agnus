unit udmRelatorios;

interface

uses
  SysUtils, Classes, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DB, ppModule, raCodMod, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppCache, ppParameter, ppStrtch, ppMemo, DBClient, daDataModule;

type
  TdmRelatorios = class(TDataModule)
    rptLoja0330: TppReport;
    dsLja0330: TDataSource;
    ppParameterList1: TppParameterList;
    cdsLoja0330: TClientDataSet;
    cdsLoja0330CODIGO_VENDA: TIntegerField;
    cdsLoja0330VENDEDOR_VENDA: TIntegerField;
    cdsLoja0330PARCEIRO_VENDA: TIntegerField;
    cdsLoja0330CLIENTE_VENDA: TIntegerField;
    cdsLoja0330PROPRIEDADE_VENDA: TIntegerField;
    cdsLoja0330NOMELCIENTE_VENDA: TStringField;
    cdsLoja0330DATA_VENDA: TDateField;
    cdsLoja0330EXCLUSAO_VENDA: TDateField;
    cdsLoja0330HORA_VENDA: TTimeField;
    cdsLoja0330FATURA_VENDA: TCurrencyField;
    cdsLoja0330DESCONTO_VENDA: TCurrencyField;
    cdsLoja0330DESCON_ESP_VENDA: TCurrencyField;
    cdsLoja0330CPAGAMENTO_VENDA: TIntegerField;
    cdsLoja0330CHAVE_VENDA: TStringField;
    cdsLoja0330CAIXA_VENDA: TIntegerField;
    cdsLoja0330TIPO_PRECO_VENDA: TStringField;
    cdsLoja0330CFOP_VENDA: TStringField;
    cdsLoja0330NOTAFISCAL: TIntegerField;
    cdsLoja0330SERIE_VENDA: TStringField;
    cdsLoja0330CONFIRMA_VENDA: TStringField;
    cdsLoja0330EMISSAO_VENDA: TDateField;
    cdsLoja0330DATASAIDA_VENDA: TDateField;
    cdsLoja0330VALORNOTA_VENDA: TCurrencyField;
    cdsLoja0330BASEICMS_VENDA: TCurrencyField;
    cdsLoja0330IPI_VENDA: TCurrencyField;
    cdsLoja0330TRANSPORTA_VENDA: TIntegerField;
    cdsLoja0330PESOBRUTO_VENDA: TCurrencyField;
    cdsLoja0330PESOLIQUIDO_VENDA: TCurrencyField;
    cdsLoja0330OBSERVACAO_VENDA: TMemoField;
    cdsLoja0330PARCELAS_VENDA: TIntegerField;
    cdsLoja0330VALOR01: TCurrencyField;
    cdsLoja0330VALOR02: TCurrencyField;
    cdsLoja0330VALOR03: TCurrencyField;
    cdsLoja0330VALOR04: TCurrencyField;
    cdsLoja0330VALOR05: TCurrencyField;
    cdsLoja0330VALOR06: TCurrencyField;
    cdsLoja0330VALOR07: TCurrencyField;
    cdsLoja0330VALOR08: TCurrencyField;
    cdsLoja0330VALOR09: TCurrencyField;
    cdsLoja0330VALOR10: TCurrencyField;
    cdsLoja0330VALOR11: TCurrencyField;
    cdsLoja0330VALOR12: TCurrencyField;
    cdsLoja0330VALOR13: TCurrencyField;
    cdsLoja0330VALOR14: TCurrencyField;
    cdsLoja0330VALOR15: TCurrencyField;
    cdsLoja0330VENCIMENT01: TDateField;
    cdsLoja0330VENCIMENT02: TDateField;
    cdsLoja0330VENCIMENT03: TDateField;
    cdsLoja0330VENCIMENT04: TDateField;
    cdsLoja0330VENCIMENT05: TDateField;
    cdsLoja0330VENCIMENT06: TDateField;
    cdsLoja0330VENCIMENT07: TDateField;
    cdsLoja0330VENCIMENT08: TDateField;
    cdsLoja0330VENCIMENT09: TDateField;
    cdsLoja0330VENCIMENT10: TDateField;
    cdsLoja0330VENCIMENT11: TDateField;
    cdsLoja0330VENCIMENT12: TDateField;
    cdsLoja0330VENCIMENT13: TDateField;
    cdsLoja0330VENCIMENT14: TDateField;
    cdsLoja0330VENCIMENT15: TDateField;
    cdsLoja0330COMISSAO_VENDA: TCurrencyField;
    cdsLoja0330TIPO_VENDA: TStringField;
    cdsLoja0330TIPO1_VENDA: TStringField;
    cdsLoja0330DEVOLVE_VENDA: TStringField;
    cdsLoja0330ENTREGA_VENDA: TStringField;
    cdsLoja0330TROCO_VENDA: TCurrencyField;
    cdsLoja0330FRETE_VENDA: TCurrencyField;
    cdsLoja0330SEGURO_VENDA: TCurrencyField;
    cdsLoja0330OUTROS_VENDA: TCurrencyField;
    cdsLoja0330ROMANEIO_VENDA: TIntegerField;
    cdsLoja0330PLACASAIDA_VENDA: TStringField;
    cdsLoja0330NRFATURA_VENDA: TIntegerField;
    cdsLoja0330AUTONOMO_VENDA: TStringField;
    cdsLoja0330EXPORTADO_VENDA: TStringField;
    cdsLoja0330TIPO_DOC_VENDA: TStringField;
    cdsLoja0330INFOADICIONA_VENDA: TStringField;
    cdsLoja0330TROCA_VENDA: TIntegerField;
    cdsLoja0330OS_VENDA: TIntegerField;
    cdsLoja0330CNPJCLIENTE_VENDA: TStringField;
    cdsLoja0330RGCLIENTE_VENDA: TStringField;
    cdsLoja0330ENDCLIENTE_VENDA: TStringField;
    cdsLoja0330BAICLIENTE_VENDA: TStringField;
    cdsLoja0330CIDCLIENTE_VENDA: TStringField;
    cdsLoja0330ESTCLIENTE_VENDA: TStringField;
    cdsLoja0330CEPCLIENTE_VENDA: TStringField;
    cdsLoja0330FONECLIENTE_VENDA: TStringField;
    cdsLoja0330USUARIO_VENDA: TStringField;
    cdsLoja0330USUALTERA_VENDA: TStringField;
    cdsLoja0330_Itens: TClientDataSet;
    cdsLoja0330_ItensCODIGO_IVENDA: TIntegerField;
    cdsLoja0330_ItensPRODUTO_IVENDA: TIntegerField;
    cdsLoja0330_ItensDESCRICAO_IVENDAS: TStringField;
    cdsLoja0330_ItensVALORBRUTO_IVENDAS: TCurrencyField;
    cdsLoja0330_ItensQUANTIDADE_IVENDAS: TCurrencyField;
    cdsLoja0330_ItensGRADE_IVENDAS: TStringField;
    cdsLoja0330_ItensPROMOCAO_IVENDAS: TStringField;
    cdsLoja0330_ItensFABRICA_IVENDAS: TStringField;
    cdsLoja0330_ItensSERIE_IVENDAS: TStringField;
    cdsLoja0330_ItensDESCONTO_IVENDAS: TCurrencyField;
    cdsLoja0330_ItensICM_IVENDAS: TCurrencyField;
    cdsLoja0330_ItensIPI_IVENDAS: TCurrencyField;
    cdsLoja0330_ItensREDUTOR_IVENDAS: TCurrencyField;
    cdsLoja0330_ItensTRIBUTACAO_IVENDAS: TStringField;
    cdsLoja0330_ItensFISCAL_IVENDAS: TStringField;
    cdsLoja0330_ItensGARANTIA_IVENDAS: TStringField;
    cdsLoja0330_ItensTECNICO_IVENDAS: TIntegerField;
    cdsLoja0330_ItensALTURA_IVENDAS: TCurrencyField;
    cdsLoja0330_ItensLARGURA_IVENDAS: TCurrencyField;
    cdsLoja0330_ItensCOMPRIMENTO_VENDAS: TCurrencyField;
    cdsLoja0330_ItensQTDE_VENDAS: TCurrencyField;
    cdsLoja0330_ItensCOMPLEMENTO: TStringField;
    dbpLoja0330: TppDBPipeline;
    dbpLoja0330Itens: TppDBPipeline;
    dsLoja0330Itens: TDataSource;
    cdsLoja0330HORASAIDA_VENDA: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppVariable1: TppVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText29: TppDBText;
    ppDBText28: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppVariable2: TppVariable;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel44: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    daDataModule1: TdaDataModule;
    raCodeModule1: TraCodeModule;
    cdsCompras: TClientDataSet;
    cdsComprasCodigoCompra: TIntegerField;
    cdsComprasCodigoFornecedor: TIntegerField;
    cdsComprasTipoFornecedor: TStringField;
    cdsComprasCodigoTransporte: TIntegerField;
    cdsComprasNotaFiscal: TIntegerField;
    cdsComprasSerieCompra1: TIntegerField;
    cdsComprasSerieComrpa2: TStringField;
    cdsComprasEmissaoCompra: TDateField;
    cdsComprasEntradaCompra: TDateField;
    cdsComprasExclusaoCompra: TDateField;
    cdsComprasCfopCompra: TStringField;
    cdsComprasHoraCompra: TTimeField;
    cdsComprasValorBrutoCompra: TCurrencyField;
    cdsComprasFreteCompra: TCurrencyField;
    cdsComprasSeguroCompra: TCurrencyField;
    cdsComprasOutrasCompra: TCurrencyField;
    cdsComprasFrete1Compra: TCurrencyField;
    cdsComprasDescontoCompra: TCurrencyField;
    cdsComprasValorLiquidoCompra: TCurrencyField;
    cdsComprasBIcmsCompra: TCurrencyField;
    cdsComprasVIcmsCompra: TCurrencyField;
    cdsComprasAIcmsCompra: TCurrencyField;
    cdsComprasIIcmsCompra: TCurrencyField;
    cdsComprasOIcmsCompra: TCurrencyField;
    cdsComprasBIpiCompra: TCurrencyField;
    cdsComprasAIpiCompra: TCurrencyField;
    cdsComprasVIpiCompra: TCurrencyField;
    cdsComprasIIpiCompra: TCurrencyField;
    cdsComprasOIpiCompra: TCurrencyField;
    cdsComprasBIcsCompra: TCurrencyField;
    cdsComprasItens: TClientDataSet;
    cdsComprasItensCodigoCompra: TIntegerField;
    cdsComprasItensProdutoCompra: TIntegerField;
    cdsComprasItensPrecoUnitCompra: TCurrencyField;
    cdsComprasItensCustoCompra: TCurrencyField;
    cdsComprasItensFatorCompra: TCurrencyField;
    cdsComprasItensVendaCompra: TCurrencyField;
    cdsComprasItensAtacadoCompra: TCurrencyField;
    cdsComprasItensValidadeCompra: TDateField;
    cdsComprasItensQuantidadeCompra: TCurrencyField;
    cdsComprasItensGradeCompra: TStringField;
    cdsComprasItensSerieCompra: TStringField;
    cdsComprasItensIcmsCompra: TCurrencyField;
    cdsComprasItensIpiCompra: TCurrencyField;
    cdsComprasItensSitTribCompra: TStringField;
    cdsComprasItensRedutorCompra: TCurrencyField;
    cdsComprasItensTotalCompra: TCurrencyField;
    cdsComprasItensOcorreCompra: TStringField;
    cdsComprasItensQuantOcoCompra: TCurrencyField;
    rptRel_Modelo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa: TppLabel;
    ppLine1: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppLine2: TppLine;
    lblData: TppLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRelatorios: TdmRelatorios;

implementation


{$R *.dfm}

end.
