object dmCd0902: TdmCd0902
  OldCreateOrder = False
  Left = 379
  Top = 235
  Height = 222
  Width = 276
  object qryPortador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CODIGO_PORTADOR,DESCRICAO_PORTADOR,TIPO_PORTADOR'
      '  FROM E_PORTADOR ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 30
    Top = 16
    object qryPortadorCODIGO_PORTADOR: TIntegerField
      FieldName = 'CODIGO_PORTADOR'
      Required = True
    end
    object qryPortadorDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      FixedChar = True
    end
    object qryPortadorTIPO_PORTADOR: TStringField
      FieldName = 'TIPO_PORTADOR'
      Required = True
      Size = 1
    end
  end
  object dspPortador: TDataSetProvider
    DataSet = qryPortador
    Options = [poAllowCommandText]
    Left = 115
    Top = 16
  end
  object cdsPortador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPortador'
    Left = 200
    Top = 16
    object cdsPortadorCODIGO_PORTADOR: TIntegerField
      FieldName = 'CODIGO_PORTADOR'
      Required = True
    end
    object cdsPortadorDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      FixedChar = True
    end
    object cdsPortadorTIPO_PORTADOR: TStringField
      FieldName = 'TIPO_PORTADOR'
      Required = True
      Size = 1
    end
  end
end
