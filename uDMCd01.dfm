object dmCd01: TdmCd01
  OldCreateOrder = False
  Left = 367
  Top = 203
  Height = 179
  Width = 212
  object qrySecao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT COD_EMPRESA, CODIGO_SECAO, DESCRICAO_SECAO FROM P_SECAO O' +
        'RDER BY DESCRICAO_SECAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 25
    Top = 32
  end
  object dspSecao: TDataSetProvider
    DataSet = qrySecao
    Options = [poAllowCommandText]
    Left = 81
    Top = 32
  end
  object cdsSecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSecao'
    Left = 137
    Top = 32
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
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 25
    Top = 90
  end
end
