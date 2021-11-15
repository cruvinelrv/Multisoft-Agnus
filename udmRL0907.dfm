object dmRL0907: TdmRL0907
  OldCreateOrder = False
  Left = 315
  Top = 303
  Height = 150
  Width = 537
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 39
    Top = 9
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 139
    Top = 8
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 248
    Top = 8
    object cdsConsultaCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConsultaCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConsultaCONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
    end
    object cdsConsultaDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      Size = 40
    end
    object cdsConsultaTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaTITULO_CONTA: TStringField
      FieldName = 'TITULO_CONTA'
      Size = 40
    end
    object cdsConsultaHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsConsultaVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object cdsConsultaMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsConsultaCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
    end
    object cdsConsultaDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object cdsConsultaORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConsultaCredito: TFMTBCDField
      FieldName = 'Credito'
      Precision = 15
      Size = 2
    end
    object cdsConsultaDebito: TFMTBCDField
      FieldName = 'Debito'
      Precision = 15
      Size = 2
    end
    object cdsConsultaDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
    end
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 344
    Top = 8
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dtsConsulta
    UserName = 'DBConsulta'
    Left = 464
    Top = 9
    object ppDBConsultappField1: TppField
      FieldAlias = 'CODIGO_CONLAN'
      FieldName = 'CODIGO_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField2: TppField
      FieldAlias = 'CORRENTE_CONLAN'
      FieldName = 'CORRENTE_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField3: TppField
      FieldAlias = 'CONTA_CONLAN'
      FieldName = 'CONTA_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField4: TppField
      FieldAlias = 'DESCRICAO_CONTA'
      FieldName = 'DESCRICAO_CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField5: TppField
      FieldAlias = 'TIPO_CONTA'
      FieldName = 'TIPO_CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField6: TppField
      FieldAlias = 'TITULO_CONTA'
      FieldName = 'TITULO_CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField7: TppField
      FieldAlias = 'HISTORICO_CONLAN'
      FieldName = 'HISTORICO_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField8: TppField
      FieldAlias = 'VALOR_CONLAN'
      FieldName = 'VALOR_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField9: TppField
      FieldAlias = 'MOVIMENTO_CONLAN'
      FieldName = 'MOVIMENTO_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField10: TppField
      FieldAlias = 'CENTRO_CONLAN'
      FieldName = 'CENTRO_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField11: TppField
      FieldAlias = 'DOCUMENTO_CONLAN'
      FieldName = 'DOCUMENTO_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField12: TppField
      FieldAlias = 'ORIGEM_CONLAN'
      FieldName = 'ORIGEM_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField13: TppField
      FieldAlias = 'TIPO_CONLAN'
      FieldName = 'TIPO_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField14: TppField
      FieldAlias = 'DATA_CONLAN'
      FieldName = 'DATA_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField15: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField16: TppField
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField17: TppField
      FieldAlias = 'DESCRICAO_CENTRO'
      FieldName = 'DESCRICAO_CENTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
  end
end
