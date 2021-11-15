object dmRL0701: TdmRL0701
  OldCreateOrder = False
  Left = 365
  Top = 272
  Height = 150
  Width = 453
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select p.documento_pagar, p.notafiscal, p.emissao_pagar, p.venci' +
        'mento_pagar,'
      
        'p.data_cadastro, p.previsao_pagar, p.fornecedor_pagar, c.nome_cl' +
        'iente,'
      
        'p.centro_pagar, p.portador_pagar, p.tipo_pagar, p.valor_pagar, p' +
        '.valorpago_pagar,'
      '(p.valor_pagar - p.valorpago_pagar) as "Valor_Total",'
      
        'p.historico_pagar, p.mora_dia_pagar, p.multa_pagar, p.entrada_pa' +
        'gar, p.movimento_pagar,'
      'p.tipo_baixa_pagar, p.cod_empresa_pagar, e.datasystem_emp,'
      '(c.CODIGO_CLIENTE ||'#39'-'#39'|| c.NOME_CLIENTE) as NOME_FORNECEDOR'
      'from P_PAGAR p'
      
        'left outer join e_cliente c on (p.fornecedor_pagar = c.codigo_cl' +
        'iente)'
      
        'left outer join empresa e on (p.cod_empresa_pagar = e.codigo_emp' +
        ')')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 24
    object qryConsultaDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      Required = True
      Size = 12
    end
    object qryConsultaNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qryConsultaEMISSAO_PAGAR: TDateField
      FieldName = 'EMISSAO_PAGAR'
    end
    object qryConsultaVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
    end
    object qryConsultaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qryConsultaPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
    end
    object qryConsultaFORNECEDOR_PAGAR: TIntegerField
      FieldName = 'FORNECEDOR_PAGAR'
      Required = True
    end
    object qryConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryConsultaCENTRO_PAGAR: TIntegerField
      FieldName = 'CENTRO_PAGAR'
    end
    object qryConsultaPORTADOR_PAGAR: TIntegerField
      FieldName = 'PORTADOR_PAGAR'
    end
    object qryConsultaTIPO_PAGAR: TIntegerField
      FieldName = 'TIPO_PAGAR'
    end
    object qryConsultaVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryConsultaVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryConsultaHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      BlobType = ftMemo
      Size = 1
    end
    object qryConsultaMORA_DIA_PAGAR: TFMTBCDField
      FieldName = 'MORA_DIA_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryConsultaMULTA_PAGAR: TFMTBCDField
      FieldName = 'MULTA_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryConsultaENTRADA_PAGAR: TDateField
      FieldName = 'ENTRADA_PAGAR'
    end
    object qryConsultaMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
    end
    object qryConsultaTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      FixedChar = True
      Size = 1
    end
    object qryConsultaCOD_EMPRESA_PAGAR: TIntegerField
      FieldName = 'COD_EMPRESA_PAGAR'
      Required = True
    end
    object qryConsultaValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Precision = 15
      Size = 2
    end
    object qryConsultaDATASYSTEM_EMP: TSQLTimeStampField
      FieldName = 'DATASYSTEM_EMP'
    end
    object qryConsultaNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 52
    end
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
    object cdsConsultaValor_Total: TFMTBCDField
      FieldName = 'Valor_Total'
      Precision = 15
      Size = 2
    end
    object cdsConsultaDATASYSTEM_EMP: TSQLTimeStampField
      FieldName = 'DATASYSTEM_EMP'
    end
    object cdsConsultaNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      Size = 52
    end
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 296
    Top = 24
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dtsConsulta
    UserName = 'DBConsulta'
    Left = 376
    Top = 24
  end
end
