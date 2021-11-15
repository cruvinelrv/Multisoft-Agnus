object dmCx07: TdmCx07
  OldCreateOrder = False
  Left = 351
  Top = 111
  Height = 441
  Width = 541
  object qryCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ''
      'CODIGO_CAIXA,'
      'COD_EMPRESA,'
      'CHAVE_CAIXA,'
      'RETIRADAS_CAIXA,'
      'ENTRADAS_CAIXA'
      ''
      'FROM P_CAIXA WHERE CHAVE_CAIXA=:CHAVE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 8
    object qryCaixaCHAVE_CAIXA: TStringField
      FieldName = 'CHAVE_CAIXA'
      Size = 21
    end
    object qryCaixaRETIRADAS_CAIXA: TFMTBCDField
      FieldName = 'RETIRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    ProviderName = 'dspCaixa'
    Left = 160
    Top = 8
    object cdsCaixaCHAVE_CAIXA: TStringField
      FieldName = 'CHAVE_CAIXA'
      Size = 21
    end
    object cdsCaixaRETIRADAS_CAIXA: TFMTBCDField
      FieldName = 'RETIRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
  end
  object cdsCai_Mov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'dspCai_Mov'
    Left = 160
    Top = 64
    object cdsCai_MovCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsCai_MovDATA_CAIXAMOV: TDateField
      FieldName = 'DATA_CAIXAMOV'
      Required = True
    end
    object cdsCai_MovVALOR_CAIXAMOV: TFMTBCDField
      FieldName = 'VALOR_CAIXAMOV'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCai_MovHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object cdsCai_MovCHAVE_CAIXAMOV: TStringField
      FieldName = 'CHAVE_CAIXAMOV'
      Size = 12
    end
    object cdsCai_MovCAIXA_CAIXAMOV: TIntegerField
      FieldName = 'CAIXA_CAIXAMOV'
    end
    object cdsCai_MovUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object cdsCai_MovTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
    object cdsCai_MovORIGEM_CAIXAMOV: TStringField
      FieldName = 'ORIGEM_CAIXAMOV'
      Size = 1
    end
    object cdsCai_MovTIPO_PAG_CAIXAMOV: TStringField
      FieldName = 'TIPO_PAG_CAIXAMOV'
      Size = 1
    end
    object cdsCai_MovTITULO_CAIXAMOV: TStringField
      FieldName = 'TITULO_CAIXAMOV'
      Size = 11
    end
    object cdsCai_MovTURNO: TStringField
      FieldName = 'TURNO'
      ProviderFlags = []
      Size = 12
    end
    object cdsCai_MovOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = qryCaixa
    Left = 96
    Top = 8
  end
  object dspCai_Mov: TDataSetProvider
    DataSet = qryCai_Mov
    Left = 96
    Top = 64
  end
  object qryCai_Mov: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ''
      'COD_EMPRESA,'
      'DATA_CAIXAMOV,'
      'VALOR_CAIXAMOV,'
      'HORA_CAIXAMOV,'
      'OBSERVACAO_CAIXAMOV,'
      'CHAVE_CAIXAMOV,'
      'CAIXA_CAIXAMOV,'
      'USUARIO_CAIXAMOV,'
      'TIPO_CAIXAMOV,'
      'ORIGEM_CAIXAMOV,'
      'TIPO_PAG_CAIXAMOV,'
      'TITULO_CAIXAMOV,'
      ''
      'CHAVE_CAIXAMOV AS TURNO'
      ''
      'FROM P_CAIXA_MOV WHERE CHAVE_CAIXAMOV LIKE :DATA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 64
    object qryCai_MovCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryCai_MovDATA_CAIXAMOV: TDateField
      FieldName = 'DATA_CAIXAMOV'
      Required = True
    end
    object qryCai_MovVALOR_CAIXAMOV: TFMTBCDField
      FieldName = 'VALOR_CAIXAMOV'
      Precision = 15
      Size = 2
    end
    object qryCai_MovHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object qryCai_MovCHAVE_CAIXAMOV: TStringField
      FieldName = 'CHAVE_CAIXAMOV'
      Size = 12
    end
    object qryCai_MovCAIXA_CAIXAMOV: TIntegerField
      FieldName = 'CAIXA_CAIXAMOV'
    end
    object qryCai_MovUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object qryCai_MovTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
    object qryCai_MovORIGEM_CAIXAMOV: TStringField
      FieldName = 'ORIGEM_CAIXAMOV'
      Size = 1
    end
    object qryCai_MovTIPO_PAG_CAIXAMOV: TStringField
      FieldName = 'TIPO_PAG_CAIXAMOV'
      Size = 1
    end
    object qryCai_MovTITULO_CAIXAMOV: TStringField
      FieldName = 'TITULO_CAIXAMOV'
      Size = 11
    end
    object qryCai_MovTURNO: TStringField
      FieldName = 'TURNO'
      ProviderFlags = []
      Size = 12
    end
    object qryCai_MovOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
  end
  object cdsPagar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
      end>
    ProviderName = 'dspPagar'
    Left = 160
    Top = 224
    object cdsPagarDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      Required = True
      Size = 10
    end
    object cdsPagarTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      FixedChar = True
      Size = 1
    end
    object cdsPagarMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
    end
    object cdsPagarVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsPagarPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
    end
    object cdsPagarVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
    end
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
      end>
    ProviderName = 'dspReceber'
    Left = 160
    Top = 152
    object cdsReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object cdsReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object cdsReceberMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object cdsReceberVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
  end
  object dspPagar: TDataSetProvider
    DataSet = qryPagar
    Left = 96
    Top = 224
  end
  object dspReceber: TDataSetProvider
    DataSet = qryReceber
    Left = 96
    Top = 152
  end
  object qryPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ''
      'P.DOCUMENTO_PAGAR,'
      'P.TIPO_BAIXA_PAGAR,'
      'P.MOVIMENTO_PAGAR,'
      'P.VALORPAGO_PAGAR,'
      'P.PREVISAO_PAGAR,'
      'P.VENCIMENTO_PAGAR'
      ''
      'FROM P_PAGAR P WHERE P.DOCUMENTO_PAGAR=:TITULO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 224
    object qryPagarDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      Required = True
      Size = 10
    end
    object qryPagarTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      FixedChar = True
      Size = 1
    end
    object qryPagarMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
    end
    object qryPagarVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryPagarPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
    end
    object qryPagarVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
    end
  end
  object qryReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ''
      'R.DUPLICATA_RECEBER,'
      'R.TIPO_BAIXA_RECEBER,'
      'R.MOVIMENTO_RECEBER,'
      'R.VALORPAGO_RECEBER,'
      'R.PREVISAO_RECEBER,'
      'R.VENCIMENTO_RECEBER'
      ''
      'FROM P_RECEBER R WHERE R.DUPLICATA_RECEBER=:TITULO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 152
    object qryReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object qryReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object qryReceberMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object qryReceberVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object qryReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
  end
  object cdsConLan: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
      end>
    ProviderName = 'dspConLan'
    Left = 448
    Top = 48
    object cdsConLanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
  end
  object cdsResBan: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    ProviderName = 'dspResBan'
    Left = 448
    Top = 104
    object cdsResBanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object cdsResBanCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsResBanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      Precision = 15
      Size = 2
    end
  end
  object dspConLan: TDataSetProvider
    DataSet = qryConLan
    Left = 384
    Top = 48
  end
  object dspResBan: TDataSetProvider
    DataSet = qryResBan
    Left = 384
    Top = 104
  end
  object qryConLan: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      'DOCUMENTO_CONLAN '
      'FROM P_CONLAN WHERE DOCUMENTO_CONLAN=:TITULO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 320
    Top = 48
    object qryConLanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
  end
  object qryResBan: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'CHAVE_RESBAN,'
      'CREDITO_RESBAN,'
      'DEBITO_RESBAN'
      'FROM P_RESBAN WHERE CHAVE_RESBAN=:CHAVE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 320
    Top = 104
    object qryResBanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object qryResBanCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object qryResBanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      Precision = 15
      Size = 2
    end
  end
end
