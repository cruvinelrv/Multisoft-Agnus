object dmRL0822: TdmRL0822
  OldCreateOrder = False
  Left = 346
  Top = 245
  Height = 109
  Width = 540
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
    Active = True
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
    object cdsConsultaEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsConsultaVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsConsultaMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object cdsConsultaCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object cdsConsultaDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      FixedChar = True
    end
    object cdsConsultaTIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      Size = 11
    end
    object cdsConsultaVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsConsultaVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsConsultaValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Precision = 15
      Size = 2
    end
    object cdsConsultaTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
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
    object ppDBConsultappField1: TppField
      FieldAlias = 'DUPLICATA_RECEBER'
      FieldName = 'DUPLICATA_RECEBER'
      FieldLength = 13
      DisplayWidth = 13
      Position = 0
    end
    object ppDBConsultappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_CLIENTE_RECEBER'
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBConsultappField3: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
    object ppDBConsultappField4: TppField
      FieldAlias = 'EMISSAO_RECEBER'
      FieldName = 'EMISSAO_RECEBER'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppDBConsultappField5: TppField
      FieldAlias = 'VENCIMENTO_RECEBER'
      FieldName = 'VENCIMENTO_RECEBER'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppDBConsultappField6: TppField
      FieldAlias = 'MOVIMENTO_RECEBER'
      FieldName = 'MOVIMENTO_RECEBER'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppDBConsultappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_PORTADOR_RECEBER'
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBConsultappField8: TppField
      FieldAlias = 'DESCRICAO_PORTADOR'
      FieldName = 'DESCRICAO_PORTADOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDBConsultappField9: TppField
      FieldAlias = 'TIT_PRINC_RECEBER'
      FieldName = 'TIT_PRINC_RECEBER'
      FieldLength = 11
      DisplayWidth = 11
      Position = 8
    end
    object ppDBConsultappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_RECEBER'
      FieldName = 'VALOR_RECEBER'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object ppDBConsultappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORPAGO_RECEBER'
      FieldName = 'VALORPAGO_RECEBER'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object ppDBConsultappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object ppDBConsultappField13: TppField
      FieldAlias = 'TIPO_BAIXA_RECEBER'
      FieldName = 'TIPO_BAIXA_RECEBER'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
  end
end
