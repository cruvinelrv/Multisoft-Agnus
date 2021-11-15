object dmRL0821: TdmRL0821
  OldCreateOrder = False
  Left = 264
  Top = 256
  Height = 118
  Width = 566
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 38
    Top = 15
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 150
    Top = 15
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 262
    Top = 15
    object cdsConsultaDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 13
    end
    object cdsConsultaCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsConsultaVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsConsultaVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsConsultaValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Precision = 15
      Size = 2
    end
    object cdsConsultaMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object cdsConsultaTIPO_JUR_EMP: TStringField
      FieldName = 'TIPO_JUR_EMP'
      Size = 1
    end
    object cdsConsultaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      Precision = 15
      Size = 2
    end
    object cdsConsultaVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 358
    Top = 15
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dtsConsulta
    UserName = 'DBConsulta'
    Left = 472
    Top = 16
  end
end
