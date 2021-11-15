object dmAltF11: TdmAltF11
  OldCreateOrder = False
  Left = 227
  Top = 160
  Height = 102
  Width = 308
  object qryRamoAtividade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_ATIVIDADE ORDER BY DESCRICAO_ATIVIDADE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 39
    Top = 14
    object qryRamoAtividadeCODIGO_ATIVIDADE: TIntegerField
      FieldName = 'CODIGO_ATIVIDADE'
      Required = True
    end
    object qryRamoAtividadeTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 35
    end
    object qryRamoAtividadeDESCRICAO_ATIVIDADE: TStringField
      FieldName = 'DESCRICAO_ATIVIDADE'
      Size = 40
    end
  end
  object dspRamoAtividade: TDataSetProvider
    DataSet = qryRamoAtividade
    Left = 134
    Top = 14
  end
  object cdsRamoAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRamoAtividade'
    Left = 228
    Top = 14
    object cdsRamoAtividadeCODIGO_ATIVIDADE: TIntegerField
      FieldName = 'CODIGO_ATIVIDADE'
      Required = True
    end
    object cdsRamoAtividadeTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 35
    end
    object cdsRamoAtividadeDESCRICAO_ATIVIDADE: TStringField
      FieldName = 'DESCRICAO_ATIVIDADE'
      Size = 40
    end
  end
end
