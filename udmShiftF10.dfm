object dmShiftF10: TdmShiftF10
  OldCreateOrder = False
  Left = 386
  Top = 217
  Height = 236
  Width = 244
  object qryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select e.codigo_emp, e.juros_emp, e.dias_bloq_emp, e.tipo_jur_em' +
        'p'
      'from EMPRESA e'
      'where e.codigo_emp =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 29
    Top = 140
    object qryEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object qryEmpresaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEmpresaDIAS_BLOQ_EMP: TIntegerField
      FieldName = 'DIAS_BLOQ_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryEmpresaTIPO_JUR_EMP: TStringField
      FieldName = 'TIPO_JUR_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 100
    Top = 141
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpresa'
    Left = 171
    Top = 141
    object cdsEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object cdsEmpresaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEmpresaDIAS_BLOQ_EMP: TIntegerField
      FieldName = 'DIAS_BLOQ_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaTIPO_JUR_EMP: TStringField
      FieldName = 'TIPO_JUR_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdsGrid: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DOCUMENTO_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FORNECEDOR_PAGAR'
        DataType = ftInteger
      end
      item
        Name = 'EMISSAO_PAGAR'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENTO_PAGAR'
        DataType = ftDate
      end
      item
        Name = 'PREVISAO_PAGAR'
        DataType = ftDate
      end
      item
        Name = 'VALOR_PAGAR'
        DataType = ftWord
      end
      item
        Name = 'VALORPAGO_PAGAR'
        DataType = ftFloat
      end
      item
        Name = 'TIPO_BAIXA_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DIAS_ATRASO'
        DataType = ftFloat
      end
      item
        Name = 'JUROS'
        DataType = ftFloat
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
      end
      item
        Name = 'MORA_DIA'
        DataType = ftFloat
      end
      item
        Name = 'HISTORICO_PAGAR'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 172
    Top = 78
    Data = {
      530100009619E0BD01000000180000000D00000000000300000053010F444F43
      554D454E544F5F50414741520100490000000100055749445448020002001400
      10464F524E454345444F525F504147415204000100000000000D454D49535341
      4F5F504147415204000600000000001056454E43494D454E544F5F5041474152
      04000600000000000E505245564953414F5F504147415204000600000000000B
      56414C4F525F504147415202000200000000000F56414C4F525041474F5F5041
      4741520800040000000000105449504F5F42414958415F504147415201004900
      000001000557494454480200020014000B444941535F41545241534F08000400
      00000000054A55524F5308000400000000000553414C444F0800040000000000
      084D4F52415F44494108000400000000000F484953544F5249434F5F50414741
      5201004900000001000557494454480200020014000000}
    object cdsGridDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
    end
    object cdsGridFORNECEDOR_PAGAR: TIntegerField
      FieldName = 'FORNECEDOR_PAGAR'
    end
    object cdsGridEMISSAO_PAGAR: TDateField
      FieldName = 'EMISSAO_PAGAR'
    end
    object cdsGridVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
    end
    object cdsGridPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
    end
    object cdsGridVALOR_PAGAR: TWordField
      FieldName = 'VALOR_PAGAR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridVALORPAGO_PAGAR: TFloatField
      FieldName = 'VALORPAGO_PAGAR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
    end
    object cdsGridDIAS_ATRASO: TFloatField
      DefaultExpression = '0'
      FieldName = 'DIAS_ATRASO'
    end
    object cdsGridJUROS: TFloatField
      DefaultExpression = '0'
      FieldName = 'JUROS'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridSALDO: TFloatField
      DefaultExpression = '0'
      FieldName = 'SALDO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridMORA_DIA: TFloatField
      DefaultExpression = '0'
      FieldName = 'MORA_DIA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridHISTORICO_PAGAR: TStringField
      FieldName = 'HISTORICO_PAGAR'
    end
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select p.documento_pagar, p.fornecedor_pagar, p.emissao_pagar, p' +
        '.vencimento_pagar,'
      
        '       p.previsao_pagar, p.valor_pagar, p.valorpago_pagar, p.tip' +
        'o_baixa_pagar,'
      '       p.historico_pagar, p.parcial_pagar, p.mora_dia_pagar'
      'from P_PAGAR p')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 16
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 104
    Top = 16
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 176
    Top = 16
    object cdsConsultaDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      Required = True
      Size = 10
    end
    object cdsConsultaFORNECEDOR_PAGAR: TIntegerField
      FieldName = 'FORNECEDOR_PAGAR'
      Required = True
    end
    object cdsConsultaEMISSAO_PAGAR: TDateField
      FieldName = 'EMISSAO_PAGAR'
    end
    object cdsConsultaVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
    end
    object cdsConsultaPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
    end
    object cdsConsultaVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsultaVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsConsultaTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsultaPARCIAL_PAGAR: TFMTBCDField
      FieldName = 'PARCIAL_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsConsultaMORA_DIA_PAGAR: TFMTBCDField
      FieldName = 'MORA_DIA_PAGAR'
      Precision = 15
      Size = 2
    end
  end
end
