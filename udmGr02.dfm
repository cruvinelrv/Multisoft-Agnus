object dmGr02: TdmGr02
  OldCreateOrder = False
  Left = 193
  Top = 108
  Height = 571
  Width = 730
  object qryNatureza: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_NATUREZA  ORDER BY CODIGO_NAT')
    SQLConnection = DmPrincipal.DbConexao
    Left = 49
    Top = 24
    object qryNaturezaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 4
    end
    object qryNaturezaCODIGO_NAT: TStringField
      FieldName = 'CODIGO_NAT'
      Size = 4
    end
    object qryNaturezaOPERACAO_NAT: TStringField
      FieldName = 'OPERACAO_NAT'
      Size = 1
    end
    object qryNaturezaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      Size = 310
    end
  end
  object dspNatureza: TDataSetProvider
    DataSet = qryNatureza
    Options = [poAllowCommandText]
    Left = 157
    Top = 24
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNatureza'
    Left = 265
    Top = 24
    object cdsNaturezaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 4
    end
    object cdsNaturezaCODIGO_NAT: TStringField
      FieldName = 'CODIGO_NAT'
      Size = 4
    end
    object cdsNaturezaOPERACAO_NAT: TStringField
      FieldName = 'OPERACAO_NAT'
      Size = 1
    end
    object cdsNaturezaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      Size = 310
    end
  end
  object qryCST: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_SITUACAO ORDER BY DESCRICAO_SITUACAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 50
    Top = 88
    object qryCSTCODIGO_SITUACAO: TStringField
      FieldName = 'CODIGO_SITUACAO'
      Size = 3
    end
    object qryCSTDESCRICAO_SITUACAO: TStringField
      FieldName = 'DESCRICAO_SITUACAO'
      Size = 40
    end
  end
  object dspCST: TDataSetProvider
    DataSet = qryCST
    Left = 157
    Top = 88
  end
  object cdsCST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCST'
    Left = 265
    Top = 88
    object cdsCSTCODIGO_SITUACAO: TStringField
      FieldName = 'CODIGO_SITUACAO'
      Size = 3
    end
    object cdsCSTDESCRICAO_SITUACAO: TStringField
      FieldName = 'DESCRICAO_SITUACAO'
      Size = 40
    end
  end
  object qryPesqFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'FORNECEDOR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT E_CLIENTE.CODIGO_CLIENTE,'
      '       E_CLIENTE.NOME_CLIENTE'
      '       FROM E_CLIENTE'
      '       WHERE E_CLIENTE.TIPO_CLIENTE=2'
      '       AND E_CLIENTE.CODIGO_CLIENTE=:FORNECEDOR ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 48
    Top = 152
    object qryPesqFornecedorCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryPesqFornecedorNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
  end
  object dspPesqFornecedor: TDataSetProvider
    DataSet = qryPesqFornecedor
    Left = 160
    Top = 152
  end
  object cdsPesqFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqFornecedor'
    Left = 264
    Top = 152
    object cdsPesqFornecedorCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsPesqFornecedorNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
  end
  object qryPesqTransportador: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TRANSPORTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT E_CLIENTE.CODIGO_CLIENTE, E_CLIENTE.NOME_CLIENTE,E_CLIENT' +
        'E.FANTASIA_CLIENTE,'
      
        'E_CLIENTE.TELEFONE_CLIENTE,E_CLIENTE.CNPJ_CLIENTE,E_CLIENTE.fax_' +
        'cliente,'
      
        'E_CLIENTE.ENDERECO_CLIENTE,E_CLIENTE.BAIRRO_CLIENTE,E_CLIENTE.OB' +
        'SEVACAO_CLIENTE,'
      
        'E_CIDADE.descricao_cidade,E_CLIENTE.estado_cliente,E_CLIENTE.cre' +
        'dito_cliente,'
      
        'E_CLIENTE.utilizado_cliente,(E_CLIENTE.credito_cliente-E_CLIENTE' +
        '.utilizado_cliente) AS SALDO'
      ' FROM E_CLIENTE'
      
        'LEFT OUTER JOIN E_CIDADE ON E_CLIENTE.cidade_cliente=E_CIDADE.co' +
        'digo_cidade'
      
        'WHERE E_CLIENTE.TIPO_CLIENTE=2 AND E_CLIENTE.CODIGO_CLIENTE=:TRA' +
        'NSPORTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 48
    Top = 216
    object qryPesqTransportadorCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryPesqTransportadorNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryPesqTransportadorFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object qryPesqTransportadorTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object qryPesqTransportadorCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object qryPesqTransportadorFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object qryPesqTransportadorENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqTransportadorBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object qryPesqTransportadorOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object qryPesqTransportadorDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object qryPesqTransportadorESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object qryPesqTransportadorCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqTransportadorUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqTransportadorSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
  end
  object dspPesqTransportador: TDataSetProvider
    DataSet = qryPesqTransportador
    Left = 160
    Top = 216
  end
  object cdsPesqTransportador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqTransportador'
    Left = 272
    Top = 215
    object cdsPesqTransportadorCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsPesqTransportadorNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqTransportadorFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsPesqTransportadorTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqTransportadorCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object cdsPesqTransportadorFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object cdsPesqTransportadorENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqTransportadorBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsPesqTransportadorOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPesqTransportadorDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object cdsPesqTransportadorESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqTransportadorCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqTransportadorUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqTransportadorSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
  end
  object qryCompras: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT * FROM P_COMPRA WHERE COD_EMPRESA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 48
    Top = 274
    object qryComprasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryComprasCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object qryComprasFORNECEDOR_COMPRA: TIntegerField
      FieldName = 'FORNECEDOR_COMPRA'
    end
    object qryComprasTIPOFORN_COMPRA: TStringField
      FieldName = 'TIPOFORN_COMPRA'
      Size = 1
    end
    object qryComprasTRANSPORTA_COMPRA: TFMTBCDField
      FieldName = 'TRANSPORTA_COMPRA'
      Precision = 15
      Size = 0
    end
    object qryComprasNOTAFISCAL_COMPRA: TIntegerField
      FieldName = 'NOTAFISCAL_COMPRA'
    end
    object qryComprasSERIE_COMPRA: TStringField
      FieldName = 'SERIE_COMPRA'
      Size = 2
    end
    object qryComprasSERIE2_COMPRA: TStringField
      FieldName = 'SERIE2_COMPRA'
      Size = 2
    end
    object qryComprasEMISSAO_COMPRA: TDateField
      FieldName = 'EMISSAO_COMPRA'
    end
    object qryComprasENTRADA_COMPRA: TDateField
      FieldName = 'ENTRADA_COMPRA'
    end
    object qryComprasEXCLUSAO_COMPRA: TDateField
      FieldName = 'EXCLUSAO_COMPRA'
    end
    object qryComprasCFOP_COMPRA: TStringField
      FieldName = 'CFOP_COMPRA'
      Size = 4
    end
    object qryComprasHORA_COMPRA: TStringField
      FieldName = 'HORA_COMPRA'
      Size = 8
    end
    object qryComprasVALORPRODUTO_COMPRA: TFMTBCDField
      FieldName = 'VALORPRODUTO_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasFRETE_COMPRA: TFMTBCDField
      FieldName = 'FRETE_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasSEGURO_COMPRA: TFMTBCDField
      FieldName = 'SEGURO_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasOUTRAS_COMPRA: TFMTBCDField
      FieldName = 'OUTRAS_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasFRETE1_COMPRA: TFMTBCDField
      FieldName = 'FRETE1_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasDESCONTO_COMPRA: TFMTBCDField
      FieldName = 'DESCONTO_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasBICM_COMPRA: TFMTBCDField
      FieldName = 'BICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasVICM_COMPRA: TFMTBCDField
      FieldName = 'VICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasAICM_COMPRA: TFMTBCDField
      FieldName = 'AICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasIICM_COMPRA: TFMTBCDField
      FieldName = 'IICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasOICM_COMPRA: TFMTBCDField
      FieldName = 'OICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasBIPI_COMPRA: TFMTBCDField
      FieldName = 'BIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasAIPI_COMPRA: TFMTBCDField
      FieldName = 'AIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasVIPI_COMPRA: TFMTBCDField
      FieldName = 'VIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasIIPI_COMPRA: TFMTBCDField
      FieldName = 'IIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasOIPI_COMPRA: TFMTBCDField
      FieldName = 'OIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasBICS_COMPRA: TFMTBCDField
      FieldName = 'BICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasAICS_COMPRA: TFMTBCDField
      FieldName = 'AICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasVICS_COMPRA: TFMTBCDField
      FieldName = 'VICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasVOLUMES_COMPRA: TIntegerField
      FieldName = 'VOLUMES_COMPRA'
    end
    object qryComprasESPECIE_COMPRA: TStringField
      FieldName = 'ESPECIE_COMPRA'
      Size = 15
    end
    object qryComprasPESOBRUTO_COMPRA: TFMTBCDField
      FieldName = 'PESOBRUTO_COMPRA'
      Precision = 15
      Size = 3
    end
    object qryComprasPESOLIQUIDO_COMPRA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_COMPRA'
      Precision = 15
      Size = 3
    end
    object qryComprasCONHECIMEN_COMPRA: TStringField
      FieldName = 'CONHECIMEN_COMPRA'
      Size = 15
    end
    object qryComprasEXPORTADO_COMPRA: TStringField
      FieldName = 'EXPORTADO_COMPRA'
      Size = 1
    end
    object qryComprasOBSERVACAO2: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspCompras: TDataSetProvider
    DataSet = qryCompras
    Left = 160
    Top = 274
  end
  object cdsCompras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCompras'
    Left = 272
    Top = 274
    object cdsComprasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsComprasCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object cdsComprasFORNECEDOR_COMPRA: TIntegerField
      FieldName = 'FORNECEDOR_COMPRA'
    end
    object cdsComprasTIPOFORN_COMPRA: TStringField
      FieldName = 'TIPOFORN_COMPRA'
      Size = 1
    end
    object cdsComprasTRANSPORTA_COMPRA: TFMTBCDField
      FieldName = 'TRANSPORTA_COMPRA'
      Precision = 15
      Size = 0
    end
    object cdsComprasNOTAFISCAL_COMPRA: TIntegerField
      FieldName = 'NOTAFISCAL_COMPRA'
    end
    object cdsComprasSERIE_COMPRA: TStringField
      FieldName = 'SERIE_COMPRA'
      Size = 2
    end
    object cdsComprasSERIE2_COMPRA: TStringField
      FieldName = 'SERIE2_COMPRA'
      Size = 2
    end
    object cdsComprasEMISSAO_COMPRA: TDateField
      FieldName = 'EMISSAO_COMPRA'
    end
    object cdsComprasENTRADA_COMPRA: TDateField
      FieldName = 'ENTRADA_COMPRA'
    end
    object cdsComprasEXCLUSAO_COMPRA: TDateField
      FieldName = 'EXCLUSAO_COMPRA'
    end
    object cdsComprasCFOP_COMPRA: TStringField
      FieldName = 'CFOP_COMPRA'
      Size = 4
    end
    object cdsComprasHORA_COMPRA: TStringField
      FieldName = 'HORA_COMPRA'
      Size = 8
    end
    object cdsComprasVALORPRODUTO_COMPRA: TFMTBCDField
      FieldName = 'VALORPRODUTO_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasFRETE_COMPRA: TFMTBCDField
      FieldName = 'FRETE_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasSEGURO_COMPRA: TFMTBCDField
      FieldName = 'SEGURO_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasOUTRAS_COMPRA: TFMTBCDField
      FieldName = 'OUTRAS_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasFRETE1_COMPRA: TFMTBCDField
      FieldName = 'FRETE1_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasDESCONTO_COMPRA: TFMTBCDField
      FieldName = 'DESCONTO_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasBICM_COMPRA: TFMTBCDField
      FieldName = 'BICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasVICM_COMPRA: TFMTBCDField
      FieldName = 'VICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasAICM_COMPRA: TFMTBCDField
      FieldName = 'AICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasIICM_COMPRA: TFMTBCDField
      FieldName = 'IICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasOICM_COMPRA: TFMTBCDField
      FieldName = 'OICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasBIPI_COMPRA: TFMTBCDField
      FieldName = 'BIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasAIPI_COMPRA: TFMTBCDField
      FieldName = 'AIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasVIPI_COMPRA: TFMTBCDField
      FieldName = 'VIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasIIPI_COMPRA: TFMTBCDField
      FieldName = 'IIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasOIPI_COMPRA: TFMTBCDField
      FieldName = 'OIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasBICS_COMPRA: TFMTBCDField
      FieldName = 'BICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasAICS_COMPRA: TFMTBCDField
      FieldName = 'AICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasVICS_COMPRA: TFMTBCDField
      FieldName = 'VICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasVOLUMES_COMPRA: TIntegerField
      FieldName = 'VOLUMES_COMPRA'
    end
    object cdsComprasESPECIE_COMPRA: TStringField
      FieldName = 'ESPECIE_COMPRA'
      Size = 15
    end
    object cdsComprasPESOBRUTO_COMPRA: TFMTBCDField
      FieldName = 'PESOBRUTO_COMPRA'
      Precision = 15
      Size = 3
    end
    object cdsComprasPESOLIQUIDO_COMPRA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_COMPRA'
      Precision = 15
      Size = 3
    end
    object cdsComprasCONHECIMEN_COMPRA: TStringField
      FieldName = 'CONHECIMEN_COMPRA'
      Size = 15
    end
    object cdsComprasEXPORTADO_COMPRA: TStringField
      FieldName = 'EXPORTADO_COMPRA'
      Size = 1
    end
    object cdsComprasOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object qryProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_PRODUTOS WHERE  COD_EMPRESA=:EMPRESA ORDER BY DE' +
        'SCRICAO_PRODUTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 376
    Top = 72
    object qryProdutosMINIMO_PRODUTO: TFMTBCDField
      FieldName = 'MINIMO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qryProdutosCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
    end
    object qryProdutosGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object qryProdutosSUBGRUPO_PRODUTO: TIntegerField
      FieldName = 'SUBGRUPO_PRODUTO'
    end
    object qryProdutosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryProdutosUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object qryProdutosPESO_PRODUTO: TFMTBCDField
      FieldName = 'PESO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosSERIE_PRODUTO: TStringField
      FieldName = 'SERIE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryProdutosDESUSO_PRODUTO: TStringField
      FieldName = 'DESUSO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryProdutosGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryProdutosESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosESTOQUE1_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE1_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosESTOQUE2_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE2_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosESTOQUE3_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE3_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosMAXIMO_PRODUTO: TFMTBCDField
      FieldName = 'MAXIMO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosRESERVA_PRODUTO: TFMTBCDField
      FieldName = 'RESERVA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosPRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      Precision = 15
    end
    object qryProdutosPROMOCAO_PRODUTO: TFMTBCDField
      FieldName = 'PROMOCAO_PRODUTO'
      Precision = 15
    end
    object qryProdutosPRECO_ANT_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_ANT_PRODUTO'
      Precision = 15
    end
    object qryProdutosPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
    end
    object qryProdutosPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
    end
    object qryProdutosPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
    end
    object qryProdutosPER_DESCON_PRODUTO: TFMTBCDField
      FieldName = 'PER_DESCON_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosPER_ANTER_PRODUTO: TFMTBCDField
      FieldName = 'PER_ANTER_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosDATA_CUSTO_PRODUTO: TDateField
      FieldName = 'DATA_CUSTO_PRODUTO'
    end
    object qryProdutosVLRATACADO_PRODUTO: TFMTBCDField
      FieldName = 'VLRATACADO_PRODUTO'
      Precision = 15
    end
    object qryProdutosADQUIRIDA_PRODUTO: TFMTBCDField
      FieldName = 'ADQUIRIDA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosADQUIRIDA1_PRODUTO: TFMTBCDField
      FieldName = 'ADQUIRIDA1_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosDATA_COMPRA_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA_PRODUTO'
    end
    object qryProdutosDATA_COMPRA1_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA1_PRODUTO'
    end
    object qryProdutosULT_VENDA_PRODUTO: TDateField
      FieldName = 'ULT_VENDA_PRODUTO'
    end
    object qryProdutosCADASTRO_PRODUTO: TDateField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object qryProdutosFIM_PROMOCAO_PRODUTO: TDateField
      FieldName = 'FIM_PROMOCAO_PRODUTO'
    end
    object qryProdutosFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object qryProdutosBARRA_PRODUTO: TStringField
      FieldName = 'BARRA_PRODUTO'
      Size = 17
    end
    object qryProdutosMARKUP_PRODUTO: TFMTBCDField
      FieldName = 'MARKUP_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosREFERENCIA_PRODUTO: TStringField
      FieldName = 'REFERENCIA_PRODUTO'
      Size = 5
    end
    object qryProdutosICMSUB_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosICMSUB_VENDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_VENDA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosICM_ENTRADA_PRODUTO: TFMTBCDField
      FieldName = 'ICM_ENTRADA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosICMSAIDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosICMSAIDA_FORA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_FORA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosFRETE_PRODUTO: TFMTBCDField
      FieldName = 'FRETE_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosCOMISSAO1_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO1_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosCOMISSAO2_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO2_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosDESCONTO_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTO_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosDESCONTOC_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTOC_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosIPI_PRODUTO: TFMTBCDField
      FieldName = 'IPI_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosII_PRODUTO: TFMTBCDField
      FieldName = 'II_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosOUTROS_PRODUTO: TFMTBCDField
      FieldName = 'OUTROS_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosTMP_GARANTIA_PRODUTO: TStringField
      FieldName = 'TMP_GARANTIA_PRODUTO'
      Size = 10
    end
    object qryProdutosMEDIA_PRODUTO: TFMTBCDField
      FieldName = 'MEDIA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosREDU_DENTR_PRODUTO: TFMTBCDField
      FieldName = 'REDU_DENTR_PRODUTO'
      Precision = 15
    end
    object qryProdutosREDU_FORA_PRODUTO: TFMTBCDField
      FieldName = 'REDU_FORA_PRODUTO'
      Precision = 15
    end
    object qryProdutosOBS_DENTR_PRODUTO: TIntegerField
      FieldName = 'OBS_DENTR_PRODUTO'
    end
    object qryProdutosOBS_FORA_PRODUTO: TIntegerField
      FieldName = 'OBS_FORA_PRODUTO'
    end
    object qryProdutosISS_PRODUTO: TFMTBCDField
      FieldName = 'ISS_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosPRAT1_PRODUTO: TStringField
      FieldName = 'PRAT1_PRODUTO'
      Size = 8
    end
    object qryProdutosPRAT2_PRODUTO: TStringField
      FieldName = 'PRAT2_PRODUTO'
      Size = 8
    end
    object qryProdutosFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object qryProdutosDISTRIB1_PRODUTO: TIntegerField
      FieldName = 'DISTRIB1_PRODUTO'
    end
    object qryProdutosDISTRIB2_PRODUTO: TIntegerField
      FieldName = 'DISTRIB2_PRODUTO'
    end
    object qryProdutosVALIDADE_PRODUTO: TDateField
      FieldName = 'VALIDADE_PRODUTO'
    end
    object qryProdutosTRIB_DENTRO_PRODUTO: TStringField
      FieldName = 'TRIB_DENTRO_PRODUTO'
      Size = 3
    end
    object qryProdutosTRIB_FORA_PRODUTO: TStringField
      FieldName = 'TRIB_FORA_PRODUTO'
      Size = 3
    end
    object qryProdutosSIMILAR1_PRODUTO: TIntegerField
      FieldName = 'SIMILAR1_PRODUTO'
    end
    object qryProdutosSIMILAR2_PRODUTO: TIntegerField
      FieldName = 'SIMILAR2_PRODUTO'
    end
    object qryProdutosOBSERVACAO_PRODUTO: TMemoField
      FieldName = 'OBSERVACAO_PRODUTO'
      BlobType = ftMemo
      Size = 1
    end
    object qryProdutosSEXO_PRODUTO: TStringField
      FieldName = 'SEXO_PRODUTO'
      Size = 1
    end
    object qryProdutosFISCAL_PRODUTO: TStringField
      FieldName = 'FISCAL_PRODUTO'
      Size = 10
    end
    object qryProdutosCONTABIL_PRODUTO: TStringField
      FieldName = 'CONTABIL_PRODUTO'
      Size = 1
    end
    object qryProdutosC_DEFEITO_PRODUTO: TFMTBCDField
      FieldName = 'C_DEFEITO_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosENV_GARANTIA_PRODUTO: TFMTBCDField
      FieldName = 'ENV_GARANTIA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosLOCAL_ESTOQUE_PRODUTO: TIntegerField
      FieldName = 'LOCAL_ESTOQUE_PRODUTO'
    end
    object qryProdutosEXPORTADO_PRODUTO: TDateField
      FieldName = 'EXPORTADO_PRODUTO'
    end
    object qryProdutosSELECAO_PRODUTO: TStringField
      FieldName = 'SELECAO_PRODUTO'
      Size = 1
    end
    object qryProdutosMETRO_CUB_PRODUTO: TStringField
      FieldName = 'METRO_CUB_PRODUTO'
      Size = 1
    end
    object qryProdutosRECEITUAR_PRODUTO: TStringField
      FieldName = 'RECEITUAR_PRODUTO'
      Size = 1
    end
    object qryProdutosRED_CONTRI_PRODUTO: TStringField
      FieldName = 'RED_CONTRI_PRODUTO'
      Size = 1
    end
    object qryProdutosALI_CONTRI_PRODUTO: TFMTBCDField
      FieldName = 'ALI_CONTRI_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryProdutosTRIB_U_A_PRODUTO: TStringField
      FieldName = 'TRIB_U_A_PRODUTO'
      Size = 3
    end
    object qryProdutosTRIB_F_A_PRODUTO: TStringField
      FieldName = 'TRIB_F_A_PRODUTO'
      Size = 3
    end
    object qryProdutosRED_U_A_PRODUTO: TFMTBCDField
      FieldName = 'RED_U_A_PRODUTO'
      Precision = 15
    end
    object qryProdutosRED_F_A_PRODUTO: TFMTBCDField
      FieldName = 'RED_F_A_PRODUTO'
      Precision = 15
    end
    object qryProdutosMERCOSUL_PRODUTO: TStringField
      FieldName = 'MERCOSUL_PRODUTO'
      Size = 12
    end
    object qryProdutosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryProdutosFOTO_PRODUTO: TStringField
      FieldName = 'FOTO_PRODUTO'
      Size = 1
    end
    object qryProdutosQTD_FRACIONADA: TStringField
      FieldName = 'QTD_FRACIONADA'
      Size = 1
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = qryProdutos
    Options = [poAllowCommandText]
    Left = 488
    Top = 72
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'MINIMO_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'CODIGO_PRODUTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLASSE_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'GRUPO_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'SUBGRUPO_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO_PRODUTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UNIDADE_PRODUTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PESO_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'SERIE_PRODUTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESUSO_PRODUTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'GRADE_PRODUTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ESTOQUE_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'ESTOQUE1_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'ESTOQUE2_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'ESTOQUE3_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'MAXIMO_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'RESERVA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PRECOUNIT_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'PROMOCAO_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'PRECO_ANT_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'PRECO_COMPRA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'PRECO_CUSTO_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'PRECO_LISTA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'PER_DESCON_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'PER_ANTER_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'DATA_CUSTO_PRODUTO'
        DataType = ftDate
      end
      item
        Name = 'VLRATACADO_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'ADQUIRIDA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'ADQUIRIDA1_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'DATA_COMPRA_PRODUTO'
        DataType = ftDate
      end
      item
        Name = 'DATA_COMPRA1_PRODUTO'
        DataType = ftDate
      end
      item
        Name = 'ULT_VENDA_PRODUTO'
        DataType = ftDate
      end
      item
        Name = 'CADASTRO_PRODUTO'
        DataType = ftDate
      end
      item
        Name = 'FIM_PROMOCAO_PRODUTO'
        DataType = ftDate
      end
      item
        Name = 'FABRICANTE_PRODUTO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'BARRA_PRODUTO'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'MARKUP_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'REFERENCIA_PRODUTO'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ICMSUB_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'ICMSUB_VENDA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'ICM_ENTRADA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'ICMSAIDA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'ICMSAIDA_FORA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'FRETE_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'COMISSAO1_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'COMISSAO2_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'DESCONTO_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'DESCONTOC_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'IPI_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'II_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'OUTROS_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'TMP_GARANTIA_PRODUTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'MEDIA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'REDU_DENTR_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'REDU_FORA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'OBS_DENTR_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'OBS_FORA_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'ISS_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'PRAT1_PRODUTO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PRAT2_PRODUTO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'FABRICA_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'DISTRIB1_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'DISTRIB2_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'VALIDADE_PRODUTO'
        DataType = ftDate
      end
      item
        Name = 'TRIB_DENTRO_PRODUTO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TRIB_FORA_PRODUTO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'SIMILAR1_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'SIMILAR2_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'OBSERVACAO_PRODUTO'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'SEXO_PRODUTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FISCAL_PRODUTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CONTABIL_PRODUTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'C_DEFEITO_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'ENV_GARANTIA_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'LOCAL_ESTOQUE_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'EXPORTADO_PRODUTO'
        DataType = ftDate
      end
      item
        Name = 'SELECAO_PRODUTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'METRO_CUB_PRODUTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RECEITUAR_PRODUTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RED_CONTRI_PRODUTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ALI_CONTRI_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'TRIB_U_A_PRODUTO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TRIB_F_A_PRODUTO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'RED_U_A_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'RED_F_A_PRODUTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 8
      end
      item
        Name = 'MERCOSUL_PRODUTO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'COD_EMPRESA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FOTO_PRODUTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTD_FRACIONADA'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspProdutos'
    StoreDefs = True
    Left = 600
    Top = 72
    object cdsProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
      DisplayFormat = '000000'
    end
    object cdsProdutosCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
    end
    object cdsProdutosGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object cdsProdutosSUBGRUPO_PRODUTO: TIntegerField
      FieldName = 'SUBGRUPO_PRODUTO'
    end
    object cdsProdutosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsProdutosUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object cdsProdutosPESO_PRODUTO: TFMTBCDField
      FieldName = 'PESO_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object cdsProdutosSERIE_PRODUTO: TStringField
      FieldName = 'SERIE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 3
    end
    object f: TFMTBCDField
      FieldName = 'ESTOQUE1_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 3
    end
    object cdsProdutosESTOQUE2_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE2_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 3
    end
    object cdsProdutosDESUSO_PRODUTO: TStringField
      FieldName = 'DESUSO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosESTOQUE3_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE3_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 3
    end
    object cdsProdutosMINIMO_PRODUTO: TFMTBCDField
      FieldName = 'MINIMO_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 3
    end
    object cdsProdutosMAXIMO_PRODUTO: TFMTBCDField
      FieldName = 'MAXIMO_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 3
    end
    object cdsProdutosRESERVA_PRODUTO: TFMTBCDField
      FieldName = 'RESERVA_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 3
    end
    object cdsProdutosPRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosPROMOCAO_PRODUTO: TFMTBCDField
      FieldName = 'PROMOCAO_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosPRECO_ANT_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_ANT_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosPER_DESCON_PRODUTO: TFMTBCDField
      FieldName = 'PER_DESCON_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosPER_ANTER_PRODUTO: TFMTBCDField
      FieldName = 'PER_ANTER_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 2
    end
    object cdsProdutosDATA_CUSTO_PRODUTO: TDateField
      FieldName = 'DATA_CUSTO_PRODUTO'
    end
    object cdsProdutosVLRATACADO_PRODUTO: TFMTBCDField
      FieldName = 'VLRATACADO_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosADQUIRIDA_PRODUTO: TFMTBCDField
      FieldName = 'ADQUIRIDA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosADQUIRIDA1_PRODUTO: TFMTBCDField
      FieldName = 'ADQUIRIDA1_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosDATA_COMPRA_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA_PRODUTO'
    end
    object cdsProdutosDATA_COMPRA1_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA1_PRODUTO'
    end
    object cdsProdutosULT_VENDA_PRODUTO: TDateField
      FieldName = 'ULT_VENDA_PRODUTO'
      DisplayFormat = '0.00'
      EditMask = '0.00'
    end
    object cdsProdutosCADASTRO_PRODUTO: TDateField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object cdsProdutosFIM_PROMOCAO_PRODUTO: TDateField
      FieldName = 'FIM_PROMOCAO_PRODUTO'
    end
    object cdsProdutosFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object cdsProdutosBARRA_PRODUTO: TStringField
      FieldName = 'BARRA_PRODUTO'
      Size = 17
    end
    object cdsProdutosMARKUP_PRODUTO: TFMTBCDField
      FieldName = 'MARKUP_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosREFERENCIA_PRODUTO: TStringField
      FieldName = 'REFERENCIA_PRODUTO'
      Size = 5
    end
    object cdsProdutosICMSUB_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 2
    end
    object cdsProdutosICMSUB_VENDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_VENDA_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 2
    end
    object cdsProdutosICM_ENTRADA_PRODUTO: TFMTBCDField
      FieldName = 'ICM_ENTRADA_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosICMSAIDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosICMSAIDA_FORA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_FORA_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosFRETE_PRODUTO: TFMTBCDField
      FieldName = 'FRETE_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosCOMISSAO1_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO1_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosCOMISSAO2_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO2_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosDESCONTOC_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTOC_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosIPI_PRODUTO: TFMTBCDField
      FieldName = 'IPI_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosII_PRODUTO: TFMTBCDField
      FieldName = 'II_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosOUTROS_PRODUTO: TFMTBCDField
      FieldName = 'OUTROS_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosTMP_GARANTIA_PRODUTO: TStringField
      FieldName = 'TMP_GARANTIA_PRODUTO'
      Size = 10
    end
    object cdsProdutosMEDIA_PRODUTO: TFMTBCDField
      FieldName = 'MEDIA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosREDU_DENTR_PRODUTO: TFMTBCDField
      FieldName = 'REDU_DENTR_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosREDU_FORA_PRODUTO: TFMTBCDField
      FieldName = 'REDU_FORA_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosOBS_DENTR_PRODUTO: TIntegerField
      FieldName = 'OBS_DENTR_PRODUTO'
    end
    object cdsProdutosOBS_FORA_PRODUTO: TIntegerField
      FieldName = 'OBS_FORA_PRODUTO'
    end
    object cdsProdutosISS_PRODUTO: TFMTBCDField
      FieldName = 'ISS_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosPRAT1_PRODUTO: TStringField
      FieldName = 'PRAT1_PRODUTO'
      Size = 8
    end
    object cdsProdutosPRAT2_PRODUTO: TStringField
      FieldName = 'PRAT2_PRODUTO'
      Size = 8
    end
    object cdsProdutosFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object cdsProdutosDISTRIB1_PRODUTO: TIntegerField
      FieldName = 'DISTRIB1_PRODUTO'
    end
    object cdsProdutosDISTRIB2_PRODUTO: TIntegerField
      FieldName = 'DISTRIB2_PRODUTO'
    end
    object cdsProdutosVALIDADE_PRODUTO: TDateField
      FieldName = 'VALIDADE_PRODUTO'
    end
    object cdsProdutosTRIB_DENTRO_PRODUTO: TStringField
      FieldName = 'TRIB_DENTRO_PRODUTO'
      Size = 3
    end
    object cdsProdutosTRIB_FORA_PRODUTO: TStringField
      FieldName = 'TRIB_FORA_PRODUTO'
      Size = 3
    end
    object cdsProdutosSIMILAR1_PRODUTO: TIntegerField
      FieldName = 'SIMILAR1_PRODUTO'
    end
    object cdsProdutosSIMILAR2_PRODUTO: TIntegerField
      FieldName = 'SIMILAR2_PRODUTO'
    end
    object cdsProdutosOBSERVACAO_PRODUTO: TMemoField
      FieldName = 'OBSERVACAO_PRODUTO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutosSEXO_PRODUTO: TStringField
      FieldName = 'SEXO_PRODUTO'
      Size = 1
    end
    object cdsProdutosFISCAL_PRODUTO: TStringField
      FieldName = 'FISCAL_PRODUTO'
      Size = 10
    end
    object cdsProdutosCONTABIL_PRODUTO: TStringField
      FieldName = 'CONTABIL_PRODUTO'
      Size = 1
    end
    object cdsProdutosC_DEFEITO_PRODUTO: TFMTBCDField
      FieldName = 'C_DEFEITO_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosENV_GARANTIA_PRODUTO: TFMTBCDField
      FieldName = 'ENV_GARANTIA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosLOCAL_ESTOQUE_PRODUTO: TIntegerField
      FieldName = 'LOCAL_ESTOQUE_PRODUTO'
    end
    object cdsProdutosEXPORTADO_PRODUTO: TDateField
      FieldName = 'EXPORTADO_PRODUTO'
    end
    object cdsProdutosSELECAO_PRODUTO: TStringField
      FieldName = 'SELECAO_PRODUTO'
      Size = 1
    end
    object cdsProdutosMETRO_CUB_PRODUTO: TStringField
      FieldName = 'METRO_CUB_PRODUTO'
      Size = 1
    end
    object cdsProdutosRECEITUAR_PRODUTO: TStringField
      FieldName = 'RECEITUAR_PRODUTO'
      Size = 1
    end
    object cdsProdutosRED_CONTRI_PRODUTO: TStringField
      FieldName = 'RED_CONTRI_PRODUTO'
      Size = 1
    end
    object cdsProdutosALI_CONTRI_PRODUTO: TFMTBCDField
      FieldName = 'ALI_CONTRI_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosTRIB_U_A_PRODUTO: TStringField
      FieldName = 'TRIB_U_A_PRODUTO'
      Size = 3
    end
    object cdsProdutosTRIB_F_A_PRODUTO: TStringField
      FieldName = 'TRIB_F_A_PRODUTO'
      Size = 3
    end
    object cdsProdutosRED_U_A_PRODUTO: TFMTBCDField
      FieldName = 'RED_U_A_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosRED_F_A_PRODUTO: TFMTBCDField
      FieldName = 'RED_F_A_PRODUTO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsProdutosMERCOSUL_PRODUTO: TStringField
      FieldName = 'MERCOSUL_PRODUTO'
      Size = 12
    end
    object cdsProdutosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsProdutosDESCONTO_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTO_PRODUTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsProdutosFOTO_PRODUTO: TStringField
      FieldName = 'FOTO_PRODUTO'
      Size = 1
    end
    object cdsProdutosQTD_FRACIONADA: TStringField
      FieldName = 'QTD_FRACIONADA'
      Size = 1
    end
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
      'SELECT'
      'P.DESCRICAO_PRODUTO,'
      'P.CODIGO_PRODUTO,'
      'P.DESUSO_PRODUTO,'
      'P.FABRICA_PRODUTO,'
      'P.SIMILAR1_PRODUTO,'
      'P.SIMILAR2_PRODUTO,'
      'P.CLASSE_PRODUTO,'
      'P.GRADE_PRODUTO,'
      'P.UNIDADE_PRODUTO,'
      'P.PRECO_LISTA_PRODUTO,'
      'P.ESTOQUE_PRODUTO,'
      'P.FABRICANTE_PRODUTO,'
      'P.OBSERVACAO_PRODUTO,'
      ''
      'C.CODIGO_CLIENTE  AS CODIGO_FABRICANTE,'
      'C.NOME_CLIENTE    AS NOME_FABRICANTE,'
      'G.DESCRICAO_GRUPO AS NOME_GRUPO'
      '                                       '
      'FROM P_PRODUTOS P'
      ''
      
        'LEFT OUTER JOIN E_CLIENTE  C  ON (C.CODIGO_CLIENTE    = P.FABRIC' +
        'A_PRODUTO)'
      
        'LEFT OUTER JOIN P_GRUPOS  G  ON (G.CODIGO_GRUPO     = P.GRUPO_PR' +
        'ODUTO)'
      ''
      'WHERE P.COD_EMPRESA=:EMPRESA ORDER BY DESCRICAO_PRODUTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 376
    Top = 120
    object qryPesqProdutosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryPesqProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qryPesqProdutosDESUSO_PRODUTO: TStringField
      FieldName = 'DESUSO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryPesqProdutosFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object qryPesqProdutosSIMILAR1_PRODUTO: TIntegerField
      FieldName = 'SIMILAR1_PRODUTO'
    end
    object qryPesqProdutosSIMILAR2_PRODUTO: TIntegerField
      FieldName = 'SIMILAR2_PRODUTO'
    end
    object qryPesqProdutosCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
    end
    object qryPesqProdutosGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryPesqProdutosCODIGO_FABRICANTE: TIntegerField
      FieldName = 'CODIGO_FABRICANTE'
      ProviderFlags = [pfInWhere]
    end
    object qryPesqProdutosNOME_FABRICANTE: TStringField
      FieldName = 'NOME_FABRICANTE'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
    object qryPesqProdutosNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      ProviderFlags = [pfInWhere]
      Size = 30
    end
    object qryPesqProdutosUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object qryPesqProdutosPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryPesqProdutosESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryPesqProdutosFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object qryPesqProdutosOBSERVACAO_PRODUTO: TMemoField
      FieldName = 'OBSERVACAO_PRODUTO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspPesqProdutos: TDataSetProvider
    DataSet = qryPesqProdutos
    Options = [poAllowCommandText]
    Left = 490
    Top = 120
  end
  object cdsPesqProdutos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspPesqProdutos'
    Left = 600
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
    object cdsPesqProdutosDESUSO_PRODUTO: TStringField
      FieldName = 'DESUSO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsPesqProdutosFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object cdsPesqProdutosSIMILAR1_PRODUTO: TIntegerField
      FieldName = 'SIMILAR1_PRODUTO'
    end
    object cdsPesqProdutosSIMILAR2_PRODUTO: TIntegerField
      FieldName = 'SIMILAR2_PRODUTO'
    end
    object cdsPesqProdutosCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
    end
    object cdsPesqProdutosGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsPesqProdutosCODIGO_FABRICANTE: TIntegerField
      FieldName = 'CODIGO_FABRICANTE'
      ProviderFlags = [pfInWhere]
    end
    object cdsPesqProdutosNOME_FABRICANTE: TStringField
      FieldName = 'NOME_FABRICANTE'
      ProviderFlags = [pfInWhere]
      Size = 40
    end
    object cdsPesqProdutosNOME_GRUPO: TStringField
      FieldName = 'NOME_GRUPO'
      ProviderFlags = [pfInWhere]
      Size = 30
    end
    object cdsPesqProdutosUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object cdsPesqProdutosPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsPesqProdutosESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsPesqProdutosFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object cdsPesqProdutosOBSERVACAO_PRODUTO: TMemoField
      FieldName = 'OBSERVACAO_PRODUTO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object qryPesqClientes: TSQLQuery
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
        Name = 'TIPO'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT E_CLIENTE.*,'
      
        '       (E_CLIENTE.credito_cliente-E_CLIENTE.utilizado_cliente) A' +
        'S SALDO,'
      '       p_contrato.ultanuidade_contrato'
      '       FROM E_CLIENTE'
      '       LEFT OUTER JOIN E_CIDADE'
      '       ON E_CLIENTE.cidade_cliente=E_CIDADE.codigo_cidade'
      '       LEFT OUTER JOIN P_CONTRATO'
      '       ON E_CLIENTE.codigo_cliente=p_contrato.cliente_contrato'
      '       AND (P_CONTRATO.cod_empresa=:EMPRESA)'
      '       WHERE E_CLIENTE.TIPO_CLIENTE=:TIPO '
      '       ORDER BY E_CLIENTE.NOME_CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 48
    Top = 459
    object qryPesqClientesCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryPesqClientesTIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
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
    object qryPesqClientesTIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      Size = 1
    end
    object qryPesqClientesPAI_CLIENTE: TStringField
      FieldName = 'PAI_CLIENTE'
      Size = 40
    end
    object qryPesqClientesMAE_CLIENTE: TStringField
      FieldName = 'MAE_CLIENTE'
      Size = 40
    end
    object qryPesqClientesENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object qryPesqClientesCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object qryPesqClientesESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 9
    end
    object qryPesqClientesCX_POSTAL_CLIENTE: TStringField
      FieldName = 'CX_POSTAL_CLIENTE'
      Size = 6
    end
    object qryPesqClientesTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object qryPesqClientesDATANASC_CLIENTE: TDateField
      FieldName = 'DATANASC_CLIENTE'
    end
    object qryPesqClientesINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
    object qryPesqClientesINSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      Size = 10
    end
    object qryPesqClientesDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
    object qryPesqClientesULTIMA_COMPRA_CLIENTE: TDateField
      FieldName = 'ULTIMA_COMPRA_CLIENTE'
    end
    object qryPesqClientesDATACADASTRO_CLIENTE: TDateField
      FieldName = 'DATACADASTRO_CLIENTE'
    end
    object qryPesqClientesVALORCOMPRA_CLIENTE: TFMTBCDField
      FieldName = 'VALORCOMPRA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesCONTATO_CLIENTE: TStringField
      FieldName = 'CONTATO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesAREA_CLIENTE: TIntegerField
      FieldName = 'AREA_CLIENTE'
    end
    object qryPesqClientesCONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      Size = 1
    end
    object qryPesqClientesOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object qryPesqClientesMANEQUIN_CLIENTE: TStringField
      FieldName = 'MANEQUIN_CLIENTE'
      Size = 2
    end
    object qryPesqClientesSAPATO_CLIENTE: TStringField
      FieldName = 'SAPATO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesMANEQUIN1_CLIENTE: TStringField
      FieldName = 'MANEQUIN1_CLIENTE'
      Size = 2
    end
    object qryPesqClientesSAPATO1_CLIENTE: TStringField
      FieldName = 'SAPATO1_CLIENTE'
      Size = 2
    end
    object qryPesqClientesSPC_CLIENTE: TStringField
      FieldName = 'SPC_CLIENTE'
      Size = 2
    end
    object qryPesqClientesCHECK_CLIENTE: TStringField
      FieldName = 'CHECK_CLIENTE'
      Size = 2
    end
    object qryPesqClientesSERASA_CLIENTE: TStringField
      FieldName = 'SERASA_CLIENTE'
      Size = 2
    end
    object qryPesqClientesATACADO_CLIENTE: TStringField
      FieldName = 'ATACADO_CLIENTE'
      Size = 1
    end
    object qryPesqClientesHOMEPAGE_CLIENTE: TStringField
      FieldName = 'HOMEPAGE_CLIENTE'
      Size = 30
    end
    object qryPesqClientesEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 30
    end
    object qryPesqClientesDDG_CLIENTE: TStringField
      FieldName = 'DDG_CLIENTE'
      Size = 13
    end
    object qryPesqClientesSOCIO1_CLIENTE: TStringField
      FieldName = 'SOCIO1_CLIENTE'
      Size = 40
    end
    object qryPesqClientesSOCIO2_CLIENTE: TStringField
      FieldName = 'SOCIO2_CLIENTE'
      Size = 40
    end
    object qryPesqClientesSOCIO1_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO1_DATANASC_CLIENTE'
    end
    object qryPesqClientesSOCIO2_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO2_DATANASC_CLIENTE'
    end
    object qryPesqClientesGERENTE_CLIENTE: TStringField
      FieldName = 'GERENTE_CLIENTE'
      Size = 40
    end
    object qryPesqClientesGERENTE_DATANASC_CLIENTE: TDateField
      FieldName = 'GERENTE_DATANASC_CLIENTE'
    end
    object qryPesqClientesJUNTACOMERCIAL_CLIENTE: TStringField
      FieldName = 'JUNTACOMERCIAL_CLIENTE'
      Size = 30
    end
    object qryPesqClientesCAPITAL_CLIENTE: TFMTBCDField
      FieldName = 'CAPITAL_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesTRAB_CLIENTE: TStringField
      FieldName = 'TRAB_CLIENTE'
      Size = 30
    end
    object qryPesqClientesTRAB_FUNCAO_CLIENTE: TStringField
      FieldName = 'TRAB_FUNCAO_CLIENTE'
      Size = 30
    end
    object qryPesqClientesTRAB_FONE_CLIENTE: TStringField
      FieldName = 'TRAB_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesTRAB_RAMAL_CLIENTE: TStringField
      FieldName = 'TRAB_RAMAL_CLIENTE'
      Size = 4
    end
    object qryPesqClientesTRAB_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesTRAB_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesCONJUGE_CLIENTE: TStringField
      FieldName = 'CONJUGE_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCONJUGE_TRABALHO_CLIENTE: TStringField
      FieldName = 'CONJUGE_TRABALHO_CLIENTE'
      Size = 30
    end
    object qryPesqClientesCONJUGE_FUNCAO1_CLIENTE: TStringField
      FieldName = 'CONJUGE_FUNCAO1_CLIENTE'
      Size = 30
    end
    object qryPesqClientesCONJUGE_DATANASC_CLIENTE: TDateField
      FieldName = 'CONJUGE_DATANASC_CLIENTE'
    end
    object qryPesqClientesCONJUGE_FONE_CLIENTE: TStringField
      FieldName = 'CONJUGE_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCONJUGE_RAMAL_CLIENTE: TStringField
      FieldName = 'CONJUGE_RAMAL_CLIENTE'
      Size = 4
    end
    object qryPesqClientesCONJUGE_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesCONJUGE_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesREF_BANCO1_CLIENTE: TStringField
      FieldName = 'REF_BANCO1_CLIENTE'
      Size = 22
    end
    object qryPesqClientesREF_BANCO2_CLIENTE: TStringField
      FieldName = 'REF_BANCO2_CLIENTE'
      Size = 22
    end
    object qryPesqClientesREF_BANCOFONE1_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE1_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_BANCOFONE2_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE2_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_COMERCIAL1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 22
    end
    object qryPesqClientesREF_COMERCIAL2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 22
    end
    object qryPesqClientesREF_COMERCIALFONE1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE1_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_COMERCIALFONE2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE2_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_PESSOAL1_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL1_CLIENTE'
      Size = 30
    end
    object qryPesqClientesREF_PESSOAL2_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL2_CLIENTE'
      Size = 30
    end
    object qryPesqClientesREF_PESSOALFONE1_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE1_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_PESSOALFONE2_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE2_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCOB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCOB_BAIRRO_CLIENTE: TStringField
      FieldName = 'COB_BAIRRO_CLIENTE'
    end
    object qryPesqClientesCOB_CIDADE_CLIENTE: TIntegerField
      FieldName = 'COB_CIDADE_CLIENTE'
    end
    object qryPesqClientesCOB_ESTADO_CLIENTE: TStringField
      FieldName = 'COB_ESTADO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesCOB_CEP_CLIENTE: TStringField
      FieldName = 'COB_CEP_CLIENTE'
      Size = 9
    end
    object qryPesqClientesCOB_TELEFONE_CLIENTE: TStringField
      FieldName = 'COB_TELEFONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCOB_FAX_CLIENTE: TStringField
      FieldName = 'COB_FAX_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCOB_CXPOSTAL_CLIENTE: TStringField
      FieldName = 'COB_CXPOSTAL_CLIENTE'
      Size = 6
    end
    object qryPesqClientesVENDEDOR_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR_CLIENTE'
    end
    object qryPesqClientesVENDEDOR1_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR1_CLIENTE'
    end
    object qryPesqClientesRAMO1_CLIENTE: TIntegerField
      FieldName = 'RAMO1_CLIENTE'
    end
    object qryPesqClientesRAMO2_CLIENTE: TIntegerField
      FieldName = 'RAMO2_CLIENTE'
    end
    object qryPesqClientesRAMO3_CLIENTE: TIntegerField
      FieldName = 'RAMO3_CLIENTE'
    end
    object qryPesqClientesTPGTO_CLIENTE: TIntegerField
      FieldName = 'TPGTO_CLIENTE'
    end
    object qryPesqClientesBANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC1_CLIENTE: TStringField
      FieldName = 'AGENC1_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB1_CLIENTE: TStringField
      FieldName = 'FONEB1_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA1_CLIENTE: TStringField
      FieldName = 'CONTA1_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD1_CLIENTE: TDateField
      FieldName = 'CLDSD1_CLIENTE'
    end
    object qryPesqClientesBANCO2_CLIENTE: TStringField
      FieldName = 'BANCO2_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC2_CLIENTE: TStringField
      FieldName = 'AGENC2_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB2_CLIENTE: TStringField
      FieldName = 'FONEB2_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA2_CLIENTE: TStringField
      FieldName = 'CONTA2_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD2_CLIENTE: TDateField
      FieldName = 'CLDSD2_CLIENTE'
    end
    object qryPesqClientesBANCO3_CLIENTE: TStringField
      FieldName = 'BANCO3_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC3_CLIENTE: TStringField
      FieldName = 'AGENC3_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB3_CLIENTE: TStringField
      FieldName = 'FONEB3_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA3_CLIENTE: TStringField
      FieldName = 'CONTA3_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD3_CLIENTE: TDateField
      FieldName = 'CLDSD3_CLIENTE'
    end
    object qryPesqClientesBANCO4_CLIENTE: TStringField
      FieldName = 'BANCO4_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC4_CLIENTE: TStringField
      FieldName = 'AGENC4_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB4_CLIENTE: TStringField
      FieldName = 'FONEB4_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA4_CLIENTE: TStringField
      FieldName = 'CONTA4_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD4_CLIENTE: TDateField
      FieldName = 'CLDSD4_CLIENTE'
    end
    object qryPesqClientesBANCO5_CLIENTE: TStringField
      FieldName = 'BANCO5_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC5_CLIENTE: TStringField
      FieldName = 'AGENC5_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB5_CLIENTE: TStringField
      FieldName = 'FONEB5_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA5_CLIENTE: TStringField
      FieldName = 'CONTA5_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD5_CLIENTE: TDateField
      FieldName = 'CLDSD5_CLIENTE'
    end
    object qryPesqClientesCOMISSAO_CLIENTE: TStringField
      FieldName = 'COMISSAO_CLIENTE'
      Size = 1
    end
    object qryPesqClientesCARTAO_CLIENTE: TDateField
      FieldName = 'CARTAO_CLIENTE'
    end
    object qryPesqClientesULTIMO_CONT_CLIENTE: TDateField
      FieldName = 'ULTIMO_CONT_CLIENTE'
    end
    object qryPesqClientesUSUARIO_CLIENTE: TStringField
      FieldName = 'USUARIO_CLIENTE'
      Size = 10
    end
    object qryPesqClientesSTATUS_CLIENTE: TStringField
      FieldName = 'STATUS_CLIENTE'
      Size = 1
    end
    object qryPesqClientesNATURALID_CLIENTE: TStringField
      FieldName = 'NATURALID_CLIENTE'
      Size = 30
    end
    object qryPesqClientesESTADOCIVIL_CLIENTE: TStringField
      FieldName = 'ESTADOCIVIL_CLIENTE'
      Size = 15
    end
    object qryPesqClientesCARTEIRATRAB_CLIENTE: TStringField
      FieldName = 'CARTEIRATRAB_CLIENTE'
      Size = 15
    end
    object qryPesqClientesTEMPO_RES_CLIENTE: TStringField
      FieldName = 'TEMPO_RES_CLIENTE'
      Size = 10
    end
    object qryPesqClientesTIPO_CASA_CLIENTE: TStringField
      FieldName = 'TIPO_CASA_CLIENTE'
      Size = 1
    end
    object qryPesqClientesVALOR_CASA_CLIENTE: TFMTBCDField
      FieldName = 'VALOR_CASA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesFONERECADO_CLIENTE: TStringField
      FieldName = 'FONERECADO_CLIENTE'
      Size = 13
    end
    object qryPesqClientesTRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesTRAB_BAIRRO_CLIENTE: TStringField
      FieldName = 'TRAB_BAIRRO_CLIENTE'
    end
    object qryPesqClientesTRAB_CIDADE_CLIENTE: TStringField
      FieldName = 'TRAB_CIDADE_CLIENTE'
    end
    object qryPesqClientesTRAB_ESTADO_CLIENTE: TStringField
      FieldName = 'TRAB_ESTADO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesTRAB_CEP_CLIENTE: TStringField
      FieldName = 'TRAB_CEP_CLIENTE'
      Size = 9
    end
    object qryPesqClientesTRAB_DATAADMISSAO_CLIENTE: TDateField
      FieldName = 'TRAB_DATAADMISSAO_CLIENTE'
    end
    object qryPesqClientesAVACONJ_TIPO_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPO_CLIENTE'
      Size = 1
    end
    object qryPesqClientesAVACONJ_NOME_CLIENTE: TStringField
      FieldName = 'AVACONJ_NOME_CLIENTE'
      Size = 40
    end
    object qryPesqClientesAVACONJ_DATANASC_CLIENTE: TDateField
      FieldName = 'AVACONJ_DATANASC_CLIENTE'
    end
    object qryPesqClientesAVACONJ_ESTCIVIL_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTCIVIL_CLIENTE'
      Size = 10
    end
    object qryPesqClientesAVACONJ_PAI_CLIENTE: TStringField
      FieldName = 'AVACONJ_PAI_CLIENTE'
      Size = 30
    end
    object qryPesqClientesAVACONJ_MAE_CLIENTE: TStringField
      FieldName = 'AVACONJ_MAE_CLIENTE'
      Size = 30
    end
    object qryPesqClientesAVACONJ_RG_CLIENTE: TStringField
      FieldName = 'AVACONJ_RG_CLIENTE'
    end
    object qryPesqClientesAVACONJ_CPF_CLIENTE: TStringField
      FieldName = 'AVACONJ_CPF_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAVACONJ_CARTERA_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARTERA_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAVACONJ_ENDERECO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesAVACONJ_BAIRRO_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAIRRO_CLIENTE'
    end
    object qryPesqClientesAVACONJ_CIDADE_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDADE_CLIENTE'
    end
    object qryPesqClientesAVACONJ_ESTADO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTADO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesAVACONJ_CEP_CLIENTE: TStringField
      FieldName = 'AVACONJ_CEP_CLIENTE'
      Size = 9
    end
    object qryPesqClientesAVACONJ_FONE_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesAVACONJ_TEMPORESID_CLIENTE: TStringField
      FieldName = 'AVACONJ_TEMPORESID_CLIENTE'
      Size = 10
    end
    object qryPesqClientesAVACONJ_TIPOIMOV_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPOIMOV_CLIENTE'
      Size = 1
    end
    object qryPesqClientesAVACONJ_EMPTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_EMPTRAB_CLIENTE'
      Size = 30
    end
    object qryPesqClientesAVACONJ_ENDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDTRAB_CLIENTE'
      Size = 40
    end
    object qryPesqClientesAVACONJ_BAITRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAITRAB_CLIENTE'
    end
    object qryPesqClientesAVACONJ_CIDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDTRAB_CLIENTE'
    end
    object qryPesqClientesAVACONJ_ESTTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTTRAB_CLIENTE'
      Size = 2
    end
    object qryPesqClientesAVACONJ_ADMTRAB_CLIENTE: TDateField
      FieldName = 'AVACONJ_ADMTRAB_CLIENTE'
    end
    object qryPesqClientesAVACONJ_FUNCAO_CLIENTE: TStringField
      FieldName = 'AVACONJ_FUNCAO_CLIENTE'
    end
    object qryPesqClientesAVACONJ_CARGO_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARGO_CLIENTE'
    end
    object qryPesqClientesAVACONJ_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'AVACONJ_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesAVACONJ_FONTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONTRAB_CLIENTE'
      Size = 13
    end
    object qryPesqClientesAVACONJ_REFERENCIA1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA1_CLIENTE'
      Size = 22
    end
    object qryPesqClientesAVACONJ_REFERENCIA2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA2_CLIENTE'
      Size = 22
    end
    object qryPesqClientesAVACONJ_REFERENCIA3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA3_CLIENTE'
      Size = 22
    end
    object qryPesqClientesPARENTE_NOME_CLIENTE: TStringField
      FieldName = 'PARENTE_NOME_CLIENTE'
      Size = 40
    end
    object qryPesqClientesPARENTE_FONE_CLIENTE: TStringField
      FieldName = 'PARENTE_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesPARENTE_ENDERECO_CLIENTE: TStringField
      FieldName = 'PARENTE_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesPARENTE_BAIRRO_CLIENTE: TStringField
      FieldName = 'PARENTE_BAIRRO_CLIENTE'
    end
    object qryPesqClientesPARENTE_CIDADE_CLIENTE: TStringField
      FieldName = 'PARENTE_CIDADE_CLIENTE'
    end
    object qryPesqClientesDATABASE_CLIENTE: TIntegerField
      FieldName = 'DATABASE_CLIENTE'
    end
    object qryPesqClientesCONTATO1_CLIENTE: TStringField
      FieldName = 'CONTATO1_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCONTATO2_CLIENTE: TStringField
      FieldName = 'CONTATO2_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCONTATO3_CLIENTE: TStringField
      FieldName = 'CONTATO3_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCONTATO1_FONE__CLIENTE: TStringField
      FieldName = 'CONTATO1_FONE__CLIENTE'
      Size = 13
    end
    object qryPesqClientesCONTATO2_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO2_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCONTATO3_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO3_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesPAIS_CLIENTE: TStringField
      FieldName = 'PAIS_CLIENTE'
    end
    object qryPesqClientesREPR_NOME_CLIENTE: TStringField
      FieldName = 'REPR_NOME_CLIENTE'
      Size = 40
    end
    object qryPesqClientesREPR_FONE_CLIENTE: TStringField
      FieldName = 'REPR_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREPR_CELULAR_CLIENTE: TStringField
      FieldName = 'REPR_CELULAR_CLIENTE'
      Size = 15
    end
    object qryPesqClientesREPR_FAX_CLIENTE: TStringField
      FieldName = 'REPR_FAX_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAVACONJ_REFFONE3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE3_CLIENTE'
      Size = 13
    end
    object qryPesqClientesAVACONJ_REFFONE2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE2_CLIENTE'
      Size = 13
    end
    object qryPesqClientesAVACONJ_REFFONE1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE1_CLIENTE'
      Size = 13
    end
    object qryPesqClientesSALDO: TFMTBCDField
      FieldName = 'SALDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object qryPesqClientesULTANUIDADE_CONTRATO: TIntegerField
      FieldName = 'ULTANUIDADE_CONTRATO'
    end
  end
  object dspPesqClientes: TDataSetProvider
    DataSet = qryPesqClientes
    Options = [poAllowCommandText]
    Left = 160
    Top = 459
  end
  object cdsPesqCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspPesqClientes'
    Left = 272
    Top = 459
    object cdsPesqClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsPesqClienteTIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
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
    object cdsPesqClienteTIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      Size = 1
    end
    object cdsPesqClientePAI_CLIENTE: TStringField
      FieldName = 'PAI_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteMAE_CLIENTE: TStringField
      FieldName = 'MAE_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsPesqClienteCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object cdsPesqClienteESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClienteCX_POSTAL_CLIENTE: TStringField
      FieldName = 'CX_POSTAL_CLIENTE'
      Size = 6
    end
    object cdsPesqClienteTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object cdsPesqClienteDATANASC_CLIENTE: TDateField
      FieldName = 'DATANASC_CLIENTE'
    end
    object cdsPesqClienteINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
    object cdsPesqClienteINSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
    object cdsPesqClienteULTIMA_COMPRA_CLIENTE: TDateField
      FieldName = 'ULTIMA_COMPRA_CLIENTE'
    end
    object cdsPesqClienteDATACADASTRO_CLIENTE: TDateField
      FieldName = 'DATACADASTRO_CLIENTE'
    end
    object cdsPesqClienteVALORCOMPRA_CLIENTE: TFMTBCDField
      FieldName = 'VALORCOMPRA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteCONTATO_CLIENTE: TStringField
      FieldName = 'CONTATO_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteAREA_CLIENTE: TIntegerField
      FieldName = 'AREA_CLIENTE'
    end
    object cdsPesqClienteCONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      Size = 1
    end
    object cdsPesqClienteOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPesqClienteMANEQUIN_CLIENTE: TStringField
      FieldName = 'MANEQUIN_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteSAPATO_CLIENTE: TStringField
      FieldName = 'SAPATO_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteMANEQUIN1_CLIENTE: TStringField
      FieldName = 'MANEQUIN1_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteSAPATO1_CLIENTE: TStringField
      FieldName = 'SAPATO1_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteSPC_CLIENTE: TStringField
      FieldName = 'SPC_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteCHECK_CLIENTE: TStringField
      FieldName = 'CHECK_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteSERASA_CLIENTE: TStringField
      FieldName = 'SERASA_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteATACADO_CLIENTE: TStringField
      FieldName = 'ATACADO_CLIENTE'
      Size = 1
    end
    object cdsPesqClienteHOMEPAGE_CLIENTE: TStringField
      FieldName = 'HOMEPAGE_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteDDG_CLIENTE: TStringField
      FieldName = 'DDG_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteSOCIO1_CLIENTE: TStringField
      FieldName = 'SOCIO1_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteSOCIO2_CLIENTE: TStringField
      FieldName = 'SOCIO2_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteSOCIO1_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO1_DATANASC_CLIENTE'
    end
    object cdsPesqClienteSOCIO2_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO2_DATANASC_CLIENTE'
    end
    object cdsPesqClienteGERENTE_CLIENTE: TStringField
      FieldName = 'GERENTE_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteGERENTE_DATANASC_CLIENTE: TDateField
      FieldName = 'GERENTE_DATANASC_CLIENTE'
    end
    object cdsPesqClienteJUNTACOMERCIAL_CLIENTE: TStringField
      FieldName = 'JUNTACOMERCIAL_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteCAPITAL_CLIENTE: TFMTBCDField
      FieldName = 'CAPITAL_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteTRAB_CLIENTE: TStringField
      FieldName = 'TRAB_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteTRAB_FUNCAO_CLIENTE: TStringField
      FieldName = 'TRAB_FUNCAO_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteTRAB_FONE_CLIENTE: TStringField
      FieldName = 'TRAB_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteTRAB_RAMAL_CLIENTE: TStringField
      FieldName = 'TRAB_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsPesqClienteTRAB_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteTRAB_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteCONJUGE_CLIENTE: TStringField
      FieldName = 'CONJUGE_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteCONJUGE_TRABALHO_CLIENTE: TStringField
      FieldName = 'CONJUGE_TRABALHO_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteCONJUGE_FUNCAO1_CLIENTE: TStringField
      FieldName = 'CONJUGE_FUNCAO1_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteCONJUGE_DATANASC_CLIENTE: TDateField
      FieldName = 'CONJUGE_DATANASC_CLIENTE'
    end
    object cdsPesqClienteCONJUGE_FONE_CLIENTE: TStringField
      FieldName = 'CONJUGE_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCONJUGE_RAMAL_CLIENTE: TStringField
      FieldName = 'CONJUGE_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsPesqClienteCONJUGE_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteCONJUGE_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteREF_BANCO1_CLIENTE: TStringField
      FieldName = 'REF_BANCO1_CLIENTE'
      Size = 22
    end
    object cdsPesqClienteREF_BANCO2_CLIENTE: TStringField
      FieldName = 'REF_BANCO2_CLIENTE'
      Size = 22
    end
    object cdsPesqClienteREF_BANCOFONE1_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteREF_BANCOFONE2_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteREF_COMERCIAL1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 22
    end
    object cdsPesqClienteREF_COMERCIAL2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 22
    end
    object cdsPesqClienteREF_COMERCIALFONE1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteREF_COMERCIALFONE2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteREF_PESSOAL1_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL1_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteREF_PESSOAL2_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL2_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteREF_PESSOALFONE1_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteREF_PESSOALFONE2_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCOB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteCOB_BAIRRO_CLIENTE: TStringField
      FieldName = 'COB_BAIRRO_CLIENTE'
    end
    object cdsPesqClienteCOB_CIDADE_CLIENTE: TIntegerField
      FieldName = 'COB_CIDADE_CLIENTE'
    end
    object cdsPesqClienteCOB_ESTADO_CLIENTE: TStringField
      FieldName = 'COB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteCOB_CEP_CLIENTE: TStringField
      FieldName = 'COB_CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClienteCOB_TELEFONE_CLIENTE: TStringField
      FieldName = 'COB_TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCOB_FAX_CLIENTE: TStringField
      FieldName = 'COB_FAX_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCOB_CXPOSTAL_CLIENTE: TStringField
      FieldName = 'COB_CXPOSTAL_CLIENTE'
      Size = 6
    end
    object cdsPesqClienteVENDEDOR_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR_CLIENTE'
    end
    object cdsPesqClienteVENDEDOR1_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR1_CLIENTE'
    end
    object cdsPesqClienteRAMO1_CLIENTE: TIntegerField
      FieldName = 'RAMO1_CLIENTE'
    end
    object cdsPesqClienteRAMO2_CLIENTE: TIntegerField
      FieldName = 'RAMO2_CLIENTE'
    end
    object cdsPesqClienteRAMO3_CLIENTE: TIntegerField
      FieldName = 'RAMO3_CLIENTE'
    end
    object cdsPesqClienteTPGTO_CLIENTE: TIntegerField
      FieldName = 'TPGTO_CLIENTE'
    end
    object cdsPesqClienteBANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteAGENC1_CLIENTE: TStringField
      FieldName = 'AGENC1_CLIENTE'
      Size = 6
    end
    object cdsPesqClienteFONEB1_CLIENTE: TStringField
      FieldName = 'FONEB1_CLIENTE'
      Size = 14
    end
    object cdsPesqClienteCONTA1_CLIENTE: TStringField
      FieldName = 'CONTA1_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteCLDSD1_CLIENTE: TDateField
      FieldName = 'CLDSD1_CLIENTE'
    end
    object cdsPesqClienteBANCO2_CLIENTE: TStringField
      FieldName = 'BANCO2_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteAGENC2_CLIENTE: TStringField
      FieldName = 'AGENC2_CLIENTE'
      Size = 6
    end
    object cdsPesqClienteFONEB2_CLIENTE: TStringField
      FieldName = 'FONEB2_CLIENTE'
      Size = 14
    end
    object cdsPesqClienteCONTA2_CLIENTE: TStringField
      FieldName = 'CONTA2_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteCLDSD2_CLIENTE: TDateField
      FieldName = 'CLDSD2_CLIENTE'
    end
    object cdsPesqClienteBANCO3_CLIENTE: TStringField
      FieldName = 'BANCO3_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteAGENC3_CLIENTE: TStringField
      FieldName = 'AGENC3_CLIENTE'
      Size = 6
    end
    object cdsPesqClienteFONEB3_CLIENTE: TStringField
      FieldName = 'FONEB3_CLIENTE'
      Size = 14
    end
    object cdsPesqClienteCONTA3_CLIENTE: TStringField
      FieldName = 'CONTA3_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteCLDSD3_CLIENTE: TDateField
      FieldName = 'CLDSD3_CLIENTE'
    end
    object cdsPesqClienteBANCO4_CLIENTE: TStringField
      FieldName = 'BANCO4_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteAGENC4_CLIENTE: TStringField
      FieldName = 'AGENC4_CLIENTE'
      Size = 6
    end
    object cdsPesqClienteFONEB4_CLIENTE: TStringField
      FieldName = 'FONEB4_CLIENTE'
      Size = 14
    end
    object cdsPesqClienteCONTA4_CLIENTE: TStringField
      FieldName = 'CONTA4_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteCLDSD4_CLIENTE: TDateField
      FieldName = 'CLDSD4_CLIENTE'
    end
    object cdsPesqClienteBANCO5_CLIENTE: TStringField
      FieldName = 'BANCO5_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteAGENC5_CLIENTE: TStringField
      FieldName = 'AGENC5_CLIENTE'
      Size = 6
    end
    object cdsPesqClienteFONEB5_CLIENTE: TStringField
      FieldName = 'FONEB5_CLIENTE'
      Size = 14
    end
    object cdsPesqClienteCONTA5_CLIENTE: TStringField
      FieldName = 'CONTA5_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteCLDSD5_CLIENTE: TDateField
      FieldName = 'CLDSD5_CLIENTE'
    end
    object cdsPesqClienteCOMISSAO_CLIENTE: TStringField
      FieldName = 'COMISSAO_CLIENTE'
      Size = 1
    end
    object cdsPesqClienteCARTAO_CLIENTE: TDateField
      FieldName = 'CARTAO_CLIENTE'
    end
    object cdsPesqClienteULTIMO_CONT_CLIENTE: TDateField
      FieldName = 'ULTIMO_CONT_CLIENTE'
    end
    object cdsPesqClienteUSUARIO_CLIENTE: TStringField
      FieldName = 'USUARIO_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteSTATUS_CLIENTE: TStringField
      FieldName = 'STATUS_CLIENTE'
      Size = 1
    end
    object cdsPesqClienteNATURALID_CLIENTE: TStringField
      FieldName = 'NATURALID_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteESTADOCIVIL_CLIENTE: TStringField
      FieldName = 'ESTADOCIVIL_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteCARTEIRATRAB_CLIENTE: TStringField
      FieldName = 'CARTEIRATRAB_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteTEMPO_RES_CLIENTE: TStringField
      FieldName = 'TEMPO_RES_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteTIPO_CASA_CLIENTE: TStringField
      FieldName = 'TIPO_CASA_CLIENTE'
      Size = 1
    end
    object cdsPesqClienteVALOR_CASA_CLIENTE: TFMTBCDField
      FieldName = 'VALOR_CASA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteFONERECADO_CLIENTE: TStringField
      FieldName = 'FONERECADO_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteTRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteTRAB_BAIRRO_CLIENTE: TStringField
      FieldName = 'TRAB_BAIRRO_CLIENTE'
    end
    object cdsPesqClienteTRAB_CIDADE_CLIENTE: TStringField
      FieldName = 'TRAB_CIDADE_CLIENTE'
    end
    object cdsPesqClienteTRAB_ESTADO_CLIENTE: TStringField
      FieldName = 'TRAB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteTRAB_CEP_CLIENTE: TStringField
      FieldName = 'TRAB_CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClienteTRAB_DATAADMISSAO_CLIENTE: TDateField
      FieldName = 'TRAB_DATAADMISSAO_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_TIPO_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPO_CLIENTE'
      Size = 1
    end
    object cdsPesqClienteAVACONJ_NOME_CLIENTE: TStringField
      FieldName = 'AVACONJ_NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteAVACONJ_DATANASC_CLIENTE: TDateField
      FieldName = 'AVACONJ_DATANASC_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_ESTCIVIL_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTCIVIL_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteAVACONJ_PAI_CLIENTE: TStringField
      FieldName = 'AVACONJ_PAI_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteAVACONJ_MAE_CLIENTE: TStringField
      FieldName = 'AVACONJ_MAE_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteAVACONJ_RG_CLIENTE: TStringField
      FieldName = 'AVACONJ_RG_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_CPF_CLIENTE: TStringField
      FieldName = 'AVACONJ_CPF_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteAVACONJ_CARTERA_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARTERA_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteAVACONJ_ENDERECO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteAVACONJ_BAIRRO_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAIRRO_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_CIDADE_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDADE_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_ESTADO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteAVACONJ_CEP_CLIENTE: TStringField
      FieldName = 'AVACONJ_CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClienteAVACONJ_FONE_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteAVACONJ_TEMPORESID_CLIENTE: TStringField
      FieldName = 'AVACONJ_TEMPORESID_CLIENTE'
      Size = 10
    end
    object cdsPesqClienteAVACONJ_TIPOIMOV_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPOIMOV_CLIENTE'
      Size = 1
    end
    object cdsPesqClienteAVACONJ_EMPTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_EMPTRAB_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteAVACONJ_ENDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDTRAB_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteAVACONJ_BAITRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAITRAB_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_CIDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDTRAB_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_ESTTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTTRAB_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteAVACONJ_ADMTRAB_CLIENTE: TDateField
      FieldName = 'AVACONJ_ADMTRAB_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_FUNCAO_CLIENTE: TStringField
      FieldName = 'AVACONJ_FUNCAO_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_CARGO_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARGO_CLIENTE'
    end
    object cdsPesqClienteAVACONJ_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'AVACONJ_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteAVACONJ_FONTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONTRAB_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteAVACONJ_REFERENCIA1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA1_CLIENTE'
      Size = 22
    end
    object cdsPesqClienteAVACONJ_REFERENCIA2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA2_CLIENTE'
      Size = 22
    end
    object cdsPesqClienteAVACONJ_REFERENCIA3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA3_CLIENTE'
      Size = 22
    end
    object cdsPesqClientePARENTE_NOME_CLIENTE: TStringField
      FieldName = 'PARENTE_NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClientePARENTE_FONE_CLIENTE: TStringField
      FieldName = 'PARENTE_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientePARENTE_ENDERECO_CLIENTE: TStringField
      FieldName = 'PARENTE_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientePARENTE_BAIRRO_CLIENTE: TStringField
      FieldName = 'PARENTE_BAIRRO_CLIENTE'
    end
    object cdsPesqClientePARENTE_CIDADE_CLIENTE: TStringField
      FieldName = 'PARENTE_CIDADE_CLIENTE'
    end
    object cdsPesqClienteDATABASE_CLIENTE: TIntegerField
      FieldName = 'DATABASE_CLIENTE'
    end
    object cdsPesqClienteCONTATO1_CLIENTE: TStringField
      FieldName = 'CONTATO1_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteCONTATO2_CLIENTE: TStringField
      FieldName = 'CONTATO2_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteCONTATO3_CLIENTE: TStringField
      FieldName = 'CONTATO3_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteCONTATO1_FONE__CLIENTE: TStringField
      FieldName = 'CONTATO1_FONE__CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCONTATO2_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO2_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCONTATO3_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO3_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientePAIS_CLIENTE: TStringField
      FieldName = 'PAIS_CLIENTE'
    end
    object cdsPesqClienteREPR_NOME_CLIENTE: TStringField
      FieldName = 'REPR_NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteREPR_FONE_CLIENTE: TStringField
      FieldName = 'REPR_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteREPR_CELULAR_CLIENTE: TStringField
      FieldName = 'REPR_CELULAR_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteREPR_FAX_CLIENTE: TStringField
      FieldName = 'REPR_FAX_CLIENTE'
      Size = 15
    end
    object cdsPesqClienteAVACONJ_REFFONE3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE3_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteAVACONJ_REFFONE2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteAVACONJ_REFFONE1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteULTANUIDADE_CONTRATO: TIntegerField
      FieldName = 'ULTANUIDADE_CONTRATO'
    end
  end
  object cdsProdutosGrade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutoGrade'
    Left = 600
    Top = 24
    object cdsProdutosGradePRODUTO_GRADE: TIntegerField
      FieldName = 'PRODUTO_GRADE'
      Required = True
    end
    object cdsProdutosGradeCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      Required = True
      Size = 3
    end
    object cdsProdutosGradeESTOQUE_GRADE: TFMTBCDField
      FieldName = 'ESTOQUE_GRADE'
      Precision = 15
    end
    object cdsProdutosGradeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsProdutosGradeBARRA_GRADE: TStringField
      FieldName = 'BARRA_GRADE'
      Size = 13
    end
    object cdsProdutosGradeDESCRICAO_GRADE: TStringField
      FieldName = 'DESCRICAO_GRADE'
      Size = 50
    end
  end
  object dspProdutoGrade: TDataSetProvider
    DataSet = qryProdutosGrade
    Options = [poAllowCommandText]
    Left = 488
    Top = 24
  end
  object qryProdutosGrade: TSQLQuery
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
        Name = 'PRODUTO'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_PRODUTOS_GRADE WHERE COD_EMPRESA=:EMPRESA AND PR' +
        'ODUTO_GRADE=:PRODUTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 376
    Top = 24
    object qryProdutosGradePRODUTO_GRADE: TIntegerField
      FieldName = 'PRODUTO_GRADE'
      Required = True
    end
    object qryProdutosGradeCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      Required = True
      Size = 3
    end
    object qryProdutosGradeESTOQUE_GRADE: TFMTBCDField
      FieldName = 'ESTOQUE_GRADE'
      Precision = 15
    end
    object qryProdutosGradeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryProdutosGradeBARRA_GRADE: TStringField
      FieldName = 'BARRA_GRADE'
      Size = 13
    end
    object qryProdutosGradeDESCRICAO_GRADE: TStringField
      FieldName = 'DESCRICAO_GRADE'
      Size = 50
    end
  end
  object qryComprasItens: TSQLQuery
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
        Name = 'COMPRA'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM P_COMPRA_ITENS WHERE   COD_EMPRESA=:EMPRESA AND'
      '  CODIGO_COMPRA=:COMPRA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 47
    Top = 322
    object qryComprasItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryComprasItensCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object qryComprasItensPRODUTO_COMPRA: TIntegerField
      FieldName = 'PRODUTO_COMPRA'
    end
    object qryComprasItensPRECOUNIT_COMPRA: TFMTBCDField
      FieldName = 'PRECOUNIT_COMPRA'
      Precision = 15
    end
    object qryComprasItensCUSTO_COMPRA: TFMTBCDField
      FieldName = 'CUSTO_COMPRA'
      Precision = 15
    end
    object qryComprasItensFATOR_COMPRA: TFMTBCDField
      FieldName = 'FATOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasItensVENDA_COMPRA: TFMTBCDField
      FieldName = 'VENDA_COMPRA'
      Precision = 15
    end
    object qryComprasItensATACADO_COMPRA: TFMTBCDField
      FieldName = 'ATACADO_COMPRA'
      Precision = 15
    end
    object qryComprasItensVALIDADE_COMPRA: TDateField
      FieldName = 'VALIDADE_COMPRA'
    end
    object qryComprasItensQUANTIDADE_COMPRA: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRA'
      Precision = 15
      Size = 3
    end
    object qryComprasItensGRADE_COMPRA: TStringField
      FieldName = 'GRADE_COMPRA'
      Size = 5
    end
    object qryComprasItensSERIE_COMPRA: TStringField
      FieldName = 'SERIE_COMPRA'
    end
    object qryComprasItensICM_COMPRA: TFMTBCDField
      FieldName = 'ICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasItensIPI_COMPRA: TFMTBCDField
      FieldName = 'IPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasItensSIT_TRIB_COMPRA: TStringField
      FieldName = 'SIT_TRIB_COMPRA'
      Size = 3
    end
    object qryComprasItensREDUTOR_COMPRA: TFMTBCDField
      FieldName = 'REDUTOR_COMPRA'
      Precision = 15
    end
    object qryComprasItensTOTAL_COMPRA: TFMTBCDField
      FieldName = 'TOTAL_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryComprasItensOCORRE_COMPRA: TStringField
      FieldName = 'OCORRE_COMPRA'
      Size = 1
    end
    object qryComprasItensQUANT_OCO_COMPRA: TFMTBCDField
      FieldName = 'QUANT_OCO_COMPRA'
      Precision = 15
      Size = 3
    end
  end
  object cdsComprasItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComprasItens'
    Left = 272
    Top = 323
    object cdsComprasItensCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsComprasItensCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object cdsComprasItensPRODUTO_COMPRA: TIntegerField
      FieldName = 'PRODUTO_COMPRA'
    end
    object cdsComprasItensPRECOUNIT_COMPRA: TFMTBCDField
      FieldName = 'PRECOUNIT_COMPRA'
      Precision = 15
    end
    object cdsComprasItensCUSTO_COMPRA: TFMTBCDField
      FieldName = 'CUSTO_COMPRA'
      Precision = 15
    end
    object cdsComprasItensFATOR_COMPRA: TFMTBCDField
      FieldName = 'FATOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasItensVENDA_COMPRA: TFMTBCDField
      FieldName = 'VENDA_COMPRA'
      Precision = 15
    end
    object cdsComprasItensATACADO_COMPRA: TFMTBCDField
      FieldName = 'ATACADO_COMPRA'
      Precision = 15
    end
    object cdsComprasItensVALIDADE_COMPRA: TDateField
      FieldName = 'VALIDADE_COMPRA'
    end
    object cdsComprasItensQUANTIDADE_COMPRA: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRA'
      Precision = 15
      Size = 3
    end
    object cdsComprasItensGRADE_COMPRA: TStringField
      FieldName = 'GRADE_COMPRA'
      Size = 5
    end
    object cdsComprasItensSERIE_COMPRA: TStringField
      FieldName = 'SERIE_COMPRA'
    end
    object cdsComprasItensICM_COMPRA: TFMTBCDField
      FieldName = 'ICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasItensIPI_COMPRA: TFMTBCDField
      FieldName = 'IPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasItensSIT_TRIB_COMPRA: TStringField
      FieldName = 'SIT_TRIB_COMPRA'
      Size = 3
    end
    object cdsComprasItensREDUTOR_COMPRA: TFMTBCDField
      FieldName = 'REDUTOR_COMPRA'
      Precision = 15
    end
    object cdsComprasItensTOTAL_COMPRA: TFMTBCDField
      FieldName = 'TOTAL_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsComprasItensOCORRE_COMPRA: TStringField
      FieldName = 'OCORRE_COMPRA'
      Size = 1
    end
    object cdsComprasItensQUANT_OCO_COMPRA: TFMTBCDField
      FieldName = 'QUANT_OCO_COMPRA'
      Precision = 15
      Size = 3
    end
  end
  object dspComprasItens: TDataSetProvider
    DataSet = qryComprasItens
    Left = 159
    Top = 322
  end
  object qryPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_PAGAR')
    SQLConnection = DmPrincipal.DbConexao
    Left = 47
    Top = 386
    object qryPagarDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      Required = True
      Size = 12
    end
    object qryPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qryPagarTIPO_PAGAR: TIntegerField
      FieldName = 'TIPO_PAGAR'
    end
    object qryPagarCENTRO_PAGAR: TIntegerField
      FieldName = 'CENTRO_PAGAR'
    end
    object qryPagarPORTADOR_PAGAR: TIntegerField
      FieldName = 'PORTADOR_PAGAR'
    end
    object qryPagarCONTA_PAGAR: TStringField
      FieldName = 'CONTA_PAGAR'
    end
    object qryPagarCORRENTE_PAGAR: TIntegerField
      FieldName = 'CORRENTE_PAGAR'
    end
    object qryPagarFORNECEDOR_PAGAR: TIntegerField
      FieldName = 'FORNECEDOR_PAGAR'
      Required = True
    end
    object qryPagarENTRADA_PAGAR: TDateField
      FieldName = 'ENTRADA_PAGAR'
    end
    object qryPagarEMISSAO_PAGAR: TDateField
      FieldName = 'EMISSAO_PAGAR'
    end
    object qryPagarVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
    end
    object qryPagarPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
    end
    object qryPagarVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryPagarPARCIAL_PAGAR: TFMTBCDField
      FieldName = 'PARCIAL_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryPagarMORA_DIA_PAGAR: TFMTBCDField
      FieldName = 'MORA_DIA_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryPagarVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryPagarFORMAPAGTO_PAGAR: TStringField
      FieldName = 'FORMAPAGTO_PAGAR'
      Size = 1
    end
    object qryPagarCHAVE_PAGAR: TStringField
      FieldName = 'CHAVE_PAGAR'
      Size = 11
    end
    object qryPagarTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      FixedChar = True
      Size = 1
    end
    object qryPagarMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
    end
    object qryPagarCAIXA_PAGAR: TIntegerField
      FieldName = 'CAIXA_PAGAR'
    end
    object qryPagarCOD_EMPRESA_PAGAR: TIntegerField
      FieldName = 'COD_EMPRESA_PAGAR'
      Required = True
    end
    object qryPagarSALDO_PAGAR: TFMTBCDField
      FieldName = 'SALDO_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryPagarCAMPO_BUSCA: TIntegerField
      FieldName = 'CAMPO_BUSCA'
    end
    object qryPagarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object qryPagarTIPODOCUMENTO_PAGAR: TIntegerField
      FieldName = 'TIPODOCUMENTO_PAGAR'
    end
    object qryPagarMULTA_PAGAR: TFMTBCDField
      FieldName = 'MULTA_PAGAR'
      Precision = 15
      Size = 2
    end
    object qryPagarHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      BlobType = ftMemo
      Size = 1
    end
  end
  object cdsPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagar'
    Left = 272
    Top = 387
    object cdsPagarDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      Required = True
      Size = 12
    end
    object cdsPagarNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsPagarTIPO_PAGAR: TIntegerField
      FieldName = 'TIPO_PAGAR'
    end
    object cdsPagarCENTRO_PAGAR: TIntegerField
      FieldName = 'CENTRO_PAGAR'
    end
    object cdsPagarPORTADOR_PAGAR: TIntegerField
      FieldName = 'PORTADOR_PAGAR'
    end
    object cdsPagarCONTA_PAGAR: TStringField
      FieldName = 'CONTA_PAGAR'
    end
    object cdsPagarCORRENTE_PAGAR: TIntegerField
      FieldName = 'CORRENTE_PAGAR'
    end
    object cdsPagarFORNECEDOR_PAGAR: TIntegerField
      FieldName = 'FORNECEDOR_PAGAR'
      Required = True
    end
    object cdsPagarENTRADA_PAGAR: TDateField
      FieldName = 'ENTRADA_PAGAR'
    end
    object cdsPagarEMISSAO_PAGAR: TDateField
      FieldName = 'EMISSAO_PAGAR'
    end
    object cdsPagarVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
    end
    object cdsPagarPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
    end
    object cdsPagarVALOR_PAGAR: TFMTBCDField
      FieldName = 'VALOR_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsPagarPARCIAL_PAGAR: TFMTBCDField
      FieldName = 'PARCIAL_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsPagarMORA_DIA_PAGAR: TFMTBCDField
      FieldName = 'MORA_DIA_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsPagarVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsPagarFORMAPAGTO_PAGAR: TStringField
      FieldName = 'FORMAPAGTO_PAGAR'
      Size = 1
    end
    object cdsPagarCHAVE_PAGAR: TStringField
      FieldName = 'CHAVE_PAGAR'
      Size = 11
    end
    object cdsPagarTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      FixedChar = True
      Size = 1
    end
    object cdsPagarMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
    end
    object cdsPagarCAIXA_PAGAR: TIntegerField
      FieldName = 'CAIXA_PAGAR'
    end
    object cdsPagarCOD_EMPRESA_PAGAR: TIntegerField
      FieldName = 'COD_EMPRESA_PAGAR'
      Required = True
    end
    object cdsPagarSALDO_PAGAR: TFMTBCDField
      FieldName = 'SALDO_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsPagarCAMPO_BUSCA: TIntegerField
      FieldName = 'CAMPO_BUSCA'
    end
    object cdsPagarDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object cdsPagarTIPODOCUMENTO_PAGAR: TIntegerField
      FieldName = 'TIPODOCUMENTO_PAGAR'
    end
    object cdsPagarMULTA_PAGAR: TFMTBCDField
      FieldName = 'MULTA_PAGAR'
      Precision = 15
      Size = 2
    end
    object cdsPagarHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspPagar: TDataSetProvider
    DataSet = qryPagar
    Left = 163
    Top = 386
  end
end
