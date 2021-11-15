object dmRL0509: TdmRL0509
  OldCreateOrder = False
  Left = 293
  Top = 162
  Height = 228
  Width = 321
  object qryVendas_Itens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DmPrincipal.DbConexao
    Left = 39
    Top = 17
  end
  object dspVendas_Itens: TDataSetProvider
    DataSet = qryVendas_Itens
    Options = [poAllowCommandText]
    Left = 128
    Top = 16
  end
  object cdsVendas_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendas_Itens'
    Left = 216
    Top = 16
  end
  object cdsTemp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 42
    Top = 125
    Data = {
      D10000009619E0BD01000000180000000B000000000003000000D10006434F44
      49474F04000100000000000944455343524943414F0100490000000100055749
      44544802000200C800094553545F415455414C0800040000000000054D45535F
      330800040000000000054D45535F320800040000000000054D45535F31080004
      0000000000054D45444941080004000000000005535547455308000400000000
      0007554C545F434F4D04000600000000000B554C545F5052455F434F4D080004
      000000000005544F54414C08000400000000000000}
    object cdsTempCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsTempDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsTempEST_ATUAL: TFloatField
      FieldName = 'EST_ATUAL'
    end
    object cdsTempMES_3: TFloatField
      FieldName = 'MES_3'
    end
    object cdsTempMES_2: TFloatField
      FieldName = 'MES_2'
    end
    object cdsTempMES_1: TFloatField
      FieldName = 'MES_1'
    end
    object cdsTempMEDIA: TFloatField
      FieldName = 'MEDIA'
    end
    object cdsTempSUGES: TFloatField
      FieldName = 'SUGES'
    end
    object cdsTempULT_COM: TDateField
      FieldName = 'ULT_COM'
    end
    object cdsTempULT_PRE_COM: TFloatField
      FieldName = 'ULT_PRE_COM'
    end
    object cdsTempTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object qryProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FABRICA1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FABRICA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GRUPO1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GRUPO2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.grupo_produto, p.codigo_produto, p.fabrica_produto, p.d' +
        'escricao_produto,'
      
        'p.distrib1_produto, p.distrib2_produto, p.estoque_produto, p.dat' +
        'a_compra_produto,'
      'p.preco_compra_produto'
      'from p_produtos p'
      'where p.fabrica_produto >=:FABRICA1'
      'and p.fabrica_produto <=:FABRICA2'
      'and p.grupo_produto >=:GRUPO1'
      'and p.grupo_produto <=:GRUPO2')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 72
    object qryProdutoGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object qryProdutoCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qryProdutoFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object qryProdutoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryProdutoDISTRIB1_PRODUTO: TIntegerField
      FieldName = 'DISTRIB1_PRODUTO'
    end
    object qryProdutoDISTRIB2_PRODUTO: TIntegerField
      FieldName = 'DISTRIB2_PRODUTO'
    end
    object qryProdutoESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutoDATA_COMPRA_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA_PRODUTO'
    end
    object qryProdutoPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
      Size = 4
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 128
    Top = 72
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FABRICA1'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'FABRICA2'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'GRUPO1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GRUPO2'
        ParamType = ptInput
      end>
    ProviderName = 'dspProduto'
    Left = 216
    Top = 72
    object cdsProdutoGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object cdsProdutoCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object cdsProdutoFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object cdsProdutoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsProdutoDISTRIB1_PRODUTO: TIntegerField
      FieldName = 'DISTRIB1_PRODUTO'
    end
    object cdsProdutoDISTRIB2_PRODUTO: TIntegerField
      FieldName = 'DISTRIB2_PRODUTO'
    end
    object cdsProdutoESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutoDATA_COMPRA_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA_PRODUTO'
    end
    object cdsProdutoPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
      Size = 4
    end
  end
  object dtsTemp: TDataSource
    DataSet = cdsTemp
    Left = 128
    Top = 128
  end
  object ppDBTemp: TppDBPipeline
    DataSource = dtsTemp
    UserName = 'DBTemp'
    Left = 216
    Top = 128
    object ppDBTempppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBTempppField2: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 1
    end
    object ppDBTempppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'EST_ATUAL'
      FieldName = 'EST_ATUAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppDBTempppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'MES_3'
      FieldName = 'MES_3'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDBTempppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'MES_2'
      FieldName = 'MES_2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBTempppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'MES_1'
      FieldName = 'MES_1'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBTempppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MEDIA'
      FieldName = 'MEDIA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppDBTempppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUGES'
      FieldName = 'SUGES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppDBTempppField9: TppField
      FieldAlias = 'ULT_COM'
      FieldName = 'ULT_COM'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 8
    end
    object ppDBTempppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ULT_PRE_COM'
      FieldName = 'ULT_PRE_COM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppDBTempppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
  end
end
