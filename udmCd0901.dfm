object dmCd0901: TdmCd0901
  OldCreateOrder = False
  Left = 325
  Top = 219
  Height = 175
  Width = 302
  object qryCentroCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CENTRO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 16
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
    Left = 132
    Top = 16
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 225
    Top = 16
    object cdsCentroCustoCODIGO_CENTRO: TIntegerField
      FieldName = 'CODIGO_CENTRO'
      Required = True
    end
    object cdsCentroCustoDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
    end
  end
end
