object dmFn0202: TdmFn0202
  OldCreateOrder = False
  Left = 197
  Top = 146
  Height = 557
  Width = 614
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
        'alorpago_receber,'
      '       r.data_base_receber'
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
    Left = 36
    Top = 24
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
    object qryReceberDATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCODIGO_CONTA_RECEBER: TStringField
      FieldName = 'CODIGO_CONTA_RECEBER'
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = qryReceber
    Options = [poAllowCommandText]
    Left = 132
    Top = 24
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
    Left = 228
    Top = 24
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
      DefaultExpression = '0'
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
    object cdsReceberDATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCODIGO_CONTA_RECEBER: TStringField
      FieldName = 'CODIGO_CONTA_RECEBER'
    end
  end
  object qryRecibo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod_empresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.codigo_recibo, p.num_doc_recibo, p.tip_doc_recibo, p.em' +
        'is_pgto_recibo,'
      
        '       p.vencimento_recibo, p.valor_recibo, p.juros_desc_recibo,' +
        ' p.valor_pago_recibo,'
      
        '       p.cli_for_recibo, p.favorecido_recibo, p.cnpj_recibo, p.e' +
        'ndereco_recibo,'
      
        '       p.bairro_recibo, p.codigo_cidade, p.estado_recibo, p.hist' +
        'orico_recibo,'
      
        '       c.descricao_cidade, c1.nome_cliente, p.cod_empresa,  p.hi' +
        'storico2_recibo'
      'from P_RECIBO p'
      
        '     left outer join e_cidade c on (c.codigo_cidade = p.codigo_c' +
        'idade)'
      
        '     left outer join e_cliente c1 on (c1.codigo_cliente = p.cli_' +
        'for_recibo)'
      'where p.cod_empresa =:cod_empresa')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 80
    object qryReciboCODIGO_RECIBO: TIntegerField
      FieldName = 'CODIGO_RECIBO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryReciboNUM_DOC_RECIBO: TStringField
      FieldName = 'NUM_DOC_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qryReciboTIP_DOC_RECIBO: TStringField
      FieldName = 'TIP_DOC_RECIBO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryReciboEMIS_PGTO_RECIBO: TDateField
      FieldName = 'EMIS_PGTO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboVENCIMENTO_RECIBO: TDateField
      FieldName = 'VENCIMENTO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboVALOR_RECIBO: TFMTBCDField
      FieldName = 'VALOR_RECIBO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReciboJUROS_DESC_RECIBO: TFMTBCDField
      FieldName = 'JUROS_DESC_RECIBO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReciboVALOR_PAGO_RECIBO: TFMTBCDField
      FieldName = 'VALOR_PAGO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReciboCLI_FOR_RECIBO: TIntegerField
      FieldName = 'CLI_FOR_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboFAVORECIDO_RECIBO: TStringField
      FieldName = 'FAVORECIDO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryReciboCNPJ_RECIBO: TStringField
      FieldName = 'CNPJ_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object qryReciboENDERECO_RECIBO: TStringField
      FieldName = 'ENDERECO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryReciboBAIRRO_RECIBO: TStringField
      FieldName = 'BAIRRO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboESTADO_RECIBO: TStringField
      FieldName = 'ESTADO_RECIBO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qryReciboHISTORICO_RECIBO: TMemoField
      FieldName = 'HISTORICO_RECIBO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryReciboDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object qryReciboNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryReciboCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryReciboHISTORICO2_RECIBO: TMemoField
      FieldName = 'HISTORICO2_RECIBO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspRecibo: TDataSetProvider
    DataSet = qryRecibo
    Left = 132
    Top = 80
  end
  object cdsRecibo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspRecibo'
    Left = 228
    Top = 80
    object cdsReciboCODIGO_RECIBO: TIntegerField
      FieldName = 'CODIGO_RECIBO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsReciboNUM_DOC_RECIBO: TStringField
      FieldName = 'NUM_DOC_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsReciboTIP_DOC_RECIBO: TStringField
      FieldName = 'TIP_DOC_RECIBO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsReciboEMIS_PGTO_RECIBO: TDateField
      FieldName = 'EMIS_PGTO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboVENCIMENTO_RECIBO: TDateField
      FieldName = 'VENCIMENTO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboVALOR_RECIBO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_RECIBO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsReciboJUROS_DESC_RECIBO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'JUROS_DESC_RECIBO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsReciboVALOR_PAGO_RECIBO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_PAGO_RECIBO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsReciboCLI_FOR_RECIBO: TIntegerField
      FieldName = 'CLI_FOR_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboFAVORECIDO_RECIBO: TStringField
      FieldName = 'FAVORECIDO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsReciboCNPJ_RECIBO: TStringField
      FieldName = 'CNPJ_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsReciboENDERECO_RECIBO: TStringField
      FieldName = 'ENDERECO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsReciboBAIRRO_RECIBO: TStringField
      FieldName = 'BAIRRO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboESTADO_RECIBO: TStringField
      FieldName = 'ESTADO_RECIBO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsReciboHISTORICO_RECIBO: TMemoField
      FieldName = 'HISTORICO_RECIBO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsReciboDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object cdsReciboNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsReciboCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsReciboHISTORICO2_RECIBO: TMemoField
      FieldName = 'HISTORICO2_RECIBO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select e.codigo_cliente, e.utilizado_cliente, e.databloqueio_cli' +
        'ente'
      'from E_CLIENTE e'
      'where e.codigo_cliente =:CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 196
    object qryClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryClienteUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryClienteDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
  end
  object qryContaCorrente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.banco_resban, r.chave_resban, r.credito_resban, r.cod_e' +
        'mpresa'
      'from P_RESBAN r'
      'where r.chave_resban =:CHAVE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 244
    object qryContaCorrenteBANCO_RESBAN: TIntegerField
      FieldName = 'BANCO_RESBAN'
    end
    object qryContaCorrenteCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object qryContaCorrenteCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object qryContaCorrenteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object qryLancamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.codigo_conlan, c.corrente_conlan, c.conta_conlan, c.cen' +
        'tro_conlan,'
      
        '       c.cli_for_conlan, c.tipo_c_f_conlan, c.documento_conlan, ' +
        'c.data_conlan,'
      
        '       c.movimento_conlan, c.historico_conlan, c.valor_conlan, c' +
        '.tipo_conlan,'
      '       c.origem_conlan, c.cod_empresa'
      'from P_CONLAN c')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 292
    object qryLancamentoCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object qryLancamentoCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryLancamentoCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
    end
    object qryLancamentoCLI_FOR_CONLAN: TIntegerField
      FieldName = 'CLI_FOR_CONLAN'
    end
    object qryLancamentoTIPO_C_F_CONLAN: TStringField
      FieldName = 'TIPO_C_F_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryLancamentoDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object qryLancamentoDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object qryLancamentoMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object qryLancamentoHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object qryLancamentoVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object qryLancamentoTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryLancamentoORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryLancamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryLancamentoCONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
    end
  end
  object qryCai_Mov: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.cod_empresa, c.data_caixamov, c.valor_caixamov, c.hora_' +
        'caixamov,'
      
        '       c.observacao_caixamov, c.chave_caixamov, c.caixa_caixamov' +
        ', c.usuario_caixamov,'
      '       c.tipo_caixamov, c.tipo_pag_caixamov, c.titulo_caixamov'
      'from P_CAIXA_MOV c')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 348
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
    object qryCai_MovTIPO_PAG_CAIXAMOV: TStringField
      FieldName = 'TIPO_PAG_CAIXAMOV'
      Size = 1
    end
    object qryCai_MovTITULO_CAIXAMOV: TStringField
      FieldName = 'TITULO_CAIXAMOV'
      Size = 11
    end
    object qryCai_MovOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
  end
  object qryCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.cod_empresa, c.codigo_caixa, c.entradas_caixa, c.chave_' +
        'caixa'
      'from P_CAIXA c'
      'where substring(c.chave_caixa from 12 for 10) = '#39#39
      'and c.codigo_caixa =:CAIXA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 404
    object qryCaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
    object qryCaixaENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryCaixaCHAVE_CAIXA: TStringField
      FieldName = 'CHAVE_CAIXA'
      Required = True
      Size = 21
    end
  end
  object qryParcial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.codigo_parcial, p.duplicata_parcial, p.valor_parcial, p' +
        '.juros_parcial,'
      '       p.data_parcial, p.tipo_parcial'
      'from P_PARCIAL p'
      'where p.duplicata_parcial =:DOCUMENTO '
      ' ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 452
    object qryParcialCODIGO_PARCIAL: TIntegerField
      FieldName = 'CODIGO_PARCIAL'
      Required = True
    end
    object qryParcialDUPLICATA_PARCIAL: TStringField
      FieldName = 'DUPLICATA_PARCIAL'
      Size = 15
    end
    object qryParcialVALOR_PARCIAL: TFMTBCDField
      FieldName = 'VALOR_PARCIAL'
      Precision = 15
      Size = 2
    end
    object qryParcialJUROS_PARCIAL: TFMTBCDField
      FieldName = 'JUROS_PARCIAL'
      Precision = 15
      Size = 2
    end
    object qryParcialDATA_PARCIAL: TDateField
      FieldName = 'DATA_PARCIAL'
    end
    object qryParcialTIPO_PARCIAL: TStringField
      FieldName = 'TIPO_PARCIAL'
      FixedChar = True
      Size = 1
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Left = 132
    Top = 196
  end
  object dspContaCorrente: TDataSetProvider
    DataSet = qryContaCorrente
    Left = 132
    Top = 244
  end
  object dspLancamento: TDataSetProvider
    DataSet = qryLancamento
    Left = 132
    Top = 292
  end
  object dspCai_Mov: TDataSetProvider
    DataSet = qryCai_Mov
    Left = 132
    Top = 348
  end
  object dspCaixa: TDataSetProvider
    DataSet = qryCaixa
    Left = 132
    Top = 396
  end
  object dspParcial: TDataSetProvider
    DataSet = qryParcial
    Left = 132
    Top = 452
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspCliente'
    Left = 228
    Top = 196
    object cdsClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsClienteUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsClienteDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
  end
  object cdsContaCorrente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    ProviderName = 'dspContaCorrente'
    Left = 228
    Top = 244
    object cdsContaCorrenteBANCO_RESBAN: TIntegerField
      FieldName = 'BANCO_RESBAN'
    end
    object cdsContaCorrenteCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object cdsContaCorrenteCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsContaCorrenteCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object cdsLancamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLancamento'
    Left = 228
    Top = 292
    object cdsLancamentoCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsLancamentoCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsLancamentoCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
    end
    object cdsLancamentoCLI_FOR_CONLAN: TIntegerField
      FieldName = 'CLI_FOR_CONLAN'
    end
    object cdsLancamentoTIPO_C_F_CONLAN: TStringField
      FieldName = 'TIPO_C_F_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsLancamentoDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object cdsLancamentoDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsLancamentoMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsLancamentoHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsLancamentoVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object cdsLancamentoTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsLancamentoORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsLancamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsLancamentoCONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
    end
  end
  object cdsCai_Mov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCai_Mov'
    Left = 228
    Top = 348
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
    object cdsCai_MovTIPO_PAG_CAIXAMOV: TStringField
      FieldName = 'TIPO_PAG_CAIXAMOV'
      Size = 1
    end
    object cdsCai_MovTITULO_CAIXAMOV: TStringField
      FieldName = 'TITULO_CAIXAMOV'
      Size = 11
    end
    object cdsCai_MovOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 80
    end
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspCaixa'
    Left = 228
    Top = 396
    object cdsCaixaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
    object cdsCaixaENTRADAS_CAIXA: TFMTBCDField
      FieldName = 'ENTRADAS_CAIXA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsCaixaCHAVE_CAIXA: TStringField
      FieldName = 'CHAVE_CAIXA'
      Required = True
      Size = 21
    end
  end
  object cdsParcial: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspParcial'
    Left = 228
    Top = 452
    object cdsParcialCODIGO_PARCIAL: TIntegerField
      FieldName = 'CODIGO_PARCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsParcialDUPLICATA_PARCIAL: TStringField
      FieldName = 'DUPLICATA_PARCIAL'
      Size = 15
    end
    object cdsParcialVALOR_PARCIAL: TFMTBCDField
      FieldName = 'VALOR_PARCIAL'
      Precision = 15
      Size = 2
    end
    object cdsParcialJUROS_PARCIAL: TFMTBCDField
      FieldName = 'JUROS_PARCIAL'
      Precision = 15
      Size = 2
    end
    object cdsParcialDATA_PARCIAL: TDateField
      FieldName = 'DATA_PARCIAL'
    end
    object cdsParcialTIPO_PARCIAL: TStringField
      FieldName = 'TIPO_PARCIAL'
      FixedChar = True
      Size = 1
    end
  end
  object sqqConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 139
  end
  object qryReceberLocal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftVariant
        Name = 'TIPO_BAIXA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.codigo_cliente_receber, r.emissao_' +
        'receber,'
      
        '       r.vencimento_receber, r.previsao_receber, r.valor_receber' +
        ','
      
        '       r.valorpago_receber, r.codigo_portador_receber, r.tipo_ba' +
        'ixa_receber,'
      
        '       r.saldo_receber, r.cod_empresa, c.nome_cliente, r.parcial' +
        '_receber,'
      '       r.data_base_receber'
      'from p_receber r'
      
        '     left outer join e_cliente c on (r.codigo_cliente_receber = ' +
        'c.codigo_cliente)'
      'where r.codigo_cliente_receber =:CLIENTE'
      'and r.cod_empresa =:EMPRESA'
      'and r.tipo_baixa_receber <>:TIPO_BAIXA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 343
    Top = 193
    object qryReceberLocalDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
    object qryReceberLocalCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object qryReceberLocalEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberLocalVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberLocalPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberLocalVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberLocalVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberLocalCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberLocalTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object qryReceberLocalSALDO_RECEBER: TFMTBCDField
      FieldName = 'SALDO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberLocalCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryReceberLocalNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryReceberLocalPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberLocalDATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryPesquisa2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptInput
        Value = 0d
      end>
    SQL.Strings = (
      
        'select r.vencimento_receber, r.valor_receber, r.valorpago_recebe' +
        'r,'
      '       r.codigo_cliente_receber, r.tipo_baixa_receber'
      'from P_RECEBER r'
      'where r.codigo_cliente_receber =:CLIENTE'
      'and r.vencimento_receber <:VENCIMENTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 439
    Top = 193
    object qryPesquisa2VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object qryPesquisa2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPesquisa2VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPesquisa2CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object qryPesquisa2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object qryPesquisa3: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'select r.vencimento_receber, r.valor_receber, r.valorpago_recebe' +
        'r,'
      '       r.codigo_cliente_receber, r.tipo_baixa_receber'
      'from P_RECEBER r'
      'where r.codigo_cliente_receber =:CLIENTE'
      'and  r.vencimento_receber >=:VENCIMENTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 527
    Top = 193
    object qryPesquisa3VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object qryPesquisa3VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPesquisa3VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPesquisa3CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object qryPesquisa3TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspReceberLocal: TDataSetProvider
    DataSet = qryReceberLocal
    Left = 343
    Top = 249
  end
  object dspPesquisa2: TDataSetProvider
    DataSet = qryPesquisa2
    Options = [poAllowCommandText]
    Left = 439
    Top = 241
  end
  object dspPesquisa3: TDataSetProvider
    DataSet = qryPesquisa3
    Options = [poAllowCommandText]
    Left = 527
    Top = 241
  end
  object cdsReceberLocal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftVariant
        Name = 'TIPO_BAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspReceberLocal'
    Left = 343
    Top = 297
    object cdsReceberLocalDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
    object cdsReceberLocalCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsReceberLocalEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberLocalVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberLocalPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberLocalVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberLocalVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberLocalCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberLocalTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object cdsReceberLocalSALDO_RECEBER: TFMTBCDField
      FieldName = 'SALDO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberLocalCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsReceberLocalNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsReceberLocalPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberLocalDATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsPesquisa2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptInput
        Value = 0d
      end>
    ProviderName = 'dspPesquisa2'
    Left = 440
    Top = 298
    object cdsPesquisa2VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsPesquisa2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPesquisa2VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPesquisa2CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsPesquisa2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdsPesquisa3: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPesquisa3'
    Left = 529
    Top = 299
    object cdsPesquisa3VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsPesquisa3VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPesquisa3VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPesquisa3CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsPesquisa3TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object cdsBaixaTitulos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DUPLICATA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGO_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'PREVISAO'
        DataType = ftDate
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'VALORPAGO'
        DataType = ftFloat
      end
      item
        Name = 'NOME_CLIENTE'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'JUROS'
        DataType = ftFloat
      end
      item
        Name = 'DESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_JUROS'
        DataType = ftFloat
      end
      item
        Name = 'DIAS_ATRASO'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 530
    Top = 355
    Data = {
      0B0100009619E0BD01000000180000000C0000000000030000000B0109445550
      4C494341544101004900000001000557494454480200020014000E434F444947
      4F5F434C49454E5445040001000000000007454D495353414F04000600000000
      000A56454E43494D454E544F040006000000000008505245564953414F040006
      00000000000556414C4F5208000400000000000956414C4F525041474F080004
      00000000000C4E4F4D455F434C49454E54450100490000000100055749445448
      02000200C800054A55524F53080004000000000008444553434F4E544F080004
      00000000000B56414C4F525F4A55524F5308000400000000000B444941535F41
      545241534F04000100000000000000}
    object cdsBaixaTitulosDUPLICATA: TStringField
      FieldName = 'DUPLICATA'
    end
    object cdsBaixaTitulosCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsBaixaTitulosEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsBaixaTitulosVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsBaixaTitulosPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object cdsBaixaTitulosVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsBaixaTitulosVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
    end
    object cdsBaixaTitulosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 200
    end
    object cdsBaixaTitulosJUROS: TFloatField
      FieldName = 'JUROS'
    end
    object cdsBaixaTitulosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsBaixaTitulosVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object cdsBaixaTitulosDIAS_ATRASO: TIntegerField
      FieldName = 'DIAS_ATRASO'
    end
  end
  object cdsGrid: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 341
    Top = 353
    Data = {
      650100009619E0BD01000000180000000F000000000003000000650109445550
      4C494341544101004900000001000557494454480200020014000E434F444947
      4F5F434C49454E5445040001000000000007454D495353414F04000600000000
      000A56454E43494D454E544F040006000000000008505245564953414F040006
      00000000000556414C4F5208000400000000000956414C4F525041474F080004
      00000000000F434F4449474F5F504F525441444F5204000100000000000A5449
      504F5F424149584101004900000001000557494454480200020014000553414C
      444F08000400000000000B53454C4543494F4E41444F01004900000001000557
      494454480200020014000C4E4F4D455F434C49454E5445010049000000010005
      574944544802000200C8000B434F445F454D505245534104000100000000000B
      56414C4F525F4A55524F5308000400000000000B444941535F41545241534F08
      000400000000000000}
    object cdsGridDUPLICATA: TStringField
      FieldName = 'DUPLICATA'
    end
    object cdsGridCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsGridEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsGridVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsGridPREVISAO: TDateField
      FieldName = 'PREVISAO'
    end
    object cdsGridVALOR: TFloatField
      DefaultExpression = '0'
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridVALORPAGO: TFloatField
      DefaultExpression = '0'
      FieldName = 'VALORPAGO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridCODIGO_PORTADOR: TIntegerField
      FieldName = 'CODIGO_PORTADOR'
    end
    object cdsGridTIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
    end
    object cdsGridSALDO: TFloatField
      DefaultExpression = '0'
      FieldName = 'SALDO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
    end
    object cdsGridNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 200
    end
    object cdsGridCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsGridVALOR_JUROS: TFloatField
      DefaultExpression = '0'
      FieldName = 'VALOR_JUROS'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object cdsGridDIAS_ATRASO: TFloatField
      DefaultExpression = '0'
      FieldName = 'DIAS_ATRASO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
  end
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
    Left = 341
    Top = 404
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
    Left = 437
    Top = 405
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
    Left = 530
    Top = 406
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
  object cdsRelatorio: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 341
    Top = 456
    Data = {
      CF0000009619E0BD010000001800000008000000000003000000CF000D4E554D
      5F444F43554D454E544F01004900000001000557494454480200020014000745
      4D495353414F04000600000000000A56454E43494D454E544F04000600000000
      000556414C4F5208000400000000000E4A55524F535F444553434F4E544F0800
      0400000000000A56414C4F525F5041474F08000400000000000E434F4449474F
      5F434C49454E544504000100000000000C4E4F4D455F434C49454E5445010049
      000000010005574944544802000200C8000000}
    object cdsRelatorioNUM_DOCUMENTO: TStringField
      FieldName = 'NUM_DOCUMENTO'
    end
    object cdsRelatorioEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsRelatorioVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsRelatorioVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsRelatorioJUROS_DESCONTO: TFloatField
      FieldName = 'JUROS_DESCONTO'
    end
    object cdsRelatorioVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object cdsRelatorioCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsRelatorioNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 200
    end
  end
  object qryPesquisa4: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_BAIXA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.vencimento_receber, r.valor_receber, r.valorpago_recebe' +
        'r,'
      '       r.codigo_cliente_receber, r.tipo_baixa_receber'
      'from P_RECEBER r'
      'where r.codigo_cliente_receber =:CLIENTE'
      'and  r.tipo_baixa_receber =:TIPO_BAIXA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 340
    Top = 25
    object qryPesquisa4VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryPesquisa4VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPesquisa4VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPesquisa4CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object qryPesquisa4TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
  end
  object dspPesquisa4: TDataSetProvider
    DataSet = qryPesquisa4
    Options = [poAllowCommandText]
    Left = 431
    Top = 25
  end
  object cdsPesquisa4: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_BAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspPesquisa4'
    Left = 526
    Top = 25
    object cdsPesquisa4VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPesquisa4VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPesquisa4VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPesquisa4CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsPesquisa4TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
  end
  object qryReceberLocal2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_BAIXA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.codigo_cliente_receber, r.emissao_' +
        'receber,'
      
        '       r.vencimento_receber, r.previsao_receber, r.valor_receber' +
        ','
      
        '       r.valorpago_receber, r.codigo_portador_receber, r.tipo_ba' +
        'ixa_receber,'
      
        '       r.saldo_receber, r.cod_empresa, c.nome_cliente, r.parcial' +
        '_receber,'
      '       r.data_base_receber'
      'from p_receber r'
      
        '     left outer join e_cliente c on (r.codigo_cliente_receber = ' +
        'c.codigo_cliente)'
      'where r.codigo_cliente_receber =:CLIENTE'
      'and r.cod_empresa =:EMPRESA'
      'and r.tipo_baixa_receber =:TIPO_BAIXA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 341
    Top = 81
    object qryReceberLocal2DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object qryReceberLocal2CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object qryReceberLocal2EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object qryReceberLocal2VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object qryReceberLocal2PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object qryReceberLocal2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberLocal2VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberLocal2CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object qryReceberLocal2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object qryReceberLocal2SALDO_RECEBER: TFMTBCDField
      FieldName = 'SALDO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberLocal2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryReceberLocal2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryReceberLocal2PARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberLocal2DATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
    end
  end
  object dspReceberLocal2: TDataSetProvider
    DataSet = qryReceberLocal2
    Left = 434
    Top = 80
  end
  object cdsReceberLocal2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_BAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspReceberLocal2'
    Left = 531
    Top = 79
    object cdsReceberLocal2DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object cdsReceberLocal2CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsReceberLocal2EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsReceberLocal2VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsReceberLocal2PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsReceberLocal2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberLocal2VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberLocal2CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object cdsReceberLocal2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object cdsReceberLocal2SALDO_RECEBER: TFMTBCDField
      FieldName = 'SALDO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberLocal2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsReceberLocal2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsReceberLocal2PARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberLocal2DATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
    end
  end
  object qrySPC: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'select s.codigo_cliente_spc, s.negativac_spc, s.desbloq_spc, s.t' +
        'itulo_spc'
      'from P_SPC s'
      'where s.codigo_cliente_spc =:CLIENTE'
      'and s.titulo_spc =:TITULO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 343
    Top = 137
    object qrySPCCODIGO_CLIENTE_SPC: TIntegerField
      FieldName = 'CODIGO_CLIENTE_SPC'
      Required = True
    end
    object qrySPCNEGATIVAC_SPC: TDateField
      FieldName = 'NEGATIVAC_SPC'
    end
    object qrySPCDESBLOQ_SPC: TDateField
      FieldName = 'DESBLOQ_SPC'
    end
    object qrySPCTITULO_SPC: TStringField
      FieldName = 'TITULO_SPC'
    end
  end
  object dspSPC: TDataSetProvider
    DataSet = qrySPC
    Options = [poAllowCommandText]
    Left = 439
    Top = 136
  end
  object cdsSPC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspSPC'
    Left = 529
    Top = 139
    object cdsSPCCODIGO_CLIENTE_SPC: TIntegerField
      FieldName = 'CODIGO_CLIENTE_SPC'
      Required = True
    end
    object cdsSPCNEGATIVAC_SPC: TDateField
      FieldName = 'NEGATIVAC_SPC'
    end
    object cdsSPCDESBLOQ_SPC: TDateField
      FieldName = 'DESBLOQ_SPC'
    end
    object cdsSPCTITULO_SPC: TStringField
      FieldName = 'TITULO_SPC'
    end
  end
end
