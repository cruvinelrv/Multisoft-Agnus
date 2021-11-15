object dmRL0119: TdmRL0119
  OldCreateOrder = False
  Left = 327
  Top = 242
  Height = 257
  Width = 272
  object qryPesquisa1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 15
  end
  object dspPesquisa1: TDataSetProvider
    DataSet = qryPesquisa1
    Options = [poAllowCommandText]
    Left = 108
    Top = 15
  end
  object cdsPesquisa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa1'
    Left = 188
    Top = 15
  end
  object qryPesquisa2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 71
  end
  object dspPesquisa2: TDataSetProvider
    DataSet = qryPesquisa2
    Options = [poAllowCommandText]
    Left = 108
    Top = 71
  end
  object cdsPesquisa2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa2'
    Left = 188
    Top = 71
  end
  object qryPesquisa3: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 133
  end
  object dspPesquisa3: TDataSetProvider
    DataSet = qryPesquisa3
    Options = [poAllowCommandText]
    Left = 107
    Top = 133
  end
  object cdsPesquisa3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa3'
    Left = 187
    Top = 133
  end
end
