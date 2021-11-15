object dmRL0702: TdmRL0702
  OldCreateOrder = False
  Left = 357
  Top = 264
  Height = 197
  Width = 457
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 24
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 128
    Top = 24
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 216
    Top = 24
    object cdsConsultaDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      Required = True
      Size = 12
    end
    object cdsConsultaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsConsultaEMISSAO_PAGAR: TDateField
      FieldName = 'EMISSAO_PAGAR'
    end
    object cdsConsultaVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
    end
    object cdsConsultaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsConsultaPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
    end
    object cdsConsultaFORNECEDOR_PAGAR: TIntegerField
      FieldName = 'FORNECEDOR_PAGAR'
      Required = True
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsConsultaCENTRO_PAGAR: TIntegerField
      FieldName = 'CENTRO_PAGAR'
    end
    object cdsConsultaPORTADOR_PAGAR: TIntegerField
      FieldName = 'PORTADOR_PAGAR'
    end
    object cdsConsultaTIPO_PAGAR: TIntegerField
      FieldName = 'TIPO_PAGAR'
    end
    object cdsConsultaVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsConsultaVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsConsultaValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Precision = 15
      Size = 2
    end
    object cdsConsultaHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaMORA_DIA_PAGAR: TFMTBCDField
      FieldName = 'MORA_DIA_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsConsultaMULTA_PAGAR: TFMTBCDField
      FieldName = 'MULTA_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsConsultaENTRADA_PAGAR: TDateField
      FieldName = 'ENTRADA_PAGAR'
    end
    object cdsConsultaMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
    end
    object cdsConsultaTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaCOD_EMPRESA_PAGAR: TIntegerField
      FieldName = 'COD_EMPRESA_PAGAR'
      Required = True
    end
    object cdsConsultaDATASYSTEM_EMP: TSQLTimeStampField
      FieldName = 'DATASYSTEM_EMP'
    end
    object cdsConsultaDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
    end
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    OnDataChange = dtsConsultaDataChange
    Left = 296
    Top = 24
  end
  object qryRecibo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FORNECEDOR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.codigo_recibo, r.num_doc_recibo, r.emis_pgto_recibo, r.' +
        'vencimento_recibo,'
      
        'r.valor_recibo, r.valor_pago_recibo, r.historico_recibo, r.cli_f' +
        'or_recibo'
      'from P_RECIBO r'
      'where r.cli_for_recibo =:FORNECEDOR')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 104
    object qryReciboCODIGO_RECIBO: TIntegerField
      FieldName = 'CODIGO_RECIBO'
      Required = True
    end
    object qryReciboNUM_DOC_RECIBO: TStringField
      FieldName = 'NUM_DOC_RECIBO'
      Size = 15
    end
    object qryReciboEMIS_PGTO_RECIBO: TDateField
      FieldName = 'EMIS_PGTO_RECIBO'
    end
    object qryReciboVENCIMENTO_RECIBO: TDateField
      FieldName = 'VENCIMENTO_RECIBO'
    end
    object qryReciboVALOR_RECIBO: TFMTBCDField
      FieldName = 'VALOR_RECIBO'
      Precision = 15
      Size = 2
    end
    object qryReciboVALOR_PAGO_RECIBO: TFMTBCDField
      FieldName = 'VALOR_PAGO_RECIBO'
      Precision = 15
      Size = 2
    end
    object qryReciboHISTORICO_RECIBO: TMemoField
      FieldName = 'HISTORICO_RECIBO'
      BlobType = ftMemo
      Size = 1
    end
    object qryReciboCLI_FOR_RECIBO: TIntegerField
      FieldName = 'CLI_FOR_RECIBO'
    end
  end
  object dspRecibo: TDataSetProvider
    DataSet = qryRecibo
    Options = [poAllowCommandText]
    Left = 128
    Top = 104
  end
  object cdsRecibo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FORNECEDOR'
        ParamType = ptInput
      end>
    ProviderName = 'dspRecibo'
    Left = 216
    Top = 104
    object cdsReciboCODIGO_RECIBO: TIntegerField
      FieldName = 'CODIGO_RECIBO'
      Required = True
    end
    object cdsReciboNUM_DOC_RECIBO: TStringField
      FieldName = 'NUM_DOC_RECIBO'
      Size = 15
    end
    object cdsReciboEMIS_PGTO_RECIBO: TDateField
      FieldName = 'EMIS_PGTO_RECIBO'
    end
    object cdsReciboVENCIMENTO_RECIBO: TDateField
      FieldName = 'VENCIMENTO_RECIBO'
    end
    object cdsReciboVALOR_RECIBO: TFMTBCDField
      FieldName = 'VALOR_RECIBO'
      Precision = 15
      Size = 2
    end
    object cdsReciboVALOR_PAGO_RECIBO: TFMTBCDField
      FieldName = 'VALOR_PAGO_RECIBO'
      Precision = 15
      Size = 2
    end
    object cdsReciboHISTORICO_RECIBO: TMemoField
      FieldName = 'HISTORICO_RECIBO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsReciboCLI_FOR_RECIBO: TIntegerField
      FieldName = 'CLI_FOR_RECIBO'
    end
  end
  object dtsRecibo: TDataSource
    DataSet = cdsRecibo
    Left = 296
    Top = 104
  end
  object ppDBRecibo: TppDBPipeline
    DataSource = dtsRecibo
    UserName = 'DBRecibo'
    Left = 384
    Top = 104
    object ppDBReciboppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_RECIBO'
      FieldName = 'CODIGO_RECIBO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBReciboppField2: TppField
      FieldAlias = 'NUM_DOC_RECIBO'
      FieldName = 'NUM_DOC_RECIBO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object ppDBReciboppField3: TppField
      FieldAlias = 'EMIS_PGTO_RECIBO'
      FieldName = 'EMIS_PGTO_RECIBO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppDBReciboppField4: TppField
      FieldAlias = 'VENCIMENTO_RECIBO'
      FieldName = 'VENCIMENTO_RECIBO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppDBReciboppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_RECIBO'
      FieldName = 'VALOR_RECIBO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object ppDBReciboppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_PAGO_RECIBO'
      FieldName = 'VALOR_PAGO_RECIBO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object ppDBReciboppField7: TppField
      FieldAlias = 'HISTORICO_RECIBO'
      FieldName = 'HISTORICO_RECIBO'
      FieldLength = 1
      DataType = dtMemo
      DisplayWidth = 10
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBReciboppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_FOR_RECIBO'
      FieldName = 'CLI_FOR_RECIBO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dtsConsulta
    UserName = 'DBConsulta'
    Left = 384
    Top = 24
    object ppDBConsultappField1: TppField
      FieldAlias = 'DOCUMENTO_PAGAR'
      FieldName = 'DOCUMENTO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField2: TppField
      FieldAlias = 'NOTAFISCAL'
      FieldName = 'NOTAFISCAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField3: TppField
      FieldAlias = 'EMISSAO_PAGAR'
      FieldName = 'EMISSAO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField4: TppField
      FieldAlias = 'VENCIMENTO_PAGAR'
      FieldName = 'VENCIMENTO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField5: TppField
      FieldAlias = 'DATA_CADASTRO'
      FieldName = 'DATA_CADASTRO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField6: TppField
      FieldAlias = 'PREVISAO_PAGAR'
      FieldName = 'PREVISAO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField7: TppField
      FieldAlias = 'FORNECEDOR_PAGAR'
      FieldName = 'FORNECEDOR_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField8: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField9: TppField
      FieldAlias = 'CENTRO_PAGAR'
      FieldName = 'CENTRO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField10: TppField
      FieldAlias = 'PORTADOR_PAGAR'
      FieldName = 'PORTADOR_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField11: TppField
      FieldAlias = 'TIPO_PAGAR'
      FieldName = 'TIPO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField12: TppField
      FieldAlias = 'VALOR_PAGAR'
      FieldName = 'VALOR_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField13: TppField
      FieldAlias = 'VALORPAGO_PAGAR'
      FieldName = 'VALORPAGO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField14: TppField
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField15: TppField
      FieldAlias = 'HISTORICO_PAGAR'
      FieldName = 'HISTORICO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField16: TppField
      FieldAlias = 'MORA_DIA_PAGAR'
      FieldName = 'MORA_DIA_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField17: TppField
      FieldAlias = 'MULTA_PAGAR'
      FieldName = 'MULTA_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField18: TppField
      FieldAlias = 'ENTRADA_PAGAR'
      FieldName = 'ENTRADA_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField19: TppField
      FieldAlias = 'MOVIMENTO_PAGAR'
      FieldName = 'MOVIMENTO_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField20: TppField
      FieldAlias = 'TIPO_BAIXA_PAGAR'
      FieldName = 'TIPO_BAIXA_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField21: TppField
      FieldAlias = 'COD_EMPRESA_PAGAR'
      FieldName = 'COD_EMPRESA_PAGAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField22: TppField
      FieldAlias = 'DATASYSTEM_EMP'
      FieldName = 'DATASYSTEM_EMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppDBConsultappField23: TppField
      FieldAlias = 'DESCRICAO_BANCO'
      FieldName = 'DESCRICAO_BANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
  end
end
