object dmRL0507: TdmRL0507
  OldCreateOrder = False
  Left = 336
  Top = 309
  Height = 216
  Width = 368
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 16
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 152
    Top = 17
    object cdsClienteCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsClienteVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsClientePARCEIRO_VENDA: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object cdsClienteCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsClientePROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object cdsClienteNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object cdsClienteDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsClienteEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsClienteHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsClienteFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteDESCON_ESP_VENDA: TFMTBCDField
      FieldName = 'DESCON_ESP_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsClienteCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object cdsClienteCAIXA_VENDA: TFMTBCDField
      FieldName = 'CAIXA_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsClienteTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object cdsClienteCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsClienteNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsClienteSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsClienteCONFIRMA_VENDA: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object cdsClienteEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsClienteDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object cdsClienteHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object cdsClienteVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object cdsClientePESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsClientePESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsClienteOBSERVACAO_VENDA: TStringField
      FieldName = 'OBSERVACAO_VENDA'
      Size = 75
    end
    object cdsClientePARCELAS_VENDA: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object cdsClienteVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
    end
    object cdsClienteVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
    end
    object cdsClienteVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
    end
    object cdsClienteVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
    end
    object cdsClienteVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
    end
    object cdsClienteVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
    end
    object cdsClienteVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
    end
    object cdsClienteVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
    end
    object cdsClienteVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
    end
    object cdsClienteVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
    end
    object cdsClienteVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
    end
    object cdsClienteVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
    end
    object cdsClienteVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
    end
    object cdsClienteVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
    end
    object cdsClienteVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
    end
    object cdsClienteCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsClienteTIPO1_VENDA: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object cdsClienteDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object cdsClienteENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object cdsClienteTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsClienteROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object cdsClientePLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object cdsClienteESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
    object cdsClienteNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object cdsClienteAUTONOMO_VENDA: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object cdsClienteEXPORTADO_VENDA: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object cdsClienteTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsClienteINFOADICIONA_VENDA: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object cdsClienteMACHO_4_VENDA: TIntegerField
      FieldName = 'MACHO_4_VENDA'
    end
    object cdsClienteMACHO_4_12_VENDA: TIntegerField
      FieldName = 'MACHO_4_12_VENDA'
    end
    object cdsClienteMACHO_12_24_VENDA: TIntegerField
      FieldName = 'MACHO_12_24_VENDA'
    end
    object cdsClienteMACHO_24_36_VENDA: TIntegerField
      FieldName = 'MACHO_24_36_VENDA'
    end
    object cdsClienteMACHO_M36_VENDA: TIntegerField
      FieldName = 'MACHO_M36_VENDA'
    end
    object cdsClienteFEMEA_4_VENDA: TIntegerField
      FieldName = 'FEMEA_4_VENDA'
    end
    object cdsClienteFEMEA_4_12_VENDA: TIntegerField
      FieldName = 'FEMEA_4_12_VENDA'
    end
    object cdsClienteFEMEA_12_24_VENDA: TIntegerField
      FieldName = 'FEMEA_12_24_VENDA'
    end
    object cdsClienteFEMEA_24_36_VENDA: TIntegerField
      FieldName = 'FEMEA_24_36_VENDA'
    end
    object cdsClienteFEMEA_M36_VENDA: TIntegerField
      FieldName = 'FEMEA_M36_VENDA'
    end
    object cdsClienteBUFALOS_VENDA: TIntegerField
      FieldName = 'BUFALOS_VENDA'
    end
    object cdsClienteCAPRINOS_VENDA: TIntegerField
      FieldName = 'CAPRINOS_VENDA'
    end
    object cdsClienteOVINOS_VENDA: TIntegerField
      FieldName = 'OVINOS_VENDA'
    end
    object cdsClienteSUINOS_VENDA: TIntegerField
      FieldName = 'SUINOS_VENDA'
    end
    object cdsClienteTROCA_VENDA: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object cdsClienteOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsClienteCNPJCLIENTE_VENDA: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object cdsClienteRGCLIENTE_VENDA: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object cdsClienteENDCLIENTE_VENDA: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object cdsClienteBAICLIENTE_VENDA: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object cdsClienteCIDCLIENTE_VENDA: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object cdsClienteESTCLIENTE_VENDA: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object cdsClienteCEPCLIENTE_VENDA: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object cdsClienteFONECLIENTE_VENDA: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object cdsClienteCARNE_VENDA: TStringField
      FieldName = 'CARNE_VENDA'
      Size = 1
    end
    object cdsClienteUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object cdsClienteUSUALTERA_VENDA: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object cdsClienteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsClienteOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object cdsClienteOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object cdsClienteOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object cdsClienteOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object cdsClienteNF_SERV: TIntegerField
      FieldName = 'NF_SERV'
    end
    object cdsClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsClienteTOTAL_VENDA: TFMTBCDField
      FieldName = 'TOTAL_VENDA'
      Precision = 15
      Size = 2
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Options = [poAllowCommandText]
    Left = 88
    Top = 16
  end
  object dtsCliente: TDataSource
    DataSet = cdsCliente
    Left = 224
    Top = 16
  end
  object ppCliente: TppDBPipeline
    DataSource = dtsCliente
    UserName = 'Cliente'
    Left = 296
    Top = 16
    object ppClienteppField1: TppField
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppClienteppField2: TppField
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppClienteppField3: TppField
      FieldAlias = 'PARCEIRO_VENDA'
      FieldName = 'PARCEIRO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppClienteppField4: TppField
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppClienteppField5: TppField
      FieldAlias = 'PROPRIEDADE_VENDA'
      FieldName = 'PROPRIEDADE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppClienteppField6: TppField
      FieldAlias = 'NOMECLIENTE_VENDA'
      FieldName = 'NOMECLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppClienteppField7: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppClienteppField8: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppClienteppField9: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppClienteppField10: TppField
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppClienteppField11: TppField
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppClienteppField12: TppField
      FieldAlias = 'DESCON_ESP_VENDA'
      FieldName = 'DESCON_ESP_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppClienteppField13: TppField
      FieldAlias = 'CPAGAMENTO_VENDA'
      FieldName = 'CPAGAMENTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppClienteppField14: TppField
      FieldAlias = 'CHAVE_VENDA'
      FieldName = 'CHAVE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppClienteppField15: TppField
      FieldAlias = 'CAIXA_VENDA'
      FieldName = 'CAIXA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppClienteppField16: TppField
      FieldAlias = 'TIPO_PRECO_VENDA'
      FieldName = 'TIPO_PRECO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppClienteppField17: TppField
      FieldAlias = 'CFOP_VENDA'
      FieldName = 'CFOP_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppClienteppField18: TppField
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppClienteppField19: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppClienteppField20: TppField
      FieldAlias = 'CONFIRMA_VENDA'
      FieldName = 'CONFIRMA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppClienteppField21: TppField
      FieldAlias = 'EMISSAO_VENDA'
      FieldName = 'EMISSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppClienteppField22: TppField
      FieldAlias = 'DATASAIDA_VENDA'
      FieldName = 'DATASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppClienteppField23: TppField
      FieldAlias = 'HORASAIDA_VENDA'
      FieldName = 'HORASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppClienteppField24: TppField
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppClienteppField25: TppField
      FieldAlias = 'BASEICMS_VENDA'
      FieldName = 'BASEICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppClienteppField26: TppField
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppClienteppField27: TppField
      FieldAlias = 'BASEICMSSB_VENDA'
      FieldName = 'BASEICMSSB_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppClienteppField28: TppField
      FieldAlias = 'ICMSSB_VENDA'
      FieldName = 'ICMSSB_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppClienteppField29: TppField
      FieldAlias = 'IPI_VENDA'
      FieldName = 'IPI_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppClienteppField30: TppField
      FieldAlias = 'TRANSPORTA_VENDA'
      FieldName = 'TRANSPORTA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppClienteppField31: TppField
      FieldAlias = 'PESOBRUTO_VENDA'
      FieldName = 'PESOBRUTO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppClienteppField32: TppField
      FieldAlias = 'PESOLIQUIDO_VENDA'
      FieldName = 'PESOLIQUIDO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppClienteppField33: TppField
      FieldAlias = 'OBSERVACAO_VENDA'
      FieldName = 'OBSERVACAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppClienteppField34: TppField
      FieldAlias = 'PARCELAS_VENDA'
      FieldName = 'PARCELAS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppClienteppField35: TppField
      FieldAlias = 'VALOR01_VENDA'
      FieldName = 'VALOR01_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppClienteppField36: TppField
      FieldAlias = 'VALOR02_VENDA'
      FieldName = 'VALOR02_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppClienteppField37: TppField
      FieldAlias = 'VALOR03_VENDA'
      FieldName = 'VALOR03_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppClienteppField38: TppField
      FieldAlias = 'VALOR04_VENDA'
      FieldName = 'VALOR04_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppClienteppField39: TppField
      FieldAlias = 'VALOR05_VENDA'
      FieldName = 'VALOR05_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppClienteppField40: TppField
      FieldAlias = 'VALOR06_VENDA'
      FieldName = 'VALOR06_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppClienteppField41: TppField
      FieldAlias = 'VALOR07_VENDA'
      FieldName = 'VALOR07_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppClienteppField42: TppField
      FieldAlias = 'VALOR08_VENDA'
      FieldName = 'VALOR08_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppClienteppField43: TppField
      FieldAlias = 'VALOR09_VENDA'
      FieldName = 'VALOR09_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppClienteppField44: TppField
      FieldAlias = 'VALOR10_VENDA'
      FieldName = 'VALOR10_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppClienteppField45: TppField
      FieldAlias = 'VALOR11_VENDA'
      FieldName = 'VALOR11_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppClienteppField46: TppField
      FieldAlias = 'VALOR12_VENDA'
      FieldName = 'VALOR12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppClienteppField47: TppField
      FieldAlias = 'VALOR13_VENDA'
      FieldName = 'VALOR13_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppClienteppField48: TppField
      FieldAlias = 'VALOR14_VENDA'
      FieldName = 'VALOR14_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppClienteppField49: TppField
      FieldAlias = 'VALOR15_VENDA'
      FieldName = 'VALOR15_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppClienteppField50: TppField
      FieldAlias = 'VENCIMEN01_VENDA'
      FieldName = 'VENCIMEN01_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppClienteppField51: TppField
      FieldAlias = 'VENCIMEN02_VENDA'
      FieldName = 'VENCIMEN02_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppClienteppField52: TppField
      FieldAlias = 'VENCIMEN03_VENDA'
      FieldName = 'VENCIMEN03_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppClienteppField53: TppField
      FieldAlias = 'VENCIMEN04_VENDA'
      FieldName = 'VENCIMEN04_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppClienteppField54: TppField
      FieldAlias = 'VENCIMEN05_VENDA'
      FieldName = 'VENCIMEN05_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppClienteppField55: TppField
      FieldAlias = 'VENCIMEN06_VENDA'
      FieldName = 'VENCIMEN06_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppClienteppField56: TppField
      FieldAlias = 'VENCIMEN07_VENDA'
      FieldName = 'VENCIMEN07_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppClienteppField57: TppField
      FieldAlias = 'VENCIMEN08_VENDA'
      FieldName = 'VENCIMEN08_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppClienteppField58: TppField
      FieldAlias = 'VENCIMEN09_VENDA'
      FieldName = 'VENCIMEN09_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppClienteppField59: TppField
      FieldAlias = 'VENCIMEN10_VENDA'
      FieldName = 'VENCIMEN10_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppClienteppField60: TppField
      FieldAlias = 'VENCIMEN11_VENDA'
      FieldName = 'VENCIMEN11_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppClienteppField61: TppField
      FieldAlias = 'VENCIMEN12_VENDA'
      FieldName = 'VENCIMEN12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppClienteppField62: TppField
      FieldAlias = 'VENCIMEN13_VENDA'
      FieldName = 'VENCIMEN13_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppClienteppField63: TppField
      FieldAlias = 'VENCIMEN14_VENDA'
      FieldName = 'VENCIMEN14_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppClienteppField64: TppField
      FieldAlias = 'VENCIMEN15_VENDA'
      FieldName = 'VENCIMEN15_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppClienteppField65: TppField
      FieldAlias = 'COMISSAO_VENDA'
      FieldName = 'COMISSAO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppClienteppField66: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppClienteppField67: TppField
      FieldAlias = 'TIPO1_VENDA'
      FieldName = 'TIPO1_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppClienteppField68: TppField
      FieldAlias = 'DEVOLVE_VENDA'
      FieldName = 'DEVOLVE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppClienteppField69: TppField
      FieldAlias = 'ENTREGA_VENDA'
      FieldName = 'ENTREGA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppClienteppField70: TppField
      FieldAlias = 'TROCO_VENDA'
      FieldName = 'TROCO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppClienteppField71: TppField
      FieldAlias = 'FRETE_VENDA'
      FieldName = 'FRETE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppClienteppField72: TppField
      FieldAlias = 'SEGURO_VENDA'
      FieldName = 'SEGURO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppClienteppField73: TppField
      FieldAlias = 'OUTROS_VENDA'
      FieldName = 'OUTROS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppClienteppField74: TppField
      FieldAlias = 'ROMANEIO_VENDA'
      FieldName = 'ROMANEIO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppClienteppField75: TppField
      FieldAlias = 'PLACASAIDA_VENDA'
      FieldName = 'PLACASAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppClienteppField76: TppField
      FieldAlias = 'ESTADOSAIDA_VENDA'
      FieldName = 'ESTADOSAIDA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppClienteppField77: TppField
      FieldAlias = 'NRFATURA_VENDA'
      FieldName = 'NRFATURA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppClienteppField78: TppField
      FieldAlias = 'AUTONOMO_VENDA'
      FieldName = 'AUTONOMO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppClienteppField79: TppField
      FieldAlias = 'EXPORTADO_VENDA'
      FieldName = 'EXPORTADO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppClienteppField80: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppClienteppField81: TppField
      FieldAlias = 'INFOADICIONA_VENDA'
      FieldName = 'INFOADICIONA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppClienteppField82: TppField
      FieldAlias = 'MACHO_4_VENDA'
      FieldName = 'MACHO_4_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppClienteppField83: TppField
      FieldAlias = 'MACHO_4_12_VENDA'
      FieldName = 'MACHO_4_12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppClienteppField84: TppField
      FieldAlias = 'MACHO_12_24_VENDA'
      FieldName = 'MACHO_12_24_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppClienteppField85: TppField
      FieldAlias = 'MACHO_24_36_VENDA'
      FieldName = 'MACHO_24_36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppClienteppField86: TppField
      FieldAlias = 'MACHO_M36_VENDA'
      FieldName = 'MACHO_M36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppClienteppField87: TppField
      FieldAlias = 'FEMEA_4_VENDA'
      FieldName = 'FEMEA_4_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppClienteppField88: TppField
      FieldAlias = 'FEMEA_4_12_VENDA'
      FieldName = 'FEMEA_4_12_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppClienteppField89: TppField
      FieldAlias = 'FEMEA_12_24_VENDA'
      FieldName = 'FEMEA_12_24_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppClienteppField90: TppField
      FieldAlias = 'FEMEA_24_36_VENDA'
      FieldName = 'FEMEA_24_36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppClienteppField91: TppField
      FieldAlias = 'FEMEA_M36_VENDA'
      FieldName = 'FEMEA_M36_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppClienteppField92: TppField
      FieldAlias = 'BUFALOS_VENDA'
      FieldName = 'BUFALOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppClienteppField93: TppField
      FieldAlias = 'CAPRINOS_VENDA'
      FieldName = 'CAPRINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppClienteppField94: TppField
      FieldAlias = 'OVINOS_VENDA'
      FieldName = 'OVINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppClienteppField95: TppField
      FieldAlias = 'SUINOS_VENDA'
      FieldName = 'SUINOS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object ppClienteppField96: TppField
      FieldAlias = 'TROCA_VENDA'
      FieldName = 'TROCA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppClienteppField97: TppField
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object ppClienteppField98: TppField
      FieldAlias = 'CNPJCLIENTE_VENDA'
      FieldName = 'CNPJCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppClienteppField99: TppField
      FieldAlias = 'RGCLIENTE_VENDA'
      FieldName = 'RGCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object ppClienteppField100: TppField
      FieldAlias = 'ENDCLIENTE_VENDA'
      FieldName = 'ENDCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object ppClienteppField101: TppField
      FieldAlias = 'BAICLIENTE_VENDA'
      FieldName = 'BAICLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object ppClienteppField102: TppField
      FieldAlias = 'CIDCLIENTE_VENDA'
      FieldName = 'CIDCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object ppClienteppField103: TppField
      FieldAlias = 'ESTCLIENTE_VENDA'
      FieldName = 'ESTCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object ppClienteppField104: TppField
      FieldAlias = 'CEPCLIENTE_VENDA'
      FieldName = 'CEPCLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object ppClienteppField105: TppField
      FieldAlias = 'FONECLIENTE_VENDA'
      FieldName = 'FONECLIENTE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object ppClienteppField106: TppField
      FieldAlias = 'CARNE_VENDA'
      FieldName = 'CARNE_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object ppClienteppField107: TppField
      FieldAlias = 'USUARIO_VENDA'
      FieldName = 'USUARIO_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object ppClienteppField108: TppField
      FieldAlias = 'USUALTERA_VENDA'
      FieldName = 'USUALTERA_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object ppClienteppField109: TppField
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object ppClienteppField110: TppField
      FieldAlias = 'OBS1'
      FieldName = 'OBS1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object ppClienteppField111: TppField
      FieldAlias = 'OBS2'
      FieldName = 'OBS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object ppClienteppField112: TppField
      FieldAlias = 'OBS3'
      FieldName = 'OBS3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object ppClienteppField113: TppField
      FieldAlias = 'OBS4'
      FieldName = 'OBS4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object ppClienteppField114: TppField
      FieldAlias = 'NF_SERV'
      FieldName = 'NF_SERV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object ppClienteppField115: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object ppClienteppField116: TppField
      FieldAlias = 'TOTAL_VENDA'
      FieldName = 'TOTAL_VENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
  end
  object cdsTemp_01: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'COLOCACAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOME_CLIENTE'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'CODIGO_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'QTD_DUP'
        DataType = ftInteger
      end
      item
        Name = 'VALOR_MAIOR'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_MENOR'
        DataType = ftFloat
      end
      item
        Name = 'IND_PERC'
        DataType = ftFloat
      end
      item
        Name = 'TOT_PERC'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    StoreDefs = True
    Left = 24
    Top = 72
    Data = {
      D80000009619E0BD010000001800000009000000000003000000D80009434F4C
      4F434143414F01004900000001000557494454480200020014000C4E4F4D455F
      434C49454E5445010049000000010005574944544802000200FA000E434F4449
      474F5F434C49454E5445040001000000000005544F54414C0800040000000000
      075154445F44555004000100000000000B56414C4F525F4D41494F5208000400
      000000000B56414C4F525F4D454E4F52080004000000000008494E445F504552
      43080004000000000008544F545F5045524308000400000000000000}
    object cdsTemp_01COLOCACAO: TStringField
      FieldName = 'COLOCACAO'
    end
    object cdsTemp_01NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 250
    end
    object cdsTemp_01CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsTemp_01TOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object cdsTemp_01QTD_DUP: TIntegerField
      FieldName = 'QTD_DUP'
    end
    object cdsTemp_01VALOR_MAIOR: TFloatField
      FieldName = 'VALOR_MAIOR'
    end
    object cdsTemp_01VALOR_MENOR: TFloatField
      FieldName = 'VALOR_MENOR'
    end
    object cdsTemp_01IND_PERC: TFloatField
      FieldName = 'IND_PERC'
    end
    object cdsTemp_01TOT_PERC: TFloatField
      FieldName = 'TOT_PERC'
    end
  end
  object cdsTemp_02: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IND_PERC'
        DataType = ftFloat
      end
      item
        Name = 'TOT_PERC'
        DataType = ftFloat
      end
      item
        Name = 'COLOCACAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOME_CLIENTE'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'CODIGO_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'QTD_DUP'
        DataType = ftInteger
      end
      item
        Name = 'VALOR_MAIOR'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_MENOR'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 24
    Top = 128
    Data = {
      D80000009619E0BD010000001800000009000000000003000000D80008494E44
      5F50455243080004000000000008544F545F5045524308000400000000000943
      4F4C4F434143414F01004900000001000557494454480200020014000C4E4F4D
      455F434C49454E5445010049000000010005574944544802000200FA000E434F
      4449474F5F434C49454E5445040001000000000005544F54414C080004000000
      0000075154445F44555004000100000000000B56414C4F525F4D41494F520800
      0400000000000B56414C4F525F4D454E4F5208000400000000000000}
    object cdsTemp_02IND_PERC: TFloatField
      FieldName = 'IND_PERC'
    end
    object cdsTemp_02TOT_PERC: TFloatField
      FieldName = 'TOT_PERC'
    end
    object cdsTemp_02COLOCACAO: TStringField
      FieldName = 'COLOCACAO'
    end
    object cdsTemp_02NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 250
    end
    object cdsTemp_02CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsTemp_02TOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object cdsTemp_02QTD_DUP: TIntegerField
      FieldName = 'QTD_DUP'
    end
    object cdsTemp_02VALOR_MAIOR: TFloatField
      FieldName = 'VALOR_MAIOR'
    end
    object cdsTemp_02VALOR_MENOR: TFloatField
      FieldName = 'VALOR_MENOR'
    end
  end
  object dtsTemp_01: TDataSource
    DataSet = cdsTemp_01
    Left = 104
    Top = 72
  end
  object ppTemp_01: TppDBPipeline
    DataSource = dtsTemp_01
    UserName = 'Temp_01'
    Left = 184
    Top = 72
    object ppTemp_01ppField1: TppField
      FieldAlias = 'COLOCACAO'
      FieldName = 'COLOCACAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object ppTemp_01ppField2: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 250
      DisplayWidth = 250
      Position = 1
    end
    object ppTemp_01ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_CLIENTE'
      FieldName = 'CODIGO_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppTemp_01ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppTemp_01ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTD_DUP'
      FieldName = 'QTD_DUP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppTemp_01ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_MAIOR'
      FieldName = 'VALOR_MAIOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppTemp_01ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_MENOR'
      FieldName = 'VALOR_MENOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppTemp_01ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'IND_PERC'
      FieldName = 'IND_PERC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppTemp_01ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOT_PERC'
      FieldName = 'TOT_PERC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
  end
  object dtsTemp_02: TDataSource
    DataSet = cdsTemp_02
    Left = 112
    Top = 128
  end
  object ppTemp_02: TppDBPipeline
    DataSource = dtsTemp_02
    UserName = 'Temp_02'
    Left = 184
    Top = 128
  end
end
