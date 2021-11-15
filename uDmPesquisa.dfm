object dmPesquisa: TdmPesquisa
  OldCreateOrder = False
  Left = 438
  Top = 43
  Height = 309
  Width = 586
  object qryPesqClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT E_CLIENTE.CODIGO_CLIENTE, E_CLIENTE.NOME_CLIENTE,E_CLIENT' +
        'E.FANTASIA_CLIENTE,E_CLIENTE.TELEFONE_CLIENTE,E_CLIENTE.CNPJ_CLI' +
        'ENTE'
      
        '  FROM E_CLIENTE WHERE E_CLIENTE.TIPO_CLIENTE=:TIPO ORDER BY E_C' +
        'LIENTE.NOME_CLIENTE ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 16
    object qryPesqClientesCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryPesqClientesNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryPesqClientesFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object qryPesqClientesTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
  end
  object dspPesqClientes: TDataSetProvider
    DataSet = qryPesqClientes
    Options = [poAllowCommandText]
    Left = 32
    Top = 69
  end
  object cdsPesqCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqClientes'
    AfterDelete = cdsPesqClienteAfterDelete
    Left = 40
    Top = 120
    object cdsPesqClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsPesqClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
  end
  object dspTipoPagamento: TDataSetProvider
    DataSet = qryTipoPagamento
    Left = 112
    Top = 72
  end
  object cdsTipoPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoPagamento'
    Left = 120
    Top = 120
  end
  object qryTipoPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_CPAGAMENTO WHERE COD_EMPRESA=:EMPRESA ORDER BY D' +
        'ESCRICAO_CPAGAMENTO ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 120
    Top = 16
    object qryTipoPagamentoCODIGO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_CPAGAMENTO'
      Required = True
    end
    object qryTipoPagamentoDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      Size = 40
    end
    object qryTipoPagamentoDESCONTO_CPAGAMENTO: TFMTBCDField
      FieldName = 'DESCONTO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object qryTipoPagamentoPERC_COMISSAO_CPAGAMENTO: TFMTBCDField
      FieldName = 'PERC_COMISSAO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object qryTipoPagamentoCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
    end
    object qryTipoPagamentoCOMISSAO_CPAGAMENTO: TStringField
      FieldName = 'COMISSAO_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoLIVRE_CPAGAMENTO: TStringField
      FieldName = 'LIVRE_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_TPDOCUMENTO_CPAGAMENTO'
      Required = True
    end
    object qryTipoPagamentoCODIGO_PORTADOR_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_PORTADOR_CPAGAMENTO'
    end
    object qryTipoPagamentoDESCONTO_FIXO_CPAGAMENTO: TStringField
      FieldName = 'DESCONTO_FIXO_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoQTDE_PARCELAS_CPAGAMENTO: TIntegerField
      FieldName = 'QTDE_PARCELAS_CPAGAMENTO'
      Required = True
    end
    object qryTipoPagamentoGERA_RECEBER_CPAGAMENTO: TStringField
      FieldName = 'GERA_RECEBER_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoECF_CPAGAMENTO: TStringField
      FieldName = 'ECF_CPAGAMENTO'
      Size = 3
    end
    object qryTipoPagamentoTEF_CPAGAMENTO: TStringField
      FieldName = 'TEF_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoSENHA_CPAGAMENTO: TStringField
      FieldName = 'SENHA_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoMEDIA_DIA_CPAGAMENTO: TIntegerField
      FieldName = 'MEDIA_DIA_CPAGAMENTO'
    end
    object qryTipoPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryPesqContrato: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT P_CONTRATO.*,E_CLIENTE.NOME_CLIENTE FROM P_CONTRATO'
      
        'JOIN E_CLIENTE ON P_CONTRATO.CLIENTE_CONTRATO=E_CLIENTE.CODIGO_C' +
        'LIENTE'
      ' WHERE COD_EMPRESA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 224
    Top = 15
    object qryPesqContratoCODIGO_CONTRATO: TIntegerField
      FieldName = 'CODIGO_CONTRATO'
      Required = True
    end
    object qryPesqContratoNUMERO_CONTRATO: TStringField
      FieldName = 'NUMERO_CONTRATO'
      Size = 7
    end
    object qryPesqContratoVALOR_CONTRATO: TFMTBCDField
      FieldName = 'VALOR_CONTRATO'
      Precision = 15
      Size = 2
    end
    object qryPesqContratoDESCONTO_CONTRATO: TFMTBCDField
      FieldName = 'DESCONTO_CONTRATO'
      Precision = 15
      Size = 2
    end
    object qryPesqContratoDESCP_CONTRATO: TFMTBCDField
      FieldName = 'DESCP_CONTRATO'
      Precision = 15
      Size = 3
    end
    object qryPesqContratoDIAFATURA_CONTRATO: TIntegerField
      FieldName = 'DIAFATURA_CONTRATO'
    end
    object qryPesqContratoQTDSM_CONTRATO: TFMTBCDField
      FieldName = 'QTDSM_CONTRATO'
      Precision = 15
      Size = 3
    end
    object qryPesqContratoDATAINICIO_CONTRATO: TDateField
      FieldName = 'DATAINICIO_CONTRATO'
    end
    object qryPesqContratoDATAFIM_CONTRATO: TDateField
      FieldName = 'DATAFIM_CONTRATO'
    end
    object qryPesqContratoOBSERVACAO_CONTRATO: TStringField
      FieldName = 'OBSERVACAO_CONTRATO'
      Size = 50
    end
    object qryPesqContratoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryPesqContratoCLIENTE_CONTRATO: TIntegerField
      FieldName = 'CLIENTE_CONTRATO'
    end
    object qryPesqContratoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
  end
  object dspPesqContrato: TDataSetProvider
    DataSet = qryPesqContrato
    Left = 224
    Top = 72
  end
  object cdsPesqContrato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqContrato'
    Left = 224
    Top = 120
    object cdsPesqContratoCODIGO_CONTRATO: TIntegerField
      FieldName = 'CODIGO_CONTRATO'
      Required = True
    end
    object cdsPesqContratoNUMERO_CONTRATO: TStringField
      FieldName = 'NUMERO_CONTRATO'
      Size = 7
    end
    object cdsPesqContratoVALOR_CONTRATO: TFMTBCDField
      FieldName = 'VALOR_CONTRATO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsPesqContratoDESCONTO_CONTRATO: TFMTBCDField
      FieldName = 'DESCONTO_CONTRATO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsPesqContratoDESCP_CONTRATO: TFMTBCDField
      FieldName = 'DESCP_CONTRATO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object cdsPesqContratoDIAFATURA_CONTRATO: TIntegerField
      FieldName = 'DIAFATURA_CONTRATO'
    end
    object cdsPesqContratoQTDSM_CONTRATO: TFMTBCDField
      FieldName = 'QTDSM_CONTRATO'
      Precision = 15
      Size = 3
    end
    object cdsPesqContratoDATAINICIO_CONTRATO: TDateField
      FieldName = 'DATAINICIO_CONTRATO'
    end
    object cdsPesqContratoDATAFIM_CONTRATO: TDateField
      FieldName = 'DATAFIM_CONTRATO'
    end
    object cdsPesqContratoOBSERVACAO_CONTRATO: TStringField
      FieldName = 'OBSERVACAO_CONTRATO'
      Size = 50
    end
    object cdsPesqContratoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsPesqContratoCLIENTE_CONTRATO: TIntegerField
      FieldName = 'CLIENTE_CONTRATO'
    end
    object cdsPesqContratoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
  end
  object cdsPesqProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqProdutos'
    Left = 320
    Top = 120
    object cdsPesqProdutosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsPesqProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
  end
  object dspPesqProdutos: TDataSetProvider
    DataSet = qryPesqProdutos
    Left = 318
    Top = 72
  end
  object qryPesqProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT P_PRODUTOS.DESCRICAO_PRODUTO,P_PRODUTOS.CODIGO_PRODUTO FR' +
        'OM P_PRODUTOS WHERE COD_EMPRESA=:EMPRESA ORDER BY DESCRICAO_PROD' +
        'UTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 318
    Top = 16
    object qryPesqProdutosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryPesqProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
  end
end
