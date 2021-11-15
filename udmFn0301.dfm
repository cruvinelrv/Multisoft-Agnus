object dmFn0301: TdmFn0301
  OldCreateOrder = False
  Left = 408
  Top = 204
  Height = 339
  Width = 322
  object qryPredatado: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select p.fornecedor, p.cod_venda, p.telefone, p.agencia, p.banco' +
        ','
      
        '       p.conta, p.cheque, p.valor, p.emitente, p.vencimento, p.d' +
        'evolucao1,'
      
        '       p.devolucao2, p.motivo1, p.motivo2, p.emissao, p.liquidac' +
        'ao,'
      '       p.observacao, p.con_baixa, p.cgc, c.nome_cliente,'
      '       p.dt_baixa, p.dt_lancto, p.codigo_cliente'
      'from P_PREDATAD p'
      
        '     left outer join e_cliente c on (p.codigo_cliente = c.codigo' +
        '_cliente)')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 16
    object qryPredatadoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object qryPredatadoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object qryPredatadoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qryPredatadoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object qryPredatadoBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object qryPredatadoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object qryPredatadoCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 10
    end
    object qryPredatadoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qryPredatadoEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 30
    end
    object qryPredatadoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qryPredatadoDEVOLUCAO1: TDateField
      FieldName = 'DEVOLUCAO1'
    end
    object qryPredatadoDEVOLUCAO2: TDateField
      FieldName = 'DEVOLUCAO2'
    end
    object qryPredatadoMOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      Size = 10
    end
    object qryPredatadoMOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      Size = 10
    end
    object qryPredatadoEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object qryPredatadoLIQUIDACAO: TDateField
      FieldName = 'LIQUIDACAO'
    end
    object qryPredatadoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object qryPredatadoCON_BAIXA: TIntegerField
      FieldName = 'CON_BAIXA'
    end
    object qryPredatadoCGC: TStringField
      FieldName = 'CGC'
      Size = 14
    end
    object qryPredatadoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryPredatadoDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
    end
    object qryPredatadoDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
    end
    object qryPredatadoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
  end
  object dspPredatado: TDataSetProvider
    DataSet = qryPredatado
    Left = 130
    Top = 16
  end
  object qryGrid: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select p.fornecedor, p.cod_venda, p.telefone, p.agencia, p.banco' +
        ','
      
        '       p.conta, p.cheque, p.valor, p.emitente, p.vencimento, p.d' +
        'evolucao1,'
      
        '       p.devolucao2, p.motivo1, p.motivo2, p.emissao, p.liquidac' +
        'ao,'
      '       p.observacao, p.con_baixa, p.cgc, c.nome_cliente,'
      
        '       p.dt_baixa, p.dt_lancto, p.codigo_cliente, p.codigo_preda' +
        'tad'
      'from P_PREDATAD p'
      
        '     left outer join e_cliente c on (p.codigo_cliente = c.codigo' +
        '_cliente)')
    SQLConnection = DmPrincipal.DbConexao
    Left = 31
    Top = 80
    object qryGridFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object qryGridCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object qryGridTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qryGridAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object qryGridBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object qryGridCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object qryGridCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 10
    end
    object qryGridVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object qryGridEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 30
    end
    object qryGridVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object qryGridDEVOLUCAO1: TDateField
      FieldName = 'DEVOLUCAO1'
    end
    object qryGridDEVOLUCAO2: TDateField
      FieldName = 'DEVOLUCAO2'
    end
    object qryGridMOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      Size = 10
    end
    object qryGridMOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      Size = 10
    end
    object qryGridEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object qryGridLIQUIDACAO: TDateField
      FieldName = 'LIQUIDACAO'
    end
    object qryGridOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object qryGridCON_BAIXA: TIntegerField
      FieldName = 'CON_BAIXA'
    end
    object qryGridNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryGridDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
    end
    object qryGridDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
    end
    object qryGridCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qryGridCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object qryGridCODIGO_PREDATAD: TIntegerField
      FieldName = 'CODIGO_PREDATAD'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspGrid: TDataSetProvider
    DataSet = qryGrid
    Options = [poAllowCommandText]
    Left = 133
    Top = 74
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrid'
    Left = 227
    Top = 74
    object cdsGridFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object cdsGridCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsGridTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '\(99\)9999-9999;1;'
      Size = 14
    end
    object cdsGridAGENCIA: TStringField
      FieldName = 'AGENCIA'
      EditMask = '9999\-9;1;'
      Size = 8
    end
    object cdsGridBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object cdsGridCONTA: TStringField
      FieldName = 'CONTA'
      EditMask = '99\.999\-9;1;'
      Size = 10
    end
    object cdsGridCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 10
    end
    object cdsGridVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object cdsGridEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 30
    end
    object cdsGridVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsGridDEVOLUCAO1: TDateField
      FieldName = 'DEVOLUCAO1'
    end
    object cdsGridDEVOLUCAO2: TDateField
      FieldName = 'DEVOLUCAO2'
    end
    object cdsGridMOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      Size = 10
    end
    object cdsGridMOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      Size = 10
    end
    object cdsGridEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsGridLIQUIDACAO: TDateField
      FieldName = 'LIQUIDACAO'
    end
    object cdsGridOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object cdsGridCON_BAIXA: TIntegerField
      FieldName = 'CON_BAIXA'
    end
    object cdsGridNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsGridDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
    end
    object cdsGridDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
    end
    object cdsGridCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsGridCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object cdsGridCODIGO_PREDATAD: TIntegerField
      FieldName = 'CODIGO_PREDATAD'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsPredatado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPredatado'
    Left = 226
    Top = 16
    object cdsPredatadoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object cdsPredatadoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsPredatadoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsPredatadoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object cdsPredatadoBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object cdsPredatadoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 10
    end
    object cdsPredatadoCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 10
    end
    object cdsPredatadoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 15
      Size = 2
    end
    object cdsPredatadoEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 30
    end
    object cdsPredatadoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsPredatadoDEVOLUCAO1: TDateField
      FieldName = 'DEVOLUCAO1'
    end
    object cdsPredatadoDEVOLUCAO2: TDateField
      FieldName = 'DEVOLUCAO2'
    end
    object cdsPredatadoMOTIVO1: TStringField
      FieldName = 'MOTIVO1'
      Size = 10
    end
    object cdsPredatadoMOTIVO2: TStringField
      FieldName = 'MOTIVO2'
      Size = 10
    end
    object cdsPredatadoEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsPredatadoLIQUIDACAO: TDateField
      FieldName = 'LIQUIDACAO'
    end
    object cdsPredatadoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object cdsPredatadoCON_BAIXA: TIntegerField
      FieldName = 'CON_BAIXA'
    end
    object cdsPredatadoCGC: TStringField
      FieldName = 'CGC'
      Size = 14
    end
    object cdsPredatadoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsPredatadoDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
    end
    object cdsPredatadoDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
    end
    object cdsPredatadoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
  end
  object qryConsultaCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'select P.cgc, p.telefone, p.banco, p.agencia, p.conta, p.codigo_' +
        'cliente'
      'from P_PREDATAD p'
      'where p.codigo_cliente =:CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 136
    object qryConsultaClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object qryConsultaClienteBANCO: TIntegerField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object qryConsultaClienteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryConsultaClienteCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryConsultaClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qryConsultaClienteCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
  end
  object dspConsultaCliente: TDataSetProvider
    DataSet = qryConsultaCliente
    Left = 135
    Top = 135
  end
  object cdsConsultaCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'dspConsultaCliente'
    Left = 232
    Top = 135
    object cdsConsultaClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsConsultaClienteBANCO: TIntegerField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsultaClienteAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsConsultaClienteCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsConsultaClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsConsultaClienteCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
  end
  object qryConsultaCPF: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CPF'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.cgc, p.telefone, p.banco, p.agencia, p.conta, p.codigo_' +
        'cliente,'
      '          p.emitente'
      'from P_PREDATAD p'
      'where P.cgc =:CPF')
    SQLConnection = DmPrincipal.DbConexao
    Left = 31
    Top = 188
    object qryConsultaCPFTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object qryConsultaCPFBANCO: TIntegerField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object qryConsultaCPFAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryConsultaCPFCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryConsultaCPFCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qryConsultaCPFCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object qryConsultaCPFEMITENTE: TStringField
      FieldName = 'EMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dspConsultaCPF: TDataSetProvider
    DataSet = qryConsultaCPF
    Left = 136
    Top = 186
  end
  object cdsConsultaCPF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CPF'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsultaCPF'
    Left = 232
    Top = 187
    object cdsConsultaCPFTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object cdsConsultaCPFBANCO: TIntegerField
      FieldName = 'BANCO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsultaCPFAGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsConsultaCPFCONTA: TStringField
      FieldName = 'CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsConsultaCPFCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConsultaCPFCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object cdsConsultaCPFEMITENTE: TStringField
      FieldName = 'EMITENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object qryConsultaCheque: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHEQUE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select p.cheque'
      'from P_PREDATAD p'
      'where p.cheque =:CHEQUE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 248
    object qryConsultaChequeCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 10
    end
  end
  object dspConsultaCheque: TDataSetProvider
    DataSet = qryConsultaCheque
    Left = 138
    Top = 248
  end
  object cdsConsultaCheque: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CHEQUE'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsultaCheque'
    Left = 242
    Top = 248
    object cdsConsultaChequeCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 10
    end
  end
end
