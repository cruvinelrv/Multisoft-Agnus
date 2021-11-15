object dmRL0511: TdmRL0511
  OldCreateOrder = False
  Left = 366
  Top = 242
  Height = 154
  Width = 490
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FORCLI1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORCLI2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CFOP1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CFOP2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENTRADA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENTRADA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRODUTO1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRODUTO2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.codigo_compra, c.entrada_compra, c.hora_compra, c.cfop_' +
        'compra, c.notafiscal_compra,'
      
        'c.serie_compra, c.emissao_compra, c.transporta_compra, c.iicm_co' +
        'mpra, p.icmsub_produto,'
      
        'p.icm_entrada_produto, c.seguro_compra, c.desconto_compra, c.fre' +
        'te_compra, c.pesoliquido_compra,'
      
        'c.iipi_compra, c.conhecimen_compra, c.bicm_compra, c.pesobruto_c' +
        'ompra, c.volumes_compra,'
      
        'p.preco_custo_produto, c2.grade_compra, c.bics_compra, c.outras_' +
        'compra, c.vicm_compra,'
      
        'c.vipi_compra, c.vics_compra, c.especie_compra, p.descricao_prod' +
        'uto, c2.quantidade_compra,'
      
        'c.fornecedor_compra, c.valor_compra, c1.nome_cliente, p.codigo_p' +
        'roduto, p.preco_compra_produto,'
      'p.validade_produto, p.ipi_produto,'
      
        '(c2.precounit_compra * c2.quantidade_compra) as "Total_ICompra",' +
        ' c2.precounit_compra'
      'from P_COMPRA c'
      
        '     left outer join e_cliente c1 on (c.fornecedor_compra = c1.c' +
        'odigo_cliente)'
      
        '     left outer join p_compra_itens c2 on (c.codigo_compra = c2.' +
        'codigo_compra)'
      
        '     left outer join p_produtos p on (c2.produto_compra = p.codi' +
        'go_produto)'
      'where c.fornecedor_compra >=:FORCLI1'
      'and c.fornecedor_compra <=:FORCLI2'
      'and c.cfop_compra >=:CFOP1'
      'and c.cfop_compra <=:CFOP2'
      'and c.entrada_compra >=:ENTRADA1'
      'and c.entrada_compra <=:ENTRADA2'
      'and c2.produto_compra >=:PRODUTO1'
      'and c2.produto_compra <=:PRODUTO2')
    SQLConnection = DmPrincipal.DbConexao
    Left = 51
    Top = 32
    object qryConsultaCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object qryConsultaENTRADA_COMPRA: TDateField
      FieldName = 'ENTRADA_COMPRA'
    end
    object qryConsultaHORA_COMPRA: TStringField
      FieldName = 'HORA_COMPRA'
      Size = 8
    end
    object qryConsultaCFOP_COMPRA: TStringField
      FieldName = 'CFOP_COMPRA'
      Size = 4
    end
    object qryConsultaNOTAFISCAL_COMPRA: TIntegerField
      FieldName = 'NOTAFISCAL_COMPRA'
    end
    object qryConsultaFORNECEDOR_COMPRA: TIntegerField
      FieldName = 'FORNECEDOR_COMPRA'
    end
    object qryConsultaVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryConsultaCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object qryConsultaSERIE_COMPRA: TStringField
      FieldName = 'SERIE_COMPRA'
      Size = 2
    end
    object qryConsultaEMISSAO_COMPRA: TDateField
      FieldName = 'EMISSAO_COMPRA'
    end
    object qryConsultaTRANSPORTA_COMPRA: TFMTBCDField
      FieldName = 'TRANSPORTA_COMPRA'
      Precision = 15
      Size = 0
    end
    object qryConsultaIICM_COMPRA: TFMTBCDField
      FieldName = 'IICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaICMSUB_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryConsultaICM_ENTRADA_PRODUTO: TFMTBCDField
      FieldName = 'ICM_ENTRADA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryConsultaSEGURO_COMPRA: TFMTBCDField
      FieldName = 'SEGURO_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaDESCONTO_COMPRA: TFMTBCDField
      FieldName = 'DESCONTO_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaFRETE_COMPRA: TFMTBCDField
      FieldName = 'FRETE_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPESOLIQUIDO_COMPRA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_COMPRA'
      Precision = 15
      Size = 3
    end
    object qryConsultaIIPI_COMPRA: TFMTBCDField
      FieldName = 'IIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaCONHECIMEN_COMPRA: TStringField
      FieldName = 'CONHECIMEN_COMPRA'
      Size = 15
    end
    object qryConsultaBICM_COMPRA: TFMTBCDField
      FieldName = 'BICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaPESOBRUTO_COMPRA: TFMTBCDField
      FieldName = 'PESOBRUTO_COMPRA'
      Precision = 15
      Size = 3
    end
    object qryConsultaVOLUMES_COMPRA: TIntegerField
      FieldName = 'VOLUMES_COMPRA'
    end
    object qryConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryConsultaGRADE_COMPRA: TStringField
      FieldName = 'GRADE_COMPRA'
      Size = 5
    end
    object qryConsultaBICS_COMPRA: TFMTBCDField
      FieldName = 'BICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaOUTRAS_COMPRA: TFMTBCDField
      FieldName = 'OUTRAS_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaTotal_ICompra: TFMTBCDField
      FieldName = 'Total_ICompra'
      Precision = 15
      Size = 7
    end
    object qryConsultaPRECOUNIT_COMPRA: TFMTBCDField
      FieldName = 'PRECOUNIT_COMPRA'
      Precision = 15
      Size = 4
    end
    object qryConsultaVICM_COMPRA: TFMTBCDField
      FieldName = 'VICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaVIPI_COMPRA: TFMTBCDField
      FieldName = 'VIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaVICS_COMPRA: TFMTBCDField
      FieldName = 'VICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object qryConsultaESPECIE_COMPRA: TStringField
      FieldName = 'ESPECIE_COMPRA'
      Size = 15
    end
    object qryConsultaDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryConsultaQUANTIDADE_COMPRA: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRA'
      Precision = 15
      Size = 3
    end
    object qryConsultaPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryConsultaVALIDADE_PRODUTO: TDateField
      FieldName = 'VALIDADE_PRODUTO'
    end
    object qryConsultaIPI_PRODUTO: TFMTBCDField
      FieldName = 'IPI_PRODUTO'
      Precision = 15
      Size = 2
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Left = 147
    Top = 32
  end
  object cdsConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FORCLI1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FORCLI2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CFOP1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CFOP2'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENTRADA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'ENTRADA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRODUTO1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRODUTO2'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    Left = 243
    Top = 32
    object cdsConsultaCODIGO_COMPRA: TIntegerField
      FieldName = 'CODIGO_COMPRA'
    end
    object cdsConsultaENTRADA_COMPRA: TDateField
      FieldName = 'ENTRADA_COMPRA'
    end
    object cdsConsultaHORA_COMPRA: TStringField
      FieldName = 'HORA_COMPRA'
      Size = 8
    end
    object cdsConsultaCFOP_COMPRA: TStringField
      FieldName = 'CFOP_COMPRA'
      Size = 4
    end
    object cdsConsultaNOTAFISCAL_COMPRA: TIntegerField
      FieldName = 'NOTAFISCAL_COMPRA'
    end
    object cdsConsultaFORNECEDOR_COMPRA: TIntegerField
      FieldName = 'FORNECEDOR_COMPRA'
    end
    object cdsConsultaVALOR_COMPRA: TFMTBCDField
      FieldName = 'VALOR_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsConsultaCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
    end
    object cdsConsultaSERIE_COMPRA: TStringField
      FieldName = 'SERIE_COMPRA'
      Size = 2
    end
    object cdsConsultaEMISSAO_COMPRA: TDateField
      FieldName = 'EMISSAO_COMPRA'
    end
    object cdsConsultaTRANSPORTA_COMPRA: TFMTBCDField
      FieldName = 'TRANSPORTA_COMPRA'
      Precision = 15
      Size = 0
    end
    object cdsConsultaIICM_COMPRA: TFMTBCDField
      FieldName = 'IICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaICMSUB_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsConsultaICM_ENTRADA_PRODUTO: TFMTBCDField
      FieldName = 'ICM_ENTRADA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsConsultaSEGURO_COMPRA: TFMTBCDField
      FieldName = 'SEGURO_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaDESCONTO_COMPRA: TFMTBCDField
      FieldName = 'DESCONTO_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaFRETE_COMPRA: TFMTBCDField
      FieldName = 'FRETE_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPESOLIQUIDO_COMPRA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_COMPRA'
      Precision = 15
      Size = 3
    end
    object cdsConsultaIIPI_COMPRA: TFMTBCDField
      FieldName = 'IIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaCONHECIMEN_COMPRA: TStringField
      FieldName = 'CONHECIMEN_COMPRA'
      Size = 15
    end
    object cdsConsultaBICM_COMPRA: TFMTBCDField
      FieldName = 'BICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaPESOBRUTO_COMPRA: TFMTBCDField
      FieldName = 'PESOBRUTO_COMPRA'
      Precision = 15
      Size = 3
    end
    object cdsConsultaVOLUMES_COMPRA: TIntegerField
      FieldName = 'VOLUMES_COMPRA'
    end
    object cdsConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsConsultaGRADE_COMPRA: TStringField
      FieldName = 'GRADE_COMPRA'
      Size = 5
    end
    object cdsConsultaBICS_COMPRA: TFMTBCDField
      FieldName = 'BICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaOUTRAS_COMPRA: TFMTBCDField
      FieldName = 'OUTRAS_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaTotal_ICompra: TFMTBCDField
      FieldName = 'Total_ICompra'
      Precision = 15
      Size = 7
    end
    object cdsConsultaPRECOUNIT_COMPRA: TFMTBCDField
      FieldName = 'PRECOUNIT_COMPRA'
      Precision = 15
      Size = 4
    end
    object cdsConsultaVICM_COMPRA: TFMTBCDField
      FieldName = 'VICM_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaVIPI_COMPRA: TFMTBCDField
      FieldName = 'VIPI_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaVICS_COMPRA: TFMTBCDField
      FieldName = 'VICS_COMPRA'
      Precision = 15
      Size = 2
    end
    object cdsConsultaESPECIE_COMPRA: TStringField
      FieldName = 'ESPECIE_COMPRA'
      Size = 15
    end
    object cdsConsultaDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsConsultaQUANTIDADE_COMPRA: TFMTBCDField
      FieldName = 'QUANTIDADE_COMPRA'
      Precision = 15
      Size = 3
    end
    object cdsConsultaPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsConsultaVALIDADE_PRODUTO: TDateField
      FieldName = 'VALIDADE_PRODUTO'
    end
    object cdsConsultaIPI_PRODUTO: TFMTBCDField
      FieldName = 'IPI_PRODUTO'
      Precision = 15
      Size = 2
    end
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 328
    Top = 32
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dtsConsulta
    UserName = 'DBConsulta'
    Left = 416
    Top = 32
    object ppDBConsultappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_COMPRA'
      FieldName = 'CODIGO_COMPRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBConsultappField2: TppField
      FieldAlias = 'ENTRADA_COMPRA'
      FieldName = 'ENTRADA_COMPRA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBConsultappField3: TppField
      FieldAlias = 'HORA_COMPRA'
      FieldName = 'HORA_COMPRA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 2
    end
    object ppDBConsultappField4: TppField
      FieldAlias = 'CFOP_COMPRA'
      FieldName = 'CFOP_COMPRA'
      FieldLength = 4
      DisplayWidth = 4
      Position = 3
    end
    object ppDBConsultappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL_COMPRA'
      FieldName = 'NOTAFISCAL_COMPRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBConsultappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORNECEDOR_COMPRA'
      FieldName = 'FORNECEDOR_COMPRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppDBConsultappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_COMPRA'
      FieldName = 'VALOR_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object ppDBConsultappField8: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 7
    end
    object ppDBConsultappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_PRODUTO'
      FieldName = 'CODIGO_PRODUTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBConsultappField10: TppField
      FieldAlias = 'SERIE_COMPRA'
      FieldName = 'SERIE_COMPRA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object ppDBConsultappField11: TppField
      FieldAlias = 'EMISSAO_COMPRA'
      FieldName = 'EMISSAO_COMPRA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 10
    end
    object ppDBConsultappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSPORTA_COMPRA'
      FieldName = 'TRANSPORTA_COMPRA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object ppDBConsultappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'IICM_COMPRA'
      FieldName = 'IICM_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
    object ppDBConsultappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMSUB_PRODUTO'
      FieldName = 'ICMSUB_PRODUTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 13
    end
    object ppDBConsultappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICM_ENTRADA_PRODUTO'
      FieldName = 'ICM_ENTRADA_PRODUTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object ppDBConsultappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEGURO_COMPRA'
      FieldName = 'SEGURO_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 15
    end
    object ppDBConsultappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO_COMPRA'
      FieldName = 'DESCONTO_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 16
    end
    object ppDBConsultappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'FRETE_COMPRA'
      FieldName = 'FRETE_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 17
    end
    object ppDBConsultappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESOLIQUIDO_COMPRA'
      FieldName = 'PESOLIQUIDO_COMPRA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 18
    end
    object ppDBConsultappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'IIPI_COMPRA'
      FieldName = 'IIPI_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 19
    end
    object ppDBConsultappField21: TppField
      FieldAlias = 'CONHECIMEN_COMPRA'
      FieldName = 'CONHECIMEN_COMPRA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 20
    end
    object ppDBConsultappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'BICM_COMPRA'
      FieldName = 'BICM_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 21
    end
    object ppDBConsultappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESOBRUTO_COMPRA'
      FieldName = 'PESOBRUTO_COMPRA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 22
    end
    object ppDBConsultappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOLUMES_COMPRA'
      FieldName = 'VOLUMES_COMPRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppDBConsultappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECO_CUSTO_PRODUTO'
      FieldName = 'PRECO_CUSTO_PRODUTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 24
    end
    object ppDBConsultappField26: TppField
      FieldAlias = 'GRADE_COMPRA'
      FieldName = 'GRADE_COMPRA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 25
    end
    object ppDBConsultappField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'BICS_COMPRA'
      FieldName = 'BICS_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 26
    end
    object ppDBConsultappField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'OUTRAS_COMPRA'
      FieldName = 'OUTRAS_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 27
    end
    object ppDBConsultappField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_ICompra'
      FieldName = 'Total_ICompra'
      FieldLength = 7
      DataType = dtDouble
      DisplayWidth = 16
      Position = 28
    end
    object ppDBConsultappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECOUNIT_COMPRA'
      FieldName = 'PRECOUNIT_COMPRA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 29
    end
    object ppDBConsultappField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'VICM_COMPRA'
      FieldName = 'VICM_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 30
    end
    object ppDBConsultappField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'VIPI_COMPRA'
      FieldName = 'VIPI_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 31
    end
    object ppDBConsultappField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'VICS_COMPRA'
      FieldName = 'VICS_COMPRA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 32
    end
    object ppDBConsultappField34: TppField
      FieldAlias = 'ESPECIE_COMPRA'
      FieldName = 'ESPECIE_COMPRA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppDBConsultappField35: TppField
      FieldAlias = 'DESCRICAO_PRODUTO'
      FieldName = 'DESCRICAO_PRODUTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 34
    end
    object ppDBConsultappField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE_COMPRA'
      FieldName = 'QUANTIDADE_COMPRA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 35
    end
    object ppDBConsultappField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECO_COMPRA_PRODUTO'
      FieldName = 'PRECO_COMPRA_PRODUTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 36
    end
    object ppDBConsultappField38: TppField
      FieldAlias = 'VALIDADE_PRODUTO'
      FieldName = 'VALIDADE_PRODUTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 37
    end
    object ppDBConsultappField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI_PRODUTO'
      FieldName = 'IPI_PRODUTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 38
    end
  end
end
