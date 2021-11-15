object dmF12: TdmF12
  OldCreateOrder = False
  Left = 349
  Top = 127
  Height = 331
  Width = 510
  object dspSimilar1: TDataSetProvider
    DataSet = qrySimilar1
    Options = [poAllowCommandText]
    Left = 107
    Top = 184
  end
  object cdsSimilar1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspSimilar2'
    Left = 187
    Top = 184
    object cdsSimilar1ESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsSimilar1CODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object cdsSimilar1DESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsSimilar1ESTOQUE_PRODUTO_1: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO_1'
      Precision = 15
      Size = 3
    end
    object cdsSimilar1PRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsSimilar1FABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
  end
  object qrySimilar1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT ESTOQUE_PRODUTO, FABRICA_PRODUTO, CODIGO_PRODUTO, DESCRIC' +
        'AO_PRODUTO, ESTOQUE_PRODUTO, PRECO_LISTA_PRODUTO FROM P_PRODUTOS' +
        ' WHERE CODIGO_PRODUTO=:CODIGO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 184
    object qrySimilar1ESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qrySimilar1CODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qrySimilar1DESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qrySimilar1ESTOQUE_PRODUTO_1: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO_1'
      Precision = 15
      Size = 3
    end
    object qrySimilar1PRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qrySimilar1FABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
  end
  object dspSimilar2: TDataSetProvider
    DataSet = qrySimilar2
    Options = [poAllowCommandText]
    Left = 107
    Top = 240
  end
  object cdsSimilar2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspSimilar2'
    Left = 187
    Top = 240
    object cdsSimilar2ESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsSimilar2CODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object cdsSimilar2DESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsSimilar2ESTOQUE_PRODUTO_1: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO_1'
      Precision = 15
      Size = 3
    end
    object cdsSimilar2PRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsSimilar2FABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
  end
  object qrySimilar2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT ESTOQUE_PRODUTO, FABRICA_PRODUTO, CODIGO_PRODUTO, DESCRIC' +
        'AO_PRODUTO, ESTOQUE_PRODUTO, PRECO_LISTA_PRODUTO FROM P_PRODUTOS' +
        ' WHERE CODIGO_PRODUTO=:CODIGO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 240
    object qrySimilar2ESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qrySimilar2CODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qrySimilar2DESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qrySimilar2ESTOQUE_PRODUTO_1: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO_1'
      Precision = 15
      Size = 3
    end
    object qrySimilar2PRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qrySimilar2FABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
  end
  object cdsProdutosGrade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspProdutoGrade'
    Left = 248
    Top = 56
    object cdsProdutosGradePRODUTO_GRADE: TIntegerField
      FieldName = 'PRODUTO_GRADE'
      Required = True
    end
    object cdsProdutosGradeCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      Required = True
      Size = 3
    end
    object cdsProdutosGradeESTOQUE_GRADE: TFMTBCDField
      FieldName = 'ESTOQUE_GRADE'
      Precision = 15
    end
    object cdsProdutosGradeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsProdutosGradeBARRA_GRADE: TStringField
      FieldName = 'BARRA_GRADE'
      Size = 13
    end
    object cdsProdutosGradeDESCRICAO_GRADE: TStringField
      FieldName = 'DESCRICAO_GRADE'
      Size = 50
    end
  end
  object dspProdutoGrade: TDataSetProvider
    DataSet = qryProdutosGrade
    Options = [poAllowCommandText]
    Left = 144
    Top = 56
  end
  object qryProdutosGrade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_PRODUTOS_GRADE WHERE COD_EMPRESA=:EMPRESA AND PR' +
        'ODUTO_GRADE=:PRODUTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 56
    object qryProdutosGradePRODUTO_GRADE: TIntegerField
      FieldName = 'PRODUTO_GRADE'
      Required = True
    end
    object qryProdutosGradeCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      Required = True
      Size = 3
    end
    object qryProdutosGradeESTOQUE_GRADE: TFMTBCDField
      FieldName = 'ESTOQUE_GRADE'
      Precision = 15
    end
    object qryProdutosGradeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryProdutosGradeBARRA_GRADE: TStringField
      FieldName = 'BARRA_GRADE'
      Size = 13
    end
    object qryProdutosGradeDESCRICAO_GRADE: TStringField
      FieldName = 'DESCRICAO_GRADE'
      Size = 50
    end
  end
  object qryPesqProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'P.FABRICANTE_PRODUTO,'
      'P.DESCRICAO_PRODUTO,'
      'P.CODIGO_PRODUTO,'
      'P.DESUSO_PRODUTO,'
      'P.FABRICA_PRODUTO,'
      'P.SIMILAR1_PRODUTO,'
      'P.SIMILAR2_PRODUTO,'
      'P.CLASSE_PRODUTO,'
      'P.GRADE_PRODUTO,'
      'P.UNIDADE_PRODUTO,'
      'P.PRECOUNIT_PRODUTO,'
      'P.ESTOQUE_PRODUTO,'
      'P.COD_EMPRESA,'
      'P.BARRA_PRODUTO,'
      'P.METRO_CUB_PRODUTO,'
      'P.OBSERVACAO_PRODUTO,'
      'P.GRUPO_PRODUTO,'
      'P.REFERENCIA_PRODUTO,'
      'M.DESCRICAO_MARCA,'
      ''
      'C.CODIGO_CLIENTE  AS CODIGO_FABRICANTE,'
      'C.NOME_CLIENTE    AS NOME_FABRICANTE,'
      'G.DESCRICAO_GRUPO AS NOME_GRUPO'
      '                                       '
      'FROM P_PRODUTOS P'
      ''
      
        'LEFT OUTER JOIN E_CLIENTE  C  ON (C.CODIGO_CLIENTE = P.FABRICA_P' +
        'RODUTO)'
      
        'LEFT OUTER JOIN P_GRUPOS   G  ON (G.CODIGO_GRUPO   = P.GRUPO_PRO' +
        'DUTO)'
      'LEFT OUTER JOIN P_MARCA    M  ON (P.MARCA = M.CODIGO_MARCA)'
      ''
      'WHERE P.COD_EMPRESA=:CODEMP')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 8
    object qryPesqProdutosFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object qryPesqProdutosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryPesqProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qryPesqProdutosDESUSO_PRODUTO: TStringField
      FieldName = 'DESUSO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryPesqProdutosFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object qryPesqProdutosSIMILAR1_PRODUTO: TIntegerField
      FieldName = 'SIMILAR1_PRODUTO'
    end
    object qryPesqProdutosSIMILAR2_PRODUTO: TIntegerField
      FieldName = 'SIMILAR2_PRODUTO'
    end
    object qryPesqProdutosCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
    end
    object qryPesqProdutosGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryPesqProdutosUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object qryPesqProdutosPRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryPesqProdutosESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryPesqProdutosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryPesqProdutosBARRA_PRODUTO: TStringField
      FieldName = 'BARRA_PRODUTO'
      Size = 17
    end
    object qryPesqProdutosMETRO_CUB_PRODUTO: TStringField
      FieldName = 'METRO_CUB_PRODUTO'
      Size = 1
    end
    object qryPesqProdutosOBSERVACAO_PRODUTO: TMemoField
      FieldName = 'OBSERVACAO_PRODUTO'
      BlobType = ftMemo
      Size = 1
    end
    object qryPesqProdutosGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object qryPesqProdutosREFERENCIA_PRODUTO: TStringField
      FieldName = 'REFERENCIA_PRODUTO'
      Size = 15
    end
    object qryPesqProdutosDESCRICAO_MARCA: TStringField
      FieldName = 'DESCRICAO_MARCA'
      Size = 80
    end
    object qryPesqProdutosCODIGO_FABRICANTE: TIntegerField
      FieldName = 'CODIGO_FABRICANTE'
    end
    object qryPesqProdutosNOME_FABRICANTE: TStringField
      FieldName = 'NOME_FABRICANTE'
      Size = 40
    end
    object qryPesqProdutosNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 30
    end
  end
  object cdsPesqProdutos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODEMP'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPesqProdutos'
    Left = 248
    Top = 8
    object cdsPesqProdutosFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object cdsPesqProdutosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsPesqProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object cdsPesqProdutosDESUSO_PRODUTO: TStringField
      FieldName = 'DESUSO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsPesqProdutosFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object cdsPesqProdutosSIMILAR1_PRODUTO: TIntegerField
      FieldName = 'SIMILAR1_PRODUTO'
    end
    object cdsPesqProdutosSIMILAR2_PRODUTO: TIntegerField
      FieldName = 'SIMILAR2_PRODUTO'
    end
    object cdsPesqProdutosCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
    end
    object cdsPesqProdutosGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsPesqProdutosUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object cdsPesqProdutosPRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsPesqProdutosESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsPesqProdutosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsPesqProdutosBARRA_PRODUTO: TStringField
      FieldName = 'BARRA_PRODUTO'
      Size = 17
    end
    object cdsPesqProdutosMETRO_CUB_PRODUTO: TStringField
      FieldName = 'METRO_CUB_PRODUTO'
      Size = 1
    end
    object cdsPesqProdutosOBSERVACAO_PRODUTO: TMemoField
      FieldName = 'OBSERVACAO_PRODUTO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPesqProdutosGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object cdsPesqProdutosREFERENCIA_PRODUTO: TStringField
      FieldName = 'REFERENCIA_PRODUTO'
      Size = 15
    end
    object cdsPesqProdutosDESCRICAO_MARCA: TStringField
      FieldName = 'DESCRICAO_MARCA'
      Size = 80
    end
    object cdsPesqProdutosCODIGO_FABRICANTE: TIntegerField
      FieldName = 'CODIGO_FABRICANTE'
    end
    object cdsPesqProdutosNOME_FABRICANTE: TStringField
      FieldName = 'NOME_FABRICANTE'
      Size = 40
    end
    object cdsPesqProdutosNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      Size = 30
    end
  end
  object dspPesqProdutos: TDataSetProvider
    DataSet = qryPesqProdutos
    Options = [poAllowCommandText]
    Left = 144
    Top = 8
  end
end
