object dmRL0908: TdmRL0908
  OldCreateOrder = False
  Left = 336
  Top = 253
  Height = 98
  Width = 524
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 29
    Top = 8
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 136
    Top = 8
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 248
    Top = 8
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 344
    Top = 8
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dtsConsulta
    UserName = 'DBConsulta'
    Left = 456
    Top = 8
  end
end
