object dmRL0801: TdmRL0801
  OldCreateOrder = False
  Left = 296
  Top = 285
  Height = 228
  Width = 543
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.emissao_receber, r.vencimento_rece' +
        'ber,'
      
        'r.codigo_cliente_receber, c.nome_cliente, r.codigo_portador_rece' +
        'ber,'
      
        'r.tipo_documento_receber, r.movimento_receber, r.codigo_vendedor' +
        '_receber,'
      
        '(r.valor_receber - r.valorpago_receber) as "Valor_Total", r.valo' +
        'rpago_receber,'
      
        'e.datasystem_emp, e.tipo_jur_emp, e.juros_emp, e.juro_min_emp, r' +
        '.valor_receber'
      'from P_RECEBER r'
      
        'left outer join e_cliente c on (r.codigo_cliente_receber = c.cod' +
        'igo_cliente)'
      'left outer join empresa e on (r.cod_empresa = e.codigo_emp)')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 8
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 136
    Top = 8
  end
  object cdsConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 248
    Top = 8
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
    object cdsConsultaCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsConsultaCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
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
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 344
    Top = 8
  end
  object qryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select e.codigo_emp, e.juros_emp, e.tipo_jur_emp'
      'from empresa e')
    SQLConnection = DmPrincipal.DbConexao
    Left = 26
    Top = 130
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
    Left = 138
    Top = 130
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 242
    Top = 129
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
  object cdsTaxa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 246
    Top = 72
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
    Left = 344
    Top = 72
  end
  object ppDBTaxa: TppDBPipeline
    DataSource = dtsTaxa
    UserName = 'DBTaxa'
    Left = 448
    Top = 72
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dtsConsulta
    UserName = 'DBConsulta'
    Left = 448
    Top = 12
    object ppDBConsultappField1: TppField
      FieldAlias = 'DUPLICATA_RECEBER'
      FieldName = 'DUPLICATA_RECEBER'
      FieldLength = 13
      DisplayWidth = 13
      Position = 0
    end
    object ppDBConsultappField2: TppField
      FieldAlias = 'EMISSAO_RECEBER'
      FieldName = 'EMISSAO_RECEBER'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBConsultappField3: TppField
      FieldAlias = 'VENCIMENTO_RECEBER'
      FieldName = 'VENCIMENTO_RECEBER'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppDBConsultappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_CLIENTE_RECEBER'
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDBConsultappField5: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object ppDBConsultappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_PORTADOR_RECEBER'
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBConsultappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TIPO_DOCUMENTO_RECEBER'
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBConsultappField8: TppField
      FieldAlias = 'MOVIMENTO_RECEBER'
      FieldName = 'MOVIMENTO_RECEBER'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object ppDBConsultappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDEDOR_RECEBER'
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBConsultappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object ppDBConsultappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORPAGO_RECEBER'
      FieldName = 'VALORPAGO_RECEBER'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object ppDBConsultappField12: TppField
      FieldAlias = 'DATASYSTEM_EMP'
      FieldName = 'DATASYSTEM_EMP'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 34
      Position = 11
    end
    object ppDBConsultappField13: TppField
      FieldAlias = 'TIPO_JUR_EMP'
      FieldName = 'TIPO_JUR_EMP'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object ppDBConsultappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS_EMP'
      FieldName = 'JUROS_EMP'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 13
    end
    object ppDBConsultappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'JURO_MIN_EMP'
      FieldName = 'JURO_MIN_EMP'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object ppDBConsultappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_RECEBER'
      FieldName = 'VALOR_RECEBER'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 15
    end
  end
end
