object dmRL0521: TdmRL0521
  OldCreateOrder = False
  Left = 316
  Top = 227
  Height = 145
  Width = 419
  object qryAcesso: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USU1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'DATA_ACESSO,'
      'HORA_ACESSO,'
      'USUARIO_ACESSO,'
      'ROTINA_ACESSO,'
      'HISTORICO_ACESSO'
      'FROM P_ACESSOS'
      
        'WHERE (USUARIO_ACESSO LIKE :USU1) AND (DATA_ACESSO>=:DATA1 AND D' +
        'ATA_ACESSO<=:DATA2)')
    SQLConnection = DmPrincipal.DbConexao
    Left = 56
    Top = 24
  end
  object cdsAcesso: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'USU1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    ProviderName = 'dspAcesso'
    Left = 184
    Top = 24
    object cdsAcessoDATA_ACESSO: TDateField
      FieldName = 'DATA_ACESSO'
    end
    object cdsAcessoHORA_ACESSO: TTimeField
      FieldName = 'HORA_ACESSO'
    end
    object cdsAcessoUSUARIO_ACESSO: TStringField
      FieldName = 'USUARIO_ACESSO'
      Size = 10
    end
    object cdsAcessoROTINA_ACESSO: TStringField
      FieldName = 'ROTINA_ACESSO'
      Size = 30
    end
    object cdsAcessoHISTORICO_ACESSO: TStringField
      FieldName = 'HISTORICO_ACESSO'
      Size = 80
    end
  end
  object dspAcesso: TDataSetProvider
    DataSet = qryAcesso
    Left = 120
    Top = 24
  end
  object dsAcesso: TDataSource
    AutoEdit = False
    DataSet = cdsAcesso
    Left = 240
    Top = 24
  end
  object pplAcesso: TppDBPipeline
    DataSource = dsAcesso
    UserName = 'lAcesso'
    Left = 296
    Top = 24
    object pplAcessoppField1: TppField
      FieldAlias = 'DATA_ACESSO'
      FieldName = 'DATA_ACESSO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 0
    end
    object pplAcessoppField2: TppField
      FieldAlias = 'HORA_ACESSO'
      FieldName = 'HORA_ACESSO'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 1
    end
    object pplAcessoppField3: TppField
      FieldAlias = 'USUARIO_ACESSO'
      FieldName = 'USUARIO_ACESSO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object pplAcessoppField4: TppField
      FieldAlias = 'ROTINA_ACESSO'
      FieldName = 'ROTINA_ACESSO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object pplAcessoppField5: TppField
      FieldAlias = 'HISTORICO_ACESSO'
      FieldName = 'HISTORICO_ACESSO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 4
    end
  end
end
