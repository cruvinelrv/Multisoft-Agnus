object dmF5: TdmF5
  OldCreateOrder = False
  Left = 411
  Top = 215
  Height = 225
  Width = 379
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspVendas'
    Left = 276
    Top = 22
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
    Left = 164
    Top = 21
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT * FROM P_VENDAS WHERE COD_EMPRESA=:EMPRESA ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 43
    Top = 22
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
  object qryTipoPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_CPAGAMENTO WHERE COD_EMPRESA=:EMPRESA ORDER BY D' +
        'ESCRICAO_CPAGAMENTO ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 45
    Top = 80
    object qryTipoPagamentoCODIGO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_CPAGAMENTO'
    end
    object qryTipoPagamentoDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      Size = 40
    end
    object qryTipoPagamentoDESCONTO_CPAGAMENTO: TFMTBCDField
      FieldName = 'DESCONTO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object qryTipoPagamentoPERC_COMISSAO_CPAGAMENTO: TFMTBCDField
      FieldName = 'PERC_COMISSAO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object qryTipoPagamentoCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
    end
    object qryTipoPagamentoCOMISSAO_CPAGAMENTO: TStringField
      FieldName = 'COMISSAO_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoLIVRE_CPAGAMENTO: TStringField
      FieldName = 'LIVRE_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_TPDOCUMENTO_CPAGAMENTO'
      Required = True
    end
    object qryTipoPagamentoCODIGO_PORTADOR_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_PORTADOR_CPAGAMENTO'
    end
    object qryTipoPagamentoDESCONTO_FIXO_CPAGAMENTO: TStringField
      FieldName = 'DESCONTO_FIXO_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoGERA_RECEBER_CPAGAMENTO: TStringField
      FieldName = 'GERA_RECEBER_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoECF_CPAGAMENTO: TStringField
      FieldName = 'ECF_CPAGAMENTO'
      Size = 3
    end
    object qryTipoPagamentoTEF_CPAGAMENTO: TStringField
      FieldName = 'TEF_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoSENHA_CPAGAMENTO: TStringField
      FieldName = 'SENHA_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoMEDIA_DIA_CPAGAMENTO: TIntegerField
      FieldName = 'MEDIA_DIA_CPAGAMENTO'
    end
    object qryTipoPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryTipoPagamentoPRAZO1_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO1_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO2_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO2_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO3_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO3_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO4_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO4_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO5_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO5_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO6_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO6_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO7_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO7_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO8_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO8_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO9_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO9_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO10_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO10_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO11_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO11_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO12_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO12_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO13_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO13_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO14_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO14_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO15_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO15_CPAGAMENTO'
    end
    object qryTipoPagamentoPARCELA1_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA1_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA2_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA2_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA3_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA3_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA4_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA4_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA5_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA5_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA6_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA6_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA7_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA7_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA8_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA8_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA9_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA9_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA10_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA10_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA11_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA11_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA12_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA12_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA13_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA13_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA14_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA14_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA15_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA15_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
  end
  object dspTipoPagamento: TDataSetProvider
    DataSet = qryTipoPagamento
    Left = 166
    Top = 76
  end
  object cdsTipoPagamento: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO_CPAGAMENTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DESCONTO_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'PERC_COMISSAO_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'CAIXA_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'COMISSAO_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LIVRE_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGO_TPDOCUMENTO_CPAGAMENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_PORTADOR_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCONTO_FIXO_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'GERA_RECEBER_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ECF_CPAGAMENTO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TEF_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SENHA_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MEDIA_DIA_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO1_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO2_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO3_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO4_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO5_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO6_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO7_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO8_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO9_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO10_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO11_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO12_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO13_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO14_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO15_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PARCELA1_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA2_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA3_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA4_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA5_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA6_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA7_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA8_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA9_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA10_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA11_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA12_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA13_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA14_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA15_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspTipoPagamento'
    StoreDefs = True
    Left = 279
    Top = 73
    object cdsTipoPagamentoCODIGO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_CPAGAMENTO'
    end
    object cdsTipoPagamentoDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      Size = 40
    end
    object cdsTipoPagamentoDESCONTO_CPAGAMENTO: TFMTBCDField
      FieldName = 'DESCONTO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object cdsTipoPagamentoPERC_COMISSAO_CPAGAMENTO: TFMTBCDField
      FieldName = 'PERC_COMISSAO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object cdsTipoPagamentoCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
    end
    object cdsTipoPagamentoCOMISSAO_CPAGAMENTO: TStringField
      FieldName = 'COMISSAO_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoLIVRE_CPAGAMENTO: TStringField
      FieldName = 'LIVRE_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_TPDOCUMENTO_CPAGAMENTO'
      Required = True
    end
    object cdsTipoPagamentoCODIGO_PORTADOR_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_PORTADOR_CPAGAMENTO'
    end
    object cdsTipoPagamentoDESCONTO_FIXO_CPAGAMENTO: TStringField
      FieldName = 'DESCONTO_FIXO_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoGERA_RECEBER_CPAGAMENTO: TStringField
      FieldName = 'GERA_RECEBER_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoECF_CPAGAMENTO: TStringField
      FieldName = 'ECF_CPAGAMENTO'
      Size = 3
    end
    object cdsTipoPagamentoTEF_CPAGAMENTO: TStringField
      FieldName = 'TEF_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoSENHA_CPAGAMENTO: TStringField
      FieldName = 'SENHA_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoMEDIA_DIA_CPAGAMENTO: TIntegerField
      FieldName = 'MEDIA_DIA_CPAGAMENTO'
    end
    object cdsTipoPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsTipoPagamentoPRAZO1_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO1_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO2_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO2_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO3_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO3_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO4_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO4_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO5_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO5_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO6_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO6_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO7_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO7_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO8_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO8_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO9_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO9_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO10_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO10_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO11_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO11_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO12_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO12_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO13_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO13_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO14_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO14_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO15_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO15_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPARCELA1_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA1_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA2_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA2_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA3_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA3_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA4_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA4_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA5_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA5_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA6_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA6_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA7_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA7_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA8_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA8_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA9_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA9_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA10_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA10_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA11_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA11_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA12_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA12_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA13_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA13_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA14_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA14_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA15_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA15_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'CAIXA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspCaixa'
    Left = 281
    Top = 133
    object cdsCaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsCaixaCHAVE_CAIXA: TStringField
      FieldName = 'CHAVE_CAIXA'
      Required = True
      Size = 21
    end
    object cdsCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
    object cdsCaixaDINHEIRO_TUR_CAIXA: TFMTBCDField
      FieldName = 'DINHEIRO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTRADA_TUR_CAIXA: TFMTBCDField
      FieldName = 'ENTRADA_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCARTAO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CARTAO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPREDATADO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PREDATADO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCONVENIO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CONVENIO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPRAZO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PRAZO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaOUTRASTUR_CAIXA: TFMTBCDField
      FieldName = 'OUTRASTUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaDEVOLUCAOTUR_CAIXA: TFMTBCDField
      FieldName = 'DEVOLUCAOTUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaRETIRADAS_CAIXA: TFMTBCDField
      FieldName = 'RETIRADAS_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTREGA_CAIXA: TFMTBCDField
      FieldName = 'ENTREGA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaTROCO_ENTREGA_CAIXA: TFMTBCDField
      FieldName = 'TROCO_ENTREGA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaRECOUTALOJA_CAIXA: TFMTBCDField
      FieldName = 'RECOUTALOJA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPRESTRECEBIDA_CAIXA: TFMTBCDField
      FieldName = 'PRESTRECEBIDA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPRESTATRAZO_CAIXA: TFMTBCDField
      FieldName = 'PRESTATRAZO_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaTAXA_CAIXA: TFMTBCDField
      FieldName = 'TAXA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPRESTANT_CAIXA: TFMTBCDField
      FieldName = 'PRESTANT_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaREMECABANCO_CAIXA: TFMTBCDField
      FieldName = 'REMECABANCO_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaTRANSGERENCIA_CAIXA: TFMTBCDField
      FieldName = 'TRANSGERENCIA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaDESPESADIA_CAIXA: TFMTBCDField
      FieldName = 'DESPESADIA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaDINHEIRO_CAIXA: TFMTBCDField
      FieldName = 'DINHEIRO_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaRETCARTAO_CAIXA: TFMTBCDField
      FieldName = 'RETCARTAO_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaSALDOINICHEQUE: TFMTBCDField
      FieldName = 'SALDOINICHEQUE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCHEQUES_CAIXA: TFMTBCDField
      FieldName = 'CHEQUES_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = qryCaixa
    Left = 167
    Top = 137
  end
  object qryCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'CAIXA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_CAIXA WHERE COD_EMPRESA=:EMPRESA AND CODIGO_CAIX' +
        'A=:CAIXA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 46
    Top = 137
    object qryCaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryCaixaCHAVE_CAIXA: TStringField
      FieldName = 'CHAVE_CAIXA'
      Required = True
      Size = 21
    end
    object qryCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
    object qryCaixaDINHEIRO_TUR_CAIXA: TFMTBCDField
      FieldName = 'DINHEIRO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaENTRADA_TUR_CAIXA: TFMTBCDField
      FieldName = 'ENTRADA_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaCARTAO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CARTAO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPREDATADO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PREDATADO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaCONVENIO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CONVENIO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPRAZO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PRAZO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaOUTRASTUR_CAIXA: TFMTBCDField
      FieldName = 'OUTRASTUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaDEVOLUCAOTUR_CAIXA: TFMTBCDField
      FieldName = 'DEVOLUCAOTUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaRETIRADAS_CAIXA: TFMTBCDField
      FieldName = 'RETIRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaENTREGA_CAIXA: TFMTBCDField
      FieldName = 'ENTREGA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaTROCO_ENTREGA_CAIXA: TFMTBCDField
      FieldName = 'TROCO_ENTREGA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaRECOUTALOJA_CAIXA: TFMTBCDField
      FieldName = 'RECOUTALOJA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPRESTRECEBIDA_CAIXA: TFMTBCDField
      FieldName = 'PRESTRECEBIDA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPRESTATRAZO_CAIXA: TFMTBCDField
      FieldName = 'PRESTATRAZO_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaTAXA_CAIXA: TFMTBCDField
      FieldName = 'TAXA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPRESTANT_CAIXA: TFMTBCDField
      FieldName = 'PRESTANT_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaREMECABANCO_CAIXA: TFMTBCDField
      FieldName = 'REMECABANCO_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaTRANSGERENCIA_CAIXA: TFMTBCDField
      FieldName = 'TRANSGERENCIA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaDESPESADIA_CAIXA: TFMTBCDField
      FieldName = 'DESPESADIA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaDINHEIRO_CAIXA: TFMTBCDField
      FieldName = 'DINHEIRO_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaRETCARTAO_CAIXA: TFMTBCDField
      FieldName = 'RETCARTAO_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaSALDOINICHEQUE: TFMTBCDField
      FieldName = 'SALDOINICHEQUE'
      Precision = 15
      Size = 2
    end
    object qryCaixaCHEQUES_CAIXA: TFMTBCDField
      FieldName = 'CHEQUES_CAIXA'
      Precision = 15
      Size = 2
    end
  end
end
