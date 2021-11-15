object dmRL0414: TdmRL0414
  OldCreateOrder = False
  Left = 347
  Top = 255
  Height = 174
  Width = 364
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 16
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Options = [poAllowCommandText]
    Left = 96
    Top = 16
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendas'
    Left = 168
    Top = 16
    object cdsVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendasPARCEIRO_VENDA: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object cdsVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVendasPROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object cdsVendasNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object cdsVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasDESCON_ESP_VENDA: TFMTBCDField
      FieldName = 'DESCON_ESP_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsVendasCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object cdsVendasCAIXA_VENDA: TFMTBCDField
      FieldName = 'CAIXA_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsVendasTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object cdsVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendasCONFIRMA_VENDA: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object cdsVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsVendasDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object cdsVendasHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object cdsVendasVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object cdsVendasPESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsVendasPESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsVendasOBSERVACAO_VENDA: TStringField
      FieldName = 'OBSERVACAO_VENDA'
      Size = 75
    end
    object cdsVendasPARCELAS_VENDA: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object cdsVendasVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
    end
    object cdsVendasVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
    end
    object cdsVendasVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
    end
    object cdsVendasVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
    end
    object cdsVendasVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
    end
    object cdsVendasVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
    end
    object cdsVendasVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
    end
    object cdsVendasVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
    end
    object cdsVendasVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
    end
    object cdsVendasVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
    end
    object cdsVendasVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
    end
    object cdsVendasVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
    end
    object cdsVendasVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
    end
    object cdsVendasVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
    end
    object cdsVendasVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
    end
    object cdsVendasCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsVendasTIPO1_VENDA: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object cdsVendasDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object cdsVendasENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object cdsVendasTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object cdsVendasPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object cdsVendasESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
    object cdsVendasNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object cdsVendasAUTONOMO_VENDA: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object cdsVendasEXPORTADO_VENDA: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object cdsVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsVendasINFOADICIONA_VENDA: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object cdsVendasMACHO_4_VENDA: TIntegerField
      FieldName = 'MACHO_4_VENDA'
    end
    object cdsVendasMACHO_4_12_VENDA: TIntegerField
      FieldName = 'MACHO_4_12_VENDA'
    end
    object cdsVendasMACHO_12_24_VENDA: TIntegerField
      FieldName = 'MACHO_12_24_VENDA'
    end
    object cdsVendasMACHO_24_36_VENDA: TIntegerField
      FieldName = 'MACHO_24_36_VENDA'
    end
    object cdsVendasMACHO_M36_VENDA: TIntegerField
      FieldName = 'MACHO_M36_VENDA'
    end
    object cdsVendasFEMEA_4_VENDA: TIntegerField
      FieldName = 'FEMEA_4_VENDA'
    end
    object cdsVendasFEMEA_4_12_VENDA: TIntegerField
      FieldName = 'FEMEA_4_12_VENDA'
    end
    object cdsVendasFEMEA_12_24_VENDA: TIntegerField
      FieldName = 'FEMEA_12_24_VENDA'
    end
    object cdsVendasFEMEA_24_36_VENDA: TIntegerField
      FieldName = 'FEMEA_24_36_VENDA'
    end
    object cdsVendasFEMEA_M36_VENDA: TIntegerField
      FieldName = 'FEMEA_M36_VENDA'
    end
    object cdsVendasBUFALOS_VENDA: TIntegerField
      FieldName = 'BUFALOS_VENDA'
    end
    object cdsVendasCAPRINOS_VENDA: TIntegerField
      FieldName = 'CAPRINOS_VENDA'
    end
    object cdsVendasOVINOS_VENDA: TIntegerField
      FieldName = 'OVINOS_VENDA'
    end
    object cdsVendasSUINOS_VENDA: TIntegerField
      FieldName = 'SUINOS_VENDA'
    end
    object cdsVendasTROCA_VENDA: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object cdsVendasOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsVendasCNPJCLIENTE_VENDA: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object cdsVendasRGCLIENTE_VENDA: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object cdsVendasENDCLIENTE_VENDA: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object cdsVendasBAICLIENTE_VENDA: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object cdsVendasCIDCLIENTE_VENDA: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object cdsVendasESTCLIENTE_VENDA: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object cdsVendasCEPCLIENTE_VENDA: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object cdsVendasFONECLIENTE_VENDA: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object cdsVendasCARNE_VENDA: TStringField
      FieldName = 'CARNE_VENDA'
      Size = 1
    end
    object cdsVendasUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object cdsVendasUSUALTERA_VENDA: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object cdsVendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsVendasOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object cdsVendasOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object cdsVendasOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object cdsVendasOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object cdsVendasNF_SERV: TIntegerField
      FieldName = 'NF_SERV'
    end
    object cdsVendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsVendasPERC_DESC: TFMTBCDField
      FieldName = 'PERC_DESC'
      Precision = 15
      Size = 4
    end
    object cdsVendasVALOR_RECE: TFMTBCDField
      FieldName = 'VALOR_RECE'
      Precision = 15
      Size = 2
    end
  end
  object dtsVendas: TDataSource
    DataSet = cdsVendas
    Left = 240
    Top = 16
  end
  object ppVendas: TppDBPipeline
    DataSource = dtsVendas
    UserName = 'Vendas'
    Left = 304
    Top = 16
    object ppVendasppField1: TppField
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppVendasppField2: TppField
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppVendasppField3: TppField
      FieldAlias = 'PARCEIRO_VENDA'
      FieldName = 'PARCEIRO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppVendasppField4: TppField
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppVendasppField5: TppField
      FieldAlias = 'PROPRIEDADE_VENDA'
      FieldName = 'PROPRIEDADE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppVendasppField6: TppField
      FieldAlias = 'NOMECLIENTE_VENDA'
      FieldName = 'NOMECLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppVendasppField7: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppVendasppField8: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppVendasppField9: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppVendasppField10: TppField
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppVendasppField11: TppField
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppVendasppField12: TppField
      FieldAlias = 'DESCON_ESP_VENDA'
      FieldName = 'DESCON_ESP_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppVendasppField13: TppField
      FieldAlias = 'CPAGAMENTO_VENDA'
      FieldName = 'CPAGAMENTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppVendasppField14: TppField
      FieldAlias = 'CHAVE_VENDA'
      FieldName = 'CHAVE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppVendasppField15: TppField
      FieldAlias = 'CAIXA_VENDA'
      FieldName = 'CAIXA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppVendasppField16: TppField
      FieldAlias = 'TIPO_PRECO_VENDA'
      FieldName = 'TIPO_PRECO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppVendasppField17: TppField
      FieldAlias = 'CFOP_VENDA'
      FieldName = 'CFOP_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppVendasppField18: TppField
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppVendasppField19: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppVendasppField20: TppField
      FieldAlias = 'CONFIRMA_VENDA'
      FieldName = 'CONFIRMA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppVendasppField21: TppField
      FieldAlias = 'EMISSAO_VENDA'
      FieldName = 'EMISSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppVendasppField22: TppField
      FieldAlias = 'DATASAIDA_VENDA'
      FieldName = 'DATASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppVendasppField23: TppField
      FieldAlias = 'HORASAIDA_VENDA'
      FieldName = 'HORASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppVendasppField24: TppField
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppVendasppField25: TppField
      FieldAlias = 'BASEICMS_VENDA'
      FieldName = 'BASEICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppVendasppField26: TppField
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppVendasppField27: TppField
      FieldAlias = 'BASEICMSSB_VENDA'
      FieldName = 'BASEICMSSB_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppVendasppField28: TppField
      FieldAlias = 'ICMSSB_VENDA'
      FieldName = 'ICMSSB_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppVendasppField29: TppField
      FieldAlias = 'IPI_VENDA'
      FieldName = 'IPI_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppVendasppField30: TppField
      FieldAlias = 'TRANSPORTA_VENDA'
      FieldName = 'TRANSPORTA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppVendasppField31: TppField
      FieldAlias = 'PESOBRUTO_VENDA'
      FieldName = 'PESOBRUTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppVendasppField32: TppField
      FieldAlias = 'PESOLIQUIDO_VENDA'
      FieldName = 'PESOLIQUIDO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppVendasppField33: TppField
      FieldAlias = 'OBSERVACAO_VENDA'
      FieldName = 'OBSERVACAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppVendasppField34: TppField
      FieldAlias = 'PARCELAS_VENDA'
      FieldName = 'PARCELAS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppVendasppField35: TppField
      FieldAlias = 'VALOR01_VENDA'
      FieldName = 'VALOR01_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppVendasppField36: TppField
      FieldAlias = 'VALOR02_VENDA'
      FieldName = 'VALOR02_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppVendasppField37: TppField
      FieldAlias = 'VALOR03_VENDA'
      FieldName = 'VALOR03_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppVendasppField38: TppField
      FieldAlias = 'VALOR04_VENDA'
      FieldName = 'VALOR04_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppVendasppField39: TppField
      FieldAlias = 'VALOR05_VENDA'
      FieldName = 'VALOR05_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppVendasppField40: TppField
      FieldAlias = 'VALOR06_VENDA'
      FieldName = 'VALOR06_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppVendasppField41: TppField
      FieldAlias = 'VALOR07_VENDA'
      FieldName = 'VALOR07_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppVendasppField42: TppField
      FieldAlias = 'VALOR08_VENDA'
      FieldName = 'VALOR08_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppVendasppField43: TppField
      FieldAlias = 'VALOR09_VENDA'
      FieldName = 'VALOR09_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppVendasppField44: TppField
      FieldAlias = 'VALOR10_VENDA'
      FieldName = 'VALOR10_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppVendasppField45: TppField
      FieldAlias = 'VALOR11_VENDA'
      FieldName = 'VALOR11_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppVendasppField46: TppField
      FieldAlias = 'VALOR12_VENDA'
      FieldName = 'VALOR12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppVendasppField47: TppField
      FieldAlias = 'VALOR13_VENDA'
      FieldName = 'VALOR13_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppVendasppField48: TppField
      FieldAlias = 'VALOR14_VENDA'
      FieldName = 'VALOR14_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppVendasppField49: TppField
      FieldAlias = 'VALOR15_VENDA'
      FieldName = 'VALOR15_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppVendasppField50: TppField
      FieldAlias = 'VENCIMEN01_VENDA'
      FieldName = 'VENCIMEN01_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppVendasppField51: TppField
      FieldAlias = 'VENCIMEN02_VENDA'
      FieldName = 'VENCIMEN02_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppVendasppField52: TppField
      FieldAlias = 'VENCIMEN03_VENDA'
      FieldName = 'VENCIMEN03_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppVendasppField53: TppField
      FieldAlias = 'VENCIMEN04_VENDA'
      FieldName = 'VENCIMEN04_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppVendasppField54: TppField
      FieldAlias = 'VENCIMEN05_VENDA'
      FieldName = 'VENCIMEN05_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppVendasppField55: TppField
      FieldAlias = 'VENCIMEN06_VENDA'
      FieldName = 'VENCIMEN06_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppVendasppField56: TppField
      FieldAlias = 'VENCIMEN07_VENDA'
      FieldName = 'VENCIMEN07_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppVendasppField57: TppField
      FieldAlias = 'VENCIMEN08_VENDA'
      FieldName = 'VENCIMEN08_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppVendasppField58: TppField
      FieldAlias = 'VENCIMEN09_VENDA'
      FieldName = 'VENCIMEN09_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppVendasppField59: TppField
      FieldAlias = 'VENCIMEN10_VENDA'
      FieldName = 'VENCIMEN10_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppVendasppField60: TppField
      FieldAlias = 'VENCIMEN11_VENDA'
      FieldName = 'VENCIMEN11_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppVendasppField61: TppField
      FieldAlias = 'VENCIMEN12_VENDA'
      FieldName = 'VENCIMEN12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppVendasppField62: TppField
      FieldAlias = 'VENCIMEN13_VENDA'
      FieldName = 'VENCIMEN13_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppVendasppField63: TppField
      FieldAlias = 'VENCIMEN14_VENDA'
      FieldName = 'VENCIMEN14_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppVendasppField64: TppField
      FieldAlias = 'VENCIMEN15_VENDA'
      FieldName = 'VENCIMEN15_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppVendasppField65: TppField
      FieldAlias = 'COMISSAO_VENDA'
      FieldName = 'COMISSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppVendasppField66: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppVendasppField67: TppField
      FieldAlias = 'TIPO1_VENDA'
      FieldName = 'TIPO1_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppVendasppField68: TppField
      FieldAlias = 'DEVOLVE_VENDA'
      FieldName = 'DEVOLVE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppVendasppField69: TppField
      FieldAlias = 'ENTREGA_VENDA'
      FieldName = 'ENTREGA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppVendasppField70: TppField
      FieldAlias = 'TROCO_VENDA'
      FieldName = 'TROCO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppVendasppField71: TppField
      FieldAlias = 'FRETE_VENDA'
      FieldName = 'FRETE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppVendasppField72: TppField
      FieldAlias = 'SEGURO_VENDA'
      FieldName = 'SEGURO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppVendasppField73: TppField
      FieldAlias = 'OUTROS_VENDA'
      FieldName = 'OUTROS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppVendasppField74: TppField
      FieldAlias = 'ROMANEIO_VENDA'
      FieldName = 'ROMANEIO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppVendasppField75: TppField
      FieldAlias = 'PLACASAIDA_VENDA'
      FieldName = 'PLACASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppVendasppField76: TppField
      FieldAlias = 'ESTADOSAIDA_VENDA'
      FieldName = 'ESTADOSAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppVendasppField77: TppField
      FieldAlias = 'NRFATURA_VENDA'
      FieldName = 'NRFATURA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppVendasppField78: TppField
      FieldAlias = 'AUTONOMO_VENDA'
      FieldName = 'AUTONOMO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppVendasppField79: TppField
      FieldAlias = 'EXPORTADO_VENDA'
      FieldName = 'EXPORTADO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppVendasppField80: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppVendasppField81: TppField
      FieldAlias = 'INFOADICIONA_VENDA'
      FieldName = 'INFOADICIONA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppVendasppField82: TppField
      FieldAlias = 'MACHO_4_VENDA'
      FieldName = 'MACHO_4_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppVendasppField83: TppField
      FieldAlias = 'MACHO_4_12_VENDA'
      FieldName = 'MACHO_4_12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppVendasppField84: TppField
      FieldAlias = 'MACHO_12_24_VENDA'
      FieldName = 'MACHO_12_24_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppVendasppField85: TppField
      FieldAlias = 'MACHO_24_36_VENDA'
      FieldName = 'MACHO_24_36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppVendasppField86: TppField
      FieldAlias = 'MACHO_M36_VENDA'
      FieldName = 'MACHO_M36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppVendasppField87: TppField
      FieldAlias = 'FEMEA_4_VENDA'
      FieldName = 'FEMEA_4_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppVendasppField88: TppField
      FieldAlias = 'FEMEA_4_12_VENDA'
      FieldName = 'FEMEA_4_12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppVendasppField89: TppField
      FieldAlias = 'FEMEA_12_24_VENDA'
      FieldName = 'FEMEA_12_24_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppVendasppField90: TppField
      FieldAlias = 'FEMEA_24_36_VENDA'
      FieldName = 'FEMEA_24_36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppVendasppField91: TppField
      FieldAlias = 'FEMEA_M36_VENDA'
      FieldName = 'FEMEA_M36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppVendasppField92: TppField
      FieldAlias = 'BUFALOS_VENDA'
      FieldName = 'BUFALOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppVendasppField93: TppField
      FieldAlias = 'CAPRINOS_VENDA'
      FieldName = 'CAPRINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppVendasppField94: TppField
      FieldAlias = 'OVINOS_VENDA'
      FieldName = 'OVINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppVendasppField95: TppField
      FieldAlias = 'SUINOS_VENDA'
      FieldName = 'SUINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object ppVendasppField96: TppField
      FieldAlias = 'TROCA_VENDA'
      FieldName = 'TROCA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppVendasppField97: TppField
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object ppVendasppField98: TppField
      FieldAlias = 'CNPJCLIENTE_VENDA'
      FieldName = 'CNPJCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppVendasppField99: TppField
      FieldAlias = 'RGCLIENTE_VENDA'
      FieldName = 'RGCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object ppVendasppField100: TppField
      FieldAlias = 'ENDCLIENTE_VENDA'
      FieldName = 'ENDCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object ppVendasppField101: TppField
      FieldAlias = 'BAICLIENTE_VENDA'
      FieldName = 'BAICLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object ppVendasppField102: TppField
      FieldAlias = 'CIDCLIENTE_VENDA'
      FieldName = 'CIDCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object ppVendasppField103: TppField
      FieldAlias = 'ESTCLIENTE_VENDA'
      FieldName = 'ESTCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object ppVendasppField104: TppField
      FieldAlias = 'CEPCLIENTE_VENDA'
      FieldName = 'CEPCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object ppVendasppField105: TppField
      FieldAlias = 'FONECLIENTE_VENDA'
      FieldName = 'FONECLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object ppVendasppField106: TppField
      FieldAlias = 'CARNE_VENDA'
      FieldName = 'CARNE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object ppVendasppField107: TppField
      FieldAlias = 'USUARIO_VENDA'
      FieldName = 'USUARIO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object ppVendasppField108: TppField
      FieldAlias = 'USUALTERA_VENDA'
      FieldName = 'USUALTERA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object ppVendasppField109: TppField
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object ppVendasppField110: TppField
      FieldAlias = 'OBS1'
      FieldName = 'OBS1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object ppVendasppField111: TppField
      FieldAlias = 'OBS2'
      FieldName = 'OBS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object ppVendasppField112: TppField
      FieldAlias = 'OBS3'
      FieldName = 'OBS3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object ppVendasppField113: TppField
      FieldAlias = 'OBS4'
      FieldName = 'OBS4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object ppVendasppField114: TppField
      FieldAlias = 'NF_SERV'
      FieldName = 'NF_SERV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object ppVendasppField115: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object ppVendasppField116: TppField
      FieldAlias = 'PERC_DESC'
      FieldName = 'PERC_DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
    object ppVendasppField117: TppField
      FieldAlias = 'VALOR_RECE'
      FieldName = 'VALOR_RECE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 116
      Searchable = False
      Sortable = False
    end
  end
  object qryCFOP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 74
  end
  object dspCFOP: TDataSetProvider
    DataSet = qryCFOP
    Options = [poAllowCommandText]
    Left = 96
    Top = 74
  end
  object cdsCFOP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCFOP'
    Left = 168
    Top = 74
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object IntegerField2: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object IntegerField3: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object StringField1: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object DateField1: TDateField
      FieldName = 'DATA_VENDA'
    end
    object DateField2: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object StringField2: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'DESCON_ESP_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object StringField3: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object FMTBCDField5: TFMTBCDField
      FieldName = 'CAIXA_VENDA'
      Precision = 15
      Size = 0
    end
    object StringField4: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object IntegerField6: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object StringField6: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object StringField7: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object DateField3: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object DateField4: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object StringField8: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object FMTBCDField6: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField7: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField8: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField9: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField10: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField11: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object IntegerField7: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object FMTBCDField12: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      Precision = 15
      Size = 3
    end
    object FMTBCDField13: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      Precision = 15
      Size = 3
    end
    object StringField9: TStringField
      FieldName = 'OBSERVACAO_VENDA'
      Size = 75
    end
    object IntegerField8: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object FMTBCDField14: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField15: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField16: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField17: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField18: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField19: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField20: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField21: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField22: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField23: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField24: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField25: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField26: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField27: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField28: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      Precision = 15
      Size = 2
    end
    object DateField5: TDateField
      FieldName = 'VENCIMEN01_VENDA'
    end
    object DateField6: TDateField
      FieldName = 'VENCIMEN02_VENDA'
    end
    object DateField7: TDateField
      FieldName = 'VENCIMEN03_VENDA'
    end
    object DateField8: TDateField
      FieldName = 'VENCIMEN04_VENDA'
    end
    object DateField9: TDateField
      FieldName = 'VENCIMEN05_VENDA'
    end
    object DateField10: TDateField
      FieldName = 'VENCIMEN06_VENDA'
    end
    object DateField11: TDateField
      FieldName = 'VENCIMEN07_VENDA'
    end
    object DateField12: TDateField
      FieldName = 'VENCIMEN08_VENDA'
    end
    object DateField13: TDateField
      FieldName = 'VENCIMEN09_VENDA'
    end
    object DateField14: TDateField
      FieldName = 'VENCIMEN10_VENDA'
    end
    object DateField15: TDateField
      FieldName = 'VENCIMEN11_VENDA'
    end
    object DateField16: TDateField
      FieldName = 'VENCIMEN12_VENDA'
    end
    object DateField17: TDateField
      FieldName = 'VENCIMEN13_VENDA'
    end
    object DateField18: TDateField
      FieldName = 'VENCIMEN14_VENDA'
    end
    object DateField19: TDateField
      FieldName = 'VENCIMEN15_VENDA'
    end
    object FMTBCDField29: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object StringField10: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object StringField11: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object StringField12: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object StringField13: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object FMTBCDField30: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField31: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField32: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object FMTBCDField33: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object IntegerField9: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object StringField14: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object StringField15: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
    object IntegerField10: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object StringField16: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object StringField17: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object StringField18: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object StringField19: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object IntegerField11: TIntegerField
      FieldName = 'MACHO_4_VENDA'
    end
    object IntegerField12: TIntegerField
      FieldName = 'MACHO_4_12_VENDA'
    end
    object IntegerField13: TIntegerField
      FieldName = 'MACHO_12_24_VENDA'
    end
    object IntegerField14: TIntegerField
      FieldName = 'MACHO_24_36_VENDA'
    end
    object IntegerField15: TIntegerField
      FieldName = 'MACHO_M36_VENDA'
    end
    object IntegerField16: TIntegerField
      FieldName = 'FEMEA_4_VENDA'
    end
    object IntegerField17: TIntegerField
      FieldName = 'FEMEA_4_12_VENDA'
    end
    object IntegerField18: TIntegerField
      FieldName = 'FEMEA_12_24_VENDA'
    end
    object IntegerField19: TIntegerField
      FieldName = 'FEMEA_24_36_VENDA'
    end
    object IntegerField20: TIntegerField
      FieldName = 'FEMEA_M36_VENDA'
    end
    object IntegerField21: TIntegerField
      FieldName = 'BUFALOS_VENDA'
    end
    object IntegerField22: TIntegerField
      FieldName = 'CAPRINOS_VENDA'
    end
    object IntegerField23: TIntegerField
      FieldName = 'OVINOS_VENDA'
    end
    object IntegerField24: TIntegerField
      FieldName = 'SUINOS_VENDA'
    end
    object IntegerField25: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object IntegerField26: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object StringField20: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object StringField21: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object StringField22: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object StringField23: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object StringField24: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object StringField25: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object StringField26: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object StringField27: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object StringField28: TStringField
      FieldName = 'CARNE_VENDA'
      Size = 1
    end
    object StringField29: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object StringField30: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object IntegerField27: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object StringField31: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object StringField32: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object StringField33: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object StringField34: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object IntegerField28: TIntegerField
      FieldName = 'NF_SERV'
    end
    object StringField35: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object FMTBCDField34: TFMTBCDField
      FieldName = 'PERC_DESC'
      Precision = 15
      Size = 4
    end
    object FMTBCDField35: TFMTBCDField
      FieldName = 'VALOR_RECE'
      Precision = 15
      Size = 2
    end
  end
  object dtsCFOP: TDataSource
    DataSet = cdsCFOP
    Left = 240
    Top = 74
  end
  object ppCFOP: TppDBPipeline
    DataSource = dtsCFOP
    UserName = 'CFOP'
    Left = 304
    Top = 74
    object ppField1: TppField
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'PARCEIRO_VENDA'
      FieldName = 'PARCEIRO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'PROPRIEDADE_VENDA'
      FieldName = 'PROPRIEDADE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'NOMECLIENTE_VENDA'
      FieldName = 'NOMECLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField7: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppField8: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppField9: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppField10: TppField
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppField11: TppField
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppField12: TppField
      FieldAlias = 'DESCON_ESP_VENDA'
      FieldName = 'DESCON_ESP_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppField13: TppField
      FieldAlias = 'CPAGAMENTO_VENDA'
      FieldName = 'CPAGAMENTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppField14: TppField
      FieldAlias = 'CHAVE_VENDA'
      FieldName = 'CHAVE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppField15: TppField
      FieldAlias = 'CAIXA_VENDA'
      FieldName = 'CAIXA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppField16: TppField
      FieldAlias = 'TIPO_PRECO_VENDA'
      FieldName = 'TIPO_PRECO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppField17: TppField
      FieldAlias = 'CFOP_VENDA'
      FieldName = 'CFOP_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppField18: TppField
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppField19: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppField20: TppField
      FieldAlias = 'CONFIRMA_VENDA'
      FieldName = 'CONFIRMA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppField21: TppField
      FieldAlias = 'EMISSAO_VENDA'
      FieldName = 'EMISSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppField22: TppField
      FieldAlias = 'DATASAIDA_VENDA'
      FieldName = 'DATASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppField23: TppField
      FieldAlias = 'HORASAIDA_VENDA'
      FieldName = 'HORASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppField24: TppField
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppField25: TppField
      FieldAlias = 'BASEICMS_VENDA'
      FieldName = 'BASEICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppField26: TppField
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppField27: TppField
      FieldAlias = 'BASEICMSSB_VENDA'
      FieldName = 'BASEICMSSB_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppField28: TppField
      FieldAlias = 'ICMSSB_VENDA'
      FieldName = 'ICMSSB_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppField29: TppField
      FieldAlias = 'IPI_VENDA'
      FieldName = 'IPI_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppField30: TppField
      FieldAlias = 'TRANSPORTA_VENDA'
      FieldName = 'TRANSPORTA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppField31: TppField
      FieldAlias = 'PESOBRUTO_VENDA'
      FieldName = 'PESOBRUTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppField32: TppField
      FieldAlias = 'PESOLIQUIDO_VENDA'
      FieldName = 'PESOLIQUIDO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppField33: TppField
      FieldAlias = 'OBSERVACAO_VENDA'
      FieldName = 'OBSERVACAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppField34: TppField
      FieldAlias = 'PARCELAS_VENDA'
      FieldName = 'PARCELAS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppField35: TppField
      FieldAlias = 'VALOR01_VENDA'
      FieldName = 'VALOR01_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppField36: TppField
      FieldAlias = 'VALOR02_VENDA'
      FieldName = 'VALOR02_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppField37: TppField
      FieldAlias = 'VALOR03_VENDA'
      FieldName = 'VALOR03_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppField38: TppField
      FieldAlias = 'VALOR04_VENDA'
      FieldName = 'VALOR04_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppField39: TppField
      FieldAlias = 'VALOR05_VENDA'
      FieldName = 'VALOR05_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppField40: TppField
      FieldAlias = 'VALOR06_VENDA'
      FieldName = 'VALOR06_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppField41: TppField
      FieldAlias = 'VALOR07_VENDA'
      FieldName = 'VALOR07_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppField42: TppField
      FieldAlias = 'VALOR08_VENDA'
      FieldName = 'VALOR08_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppField43: TppField
      FieldAlias = 'VALOR09_VENDA'
      FieldName = 'VALOR09_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppField44: TppField
      FieldAlias = 'VALOR10_VENDA'
      FieldName = 'VALOR10_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppField45: TppField
      FieldAlias = 'VALOR11_VENDA'
      FieldName = 'VALOR11_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppField46: TppField
      FieldAlias = 'VALOR12_VENDA'
      FieldName = 'VALOR12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppField47: TppField
      FieldAlias = 'VALOR13_VENDA'
      FieldName = 'VALOR13_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppField48: TppField
      FieldAlias = 'VALOR14_VENDA'
      FieldName = 'VALOR14_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppField49: TppField
      FieldAlias = 'VALOR15_VENDA'
      FieldName = 'VALOR15_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppField50: TppField
      FieldAlias = 'VENCIMEN01_VENDA'
      FieldName = 'VENCIMEN01_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppField51: TppField
      FieldAlias = 'VENCIMEN02_VENDA'
      FieldName = 'VENCIMEN02_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppField52: TppField
      FieldAlias = 'VENCIMEN03_VENDA'
      FieldName = 'VENCIMEN03_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppField53: TppField
      FieldAlias = 'VENCIMEN04_VENDA'
      FieldName = 'VENCIMEN04_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppField54: TppField
      FieldAlias = 'VENCIMEN05_VENDA'
      FieldName = 'VENCIMEN05_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppField55: TppField
      FieldAlias = 'VENCIMEN06_VENDA'
      FieldName = 'VENCIMEN06_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppField56: TppField
      FieldAlias = 'VENCIMEN07_VENDA'
      FieldName = 'VENCIMEN07_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppField57: TppField
      FieldAlias = 'VENCIMEN08_VENDA'
      FieldName = 'VENCIMEN08_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppField58: TppField
      FieldAlias = 'VENCIMEN09_VENDA'
      FieldName = 'VENCIMEN09_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppField59: TppField
      FieldAlias = 'VENCIMEN10_VENDA'
      FieldName = 'VENCIMEN10_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppField60: TppField
      FieldAlias = 'VENCIMEN11_VENDA'
      FieldName = 'VENCIMEN11_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppField61: TppField
      FieldAlias = 'VENCIMEN12_VENDA'
      FieldName = 'VENCIMEN12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppField62: TppField
      FieldAlias = 'VENCIMEN13_VENDA'
      FieldName = 'VENCIMEN13_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppField63: TppField
      FieldAlias = 'VENCIMEN14_VENDA'
      FieldName = 'VENCIMEN14_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppField64: TppField
      FieldAlias = 'VENCIMEN15_VENDA'
      FieldName = 'VENCIMEN15_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppField65: TppField
      FieldAlias = 'COMISSAO_VENDA'
      FieldName = 'COMISSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppField66: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppField67: TppField
      FieldAlias = 'TIPO1_VENDA'
      FieldName = 'TIPO1_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppField68: TppField
      FieldAlias = 'DEVOLVE_VENDA'
      FieldName = 'DEVOLVE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppField69: TppField
      FieldAlias = 'ENTREGA_VENDA'
      FieldName = 'ENTREGA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppField70: TppField
      FieldAlias = 'TROCO_VENDA'
      FieldName = 'TROCO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppField71: TppField
      FieldAlias = 'FRETE_VENDA'
      FieldName = 'FRETE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppField72: TppField
      FieldAlias = 'SEGURO_VENDA'
      FieldName = 'SEGURO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppField73: TppField
      FieldAlias = 'OUTROS_VENDA'
      FieldName = 'OUTROS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppField74: TppField
      FieldAlias = 'ROMANEIO_VENDA'
      FieldName = 'ROMANEIO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppField75: TppField
      FieldAlias = 'PLACASAIDA_VENDA'
      FieldName = 'PLACASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppField76: TppField
      FieldAlias = 'ESTADOSAIDA_VENDA'
      FieldName = 'ESTADOSAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppField77: TppField
      FieldAlias = 'NRFATURA_VENDA'
      FieldName = 'NRFATURA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppField78: TppField
      FieldAlias = 'AUTONOMO_VENDA'
      FieldName = 'AUTONOMO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppField79: TppField
      FieldAlias = 'EXPORTADO_VENDA'
      FieldName = 'EXPORTADO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppField80: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppField81: TppField
      FieldAlias = 'INFOADICIONA_VENDA'
      FieldName = 'INFOADICIONA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppField82: TppField
      FieldAlias = 'MACHO_4_VENDA'
      FieldName = 'MACHO_4_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppField83: TppField
      FieldAlias = 'MACHO_4_12_VENDA'
      FieldName = 'MACHO_4_12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppField84: TppField
      FieldAlias = 'MACHO_12_24_VENDA'
      FieldName = 'MACHO_12_24_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppField85: TppField
      FieldAlias = 'MACHO_24_36_VENDA'
      FieldName = 'MACHO_24_36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppField86: TppField
      FieldAlias = 'MACHO_M36_VENDA'
      FieldName = 'MACHO_M36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppField87: TppField
      FieldAlias = 'FEMEA_4_VENDA'
      FieldName = 'FEMEA_4_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppField88: TppField
      FieldAlias = 'FEMEA_4_12_VENDA'
      FieldName = 'FEMEA_4_12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppField89: TppField
      FieldAlias = 'FEMEA_12_24_VENDA'
      FieldName = 'FEMEA_12_24_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppField90: TppField
      FieldAlias = 'FEMEA_24_36_VENDA'
      FieldName = 'FEMEA_24_36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppField91: TppField
      FieldAlias = 'FEMEA_M36_VENDA'
      FieldName = 'FEMEA_M36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppField92: TppField
      FieldAlias = 'BUFALOS_VENDA'
      FieldName = 'BUFALOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppField93: TppField
      FieldAlias = 'CAPRINOS_VENDA'
      FieldName = 'CAPRINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppField94: TppField
      FieldAlias = 'OVINOS_VENDA'
      FieldName = 'OVINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppField95: TppField
      FieldAlias = 'SUINOS_VENDA'
      FieldName = 'SUINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object ppField96: TppField
      FieldAlias = 'TROCA_VENDA'
      FieldName = 'TROCA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppField97: TppField
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object ppField98: TppField
      FieldAlias = 'CNPJCLIENTE_VENDA'
      FieldName = 'CNPJCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppField99: TppField
      FieldAlias = 'RGCLIENTE_VENDA'
      FieldName = 'RGCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object ppField100: TppField
      FieldAlias = 'ENDCLIENTE_VENDA'
      FieldName = 'ENDCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object ppField101: TppField
      FieldAlias = 'BAICLIENTE_VENDA'
      FieldName = 'BAICLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object ppField102: TppField
      FieldAlias = 'CIDCLIENTE_VENDA'
      FieldName = 'CIDCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object ppField103: TppField
      FieldAlias = 'ESTCLIENTE_VENDA'
      FieldName = 'ESTCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object ppField104: TppField
      FieldAlias = 'CEPCLIENTE_VENDA'
      FieldName = 'CEPCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object ppField105: TppField
      FieldAlias = 'FONECLIENTE_VENDA'
      FieldName = 'FONECLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object ppField106: TppField
      FieldAlias = 'CARNE_VENDA'
      FieldName = 'CARNE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object ppField107: TppField
      FieldAlias = 'USUARIO_VENDA'
      FieldName = 'USUARIO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object ppField108: TppField
      FieldAlias = 'USUALTERA_VENDA'
      FieldName = 'USUALTERA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object ppField109: TppField
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object ppField110: TppField
      FieldAlias = 'OBS1'
      FieldName = 'OBS1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object ppField111: TppField
      FieldAlias = 'OBS2'
      FieldName = 'OBS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object ppField112: TppField
      FieldAlias = 'OBS3'
      FieldName = 'OBS3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object ppField113: TppField
      FieldAlias = 'OBS4'
      FieldName = 'OBS4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object ppField114: TppField
      FieldAlias = 'NF_SERV'
      FieldName = 'NF_SERV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object ppField115: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object ppField116: TppField
      FieldAlias = 'PERC_DESC'
      FieldName = 'PERC_DESC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
    object ppField117: TppField
      FieldAlias = 'VALOR_RECE'
      FieldName = 'VALOR_RECE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 116
      Searchable = False
      Sortable = False
    end
  end
end
