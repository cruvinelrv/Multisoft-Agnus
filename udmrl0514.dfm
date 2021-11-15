object dmRL0514: TdmRL0514
  OldCreateOrder = False
  Left = 367
  Top = 261
  Height = 110
  Width = 397
  object qryVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 16
  end
  object dspVenda: TDataSetProvider
    DataSet = qryVenda
    Options = [poAllowCommandText]
    Left = 104
    Top = 16
  end
  object dtsVenda: TDataSource
    DataSet = cdsVenda
    Left = 248
    Top = 16
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVenda'
    Left = 176
    Top = 16
    object cdsVendaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
      Required = True
    end
    object cdsVendaVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendaPARCEIRO_VENDA: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object cdsVendaCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVendaPROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object cdsVendaNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object cdsVendaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsVendaEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsVendaHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendaFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaDESCON_ESP_VENDA: TFMTBCDField
      FieldName = 'DESCON_ESP_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsVendaCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object cdsVendaCAIXA_VENDA: TFMTBCDField
      FieldName = 'CAIXA_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsVendaTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object cdsVendaCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsVendaNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendaSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendaCONFIRMA_VENDA: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object cdsVendaEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsVendaDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object cdsVendaHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object cdsVendaVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object cdsVendaPESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsVendaPESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsVendaOBSERVACAO_VENDA: TStringField
      FieldName = 'OBSERVACAO_VENDA'
      Size = 75
    end
    object cdsVendaPARCELAS_VENDA: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object cdsVendaVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
    end
    object cdsVendaVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
    end
    object cdsVendaVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
    end
    object cdsVendaVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
    end
    object cdsVendaVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
    end
    object cdsVendaVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
    end
    object cdsVendaVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
    end
    object cdsVendaVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
    end
    object cdsVendaVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
    end
    object cdsVendaVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
    end
    object cdsVendaVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
    end
    object cdsVendaVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
    end
    object cdsVendaVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
    end
    object cdsVendaVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
    end
    object cdsVendaVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
    end
    object cdsVendaCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsVendaTIPO1_VENDA: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object cdsVendaDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object cdsVendaENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object cdsVendaTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object cdsVendaPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object cdsVendaESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
    object cdsVendaNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object cdsVendaAUTONOMO_VENDA: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object cdsVendaEXPORTADO_VENDA: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object cdsVendaTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsVendaINFOADICIONA_VENDA: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object cdsVendaMACHO_4_VENDA: TIntegerField
      FieldName = 'MACHO_4_VENDA'
    end
    object cdsVendaMACHO_4_12_VENDA: TIntegerField
      FieldName = 'MACHO_4_12_VENDA'
    end
    object cdsVendaMACHO_12_24_VENDA: TIntegerField
      FieldName = 'MACHO_12_24_VENDA'
    end
    object cdsVendaMACHO_24_36_VENDA: TIntegerField
      FieldName = 'MACHO_24_36_VENDA'
    end
    object cdsVendaMACHO_M36_VENDA: TIntegerField
      FieldName = 'MACHO_M36_VENDA'
    end
    object cdsVendaFEMEA_4_VENDA: TIntegerField
      FieldName = 'FEMEA_4_VENDA'
    end
    object cdsVendaFEMEA_4_12_VENDA: TIntegerField
      FieldName = 'FEMEA_4_12_VENDA'
    end
    object cdsVendaFEMEA_12_24_VENDA: TIntegerField
      FieldName = 'FEMEA_12_24_VENDA'
    end
    object cdsVendaFEMEA_24_36_VENDA: TIntegerField
      FieldName = 'FEMEA_24_36_VENDA'
    end
    object cdsVendaFEMEA_M36_VENDA: TIntegerField
      FieldName = 'FEMEA_M36_VENDA'
    end
    object cdsVendaBUFALOS_VENDA: TIntegerField
      FieldName = 'BUFALOS_VENDA'
    end
    object cdsVendaCAPRINOS_VENDA: TIntegerField
      FieldName = 'CAPRINOS_VENDA'
    end
    object cdsVendaOVINOS_VENDA: TIntegerField
      FieldName = 'OVINOS_VENDA'
    end
    object cdsVendaSUINOS_VENDA: TIntegerField
      FieldName = 'SUINOS_VENDA'
    end
    object cdsVendaTROCA_VENDA: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object cdsVendaOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsVendaCNPJCLIENTE_VENDA: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object cdsVendaRGCLIENTE_VENDA: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object cdsVendaENDCLIENTE_VENDA: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object cdsVendaBAICLIENTE_VENDA: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object cdsVendaCIDCLIENTE_VENDA: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object cdsVendaESTCLIENTE_VENDA: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object cdsVendaCEPCLIENTE_VENDA: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object cdsVendaFONECLIENTE_VENDA: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object cdsVendaCARNE_VENDA: TStringField
      FieldName = 'CARNE_VENDA'
      Size = 1
    end
    object cdsVendaUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object cdsVendaUSUALTERA_VENDA: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object cdsVendaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsVendaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object cdsVendaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object cdsVendaOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object cdsVendaOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object cdsVendaNF_SERV: TIntegerField
      FieldName = 'NF_SERV'
    end
    object cdsVendaVALOR_LIQUIDO: TFMTBCDField
      FieldName = 'VALOR_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object cdsVendaPERC_DESC: TFMTBCDField
      FieldName = 'PERC_DESC'
      Precision = 15
      Size = 4
    end
    object cdsVendaCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 21
    end
    object cdsVendaTURNO: TStringField
      FieldName = 'TURNO'
      Size = 21
    end
    object cdsVendaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 21
    end
    object cdsVendaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
  end
  object ppVenda: TppDBPipeline
    DataSource = dtsVenda
    UserName = 'Venda'
    Left = 320
    Top = 16
    object ppVendappField1: TppField
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppVendappField2: TppField
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppVendappField3: TppField
      FieldAlias = 'PARCEIRO_VENDA'
      FieldName = 'PARCEIRO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppVendappField4: TppField
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppVendappField5: TppField
      FieldAlias = 'PROPRIEDADE_VENDA'
      FieldName = 'PROPRIEDADE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppVendappField6: TppField
      FieldAlias = 'NOMECLIENTE_VENDA'
      FieldName = 'NOMECLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppVendappField7: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppVendappField8: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppVendappField9: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppVendappField10: TppField
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppVendappField11: TppField
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppVendappField12: TppField
      FieldAlias = 'DESCON_ESP_VENDA'
      FieldName = 'DESCON_ESP_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppVendappField13: TppField
      FieldAlias = 'CPAGAMENTO_VENDA'
      FieldName = 'CPAGAMENTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppVendappField14: TppField
      FieldAlias = 'CHAVE_VENDA'
      FieldName = 'CHAVE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppVendappField15: TppField
      FieldAlias = 'CAIXA_VENDA'
      FieldName = 'CAIXA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppVendappField16: TppField
      FieldAlias = 'TIPO_PRECO_VENDA'
      FieldName = 'TIPO_PRECO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppVendappField17: TppField
      FieldAlias = 'CFOP_VENDA'
      FieldName = 'CFOP_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppVendappField18: TppField
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppVendappField19: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppVendappField20: TppField
      FieldAlias = 'CONFIRMA_VENDA'
      FieldName = 'CONFIRMA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppVendappField21: TppField
      FieldAlias = 'EMISSAO_VENDA'
      FieldName = 'EMISSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppVendappField22: TppField
      FieldAlias = 'DATASAIDA_VENDA'
      FieldName = 'DATASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppVendappField23: TppField
      FieldAlias = 'HORASAIDA_VENDA'
      FieldName = 'HORASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppVendappField24: TppField
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppVendappField25: TppField
      FieldAlias = 'BASEICMS_VENDA'
      FieldName = 'BASEICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppVendappField26: TppField
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppVendappField27: TppField
      FieldAlias = 'BASEICMSSB_VENDA'
      FieldName = 'BASEICMSSB_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppVendappField28: TppField
      FieldAlias = 'ICMSSB_VENDA'
      FieldName = 'ICMSSB_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppVendappField29: TppField
      FieldAlias = 'IPI_VENDA'
      FieldName = 'IPI_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppVendappField30: TppField
      FieldAlias = 'TRANSPORTA_VENDA'
      FieldName = 'TRANSPORTA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppVendappField31: TppField
      FieldAlias = 'PESOBRUTO_VENDA'
      FieldName = 'PESOBRUTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppVendappField32: TppField
      FieldAlias = 'PESOLIQUIDO_VENDA'
      FieldName = 'PESOLIQUIDO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppVendappField33: TppField
      FieldAlias = 'OBSERVACAO_VENDA'
      FieldName = 'OBSERVACAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppVendappField34: TppField
      FieldAlias = 'PARCELAS_VENDA'
      FieldName = 'PARCELAS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppVendappField35: TppField
      FieldAlias = 'VALOR01_VENDA'
      FieldName = 'VALOR01_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppVendappField36: TppField
      FieldAlias = 'VALOR02_VENDA'
      FieldName = 'VALOR02_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppVendappField37: TppField
      FieldAlias = 'VALOR03_VENDA'
      FieldName = 'VALOR03_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppVendappField38: TppField
      FieldAlias = 'VALOR04_VENDA'
      FieldName = 'VALOR04_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppVendappField39: TppField
      FieldAlias = 'VALOR05_VENDA'
      FieldName = 'VALOR05_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppVendappField40: TppField
      FieldAlias = 'VALOR06_VENDA'
      FieldName = 'VALOR06_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppVendappField41: TppField
      FieldAlias = 'VALOR07_VENDA'
      FieldName = 'VALOR07_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppVendappField42: TppField
      FieldAlias = 'VALOR08_VENDA'
      FieldName = 'VALOR08_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppVendappField43: TppField
      FieldAlias = 'VALOR09_VENDA'
      FieldName = 'VALOR09_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppVendappField44: TppField
      FieldAlias = 'VALOR10_VENDA'
      FieldName = 'VALOR10_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppVendappField45: TppField
      FieldAlias = 'VALOR11_VENDA'
      FieldName = 'VALOR11_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppVendappField46: TppField
      FieldAlias = 'VALOR12_VENDA'
      FieldName = 'VALOR12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppVendappField47: TppField
      FieldAlias = 'VALOR13_VENDA'
      FieldName = 'VALOR13_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppVendappField48: TppField
      FieldAlias = 'VALOR14_VENDA'
      FieldName = 'VALOR14_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppVendappField49: TppField
      FieldAlias = 'VALOR15_VENDA'
      FieldName = 'VALOR15_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppVendappField50: TppField
      FieldAlias = 'VENCIMEN01_VENDA'
      FieldName = 'VENCIMEN01_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppVendappField51: TppField
      FieldAlias = 'VENCIMEN02_VENDA'
      FieldName = 'VENCIMEN02_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppVendappField52: TppField
      FieldAlias = 'VENCIMEN03_VENDA'
      FieldName = 'VENCIMEN03_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppVendappField53: TppField
      FieldAlias = 'VENCIMEN04_VENDA'
      FieldName = 'VENCIMEN04_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppVendappField54: TppField
      FieldAlias = 'VENCIMEN05_VENDA'
      FieldName = 'VENCIMEN05_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppVendappField55: TppField
      FieldAlias = 'VENCIMEN06_VENDA'
      FieldName = 'VENCIMEN06_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppVendappField56: TppField
      FieldAlias = 'VENCIMEN07_VENDA'
      FieldName = 'VENCIMEN07_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppVendappField57: TppField
      FieldAlias = 'VENCIMEN08_VENDA'
      FieldName = 'VENCIMEN08_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppVendappField58: TppField
      FieldAlias = 'VENCIMEN09_VENDA'
      FieldName = 'VENCIMEN09_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppVendappField59: TppField
      FieldAlias = 'VENCIMEN10_VENDA'
      FieldName = 'VENCIMEN10_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppVendappField60: TppField
      FieldAlias = 'VENCIMEN11_VENDA'
      FieldName = 'VENCIMEN11_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppVendappField61: TppField
      FieldAlias = 'VENCIMEN12_VENDA'
      FieldName = 'VENCIMEN12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppVendappField62: TppField
      FieldAlias = 'VENCIMEN13_VENDA'
      FieldName = 'VENCIMEN13_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppVendappField63: TppField
      FieldAlias = 'VENCIMEN14_VENDA'
      FieldName = 'VENCIMEN14_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppVendappField64: TppField
      FieldAlias = 'VENCIMEN15_VENDA'
      FieldName = 'VENCIMEN15_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppVendappField65: TppField
      FieldAlias = 'COMISSAO_VENDA'
      FieldName = 'COMISSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppVendappField66: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppVendappField67: TppField
      FieldAlias = 'TIPO1_VENDA'
      FieldName = 'TIPO1_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppVendappField68: TppField
      FieldAlias = 'DEVOLVE_VENDA'
      FieldName = 'DEVOLVE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppVendappField69: TppField
      FieldAlias = 'ENTREGA_VENDA'
      FieldName = 'ENTREGA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppVendappField70: TppField
      FieldAlias = 'TROCO_VENDA'
      FieldName = 'TROCO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppVendappField71: TppField
      FieldAlias = 'FRETE_VENDA'
      FieldName = 'FRETE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppVendappField72: TppField
      FieldAlias = 'SEGURO_VENDA'
      FieldName = 'SEGURO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppVendappField73: TppField
      FieldAlias = 'OUTROS_VENDA'
      FieldName = 'OUTROS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppVendappField74: TppField
      FieldAlias = 'ROMANEIO_VENDA'
      FieldName = 'ROMANEIO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppVendappField75: TppField
      FieldAlias = 'PLACASAIDA_VENDA'
      FieldName = 'PLACASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppVendappField76: TppField
      FieldAlias = 'ESTADOSAIDA_VENDA'
      FieldName = 'ESTADOSAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppVendappField77: TppField
      FieldAlias = 'NRFATURA_VENDA'
      FieldName = 'NRFATURA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppVendappField78: TppField
      FieldAlias = 'AUTONOMO_VENDA'
      FieldName = 'AUTONOMO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppVendappField79: TppField
      FieldAlias = 'EXPORTADO_VENDA'
      FieldName = 'EXPORTADO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppVendappField80: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppVendappField81: TppField
      FieldAlias = 'INFOADICIONA_VENDA'
      FieldName = 'INFOADICIONA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppVendappField82: TppField
      FieldAlias = 'MACHO_4_VENDA'
      FieldName = 'MACHO_4_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppVendappField83: TppField
      FieldAlias = 'MACHO_4_12_VENDA'
      FieldName = 'MACHO_4_12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppVendappField84: TppField
      FieldAlias = 'MACHO_12_24_VENDA'
      FieldName = 'MACHO_12_24_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppVendappField85: TppField
      FieldAlias = 'MACHO_24_36_VENDA'
      FieldName = 'MACHO_24_36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppVendappField86: TppField
      FieldAlias = 'MACHO_M36_VENDA'
      FieldName = 'MACHO_M36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppVendappField87: TppField
      FieldAlias = 'FEMEA_4_VENDA'
      FieldName = 'FEMEA_4_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppVendappField88: TppField
      FieldAlias = 'FEMEA_4_12_VENDA'
      FieldName = 'FEMEA_4_12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppVendappField89: TppField
      FieldAlias = 'FEMEA_12_24_VENDA'
      FieldName = 'FEMEA_12_24_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppVendappField90: TppField
      FieldAlias = 'FEMEA_24_36_VENDA'
      FieldName = 'FEMEA_24_36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppVendappField91: TppField
      FieldAlias = 'FEMEA_M36_VENDA'
      FieldName = 'FEMEA_M36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppVendappField92: TppField
      FieldAlias = 'BUFALOS_VENDA'
      FieldName = 'BUFALOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppVendappField93: TppField
      FieldAlias = 'CAPRINOS_VENDA'
      FieldName = 'CAPRINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppVendappField94: TppField
      FieldAlias = 'OVINOS_VENDA'
      FieldName = 'OVINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppVendappField95: TppField
      FieldAlias = 'SUINOS_VENDA'
      FieldName = 'SUINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object ppVendappField96: TppField
      FieldAlias = 'TROCA_VENDA'
      FieldName = 'TROCA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppVendappField97: TppField
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object ppVendappField98: TppField
      FieldAlias = 'CNPJCLIENTE_VENDA'
      FieldName = 'CNPJCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppVendappField99: TppField
      FieldAlias = 'RGCLIENTE_VENDA'
      FieldName = 'RGCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object ppVendappField100: TppField
      FieldAlias = 'ENDCLIENTE_VENDA'
      FieldName = 'ENDCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object ppVendappField101: TppField
      FieldAlias = 'BAICLIENTE_VENDA'
      FieldName = 'BAICLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object ppVendappField102: TppField
      FieldAlias = 'CIDCLIENTE_VENDA'
      FieldName = 'CIDCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object ppVendappField103: TppField
      FieldAlias = 'ESTCLIENTE_VENDA'
      FieldName = 'ESTCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object ppVendappField104: TppField
      FieldAlias = 'CEPCLIENTE_VENDA'
      FieldName = 'CEPCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object ppVendappField105: TppField
      FieldAlias = 'FONECLIENTE_VENDA'
      FieldName = 'FONECLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object ppVendappField106: TppField
      FieldAlias = 'CARNE_VENDA'
      FieldName = 'CARNE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object ppVendappField107: TppField
      FieldAlias = 'USUARIO_VENDA'
      FieldName = 'USUARIO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object ppVendappField108: TppField
      FieldAlias = 'USUALTERA_VENDA'
      FieldName = 'USUALTERA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object ppVendappField109: TppField
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object ppVendappField110: TppField
      FieldAlias = 'OBS1'
      FieldName = 'OBS1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object ppVendappField111: TppField
      FieldAlias = 'OBS2'
      FieldName = 'OBS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object ppVendappField112: TppField
      FieldAlias = 'OBS3'
      FieldName = 'OBS3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object ppVendappField113: TppField
      FieldAlias = 'OBS4'
      FieldName = 'OBS4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object ppVendappField114: TppField
      FieldAlias = 'NF_SERV'
      FieldName = 'NF_SERV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object ppVendappField115: TppField
      FieldAlias = 'VALOR_LIQUIDO'
      FieldName = 'VALOR_LIQUIDO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object ppVendappField116: TppField
      FieldAlias = 'PERC_DESC'
      FieldName = 'PERC_DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
    object ppVendappField117: TppField
      FieldAlias = 'CAIXA'
      FieldName = 'CAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 116
      Searchable = False
      Sortable = False
    end
    object ppVendappField118: TppField
      FieldAlias = 'TURNO'
      FieldName = 'TURNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 117
      Searchable = False
      Sortable = False
    end
    object ppVendappField119: TppField
      FieldAlias = 'FUNCIONARIO'
      FieldName = 'FUNCIONARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 118
      Searchable = False
      Sortable = False
    end
    object ppVendappField120: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 119
      Searchable = False
      Sortable = False
    end
  end
end
