object dmRL0408: TdmRL0408
  OldCreateOrder = False
  Left = 299
  Top = 199
  Height = 294
  Width = 482
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Ven1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ven2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dat1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dat2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Sec1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Sec2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Gru1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Gru2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser3'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser4'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser6'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser7'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser8'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser9'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser10'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select v.codigo_venda, i.id_venda_item, i.codigo_ivenda, v.vende' +
        'dor_venda, e.nome_vendedor, v.valornota_venda,'
      
        'v.devolve_venda, v.desconto_venda, (v.valornota_venda - v.descon' +
        'to_venda) as'
      
        '"Valor_liquido", v.comissao_venda, v.hora_venda, v.os_venda, v.s' +
        'erie_venda,'
      'v.tipo_venda, r.preco_lista_produto, i.desconto_ivendas,'
      '(i.valorbruto_ivendas - i.desconto_ivendas) as "Valor_Recebido",'
      
        '((i.desconto_ivendas / i.valorbruto_ivendas) * 100) as "Percent_' +
        'Desc",'
      
        '(((i.valorbruto_ivendas - r.preco_custo_produto) - i.desconto_iv' +
        'endas) * i.quantidade_ivendas) as'
      
        '"Lucro", i.quantidade_ivendas, i.valorbruto_ivendas, r.preco_cus' +
        'to_produto,'
      
        '((((i.valorbruto_ivendas - r.preco_custo_produto) - i.desconto_i' +
        'vendas) * i.quantidade_ivendas) /'
      
        '(v.valornota_venda - v.desconto_venda) * 100) as "Percent_Lucro"' +
        ','
      
        'v.cpagamento_venda, c.descricao_cpagamento, c.comissao_cpagament' +
        'o,'
      
        '(((v.comissao_venda / v.valornota_venda) * 100) * ((i.valorbruto' +
        '_ivendas - i.desconto_ivendas) / 100)) +'
      '(i.valorbruto_ivendas - i.desconto_ivendas) as "Comissao_Prod",'
      
        'r.codigo_produto, r.descricao_produto, r.unidade_produto, v.clie' +
        'nte_venda, l.nome_cliente, r.comissao1_produto,'
      
        'v.data_venda, g.codigo_secao_grupo, g.codigo_grupo, v.serie_vend' +
        'a as SERIE,'
      'case v.tipo_doc_venda'
      'when '#39'3'#39' then (v.valornota_venda * -1)'
      'else (v.valornota_venda)'
      'end as "ValorNota",'
      'case v.tipo_doc_venda'
      'when '#39'3'#39' then (v.valornota_venda)'
      'else 0'
      'end as "ValorDev"'
      'from P_VENDAS_ITENS i'
      
        '     left outer join p_vendas v on (v.codigo_venda = i.codigo_iv' +
        'enda)'
      
        '     left outer join p_vendedor e on (v.vendedor_venda = e.codig' +
        'o_vendedor)'
      
        '     left outer join p_produtos r on (i.produto_ivenda = r.codig' +
        'o_produto)'
      
        '     left outer join p_grupos g on (r.grupo_produto = g.codigo_g' +
        'rupo)'
      
        '     left outer join p_cpagamento c on (v.cpagamento_venda = c.c' +
        'odigo_cpagamento)'
      
        '     left outer join e_cliente l on (v.cliente_venda = l.codigo_' +
        'cliente)'
      'where v.codigo_venda > 0 '
      'and v.vendedor_venda >=:Ven1'
      'and v.vendedor_venda <=:Ven2'
      'and v.data_venda >=:Dat1'
      'and v.data_venda <=:Dat2'
      'and g.codigo_secao_grupo >=:Sec1'
      'and g.codigo_secao_grupo <=:Sec2'
      'and g.codigo_grupo >=:Gru1'
      'and g.codigo_grupo <=:Gru2'
      'and ((v.serie_venda =:Ser1) or (v.serie_venda =:Ser2) or'
      '(v.serie_venda =:Ser3) or (v.serie_venda =:Ser4) or'
      '(v.serie_venda =:Ser5) or (v.serie_venda =:Ser6) or'
      '(v.serie_venda =:Ser7) or (v.serie_venda =:Ser8) or'
      '(v.serie_venda =:Ser9) or (v.serie_venda =:Ser10))'
      '')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 26
    object qryConsultaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryConsultaID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object qryConsultaCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object qryConsultaVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryConsultaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object qryConsultaVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryConsultaDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object qryConsultaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryConsultaValor_liquido: TFMTBCDField
      FieldName = 'Valor_liquido'
      Precision = 15
      Size = 2
    end
    object qryConsultaCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryConsultaHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryConsultaOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object qryConsultaSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryConsultaTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qryConsultaPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryConsultaDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryConsultaValor_Recebido: TFMTBCDField
      FieldName = 'Valor_Recebido'
      Precision = 15
      Size = 4
    end
    object qryConsultaPercent_Desc: TFMTBCDField
      FieldName = 'Percent_Desc'
      Precision = 15
      Size = 6
    end
    object qryConsultaLucro: TFMTBCDField
      FieldName = 'Lucro'
      Precision = 15
      Size = 7
    end
    object qryConsultaQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object qryConsultaVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object qryConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryConsultaPercent_Lucro: TFMTBCDField
      FieldName = 'Percent_Lucro'
      Precision = 15
      Size = 9
    end
    object qryConsultaCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object qryConsultaDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      Size = 40
    end
    object qryConsultaCOMISSAO_CPAGAMENTO: TStringField
      FieldName = 'COMISSAO_CPAGAMENTO'
      Size = 1
    end
    object qryConsultaComissao_Prod: TFMTBCDField
      FieldName = 'Comissao_Prod'
      Precision = 15
    end
    object qryConsultaCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object qryConsultaDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryConsultaUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object qryConsultaCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryConsultaCOMISSAO1_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO1_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryConsultaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryConsultaCODIGO_SECAO_GRUPO: TIntegerField
      FieldName = 'CODIGO_SECAO_GRUPO'
    end
    object qryConsultaCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object qryConsultaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 2
    end
    object qryConsultaValorNota: TFMTBCDField
      FieldName = 'ValorNota'
      Precision = 15
      Size = 2
    end
    object qryConsultaValorDev: TFMTBCDField
      FieldName = 'ValorDev'
      Precision = 15
      Size = 2
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 128
    Top = 27
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 296
    Top = 26
  end
  object qrySerie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from P_SERIE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 42
    Top = 90
    object qrySerieSERIE_SERIE: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object qrySerieSER_DOC_SERIE: TStringField
      FieldName = 'SER_DOC_SERIE'
      Size = 2
    end
    object qrySerieNUMERO_SERIE: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      Precision = 15
      Size = 0
    end
    object qrySerieIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
  end
  object dspSerie: TDataSetProvider
    DataSet = qrySerie
    Left = 130
    Top = 90
  end
  object cdsSerie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSerie'
    Left = 218
    Top = 89
    object cdsSerieSERIE_SERIE: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object cdsSerieSER_DOC_SERIE: TStringField
      FieldName = 'SER_DOC_SERIE'
      Size = 2
    end
    object cdsSerieNUMERO_SERIE: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      Precision = 15
      Size = 0
    end
    object cdsSerieIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
  end
  object dsSerie: TDataSource
    DataSet = cdsSerie
    Left = 298
    Top = 89
  end
  object qryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select e.codigo_emp, e.tipo_com_emp'
      'from EMPRESA e'
      'where e.codigo_emp =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 43
    Top = 151
    object qryEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object qryEmpresaTIPO_COM_EMP: TStringField
      FieldName = 'TIPO_COM_EMP'
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 131
    Top = 152
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpresa'
    Left = 219
    Top = 152
    object cdsEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object cdsEmpresaTIPO_COM_EMP: TStringField
      FieldName = 'TIPO_COM_EMP'
      Size = 1
    end
  end
  object cdsConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Ven1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ven2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dat1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Dat2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Sec1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Sec2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Gru1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Gru2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser3'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser4'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser6'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser7'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser8'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser9'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Ser10'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    Left = 216
    Top = 26
    object cdsConsultaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsConsultaID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object cdsConsultaCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object cdsConsultaVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsConsultaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object cdsConsultaVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object cdsConsultaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaValor_liquido: TFMTBCDField
      FieldName = 'Valor_liquido'
      Precision = 15
      Size = 2
    end
    object cdsConsultaCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsConsultaOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsConsultaSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsConsultaTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsConsultaPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsConsultaDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsConsultaValor_Recebido: TFMTBCDField
      FieldName = 'Valor_Recebido'
      Precision = 15
      Size = 4
    end
    object cdsConsultaPercent_Desc: TFMTBCDField
      FieldName = 'Percent_Desc'
      Precision = 15
      Size = 6
    end
    object cdsConsultaLucro: TFMTBCDField
      FieldName = 'Lucro'
      Precision = 15
      Size = 7
    end
    object cdsConsultaQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object cdsConsultaVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object cdsConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsConsultaPercent_Lucro: TFMTBCDField
      FieldName = 'Percent_Lucro'
      Precision = 15
      Size = 9
    end
    object cdsConsultaCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsConsultaDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      Size = 40
    end
    object cdsConsultaCOMISSAO_CPAGAMENTO: TStringField
      FieldName = 'COMISSAO_CPAGAMENTO'
      Size = 1
    end
    object cdsConsultaComissao_Prod: TFMTBCDField
      FieldName = 'Comissao_Prod'
      Precision = 15
    end
    object cdsConsultaCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object cdsConsultaDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsConsultaUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object cdsConsultaCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsConsultaCOMISSAO1_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO1_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsConsultaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsConsultaCODIGO_SECAO_GRUPO: TIntegerField
      FieldName = 'CODIGO_SECAO_GRUPO'
    end
    object cdsConsultaCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
    end
    object cdsConsultaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 2
    end
    object cdsConsultaValorNota: TFMTBCDField
      FieldName = 'ValorNota'
      Precision = 15
      Size = 2
    end
    object cdsConsultaValorDev: TFMTBCDField
      FieldName = 'ValorDev'
      Precision = 15
      Size = 2
    end
  end
  object cdsVendaTemp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 208
    Data = {
      B40000009619E0BD010000001800000007000000000003000000B4000F434F44
      49474F5F56454E4445444F5204000100000000000D4D4F4D455F56454E444544
      4F52010049000000010005574944544802000200FA000D50455243454E545F4C
      5543524F08000400000000000956414C5F544F54414C08000400000000000A44
      45564F4C55434F455308000400000000000B56414C5F4C49515549444F080004
      000000000008434F4D495353414F08000400000000000000}
    object cdsVendaTempCODIGO_VENDEDOR: TIntegerField
      FieldName = 'CODIGO_VENDEDOR'
    end
    object cdsVendaTempMOME_VENDEDOR: TStringField
      FieldName = 'MOME_VENDEDOR'
      Size = 250
    end
    object cdsVendaTempPERCENT_LUCRO: TFloatField
      FieldName = 'PERCENT_LUCRO'
    end
    object cdsVendaTempVAL_TOTAL: TFloatField
      FieldName = 'VAL_TOTAL'
    end
    object cdsVendaTempDEVOLUCOES: TFloatField
      FieldName = 'DEVOLUCOES'
    end
    object cdsVendaTempVAL_LIQUIDO: TFloatField
      FieldName = 'VAL_LIQUIDO'
    end
    object cdsVendaTempCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
  end
  object dsVendaTemp: TDataSource
    DataSet = cdsVendaTemp
    Left = 136
    Top = 208
  end
  object ppDBVendaTemp: TppDBPipeline
    DataSource = dsVendaTemp
    UserName = 'DBVendaTemp'
    Left = 224
    Top = 208
    object ppDBVendaTempppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDEDOR'
      FieldName = 'CODIGO_VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBVendaTempppField2: TppField
      FieldAlias = 'MOME_VENDEDOR'
      FieldName = 'MOME_VENDEDOR'
      FieldLength = 250
      DisplayWidth = 250
      Position = 1
    end
    object ppDBVendaTempppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERCENT_LUCRO'
      FieldName = 'PERCENT_LUCRO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppDBVendaTempppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VAL_TOTAL'
      FieldName = 'VAL_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDBVendaTempppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEVOLUCOES'
      FieldName = 'DEVOLUCOES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDBVendaTempppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VAL_LIQUIDO'
      FieldName = 'VAL_LIQUIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBVendaTempppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMISSAO'
      FieldName = 'COMISSAO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dsConsulta
    UserName = 'DBConsulta'
    Left = 376
    Top = 28
    object ppDBConsultappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBConsultappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_VENDA_ITEM'
      FieldName = 'ID_VENDA_ITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBConsultappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_IVENDA'
      FieldName = 'CODIGO_IVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDBConsultappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBConsultappField5: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppDBConsultappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object ppDBConsultappField7: TppField
      FieldAlias = 'DEVOLVE_VENDA'
      FieldName = 'DEVOLVE_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object ppDBConsultappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object ppDBConsultappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_liquido'
      FieldName = 'Valor_liquido'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 8
    end
    object ppDBConsultappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMISSAO_VENDA'
      FieldName = 'COMISSAO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object ppDBConsultappField11: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
    object ppDBConsultappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppDBConsultappField13: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object ppDBConsultappField14: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 13
    end
    object ppDBConsultappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECO_LISTA_PRODUTO'
      FieldName = 'PRECO_LISTA_PRODUTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object ppDBConsultappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO_IVENDAS'
      FieldName = 'DESCONTO_IVENDAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 15
    end
    object ppDBConsultappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Recebido'
      FieldName = 'Valor_Recebido'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 16
    end
    object ppDBConsultappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Percent_Desc'
      FieldName = 'Percent_Desc'
      FieldLength = 6
      DataType = dtDouble
      DisplayWidth = 16
      Position = 17
    end
    object ppDBConsultappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Lucro'
      FieldName = 'Lucro'
      FieldLength = 7
      DataType = dtDouble
      DisplayWidth = 16
      Position = 18
    end
    object ppDBConsultappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE_IVENDAS'
      FieldName = 'QUANTIDADE_IVENDAS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 19
    end
    object ppDBConsultappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORBRUTO_IVENDAS'
      FieldName = 'VALORBRUTO_IVENDAS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 20
    end
    object ppDBConsultappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECO_CUSTO_PRODUTO'
      FieldName = 'PRECO_CUSTO_PRODUTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 21
    end
    object ppDBConsultappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Percent_Lucro'
      FieldName = 'Percent_Lucro'
      FieldLength = 9
      DataType = dtDouble
      DisplayWidth = 16
      Position = 22
    end
    object ppDBConsultappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'CPAGAMENTO_VENDA'
      FieldName = 'CPAGAMENTO_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 16
      Position = 23
    end
    object ppDBConsultappField25: TppField
      FieldAlias = 'DESCRICAO_CPAGAMENTO'
      FieldName = 'DESCRICAO_CPAGAMENTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 24
    end
    object ppDBConsultappField26: TppField
      FieldAlias = 'COMISSAO_CPAGAMENTO'
      FieldName = 'COMISSAO_CPAGAMENTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 25
    end
    object ppDBConsultappField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_Prod'
      FieldName = 'Comissao_Prod'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 16
      Position = 26
    end
    object ppDBConsultappField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_PRODUTO'
      FieldName = 'CODIGO_PRODUTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppDBConsultappField29: TppField
      FieldAlias = 'DESCRICAO_PRODUTO'
      FieldName = 'DESCRICAO_PRODUTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 28
    end
    object ppDBConsultappField30: TppField
      FieldAlias = 'UNIDADE_PRODUTO'
      FieldName = 'UNIDADE_PRODUTO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 29
    end
    object ppDBConsultappField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppDBConsultappField32: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 31
    end
    object ppDBConsultappField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMISSAO1_PRODUTO'
      FieldName = 'COMISSAO1_PRODUTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 32
    end
    object ppDBConsultappField34: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 33
    end
    object ppDBConsultappField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_SECAO_GRUPO'
      FieldName = 'CODIGO_SECAO_GRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppDBConsultappField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_GRUPO'
      FieldName = 'CODIGO_GRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppDBConsultappField37: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppDBConsultappField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorNota'
      FieldName = 'ValorNota'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 37
    end
    object ppDBConsultappField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'ValorDev'
      FieldName = 'ValorDev'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 38
    end
  end
end
