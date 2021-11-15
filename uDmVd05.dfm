object dmVd05: TdmVd05
  OldCreateOrder = False
  Left = 310
  Top = 176
  Height = 194
  Width = 302
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Value = 'O'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendas'
    Left = 218
    Top = 20
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
      Size = 4
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
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Options = [poAllowCommandText]
    Left = 122
    Top = 19
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Value = 'O'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftDate
        Name = 'DATAINICIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFINAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM P_VENDAS '
      'WHERE TIPO_VENDA<>:TIPO AND '
      'COD_EMPRESA=:EMPRESA'
      'AND (DATA_VENDA>=:DATAINICIO AND DATA_VENDA<=:DATAFINAL)')
    SQLConnection = DmPrincipal.DbConexao
    Left = 26
    Top = 20
    object qryVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVendasPARCEIRO_VENDA: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object qryVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryVendasPROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object qryVendasNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object qryVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object qryVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasDESCON_ESP_VENDA: TFMTBCDField
      FieldName = 'DESCON_ESP_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object qryVendasCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object qryVendasCAIXA_VENDA: TFMTBCDField
      FieldName = 'CAIXA_VENDA'
      Precision = 15
      Size = 0
    end
    object qryVendasTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object qryVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 4
    end
    object qryVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendasCONFIRMA_VENDA: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object qryVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object qryVendasDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object qryVendasHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object qryVendasVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object qryVendasPESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      Precision = 15
      Size = 3
    end
    object qryVendasPESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      Precision = 15
      Size = 3
    end
    object qryVendasOBSERVACAO_VENDA: TStringField
      FieldName = 'OBSERVACAO_VENDA'
      Size = 75
    end
    object qryVendasPARCELAS_VENDA: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object qryVendasVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
    end
    object qryVendasVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
    end
    object qryVendasVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
    end
    object qryVendasVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
    end
    object qryVendasVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
    end
    object qryVendasVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
    end
    object qryVendasVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
    end
    object qryVendasVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
    end
    object qryVendasVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
    end
    object qryVendasVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
    end
    object qryVendasVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
    end
    object qryVendasVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
    end
    object qryVendasVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
    end
    object qryVendasVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
    end
    object qryVendasVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
    end
    object qryVendasCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qryVendasTIPO1_VENDA: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object qryVendasDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object qryVendasENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object qryVendasTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object qryVendasPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object qryVendasESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
    object qryVendasNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object qryVendasAUTONOMO_VENDA: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object qryVendasEXPORTADO_VENDA: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object qryVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object qryVendasINFOADICIONA_VENDA: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object qryVendasMACHO_4_VENDA: TIntegerField
      FieldName = 'MACHO_4_VENDA'
    end
    object qryVendasMACHO_4_12_VENDA: TIntegerField
      FieldName = 'MACHO_4_12_VENDA'
    end
    object qryVendasMACHO_12_24_VENDA: TIntegerField
      FieldName = 'MACHO_12_24_VENDA'
    end
    object qryVendasMACHO_24_36_VENDA: TIntegerField
      FieldName = 'MACHO_24_36_VENDA'
    end
    object qryVendasMACHO_M36_VENDA: TIntegerField
      FieldName = 'MACHO_M36_VENDA'
    end
    object qryVendasFEMEA_4_VENDA: TIntegerField
      FieldName = 'FEMEA_4_VENDA'
    end
    object qryVendasFEMEA_4_12_VENDA: TIntegerField
      FieldName = 'FEMEA_4_12_VENDA'
    end
    object qryVendasFEMEA_12_24_VENDA: TIntegerField
      FieldName = 'FEMEA_12_24_VENDA'
    end
    object qryVendasFEMEA_24_36_VENDA: TIntegerField
      FieldName = 'FEMEA_24_36_VENDA'
    end
    object qryVendasFEMEA_M36_VENDA: TIntegerField
      FieldName = 'FEMEA_M36_VENDA'
    end
    object qryVendasBUFALOS_VENDA: TIntegerField
      FieldName = 'BUFALOS_VENDA'
    end
    object qryVendasCAPRINOS_VENDA: TIntegerField
      FieldName = 'CAPRINOS_VENDA'
    end
    object qryVendasOVINOS_VENDA: TIntegerField
      FieldName = 'OVINOS_VENDA'
    end
    object qryVendasSUINOS_VENDA: TIntegerField
      FieldName = 'SUINOS_VENDA'
    end
    object qryVendasTROCA_VENDA: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object qryVendasOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object qryVendasCNPJCLIENTE_VENDA: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object qryVendasRGCLIENTE_VENDA: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object qryVendasENDCLIENTE_VENDA: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object qryVendasBAICLIENTE_VENDA: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object qryVendasCIDCLIENTE_VENDA: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object qryVendasESTCLIENTE_VENDA: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object qryVendasCEPCLIENTE_VENDA: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object qryVendasFONECLIENTE_VENDA: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object qryVendasCARNE_VENDA: TStringField
      FieldName = 'CARNE_VENDA'
      Size = 1
    end
    object qryVendasUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object qryVendasUSUALTERA_VENDA: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object qryVendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryVendasOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object qryVendasOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object qryVendasOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object qryVendasOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
  end
  object dspVendasItem: TDataSetProvider
    DataSet = qryVendasItem
    Options = [poAllowCommandText]
    Left = 125
    Top = 74
  end
  object cdsVendasItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'VENDA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspVendasItem'
    Left = 219
    Top = 73
    object cdsVendasItemCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object cdsVendasItemPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      Required = True
    end
    object cdsVendasItemDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 40
    end
    object cdsVendasItemVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      DisplayFormat = '.00'
      Precision = 15
      Size = 4
    end
    object cdsVendasItemQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object cdsVendasItemGRADE_IVENDAS: TStringField
      FieldName = 'GRADE_IVENDAS'
      Size = 5
    end
    object cdsVendasItemPROMOCAO_IVENDAS: TStringField
      FieldName = 'PROMOCAO_IVENDAS'
      Size = 1
    end
    object cdsVendasItemFABRICA_IVENDAS: TStringField
      FieldName = 'FABRICA_IVENDAS'
      Size = 15
    end
    object cdsVendasItemSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      Size = 60
    end
    object cdsVendasItemDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemICM_IVENDAS: TFMTBCDField
      FieldName = 'ICM_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemIPI_IVENDAS: TFMTBCDField
      FieldName = 'IPI_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemREDUTOR_IVENDAS: TFMTBCDField
      FieldName = 'REDUTOR_IVENDAS'
      Precision = 15
      Size = 4
    end
    object cdsVendasItemTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object cdsVendasItemFISCAL_IVENDAS: TStringField
      FieldName = 'FISCAL_IVENDAS'
      Size = 5
    end
    object cdsVendasItemGARANTIA_IVENDAS: TStringField
      FieldName = 'GARANTIA_IVENDAS'
      Size = 10
    end
    object cdsVendasItemTECNICO_IVENDAS: TIntegerField
      FieldName = 'TECNICO_IVENDAS'
    end
    object cdsVendasItemALTURA_IVENDAS: TFMTBCDField
      FieldName = 'ALTURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemLARGURA_IVENDAS: TFMTBCDField
      FieldName = 'LARGURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemCOMPRIMENTO_VENDAS: TFMTBCDField
      FieldName = 'COMPRIMENTO_VENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemQTDE_VENDAS: TIntegerField
      FieldName = 'QTDE_VENDAS'
    end
    object cdsVendasItemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object cdsVendasItemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsVendasItemVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInWhere]
      DisplayFormat = '.00'
      Precision = 15
      Size = 7
    end
    object cdsVendasItemFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
      ProviderFlags = []
    end
    object cdsVendasItemFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      ProviderFlags = []
      Size = 15
    end
    object cdsVendasItemUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object cdsVendasItemID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object cdsVendasItemCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      ProviderFlags = []
      Size = 3
    end
    object cdsVendasItemCLASSE_IVENDA: TStringField
      FieldName = 'CLASSE_IVENDA'
      Size = 1
    end
    object cdsVendasItemCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
  end
  object qryVendasItem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'VENDA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT'
      'V.*,'
      '(V.quantidade_ivendas * V.valorbruto_ivendas) as VALORTOTAL,'
      'P.fabrica_produto,'
      'P.fabricante_produto,'
      'P.unidade_produto,'
      'G.codigo_grade'
      'FROM P_VENDAS_ITENS V'
      
        'left outer join P_PRODUTOS P on V.produto_ivenda=P.codigo_produt' +
        'o'
      
        'left outer join P_PRODUTOS_GRADE G on V.grade_ivendas=G.codigo_g' +
        'rade'
      'WHERE V.codigo_ivenda=:VENDA AND V.cod_empresa=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 26
    Top = 75
    object qryVendasItemCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object qryVendasItemPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      Required = True
    end
    object qryVendasItemDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 40
    end
    object qryVendasItemVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object qryVendasItemQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object qryVendasItemGRADE_IVENDAS: TStringField
      FieldName = 'GRADE_IVENDAS'
      Size = 5
    end
    object qryVendasItemPROMOCAO_IVENDAS: TStringField
      FieldName = 'PROMOCAO_IVENDAS'
      Size = 1
    end
    object qryVendasItemFABRICA_IVENDAS: TStringField
      FieldName = 'FABRICA_IVENDAS'
      Size = 15
    end
    object qryVendasItemSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      Size = 60
    end
    object qryVendasItemDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryVendasItemICM_IVENDAS: TFMTBCDField
      FieldName = 'ICM_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryVendasItemIPI_IVENDAS: TFMTBCDField
      FieldName = 'IPI_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryVendasItemREDUTOR_IVENDAS: TFMTBCDField
      FieldName = 'REDUTOR_IVENDAS'
      Precision = 15
      Size = 4
    end
    object qryVendasItemTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object qryVendasItemFISCAL_IVENDAS: TStringField
      FieldName = 'FISCAL_IVENDAS'
      Size = 5
    end
    object qryVendasItemGARANTIA_IVENDAS: TStringField
      FieldName = 'GARANTIA_IVENDAS'
      Size = 10
    end
    object qryVendasItemTECNICO_IVENDAS: TIntegerField
      FieldName = 'TECNICO_IVENDAS'
    end
    object qryVendasItemALTURA_IVENDAS: TFMTBCDField
      FieldName = 'ALTURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryVendasItemLARGURA_IVENDAS: TFMTBCDField
      FieldName = 'LARGURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryVendasItemCOMPRIMENTO_VENDAS: TFMTBCDField
      FieldName = 'COMPRIMENTO_VENDAS'
      Precision = 15
      Size = 2
    end
    object qryVendasItemQTDE_VENDAS: TIntegerField
      FieldName = 'QTDE_VENDAS'
    end
    object qryVendasItemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qryVendasItemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryVendasItemVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInWhere]
      Precision = 15
      Size = 7
    end
    object qryVendasItemFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
      ProviderFlags = []
    end
    object qryVendasItemFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      ProviderFlags = []
      Size = 15
    end
    object qryVendasItemUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object qryVendasItemID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object qryVendasItemCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      ProviderFlags = []
      Size = 3
    end
    object qryVendasItemCLASSE_IVENDA: TStringField
      FieldName = 'CLASSE_IVENDA'
      Size = 1
    end
    object qryVendasItemCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
  end
end
