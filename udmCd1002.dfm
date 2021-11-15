object dmCd1002: TdmCd1002
  OldCreateOrder = False
  Left = 346
  Top = 233
  Height = 156
  Width = 271
  object qryEstados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_ESTADOS ORDER BY CODIGO_ESTADO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 17
    object qryEstadosCODIGO_ESTADO: TStringField
      FieldName = 'CODIGO_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryEstadosNOME_ESTADO: TStringField
      FieldName = 'NOME_ESTADO'
      FixedChar = True
      Size = 25
    end
    object qryEstadosICMS_VD_CT: TFMTBCDField
      FieldName = 'ICMS_VD_CT'
      Precision = 15
      Size = 2
    end
    object qryEstadosICMS_VD_NC: TFMTBCDField
      FieldName = 'ICMS_VD_NC'
      Precision = 15
      Size = 2
    end
  end
  object dspEstados: TDataSetProvider
    DataSet = qryEstados
    Options = [poAllowCommandText]
    Left = 104
    Top = 17
  end
  object cdsEstados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstados'
    Left = 184
    Top = 17
    object cdsEstadosCODIGO_ESTADO: TStringField
      FieldName = 'CODIGO_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsEstadosNOME_ESTADO: TStringField
      FieldName = 'NOME_ESTADO'
      FixedChar = True
      Size = 25
    end
    object cdsEstadosICMS_VD_CT: TFMTBCDField
      FieldName = 'ICMS_VD_CT'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsEstadosICMS_VD_NC: TFMTBCDField
      FieldName = 'ICMS_VD_NC'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
end
