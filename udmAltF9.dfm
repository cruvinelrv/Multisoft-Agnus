object dmAltF9: TdmAltF9
  OldCreateOrder = False
  Left = 359
  Top = 248
  Height = 145
  Width = 296
  object qryCentroCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CENTRO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 8
    object qryCentroCustoCODIGO_CENTRO: TIntegerField
      FieldName = 'CODIGO_CENTRO'
      Required = True
    end
    object qryCentroCustoDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
    end
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = qryCentroCusto
    Options = [poAllowCommandText]
    Left = 124
    Top = 8
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 217
    Top = 8
    object cdsCentroCustoCODIGO_CENTRO: TIntegerField
      FieldName = 'CODIGO_CENTRO'
      Required = True
    end
    object cdsCentroCustoDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
    end
  end
end
