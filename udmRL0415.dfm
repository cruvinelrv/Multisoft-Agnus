object dmRL0415: TdmRL0415
  OldCreateOrder = False
  Left = 341
  Top = 222
  Height = 224
  Width = 484
  object qryVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'VENDA_DEVOLUCAO1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VENDA_DEVOLUCAO2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NOTA1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NOTA2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE_DIF'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'VENDEDOR1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VENDEDOR2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select v.codigo_venda, v.vendedor_venda, v.cliente_venda, v.tipo' +
        '_doc_venda,'
      
        'v.notafiscal_venda, v.data_venda, v.serie_venda, c.nome_cliente,' +
        ' v.devolve_venda,'
      
        'v.valornota_venda, v.cfop_venda, (v.valornota_venda - v.desconto' +
        '_venda) as "Valor_Liquido",'
      
        'v.transporta_venda, v.placasaida_venda, v.frete_venda, v.outros_' +
        'venda, v.romaneio_venda,'
      
        'v.horasaida_venda, v.hora_venda, v.icms_venda, v.fatura_venda, v' +
        '.seguro_venda, v.ipi_venda,'
      
        'v.emissao_venda, p.codigo_pedido, e.nome_vendedor, v.baseicms_ve' +
        'nda, v.baseicmssb_venda,'
      
        'v.desconto_venda, v.icmssb_venda, (v.fatura_venda - v.desconto_v' +
        'enda) as "Recebido",'
      
        'v.tipo_preco_venda, v.exclusao_venda, v.datasaida_venda, v.estad' +
        'osaida_venda,'
      'case v.tipo_doc_venda'
      'when '#39'3'#39' then (v.valornota_venda * -1)'
      'else (v.valornota_venda)'
      'end as "ValorNota",'
      'case v.tipo_doc_venda'
      'when '#39'3'#39' then (v.valornota_venda)'
      'else 0'
      'end as "ValorDev"'
      'from P_VENDAS v'
      
        '     left outer join e_cliente c on (v.cliente_venda = c.codigo_' +
        'cliente)'
      
        '     left outer join p_pedido p on (p.cliente_pedido = c.codigo_' +
        'cliente)'
      
        '     left outer join p_vendedor e on (v.vendedor_venda = e.codig' +
        'o_vendedor)'
      'where v.tipo_doc_venda >=:VENDA_DEVOLUCAO1'
      'and v.tipo_doc_venda <=:VENDA_DEVOLUCAO2'
      'and v.notafiscal_venda >=:NOTA1'
      'and v.notafiscal_venda <=:NOTA2'
      'and v.data_venda >=:DATA1'
      'and v.data_venda <=:DATA2'
      'and v.serie_venda >=:SERIE1'
      'and v.serie_venda <=:SERIE2'
      'and v.serie_venda <>:SERIE_DIF'
      'and v.vendedor_venda >=:VENDEDOR1'
      'and v.vendedor_venda <=:VENDEDOR2')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 24
    object qryVendaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendaVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVendaCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryVendaTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object qryVendaNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryVendaSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryVendaDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object qryVendaVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object qryVendaValor_Liquido: TFMTBCDField
      FieldName = 'Valor_Liquido'
      Precision = 15
      Size = 2
    end
    object qryVendaTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object qryVendaPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object qryVendaFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object qryVendaHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object qryVendaHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendaICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaValorNota: TFMTBCDField
      FieldName = 'ValorNota'
      Precision = 15
      Size = 2
    end
    object qryVendaValorDev: TFMTBCDField
      FieldName = 'ValorDev'
      Precision = 15
      Size = 2
    end
    object qryVendaCODIGO_PEDIDO: TIntegerField
      FieldName = 'CODIGO_PEDIDO'
    end
    object qryVendaEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object qryVendaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object qryVendaBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaRecebido: TFMTBCDField
      FieldName = 'Recebido'
      Precision = 15
      Size = 2
    end
    object qryVendaTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object qryVendaEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object qryVendaDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object qryVendaESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
  end
  object dspVenda: TDataSetProvider
    DataSet = qryVenda
    Left = 112
    Top = 24
  end
  object dtsVenda: TDataSource
    DataSet = cdsVenda
    Left = 296
    Top = 24
  end
  object qryVendas_Itens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      
        'select i.id_venda_item,  i.codigo_ivenda, v.codigo_venda, v.emis' +
        'sao_venda, v.datasaida_venda,'
      
        'v.serie_venda, v.notafiscal_venda, c.codigo_cliente, c.nome_clie' +
        'nte, p.codigo_produto,'
      
        'p.descricao_produto, p.unidade_produto, i.quantidade_ivendas, i.' +
        'valorbruto_ivendas,'
      
        'v.valornota_venda, v.cfop_venda, e.fornecedor_pedido, e.cliente_' +
        'pedido,'
      
        '(i.quantidade_ivendas * i.valorbruto_ivendas) as "Total_IVenda",' +
        ' i.tributacao_ivendas,'
      
        'v.transporta_venda, v.placasaida_venda, v.frete_venda, v.outros_' +
        'venda, v.romaneio_venda,'
      
        '(v.valornota_venda - v.desconto_venda) as "Valor_Liquido", v.hor' +
        'asaida_venda, v.hora_venda,'
      
        'i.redutor_ivendas, i.icm_ivendas, v.icms_venda, v.fatura_venda, ' +
        'v.seguro_venda, v.ipi_venda,'
      'case i.tributacao_ivendas'
      'when '#39'000'#39' then (i.quantidade_ivendas * i.valorbruto_ivendas)'
      'end as "Tribu000",'
      'case i.tributacao_ivendas'
      'when '#39'010'#39' then (i.quantidade_ivendas * i.valorbruto_ivendas)'
      'end as "Tribu010",'
      'case i.tributacao_ivendas'
      'when '#39'020'#39' then (i.quantidade_ivendas * i.valorbruto_ivendas)'
      'end as "Tribu020",'
      'case i.tributacao_ivendas'
      'when '#39'040'#39' then (i.quantidade_ivendas * i.valorbruto_ivendas)'
      'end as "Tribu040",'
      'case i.tributacao_ivendas'
      'when '#39'060'#39' then (i.quantidade_ivendas * i.valorbruto_ivendas)'
      'end as "Tribu060"'
      'from P_VENDAS_ITENS i'
      
        '     left outer join p_vendas v on (i.codigo_ivenda = v.codigo_v' +
        'enda)'
      
        '     left outer join e_cliente c on (v.cliente_venda = c.codigo_' +
        'cliente)'
      
        '     left outer join p_produtos p on (i.produto_ivenda = p.codig' +
        'o_produto)'
      
        '     left outer join p_pedido e on (c.codigo_cliente = e.cliente' +
        '_pedido)'
      'where  i.codigo_ivenda =:codigo_venda')
    SQLConnection = DmPrincipal.DbConexao
    Left = 35
    Top = 132
    object qryVendas_ItensID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object qryVendas_ItensCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object qryVendas_ItensCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendas_ItensEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object qryVendas_ItensDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object qryVendas_ItensSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendas_ItensNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendas_ItensCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qryVendas_ItensNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryVendas_ItensCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object qryVendas_ItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryVendas_ItensUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object qryVendas_ItensQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object qryVendas_ItensVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object qryVendas_ItensVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendas_ItensCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object qryVendas_ItensFORNECEDOR_PEDIDO: TIntegerField
      FieldName = 'FORNECEDOR_PEDIDO'
    end
    object qryVendas_ItensCLIENTE_PEDIDO: TIntegerField
      FieldName = 'CLIENTE_PEDIDO'
    end
    object qryVendas_ItensTotal_IVenda: TFMTBCDField
      FieldName = 'Total_IVenda'
      Precision = 15
      Size = 7
    end
    object qryVendas_ItensTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object qryVendas_ItensTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object qryVendas_ItensPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object qryVendas_ItensFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendas_ItensOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendas_ItensROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object qryVendas_ItensValor_Liquido: TFMTBCDField
      FieldName = 'Valor_Liquido'
      Precision = 15
      Size = 2
    end
    object qryVendas_ItensHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object qryVendas_ItensHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendas_ItensREDUTOR_IVENDAS: TFMTBCDField
      FieldName = 'REDUTOR_IVENDAS'
      Precision = 15
      Size = 4
    end
    object qryVendas_ItensICM_IVENDAS: TFMTBCDField
      FieldName = 'ICM_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryVendas_ItensICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendas_ItensFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendas_ItensSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendas_ItensIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendas_ItensTribu000: TFMTBCDField
      FieldName = 'Tribu000'
      Precision = 15
      Size = 4
    end
    object qryVendas_ItensTribu010: TFMTBCDField
      FieldName = 'Tribu010'
      Precision = 15
      Size = 4
    end
    object qryVendas_ItensTribu020: TFMTBCDField
      FieldName = 'Tribu020'
      Precision = 15
      Size = 4
    end
    object qryVendas_ItensTribu040: TFMTBCDField
      FieldName = 'Tribu040'
      Precision = 15
      Size = 4
    end
    object qryVendas_ItensTribu060: TFMTBCDField
      FieldName = 'Tribu060'
      Precision = 15
      Size = 4
    end
  end
  object cdsVendas_Itens: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
        Size = 4
      end>
    ProviderName = 'dspVendas_Itens'
    Left = 214
    Top = 132
    object cdsVendas_ItensID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object cdsVendas_ItensCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object cdsVendas_ItensCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendas_ItensEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsVendas_ItensDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object cdsVendas_ItensSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendas_ItensNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendas_ItensCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsVendas_ItensNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsVendas_ItensCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object cdsVendas_ItensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsVendas_ItensUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object cdsVendas_ItensQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object cdsVendas_ItensVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object cdsVendas_ItensVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_ItensCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsVendas_ItensFORNECEDOR_PEDIDO: TIntegerField
      FieldName = 'FORNECEDOR_PEDIDO'
    end
    object cdsVendas_ItensCLIENTE_PEDIDO: TIntegerField
      FieldName = 'CLIENTE_PEDIDO'
    end
    object cdsVendas_ItensTotal_IVenda: TFMTBCDField
      FieldName = 'Total_IVenda'
      Precision = 15
      Size = 7
    end
    object cdsVendas_ItensTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object cdsVendas_ItensTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object cdsVendas_ItensPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object cdsVendas_ItensFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_ItensOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_ItensROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object cdsVendas_ItensValor_Liquido: TFMTBCDField
      FieldName = 'Valor_Liquido'
      Precision = 15
      Size = 2
    end
    object cdsVendas_ItensHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object cdsVendas_ItensHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendas_ItensREDUTOR_IVENDAS: TFMTBCDField
      FieldName = 'REDUTOR_IVENDAS'
      Precision = 15
      Size = 4
    end
    object cdsVendas_ItensICM_IVENDAS: TFMTBCDField
      FieldName = 'ICM_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendas_ItensICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_ItensFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_ItensSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_ItensIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_ItensTribu000: TFMTBCDField
      FieldName = 'Tribu000'
      Precision = 15
      Size = 4
    end
    object cdsVendas_ItensTribu010: TFMTBCDField
      FieldName = 'Tribu010'
      Precision = 15
      Size = 4
    end
    object cdsVendas_ItensTribu020: TFMTBCDField
      FieldName = 'Tribu020'
      Precision = 15
      Size = 4
    end
    object cdsVendas_ItensTribu040: TFMTBCDField
      FieldName = 'Tribu040'
      Precision = 15
      Size = 4
    end
    object cdsVendas_ItensTribu060: TFMTBCDField
      FieldName = 'Tribu060'
      Precision = 15
      Size = 4
    end
  end
  object dtsVendas_Itens: TDataSource
    DataSet = cdsVendas_Itens
    Left = 299
    Top = 132
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'VENDA_DEVOLUCAO1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VENDA_DEVOLUCAO2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NOTA1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NOTA2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE_DIF'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'VENDEDOR1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VENDEDOR2'
        ParamType = ptInput
      end>
    ProviderName = 'dspVenda'
    Left = 192
    Top = 24
    object cdsVendaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendaVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendaCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVendaTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsVendaNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsVendaSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsVendaDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object cdsVendaVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsVendaValor_Liquido: TFMTBCDField
      FieldName = 'Valor_Liquido'
      Precision = 15
      Size = 2
    end
    object cdsVendaTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object cdsVendaPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object cdsVendaFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object cdsVendaHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object cdsVendaHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendaICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaValorNota: TFMTBCDField
      FieldName = 'ValorNota'
      Precision = 15
      Size = 2
    end
    object cdsVendaValorDev: TFMTBCDField
      FieldName = 'ValorDev'
      Precision = 15
      Size = 2
    end
    object cdsVendaCODIGO_PEDIDO: TIntegerField
      FieldName = 'CODIGO_PEDIDO'
    end
    object cdsVendaEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsVendaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object cdsVendaBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaRecebido: TFMTBCDField
      FieldName = 'Recebido'
      Precision = 15
      Size = 2
    end
    object cdsVendaTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object cdsVendaEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsVendaDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object cdsVendaESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
  end
  object dspVendas_Itens: TDataSetProvider
    DataSet = qryVendas_Itens
    Left = 123
    Top = 132
  end
  object DataSource1: TDataSource
    DataSet = cdsVenda
    OnDataChange = DataSource1DataChange
    Left = 32
    Top = 80
  end
  object ppDBVendas_Itens: TppDBPipeline
    DataSource = dtsVendas_Itens
    UserName = 'DBVendas_Itens'
    Left = 400
    Top = 128
    object ppDBVendas_ItensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_VENDA_ITEM'
      FieldName = 'ID_VENDA_ITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBVendas_ItensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_IVENDA'
      FieldName = 'CODIGO_IVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBVendas_ItensppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBVendas_ItensppField4: TppField
      FieldAlias = 'EMISSAO_VENDA'
      FieldName = 'EMISSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppDBVendas_ItensppField5: TppField
      FieldAlias = 'DATASAIDA_VENDA'
      FieldName = 'DATASAIDA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppDBVendas_ItensppField6: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 5
    end
    object ppDBVendas_ItensppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBVendas_ItensppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_CLIENTE'
      FieldName = 'CODIGO_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBVendas_ItensppField9: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 8
    end
    object ppDBVendas_ItensppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_PRODUTO'
      FieldName = 'CODIGO_PRODUTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDBVendas_ItensppField11: TppField
      FieldAlias = 'DESCRICAO_PRODUTO'
      FieldName = 'DESCRICAO_PRODUTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object ppDBVendas_ItensppField12: TppField
      FieldAlias = 'UNIDADE_PRODUTO'
      FieldName = 'UNIDADE_PRODUTO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 11
    end
    object ppDBVendas_ItensppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE_IVENDAS'
      FieldName = 'QUANTIDADE_IVENDAS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
    object ppDBVendas_ItensppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORBRUTO_IVENDAS'
      FieldName = 'VALORBRUTO_IVENDAS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 13
    end
    object ppDBVendas_ItensppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object ppDBVendas_ItensppField16: TppField
      FieldAlias = 'CFOP_VENDA'
      FieldName = 'CFOP_VENDA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 15
    end
    object ppDBVendas_ItensppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORNECEDOR_PEDIDO'
      FieldName = 'FORNECEDOR_PEDIDO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDBVendas_ItensppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_PEDIDO'
      FieldName = 'CLIENTE_PEDIDO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDBVendas_ItensppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_IVenda'
      FieldName = 'Total_IVenda'
      FieldLength = 7
      DataType = dtDouble
      DisplayWidth = 16
      Position = 18
    end
    object ppDBVendas_ItensppField20: TppField
      FieldAlias = 'TRIBUTACAO_IVENDAS'
      FieldName = 'TRIBUTACAO_IVENDAS'
      FieldLength = 3
      DisplayWidth = 3
      Position = 19
    end
    object ppDBVendas_ItensppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSPORTA_VENDA'
      FieldName = 'TRANSPORTA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppDBVendas_ItensppField22: TppField
      FieldAlias = 'PLACASAIDA_VENDA'
      FieldName = 'PLACASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 21
    end
    object ppDBVendas_ItensppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'FRETE_VENDA'
      FieldName = 'FRETE_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 22
    end
    object ppDBVendas_ItensppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'OUTROS_VENDA'
      FieldName = 'OUTROS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 23
    end
    object ppDBVendas_ItensppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROMANEIO_VENDA'
      FieldName = 'ROMANEIO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppDBVendas_ItensppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Liquido'
      FieldName = 'Valor_Liquido'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 25
    end
    object ppDBVendas_ItensppField27: TppField
      FieldAlias = 'HORASAIDA_VENDA'
      FieldName = 'HORASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 26
    end
    object ppDBVendas_ItensppField28: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 27
    end
    object ppDBVendas_ItensppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'REDUTOR_IVENDAS'
      FieldName = 'REDUTOR_IVENDAS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 28
    end
    object ppDBVendas_ItensppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICM_IVENDAS'
      FieldName = 'ICM_IVENDAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 29
    end
    object ppDBVendas_ItensppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 30
    end
    object ppDBVendas_ItensppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 31
    end
    object ppDBVendas_ItensppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEGURO_VENDA'
      FieldName = 'SEGURO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 32
    end
    object ppDBVendas_ItensppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI_VENDA'
      FieldName = 'IPI_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 33
    end
    object ppDBVendas_ItensppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tribu000'
      FieldName = 'Tribu000'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 34
    end
    object ppDBVendas_ItensppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tribu010'
      FieldName = 'Tribu010'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 35
    end
    object ppDBVendas_ItensppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tribu020'
      FieldName = 'Tribu020'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 36
    end
    object ppDBVendas_ItensppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tribu040'
      FieldName = 'Tribu040'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 37
    end
    object ppDBVendas_ItensppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tribu060'
      FieldName = 'Tribu060'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 38
    end
  end
  object ppDBVendas: TppDBPipeline
    DataSource = dtsVenda
    UserName = 'DBVendas'
    Left = 400
    Top = 24
    object ppDBVendasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBVendasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBVendasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBVendasppField4: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppDBVendasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBVendasppField6: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppDBVendasppField7: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 6
    end
    object ppDBVendasppField8: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 7
    end
    object ppDBVendasppField9: TppField
      FieldAlias = 'DEVOLVE_VENDA'
      FieldName = 'DEVOLVE_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object ppDBVendasppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object ppDBVendasppField11: TppField
      FieldAlias = 'CFOP_VENDA'
      FieldName = 'CFOP_VENDA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 10
    end
    object ppDBVendasppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Liquido'
      FieldName = 'Valor_Liquido'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object ppDBVendasppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSPORTA_VENDA'
      FieldName = 'TRANSPORTA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppDBVendasppField14: TppField
      FieldAlias = 'PLACASAIDA_VENDA'
      FieldName = 'PLACASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 13
    end
    object ppDBVendasppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'FRETE_VENDA'
      FieldName = 'FRETE_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object ppDBVendasppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'OUTROS_VENDA'
      FieldName = 'OUTROS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 15
    end
    object ppDBVendasppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROMANEIO_VENDA'
      FieldName = 'ROMANEIO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppDBVendasppField18: TppField
      FieldAlias = 'HORASAIDA_VENDA'
      FieldName = 'HORASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 17
    end
    object ppDBVendasppField19: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 18
    end
    object ppDBVendasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 19
    end
    object ppDBVendasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 20
    end
    object ppDBVendasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEGURO_VENDA'
      FieldName = 'SEGURO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 21
    end
    object ppDBVendasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI_VENDA'
      FieldName = 'IPI_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 22
    end
    object ppDBVendasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorNota'
      FieldName = 'ValorNota'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 23
    end
    object ppDBVendasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorDev'
      FieldName = 'ValorDev'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 24
    end
    object ppDBVendasppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_PEDIDO'
      FieldName = 'CODIGO_PEDIDO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppDBVendasppField27: TppField
      FieldAlias = 'EMISSAO_VENDA'
      FieldName = 'EMISSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 26
    end
    object ppDBVendasppField28: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 30
      DisplayWidth = 30
      Position = 27
    end
    object ppDBVendasppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASEICMS_VENDA'
      FieldName = 'BASEICMS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 28
    end
    object ppDBVendasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASEICMSSB_VENDA'
      FieldName = 'BASEICMSSB_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 29
    end
    object ppDBVendasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 30
    end
    object ppDBVendasppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMSSB_VENDA'
      FieldName = 'ICMSSB_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 31
    end
    object ppDBVendasppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'Recebido'
      FieldName = 'Recebido'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 32
    end
    object ppDBVendasppField34: TppField
      FieldAlias = 'TIPO_PRECO_VENDA'
      FieldName = 'TIPO_PRECO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 33
    end
    object ppDBVendasppField35: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 34
    end
    object ppDBVendasppField36: TppField
      FieldAlias = 'DATASAIDA_VENDA'
      FieldName = 'DATASAIDA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 35
    end
    object ppDBVendasppField37: TppField
      FieldAlias = 'ESTADOSAIDA_VENDA'
      FieldName = 'ESTADOSAIDA_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
  end
end
