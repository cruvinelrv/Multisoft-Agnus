object dmFn0101: TdmFn0101
  OldCreateOrder = False
  Left = 307
  Top = 193
  Height = 366
  Width = 317
  object qryPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT P.documento_pagar, P.notafiscal, P.tipo_pagar, P.centro_p' +
        'agar, P.portador_pagar,'
      
        '       P.conta_pagar, P.corrente_pagar, P.fornecedor_pagar, P.en' +
        'trada_pagar, P.emissao_pagar,'
      
        '       P.vencimento_pagar, P.previsao_pagar, P.valor_pagar, P.pa' +
        'rcial_pagar, P.mora_dia_pagar,'
      
        '       P.valorpago_pagar, P.formapagto_pagar, P.chave_pagar, P.h' +
        'istorico_pagar, P.tipo_baixa_pagar,'
      
        '       P.movimento_pagar, P.caixa_pagar, P.cod_empresa_pagar, P.' +
        'saldo_pagar, P.campo_busca,'
      
        '       c.descricao_cpagamento, e.nome_cliente, b.descricao_banco' +
        ', p.data_cadastro, p.tipodocumento_pagar,'
      
        '       p1.descricao_portador, c1.descricao_centro, c2.descricao_' +
        'conta, t.descricao_tipodocumento, P.multa_pagar'
      'FROM P_PAGAR P'
      
        '     left outer join p_cpagamento c on (p.tipo_pagar = c.codigo_' +
        'cpagamento)'
      
        '     left outer join e_cliente  e on (p.fornecedor_pagar = e.cod' +
        'igo_cliente)'
      
        '     left outer join e_portador p1 on (p.portador_pagar = p1.cod' +
        'igo_portador)'
      
        '     left outer join e_centro c1 on (p.centro_pagar = c1.codigo_' +
        'centro)'
      
        '     left outer join e_conta c2 on (p.conta_pagar = c2.codigo_co' +
        'nta)'
      
        '     left outer join p_banco b on (p.corrente_pagar = b.codigo_b' +
        'anco)'
      
        '     left outer join e_tipodocumento t on (p.tipodocumento_pagar' +
        ' = t.codigo_tipodocumento)'
      
        '     left outer join empresa e1 on (p.cod_empresa_pagar = e1.cod' +
        'igo_emp)'
      
        'where p.cod_empresa_pagar=:EMPRESA  and  p.documento_pagar=:DOCU' +
        'MENTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 37
    Top = 18
    object qryPagarDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object qryPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarTIPO_PAGAR: TIntegerField
      FieldName = 'TIPO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarCENTRO_PAGAR: TIntegerField
      FieldName = 'CENTRO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarPORTADOR_PAGAR: TIntegerField
      FieldName = 'PORTADOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarCORRENTE_PAGAR: TIntegerField
      FieldName = 'CORRENTE_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarFORNECEDOR_PAGAR: TIntegerField
      FieldName = 'FORNECEDOR_PAGAR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryPagarENTRADA_PAGAR: TDateField
      FieldName = 'ENTRADA_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarEMISSAO_PAGAR: TDateField
      FieldName = 'EMISSAO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPagarPARCIAL_PAGAR: TFMTBCDField
      FieldName = 'PARCIAL_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPagarMORA_DIA_PAGAR: TFMTBCDField
      FieldName = 'MORA_DIA_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPagarVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPagarFORMAPAGTO_PAGAR: TStringField
      FieldName = 'FORMAPAGTO_PAGAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryPagarCHAVE_PAGAR: TStringField
      FieldName = 'CHAVE_PAGAR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qryPagarTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryPagarMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarCAIXA_PAGAR: TIntegerField
      FieldName = 'CAIXA_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarCOD_EMPRESA_PAGAR: TIntegerField
      FieldName = 'COD_EMPRESA_PAGAR'
      Required = True
    end
    object qryPagarSALDO_PAGAR: TFMTBCDField
      FieldName = 'SALDO_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPagarCAMPO_BUSCA: TIntegerField
      FieldName = 'CAMPO_BUSCA'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qryPagarNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryPagarDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object qryPagarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarTIPODOCUMENTO_PAGAR: TIntegerField
      FieldName = 'TIPODOCUMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      ProviderFlags = []
      FixedChar = True
    end
    object qryPagarDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
      ProviderFlags = []
    end
    object qryPagarDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object qryPagarDESCRICAO_TIPODOCUMENTO: TStringField
      FieldName = 'DESCRICAO_TIPODOCUMENTO'
      ProviderFlags = []
    end
    object qryPagarMULTA_PAGAR: TFMTBCDField
      FieldName = 'MULTA_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPagarHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryPagarCONTA_PAGAR: TStringField
      FieldName = 'CONTA_PAGAR'
    end
  end
  object dspPagar: TDataSetProvider
    DataSet = qryPagar
    Options = [poAllowCommandText]
    Left = 128
    Top = 16
  end
  object cdsPagar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspPagar'
    Left = 213
    Top = 18
    object cdsPagarDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarTIPO_PAGAR: TIntegerField
      FieldName = 'TIPO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarCENTRO_PAGAR: TIntegerField
      FieldName = 'CENTRO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarPORTADOR_PAGAR: TIntegerField
      FieldName = 'PORTADOR_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarCORRENTE_PAGAR: TIntegerField
      FieldName = 'CORRENTE_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarFORNECEDOR_PAGAR: TIntegerField
      FieldName = 'FORNECEDOR_PAGAR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPagarENTRADA_PAGAR: TDateField
      FieldName = 'ENTRADA_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarEMISSAO_PAGAR: TDateField
      FieldName = 'EMISSAO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarVALOR_PAGAR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPagarPARCIAL_PAGAR: TFMTBCDField
      FieldName = 'PARCIAL_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsPagarMORA_DIA_PAGAR: TFMTBCDField
      FieldName = 'MORA_DIA_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsPagarVALORPAGO_PAGAR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALORPAGO_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPagarFORMAPAGTO_PAGAR: TStringField
      FieldName = 'FORMAPAGTO_PAGAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsPagarCHAVE_PAGAR: TStringField
      FieldName = 'CHAVE_PAGAR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsPagarTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPagarMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarCAIXA_PAGAR: TIntegerField
      FieldName = 'CAIXA_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarCOD_EMPRESA_PAGAR: TIntegerField
      FieldName = 'COD_EMPRESA_PAGAR'
      Required = True
    end
    object cdsPagarSALDO_PAGAR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'SALDO_PAGAR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsPagarCAMPO_BUSCA: TIntegerField
      FieldName = 'CAMPO_BUSCA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsPagarNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsPagarDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object cdsPagarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarTIPODOCUMENTO_PAGAR: TIntegerField
      FieldName = 'TIPODOCUMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsPagarDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
      ProviderFlags = []
    end
    object cdsPagarDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object cdsPagarDESCRICAO_TIPODOCUMENTO: TStringField
      FieldName = 'DESCRICAO_TIPODOCUMENTO'
      ProviderFlags = []
    end
    object cdsPagarMULTA_PAGAR: TFMTBCDField
      FieldName = 'MULTA_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPagarHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object cdsPagarCONTA_PAGAR: TStringField
      FieldName = 'CONTA_PAGAR'
    end
  end
  object cdsTemporario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DOCUMENTO_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PAGAR'
        DataType = ftInteger
      end
      item
        Name = 'CENTRO_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PORTA_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CONTA_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CORRENTE_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FORNECEDOR_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENTRADA_PAGAR'
        DataType = ftString
        Size = 20
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
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PARCIAL_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MORA_DIA_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALORPAGO_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FORMAPAGTO_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CHAVE_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HISTORICO_PAGAR'
        DataType = ftMemo
      end
      item
        Name = 'TIPO_BAIXA_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MOVIMENTO_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CAIXA_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COD_EMPRESA_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftDate
      end
      item
        Name = 'SALDO_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPODOCUMENTO_PAGAR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MULTA_PAGAR'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 213
    Top = 79
    Data = {
      7B0300009619E0BD01000000180000001B0000000000030000007B030F444F43
      554D454E544F5F50414741520100490000000100055749445448020002001400
      0A4E4F544146495343414C04000100000000000A5449504F5F50414741520400
      0100000000000C43454E54524F5F504147415201004900000001000557494454
      480200020014000B504F5254415F504147415201004900000001000557494454
      480200020014000B434F4E54415F504147415201004900000001000557494454
      480200020014000E434F5252454E54455F504147415201004900000001000557
      4944544802000200140010464F524E454345444F525F50414741520100490000
      0001000557494454480200020014000D454E54524144415F5041474152010049
      00000001000557494454480200020014000D454D495353414F5F504147415204
      000600000000001056454E43494D454E544F5F50414741520400060000000000
      0E505245564953414F5F504147415204000600000000000B56414C4F525F5041
      47415201004900000001000557494454480200020014000D5041524349414C5F
      504147415201004900000001000557494454480200020014000E4D4F52415F44
      49415F504147415201004900000001000557494454480200020014000F56414C
      4F525041474F5F50414741520100490000000100055749445448020002001400
      10464F524D41504147544F5F5041474152010049000000010005574944544802
      00020014000B43484156455F5041474152010049000000010005574944544802
      00020014000F484953544F5249434F5F504147415204004B0000000100075355
      42545950450200490005005465787400105449504F5F42414958415F50414741
      5201004900000001000557494454480200020014000F4D4F56494D454E544F5F
      504147415201004900000001000557494454480200020014000B43414958415F
      5041474152010049000000010005574944544802000200140011434F445F454D
      50524553415F504147415201004900000001000557494454480200020014000D
      444154415F434144415354524F04000600000000000B53414C444F5F50414741
      520100490000000100055749445448020002001400135449504F444F43554D45
      4E544F5F504147415201004900000001000557494454480200020014000B4D55
      4C54415F504147415201004900000001000557494454480200020014000000}
    object cdsTemporarioDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
    end
    object cdsTemporarioNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsTemporarioTIPO_PAGAR: TIntegerField
      FieldName = 'TIPO_PAGAR'
    end
    object cdsTemporarioCENTRO_PAGAR: TStringField
      FieldName = 'CENTRO_PAGAR'
    end
    object cdsTemporarioPORTA_PAGAR: TStringField
      FieldName = 'PORTA_PAGAR'
    end
    object cdsTemporarioCONTA_PAGAR: TStringField
      FieldName = 'CONTA_PAGAR'
    end
    object cdsTemporarioCORRENTE_PAGAR: TStringField
      FieldName = 'CORRENTE_PAGAR'
    end
    object cdsTemporarioFORNECEDOR_PAGAR: TStringField
      FieldName = 'FORNECEDOR_PAGAR'
    end
    object cdsTemporarioENTRADA_PAGAR: TStringField
      FieldName = 'ENTRADA_PAGAR'
    end
    object cdsTemporarioEMISSAO_PAGAR: TDateField
      FieldName = 'EMISSAO_PAGAR'
    end
    object cdsTemporarioVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
    end
    object cdsTemporarioPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
    end
    object cdsTemporarioVALOR_PAGAR: TStringField
      FieldName = 'VALOR_PAGAR'
    end
    object cdsTemporarioPARCIAL_PAGAR: TStringField
      FieldName = 'PARCIAL_PAGAR'
    end
    object cdsTemporarioMORA_DIA_PAGAR: TStringField
      FieldName = 'MORA_DIA_PAGAR'
    end
    object cdsTemporarioVALORPAGO_PAGAR: TStringField
      FieldName = 'VALORPAGO_PAGAR'
    end
    object cdsTemporarioFORMAPAGTO_PAGAR: TStringField
      FieldName = 'FORMAPAGTO_PAGAR'
    end
    object cdsTemporarioCHAVE_PAGAR: TStringField
      FieldName = 'CHAVE_PAGAR'
    end
    object cdsTemporarioHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      BlobType = ftMemo
    end
    object cdsTemporarioTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
    end
    object cdsTemporarioMOVIMENTO_PAGAR: TStringField
      FieldName = 'MOVIMENTO_PAGAR'
    end
    object cdsTemporarioCAIXA_PAGAR: TStringField
      FieldName = 'CAIXA_PAGAR'
    end
    object cdsTemporarioCOD_EMPRESA_PAGAR: TStringField
      FieldName = 'COD_EMPRESA_PAGAR'
    end
    object cdsTemporarioDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsTemporarioSALDO_PAGAR: TStringField
      FieldName = 'SALDO_PAGAR'
    end
    object cdsTemporarioTIPODOCUMENTO_PAGAR: TStringField
      FieldName = 'TIPODOCUMENTO_PAGAR'
    end
    object cdsTemporarioMULTA_PAGAR: TStringField
      FieldName = 'MULTA_PAGAR'
      ProviderFlags = []
    end
  end
  object cdsParcelas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 212
    Top = 142
    Data = {
      6D0000009619E0BD0100000018000000030000000000030000006D000D4E554D
      5F444F43554D454E544F01004900000001000557494454480200020014000F44
      4154415F56454E43494D454E544F0400060000000000044D454D4F0100490000
      00010005574944544802000200FA000000}
    object cdsParcelasNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
    end
    object cdsParcelasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
    object cdsParcelasMEMO: TStringField
      FieldName = 'MEMO'
      Size = 250
    end
  end
  object qryParcelas2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 205
  end
  object dspParcelas2: TDataSetProvider
    DataSet = qryParcelas2
    Options = [poAllowCommandText]
    Left = 116
    Top = 205
  end
  object cdsParcelas2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParcelas2'
    Left = 212
    Top = 205
  end
  object qryPagarDemo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(*) AS TOTALREG FROM P_PAGAR '
      'WHERE COD_EMPRESA_PAGAR = :EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 277
  end
  object dspPagarDemo: TDataSetProvider
    DataSet = qryPagarDemo
    Options = [poAllowCommandText]
    Left = 116
    Top = 277
  end
  object cdsPagarDemo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagarDemo'
    Left = 212
    Top = 277
    object cdsPagarDemoTOTALREG: TIntegerField
      FieldName = 'TOTALREG'
      Required = True
    end
  end
end
