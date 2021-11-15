object dmRL0101: TdmRL0101
  OldCreateOrder = False
  Left = 374
  Top = 262
  Height = 199
  Width = 274
  object qryPesquisa1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 24
  end
  object dspPesquisa1: TDataSetProvider
    DataSet = qryPesquisa1
    Options = [poAllowCommandText]
    Left = 107
    Top = 24
  end
  object cdsPesquisa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa1'
    Left = 187
    Top = 24
  end
  object qrySecao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_SECAO ORDER BY DESCRICAO_SECAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 80
  end
  object dspSecao: TDataSetProvider
    DataSet = qrySecao
    Options = [poAllowCommandText]
    Left = 108
    Top = 80
  end
  object cdsSecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSecao'
    Left = 186
    Top = 80
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
end
