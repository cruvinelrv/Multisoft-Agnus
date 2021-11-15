object dmAltF5: TdmAltF5
  OldCreateOrder = False
  Left = 406
  Top = 227
  Height = 263
  Width = 254
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        ' select r.duplicata_receber, r.codigo_cliente_receber, r.emissao' +
        '_receber, '
      
        '           r.vencimento_receber, r.previsao_receber, r.valor_rec' +
        'eber, r.valorpago_receber,'
      
        '            r.tipo_baixa_receber , r.historico_receber, r.parcia' +
        'l_receber, r.data_base_receber'
      '           from P_RECEBER r')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 27
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 99
    Top = 27
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 171
    Top = 27
    object cdsConsultaDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object cdsConsultaCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsConsultaEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsConsultaVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsConsultaPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsConsultaVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsultaVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsultaTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object cdsConsultaHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsConsultaDATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
    end
  end
  object cdsGrid: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DUPLICATA_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGO_CLIENTE_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'EMISSAO_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENTO_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'PREVISAO_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'VALOR_RECEBER'
        DataType = ftFloat
      end
      item
        Name = 'VALORPAGO_RECEBER'
        DataType = ftFloat
      end
      item
        Name = 'TIPO_BAIXA_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DIAS_ATRASO'
        DataType = ftFloat
      end
      item
        Name = 'JUROS'
        DataType = ftFloat
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
      end
      item
        Name = 'HISTORICO_RECEBER'
        DataType = ftMemo
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 173
    Top = 93
    Data = {
      5F0100009619E0BD01000000180000000C0000000000030000005F0111445550
      4C49434154415F52454345424552010049000000010005574944544802000200
      140016434F4449474F5F434C49454E54455F5245434542455204000100000000
      000F454D495353414F5F5245434542455204000600000000001256454E43494D
      454E544F5F52454345424552040006000000000010505245564953414F5F5245
      434542455204000600000000000D56414C4F525F524543454245520800040000
      0000001156414C4F525041474F5F524543454245520800040000000000125449
      504F5F42414958415F5245434542455201004900000001000557494454480200
      020014000B444941535F41545241534F0800040000000000054A55524F530800
      0400000000000553414C444F080004000000000011484953544F5249434F5F52
      45434542455204004B0000000100075355425459504502004900050054657874
      000000}
    object cdsGridDUPLICATA_RECEBER: TStringField
      Alignment = taCenter
      FieldName = 'DUPLICATA_RECEBER'
    end
    object cdsGridCODIGO_CLIENTE_RECEBER: TIntegerField
      Alignment = taCenter
      FieldName = 'CODIGO_CLIENTE_RECEBER'
    end
    object cdsGridEMISSAO_RECEBER: TDateField
      Alignment = taCenter
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsGridVENCIMENTO_RECEBER: TDateField
      Alignment = taCenter
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsGridPREVISAO_RECEBER: TDateField
      Alignment = taCenter
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsGridVALOR_RECEBER: TFloatField
      Alignment = taCenter
      FieldName = 'VALOR_RECEBER'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridVALORPAGO_RECEBER: TFloatField
      Alignment = taCenter
      FieldName = 'VALORPAGO_RECEBER'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridTIPO_BAIXA_RECEBER: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_BAIXA_RECEBER'
    end
    object cdsGridDIAS_ATRASO: TFloatField
      Alignment = taCenter
      DefaultExpression = '0'
      FieldName = 'DIAS_ATRASO'
    end
    object cdsGridJUROS: TFloatField
      Alignment = taCenter
      DefaultExpression = '0'
      FieldName = 'JUROS'
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
    object cdsGridHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      BlobType = ftMemo
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
    Left = 29
    Top = 157
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
    Left = 100
    Top = 158
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
    Left = 171
    Top = 158
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
end
