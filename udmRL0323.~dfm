object dmRL0323: TdmRL0323
  OldCreateOrder = False
  Left = 357
  Top = 233
  Height = 195
  Width = 407
  object qryProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODGRU'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO_PRODUTO,'
      '       GRUPO_PRODUTO,'
      '       DESCRICAO_PRODUTO,'
      '       ESTOQUE_PRODUTO,'
      '       FABRICANTE_PRODUTO,'
      '       PRECO_COMPRA_PRODUTO,'
      '       PRECO_CUSTO_PRODUTO,'
      '       PRECO_LISTA_PRODUTO'
      'FROM P_PRODUTOS'
      'WHERE GRUPO_PRODUTO=:CODGRU')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 8
    object qryProdutoCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qryProdutoGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object qryProdutoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryProdutoESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutoFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object qryProdutoPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryProdutoPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryProdutoPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 96
    Top = 8
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODGRU'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspProduto'
    Left = 176
    Top = 8
    object cdsProdutoCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object cdsProdutoGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object cdsProdutoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsProdutoESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutoFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object cdsProdutoPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsProdutoPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsProdutoPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
  end
  object dsProduto: TDataSource
    AutoEdit = False
    DataSet = cdsProduto
    Left = 248
    Top = 8
  end
  object pplProduto: TppDBPipeline
    DataSource = dsProduto
    UserName = 'lProduto'
    Left = 328
    Top = 8
  end
end
