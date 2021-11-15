object dmRL0104: TdmRL0104
  OldCreateOrder = False
  Left = 324
  Top = 205
  Height = 241
  Width = 293
  object qryPesquisa2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 68
  end
  object dspPesquisa2: TDataSetProvider
    DataSet = qryPesquisa2
    Options = [poAllowCommandText]
    Left = 112
    Top = 68
  end
  object cdsPesquisa2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa2'
    Left = 192
    Top = 68
  end
  object qryPesquisa1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 15
  end
  object dspPesquisa1: TDataSetProvider
    DataSet = qryPesquisa1
    Options = [poAllowCommandText]
    Left = 114
    Top = 15
  end
  object cdsPesquisa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa1'
    Left = 194
    Top = 15
  end
  object qryPesquisa3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 29
    Top = 122
  end
  object dspPesquisa3: TDataSetProvider
    DataSet = qryPesquisa3
    Options = [poAllowCommandText]
    Left = 109
    Top = 122
  end
  object cdsPesquisa3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa3'
    Left = 189
    Top = 122
  end
end
