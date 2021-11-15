object dmRL0901: TdmRL0901
  OldCreateOrder = False
  Left = 317
  Top = 227
  Height = 102
  Width = 539
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
    object cdsConsultaCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConsultaCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConsultaDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
    end
    object cdsConsultaDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConsultaVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object cdsConsultaTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsConsultaHISTORIC2_CONLAN: TStringField
      FieldName = 'HISTORIC2_CONLAN'
      Size = 150
    end
    object cdsConsultaMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsConsultaBANCO_RESBAN: TIntegerField
      FieldName = 'BANCO_RESBAN'
    end
    object cdsConsultaANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsConsultaDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsConsultaCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsConsultaSaldo_Atual: TFMTBCDField
      FieldName = 'Saldo_Atual'
      Precision = 15
      Size = 2
    end
    object cdsConsultaDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object cdsConsultaCONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
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
    Left = 456
    Top = 16
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
      FieldAlias = 'DESCRICAO_BANCO'
      FieldName = 'DESCRICAO_BANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField4: TppField
      FieldAlias = 'DATA_CONLAN'
      FieldName = 'DATA_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField5: TppField
      FieldAlias = 'VALOR_CONLAN'
      FieldName = 'VALOR_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField6: TppField
      FieldAlias = 'TIPO_CONLAN'
      FieldName = 'TIPO_CONLAN'
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
      FieldAlias = 'HISTORIC2_CONLAN'
      FieldName = 'HISTORIC2_CONLAN'
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
      FieldAlias = 'BANCO_RESBAN'
      FieldName = 'BANCO_RESBAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField11: TppField
      FieldAlias = 'ANTERIOR_RESBAN'
      FieldName = 'ANTERIOR_RESBAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField12: TppField
      FieldAlias = 'DEBITO_RESBAN'
      FieldName = 'DEBITO_RESBAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField13: TppField
      FieldAlias = 'CREDITO_RESBAN'
      FieldName = 'CREDITO_RESBAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField14: TppField
      FieldAlias = 'Saldo_Atual'
      FieldName = 'Saldo_Atual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField15: TppField
      FieldAlias = 'DOCUMENTO_CONLAN'
      FieldName = 'DOCUMENTO_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField16: TppField
      FieldAlias = 'CONTA_CONLAN'
      FieldName = 'CONTA_CONLAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
  end
end
