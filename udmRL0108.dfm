object dmRL0108: TdmRL0108
  OldCreateOrder = False
  Left = 372
  Top = 215
  Height = 195
  Width = 245
  object qrySecao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_SECAO ORDER BY DESCRICAO_SECAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 30
    Top = 16
  end
  object dspSecao: TDataSetProvider
    DataSet = qrySecao
    Options = [poAllowCommandText]
    Left = 102
    Top = 16
  end
  object cdsSecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSecao'
    Left = 172
    Top = 16
    object cdsSecaoCODIGO_SECAO: TIntegerField
      FieldName = 'CODIGO_SECAO'
      Required = True
    end
    object cdsSecaoDESCRICAO_SECAO: TStringField
      FieldName = 'DESCRICAO_SECAO'
    end
    object cdsSecaoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryPesquisa1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 29
    Top = 77
  end
  object dspPesquisa1: TDataSetProvider
    DataSet = qryPesquisa1
    Options = [poAllowCommandText]
    Left = 101
    Top = 77
  end
  object cdsPesquisa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa1'
    Left = 173
    Top = 77
  end
end
