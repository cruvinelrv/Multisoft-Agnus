object dmRL0601: TdmRL0601
  OldCreateOrder = False
  Left = 282
  Top = 137
  Height = 428
  Width = 483
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
        Size = 2
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
      '    WHEN '#39'1'#39' THEN V.valornota_venda'
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
      ''
      'CASE v.tipo_doc_venda'
      'WHEN '#39'3'#39' THEN (v.valornota_venda)'
      'ELSE 0'
      'END AS "DEVOLUCAO",'
      ''
      'CA.saldo_inicial_caixa,'
      'CA.entradas_caixa'
      ''
      'FROM P_VENDAS V'
      
        'LEFT OUTER JOIN P_CPAGAMENTO P ON (P.codigo_cpagamento=V.cpagame' +
        'nto_venda)'
      
        'LEFT OUTER JOIN E_CLIENTE C ON (C.codigo_cliente=V.cliente_venda' +
        ')'
      
        'LEFT OUTER JOIN P_CAIXA CA ON (SUBSTRING(CA.chave_caixa from 12 ' +
        'for 10) = '#39#39')'
      'WHERE'
      'V.cpagamento_venda<>'#39'7'#39' AND'
      'V.caixa_venda=:CAI1 AND'
      'V.serie_venda<>:SER1 AND'
      '( (V.chave_venda IS NULL) or (V.chave_venda = '#39#39') ) ')
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
    object qryVendasDEVOLUCAO: TFMTBCDField
      FieldName = 'DEVOLUCAO'
      Precision = 15
      Size = 2
    end
    object qryVendasSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryVendasENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryVendasENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
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
        Size = 2
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
    object cdsVendasDEVOLUCAO: TFMTBCDField
      FieldName = 'DEVOLUCAO'
      Precision = 15
      Size = 2
    end
    object cdsVendasSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsVendasENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsVendasENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
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
      'AND (M.tipo_caixamov='#39'E'#39')'
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS VALOR_MOV,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'D'#39') AND (M.tipo_caixamov='#39'E'#39')'
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS DINHEIRO,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'C'#39') AND (M.tipo_caixamov='#39'E'#39')'
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS CHEQUE,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'O'#39') AND (M.tipo_caixamov='#39'E'#39')'
      '    THEN M.valor_caixamov'
      '    ELSE 0'
      'END AS OUTROS,'
      ''
      'CASE M.tipo_pag_caixamov'
      '    WHEN '#39'D'#39' THEN '#39'Dinheiro'#39
      '    WHEN '#39'C'#39' THEN '#39'Cheque'#39
      '    WHEN '#39'O'#39' THEN '#39'Outra'#39
      'END AS TIPO_PAGTO,'
      'M.hora_caixamov, M.observacao_caixamov, M.usuario_caixamov'
      ''
      'FROM P_CAIXA_MOV M'
      'WHERE'
      'M.caixa_caixamov=:CAIMOV AND M.chave_caixamov=:CHAMOV')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 72
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
    object cdsCaixaSALDO_INICIAL_CAIXA_1: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA_1'
      Precision = 15
      Size = 2
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
    UserName = 'Caixa1'
    Left = 312
    Top = 16
  end
  object qryCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
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
      'C.chave_caixa,'
      'C.SALDO_INICIAL_CAIXA'
      'FROM P_CAIXA C'
      'WHERE SUBSTRING(C.chave_caixa from 12 for 10) = '#39#39
      'AND c.codigo_caixa =:CAIXA')
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
      end>
    SQL.Strings = (
      'SELECT'
      'V.tipo_venda,'
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
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'1'#39' THEN V.valornota_venda'
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
      ''
      'CA.saldo_inicial_caixa,'
      'CA.entradas_caixa'
      ''
      'FROM P_VENDAS V'
      
        'LEFT OUTER JOIN P_CPAGAMENTO P ON (P.codigo_cpagamento=V.cpagame' +
        'nto_venda)'
      
        'LEFT OUTER JOIN E_CLIENTE C ON (C.codigo_cliente=V.cliente_venda' +
        ')'
      
        'LEFT OUTER JOIN P_CAIXA CA ON (SUBSTRING(CA.chave_caixa from 12 ' +
        'for 10) = '#39#39')'
      'WHERE'
      'V.cpagamento_venda<>'#39'7'#39' AND'
      'V.caixa_venda=:CAI1 AND'
      'V.serie_venda<>:SER1 AND'
      '( (V.chave_venda IS NULL) or (V.chave_venda = '#39#39') ) AND'
      'V.tipo_doc_venda <> '#39'3'#39' ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 184
    object qryVendas_TurnoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
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
    object qryVendas_TurnoSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryVendas_TurnoENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
  end
  object dspVendas_Turno: TDataSetProvider
    DataSet = qryVendas_Turno
    Left = 123
    Top = 184
  end
  object cdsVendas_Turno: TClientDataSet
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
      end>
    ProviderName = 'dspVendas_Turno'
    Left = 217
    Top = 184
    object cdsVendas_TurnoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
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
    object cdsVendas_TurnoSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_TurnoENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
  end
  object dtsVendas_Turno: TDataSource
    DataSet = cdsVendas_Turno
    Left = 312
    Top = 184
  end
  object ppVendas_Turno: TppDBPipeline
    DataSource = dtsVendas_Turno
    UserName = 'Vendas_Turno'
    Left = 403
    Top = 183
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
      ''
      'CASE P.caixa_cpagamento'
      '    WHEN '#39'1'#39' THEN V.valornota_venda'
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
      ''
      'CA.saldo_inicial_caixa,'
      'CA.entradas_caixa'
      ''
      'FROM P_VENDAS V'
      
        'LEFT OUTER JOIN P_CPAGAMENTO P ON (P.codigo_cpagamento=V.cpagame' +
        'nto_venda)'
      
        'LEFT OUTER JOIN E_CLIENTE C ON (C.codigo_cliente=V.cliente_venda' +
        ')'
      
        'LEFT OUTER JOIN P_CAIXA CA ON (SUBSTRING(CA.chave_caixa from 12 ' +
        'for 10) = '#39#39')'
      'WHERE'
      'V.cpagamento_venda<>'#39'7'#39' AND'
      'V.caixa_venda=:CAI1 AND'
      'V.serie_venda<>:SER1 AND'
      '( (V.chave_venda IS NULL) or (V.chave_venda = '#39#39') ) AND'
      
        '((V.tipo_doc_venda = '#39'3'#39') or (V.tipo_doc_venda = '#39'4'#39') or (V.tipo' +
        '_doc_venda = '#39'5'#39')) ')
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
    object qryVendas_DevSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object qryVendas_DevENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
  end
  object dspVendas_Dev: TDataSetProvider
    DataSet = qryVendas_Dev
    Left = 123
    Top = 235
  end
  object cdsVendas_Dev: TClientDataSet
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
    object cdsVendas_DevSALDO_INICIAL_CAIXA: TFMTBCDField
      FieldName = 'SALDO_INICIAL_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      Precision = 15
      Size = 2
    end
    object cdsVendas_DevENTREGA: TFMTBCDField
      FieldName = 'ENTREGA'
      Precision = 15
      Size = 2
    end
  end
  object dtsVendas_Dev: TDataSource
    DataSet = cdsVendas_Dev
    Left = 312
    Top = 235
  end
  object ppVendas_Dev: TppDBPipeline
    DataSource = dtsVendas_Dev
    UserName = 'Vendas_Dev'
    Left = 403
    Top = 234
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
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHAMOV'
        ParamType = ptInput
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
      'END AS VALOR_MOV,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'D'#39')'
      '    THEN M.valor_caixamov'
      'END AS DINHEIRO,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'C'#39')'
      '    THEN M.valor_caixamov'
      'END AS CHEQUE,'
      'CASE WHEN (M.tipo_pag_caixamov='#39'O'#39')'
      '    THEN M.valor_caixamov'
      'END AS OUTROS,'
      ''
      'CASE M.tipo_pag_caixamov'
      '    WHEN '#39'D'#39' THEN '#39'Dinheiro'#39
      '    WHEN '#39'C'#39' THEN '#39'Cheque'#39
      '    WHEN '#39'O'#39' THEN '#39'Outra'#39
      'END AS TIPO_PAGTO,'
      'M.hora_caixamov, M.observacao_caixamov, M.usuario_caixamov'
      ''
      'FROM P_CAIXA_MOV M'
      ''
      'WHERE'
      'M.caixa_caixamov=:CAIMOV AND M.chave_caixamov=:CHAMOV'
      'AND M.tipo_caixamov='#39'R'#39)
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
  object ppVendas: TppDBPipeline
    DataSource = dsVendas
    UserName = 'Vendas'
    Left = 320
    Top = 128
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
end
