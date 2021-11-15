object dmFn04: TdmFn04
  OldCreateOrder = False
  Left = 381
  Top = 240
  Height = 151
  Width = 273
  object qryConlan: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.codigo_conlan, c.corrente_conlan, c.data_conlan, c.movi' +
        'mento_conlan,'
      
        '       c.historico_conlan, c.valor_conlan, c.tipo_conlan, c.orig' +
        'em_conlan,'
      '       c.cod_empresa, b.descricao_banco'
      'from P_CONLAN c'
      
        '     left outer join p_banco b on (c.corrente_conlan = b.codigo_' +
        'banco)')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 32
    object qryConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object qryConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object qryConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object qryConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object qryConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object qryConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryConlanDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
  end
  object dspConlan: TDataSetProvider
    DataSet = qryConlan
    Left = 112
    Top = 32
  end
  object cdsConlan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConlan'
    Left = 208
    Top = 32
    object cdsConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsConlanDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
  end
end
