object dmRL0602: TdmRL0602
  OldCreateOrder = False
  Left = 283
  Top = 121
  Height = 488
  Width = 491
  object dspCaixa_mov: TDataSetProvider
    DataSet = qryCaixa_mov
    Left = 96
    Top = 72
  end
  object cdsCaixa_mov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIMOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAMOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspCaixa_mov'
    Left = 168
    Top = 72
    object cdsCaixa_movVALOR_MOV: TFMTBCDField
      FieldName = 'VALOR_MOV'
      Precision = 15
      Size = 2
    end
    object cdsCaixa_movDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Precision = 15
      Size = 2
    end
    object cdsCaixa_movCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object cdsCaixa_movOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object cdsCaixa_movTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      FixedChar = True
      Size = 8
    end
    object cdsCaixa_movHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object cdsCaixa_movOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
    object cdsCaixa_movUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object cdsCaixa_movTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
  end
  object dsCaixa_mov: TDataSource
    AutoEdit = False
    DataSet = cdsCaixa_mov
    Left = 240
    Top = 72
  end
  object qryCaixa_mov: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIMOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAMOV'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      
        'CASE WHEN ((M.tipo_pag_caixamov='#39'D'#39') or (M.tipo_pag_caixamov='#39'C'#39 +
        ') or (M.tipo_pag_caixamov='#39'O'#39'))'
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS VALOR_MOV,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'D'#39') '
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS DINHEIRO,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'C'#39') '
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS CHEQUE,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'O'#39') '
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS OUTROS,'
      ''
      'CASE M.tipo_pag_caixamov'
      '    WHEN '#39'D'#39' THEN '#39'Dinheiro'#39
      '    WHEN '#39'C'#39' THEN '#39'Cheque'#39
      '    WHEN '#39'O'#39' THEN '#39'Outra'#39
      'END AS TIPO_PAGTO,'
      
        'M.hora_caixamov, M.observacao_caixamov, M.usuario_caixamov, M.ti' +
        'po_caixamov'
      ''
      'FROM P_CAIXA_MOV M'
      'WHERE'
      'M.caixa_caixamov=:CAIMOV AND M.chave_caixamov=:CHAMOV'
      'AND M.tipo_caixamov ='#39'E'#39)
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 72
    object qryCaixa_movVALOR_MOV: TFMTBCDField
      FieldName = 'VALOR_MOV'
      Precision = 15
      Size = 2
    end
    object qryCaixa_movDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Precision = 15
      Size = 2
    end
    object qryCaixa_movCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object qryCaixa_movOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object qryCaixa_movTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      FixedChar = True
      Size = 8
    end
    object qryCaixa_movHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object qryCaixa_movOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
    object qryCaixa_movUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object qryCaixa_movTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = qryCaixa
    Left = 96
    Top = 16
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCaixa'
    Left = 168
    Top = 16
    object cdsCaixaDINHEIRO_TUR_CAIXA: TFMTBCDField
      FieldName = 'DINHEIRO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTRADA_TUR_CAIXA: TFMTBCDField
      FieldName = 'ENTRADA_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPRAZO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PRAZO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaPREDATADO_TUR_CAIXA: TFMTBCDField
      FieldName = 'PREDATADO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCARTAO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CARTAO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCONVENIO_TUR_CAIXA: TFMTBCDField
      FieldName = 'CONVENIO_TUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaOUTRASTUR_CAIXA: TFMTBCDField
      FieldName = 'OUTRASTUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaTROCO_ENTREGA_CAIXA: TFMTBCDField
      FieldName = 'TROCO_ENTREGA_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTREGA_CAIXA: TFMTBCDField
      FieldName = 'ENTREGA_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaDEVOLUCAOTUR_CAIXA: TFMTBCDField
      FieldName = 'DEVOLUCAOTUR_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaRETIRADAS_CAIXA: TFMTBCDField
      FieldName = 'RETIRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCHEQUES_CAIXA: TFMTBCDField
      FieldName = 'CHEQUES_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsCaixaCHAVE_CAIXA: TStringField
      FieldName = 'CHAVE_CAIXA'
      Required = True
      Size = 21
    end
  end
  object dsCaixa: TDataSource
    AutoEdit = False
    DataSet = cdsCaixa
    Left = 240
    Top = 16
  end
  object pplCaixa: TppDBPipeline
    DataSource = dsCaixa
    AutoCreateFields = False
    UserName = 'Caixa'
    Left = 312
    Top = 16
    object pplCaixappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'DINHEIRO_TUR_CAIXA'
      FieldName = 'DINHEIRO_TUR_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 0
    end
    object pplCaixappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA_TUR_CAIXA'
      FieldName = 'ENTRADA_TUR_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 1
    end
    object pplCaixappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRAZO_TUR_CAIXA'
      FieldName = 'PRAZO_TUR_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 2
    end
    object pplCaixappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PREDATADO_TUR_CAIXA'
      FieldName = 'PREDATADO_TUR_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 3
    end
    object pplCaixappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARTAO_TUR_CAIXA'
      FieldName = 'CARTAO_TUR_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object pplCaixappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONVENIO_TUR_CAIXA'
      FieldName = 'CONVENIO_TUR_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object pplCaixappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'OUTRASTUR_CAIXA'
      FieldName = 'OUTRASTUR_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object pplCaixappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCO_ENTREGA_CAIXA'
      FieldName = 'TROCO_ENTREGA_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object pplCaixappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTREGA_CAIXA'
      FieldName = 'ENTREGA_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 8
    end
    object pplCaixappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEVOLUCAOTUR_CAIXA'
      FieldName = 'DEVOLUCAOTUR_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object pplCaixappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO_INICIAL_CAIXA'
      FieldName = 'SALDO_INICIAL_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object pplCaixappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADAS_CAIXA'
      FieldName = 'ENTRADAS_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object pplCaixappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'RETIRADAS_CAIXA'
      FieldName = 'RETIRADAS_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
    object pplCaixappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUES_CAIXA'
      FieldName = 'CHEQUES_CAIXA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 13
    end
    object pplCaixappField15: TppField
      FieldAlias = 'CHAVE_CAIXA'
      FieldName = 'CHAVE_CAIXA'
      FieldLength = 21
      DisplayWidth = 21
      Position = 14
    end
  end
  object qryCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TURNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'C.dinheiro_tur_caixa,'
      'C.entrada_tur_caixa,'
      'C.prazo_tur_caixa,'
      'C.predatado_tur_caixa,'
      'C.cartao_tur_caixa,'
      'C.convenio_tur_caixa,'
      'C.outrastur_caixa,'
      'C.troco_entrega_caixa,'
      'C.entrega_caixa,'
      'C.devolucaotur_caixa,'
      'C.saldo_inicial_caixa,'
      'C.entradas_caixa,'
      'C.retiradas_caixa,'
      'C.cheques_caixa,'
      'C.chave_caixa'
      'FROM P_CAIXA C'
      'WHERE c.codigo_caixa =:CAIXA'
      'AND SUBSTRING(C.chave_caixa from 1 for 8) =:DATA'
      'AND SUBSTRING(C.chave_caixa from 10 for 1) =:TURNO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 16
  end
  object qryVendas_Turno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAI1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'V.tipo_venda,'
      'V.tipo_doc_venda,'
      'V.codigo_venda,'
      'V.hora_venda,'
      'v.os_venda,'
      'V.desconto_venda,'
      'V.valornota_venda AS "RECEBIDO",'
      'V.fatura_venda AS "TABELA",'
      '((v.desconto_venda * 100) / V.fatura_venda) AS "DESC_PORC",'
      'V.vendedor_venda,'
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'1'#39' THEN '#39'A Vista'#39
      '    WHEN '#39'2'#39' THEN '#39'Cartao de Cr'#233'dito'#39
      '    WHEN '#39'3'#39' THEN '#39'Cheque Pr'#233'-Datado'#39
      '    WHEN '#39'4'#39' THEN '#39'Conv'#234'nio'#39
      '    WHEN '#39'5'#39' THEN '#39'A Prazo'#39
      '    WHEN '#39'6'#39' THEN '#39'Outros'#39
      'END AS RESUMO_CAIXA,'
      'V.exclusao_venda,'
      'V.notafiscal_venda,'
      'V.serie_venda,'
      
        'CASE WHEN V.entrega_venda = '#39'T'#39' THEN (V.fatura_venda - V.descont' +
        'o_venda)'
      'END AS "ENTREGA",'
      'V.cliente_venda,'
      'C.nome_cliente,'
      'P.caixa_cpagamento,'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'1'#39' THEN (V.fatura_venda - V.desconto_venda) '
      '             ELSE 0'
      'END AS "A_VISTA",'
      ''
      
        'CASE WHEN (V.data_venda = V.vencimen01_venda) AND (P.caixa_cpaga' +
        'mento > 1)'
      '    THEN V.valornota_venda'
      '    ELSE 0'
      'END AS "ENTRADAS",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'2'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "CARTAO",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'3'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "CHEQUE",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'4'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "CONVENIO",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'5'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "A_PRAZO",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'6'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "OUTROS",'
      'v.chave_venda'
      ''
      'FROM P_VENDAS V'
      
        'LEFT OUTER JOIN P_CPAGAMENTO P ON (P.codigo_cpagamento=V.cpagame' +
        'nto_venda)'
      
        'LEFT OUTER JOIN E_CLIENTE C ON (C.codigo_cliente=V.cliente_venda' +
        ')'
      'WHERE'
      'V.cpagamento_venda <> '#39'7'#39' AND'
      'V.caixa_venda=:CAI1 AND'
      'V.serie_venda<>:SER1 AND'
      '((v.tipo_doc_venda = '#39'1'#39') or (v.tipo_doc_venda = '#39#39')) AND'
      '(V.exclusao_venda IS NULL)'
      'AND SUBSTRING(V.chave_venda FROM 1 FOR 8) =:CHAVE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 184
    object qryVendas_TurnoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qryVendas_TurnoTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object qryVendas_TurnoCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendas_TurnoHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendas_TurnoOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object qryVendas_TurnoDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoTABELA: TFMTBCDField
      FieldName = 'TABELA'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoDESC_PORC: TFMTBCDField
      FieldName = 'DESC_PORC'
      Precision = 15
      Size = 4
    end
    object qryVendas_TurnoVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVendas_TurnoRESUMO_CAIXA: TStringField
      FieldName = 'RESUMO_CAIXA'
      FixedChar = True
      Size = 17
    end
    object qryVendas_TurnoEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object qryVendas_TurnoNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendas_TurnoSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendas_TurnoENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryVendas_TurnoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryVendas_TurnoA_VISTA: TFMTBCDField
      FieldName = 'A_VISTA'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoENTRADAS: TFMTBCDField
      FieldName = 'ENTRADAS'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoCARTAO: TFMTBCDField
      FieldName = 'CARTAO'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoCONVENIO: TFMTBCDField
      FieldName = 'CONVENIO'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoA_PRAZO: TFMTBCDField
      FieldName = 'A_PRAZO'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object qryVendas_TurnoCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
    end
  end
  object dspVendas_Turno: TDataSetProvider
    DataSet = qryVendas_Turno
    Left = 123
    Top = 184
  end
  object cdsVendas_Turno: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAI1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendas_Turno'
    Left = 217
    Top = 184
    object cdsVendas_TurnoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsVendas_TurnoTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsVendas_TurnoCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendas_TurnoHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendas_TurnoOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsVendas_TurnoDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoTABELA: TFMTBCDField
      FieldName = 'TABELA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoDESC_PORC: TFMTBCDField
      FieldName = 'DESC_PORC'
      Precision = 15
      Size = 4
    end
    object cdsVendas_TurnoVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendas_TurnoRESUMO_CAIXA: TStringField
      FieldName = 'RESUMO_CAIXA'
      FixedChar = True
      Size = 17
    end
    object cdsVendas_TurnoEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsVendas_TurnoNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendas_TurnoSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendas_TurnoENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVendas_TurnoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsVendas_TurnoA_VISTA: TFMTBCDField
      FieldName = 'A_VISTA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoENTRADAS: TFMTBCDField
      FieldName = 'ENTRADAS'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoCARTAO: TFMTBCDField
      FieldName = 'CARTAO'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoCONVENIO: TFMTBCDField
      FieldName = 'CONVENIO'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoA_PRAZO: TFMTBCDField
      FieldName = 'A_PRAZO'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object cdsVendas_TurnoCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
    end
  end
  object dtsVendas_Turno: TDataSource
    DataSet = cdsVendas_Turno
    Left = 312
    Top = 184
  end
  object qryVendas_Dev: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAI1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'V.tipo_venda,'
      'V.tipo_doc_venda,'
      'V.codigo_venda,'
      'V.hora_venda,'
      'v.os_venda,'
      'V.valornota_venda AS "RECEBIDO",'
      'V.fatura_venda AS "TABELA",'
      '((v.desconto_venda * 100) / V.fatura_venda) AS "DESC_PORC",'
      'V.vendedor_venda,'
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'1'#39' THEN '#39'A Vista'#39
      '    WHEN '#39'2'#39' THEN '#39'Cartao de Cr'#233'dito'#39
      '    WHEN '#39'3'#39' THEN '#39'Cheque Pr'#233'-Datado'#39
      '    WHEN '#39'4'#39' THEN '#39'Conv'#234'nio'#39
      '    WHEN '#39'5'#39' THEN '#39'A Prazo'#39
      '    WHEN '#39'6'#39' THEN '#39'Outros'#39
      'END AS RESUMO_CAIXA,'
      'V.exclusao_venda,'
      'V.notafiscal_venda,'
      'V.serie_venda,'
      
        'CASE WHEN V.entrega_venda = '#39'T'#39' THEN (V.fatura_venda - V.descont' +
        'o_venda)'
      'END AS "ENTREGA",'
      'V.cliente_venda,'
      'C.nome_cliente,'
      'P.caixa_cpagamento,'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'1'#39' THEN (V.fatura_venda - V.desconto_venda)'
      '             ELSE 0'
      'END AS "A_VISTA",'
      ''
      
        'CASE WHEN (V.data_venda = V.vencimen01_venda) AND (P.caixa_cpaga' +
        'mento > 1)'
      '    THEN V.valornota_venda'
      '    ELSE 0'
      'END AS "ENTRADAS",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'2'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "CARTAO",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'3'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "CHEQUE",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'4'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "CONVENIO",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'5'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "A_PRAZO",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'6'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "OUTROS"'
      ''
      ''
      'FROM P_VENDAS V'
      
        'LEFT OUTER JOIN P_CPAGAMENTO P ON (P.codigo_cpagamento=V.cpagame' +
        'nto_venda)'
      
        'LEFT OUTER JOIN E_CLIENTE C ON (C.codigo_cliente=V.cliente_venda' +
        ')'
      'WHERE'
      'V.cpagamento_venda<>'#39'7'#39' AND'
      'V.caixa_venda=:CAI1 AND'
      'V.serie_venda<>:SER1 AND'
      '(V.exclusao_venda IS NULL) AND'
      
        '((V.tipo_doc_venda = '#39'3'#39') or (V.tipo_doc_venda = '#39'4'#39') or (V.tipo' +
        '_doc_venda = '#39'5'#39'))'
      'AND SUBSTRING(V.chave_venda FROM 1 FOR 8) =:CHAVE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 235
    object qryVendas_DevTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qryVendas_DevTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object qryVendas_DevCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendas_DevHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendas_DevOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object qryVendas_DevRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevTABELA: TFMTBCDField
      FieldName = 'TABELA'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevDESC_PORC: TFMTBCDField
      FieldName = 'DESC_PORC'
      Precision = 15
      Size = 4
    end
    object qryVendas_DevVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVendas_DevRESUMO_CAIXA: TStringField
      FieldName = 'RESUMO_CAIXA'
      FixedChar = True
      Size = 17
    end
    object qryVendas_DevEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object qryVendas_DevNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendas_DevSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendas_DevENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryVendas_DevNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryVendas_DevA_VISTA: TFMTBCDField
      FieldName = 'A_VISTA'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevENTRADAS: TFMTBCDField
      FieldName = 'ENTRADAS'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevCARTAO: TFMTBCDField
      FieldName = 'CARTAO'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevCONVENIO: TFMTBCDField
      FieldName = 'CONVENIO'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevA_PRAZO: TFMTBCDField
      FieldName = 'A_PRAZO'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
    end
  end
  object dspVendas_Dev: TDataSetProvider
    DataSet = qryVendas_Dev
    Left = 123
    Top = 235
  end
  object cdsVendas_Dev: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAI1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVendas_Dev'
    Left = 217
    Top = 235
    object cdsVendas_DevTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsVendas_DevTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsVendas_DevCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendas_DevHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendas_DevOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsVendas_DevRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevTABELA: TFMTBCDField
      FieldName = 'TABELA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevDESC_PORC: TFMTBCDField
      FieldName = 'DESC_PORC'
      Precision = 15
      Size = 4
    end
    object cdsVendas_DevVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendas_DevRESUMO_CAIXA: TStringField
      FieldName = 'RESUMO_CAIXA'
      FixedChar = True
      Size = 17
    end
    object cdsVendas_DevEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsVendas_DevNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendas_DevSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendas_DevENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVendas_DevNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsVendas_DevA_VISTA: TFMTBCDField
      FieldName = 'A_VISTA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevENTRADAS: TFMTBCDField
      FieldName = 'ENTRADAS'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevCARTAO: TFMTBCDField
      FieldName = 'CARTAO'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevCONVENIO: TFMTBCDField
      FieldName = 'CONVENIO'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevA_PRAZO: TFMTBCDField
      FieldName = 'A_PRAZO'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
    end
  end
  object dtsVendas_Dev: TDataSource
    DataSet = cdsVendas_Dev
    Left = 312
    Top = 235
  end
  object dspCai_MovR: TDataSetProvider
    DataSet = qryCai_MovR
    Left = 124
    Top = 288
  end
  object cdsCai_MovR: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIMOV'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CHAMOV'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCai_MovR'
    Left = 217
    Top = 288
    object cdsCai_MovRVALOR_MOV: TFMTBCDField
      FieldName = 'VALOR_MOV'
      Precision = 15
      Size = 2
    end
    object cdsCai_MovRDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Precision = 15
      Size = 2
    end
    object cdsCai_MovRCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object cdsCai_MovROUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object cdsCai_MovRTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      FixedChar = True
      Size = 8
    end
    object cdsCai_MovRHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object cdsCai_MovROBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
    object cdsCai_MovRUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object cdsCai_MovRTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
  end
  object dtsCai_MovR: TDataSource
    AutoEdit = False
    DataSet = cdsCai_MovR
    Left = 312
    Top = 288
  end
  object qryCai_MovR: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIMOV'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CHAMOV'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT'
      
        'CASE WHEN ((M.tipo_pag_caixamov='#39'D'#39') or (M.tipo_pag_caixamov='#39'C'#39 +
        ') or (M.tipo_pag_caixamov='#39'O'#39'))'
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS VALOR_MOV,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'D'#39') '
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS DINHEIRO,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'C'#39')'
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS CHEQUE,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'O'#39') '
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS OUTROS,'
      ''
      'CASE M.tipo_pag_caixamov'
      '    WHEN '#39'D'#39' THEN '#39'Dinheiro'#39
      '    WHEN '#39'C'#39' THEN '#39'Cheque'#39
      '    WHEN '#39'O'#39' THEN '#39'Outra'#39
      'END AS TIPO_PAGTO,'
      
        'M.hora_caixamov, M.observacao_caixamov, M.usuario_caixamov, M.ti' +
        'po_caixamov'
      ''
      'FROM P_CAIXA_MOV M'
      ''
      'WHERE'
      'M.caixa_caixamov=:CAIMOV AND M.chave_caixamov=:CHAMOV'
      'AND M.tipo_caixamov ='#39'R'#39)
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 288
    object qryCai_MovRVALOR_MOV: TFMTBCDField
      FieldName = 'VALOR_MOV'
      Precision = 15
      Size = 2
    end
    object qryCai_MovRDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Precision = 15
      Size = 2
    end
    object qryCai_MovRCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object qryCai_MovROUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object qryCai_MovRTIPO_PAGTO: TStringField
      FieldName = 'TIPO_PAGTO'
      FixedChar = True
      Size = 8
    end
    object qryCai_MovRHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object qryCai_MovROBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
    object qryCai_MovRUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object qryCai_MovRTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
  end
  object ppCaixa_mov: TppDBPipeline
    DataSource = dsCaixa_mov
    UserName = 'Caixa_mov'
    Left = 316
    Top = 72
  end
  object ppCai_MovR: TppDBPipeline
    DataSource = dtsCai_MovR
    UserName = 'Cai_MovR'
    Left = 408
    Top = 288
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 408
    Top = 15
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Options = [poAllowCommandText]
    Left = 408
    Top = 72
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 410
    Top = 128
  end
  object dspCaixa_Busca: TDataSetProvider
    DataSet = qryCaixa_Busca
    Left = 123
    Top = 340
  end
  object cdsCaixa_Busca: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspCaixa_Busca'
    Left = 219
    Top = 340
    object cdsCaixa_BuscaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
  end
  object qryCaixa_Busca: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'c.codigo_caixa'
      'FROM P_CAIXA C'
      'WHERE c.codigo_caixa =:CAIXA'
      '')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 340
    object qryCaixa_BuscaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAI1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'V.tipo_venda,'
      'V.tipo_doc_venda,'
      'V.codigo_venda,'
      'V.hora_venda,'
      'v.os_venda,'
      'V.desconto_venda,'
      'V.valornota_venda AS "RECEBIDO",'
      'V.fatura_venda AS "TABELA",'
      '((v.desconto_venda * 100) / V.fatura_venda) AS "DESC_PORC",'
      'V.vendedor_venda,'
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'1'#39' THEN '#39'A Vista'#39
      '    WHEN '#39'2'#39' THEN '#39'Cartao de Cr'#233'dito'#39
      '    WHEN '#39'3'#39' THEN '#39'Cheque Pr'#233'-Datado'#39
      '    WHEN '#39'4'#39' THEN '#39'Conv'#234'nio'#39
      '    WHEN '#39'5'#39' THEN '#39'A Prazo'#39
      '    WHEN '#39'6'#39' THEN '#39'Outros'#39
      'END AS RESUMO_CAIXA,'
      'V.exclusao_venda,'
      'V.notafiscal_venda,'
      'V.serie_venda,'
      
        'CASE WHEN V.entrega_venda = '#39'T'#39' THEN (V.fatura_venda - V.descont' +
        'o_venda)'
      'END AS "ENTREGA",'
      'V.cliente_venda,'
      'C.nome_cliente,'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'1'#39' THEN (V.fatura_venda - V.desconto_venda) '
      '             ELSE 0'
      'END AS "A_VISTA",'
      ''
      
        'CASE WHEN (V.data_venda = V.vencimen01_venda) AND (P.caixa_cpaga' +
        'mento > 1)'
      '    THEN V.valornota_venda'
      '    ELSE 0'
      'END AS "ENTRADAS",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'2'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "CARTAO",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'3'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "CHEQUE",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'4'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "CONVENIO",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'5'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "A_PRAZO",'
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'6'#39' THEN V.valornota_venda'
      '             ELSE 0'
      'END AS "OUTROS"'
      ''
      'FROM P_VENDAS V'
      
        'LEFT OUTER JOIN P_CPAGAMENTO P ON (P.codigo_cpagamento=V.cpagame' +
        'nto_venda)'
      
        'LEFT OUTER JOIN E_CLIENTE C ON (C.codigo_cliente=V.cliente_venda' +
        ')'
      'WHERE'
      'V.cpagamento_venda<>'#39'7'#39' AND'
      'V.caixa_venda=:CAI1 AND'
      'V.serie_venda<>:SER1 AND'
      '((v.tipo_doc_venda = '#39'1'#39') or (v.tipo_doc_venda = '#39#39'))'
      'AND SUBSTRING(V.chave_venda FROM 1 FOR 8) =:CHAVE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 23
    Top = 131
    object qryVendasTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qryVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object qryVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendasOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object qryVendasDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Precision = 15
      Size = 2
    end
    object qryVendasTABELA: TFMTBCDField
      FieldName = 'TABELA'
      Precision = 15
      Size = 2
    end
    object qryVendasDESC_PORC: TFMTBCDField
      FieldName = 'DESC_PORC'
      Precision = 15
      Size = 4
    end
    object qryVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVendasRESUMO_CAIXA: TStringField
      FieldName = 'RESUMO_CAIXA'
      FixedChar = True
      Size = 17
    end
    object qryVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object qryVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendasENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
    object qryVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryVendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryVendasA_VISTA: TFMTBCDField
      FieldName = 'A_VISTA'
      Precision = 15
      Size = 2
    end
    object qryVendasENTRADAS: TFMTBCDField
      FieldName = 'ENTRADAS'
      Precision = 15
      Size = 2
    end
    object qryVendasCARTAO: TFMTBCDField
      FieldName = 'CARTAO'
      Precision = 15
      Size = 2
    end
    object qryVendasCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object qryVendasCONVENIO: TFMTBCDField
      FieldName = 'CONVENIO'
      Precision = 15
      Size = 2
    end
    object qryVendasA_PRAZO: TFMTBCDField
      FieldName = 'A_PRAZO'
      Precision = 15
      Size = 2
    end
    object qryVendasOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Left = 95
    Top = 131
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAI1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVendas'
    Left = 167
    Top = 131
    object cdsVendasTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendasOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsVendasDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Precision = 15
      Size = 2
    end
    object cdsVendasTABELA: TFMTBCDField
      FieldName = 'TABELA'
      Precision = 15
      Size = 2
    end
    object cdsVendasDESC_PORC: TFMTBCDField
      FieldName = 'DESC_PORC'
      Precision = 15
      Size = 4
    end
    object cdsVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendasRESUMO_CAIXA: TStringField
      FieldName = 'RESUMO_CAIXA'
      FixedChar = True
      Size = 17
    end
    object cdsVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendasENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
    object cdsVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVendasNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsVendasA_VISTA: TFMTBCDField
      FieldName = 'A_VISTA'
      Precision = 15
      Size = 2
    end
    object cdsVendasENTRADAS: TFMTBCDField
      FieldName = 'ENTRADAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasCARTAO: TFMTBCDField
      FieldName = 'CARTAO'
      Precision = 15
      Size = 2
    end
    object cdsVendasCHEQUE: TFMTBCDField
      FieldName = 'CHEQUE'
      Precision = 15
      Size = 2
    end
    object cdsVendasCONVENIO: TFMTBCDField
      FieldName = 'CONVENIO'
      Precision = 15
      Size = 2
    end
    object cdsVendasA_PRAZO: TFMTBCDField
      FieldName = 'A_PRAZO'
      Precision = 15
      Size = 2
    end
    object cdsVendasOUTROS: TFMTBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = cdsVendas
    Left = 239
    Top = 131
  end
  object ppVendas_Turno: TppDBPipeline
    DataSource = dtsVendas_Turno
    UserName = 'Vendas_Turno'
    Left = 410
    Top = 184
    object ppVendas_TurnoppField1: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 0
    end
    object ppVendas_TurnoppField2: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object ppVendas_TurnoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppVendas_TurnoppField4: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 3
    end
    object ppVendas_TurnoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppVendas_TurnoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object ppVendas_TurnoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECEBIDO'
      FieldName = 'RECEBIDO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object ppVendas_TurnoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'TABELA'
      FieldName = 'TABELA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object ppVendas_TurnoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_PORC'
      FieldName = 'DESC_PORC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 8
    end
    object ppVendas_TurnoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppVendas_TurnoppField11: TppField
      FieldAlias = 'RESUMO_CAIXA'
      FieldName = 'RESUMO_CAIXA'
      FieldLength = 17
      DisplayWidth = 17
      Position = 10
    end
    object ppVendas_TurnoppField12: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 11
    end
    object ppVendas_TurnoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppVendas_TurnoppField14: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppVendas_TurnoppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTREGA'
      FieldName = 'ENTREGA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object ppVendas_TurnoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppVendas_TurnoppField17: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 16
    end
    object ppVendas_TurnoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'A_VISTA'
      FieldName = 'A_VISTA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 17
    end
    object ppVendas_TurnoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADAS'
      FieldName = 'ENTRADAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 18
    end
    object ppVendas_TurnoppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARTAO'
      FieldName = 'CARTAO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 19
    end
    object ppVendas_TurnoppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE'
      FieldName = 'CHEQUE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 20
    end
    object ppVendas_TurnoppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONVENIO'
      FieldName = 'CONVENIO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 21
    end
    object ppVendas_TurnoppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'A_PRAZO'
      FieldName = 'A_PRAZO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 22
    end
    object ppVendas_TurnoppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'OUTROS'
      FieldName = 'OUTROS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 23
    end
    object ppVendas_TurnoppField25: TppField
      FieldAlias = 'CHAVE_VENDA'
      FieldName = 'CHAVE_VENDA'
      FieldLength = 21
      DisplayWidth = 21
      Position = 24
    end
  end
  object ppVendas_Dev: TppDBPipeline
    DataSource = dtsVendas_Dev
    UserName = 'Vendas_Dev'
    Left = 408
    Top = 240
    object ppVendas_DevppField1: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 0
    end
    object ppVendas_DevppField2: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object ppVendas_DevppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppVendas_DevppField4: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 3
    end
    object ppVendas_DevppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppVendas_DevppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECEBIDO'
      FieldName = 'RECEBIDO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object ppVendas_DevppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TABELA'
      FieldName = 'TABELA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object ppVendas_DevppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_PORC'
      FieldName = 'DESC_PORC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object ppVendas_DevppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppVendas_DevppField10: TppField
      FieldAlias = 'RESUMO_CAIXA'
      FieldName = 'RESUMO_CAIXA'
      FieldLength = 17
      DisplayWidth = 17
      Position = 9
    end
    object ppVendas_DevppField11: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppVendas_DevppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppVendas_DevppField13: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object ppVendas_DevppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTREGA'
      FieldName = 'ENTREGA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 13
    end
    object ppVendas_DevppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppVendas_DevppField16: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 15
    end
    object ppVendas_DevppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'A_VISTA'
      FieldName = 'A_VISTA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 16
    end
    object ppVendas_DevppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADAS'
      FieldName = 'ENTRADAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 17
    end
    object ppVendas_DevppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARTAO'
      FieldName = 'CARTAO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 18
    end
    object ppVendas_DevppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE'
      FieldName = 'CHEQUE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 19
    end
    object ppVendas_DevppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONVENIO'
      FieldName = 'CONVENIO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 20
    end
    object ppVendas_DevppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'A_PRAZO'
      FieldName = 'A_PRAZO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 21
    end
    object ppVendas_DevppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'OUTROS'
      FieldName = 'OUTROS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 22
    end
  end
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAI1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT DISTINCT c.codigo_cliente'
      ''
      'FROM P_VENDAS V'
      
        'LEFT OUTER JOIN P_CPAGAMENTO P ON (P.codigo_cpagamento=V.cpagame' +
        'nto_venda)'
      
        'LEFT OUTER JOIN E_CLIENTE C ON (C.codigo_cliente=V.cliente_venda' +
        ')'
      'WHERE'
      'V.cpagamento_venda<>'#39'7'#39' AND'
      'V.caixa_venda=:CAI1 AND'
      'V.serie_venda<>:SER1 AND'
      '((v.tipo_doc_venda = '#39'1'#39') or (v.tipo_doc_venda = '#39#39'))'
      'AND SUBSTRING(V.chave_venda FROM 1 FOR 8) =:CHAVE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 26
    Top = 394
    object qryClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Left = 122
    Top = 394
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAI1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SER1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCliente'
    Left = 221
    Top = 394
    object cdsClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
  end
end
