object dmGr09: TdmGr09
  OldCreateOrder = False
  Left = 334
  Top = 227
  Height = 243
  Width = 371
  object qryPedido: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_PEDIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.codigo_pedido, p.fornecedor_pedido, p.contato_pedido, p' +
        '.data_pedido,'
      
        '       p.condicoes_pedido, p.observacao_pedido, p.cliente_pedido' +
        ', p.ipi_pedido,'
      
        '       p.icms_pedido, p.seguro_pedido, p.icmssb_pedido, p.frete_' +
        'pedido, p.outros_pedido,'
      
        '       p.cod_empresa, p.valorproduto_pedido, c.nome_cliente as N' +
        'ome_Fornecedor, c1.nome_cliente'
      
        '       as Nome_Cliente, c1.cidade_cliente, c1.estado_cliente, c1' +
        '.endereco_cliente,'
      
        '       c1.bairro_cliente, c1.cep_cliente, c1.telefone_cliente, c' +
        '1.fax_cliente,'
      
        '       c1.inscricao_cliente, c1.cnpj_cliente, c1.fantasia_client' +
        'e, c2.descricao_cidade'
      'from P_PEDIDO p'
      
        '     left outer join e_cliente c on (p.fornecedor_pedido = c.cod' +
        'igo_cliente)'
      
        '     left outer join e_cliente c1 on (p.cliente_pedido = c1.codi' +
        'go_cliente)'
      
        '     left outer join e_cidade c2 on (c1.cidade_cliente = c2.codi' +
        'go_cidade)'
      'where p.codigo_pedido =:COD_PEDIDO'
      'and p.cod_empresa =:EMPRESA ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 29
    object qryPedidoCODIGO_PEDIDO: TIntegerField
      FieldName = 'CODIGO_PEDIDO'
    end
    object qryPedidoFORNECEDOR_PEDIDO: TIntegerField
      FieldName = 'FORNECEDOR_PEDIDO'
    end
    object qryPedidoCONTATO_PEDIDO: TStringField
      FieldName = 'CONTATO_PEDIDO'
      Size = 30
    end
    object qryPedidoDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object qryPedidoCONDICOES_PEDIDO: TStringField
      FieldName = 'CONDICOES_PEDIDO'
      Size = 30
    end
    object qryPedidoOBSERVACAO_PEDIDO: TStringField
      FieldName = 'OBSERVACAO_PEDIDO'
      Size = 50
    end
    object qryPedidoCLIENTE_PEDIDO: TIntegerField
      FieldName = 'CLIENTE_PEDIDO'
    end
    object qryPedidoIPI_PEDIDO: TFMTBCDField
      FieldName = 'IPI_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoICMS_PEDIDO: TFMTBCDField
      FieldName = 'ICMS_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoSEGURO_PEDIDO: TFMTBCDField
      FieldName = 'SEGURO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoICMSSB_PEDIDO: TFMTBCDField
      FieldName = 'ICMSSB_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoFRETE_PEDIDO: TFMTBCDField
      FieldName = 'FRETE_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoOUTROS_PEDIDO: TFMTBCDField
      FieldName = 'OUTROS_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryPedidoVALORPRODUTO_PEDIDO: TFMTBCDField
      FieldName = 'VALORPRODUTO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      ProviderFlags = []
      Size = 40
    end
    object qryPedidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryPedidoCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      ProviderFlags = []
    end
    object qryPedidoESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      ProviderFlags = []
      Size = 2
    end
    object qryPedidoENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryPedidoBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      ProviderFlags = []
    end
    object qryPedidoCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      ProviderFlags = []
      Size = 9
    end
    object qryPedidoTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      ProviderFlags = []
      Size = 13
    end
    object qryPedidoFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      ProviderFlags = []
      Size = 13
    end
    object qryPedidoINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
      ProviderFlags = []
    end
    object qryPedidoCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      ProviderFlags = []
      Size = 18
    end
    object qryPedidoFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      ProviderFlags = []
      Size = 30
    end
    object qryPedidoDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspPedido: TDataSetProvider
    DataSet = qryPedido
    Left = 160
    Top = 29
  end
  object cdsPedido: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_PEDIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspPedido'
    Left = 280
    Top = 29
    object cdsPedidoCODIGO_PEDIDO: TIntegerField
      FieldName = 'CODIGO_PEDIDO'
    end
    object cdsPedidoFORNECEDOR_PEDIDO: TIntegerField
      FieldName = 'FORNECEDOR_PEDIDO'
    end
    object cdsPedidoCONTATO_PEDIDO: TStringField
      FieldName = 'CONTATO_PEDIDO'
      Size = 30
    end
    object cdsPedidoDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object cdsPedidoCONDICOES_PEDIDO: TStringField
      FieldName = 'CONDICOES_PEDIDO'
      Size = 30
    end
    object cdsPedidoOBSERVACAO_PEDIDO: TStringField
      FieldName = 'OBSERVACAO_PEDIDO'
      Size = 50
    end
    object cdsPedidoCLIENTE_PEDIDO: TIntegerField
      FieldName = 'CLIENTE_PEDIDO'
    end
    object cdsPedidoIPI_PEDIDO: TFMTBCDField
      FieldName = 'IPI_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoICMS_PEDIDO: TFMTBCDField
      FieldName = 'ICMS_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoSEGURO_PEDIDO: TFMTBCDField
      FieldName = 'SEGURO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoICMSSB_PEDIDO: TFMTBCDField
      FieldName = 'ICMSSB_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoFRETE_PEDIDO: TFMTBCDField
      FieldName = 'FRETE_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoOUTROS_PEDIDO: TFMTBCDField
      FieldName = 'OUTROS_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsPedidoVALORPRODUTO_PEDIDO: TFMTBCDField
      FieldName = 'VALORPRODUTO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoNOME_FORNECEDOR: TStringField
      FieldName = 'NOME_FORNECEDOR'
      ProviderFlags = []
      Size = 40
    end
    object cdsPedidoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsPedidoCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      ProviderFlags = []
    end
    object cdsPedidoESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      ProviderFlags = []
      Size = 2
    end
    object cdsPedidoENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsPedidoBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      ProviderFlags = []
    end
    object cdsPedidoCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      ProviderFlags = []
      Size = 9
    end
    object cdsPedidoTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      ProviderFlags = []
      Size = 13
    end
    object cdsPedidoFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      ProviderFlags = []
      Size = 13
    end
    object cdsPedidoINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
      ProviderFlags = []
    end
    object cdsPedidoCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      ProviderFlags = []
      Size = 18
    end
    object cdsPedidoFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      ProviderFlags = []
      Size = 30
    end
    object cdsPedidoDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
  end
  object qryPedido_Item: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_ITEM_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.codigo_pedido, p.produto_pedido, p.descricao_pedido, p.' +
        'quantidade_pedido,'
      '       p.preco_pedido, p.fabrica_pedido, p.cod_empresa'
      'from P_PEDIDO_ITEM  p'
      'where p.codigo_pedido =:COD_ITEM_PEDIDO'
      'and p.cod_empresa =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 41
    Top = 95
    object qryPedido_ItemCODIGO_PEDIDO: TIntegerField
      FieldName = 'CODIGO_PEDIDO'
    end
    object qryPedido_ItemPRODUTO_PEDIDO: TIntegerField
      FieldName = 'PRODUTO_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object qryPedido_ItemDESCRICAO_PEDIDO: TStringField
      FieldName = 'DESCRICAO_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryPedido_ItemQUANTIDADE_PEDIDO: TFMTBCDField
      FieldName = 'QUANTIDADE_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object qryPedido_ItemPRECO_PEDIDO: TFMTBCDField
      FieldName = 'PRECO_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qryPedido_ItemFABRICA_PEDIDO: TStringField
      FieldName = 'FABRICA_PEDIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object qryPedido_ItemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspPedido_Item: TDataSetProvider
    DataSet = qryPedido_Item
    Left = 160
    Top = 96
  end
  object cdsPedido_Item: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_ITEM_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspPedido_Item'
    Left = 280
    Top = 96
    object cdsPedido_ItemCODIGO_PEDIDO: TIntegerField
      FieldName = 'CODIGO_PEDIDO'
    end
    object cdsPedido_ItemPRODUTO_PEDIDO: TIntegerField
      FieldName = 'PRODUTO_PEDIDO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPedido_ItemDESCRICAO_PEDIDO: TStringField
      FieldName = 'DESCRICAO_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsPedido_ItemQUANTIDADE_PEDIDO: TFMTBCDField
      FieldName = 'QUANTIDADE_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsPedido_ItemPRECO_PEDIDO: TFMTBCDField
      FieldName = 'PRECO_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsPedido_ItemFABRICA_PEDIDO: TStringField
      FieldName = 'FABRICA_PEDIDO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 15
    end
    object cdsPedido_ItemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
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
      
        'select e.razaosocia_emp, e.endereco_emp, e.bairro_emp, e.cidade_' +
        'emp, e.estado_emp,'
      
        '       e.cep_emp, e.cgc_emp, e.inscricao_emp, e.telefone_emp, e.' +
        'fax_emp, e.ord_pedido_emp,'
      '       e.codigo_emp'
      'from EMPRESA e'
      'where e.codigo_emp =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 152
    object qryEmpresaRAZAOSOCIA_EMP: TStringField
      FieldName = 'RAZAOSOCIA_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryEmpresaENDERECO_EMP: TStringField
      FieldName = 'ENDERECO_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryEmpresaBAIRRO_EMP: TStringField
      FieldName = 'BAIRRO_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryEmpresaCIDADE_EMP: TStringField
      FieldName = 'CIDADE_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryEmpresaESTADO_EMP: TStringField
      FieldName = 'ESTADO_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryEmpresaCEP_EMP: TStringField
      FieldName = 'CEP_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object qryEmpresaCGC_EMP: TStringField
      FieldName = 'CGC_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object qryEmpresaINSCRICAO_EMP: TStringField
      FieldName = 'INSCRICAO_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryEmpresaTELEFONE_EMP: TStringField
      FieldName = 'TELEFONE_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object qryEmpresaFAX_EMP: TStringField
      FieldName = 'FAX_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object qryEmpresaORD_PEDIDO_EMP: TStringField
      FieldName = 'ORD_PEDIDO_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 162
    Top = 152
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
    Left = 280
    Top = 152
    object cdsEmpresaRAZAOSOCIA_EMP: TStringField
      FieldName = 'RAZAOSOCIA_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsEmpresaENDERECO_EMP: TStringField
      FieldName = 'ENDERECO_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsEmpresaBAIRRO_EMP: TStringField
      FieldName = 'BAIRRO_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaCIDADE_EMP: TStringField
      FieldName = 'CIDADE_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaESTADO_EMP: TStringField
      FieldName = 'ESTADO_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsEmpresaCEP_EMP: TStringField
      FieldName = 'CEP_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsEmpresaCGC_EMP: TStringField
      FieldName = 'CGC_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsEmpresaINSCRICAO_EMP: TStringField
      FieldName = 'INSCRICAO_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaTELEFONE_EMP: TStringField
      FieldName = 'TELEFONE_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsEmpresaFAX_EMP: TStringField
      FieldName = 'FAX_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsEmpresaORD_PEDIDO_EMP: TStringField
      FieldName = 'ORD_PEDIDO_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
  end
end
