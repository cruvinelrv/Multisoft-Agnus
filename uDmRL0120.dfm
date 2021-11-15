object dmRL0120: TdmRL0120
  OldCreateOrder = False
  Left = 311
  Top = 169
  Height = 150
  Width = 279
  object qryPesquisa1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 16
  end
  object dspPesquisa1: TDataSetProvider
    DataSet = qryPesquisa1
    Options = [poAllowCommandText]
    Left = 120
    Top = 16
  end
  object cdsPesquisa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa1'
    Left = 200
    Top = 16
  end
  object qryPesquisa2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 64
  end
  object dspPesquisa2: TDataSetProvider
    DataSet = qryPesquisa2
    Options = [poAllowCommandText]
    Left = 120
    Top = 64
  end
  object cdsPesquisa2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa2'
    Left = 200
    Top = 64
  end
end
