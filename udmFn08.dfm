object dmFn08: TdmFn08
  OldCreateOrder = False
  Left = 365
  Top = 138
  Height = 509
  Width = 282
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
      
        'select b.banco_resban,  b.chave_resban, b.debito_resban, b.credi' +
        'to_resban,'
      '       b.cod_empresa, b.anterior_resban'
      'from P_RESBAN b'
      'where b.chave_resban =:CHAVE'
      'and b.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 16
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
    object qryResbanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryResbanANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryResbanBANCO_RESBAN: TIntegerField
      FieldName = 'BANCO_RESBAN'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspResban: TDataSetProvider
    DataSet = qryResban
    Left = 120
    Top = 16
  end
  object cdsResban: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspResban'
    Left = 200
    Top = 16
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
    object cdsResbanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsResbanANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsResbanBANCO_RESBAN: TIntegerField
      FieldName = 'BANCO_RESBAN'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryResban2: TSQLQuery
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
      
        'select  b.banco_resban,  b.chave_resban, b.debito_resban, b.cred' +
        'ito_resban,'
      '       b.cod_empresa'
      'from P_RESBAN b'
      'where b.chave_resban =:CHAVE'
      'and b.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
    Top = 75
    object qryResban2CHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object qryResban2DEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryResban2CREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryResban2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryResban2BANCO_RESBAN: TIntegerField
      FieldName = 'BANCO_RESBAN'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspResban2: TDataSetProvider
    DataSet = qryResban2
    Left = 122
    Top = 75
  end
  object cdsResban2: TClientDataSet
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
    ProviderName = 'dspResban2'
    Left = 203
    Top = 74
    object cdsResban2CHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object cdsResban2DEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsResban2CREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsResban2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsResban2BANCO_RESBAN: TIntegerField
      FieldName = 'BANCO_RESBAN'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryConlan: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.codigo_conlan,  c.corrente_conlan, c.valor_conlan, c.da' +
        'ta_conlan,'
      
        '       c.cod_empresa, c.documento_conlan, c.historico_conlan, c.' +
        'tipo_conlan,'
      '       c.movimento_conlan, c.origem_conlan'
      'from P_CONLAN c')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
    Top = 129
    object qryConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object qryConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
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
    object qryConlanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object qryConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object qryConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object qryConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
  end
  object dspConlan: TDataSetProvider
    DataSet = qryConlan
    Left = 124
    Top = 130
  end
  object cdsConlan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConlan'
    Left = 204
    Top = 129
    object cdsConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
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
    object cdsConlanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object cdsConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
  end
  object qryConlan2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.codigo_conlan,  c.corrente_conlan, c.valor_conlan, c.da' +
        'ta_conlan,'
      
        '       c.cod_empresa, c.documento_conlan, c.historico_conlan, c.' +
        'tipo_conlan,'
      '       c.movimento_conlan, c.origem_conlan'
      'from P_CONLAN c')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
    Top = 185
    object qryConlan2CODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object qryConlan2CORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConlan2VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
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
      Size = 11
    end
    object qryConlan2HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object qryConlan2TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConlan2MOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object qryConlan2ORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
  end
  object dspConlan2: TDataSetProvider
    DataSet = qryConlan2
    Left = 128
    Top = 184
  end
  object cdsConlan2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConlan2'
    Left = 208
    Top = 184
    object cdsConlan2CODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConlan2CORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConlan2VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
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
      Size = 11
    end
    object cdsConlan2HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsConlan2TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlan2MOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsConlan2ORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
  end
  object qryBanco: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select b.codigo_banco, b.cod_empresa, b.limite_banco'
      'from P_BANCO b'
      'where b.codigo_banco =:CODIGO_BANCO'
      'and b.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 240
    object qryBancoCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
      Required = True
    end
    object qryBancoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryBancoLIMITE_BANCO: TFMTBCDField
      FieldName = 'LIMITE_BANCO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object dspBanco: TDataSetProvider
    DataSet = qryBanco
    Left = 128
    Top = 240
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspBanco'
    Left = 208
    Top = 239
    object cdsBancoCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
      Required = True
    end
    object cdsBancoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsBancoLIMITE_BANCO: TFMTBCDField
      FieldName = 'LIMITE_BANCO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object qryConlan3: TSQLQuery
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
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.codigo_conlan,  c.corrente_conlan, c.valor_conlan, c.da' +
        'ta_conlan,'
      
        '       c.cod_empresa, c.documento_conlan, c.historico_conlan, c.' +
        'tipo_conlan,'
      '       c.movimento_conlan'
      'from P_CONLAN c'
      'where c.corrente_conlan =:CONTA_CORRENTE'
      'and c.data_conlan <:DATA'
      'and c.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 294
    object qryConlan3CODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryConlan3CORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConlan3VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryConlan3DATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object qryConlan3COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryConlan3DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qryConlan3HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConlan3TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryConlan3MOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspConlan3: TDataSetProvider
    DataSet = qryConlan3
    Left = 128
    Top = 296
  end
  object cdsConlan3: TClientDataSet
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
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConlan3'
    Left = 209
    Top = 296
    object cdsConlan3CODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConlan3CORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConlan3VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object cdsConlan3DATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConlan3COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsConlan3DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object cdsConlan3HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsConlan3TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlan3MOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
  end
  object qryConlan4: TSQLQuery
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
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.codigo_conlan,  c.corrente_conlan, c.valor_conlan, c.da' +
        'ta_conlan,'
      
        '       c.cod_empresa, c.documento_conlan, c.historico_conlan, c.' +
        'tipo_conlan,'
      '       c.movimento_conlan'
      'from P_CONLAN c'
      'where c.corrente_conlan =:CONTA_CORRENTE'
      'and c.data_conlan =:DATA'
      'and c.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
    Top = 351
    object qryConlan4CODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryConlan4CORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConlan4VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryConlan4DATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object qryConlan4COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryConlan4DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qryConlan4HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConlan4TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryConlan4MOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspConlan4: TDataSetProvider
    DataSet = qryConlan4
    Left = 128
    Top = 352
  end
  object cdsConlan4: TClientDataSet
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
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConlan4'
    Left = 209
    Top = 352
    object cdsConlan4CODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsConlan4CORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConlan4VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsConlan4DATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConlan4COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsConlan4DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsConlan4HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsConlan4TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsConlan4MOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 408
  end
end
