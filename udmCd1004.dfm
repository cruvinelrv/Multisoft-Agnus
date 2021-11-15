object dmCd1004: TdmCd1004
  OldCreateOrder = False
  Left = 338
  Top = 200
  Height = 151
  Width = 354
  object qryRamoAtividade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_ATIVIDADE ORDER BY DESCRICAO_ATIVIDADE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 35
    Top = 17
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
    Left = 147
    Top = 17
  end
  object cdsRamoAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRamoAtividade'
    Left = 260
    Top = 17
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
