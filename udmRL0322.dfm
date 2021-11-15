object dmRL0322: TdmRL0322
  OldCreateOrder = False
  Left = 270
  Top = 109
  Height = 471
  Width = 276
  object qryProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 8
  end
  object dspProdutos: TDataSetProvider
    DataSet = qryProdutos
    Options = [poAllowCommandText]
    Left = 120
    Top = 8
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 200
    Top = 8
  end
  object qryPesquisa1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 64
  end
  object dspPesquisa1: TDataSetProvider
    DataSet = qryPesquisa1
    Options = [poAllowCommandText]
    Left = 120
    Top = 64
  end
  object cdsPesquisa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa1'
    Left = 200
    Top = 64
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Data_Ini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Data_Fim'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Produto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Serie'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT P_VENDAS.CODIGO_VENDA, P_VENDAS.NOTAFISCAL_VENDA, P_VENDA' +
        'S.SERIE_VENDA, P_VENDAS.DATA_VENDA, P_VENDAS.CLIENTE_VENDA, P_VE' +
        'NDAS.VENDEDOR_VENDA, P_VENDAS.HORA_VENDA, P_VENDAS.DESCONTO_VEND' +
        'A, P_VENDAS.FATURA_VENDA,'
      
        'P_VENDAS_ITENS.CODIGO_IVENDA, P_VENDAS_ITENS.PRODUTO_IVENDA, P_V' +
        'ENDAS_ITENS.QUANTIDADE_IVENDAS, P_VENDAS_ITENS.VALORBRUTO_IVENDA' +
        'S, P_VENDAS_ITENS.SERIE_IVENDAS,'
      'P_PRODUTOS.DESCRICAO_PRODUTO,'
      'E_CLIENTE.NOME_CLIENTE,'
      'P_VENDEDOR.NOME_VENDEDOR'
      'FROM P_VENDAS'
      
        'LEFT OUTER JOIN P_VENDAS_ITENS ON (P_VENDAS.CODIGO_VENDA = P_VEN' +
        'DAS_ITENS.CODIGO_IVENDA)'
      
        'LEFT OUTER JOIN P_PRODUTOS ON (P_VENDAS_ITENS.PRODUTO_IVENDA = P' +
        '_PRODUTOS.CODIGO_PRODUTO)'
      
        'LEFT OUTER JOIN E_CLIENTE ON (P_VENDAS.CLIENTE_VENDA = E_CLIENTE' +
        '.CODIGO_CLIENTE)'
      
        'LEFT OUTER JOIN P_VENDEDOR ON (P_VENDAS.VENDEDOR_VENDA = P_VENDE' +
        'DOR.CODIGO_VENDEDOR)'
      
        'WHERE (P_VENDAS.DATA_VENDA >= :Data_Ini AND P_VENDAS.DATA_VENDA ' +
        '<= :Data_Fim)'
      'AND (P_VENDAS_ITENS.PRODUTO_IVENDA = :Produto )'
      'AND (P_VENDAS.TIPO_DOC_VENDA = '#39'1'#39')'
      'AND (P_VENDAS.COD_EMPRESA = :Empresa )'
      'AND (P_VENDAS.SERIE_VENDA <> :Serie )')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 120
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Options = [poAllowCommandText]
    Left = 120
    Top = 120
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendas'
    Left = 200
    Top = 120
  end
  object qryAjuste: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Produto'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Data_Ini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Data_Fim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT DATA_TABELA02, ANTERIOR_TABELA02, ATUAL_TABELA02, PRECO1_' +
        'TABELA02, PRECO2_TABELA02, PRECO3_TABELA02, PRECO4_TABELA02, PRE' +
        'CO5_TABELA02, VALIDADE1_TABELA02, VALIDADE2_TABELA02, USUARIO_TA' +
        'BELA02'
      'FROM P_TABELA02'
      'WHERE COD_EMPRESA = :Empresa'
      'AND PRODUTO_TABELA02 = :Produto'
      'AND DATA_TABELA02 >= :Data_Ini AND DATA_TABELA02 <= :Data_Fim')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 176
  end
  object dspAjuste: TDataSetProvider
    DataSet = qryAjuste
    Options = [poAllowCommandText]
    Left = 120
    Top = 176
  end
  object cdsAjuste: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAjuste'
    Left = 200
    Top = 176
  end
  object qryCompras: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'Data_Ini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Data_Fim'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Produto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Nr_Nota'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT P_COMPRA.CODIGO_COMPRA, NOTAFISCAL_COMPRA, EMISSAO_COMPRA' +
        ', ENTRADA_COMPRA, FORNECEDOR_COMPRA,'
      
        'P_COMPRA_ITENS.QUANTIDADE_COMPRA, P_COMPRA_ITENS.PRECOUNIT_COMPR' +
        'A, P_COMPRA_ITENS.FATOR_COMPRA, P_COMPRA_ITENS.VALIDADE_COMPRA, ' +
        'P_COMPRA_ITENS.ICM_COMPRA, P_COMPRA_ITENS.IPI_COMPRA,'
      'E_CLIENTE.NOME_CLIENTE'
      'FROM P_COMPRA'
      
        'LEFT OUTER JOIN P_COMPRA_ITENS ON (P_COMPRA.CODIGO_COMPRA = P_CO' +
        'MPRA_ITENS.CODIGO_COMPRA)'
      
        'LEFT OUTER JOIN E_CLIENTE ON (P_COMPRA.FORNECEDOR_COMPRA = E_CLI' +
        'ENTE.CODIGO_CLIENTE)'
      
        'WHERE (P_COMPRA.ENTRADA_COMPRA >= :Data_Ini AND P_COMPRA.ENTRADA' +
        '_COMPRA <= :Data_Fim)'
      'AND (P_COMPRA_ITENS.PRODUTO_COMPRA = :Produto)'
      'AND (P_COMPRA.COD_EMPRESA = :Empresa)'
      'AND (P_COMPRA.NOTAFISCAL_COMPRA <> :Nr_Nota)')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 232
  end
  object dspCompras: TDataSetProvider
    DataSet = qryCompras
    Options = [poAllowCommandText]
    Left = 120
    Top = 232
  end
  object cdsCompras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCompras'
    Left = 200
    Top = 232
  end
  object qryBalanco: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FIM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT DATA_BALANCO, ESTOQUE_BALANCO, VALIDADE_BALANCO, PCOMPRA_' +
        'BALANCO, PCUSTO_BALANCO, USUARIO_BALANCO FROM P_BALANCO'
      'WHERE  COD_EMPRESA = :EMPRESA'
      'AND PRODUTO_BALANCO = :PRODUTO'
      'AND DATA_BALANCO >= :DATA_INI'
      'AND DATA_BALANCO <= :DATA_FIM')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 288
  end
  object dspBalanco: TDataSetProvider
    DataSet = qryBalanco
    Options = [poAllowCommandText]
    Left = 120
    Top = 288
  end
  object cdsBalanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBalanco'
    Left = 200
    Top = 288
  end
  object qryDevVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT P_VENDAS.CODIGO_VENDA, DATA_VENDA, HORA_VENDA, VENDEDOR_V' +
        'ENDA, CLIENTE_VENDA, SERIE_VENDA, NOTAFISCAL_VENDA, DESCONTO_VEN' +
        'DA, FATURA_VENDA,'
      
        'P_VENDAS_ITENS.QUANTIDADE_IVENDAS, P_VENDAS_ITENS.VALORBRUTO_IVE' +
        'NDAS, P_VENDAS_ITENS.SERIE_IVENDAS,'
      'P_VENDEDOR.NOME_VENDEDOR,'
      'E_CLIENTE.NOME_CLIENTE'
      'FROM P_VENDAS'
      
        'LEFT OUTER JOIN P_VENDAS_ITENS ON (P_VENDAS.CODIGO_VENDA = P_VEN' +
        'DAS_ITENS.CODIGO_IVENDA)'
      
        'LEFT OUTER JOIN P_VENDEDOR ON (P_VENDEDOR.CODIGO_VENDEDOR = P_VE' +
        'NDAS.VENDEDOR_VENDA)'
      
        'LEFT OUTER JOIN E_CLIENTE ON (E_CLIENTE.CODIGO_CLIENTE = P_VENDA' +
        'S.CLIENTE_VENDA)'
      'WHERE P_VENDAS.COD_EMPRESA = :EMPRESA'
      'AND DATA_VENDA >= :DATA_INI'
      'AND DATA_VENDA <= :DATA_FIM'
      'AND TIPO_DOC_VENDA = '#39'3'#39
      'AND (EXCLUSAO_VENDA is NULL)'
      'AND P_VENDAS_ITENS.PRODUTO_IVENDA = :PRODUTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 344
  end
  object dspDevVenda: TDataSetProvider
    DataSet = qryDevVenda
    Options = [poAllowCommandText]
    Left = 120
    Top = 344
  end
  object cdsDevVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDevVenda'
    Left = 200
    Top = 344
  end
end
