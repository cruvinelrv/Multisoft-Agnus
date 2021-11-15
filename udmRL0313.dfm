object dmRL0313: TdmRL0313
  OldCreateOrder = False
  Left = 303
  Top = 248
  Height = 171
  Width = 432
  object qryProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 10
  end
  object dspProdutos: TDataSetProvider
    DataSet = qryProdutos
    Options = [poAllowCommandText]
    Left = 116
    Top = 10
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 198
    Top = 11
    object cdsProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
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
      Precision = 15
      Size = 3
    end
    object cdsProdutosSERIE_PRODUTO: TStringField
      FieldName = 'SERIE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosDESUSO_PRODUTO: TStringField
      FieldName = 'DESUSO_PRODUTO'
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
      Precision = 15
      Size = 3
    end
    object cdsProdutosESTOQUE1_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE1_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosESTOQUE2_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE2_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosESTOQUE3_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE3_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosMINIMO_PRODUTO: TFMTBCDField
      FieldName = 'MINIMO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosMAXIMO_PRODUTO: TFMTBCDField
      FieldName = 'MAXIMO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosRESERVA_PRODUTO: TFMTBCDField
      FieldName = 'RESERVA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosPRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsProdutosPROMOCAO_PRODUTO: TFMTBCDField
      FieldName = 'PROMOCAO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsProdutosPRECO_ANT_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_ANT_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsProdutosPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsProdutosPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsProdutosPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsProdutosPER_DESCON_PRODUTO: TFMTBCDField
      FieldName = 'PER_DESCON_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosPER_ANTER_PRODUTO: TFMTBCDField
      FieldName = 'PER_ANTER_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosDATA_CUSTO_PRODUTO: TDateField
      FieldName = 'DATA_CUSTO_PRODUTO'
    end
    object cdsProdutosVLRATACADO_PRODUTO: TFMTBCDField
      FieldName = 'VLRATACADO_PRODUTO'
      Precision = 15
      Size = 4
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
      Precision = 15
      Size = 2
    end
    object cdsProdutosICMSUB_VENDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_VENDA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosICM_ENTRADA_PRODUTO: TFMTBCDField
      FieldName = 'ICM_ENTRADA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosICMSAIDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosICMSAIDA_FORA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_FORA_PRODUTO'
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
      Precision = 15
      Size = 2
    end
    object cdsProdutosCOMISSAO2_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO2_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosDESCONTO_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTO_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosDESCONTOC_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTOC_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosIPI_PRODUTO: TFMTBCDField
      FieldName = 'IPI_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosII_PRODUTO: TFMTBCDField
      FieldName = 'II_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsProdutosOUTROS_PRODUTO: TFMTBCDField
      FieldName = 'OUTROS_PRODUTO'
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
      Precision = 15
      Size = 4
    end
    object cdsProdutosREDU_FORA_PRODUTO: TFMTBCDField
      FieldName = 'REDU_FORA_PRODUTO'
      Precision = 15
      Size = 4
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
      Precision = 15
      Size = 4
    end
    object cdsProdutosRED_F_A_PRODUTO: TFMTBCDField
      FieldName = 'RED_F_A_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsProdutosMERCOSUL_PRODUTO: TStringField
      FieldName = 'MERCOSUL_PRODUTO'
      Size = 12
    end
    object cdsProdutosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsProdutosFOTO_PRODUTO: TStringField
      FieldName = 'FOTO_PRODUTO'
      Size = 1
    end
    object cdsProdutosQTD_FRACIONADA: TStringField
      FieldName = 'QTD_FRACIONADA'
      Size = 1
    end
    object cdsProdutosDESCRICAO_GRUPO: TStringField
      FieldName = 'DESCRICAO_GRUPO'
      Size = 30
    end
    object cdsProdutosDESCRICAO_SUBGRUPO: TStringField
      FieldName = 'DESCRICAO_SUBGRUPO'
      Size = 30
    end
    object cdsProdutosNOME_FABRICANTE: TStringField
      FieldName = 'NOME_FABRICANTE'
      Size = 40
    end
    object cdsProdutosTOTAL_PRE_VEN: TFMTBCDField
      FieldName = 'TOTAL_PRE_VEN'
      Precision = 15
      Size = 7
    end
    object cdsProdutosTOTAL_PRE_CUS: TFMTBCDField
      FieldName = 'TOTAL_PRE_CUS'
      Precision = 15
      Size = 7
    end
    object cdsProdutosPRATELEIRA: TStringField
      FieldName = 'PRATELEIRA'
      Size = 8
    end
  end
  object dtsProdutos: TDataSource
    DataSet = cdsProdutos
    OnDataChange = dtsProdutosDataChange
    Left = 272
    Top = 12
  end
  object qryGrade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_PRODUTO'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      
        'select p.produto_grade, p.descricao_grade, p.codigo_grade, p.est' +
        'oque_grade'
      'from P_PRODUTOS_GRADE p '
      'where p.produto_grade =:codigo_produto')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 71
    object qryGradePRODUTO_GRADE: TIntegerField
      FieldName = 'PRODUTO_GRADE'
      Required = True
    end
    object qryGradeDESCRICAO_GRADE: TStringField
      FieldName = 'DESCRICAO_GRADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryGradeCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object qryGradeESTOQUE_GRADE: TFMTBCDField
      FieldName = 'ESTOQUE_GRADE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
  end
  object cdsGrade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_PRODUTO'
        ParamType = ptInput
        Size = 4
      end>
    ProviderName = 'dspGrade'
    Left = 200
    Top = 71
    object cdsGradePRODUTO_GRADE: TIntegerField
      FieldName = 'PRODUTO_GRADE'
      Required = True
    end
    object cdsGradeDESCRICAO_GRADE: TStringField
      FieldName = 'DESCRICAO_GRADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsGradeCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object cdsGradeESTOQUE_GRADE: TFMTBCDField
      FieldName = 'ESTOQUE_GRADE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
  end
  object dsGrade: TDataSource
    DataSet = cdsGrade
    Left = 276
    Top = 71
  end
  object ppDBGrade: TppDBPipeline
    DataSource = dsGrade
    UserName = 'DBGrade'
    Left = 352
    Top = 71
  end
  object dspGrade: TDataSetProvider
    DataSet = qryGrade
    Left = 112
    Top = 71
  end
  object ppProdutos: TppDBPipeline
    DataSource = dtsProdutos
    UserName = 'Produtos'
    Left = 352
    Top = 12
    object ppProdutosppField1: TppField
      FieldAlias = 'CODIGO_PRODUTO'
      FieldName = 'CODIGO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField2: TppField
      FieldAlias = 'CLASSE_PRODUTO'
      FieldName = 'CLASSE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField3: TppField
      FieldAlias = 'GRUPO_PRODUTO'
      FieldName = 'GRUPO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField4: TppField
      FieldAlias = 'SUBGRUPO_PRODUTO'
      FieldName = 'SUBGRUPO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField5: TppField
      FieldAlias = 'DESCRICAO_PRODUTO'
      FieldName = 'DESCRICAO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField6: TppField
      FieldAlias = 'UNIDADE_PRODUTO'
      FieldName = 'UNIDADE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField7: TppField
      FieldAlias = 'PESO_PRODUTO'
      FieldName = 'PESO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField8: TppField
      FieldAlias = 'SERIE_PRODUTO'
      FieldName = 'SERIE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField9: TppField
      FieldAlias = 'DESUSO_PRODUTO'
      FieldName = 'DESUSO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField10: TppField
      FieldAlias = 'GRADE_PRODUTO'
      FieldName = 'GRADE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField11: TppField
      FieldAlias = 'ESTOQUE_PRODUTO'
      FieldName = 'ESTOQUE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField12: TppField
      FieldAlias = 'ESTOQUE1_PRODUTO'
      FieldName = 'ESTOQUE1_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField13: TppField
      FieldAlias = 'ESTOQUE2_PRODUTO'
      FieldName = 'ESTOQUE2_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField14: TppField
      FieldAlias = 'ESTOQUE3_PRODUTO'
      FieldName = 'ESTOQUE3_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField15: TppField
      FieldAlias = 'MINIMO_PRODUTO'
      FieldName = 'MINIMO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField16: TppField
      FieldAlias = 'MAXIMO_PRODUTO'
      FieldName = 'MAXIMO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField17: TppField
      FieldAlias = 'RESERVA_PRODUTO'
      FieldName = 'RESERVA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField18: TppField
      FieldAlias = 'PRECOUNIT_PRODUTO'
      FieldName = 'PRECOUNIT_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField19: TppField
      FieldAlias = 'PROMOCAO_PRODUTO'
      FieldName = 'PROMOCAO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField20: TppField
      FieldAlias = 'PRECO_ANT_PRODUTO'
      FieldName = 'PRECO_ANT_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField21: TppField
      FieldAlias = 'PRECO_COMPRA_PRODUTO'
      FieldName = 'PRECO_COMPRA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField22: TppField
      FieldAlias = 'PRECO_CUSTO_PRODUTO'
      FieldName = 'PRECO_CUSTO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField23: TppField
      FieldAlias = 'PRECO_LISTA_PRODUTO'
      FieldName = 'PRECO_LISTA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField24: TppField
      FieldAlias = 'PER_DESCON_PRODUTO'
      FieldName = 'PER_DESCON_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField25: TppField
      FieldAlias = 'PER_ANTER_PRODUTO'
      FieldName = 'PER_ANTER_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField26: TppField
      FieldAlias = 'DATA_CUSTO_PRODUTO'
      FieldName = 'DATA_CUSTO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField27: TppField
      FieldAlias = 'VLRATACADO_PRODUTO'
      FieldName = 'VLRATACADO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField28: TppField
      FieldAlias = 'ADQUIRIDA_PRODUTO'
      FieldName = 'ADQUIRIDA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField29: TppField
      FieldAlias = 'ADQUIRIDA1_PRODUTO'
      FieldName = 'ADQUIRIDA1_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField30: TppField
      FieldAlias = 'DATA_COMPRA_PRODUTO'
      FieldName = 'DATA_COMPRA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField31: TppField
      FieldAlias = 'DATA_COMPRA1_PRODUTO'
      FieldName = 'DATA_COMPRA1_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField32: TppField
      FieldAlias = 'ULT_VENDA_PRODUTO'
      FieldName = 'ULT_VENDA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField33: TppField
      FieldAlias = 'CADASTRO_PRODUTO'
      FieldName = 'CADASTRO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField34: TppField
      FieldAlias = 'FIM_PROMOCAO_PRODUTO'
      FieldName = 'FIM_PROMOCAO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField35: TppField
      FieldAlias = 'FABRICANTE_PRODUTO'
      FieldName = 'FABRICANTE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField36: TppField
      FieldAlias = 'BARRA_PRODUTO'
      FieldName = 'BARRA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField37: TppField
      FieldAlias = 'MARKUP_PRODUTO'
      FieldName = 'MARKUP_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField38: TppField
      FieldAlias = 'REFERENCIA_PRODUTO'
      FieldName = 'REFERENCIA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField39: TppField
      FieldAlias = 'ICMSUB_PRODUTO'
      FieldName = 'ICMSUB_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField40: TppField
      FieldAlias = 'ICMSUB_VENDA_PRODUTO'
      FieldName = 'ICMSUB_VENDA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField41: TppField
      FieldAlias = 'ICM_ENTRADA_PRODUTO'
      FieldName = 'ICM_ENTRADA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField42: TppField
      FieldAlias = 'ICMSAIDA_PRODUTO'
      FieldName = 'ICMSAIDA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField43: TppField
      FieldAlias = 'ICMSAIDA_FORA_PRODUTO'
      FieldName = 'ICMSAIDA_FORA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField44: TppField
      FieldAlias = 'FRETE_PRODUTO'
      FieldName = 'FRETE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField45: TppField
      FieldAlias = 'COMISSAO1_PRODUTO'
      FieldName = 'COMISSAO1_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField46: TppField
      FieldAlias = 'COMISSAO2_PRODUTO'
      FieldName = 'COMISSAO2_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField47: TppField
      FieldAlias = 'DESCONTO_PRODUTO'
      FieldName = 'DESCONTO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField48: TppField
      FieldAlias = 'DESCONTOC_PRODUTO'
      FieldName = 'DESCONTOC_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField49: TppField
      FieldAlias = 'IPI_PRODUTO'
      FieldName = 'IPI_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField50: TppField
      FieldAlias = 'II_PRODUTO'
      FieldName = 'II_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField51: TppField
      FieldAlias = 'OUTROS_PRODUTO'
      FieldName = 'OUTROS_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField52: TppField
      FieldAlias = 'TMP_GARANTIA_PRODUTO'
      FieldName = 'TMP_GARANTIA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField53: TppField
      FieldAlias = 'MEDIA_PRODUTO'
      FieldName = 'MEDIA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField54: TppField
      FieldAlias = 'REDU_DENTR_PRODUTO'
      FieldName = 'REDU_DENTR_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField55: TppField
      FieldAlias = 'REDU_FORA_PRODUTO'
      FieldName = 'REDU_FORA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField56: TppField
      FieldAlias = 'OBS_DENTR_PRODUTO'
      FieldName = 'OBS_DENTR_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField57: TppField
      FieldAlias = 'OBS_FORA_PRODUTO'
      FieldName = 'OBS_FORA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField58: TppField
      FieldAlias = 'ISS_PRODUTO'
      FieldName = 'ISS_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField59: TppField
      FieldAlias = 'PRAT1_PRODUTO'
      FieldName = 'PRAT1_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField60: TppField
      FieldAlias = 'PRAT2_PRODUTO'
      FieldName = 'PRAT2_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField61: TppField
      FieldAlias = 'FABRICA_PRODUTO'
      FieldName = 'FABRICA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField62: TppField
      FieldAlias = 'DISTRIB1_PRODUTO'
      FieldName = 'DISTRIB1_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField63: TppField
      FieldAlias = 'DISTRIB2_PRODUTO'
      FieldName = 'DISTRIB2_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField64: TppField
      FieldAlias = 'VALIDADE_PRODUTO'
      FieldName = 'VALIDADE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField65: TppField
      FieldAlias = 'TRIB_DENTRO_PRODUTO'
      FieldName = 'TRIB_DENTRO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField66: TppField
      FieldAlias = 'TRIB_FORA_PRODUTO'
      FieldName = 'TRIB_FORA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField67: TppField
      FieldAlias = 'SIMILAR1_PRODUTO'
      FieldName = 'SIMILAR1_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField68: TppField
      FieldAlias = 'SIMILAR2_PRODUTO'
      FieldName = 'SIMILAR2_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField69: TppField
      FieldAlias = 'OBSERVACAO_PRODUTO'
      FieldName = 'OBSERVACAO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField70: TppField
      FieldAlias = 'SEXO_PRODUTO'
      FieldName = 'SEXO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField71: TppField
      FieldAlias = 'FISCAL_PRODUTO'
      FieldName = 'FISCAL_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField72: TppField
      FieldAlias = 'CONTABIL_PRODUTO'
      FieldName = 'CONTABIL_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField73: TppField
      FieldAlias = 'C_DEFEITO_PRODUTO'
      FieldName = 'C_DEFEITO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField74: TppField
      FieldAlias = 'ENV_GARANTIA_PRODUTO'
      FieldName = 'ENV_GARANTIA_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField75: TppField
      FieldAlias = 'LOCAL_ESTOQUE_PRODUTO'
      FieldName = 'LOCAL_ESTOQUE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField76: TppField
      FieldAlias = 'EXPORTADO_PRODUTO'
      FieldName = 'EXPORTADO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField77: TppField
      FieldAlias = 'SELECAO_PRODUTO'
      FieldName = 'SELECAO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField78: TppField
      FieldAlias = 'METRO_CUB_PRODUTO'
      FieldName = 'METRO_CUB_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField79: TppField
      FieldAlias = 'RECEITUAR_PRODUTO'
      FieldName = 'RECEITUAR_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField80: TppField
      FieldAlias = 'RED_CONTRI_PRODUTO'
      FieldName = 'RED_CONTRI_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField81: TppField
      FieldAlias = 'ALI_CONTRI_PRODUTO'
      FieldName = 'ALI_CONTRI_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField82: TppField
      FieldAlias = 'TRIB_U_A_PRODUTO'
      FieldName = 'TRIB_U_A_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField83: TppField
      FieldAlias = 'TRIB_F_A_PRODUTO'
      FieldName = 'TRIB_F_A_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField84: TppField
      FieldAlias = 'RED_U_A_PRODUTO'
      FieldName = 'RED_U_A_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField85: TppField
      FieldAlias = 'RED_F_A_PRODUTO'
      FieldName = 'RED_F_A_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField86: TppField
      FieldAlias = 'MERCOSUL_PRODUTO'
      FieldName = 'MERCOSUL_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField87: TppField
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField88: TppField
      FieldAlias = 'FOTO_PRODUTO'
      FieldName = 'FOTO_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField89: TppField
      FieldAlias = 'QTD_FRACIONADA'
      FieldName = 'QTD_FRACIONADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField90: TppField
      FieldAlias = 'DESCRICAO_GRUPO'
      FieldName = 'DESCRICAO_GRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField91: TppField
      FieldAlias = 'DESCRICAO_SUBGRUPO'
      FieldName = 'DESCRICAO_SUBGRUPO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField92: TppField
      FieldAlias = 'NOME_FABRICANTE'
      FieldName = 'NOME_FABRICANTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField93: TppField
      FieldAlias = 'TOTAL_PRE_VEN'
      FieldName = 'TOTAL_PRE_VEN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField94: TppField
      FieldAlias = 'TOTAL_PRE_CUS'
      FieldName = 'TOTAL_PRE_CUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppProdutosppField95: TppField
      FieldAlias = 'PRATELEIRA'
      FieldName = 'PRATELEIRA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
  end
end
