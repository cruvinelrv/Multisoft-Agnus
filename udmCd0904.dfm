object dmCd0904: TdmCd0904
  OldCreateOrder = False
  Left = 336
  Top = 210
  Height = 155
  Width = 369
  object qryTipoDocumento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_TIPODOCUMENTO ORDER BY DESCRICAO_TIPODOCUMENTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 45
    Top = 23
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
    Top = 23
  end
  object cdsTipoDocumento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoDocumento'
    Left = 270
    Top = 23
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
