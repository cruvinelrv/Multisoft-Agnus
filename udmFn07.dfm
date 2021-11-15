object dmFn07: TdmFn07
  OldCreateOrder = False
  Left = 371
  Top = 190
  Height = 278
  Width = 276
  object qryConlan: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA_CORRENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.corrente_conlan, c.valor_conlan, c.data_conlan, c.cod_e' +
        'mpresa,'
      '          c.tipo_conlan'
      'from P_CONLAN c'
      'where c.corrente_conlan =:CONTA_CORRENTE'
      'and c.data_conlan <=:DATA'
      'and c.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 16
    object qryConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object qryConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspConlan: TDataSetProvider
    DataSet = qryConlan
    Left = 112
    Top = 16
  end
  object cdsConlan: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA_CORRENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConlan'
    Left = 200
    Top = 16
    object cdsConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object qryConlan2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA_CORRENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.corrente_conlan, c.valor_conlan, c.data_conlan, c.cod_e' +
        'mpresa,'
      '       c.documento_conlan, c.historico_conlan, c.tipo_conlan'
      'from P_CONLAN c'
      'where c.corrente_conlan =:CONTA_CORRENTE'
      'and c.data_conlan =:DATA'
      'and c.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 72
    object qryConlan2CORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConlan2VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryConlan2DATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object qryConlan2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryConlan2DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qryConlan2HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConlan2TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspConlan2: TDataSetProvider
    DataSet = qryConlan2
    Left = 112
    Top = 72
  end
  object cdsConlan2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CONTA_CORRENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConlan2'
    Left = 200
    Top = 72
    object cdsConlan2CORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConlan2VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsConlan2DATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConlan2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsConlan2DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsConlan2HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsConlan2TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object qryResban: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select b.chave_resban, b.debito_resban, b.credito_resban, b.ante' +
        'rior_resban,'
      '       b.cod_empresa'
      'from P_RESBAN b'
      'where b.chave_resban =:CHAVE'
      'and b.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 25
    Top = 132
    object qryResbanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object qryResbanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryResbanCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryResbanANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryResbanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object dspResban: TDataSetProvider
    DataSet = qryResban
    Left = 112
    Top = 132
  end
  object cdsResban: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspResban'
    Left = 200
    Top = 133
    object cdsResbanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object cdsResbanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsResbanCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsResbanANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsResbanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 200
    Top = 192
  end
end
