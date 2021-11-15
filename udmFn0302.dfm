object dmFn0302: TdmFn0302
  OldCreateOrder = False
  Left = 300
  Top = 200
  Height = 241
  Width = 275
  object qryGrid: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CAMPO_BUSCA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.fornecedor, p.cod_venda, p.telefone, p.agencia, p.banco' +
        ','
      
        '       p.conta, p.cheque, p.valor, p.emitente, p.vencimento, p.d' +
        'evolucao1,'
      
        '       p.devolucao2, p.motivo1, p.motivo2, p.emissao, p.liquidac' +
        'ao,'
      '       p.observacao, p.con_baixa, p.cgc, c.nome_cliente,'
      '       p.dt_baixa, p.dt_lancto, p.codigo_cliente, p.campo_busca,'
      '       b.descricao_banco, p.codigo_predatad'
      'from P_PREDATAD p'
      
        '     left outer join e_cliente c on (p.codigo_cliente = c.codigo' +
        '_cliente)'
      '     left outer join p_banco b on (p.con_baixa = b.codigo_banco)'
      'where p.campo_busca =:CAMPO_BUSCA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 16
    object qryGridFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object qryGridAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryGridBANCO: TIntegerField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryGridCHEQUE: TStringField
      FieldName = 'CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryGridVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryGridEMITENTE: TStringField
      FieldName = 'EMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryGridVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridDEVOLUCAO1: TDateField
      FieldName = 'DEVOLUCAO1'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridDEVOLUCAO2: TDateField
      FieldName = 'DEVOLUCAO2'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridMOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryGridMOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryGridEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridLIQUIDACAO: TDateField
      FieldName = 'LIQUIDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryGridCON_BAIXA: TIntegerField
      FieldName = 'CON_BAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridCGC: TStringField
      FieldName = 'CGC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object qryGridNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryGridDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qryGridCAMPO_BUSCA: TStringField
      FieldName = 'CAMPO_BUSCA'
      FixedChar = True
      Size = 1
    end
    object qryGridDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object qryGridCODIGO_PREDATAD: TIntegerField
      FieldName = 'CODIGO_PREDATAD'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspGrid: TDataSetProvider
    DataSet = qryGrid
    Left = 112
    Top = 16
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CAMPO_BUSCA'
        ParamType = ptInput
      end>
    ProviderName = 'dspGrid'
    Left = 200
    Top = 16
    object cdsGridFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      EditMask = '!\(99\)9999-9999;1;'
      Size = 14
    end
    object cdsGridAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      EditMask = '9999\-9;1;'
      Size = 8
    end
    object cdsGridBANCO: TIntegerField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      EditMask = '99\.999\-9;1;'
      Size = 10
    end
    object cdsGridCHEQUE: TStringField
      FieldName = 'CHEQUE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGridVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsGridEMITENTE: TStringField
      FieldName = 'EMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsGridVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDEVOLUCAO1: TDateField
      FieldName = 'DEVOLUCAO1'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDEVOLUCAO2: TDateField
      FieldName = 'DEVOLUCAO2'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridMOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGridMOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsGridEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridLIQUIDACAO: TDateField
      FieldName = 'LIQUIDACAO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsGridCON_BAIXA: TIntegerField
      FieldName = 'CON_BAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridCGC: TStringField
      FieldName = 'CGC'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsGridNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsGridDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGridCAMPO_BUSCA: TStringField
      FieldName = 'CAMPO_BUSCA'
      FixedChar = True
      Size = 1
    end
    object cdsGridDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object cdsGridCODIGO_PREDATAD: TIntegerField
      FieldName = 'CODIGO_PREDATAD'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryConlan: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.codigo_conlan, c.corrente_conlan, c.data_conlan, c.movi' +
        'mento_conlan,'
      '       c.valor_conlan, c.tipo_conlan, c.historico_conlan,'
      '       c.documento_conlan, c.origem_conlan, c.cod_empresa'
      'from P_CONLAN c')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 80
    object qryConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object qryConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object qryConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object qryConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object qryConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object qryConlanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object qryConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspConlan: TDataSetProvider
    DataSet = qryConlan
    Left = 112
    Top = 80
  end
  object cdsConlan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConlan'
    Left = 198
    Top = 83
    object cdsConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object cdsConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsConlanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object cdsConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryGrid2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.fornecedor, p.cod_venda, p.telefone, p.agencia, p.banco' +
        ','
      
        '       p.conta, p.cheque, p.valor, p.emitente, p.vencimento, p.d' +
        'evolucao1,'
      
        '       p.devolucao2, p.motivo1, p.motivo2, p.emissao, p.liquidac' +
        'ao,'
      '       p.observacao, p.con_baixa, p.cgc, c.nome_cliente,'
      '       p.dt_baixa, p.dt_lancto, p.codigo_cliente, p.campo_busca,'
      '       b.descricao_banco, p.codigo_predatad'
      'from P_PREDATAD p'
      
        '     left outer join e_cliente c on (p.codigo_cliente = c.codigo' +
        '_cliente)'
      '     left outer join p_banco b on (p.con_baixa = b.codigo_banco)'
      'where p.codigo_predatad =:CODIGO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 152
    object qryGrid2FORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object qryGrid2COD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object qryGrid2TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qryGrid2AGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object qryGrid2BANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object qryGrid2CONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object qryGrid2CHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 10
    end
    object qryGrid2VALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qryGrid2EMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 30
    end
    object qryGrid2VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qryGrid2DEVOLUCAO1: TDateField
      FieldName = 'DEVOLUCAO1'
    end
    object qryGrid2DEVOLUCAO2: TDateField
      FieldName = 'DEVOLUCAO2'
    end
    object qryGrid2MOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      Size = 10
    end
    object qryGrid2MOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      Size = 10
    end
    object qryGrid2EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object qryGrid2LIQUIDACAO: TDateField
      FieldName = 'LIQUIDACAO'
    end
    object qryGrid2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object qryGrid2CON_BAIXA: TIntegerField
      FieldName = 'CON_BAIXA'
    end
    object qryGrid2CGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object qryGrid2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryGrid2DT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object qryGrid2DT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryGrid2CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qryGrid2CAMPO_BUSCA: TStringField
      FieldName = 'CAMPO_BUSCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryGrid2DESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object qryGrid2CODIGO_PREDATAD: TIntegerField
      FieldName = 'CODIGO_PREDATAD'
    end
  end
  object dspGrid2: TDataSetProvider
    DataSet = qryGrid2
    Left = 112
    Top = 152
  end
  object cdsGrid2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspGrid2'
    Left = 200
    Top = 152
    object cdsGrid2FORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGrid2COD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsGrid2TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsGrid2AGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object cdsGrid2BANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object cdsGrid2CONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsGrid2CHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 10
    end
    object cdsGrid2VALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object cdsGrid2EMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 30
    end
    object cdsGrid2VENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsGrid2DEVOLUCAO1: TDateField
      FieldName = 'DEVOLUCAO1'
    end
    object cdsGrid2DEVOLUCAO2: TDateField
      FieldName = 'DEVOLUCAO2'
    end
    object cdsGrid2MOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      Size = 10
    end
    object cdsGrid2MOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      Size = 10
    end
    object cdsGrid2EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsGrid2LIQUIDACAO: TDateField
      FieldName = 'LIQUIDACAO'
    end
    object cdsGrid2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object cdsGrid2CON_BAIXA: TIntegerField
      FieldName = 'CON_BAIXA'
    end
    object cdsGrid2CGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object cdsGrid2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsGrid2DT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGrid2DT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGrid2CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsGrid2CAMPO_BUSCA: TStringField
      FieldName = 'CAMPO_BUSCA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsGrid2DESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object cdsGrid2CODIGO_PREDATAD: TIntegerField
      FieldName = 'CODIGO_PREDATAD'
    end
  end
end
