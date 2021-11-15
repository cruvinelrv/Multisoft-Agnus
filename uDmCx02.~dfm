object dmCx02: TdmCx02
  OldCreateOrder = False
  Left = 377
  Top = 193
  Height = 334
  Width = 259
  object qryContaBanco: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_BANCO WHERE COD_EMPRESA=:EMPRESA ORDER BY DESCRI' +
        'CAO_BANCO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 12
    object qryContaBancoCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
      Required = True
    end
    object qryContaBancoDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
    end
    object qryContaBancoAGENCIA_BANCO: TStringField
      FieldName = 'AGENCIA_BANCO'
      Size = 4
    end
    object qryContaBancoDIGITO1_BANCO: TStringField
      FieldName = 'DIGITO1_BANCO'
      Size = 2
    end
    object qryContaBancoCONTA_BANCO: TStringField
      FieldName = 'CONTA_BANCO'
      Size = 8
    end
    object qryContaBancoDIGITO2_BANCO: TStringField
      FieldName = 'DIGITO2_BANCO'
      Size = 2
    end
    object qryContaBancoCONVENIO_BANCO: TStringField
      FieldName = 'CONVENIO_BANCO'
      Size = 6
    end
    object qryContaBancoVINCULADO_BANCO: TStringField
      FieldName = 'VINCULADO_BANCO'
      Size = 1
    end
    object qryContaBancoCENTRAL_BANCO: TStringField
      FieldName = 'CENTRAL_BANCO'
      Size = 3
    end
    object qryContaBancoCODIGO_PORTADOR_BANCO: TFMTBCDField
      FieldName = 'CODIGO_PORTADOR_BANCO'
      Precision = 15
      Size = 0
    end
    object qryContaBancoLIMITE_BANCO: TFMTBCDField
      FieldName = 'LIMITE_BANCO'
      Precision = 15
      Size = 2
    end
    object qryContaBancoTIPO_BANCO: TStringField
      FieldName = 'TIPO_BANCO'
      Size = 1
    end
    object qryContaBancoCANHOTO_BANCO: TStringField
      FieldName = 'CANHOTO_BANCO'
      Size = 1
    end
    object qryContaBancoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspContaBanco: TDataSetProvider
    DataSet = qryContaBanco
    Options = [poAllowCommandText]
    Left = 108
    Top = 12
  end
  object cdsContaBanco: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_BANCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO_BANCO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AGENCIA_BANCO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DIGITO1_BANCO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CONTA_BANCO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DIGITO2_BANCO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CONVENIO_BANCO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VINCULADO_BANCO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CENTRAL_BANCO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CODIGO_PORTADOR_BANCO'
        DataType = ftFMTBcd
        Precision = 15
      end
      item
        Name = 'LIMITE_BANCO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'TIPO_BANCO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CANHOTO_BANCO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COD_EMPRESA'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspContaBanco'
    StoreDefs = True
    Left = 188
    Top = 12
    object cdsContaBancoCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
      Required = True
    end
    object cdsContaBancoDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
    end
    object cdsContaBancoAGENCIA_BANCO: TStringField
      FieldName = 'AGENCIA_BANCO'
      Size = 4
    end
    object cdsContaBancoDIGITO1_BANCO: TStringField
      FieldName = 'DIGITO1_BANCO'
      Size = 2
    end
    object cdsContaBancoCONTA_BANCO: TStringField
      FieldName = 'CONTA_BANCO'
      Size = 8
    end
    object cdsContaBancoDIGITO2_BANCO: TStringField
      FieldName = 'DIGITO2_BANCO'
      Size = 2
    end
    object cdsContaBancoCONVENIO_BANCO: TStringField
      FieldName = 'CONVENIO_BANCO'
      Size = 6
    end
    object cdsContaBancoVINCULADO_BANCO: TStringField
      FieldName = 'VINCULADO_BANCO'
      Size = 1
    end
    object cdsContaBancoCENTRAL_BANCO: TStringField
      FieldName = 'CENTRAL_BANCO'
      Size = 3
    end
    object cdsContaBancoCODIGO_PORTADOR_BANCO: TFMTBCDField
      FieldName = 'CODIGO_PORTADOR_BANCO'
      Precision = 15
      Size = 0
    end
    object cdsContaBancoLIMITE_BANCO: TFMTBCDField
      FieldName = 'LIMITE_BANCO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsContaBancoTIPO_BANCO: TStringField
      FieldName = 'TIPO_BANCO'
      Size = 1
    end
    object cdsContaBancoCANHOTO_BANCO: TStringField
      FieldName = 'CANHOTO_BANCO'
      Size = 1
    end
    object cdsContaBancoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCaixa'
    Left = 188
    Top = 62
    object cdsCaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsCaixaCHAVE_CAIXA: TStringField
      FieldName = 'CHAVE_CAIXA'
      Required = True
      Size = 21
    end
    object cdsCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
    object cdsCaixaDINHEIRO_TUR_CAIXA: TFMTBCDField
      FieldName = 'DINHEIRO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTRADA_TUR_CAIXA: TFMTBCDField
      FieldName = 'ENTRADA_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCARTAO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CARTAO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPREDATADO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PREDATADO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCONVENIO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CONVENIO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPRAZO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PRAZO_TUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaOUTRASTUR_CAIXA: TFMTBCDField
      FieldName = 'OUTRASTUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaDEVOLUCAOTUR_CAIXA: TFMTBCDField
      FieldName = 'DEVOLUCAOTUR_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaRETIRADAS_CAIXA: TFMTBCDField
      FieldName = 'RETIRADAS_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTREGA_CAIXA: TFMTBCDField
      FieldName = 'ENTREGA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaTROCO_ENTREGA_CAIXA: TFMTBCDField
      FieldName = 'TROCO_ENTREGA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaRECOUTALOJA_CAIXA: TFMTBCDField
      FieldName = 'RECOUTALOJA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPRESTRECEBIDA_CAIXA: TFMTBCDField
      FieldName = 'PRESTRECEBIDA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPRESTATRAZO_CAIXA: TFMTBCDField
      FieldName = 'PRESTATRAZO_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaTAXA_CAIXA: TFMTBCDField
      FieldName = 'TAXA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPRESTANT_CAIXA: TFMTBCDField
      FieldName = 'PRESTANT_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaREMECABANCO_CAIXA: TFMTBCDField
      FieldName = 'REMECABANCO_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaTRANSGERENCIA_CAIXA: TFMTBCDField
      FieldName = 'TRANSGERENCIA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaDESPESADIA_CAIXA: TFMTBCDField
      FieldName = 'DESPESADIA_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaDINHEIRO_CAIXA: TFMTBCDField
      FieldName = 'DINHEIRO_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaRETCARTAO_CAIXA: TFMTBCDField
      FieldName = 'RETCARTAO_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaSALDOINICHEQUE: TFMTBCDField
      FieldName = 'SALDOINICHEQUE'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCHEQUES_CAIXA: TFMTBCDField
      FieldName = 'CHEQUES_CAIXA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = qryCaixa
    Left = 108
    Top = 61
  end
  object qryCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'CAIXA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_CAIXA WHERE COD_EMPRESA=:EMPRESA AND CODIGO_CAIX' +
        'A=:CAIXA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 61
    object qryCaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryCaixaCHAVE_CAIXA: TStringField
      FieldName = 'CHAVE_CAIXA'
      Required = True
      Size = 21
    end
    object qryCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
    object qryCaixaDINHEIRO_TUR_CAIXA: TFMTBCDField
      FieldName = 'DINHEIRO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaENTRADA_TUR_CAIXA: TFMTBCDField
      FieldName = 'ENTRADA_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaCARTAO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CARTAO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPREDATADO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PREDATADO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaCONVENIO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CONVENIO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPRAZO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PRAZO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaOUTRASTUR_CAIXA: TFMTBCDField
      FieldName = 'OUTRASTUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaDEVOLUCAOTUR_CAIXA: TFMTBCDField
      FieldName = 'DEVOLUCAOTUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaRETIRADAS_CAIXA: TFMTBCDField
      FieldName = 'RETIRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaENTREGA_CAIXA: TFMTBCDField
      FieldName = 'ENTREGA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaTROCO_ENTREGA_CAIXA: TFMTBCDField
      FieldName = 'TROCO_ENTREGA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaRECOUTALOJA_CAIXA: TFMTBCDField
      FieldName = 'RECOUTALOJA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPRESTRECEBIDA_CAIXA: TFMTBCDField
      FieldName = 'PRESTRECEBIDA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPRESTATRAZO_CAIXA: TFMTBCDField
      FieldName = 'PRESTATRAZO_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaTAXA_CAIXA: TFMTBCDField
      FieldName = 'TAXA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaPRESTANT_CAIXA: TFMTBCDField
      FieldName = 'PRESTANT_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaREMECABANCO_CAIXA: TFMTBCDField
      FieldName = 'REMECABANCO_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaTRANSGERENCIA_CAIXA: TFMTBCDField
      FieldName = 'TRANSGERENCIA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaDESPESADIA_CAIXA: TFMTBCDField
      FieldName = 'DESPESADIA_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaDINHEIRO_CAIXA: TFMTBCDField
      FieldName = 'DINHEIRO_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaRETCARTAO_CAIXA: TFMTBCDField
      FieldName = 'RETCARTAO_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryCaixaSALDOINICHEQUE: TFMTBCDField
      FieldName = 'SALDOINICHEQUE'
      Precision = 15
      Size = 2
    end
    object qryCaixaCHEQUES_CAIXA: TFMTBCDField
      FieldName = 'CHEQUES_CAIXA'
      Precision = 15
      Size = 2
    end
  end
  object dspCaiMov: TDataSetProvider
    DataSet = qryCaiMov
    Left = 105
    Top = 116
  end
  object cdsCaiMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCaiMov'
    Left = 188
    Top = 116
    object cdsCaiMovTITULO_CAIXAMOV: TStringField
      FieldName = 'TITULO_CAIXAMOV'
      Size = 11
    end
    object cdsCaiMovCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsCaiMovDATA_CAIXAMOV: TDateField
      FieldName = 'DATA_CAIXAMOV'
      Required = True
    end
    object cdsCaiMovVALOR_CAIXAMOV: TFMTBCDField
      FieldName = 'VALOR_CAIXAMOV'
      Precision = 15
      Size = 2
    end
    object cdsCaiMovHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object cdsCaiMovCHAVE_CAIXAMOV: TStringField
      FieldName = 'CHAVE_CAIXAMOV'
      Size = 12
    end
    object cdsCaiMovCAIXA_CAIXAMOV: TIntegerField
      FieldName = 'CAIXA_CAIXAMOV'
    end
    object cdsCaiMovUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object cdsCaiMovTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
    object cdsCaiMovORIGEM_CAIXAMOV: TStringField
      FieldName = 'ORIGEM_CAIXAMOV'
      Size = 1
    end
    object cdsCaiMovTIPO_PAG_CAIXAMOV: TStringField
      FieldName = 'TIPO_PAG_CAIXAMOV'
      Size = 1
    end
    object cdsCaiMovOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
  end
  object qryCaiMov: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT * FROM P_CAIXA_MOV WHERE COD_EMPRESA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 25
    Top = 117
    object qryCaiMovTITULO_CAIXAMOV: TStringField
      FieldName = 'TITULO_CAIXAMOV'
      Size = 11
    end
    object qryCaiMovCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryCaiMovDATA_CAIXAMOV: TDateField
      FieldName = 'DATA_CAIXAMOV'
      Required = True
    end
    object qryCaiMovVALOR_CAIXAMOV: TFMTBCDField
      FieldName = 'VALOR_CAIXAMOV'
      Precision = 15
      Size = 2
    end
    object qryCaiMovHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object qryCaiMovCHAVE_CAIXAMOV: TStringField
      FieldName = 'CHAVE_CAIXAMOV'
      Size = 12
    end
    object qryCaiMovCAIXA_CAIXAMOV: TIntegerField
      FieldName = 'CAIXA_CAIXAMOV'
    end
    object qryCaiMovUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object qryCaiMovTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
    object qryCaiMovORIGEM_CAIXAMOV: TStringField
      FieldName = 'ORIGEM_CAIXAMOV'
      Size = 1
    end
    object qryCaiMovTIPO_PAG_CAIXAMOV: TStringField
      FieldName = 'TIPO_PAG_CAIXAMOV'
      Size = 1
    end
    object qryCaiMovOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
  end
  object qryResBan: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT * FROM P_RESBAN WHERE COD_EMPRESA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 167
    object qryResBanBANCO_RESBAN: TIntegerField
      FieldName = 'BANCO_RESBAN'
    end
    object qryResBanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object qryResBanANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      Precision = 15
      Size = 2
    end
    object qryResBanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object qryResBanCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object qryResBanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object cdsResBan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResBan'
    Left = 188
    Top = 170
    object cdsResBanBANCO_RESBAN: TIntegerField
      FieldName = 'BANCO_RESBAN'
    end
    object cdsResBanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object cdsResBanANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsResBanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsResBanCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsResBanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object dspResBan: TDataSetProvider
    DataSet = qryResBan
    Left = 103
    Top = 168
  end
  object qryConLan: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT * FROM P_CONLAN WHERE COD_EMPRESA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 23
    Top = 227
    object qryConLanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object qryConLanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConLanCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
    end
    object qryConLanCLI_FOR_CONLAN: TIntegerField
      FieldName = 'CLI_FOR_CONLAN'
    end
    object qryConLanTIPO_C_F_CONLAN: TStringField
      FieldName = 'TIPO_C_F_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConLanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object qryConLanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object qryConLanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object qryConLanHISTORICO_CONLAN2: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object qryConLanHISTORIC2_CONLAN: TStringField
      FieldName = 'HISTORIC2_CONLAN'
      Size = 150
    end
    object qryConLanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object qryConLanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConLanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConLanESTORNO_CONLAN: TStringField
      FieldName = 'ESTORNO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConLanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryConLanCONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
    end
  end
  object dspConLan: TDataSetProvider
    DataSet = qryConLan
    Left = 101
    Top = 228
  end
  object cdsConLan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConLan'
    Left = 192
    Top = 227
    object cdsConLanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConLanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConLanCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
    end
    object cdsConLanCLI_FOR_CONLAN: TIntegerField
      FieldName = 'CLI_FOR_CONLAN'
    end
    object cdsConLanTIPO_C_F_CONLAN: TStringField
      FieldName = 'TIPO_C_F_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConLanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object cdsConLanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConLanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsConLanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsConLanHISTORIC2_CONLAN: TStringField
      FieldName = 'HISTORIC2_CONLAN'
      Size = 150
    end
    object cdsConLanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object cdsConLanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConLanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConLanESTORNO_CONLAN: TStringField
      FieldName = 'ESTORNO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConLanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsConLanCONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
    end
  end
end
