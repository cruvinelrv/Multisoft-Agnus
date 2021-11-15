object dmFn0203: TdmFn0203
  OldCreateOrder = False
  Left = 310
  Top = 166
  Height = 426
  Width = 294
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.codigo_cliente, c.nome_cliente'
      'from E_CLIENTE c'
      'where c.codigo_cliente =:CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 24
    object qryClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspCliente'
    Left = 216
    Top = 24
    object cdsClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Left = 120
    Top = 24
  end
  object qryReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.tipo_documento_receber, r.codigo_c' +
        'liente_receber,'
      
        '       r.emissao_receber, r.vencimento_receber, r.previsao_receb' +
        'er,'
      
        '       r.valor_receber, r.codigo_portador_receber, r.tipo_dup_re' +
        'ceber,'
      
        '       r.historico_receber, r.parcial_receber, r.data_base_receb' +
        'er,'
      '       r.valorpago_receber, r.cod_empresa, r.tipo_baixa_receber'
      'from P_RECEBER r'
      'where r.codigo_cliente_receber =:CLIENTE'
      'and r.vencimento_receber >=:VENCIMENTO'
      'and  r.cod_empresa =:EMPRESA'
      ' '
      '')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 96
    object qryReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object qryReceberTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object qryReceberCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object qryReceberEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object qryReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object qryReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object qryReceberVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object qryReceberTIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      Size = 1
    end
    object qryReceberHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      BlobType = ftMemo
      Size = 1
    end
    object qryReceberPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberDATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
    end
    object qryReceberVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = qryReceber
    Left = 119
    Top = 96
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspReceber'
    Left = 216
    Top = 96
    object cdsReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object cdsReceberTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object cdsReceberCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsReceberEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsReceberVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object cdsReceberTIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      Size = 1
    end
    object cdsReceberHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      BlobType = ftMemo
      Size = 1
    end
    object cdsReceberPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberDATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
    end
    object cdsReceberVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdsGrid: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DUPLICATA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGO_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_PAGO'
        DataType = ftFloat
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
      end
      item
        Name = 'JUROS'
        DataType = ftFloat
      end
      item
        Name = 'DIAS_ATRASO'
        DataType = ftFloat
      end
      item
        Name = 'SELECIONADO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPO_BAIXA'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 216
    Top = 217
    Data = {
      020100009619E0BD01000000180000000B000000000003000000020109445550
      4C494341544101004900000001000557494454480200020014000E434F444947
      4F5F434C49454E5445040001000000000007454D495353414F04000600000000
      000A56454E43494D454E544F04000600000000000556414C4F52080004000000
      00000A56414C4F525F5041474F08000400000000000553414C444F0800040000
      000000054A55524F5308000400000000000B444941535F41545241534F080004
      00000000000B53454C4543494F4E41444F010049000000010005574944544802
      00020014000A5449504F5F424149584101004900000001000557494454480200
      020014000000}
    object cdsGridDUPLICATA: TStringField
      Alignment = taCenter
      FieldName = 'DUPLICATA'
    end
    object cdsGridCODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsGridEMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'EMISSAO'
    end
    object cdsGridVENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'VENCIMENTO'
    end
    object cdsGridVALOR: TFloatField
      Alignment = taCenter
      DefaultExpression = '0'
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridVALOR_PAGO: TFloatField
      Alignment = taCenter
      DefaultExpression = '0'
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridSALDO: TFloatField
      Alignment = taCenter
      DefaultExpression = '0'
      FieldName = 'SALDO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridJUROS: TFloatField
      Alignment = taCenter
      DefaultExpression = '0'
      FieldName = 'JUROS'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridDIAS_ATRASO: TFloatField
      Alignment = taCenter
      DefaultExpression = '0'
      FieldName = 'DIAS_ATRASO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsGridSELECIONADO: TStringField
      Alignment = taCenter
      FieldName = 'SELECIONADO'
    end
    object cdsGridTIPO_BAIXA: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_BAIXA'
    end
  end
  object qryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select e.codigo_emp, e.juros_emp, e.dias_bloq_emp, e.tipo_jur_em' +
        'p'
      'from EMPRESA e'
      'where e.codigo_emp =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 21
    Top = 328
    object qryEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object qryEmpresaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEmpresaDIAS_BLOQ_EMP: TIntegerField
      FieldName = 'DIAS_BLOQ_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryEmpresaTIPO_JUR_EMP: TStringField
      FieldName = 'TIPO_JUR_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 117
    Top = 327
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpresa'
    Left = 218
    Top = 326
    object cdsEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object cdsEmpresaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEmpresaDIAS_BLOQ_EMP: TIntegerField
      FieldName = 'DIAS_BLOQ_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaTIPO_JUR_EMP: TStringField
      FieldName = 'TIPO_JUR_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object qryReceber2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.tipo_documento_receber, r.codigo_c' +
        'liente_receber,'
      
        '       r.emissao_receber, r.vencimento_receber, r.previsao_receb' +
        'er,'
      
        '       r.valor_receber, r.codigo_portador_receber, r.tipo_dup_re' +
        'ceber,'
      
        '       r.historico_receber, r.parcial_receber, r.data_base_receb' +
        'er,'
      
        '       r.valorpago_receber, r.cod_empresa, r.tit_princ_receber, ' +
        'r.movimento_receber,'
      '       r.tipo_baixa_receber, e.empresa, p.descricao_portador'
      'from P_RECEBER r'
      
        '      left outer join empresa e on (r.cod_empresa = e.codigo_emp' +
        ')'
      
        '      left outer join e_portador p on (r.codigo_portador_receber' +
        ' = p.codigo_portador)  '
      'where r.duplicata_receber =:DUPLICATA'
      'and r.cod_empresa =:EMPRESA ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 160
    object qryReceber2DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object qryReceber2TIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryReceber2EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceber2CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2TIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceber2HISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryReceber2PARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceber2DATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceber2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryReceber2TIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qryReceber2MOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceber2EMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = []
      Size = 30
    end
    object qryReceber2DESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      ProviderFlags = []
      FixedChar = True
    end
  end
  object dspReceber2: TDataSetProvider
    DataSet = qryReceber2
    Left = 120
    Top = 160
  end
  object cdsReceber2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspReceber2'
    Left = 216
    Top = 160
    object cdsReceber2DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object cdsReceber2TIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber2CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsReceber2EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber2VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber2PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceber2CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber2TIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsReceber2HISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsReceber2PARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceber2DATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber2VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceber2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsReceber2TIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsReceber2MOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsReceber2EMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = []
      Size = 30
    end
    object cdsReceber2DESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      ProviderFlags = []
      FixedChar = True
    end
  end
  object qryReceber3: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TITULO_PRINCIPAL'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.tipo_documento_receber, r.codigo_c' +
        'liente_receber,'
      
        '       r.emissao_receber, r.vencimento_receber, r.previsao_receb' +
        'er,'
      
        '       r.valor_receber, r.codigo_portador_receber, r.tipo_dup_re' +
        'ceber,'
      
        '       r.historico_receber, r.parcial_receber, r.data_base_receb' +
        'er,'
      
        '       r.valorpago_receber, r.cod_empresa, r.tit_princ_receber, ' +
        'r.movimento_receber,'
      '       r.tipo_baixa_receber'
      'from P_RECEBER r'
      'where   r.cod_empresa =:EMPRESA'
      'and  r.tit_princ_receber =:TITULO_PRINCIPAL')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 270
    object qryReceber3COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryReceber3TIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      Size = 11
    end
    object qryReceber3DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
    object qryReceber3TIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber3CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryReceber3EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber3VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber3PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber3VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceber3CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber3TIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceber3HISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryReceber3PARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceber3DATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber3VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceber3MOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber3TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspReceber3: TDataSetProvider
    DataSet = qryReceber3
    Options = [poCascadeUpdates]
    Left = 120
    Top = 270
  end
  object cdsReceber3: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TITULO_PRINCIPAL'
        ParamType = ptInput
        Value = ''
      end>
    ProviderName = 'dspReceber3'
    Left = 216
    Top = 270
    object cdsReceber3COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsReceber3TIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      Size = 11
    end
    object cdsReceber3DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
    object cdsReceber3TIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber3CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsReceber3EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber3VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber3PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber3VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceber3CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber3TIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsReceber3HISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsReceber3PARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceber3DATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber3VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceber3MOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceber3TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
end
