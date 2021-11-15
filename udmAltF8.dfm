object dmAltF8: TdmAltF8
  OldCreateOrder = False
  Left = 278
  Top = 184
  Height = 156
  Width = 353
  object qryTipoDocumento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_TIPODOCUMENTO ORDER BY DESCRICAO_TIPODOCUMENTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 45
    Top = 15
    object qryTipoDocumentoCODIGO_TIPODOCUMENTO: TIntegerField
      FieldName = 'CODIGO_TIPODOCUMENTO'
      Required = True
    end
    object qryTipoDocumentoDESCRICAO_TIPODOCUMENTO: TStringField
      FieldName = 'DESCRICAO_TIPODOCUMENTO'
    end
  end
  object dspTipoDocumento: TDataSetProvider
    DataSet = qryTipoDocumento
    Options = [poAllowCommandText]
    Left = 157
    Top = 15
  end
  object cdsTipoDocumento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoDocumento'
    Left = 262
    Top = 15
    object cdsTipoDocumentoCODIGO_TIPODOCUMENTO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO_TIPODOCUMENTO'
      Required = True
    end
    object cdsTipoDocumentoDESCRICAO_TIPODOCUMENTO: TStringField
      FieldName = 'DESCRICAO_TIPODOCUMENTO'
    end
  end
end
