object dmRL0802: TdmRL0802
  OldCreateOrder = False
  Left = 246
  Top = 116
  Height = 393
  Width = 526
  object cdsTaxa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 251
    Top = 137
    Data = {
      300000009619E0BD01000000180000000100000000000300000030000D544158
      415F44455F4A55524F5308000400000000000000}
    object cdsTaxaTAXA_DE_JUROS: TFloatField
      Alignment = taLeftJustify
      DefaultExpression = '0'
      FieldName = 'TAXA_DE_JUROS'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object dtsTaxa: TDataSource
    DataSet = cdsTaxa
    Left = 349
    Top = 137
  end
  object ppDBTaxa: TppDBPipeline
    DataSource = dtsTaxa
    UserName = 'DBTaxa'
    Left = 453
    Top = 137
    object ppDBTaxappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAXA_DE_JUROS'
      FieldName = 'TAXA_DE_JUROS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
  end
  object qryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select e.codigo_emp, e.juros_emp, e.tipo_jur_emp'
      'from empresa e')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 257
    object qryEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object qryEmpresaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      Precision = 15
      Size = 2
    end
    object qryEmpresaTIPO_JUR_EMP: TStringField
      FieldName = 'TIPO_JUR_EMP'
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 140
    Top = 257
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 249
    Top = 264
    object cdsEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object cdsEmpresaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      Precision = 15
      Size = 2
    end
    object cdsEmpresaTIPO_JUR_EMP: TStringField
      FieldName = 'TIPO_JUR_EMP'
      Size = 1
    end
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DmPrincipal.DbConexao
    Left = 29
    Top = 8
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 136
    Top = 8
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 248
    Top = 8
    object cdsConsultaCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsConsultaDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 13
    end
    object cdsConsultaEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsConsultaVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsConsultaCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object cdsConsultaTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object cdsConsultaTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object cdsConsultaMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object cdsConsultaCODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
    end
    object cdsConsultaDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      FixedChar = True
    end
    object cdsConsultaValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Precision = 15
      Size = 2
    end
    object cdsConsultaVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsConsultaDATASYSTEM_EMP: TSQLTimeStampField
      FieldName = 'DATASYSTEM_EMP'
    end
    object cdsConsultaTIPO_JUR_EMP: TStringField
      FieldName = 'TIPO_JUR_EMP'
      Size = 1
    end
    object cdsConsultaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      Precision = 15
      Size = 2
    end
    object cdsConsultaJURO_MIN_EMP: TFMTBCDField
      FieldName = 'JURO_MIN_EMP'
      Precision = 15
      Size = 2
    end
    object cdsConsultaVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsConsultaBLOQUETE_RECEBER: TStringField
      FieldName = 'BLOQUETE_RECEBER'
      Size = 14
    end
    object cdsConsultaENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsConsultaBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsConsultaTRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsConsultaCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
    end
    object cdsConsultaDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object cdsConsultaTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsConsultaCELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 13
    end
    object cdsConsultaFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object cdsConsultaTIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      Size = 11
    end
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    OnDataChange = dtsConsultaDataChange
    Left = 344
    Top = 8
  end
  object qryVendas_itens: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VENDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select v.codigo_venda, i.codigo_ivenda, v.data_venda, i.produto_' +
        'ivenda, v.serie_venda,'
      
        'p.unidade_produto, i.valorbruto_ivendas, i.quantidade_ivendas, v' +
        '.cliente_venda,'
      
        '(i.valorbruto_ivendas * i.quantidade_ivendas) as "Total", i.desc' +
        'ricao_ivendas, p.descricao_produto,'
      'case'
      
        'when (not i.descricao_ivendas is null) or (i.descricao_ivendas <' +
        '> '#39#39') then (i.descricao_ivendas)'
      'else (p.descricao_produto)'
      'end as "Descricao"'
      'from P_VENDAS v'
      
        '     left outer join p_vendas_itens i on (v.codigo_venda = i.cod' +
        'igo_ivenda)'
      
        '     left outer join p_produtos p on (i.produto_ivenda = p.codig' +
        'o_produto)'
      'where v.serie_venda =:SERIE'
      'and v.codigo_venda =:VENDA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 29
    Top = 70
    object qryVendas_itensCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendas_itensCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
    end
    object qryVendas_itensDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryVendas_itensPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
    end
    object qryVendas_itensUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object qryVendas_itensVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object qryVendas_itensQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Precision = 15
      Size = 3
    end
    object qryVendas_itensCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryVendas_itensTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 15
      Size = 7
    end
    object qryVendas_itensDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 80
    end
    object qryVendas_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryVendas_itensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 80
    end
    object qryVendas_itensSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
  end
  object cdsVendas_itens: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendas_itens'
    Left = 253
    Top = 70
    object cdsVendas_itensCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendas_itensCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
    end
    object cdsVendas_itensDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsVendas_itensPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
    end
    object cdsVendas_itensUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object cdsVendas_itensVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object cdsVendas_itensQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Precision = 15
      Size = 3
    end
    object cdsVendas_itensCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVendas_itensTotal: TFMTBCDField
      FieldName = 'Total'
      Precision = 15
      Size = 7
    end
    object cdsVendas_itensDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 80
    end
    object cdsVendas_itensDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsVendas_itensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 80
    end
    object cdsVendas_itensSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
  end
  object dtsVendas_itens: TDataSource
    DataSet = cdsVendas_itens
    Left = 349
    Top = 70
  end
  object qryConsulta2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 196
  end
  object dspConsulta2: TDataSetProvider
    DataSet = qryConsulta2
    Options = [poAllowCommandText]
    Left = 140
    Top = 196
  end
  object cdsConsulta2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta2'
    Left = 252
    Top = 196
    object cdsConsulta2DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 13
    end
    object cdsConsulta2EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsConsulta2VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsConsulta2PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsConsulta2CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsConsulta2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsConsulta2CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object cdsConsulta2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object cdsConsulta2TIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object cdsConsulta2MOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object cdsConsulta2CODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
    end
    object cdsConsulta2DESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      FixedChar = True
    end
    object cdsConsulta2Valor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Precision = 15
      Size = 2
    end
    object cdsConsulta2VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsConsulta2DATASYSTEM_EMP: TSQLTimeStampField
      FieldName = 'DATASYSTEM_EMP'
    end
    object cdsConsulta2TIPO_JUR_EMP: TStringField
      FieldName = 'TIPO_JUR_EMP'
      Size = 1
    end
    object cdsConsulta2JUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      Precision = 15
      Size = 2
    end
    object cdsConsulta2JURO_MIN_EMP: TFMTBCDField
      FieldName = 'JURO_MIN_EMP'
      Precision = 15
      Size = 2
    end
    object cdsConsulta2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsConsulta2BLOQUETE_RECEBER: TStringField
      FieldName = 'BLOQUETE_RECEBER'
      Size = 14
    end
    object cdsConsulta2ENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsConsulta2BAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsConsulta2TRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsConsulta2CIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
    end
    object cdsConsulta2DESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object cdsConsulta2TELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsConsulta2CELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 13
    end
    object cdsConsulta2FAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
  end
  object dtsConsulta2: TDataSource
    DataSet = cdsConsulta2
    Left = 348
    Top = 196
  end
  object ppDBConsulta2: TppDBPipeline
    DataSource = dtsConsulta2
    UserName = 'DBConsulta2'
    Left = 444
    Top = 196
    object ppDBConsulta2ppField1: TppField
      FieldAlias = 'DUPLICATA_RECEBER'
      FieldName = 'DUPLICATA_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField2: TppField
      FieldAlias = 'EMISSAO_RECEBER'
      FieldName = 'EMISSAO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField3: TppField
      FieldAlias = 'VENCIMENTO_RECEBER'
      FieldName = 'VENCIMENTO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField4: TppField
      FieldAlias = 'PREVISAO_RECEBER'
      FieldName = 'PREVISAO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField5: TppField
      FieldAlias = 'CODIGO_CLIENTE_RECEBER'
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField6: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField7: TppField
      FieldAlias = 'CODIGO_PORTADOR_RECEBER'
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField8: TppField
      FieldAlias = 'TIPO_BAIXA_RECEBER'
      FieldName = 'TIPO_BAIXA_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField9: TppField
      FieldAlias = 'TIPO_DOCUMENTO_RECEBER'
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField10: TppField
      FieldAlias = 'MOVIMENTO_RECEBER'
      FieldName = 'MOVIMENTO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField11: TppField
      FieldAlias = 'CODIGO_VENDEDOR_RECEBER'
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField12: TppField
      FieldAlias = 'DESCRICAO_PORTADOR'
      FieldName = 'DESCRICAO_PORTADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField13: TppField
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField14: TppField
      FieldAlias = 'VALORPAGO_RECEBER'
      FieldName = 'VALORPAGO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField15: TppField
      FieldAlias = 'DATASYSTEM_EMP'
      FieldName = 'DATASYSTEM_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField16: TppField
      FieldAlias = 'TIPO_JUR_EMP'
      FieldName = 'TIPO_JUR_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField17: TppField
      FieldAlias = 'JUROS_EMP'
      FieldName = 'JUROS_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField18: TppField
      FieldAlias = 'JURO_MIN_EMP'
      FieldName = 'JURO_MIN_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField19: TppField
      FieldAlias = 'VALOR_RECEBER'
      FieldName = 'VALOR_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField20: TppField
      FieldAlias = 'BLOQUETE_RECEBER'
      FieldName = 'BLOQUETE_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField21: TppField
      FieldAlias = 'ENDERECO_CLIENTE'
      FieldName = 'ENDERECO_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField22: TppField
      FieldAlias = 'BAIRRO_CLIENTE'
      FieldName = 'BAIRRO_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField23: TppField
      FieldAlias = 'TRAB_ENDERECO_CLIENTE'
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField24: TppField
      FieldAlias = 'CIDADE_CLIENTE'
      FieldName = 'CIDADE_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField25: TppField
      FieldAlias = 'DESCRICAO_CIDADE'
      FieldName = 'DESCRICAO_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField26: TppField
      FieldAlias = 'TELEFONE_CLIENTE'
      FieldName = 'TELEFONE_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField27: TppField
      FieldAlias = 'CELULAR_CLIENTE'
      FieldName = 'CELULAR_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBConsulta2ppField28: TppField
      FieldAlias = 'FAX_CLIENTE'
      FieldName = 'FAX_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dtsConsulta
    UserName = 'DBConsulta'
    Left = 448
    Top = 10
    object ppDBConsultappField1: TppField
      FieldAlias = 'CODIGO_CLIENTE_RECEBER'
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField2: TppField
      FieldAlias = 'DUPLICATA_RECEBER'
      FieldName = 'DUPLICATA_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField3: TppField
      FieldAlias = 'EMISSAO_RECEBER'
      FieldName = 'EMISSAO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField4: TppField
      FieldAlias = 'VENCIMENTO_RECEBER'
      FieldName = 'VENCIMENTO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField5: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField6: TppField
      FieldAlias = 'CODIGO_PORTADOR_RECEBER'
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField7: TppField
      FieldAlias = 'TIPO_BAIXA_RECEBER'
      FieldName = 'TIPO_BAIXA_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField8: TppField
      FieldAlias = 'TIPO_DOCUMENTO_RECEBER'
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField9: TppField
      FieldAlias = 'MOVIMENTO_RECEBER'
      FieldName = 'MOVIMENTO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField10: TppField
      FieldAlias = 'CODIGO_VENDEDOR_RECEBER'
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField11: TppField
      FieldAlias = 'DESCRICAO_PORTADOR'
      FieldName = 'DESCRICAO_PORTADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField12: TppField
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField13: TppField
      FieldAlias = 'VALORPAGO_RECEBER'
      FieldName = 'VALORPAGO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField14: TppField
      FieldAlias = 'PREVISAO_RECEBER'
      FieldName = 'PREVISAO_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField15: TppField
      FieldAlias = 'DATASYSTEM_EMP'
      FieldName = 'DATASYSTEM_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField16: TppField
      FieldAlias = 'TIPO_JUR_EMP'
      FieldName = 'TIPO_JUR_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField17: TppField
      FieldAlias = 'JUROS_EMP'
      FieldName = 'JUROS_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField18: TppField
      FieldAlias = 'JURO_MIN_EMP'
      FieldName = 'JURO_MIN_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField19: TppField
      FieldAlias = 'VALOR_RECEBER'
      FieldName = 'VALOR_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField20: TppField
      FieldAlias = 'BLOQUETE_RECEBER'
      FieldName = 'BLOQUETE_RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField21: TppField
      FieldAlias = 'ENDERECO_CLIENTE'
      FieldName = 'ENDERECO_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField22: TppField
      FieldAlias = 'BAIRRO_CLIENTE'
      FieldName = 'BAIRRO_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField23: TppField
      FieldAlias = 'TRAB_ENDERECO_CLIENTE'
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField24: TppField
      FieldAlias = 'CIDADE_CLIENTE'
      FieldName = 'CIDADE_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField25: TppField
      FieldAlias = 'DESCRICAO_CIDADE'
      FieldName = 'DESCRICAO_CIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField26: TppField
      FieldAlias = 'TELEFONE_CLIENTE'
      FieldName = 'TELEFONE_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField27: TppField
      FieldAlias = 'CELULAR_CLIENTE'
      FieldName = 'CELULAR_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField28: TppField
      FieldAlias = 'FAX_CLIENTE'
      FieldName = 'FAX_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
  end
  object dspVendas_itens: TDataSetProvider
    DataSet = qryVendas_itens
    Left = 141
    Top = 69
  end
  object ppDBVendas_itens: TppDBPipeline
    DataSource = dtsVendas_itens
    UserName = 'DBVendas_itens'
    Left = 448
    Top = 69
    object ppDBVendas_itensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBVendas_itensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_IVENDA'
      FieldName = 'CODIGO_IVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBVendas_itensppField3: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppDBVendas_itensppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODUTO_IVENDA'
      FieldName = 'PRODUTO_IVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBVendas_itensppField5: TppField
      FieldAlias = 'UNIDADE_PRODUTO'
      FieldName = 'UNIDADE_PRODUTO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 4
    end
    object ppDBVendas_itensppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORBRUTO_IVENDAS'
      FieldName = 'VALORBRUTO_IVENDAS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object ppDBVendas_itensppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE_IVENDAS'
      FieldName = 'QUANTIDADE_IVENDAS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object ppDBVendas_itensppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDBVendas_itensppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 7
      DataType = dtDouble
      DisplayWidth = 16
      Position = 8
    end
    object ppDBVendas_itensppField10: TppField
      FieldAlias = 'DESCRICAO_IVENDAS'
      FieldName = 'DESCRICAO_IVENDAS'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
    object ppDBVendas_itensppField11: TppField
      FieldAlias = 'DESCRICAO_PRODUTO'
      FieldName = 'DESCRICAO_PRODUTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object ppDBVendas_itensppField12: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 80
      DisplayWidth = 80
      Position = 11
    end
    object ppDBVendas_itensppField13: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
  end
end
