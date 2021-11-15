object dmVd0701: TdmVd0701
  OldCreateOrder = False
  Left = 349
  Top = 171
  Height = 290
  Width = 446
  object dspVendasItem: TDataSetProvider
    DataSet = qryVendasItem
    Left = 126
    Top = 64
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
    Left = 216
    Top = 64
    object cdsVendasItemCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object cdsVendasItemPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      Required = True
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
    object cdsVendasItemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
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
      ''
      'CODIGO_IVENDA,'
      'PRODUTO_IVENDA,'
      'QUANTIDADE_IVENDAS,'
      'GRADE_IVENDAS,'
      'COD_EMPRESA'
      ''
      'FROM P_VENDAS_ITENS '
      'WHERE CODIGO_IVENDA=:VENDA AND COD_EMPRESA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 64
    object qryVendasItemCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object qryVendasItemPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      Required = True
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
    object qryVendasItemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT '
      ''
      'V.CODIGO_VENDA,'
      'V.NOTAFISCAL_VENDA,'
      'V.COD_EMPRESA,'
      'V.DATA_VENDA,'
      'V.EMISSAO_VENDA,'
      'V.DATASAIDA_VENDA,'
      'V.HORASAIDA_VENDA,'
      'V.BASEICMS_VENDA,'
      'V.ICMSSB_VENDA,'
      'V.ICMS_VENDA,'
      'V.IPI_VENDA,'
      'V.PESOBRUTO_VENDA,'
      'V.PESOLIQUIDO_VENDA,'
      'V.EXCLUSAO_VENDA,'
      'V.DESCONTO_VENDA,'
      'V.VALORNOTA_VENDA,'
      '(V.VALORNOTA_VENDA + V.DESCONTO_VENDA) AS VALOR_BRUTO,'
      'C.NOME_CLIENTE,'
      'P.DESCRICAO_CPAGAMENTO,'
      'VE.NOME_VENDEDOR'
      ''
      'FROM P_VENDAS V'
      
        'LEFT OUTER JOIN E_CLIENTE    C  ON (V.CLIENTE_VENDA    = C.CODIG' +
        'O_CLIENTE)'
      
        'LEFT OUTER JOIN P_CPAGAMENTO P  ON (V.CPAGAMENTO_VENDA = P.CODIG' +
        'O_CPAGAMENTO)'
      
        'LEFT OUTER JOIN P_VENDEDOR   VE ON (V.VENDEDOR_VENDA   = VE.CODI' +
        'GO_VENDEDOR)'
      
        'WHERE V.NOTAFISCAL_VENDA=:NOTA AND V.COD_EMPRESA=:EMPRESA AND SE' +
        'RIE_VENDA=:SERIE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 16
    object qryVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object qryVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryVendasBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasPESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object qryVendasPESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object qryVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR_BRUTO: TFMTBCDField
      FieldName = 'VALOR_BRUTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object qryVendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryVendasDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qryVendasNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Left = 128
    Top = 16
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVendas'
    Left = 216
    Top = 16
    object cdsVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
      ProviderFlags = [pfInUpdate, pfInKey]
    end
    object cdsVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsVendasBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasPESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsVendasPESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR_BRUTO: TFMTBCDField
      FieldName = 'VALOR_BRUTO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object cdsVendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsVendasDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsVendasNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 30
    end
  end
  object tblECF: TApolloTable
    DatabaseName = 'C:\MultiSoft'
    FieldDefs = <>
    IndexDefs = <>
    TableName = 'ECF.DBF'
    OEMTranslate = False
    Left = 40
    Top = 128
    object tblECFECF: TStringField
      FieldName = 'ECF'
      Size = 1
    end
    object tblECFTEF: TStringField
      FieldName = 'TEF'
      Size = 1
    end
    object tblECFPORTA: TStringField
      FieldName = 'PORTA'
      Size = 1
    end
    object tblECFSERIAL: TStringField
      FieldName = 'SERIAL'
    end
    object tblECFCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object tblECFBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object tblECFPORTA_BAL: TSmallintField
      FieldName = 'PORTA_BAL'
    end
    object tblECFBAUD_BAL: TSmallintField
      FieldName = 'BAUD_BAL'
    end
    object tblECFBITS_BAL: TSmallintField
      FieldName = 'BITS_BAL'
    end
    object tblECFPARID_BAL: TSmallintField
      FieldName = 'PARID_BAL'
    end
    object tblECFESCRIT_BAL: TSmallintField
      FieldName = 'ESCRIT_BAL'
    end
  end
end
