object dmRL0317: TdmRL0317
  OldCreateOrder = False
  Left = 604
  Top = 180
  Height = 207
  Width = 291
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
  object qryProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 120
  end
  object dspProdutos: TDataSetProvider
    DataSet = qryProdutos
    Options = [poAllowCommandText]
    Left = 120
    Top = 120
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 200
    Top = 120
  end
end
