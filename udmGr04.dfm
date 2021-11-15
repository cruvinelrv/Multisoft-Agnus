object dmGr04: TdmGr04
  OldCreateOrder = False
  Left = 403
  Top = 240
  Height = 171
  Width = 286
  object qryProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'CLASSE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_PRODUTOS WHERE  COD_EMPRESA=:EMPRESA AND CLASSE_' +
        'PRODUTO=:CLASSE ORDER BY DESCRICAO_PRODUTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 44
    Top = 24
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
    Left = 124
    Top = 24
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
      end
      item
        DataType = ftInteger
        Name = 'CLASSE'
        ParamType = ptInput
      end>
    ProviderName = 'dspProdutos'
    StoreDefs = True
    Left = 204
    Top = 24
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
end
