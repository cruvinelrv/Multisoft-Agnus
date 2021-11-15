object dmFn0201: TdmFn0201
  OldCreateOrder = False
  Left = 332
  Top = 204
  Height = 367
  Width = 336
  object qryReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.tipo_documento_receber, r.codigo_c' +
        'liente_receber,'
      
        '       r.emissao_receber, r.vencimento_receber, r.previsao_receb' +
        'er, r.alteracao_receber,'
      
        '       r.valor_receber, r.parcial_receber, r.descjuros_receber, ' +
        'r.comissao_receber,'
      
        '       r.codigo_portador_receber, r.codigo_centro_receber, r.cod' +
        'igo_conta_receber,'
      
        '       r.codigo_corrente_receber, r.codigo_vendedor_receber, r.c' +
        'odigo_parceiro_receber,'
      
        '       r.historico_receber, r.codigo_banco_receber, r.bloquete_r' +
        'eceber, r.emis_bloq_receber,'
      
        '       r.venc_bloq_receber, r.remessa_receber, r.mora_dia_recebe' +
        'r, r.instrucao_receber,'
      
        '       r.desconto_receber, r.desc_ate_receber, r.condicoes_receb' +
        'er, r.tipo_baixa_receber,'
      
        '       r.tipo_dup_receber, r.movimento_receber, r.codigo_caixa_r' +
        'eceber, r.s_receber,'
      
        '       r.formapagto_receber, r.tit_princ_receber, r.cod_empresa,' +
        ' t.descricao_tipodocumento,'
      
        '       c.nome_cliente, p.descricao_portador, c1.descricao_centro' +
        ', c2.descricao_conta,'
      
        '       v.nome_vendedor, p1.nome_parceiro, b.descricao_banco, r.v' +
        'alorpago_receber'
      'from P_RECEBER r'
      
        '     left outer join e_tipodocumento t on (r.tipo_documento_rece' +
        'ber = t.codigo_tipodocumento)'
      
        '     left outer join e_cliente c on (r.codigo_cliente_receber = ' +
        'c.codigo_cliente)'
      
        '     left outer join e_portador p on (r.codigo_portador_receber ' +
        '= p.codigo_portador)'
      
        '     left outer join e_centro c1 on (r.codigo_centro_receber = c' +
        '1.codigo_centro)'
      
        '     left outer join e_conta c2 on (r.codigo_conta_receber = c2.' +
        'codigo_conta)'
      
        '     left outer join p_vendedor v on (r.codigo_vendedor_receber ' +
        '= v.codigo_vendedor)'
      
        '     left outer join p_parceiro p1 on (r.codigo_parceiro_receber' +
        ' = p1.codigo_parceiro)'
      
        '     left outer join p_banco b on (r.codigo_banco_receber = b.co' +
        'digo_banco)'
      
        '     left outer join p_caixa c3 on (r.codigo_caixa_receber = c3.' +
        'codigo_caixa)'
      
        'where r.duplicata_receber =:DUPLICATA and r.cod_empresa =:EMPRES' +
        'A')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 16
    object qryReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 11
    end
    object qryReceberTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryReceberEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberALTERACAO_RECEBER: TDateField
      FieldName = 'ALTERACAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberDESCJUROS_RECEBER: TFMTBCDField
      FieldName = 'DESCJUROS_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberCOMISSAO_RECEBER: TFMTBCDField
      FieldName = 'COMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCODIGO_CENTRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_CENTRO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCODIGO_CORRENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CORRENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCODIGO_PARCEIRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_PARCEIRO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCODIGO_BANCO_RECEBER: TIntegerField
      FieldName = 'CODIGO_BANCO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberBLOQUETE_RECEBER: TStringField
      FieldName = 'BLOQUETE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object qryReceberEMIS_BLOQ_RECEBER: TDateField
      FieldName = 'EMIS_BLOQ_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberVENC_BLOQ_RECEBER: TDateField
      FieldName = 'VENC_BLOQ_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberREMESSA_RECEBER: TIntegerField
      FieldName = 'REMESSA_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberMORA_DIA_RECEBER: TFMTBCDField
      FieldName = 'MORA_DIA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberINSTRUCAO_RECEBER: TStringField
      FieldName = 'INSTRUCAO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryReceberDESCONTO_RECEBER: TFMTBCDField
      FieldName = 'DESCONTO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberDESC_ATE_RECEBER: TDateField
      FieldName = 'DESC_ATE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCONDICOES_RECEBER: TStringField
      FieldName = 'CONDICOES_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object qryReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceberTIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceberMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCODIGO_CAIXA_RECEBER: TIntegerField
      FieldName = 'CODIGO_CAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberS_RECEBER: TStringField
      FieldName = 'S_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceberFORMAPAGTO_RECEBER: TStringField
      FieldName = 'FORMAPAGTO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceberTIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qryReceberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryReceberDESCRICAO_TIPODOCUMENTO: TStringField
      FieldName = 'DESCRICAO_TIPODOCUMENTO'
      ProviderFlags = []
    end
    object qryReceberNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryReceberDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      ProviderFlags = []
      FixedChar = True
    end
    object qryReceberDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
      ProviderFlags = []
    end
    object qryReceberDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object qryReceberNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 30
    end
    object qryReceberNOME_PARCEIRO: TStringField
      FieldName = 'NOME_PARCEIRO'
      ProviderFlags = []
      Size = 50
    end
    object qryReceberDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object qryReceberVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryReceberCODIGO_CONTA_RECEBER: TStringField
      Alignment = taRightJustify
      FieldName = 'CODIGO_CONTA_RECEBER'
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = qryReceber
    Left = 128
    Top = 16
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspReceber'
    Left = 216
    Top = 16
    object cdsReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 11
    end
    object cdsReceberTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsReceberEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberALTERACAO_RECEBER: TDateField
      FieldName = 'ALTERACAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberVALOR_RECEBER: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsReceberPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberDESCJUROS_RECEBER: TFMTBCDField
      FieldName = 'DESCJUROS_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberCOMISSAO_RECEBER: TFMTBCDField
      FieldName = 'COMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCODIGO_CENTRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_CENTRO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCODIGO_CORRENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CORRENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCODIGO_PARCEIRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_PARCEIRO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCODIGO_BANCO_RECEBER: TIntegerField
      FieldName = 'CODIGO_BANCO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberBLOQUETE_RECEBER: TStringField
      FieldName = 'BLOQUETE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsReceberEMIS_BLOQ_RECEBER: TDateField
      FieldName = 'EMIS_BLOQ_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberVENC_BLOQ_RECEBER: TDateField
      FieldName = 'VENC_BLOQ_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberREMESSA_RECEBER: TIntegerField
      FieldName = 'REMESSA_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberMORA_DIA_RECEBER: TFMTBCDField
      FieldName = 'MORA_DIA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberINSTRUCAO_RECEBER: TStringField
      FieldName = 'INSTRUCAO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsReceberDESCONTO_RECEBER: TFMTBCDField
      FieldName = 'DESCONTO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberDESC_ATE_RECEBER: TDateField
      FieldName = 'DESC_ATE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCONDICOES_RECEBER: TStringField
      FieldName = 'CONDICOES_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 55
    end
    object cdsReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsReceberTIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsReceberMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCODIGO_CAIXA_RECEBER: TIntegerField
      FieldName = 'CODIGO_CAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberS_RECEBER: TStringField
      FieldName = 'S_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsReceberFORMAPAGTO_RECEBER: TStringField
      FieldName = 'FORMAPAGTO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsReceberTIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsReceberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsReceberDESCRICAO_TIPODOCUMENTO: TStringField
      FieldName = 'DESCRICAO_TIPODOCUMENTO'
      ProviderFlags = []
    end
    object cdsReceberNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsReceberDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      ProviderFlags = []
      FixedChar = True
    end
    object cdsReceberDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
      ProviderFlags = []
    end
    object cdsReceberDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object cdsReceberNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 30
    end
    object cdsReceberNOME_PARCEIRO: TStringField
      FieldName = 'NOME_PARCEIRO'
      ProviderFlags = []
      Size = 50
    end
    object cdsReceberDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object cdsReceberVALORPAGO_RECEBER: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsReceberHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsReceberCODIGO_CONTA_RECEBER: TStringField
      Alignment = taRightJustify
      FieldName = 'CODIGO_CONTA_RECEBER'
    end
  end
  object cdsTemporario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DUPLICATA_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPO_DOCUMENTO_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_CLIENTE_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'EMISSAO_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENTO_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'PREVISAO_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'ALTERACAO_REBER'
        DataType = ftDate
      end
      item
        Name = 'VALOR_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PARCIAL_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALORPAGO_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCJUROS_REBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COMISSA_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGO_PORTADOR_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_CENTRO_REBER'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_CORRENTE_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_VENDEDOR_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_PARCEIRO_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'HISTORICO_RECEBER'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'CODIGO_BANCO_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'BLOQUETE_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMIS_BLOQ_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'VENC_BLOQ_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'REMESSA_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'MORA_DIA_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INSTRUCAO_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCONTO_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESC_ATE_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'CONDICOES_RECEBER'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TIPO_BAIXA_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPO_DUP_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MOVIMENTO_RECEBER'
        DataType = ftDate
      end
      item
        Name = 'CODIGO_CAIXA_RECEBER'
        DataType = ftInteger
      end
      item
        Name = 'S_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FORMAPAGTO_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIT_PRINC_RECEBER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGO_CONTA_RECEBER'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 216
    Top = 76
    Data = {
      AC0400009619E0BD010000001800000024000000000003000000AC0411445550
      4C49434154415F52454345424552010049000000010005574944544802000200
      1400165449504F5F444F43554D454E544F5F5245434542455204000100000000
      0016434F4449474F5F434C49454E54455F524543454245520400010000000000
      0F454D495353414F5F5245434542455204000600000000001256454E43494D45
      4E544F5F52454345424552040006000000000010505245564953414F5F524543
      4542455204000600000000000F414C5445524143414F5F524542455204000600
      000000000D56414C4F525F524543454245520100490000000100055749445448
      0200020014000F5041524349414C5F5245434542455201004900000001000557
      494454480200020014001156414C4F525041474F5F5245434542455201004900
      000001000557494454480200020014000F444553434A55524F535F5245424552
      01004900000001000557494454480200020014000F434F4D495353415F524543
      45424552010049000000010005574944544802000200140017434F4449474F5F
      504F525441444F525F52454345424552040001000000000013434F4449474F5F
      43454E54524F5F5245424552040001000000000017434F4449474F5F434F5252
      454E54455F52454345424552040001000000000017434F4449474F5F56454E44
      45444F525F52454345424552040001000000000017434F4449474F5F50415243
      4549524F5F52454345424552040001000000000011484953544F5249434F5F52
      454345424552010049000000010005574944544802000200FA0014434F444947
      4F5F42414E434F5F52454345424552040001000000000010424C4F5155455445
      5F52454345424552010049000000010005574944544802000200140011454D49
      535F424C4F515F5245434542455204000600000000001156454E435F424C4F51
      5F5245434542455204000600000000000F52454D455353415F52454345424552
      0400010000000000104D4F52415F4449415F5245434542455201004900000001
      0005574944544802000200140011494E5354525543414F5F5245434542455201
      0049000000010005574944544802000200140010444553434F4E544F5F524543
      45424552010049000000010005574944544802000200140010444553435F4154
      455F52454345424552040006000000000011434F4E4449434F45535F52454345
      4245520100490000000100055749445448020002006400125449504F5F424149
      58415F5245434542455201004900000001000557494454480200020014001054
      49504F5F4455505F524543454245520100490000000100055749445448020002
      001400114D4F56494D454E544F5F52454345424552040006000000000014434F
      4449474F5F43414958415F52454345424552040001000000000009535F524543
      45424552010049000000010005574944544802000200140012464F524D415041
      47544F5F52454345424552010049000000010005574944544802000200140011
      5449545F5052494E435F52454345424552010049000000010005574944544802
      000200140014434F4449474F5F434F4E54415F52454345424552010049000000
      01000557494454480200020014000000}
    object cdsTemporarioDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
    end
    object cdsTemporarioTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object cdsTemporarioCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
    end
    object cdsTemporarioEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsTemporarioVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsTemporarioPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsTemporarioALTERACAO_REBER: TDateField
      FieldName = 'ALTERACAO_REBER'
    end
    object cdsTemporarioVALOR_RECEBER: TStringField
      FieldName = 'VALOR_RECEBER'
    end
    object cdsTemporarioPARCIAL_RECEBER: TStringField
      FieldName = 'PARCIAL_RECEBER'
    end
    object cdsTemporarioVALORPAGO_RECEBER: TStringField
      FieldName = 'VALORPAGO_RECEBER'
    end
    object cdsTemporarioDESCJUROS_REBER: TStringField
      FieldName = 'DESCJUROS_REBER'
    end
    object cdsTemporarioCOMISSA_RECEBER: TStringField
      FieldName = 'COMISSA_RECEBER'
    end
    object cdsTemporarioCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object cdsTemporarioCODIGO_CENTRO_REBER: TIntegerField
      FieldName = 'CODIGO_CENTRO_REBER'
    end
    object cdsTemporarioCODIGO_CORRENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CORRENTE_RECEBER'
    end
    object cdsTemporarioCODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
    end
    object cdsTemporarioCODIGO_PARCEIRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_PARCEIRO_RECEBER'
    end
    object cdsTemporarioHISTORICO_RECEBER: TStringField
      FieldName = 'HISTORICO_RECEBER'
      Size = 250
    end
    object cdsTemporarioCODIGO_BANCO_RECEBER: TIntegerField
      FieldName = 'CODIGO_BANCO_RECEBER'
    end
    object cdsTemporarioBLOQUETE_RECEBER: TStringField
      FieldName = 'BLOQUETE_RECEBER'
    end
    object cdsTemporarioEMIS_BLOQ_RECEBER: TDateField
      FieldName = 'EMIS_BLOQ_RECEBER'
    end
    object cdsTemporarioVENC_BLOQ_RECEBER: TDateField
      FieldName = 'VENC_BLOQ_RECEBER'
    end
    object cdsTemporarioREMESSA_RECEBER: TIntegerField
      FieldName = 'REMESSA_RECEBER'
    end
    object cdsTemporarioMORA_DIA_RECEBER: TStringField
      FieldName = 'MORA_DIA_RECEBER'
    end
    object cdsTemporarioINSTRUCAO_RECEBER: TStringField
      FieldName = 'INSTRUCAO_RECEBER'
    end
    object cdsTemporarioDESCONTO_RECEBER: TStringField
      FieldName = 'DESCONTO_RECEBER'
    end
    object cdsTemporarioDESC_ATE_RECEBER: TDateField
      FieldName = 'DESC_ATE_RECEBER'
    end
    object cdsTemporarioCONDICOES_RECEBER: TStringField
      FieldName = 'CONDICOES_RECEBER'
      Size = 100
    end
    object cdsTemporarioTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
    end
    object cdsTemporarioTIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
    end
    object cdsTemporarioMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object cdsTemporarioCODIGO_CAIXA_RECEBER: TIntegerField
      FieldName = 'CODIGO_CAIXA_RECEBER'
    end
    object cdsTemporarioS_RECEBER: TStringField
      FieldName = 'S_RECEBER'
    end
    object cdsTemporarioFORMAPAGTO_RECEBER: TStringField
      FieldName = 'FORMAPAGTO_RECEBER'
    end
    object cdsTemporarioTIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
    end
    object cdsTemporarioCODIGO_CONTA_RECEBER: TStringField
      FieldName = 'CODIGO_CONTA_RECEBER'
    end
  end
  object sqqReabreTit: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 76
  end
  object cdsParcelas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 217
    Top = 134
    Data = {
      540000009619E0BD01000000180000000200000000000300000054000D4E554D
      5F444F43554D454E544F01004900000001000557494454480200020014000F44
      4154415F56454E43494D454E544F04000600000000000000}
    object cdsParcelasNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
    end
    object cdsParcelasDATA_VENCIMENTO: TDateField
      FieldName = 'DATA_VENCIMENTO'
    end
  end
  object qryParcelas2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 200
  end
  object dspParcelas2: TDataSetProvider
    DataSet = qryParcelas2
    Options = [poAllowCommandText]
    Left = 128
    Top = 200
  end
  object cdsParcelas2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParcelas2'
    Left = 216
    Top = 200
  end
  object qryReceberDemo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(*) AS TOTALREG FROM P_RECEBER'
      'WHERE COD_EMPRESA = :EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 277
  end
  object dspReceberDemo: TDataSetProvider
    DataSet = qryReceberDemo
    Options = [poAllowCommandText]
    Left = 140
    Top = 277
  end
  object cdsReceberDemo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReceberDemo'
    Left = 252
    Top = 277
    object cdsReceberDemoTOTALREG: TIntegerField
      FieldName = 'TOTALREG'
      Required = True
    end
  end
end
