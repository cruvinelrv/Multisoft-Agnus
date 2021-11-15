object dmGr01: TdmGr01
  OldCreateOrder = False
  Left = 384
  Top = 187
  Height = 368
  Width = 290
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
    Left = 30
    Top = 16
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
    object qryProdutosFABRICA_PRODUTO: TStringField
      FieldName = 'FABRICA_PRODUTO'
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = qryProdutos
    Options = [poAllowCommandText]
    Left = 125
    Top = 16
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
      end
      item
        Name = 'FABRICA_PRODUTO'
        DataType = ftString
        Size = 20
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
    Left = 212
    Top = 16
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
    object cdsProdutosFABRICA_PRODUTO: TStringField
      FieldName = 'FABRICA_PRODUTO'
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
      
        '       LEFT OUTER JOIN E_CIDADE        ON E_CLIENTE.cidade_clien' +
        'te=E_CIDADE.codigo_cidade'
      
        '       LEFT OUTER JOIN P_CONTRATO ON E_CLIENTE.codigo_cliente=p_' +
        'contrato.cliente_contrato'
      
        '       AND (P_CONTRATO.cod_empresa=:EMPRESA) WHERE E_CLIENTE.TIP' +
        'O_CLIENTE=:TIPO ORDER BY E_CLIENTE.NOME_CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 75
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
    Left = 124
    Top = 75
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
    Left = 216
    Top = 75
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
    object cdsPesqClienteULTANUIDADE_CONTRATO2: TIntegerField
      FieldName = 'ULTANUIDADE_CONTRATO'
    end
  end
  object qryGrupoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_GRUPOS WHERE COD_EMPRESA=1')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 136
    object qryGrupoProdutoCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Required = True
    end
    object qryGrupoProdutoDESCRICAO_GRUPO: TStringField
      FieldName = 'DESCRICAO_GRUPO'
      Size = 30
    end
    object qryGrupoProdutoCOMISSAO_GRUPO: TFMTBCDField
      FieldName = 'COMISSAO_GRUPO'
      Precision = 15
      Size = 2
    end
    object qryGrupoProdutoCOMISSAO1_GRUPO: TFMTBCDField
      FieldName = 'COMISSAO1_GRUPO'
      Precision = 15
      Size = 2
    end
    object qryGrupoProdutoFATOR_VEND_GRUPO: TFMTBCDField
      FieldName = 'FATOR_VEND_GRUPO'
      Precision = 15
      Size = 2
    end
    object qryGrupoProdutoCODIGO_SECAO_GRUPO: TIntegerField
      FieldName = 'CODIGO_SECAO_GRUPO'
      Required = True
    end
    object qryGrupoProdutoSUSPENSO_GRUPO: TStringField
      FieldName = 'SUSPENSO_GRUPO'
      FixedChar = True
      Size = 1
    end
    object qryGrupoProdutoTRANSFERE_GRUPO: TFMTBCDField
      FieldName = 'TRANSFERE_GRUPO'
      Precision = 15
      Size = 2
    end
    object qryGrupoProdutoOBSERVACAO_GRUPO: TStringField
      FieldName = 'OBSERVACAO_GRUPO'
    end
    object qryGrupoProdutoNEGATIVO_GRUPO: TStringField
      FieldName = 'NEGATIVO_GRUPO'
      FixedChar = True
      Size = 1
    end
    object qryGrupoProdutoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspGrupoProduto: TDataSetProvider
    DataSet = qryGrupoProduto
    Options = [poAllowCommandText]
    Left = 128
    Top = 132
  end
  object cdsGrupoProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupoProduto'
    Left = 216
    Top = 132
    object cdsGrupoProdutoCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Required = True
    end
    object cdsGrupoProdutoDESCRICAO_GRUPO: TStringField
      FieldName = 'DESCRICAO_GRUPO'
      Size = 30
    end
    object cdsGrupoProdutoCOMISSAO_GRUPO: TFMTBCDField
      FieldName = 'COMISSAO_GRUPO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsGrupoProdutoCOMISSAO1_GRUPO: TFMTBCDField
      FieldName = 'COMISSAO1_GRUPO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsGrupoProdutoFATOR_VEND_GRUPO: TFMTBCDField
      FieldName = 'FATOR_VEND_GRUPO'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
      Size = 2
    end
    object cdsGrupoProdutoCODIGO_SECAO_GRUPO: TIntegerField
      FieldName = 'CODIGO_SECAO_GRUPO'
      Required = True
    end
    object cdsGrupoProdutoSUSPENSO_GRUPO: TStringField
      FieldName = 'SUSPENSO_GRUPO'
      FixedChar = True
      Size = 1
    end
    object cdsGrupoProdutoTRANSFERE_GRUPO: TFMTBCDField
      FieldName = 'TRANSFERE_GRUPO'
      Precision = 15
      Size = 2
    end
    object cdsGrupoProdutoOBSERVACAO_GRUPO: TStringField
      FieldName = 'OBSERVACAO_GRUPO'
    end
    object cdsGrupoProdutoNEGATIVO_GRUPO: TStringField
      FieldName = 'NEGATIVO_GRUPO'
      FixedChar = True
      Size = 1
    end
    object cdsGrupoProdutoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryTabela01: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_TABELA01 WHERE COD_EMPRESA=:EMPRESA ORDER BY DAT' +
        'A_TABELA01 ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 31
    Top = 190
    object qryTabela01COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryTabela01DATA_TABELA01: TDateField
      FieldName = 'DATA_TABELA01'
      Required = True
    end
    object qryTabela01GRUPO_TABELA01: TIntegerField
      FieldName = 'GRUPO_TABELA01'
    end
    object qryTabela01PERCENTUAL_TABELA01: TFMTBCDField
      FieldName = 'PERCENTUAL_TABELA01'
      Precision = 15
      Size = 2
    end
    object qryTabela01TIPO_TABELA01: TStringField
      FieldName = 'TIPO_TABELA01'
      Size = 1
    end
    object qryTabela01PRECO_TABELA01: TStringField
      FieldName = 'PRECO_TABELA01'
      Size = 1
    end
    object qryTabela01USUARIO_TABELA01: TStringField
      FieldName = 'USUARIO_TABELA01'
      Size = 10
    end
  end
  object dspTabela01: TDataSetProvider
    DataSet = qryTabela01
    Left = 127
    Top = 187
  end
  object cdsTabela01: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabela01'
    Left = 217
    Top = 184
    object cdsTabela01COD_EMPRESA: TIntegerField
      Alignment = taCenter
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsTabela01DATA_TABELA01: TDateField
      Alignment = taCenter
      FieldName = 'DATA_TABELA01'
      Required = True
    end
    object cdsTabela01GRUPO_TABELA01: TIntegerField
      Alignment = taCenter
      FieldName = 'GRUPO_TABELA01'
    end
    object cdsTabela01PERCENTUAL_TABELA01: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PERCENTUAL_TABELA01'
      Precision = 15
      Size = 2
    end
    object cdsTabela01TIPO_TABELA01: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_TABELA01'
      Size = 1
    end
    object cdsTabela01PRECO_TABELA01: TStringField
      Alignment = taCenter
      FieldName = 'PRECO_TABELA01'
      Size = 1
    end
    object cdsTabela01USUARIO_TABELA01: TStringField
      Alignment = taCenter
      FieldName = 'USUARIO_TABELA01'
      Size = 10
    end
  end
end
