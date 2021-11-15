object dmRL0205: TdmRL0205
  OldCreateOrder = False
  Left = 657
  Top = 164
  Height = 246
  Width = 265
  object qryClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 24
  end
  object dspClientes: TDataSetProvider
    DataSet = qryClientes
    Options = [poAllowCommandText]
    Left = 107
    Top = 24
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 187
    Top = 24
  end
  object qryPesquisa1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 80
  end
  object dspPesquisa1: TDataSetProvider
    DataSet = qryPesquisa1
    Options = [poAllowCommandText]
    Left = 107
    Top = 80
  end
  object cdsPesquisa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa1'
    Left = 187
    Top = 80
  end
  object qryPesquisa2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 136
  end
  object dspPesquisa2: TDataSetProvider
    DataSet = qryPesquisa2
    Options = [poAllowCommandText]
    Left = 107
    Top = 136
  end
  object cdsPesquisa2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa2'
    Left = 187
    Top = 136
  end
end
