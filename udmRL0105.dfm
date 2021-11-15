object dmRL0105: TdmRL0105
  OldCreateOrder = False
  Left = 310
  Top = 196
  Height = 164
  Width = 264
  object qryPesquisa1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 24
  end
  object dspPesquisa1: TDataSetProvider
    DataSet = qryPesquisa1
    Options = [poAllowCommandText]
    Left = 104
    Top = 24
  end
  object cdsPesquisa1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa1'
    Left = 184
    Top = 24
  end
end
