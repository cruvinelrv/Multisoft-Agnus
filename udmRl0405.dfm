object dmRl0405: TdmRl0405
  OldCreateOrder = False
  Left = 346
  Top = 99
  Height = 186
  Width = 425
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLI1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLI2'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PGT1'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PGT2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'V.codigo_venda,'
      'V.serie_venda,'
      'V.notafiscal_venda,'
      'V.data_venda,'
      'V.hora_venda,'
      'V.fatura_venda,'
      '(V.desconto_venda * 100 / V.fatura_venda) AS DESC_PORCENT,'
      'V.valornota_venda,'
      'V.tipo_doc_venda,'
      'V.cliente_venda,'
      'VE.nome_vendedor'
      ''
      'FROM P_VENDAS V'
      
        'LEFT OUTER JOIN P_VENDEDOR VE ON (VE.codigo_vendedor=V.vendedor_' +
        'venda)'
      'WHERE'
      '(V.DATA_VENDA>=:DATA_INICIAL AND V.DATA_VENDA<=:DATA_FINAL)'
      'AND'
      '(V.CLIENTE_VENDA>=:CLI1 AND V.CLIENTE_VENDA<=:CLI2)'
      'AND'
      '(V.CPAGAMENTO_VENDA>=:PGT1 AND V.CPAGAMENTO_VENDA<=:PGT2)'
      'AND'
      'V.serie_venda<>'#39'OR'#39
      'AND'
      'V.serie_venda<>:SER1')
    SQLConnection = DmPrincipal.DbConexao
    Left = 38
    Top = 20
    object qryVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
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
    object qryVendasDESC_PORCENT: TFMTBCDField
      FieldName = 'DESC_PORCENT'
      Precision = 15
      Size = 4
    end
    object qryVendasVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object qryVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryVendasNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
  end
  object cdsVendas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLI1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CLI2'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PGT1'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'PGT2'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVendas'
    Left = 190
    Top = 20
    object cdsVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
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
    object cdsVendasDESC_PORCENT: TFMTBCDField
      FieldName = 'DESC_PORCENT'
      Precision = 15
      Size = 4
    end
    object cdsVendasVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVendasNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Left = 110
    Top = 20
  end
  object dsVendas: TDataSource
    DataSet = cdsVendas
    Left = 262
    Top = 20
  end
  object pplVendas: TppDBPipeline
    DataSource = dsVendas
    UserName = 'lVendas'
    Left = 334
    Top = 20
    object pplVendasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pplVendasppField2: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object pplVendasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object pplVendasppField4: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object pplVendasppField5: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object pplVendasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object pplVendasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_PORCENT'
      FieldName = 'DESC_PORCENT'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object pplVendasppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object pplVendasppField9: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object pplVendasppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object pplVendasppField11: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
  end
  object qryItensVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'V.codigo_venda,'
      'V.serie_venda,'
      'V.notafiscal_venda,'
      'V.data_venda,'
      'V.hora_venda,'
      'I.produto_ivenda,'
      'I.descricao_ivendas,'
      'I.quantidade_ivendas,'
      'I.valorbruto_ivendas,'
      '(I.valorbruto_ivendas * I.quantidade_ivendas) AS total_ivendas,'
      'V.cliente_venda'
      ''
      'FROM P_VENDAS_ITENS I'
      'LEFT OUTER JOIN P_VENDAS V ON (V.codigo_venda=I.codigo_ivenda)'
      
        'LEFT OUTER JOIN P_VENDEDOR VE ON (VE.codigo_vendedor=V.vendedor_' +
        'venda)'
      'WHERE'
      'I.codigo_ivenda=:CODVENDA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 38
    Top = 76
    object qryItensVendaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryItensVendaSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryItensVendaNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryItensVendaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryItensVendaHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryItensVendaPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      Required = True
    end
    object qryItensVendaDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 80
    end
    object qryItensVendaQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object qryItensVendaVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object qryItensVendaTOTAL_IVENDAS: TFMTBCDField
      FieldName = 'TOTAL_IVENDAS'
      Precision = 15
      Size = 7
    end
    object qryItensVendaCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
  end
  object cdsItensVenda: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItensVenda'
    Left = 192
    Top = 76
    object cdsItensVendaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsItensVendaSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsItensVendaNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsItensVendaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsItensVendaHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsItensVendaPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      Required = True
    end
    object cdsItensVendaDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 80
    end
    object cdsItensVendaQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object cdsItensVendaVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object cdsItensVendaTOTAL_IVENDAS: TFMTBCDField
      FieldName = 'TOTAL_IVENDAS'
      Precision = 15
      Size = 7
    end
    object cdsItensVendaCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
  end
  object dspItensVenda: TDataSetProvider
    DataSet = qryItensVenda
    Left = 110
    Top = 76
  end
  object dsItensVenda: TDataSource
    DataSet = cdsItensVenda
    Left = 262
    Top = 76
  end
  object pplItensVenda: TppDBPipeline
    DataSource = dsItensVenda
    UserName = 'lVendas1'
    Left = 334
    Top = 76
    object pplItensVendappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pplItensVendappField2: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 1
    end
    object pplItensVendappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object pplItensVendappField4: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object pplItensVendappField5: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object pplItensVendappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODUTO_IVENDA'
      FieldName = 'PRODUTO_IVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object pplItensVendappField7: TppField
      FieldAlias = 'DESCRICAO_IVENDAS'
      FieldName = 'DESCRICAO_IVENDAS'
      FieldLength = 80
      DisplayWidth = 80
      Position = 6
    end
    object pplItensVendappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE_IVENDAS'
      FieldName = 'QUANTIDADE_IVENDAS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object pplItensVendappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORBRUTO_IVENDAS'
      FieldName = 'VALORBRUTO_IVENDAS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 8
    end
    object pplItensVendappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_IVENDAS'
      FieldName = 'TOTAL_IVENDAS'
      FieldLength = 7
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object pplItensVendappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
  end
end
