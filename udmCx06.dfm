object dmCx06: TdmCx06
  OldCreateOrder = False
  Left = 299
  Top = 99
  Height = 246
  Width = 363
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMVENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspVenda'
    Left = 192
    Top = 16
    object cdsVendaENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object cdsVendaFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVendaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVendaVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVendaVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsVendaHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendaTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsVendaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object cdsVendaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsVendaEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsVendaEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsVendaCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object cdsVendaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
  end
  object dspVenda: TDataSetProvider
    DataSet = qryVenda
    Left = 112
    Top = 16
  end
  object qryVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMVENDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ''
      'V.CODIGO_VENDA,'
      'V.ENTREGA_VENDA,'
      'V.FATURA_VENDA,'
      'V.DESCONTO_VENDA,'
      'V.VALORNOTA_VENDA,'
      'V.VENDEDOR_VENDA,'
      'V.DATA_VENDA,'
      'V.HORA_VENDA,'
      'V.TROCO_VENDA,'
      'V.EXCLUSAO_VENDA,'
      'V.EMISSAO_VENDA,'
      'V.CHAVE_VENDA,'
      ''
      'VE.NOME_VENDEDOR,'
      'C.NOME_CLIENTE'
      ''
      'FROM P_VENDAS V'
      ''
      
        'LEFT OUTER JOIN P_VENDEDOR VE ON (VE.CODIGO_VENDEDOR=V.VENDEDOR_' +
        'VENDA)'
      
        'LEFT OUTER JOIN E_CLIENTE C ON (V.CLIENTE_VENDA=C.CODIGO_CLIENTE' +
        ')'
      ''
      'WHERE V.CODIGO_VENDA=:NUMVENDA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 16
    object qryVendaENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object qryVendaFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVendaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryVendaHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendaTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 30
    end
    object qryVendaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryVendaEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object qryVendaEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object qryVendaCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object qryVendaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Left = 112
    Top = 144
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCliente'
    Left = 192
    Top = 144
    object cdsClienteUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
  end
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'SELECT UTILIZADO_CLIENTE FROM E_CLIENTE WHERE CODIGO_CLIENTE=:CL' +
        'IENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 144
    object qryClienteUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
  end
  object dspVendasItem: TDataSetProvider
    DataSet = qryVendasItem
    Options = [poAllowCommandText]
    Left = 110
    Top = 72
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
    Left = 192
    Top = 72
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
    Left = 24
    Top = 72
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
      ProviderFlags = [pfInUpdate]
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
