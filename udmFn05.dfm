object dmFn05: TdmFn05
  OldCreateOrder = False
  Left = 318
  Top = 207
  Height = 275
  Width = 334
  object qryConlan: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.codigo_conlan, c.corrente_conlan, c.conta_conlan, c.cen' +
        'tro_conlan,'
      
        '       c.data_conlan, c.movimento_conlan, c.valor_conlan, c.tipo' +
        '_conlan,'
      
        '       c.historico_conlan, c.historic2_conlan, c.documento_conla' +
        'n, c.origem_conlan,'
      
        '       b.descricao_banco, c1.descricao_conta, c2.descricao_centr' +
        'o, c.cod_empresa'
      'from P_CONLAN c'
      
        '     left outer join p_banco b on (c.corrente_conlan = b.codigo_' +
        'banco)'
      
        '     left outer join e_conta c1 on (c.conta_conlan = c1.codigo_c' +
        'onta)'
      
        '     left outer join e_centro c2 on (c.centro_conlan = c2.codigo' +
        '_centro)'
      'where c.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 17
    object qryConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlanCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConlanHISTORIC2_CONLAN: TStringField
      FieldName = 'HISTORIC2_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConlanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qryConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryConlanDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object qryConlanDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object qryConlanDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
      ProviderFlags = []
    end
    object qryConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryConlanCONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
    end
  end
  object dspConlan: TDataSetProvider
    DataSet = qryConlan
    Left = 144
    Top = 17
  end
  object cdsConlan: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConlan'
    Left = 256
    Top = 17
    object cdsConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlanCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsConlanHISTORIC2_CONLAN: TStringField
      FieldName = 'HISTORIC2_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsConlanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsConlanDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object cdsConlanDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object cdsConlanDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
      ProviderFlags = []
    end
    object cdsConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsConlanCONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
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
      
        'select r.chave_resban, r.credito_resban, r.cod_empresa, r.debito' +
        '_resban'
      'from P_RESBAN r'
      'where r.chave_resban =:CHAVE'
      'and r.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 136
    object qryResbanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
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
    object qryResbanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object dspResban: TDataSetProvider
    DataSet = qryResban
    Left = 144
    Top = 136
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
    Left = 256
    Top = 136
    object cdsResbanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
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
    object cdsResbanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object qryConlan2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  c.documento_conlan,  c.cod_empresa'
      'from P_CONLAN c'
      'where  c.documento_conlan =:DOCUMENTO'
      'and c.cod_empresa =:EMPRESA'
      ' ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 80
    object qryConlan2DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object qryConlan2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspConlan2: TDataSetProvider
    DataSet = qryConlan2
    Left = 144
    Top = 80
  end
  object cdsConlan2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConlan2'
    Left = 256
    Top = 80
    object cdsConlan2DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object cdsConlan2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 193
  end
end
