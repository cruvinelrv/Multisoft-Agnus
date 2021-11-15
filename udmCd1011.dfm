object dmCd1011: TdmCd1011
  OldCreateOrder = False
  Left = 364
  Top = 342
  Height = 204
  Width = 274
  object qryCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CIDADE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 16
    object qryCidadeCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      Required = True
    end
    object qryCidadeDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object qryCidadeCEP_INICIA_CIDADE: TStringField
      FieldName = 'CEP_INICIA_CIDADE'
      Size = 9
    end
    object qryCidadeCEP_FINAL_CIDADE: TStringField
      FieldName = 'CEP_FINAL_CIDADE'
      Size = 9
    end
    object qryCidadeUF_CIDADE: TStringField
      FieldName = 'UF_CIDADE'
      FixedChar = True
      Size = 2
    end
    object qryCidadePAIS_CIDADE: TStringField
      FieldName = 'PAIS_CIDADE'
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = qryCidade
    Options = [poAllowCommandText]
    Left = 111
    Top = 16
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 198
    Top = 16
    object cdsCidadeCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      Required = True
    end
    object cdsCidadeDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object cdsCidadeCEP_INICIA_CIDADE: TStringField
      FieldName = 'CEP_INICIA_CIDADE'
      EditMask = '99999\-999;1;_'
      Size = 9
    end
    object cdsCidadeCEP_FINAL_CIDADE: TStringField
      FieldName = 'CEP_FINAL_CIDADE'
      EditMask = '99999\-999;1;_'
      Size = 9
    end
    object cdsCidadeUF_CIDADE: TStringField
      FieldName = 'UF_CIDADE'
      FixedChar = True
      Size = 2
    end
    object cdsCidadePAIS_CIDADE: TStringField
      FieldName = 'PAIS_CIDADE'
    end
  end
  object qryEstados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_ESTADOS ORDER BY CODIGO_ESTADO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 81
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
    Left = 112
    Top = 78
  end
  object cdsEstados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstados'
    Left = 197
    Top = 80
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
