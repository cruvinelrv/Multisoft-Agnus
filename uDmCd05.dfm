object dmCd05: TdmCd05
  OldCreateOrder = False
  Left = 340
  Top = 240
  Height = 221
  Width = 336
  object cdsGrupoProduto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
      end>
    ProviderName = 'dspGrupoProduto'
    Left = 204
    Top = 71
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
  object dspGrupoProduto: TDataSetProvider
    DataSet = qryGrupoProduto
    Options = [poAllowCommandText]
    Left = 116
    Top = 71
  end
  object qryGrupoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM P_GRUPOS WHERE COD_EMPRESA=:Empresa')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 72
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
  object qrySubGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_SUBGRUPO ORDER BY DESCRICAO_SUBGRUPO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 26
    Top = 128
    object qrySubGrupoCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Required = True
    end
    object qrySubGrupoDESCRICAO_SUBGRUPO: TStringField
      FieldName = 'DESCRICAO_SUBGRUPO'
      Size = 30
    end
    object qrySubGrupoCODIGO_GRUPO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO_SUBGRUPO'
    end
    object qrySubGrupoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspSubGrupo: TDataSetProvider
    DataSet = qrySubGrupo
    Left = 116
    Top = 127
  end
  object cdsSubGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSubGrupo'
    Left = 205
    Top = 127
    object cdsSubGrupoCODIGO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_SUBGRUPO'
      Required = True
    end
    object cdsSubGrupoDESCRICAO_SUBGRUPO: TStringField
      FieldName = 'DESCRICAO_SUBGRUPO'
      Size = 30
    end
    object cdsSubGrupoCODIGO_GRUPO_SUBGRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO_SUBGRUPO'
    end
    object cdsSubGrupoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryServico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'CLASSE'
        ParamType = ptInput
        Value = 2
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_PRODUTOS WHERE  COD_EMPRESA=:EMPRESA AND CLASSE_' +
        'PRODUTO=:CLASSE ORDER BY DESCRICAO_PRODUTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 21
    object qryServicoCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qryServicoCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
    end
    object qryServicoGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object qryServicoSUBGRUPO_PRODUTO: TIntegerField
      FieldName = 'SUBGRUPO_PRODUTO'
    end
    object qryServicoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object qryServicoUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object qryServicoPESO_PRODUTO: TFMTBCDField
      FieldName = 'PESO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoSERIE_PRODUTO: TStringField
      FieldName = 'SERIE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryServicoDESUSO_PRODUTO: TStringField
      FieldName = 'DESUSO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryServicoGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryServicoESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoESTOQUE1_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE1_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoESTOQUE2_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE2_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoESTOQUE3_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE3_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoMINIMO_PRODUTO: TFMTBCDField
      FieldName = 'MINIMO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoMAXIMO_PRODUTO: TFMTBCDField
      FieldName = 'MAXIMO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoRESERVA_PRODUTO: TFMTBCDField
      FieldName = 'RESERVA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoPRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoPROMOCAO_PRODUTO: TFMTBCDField
      FieldName = 'PROMOCAO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoPRECO_ANT_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_ANT_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoPER_DESCON_PRODUTO: TFMTBCDField
      FieldName = 'PER_DESCON_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoPER_ANTER_PRODUTO: TFMTBCDField
      FieldName = 'PER_ANTER_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoDATA_CUSTO_PRODUTO: TDateField
      FieldName = 'DATA_CUSTO_PRODUTO'
    end
    object qryServicoVLRATACADO_PRODUTO: TFMTBCDField
      FieldName = 'VLRATACADO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoADQUIRIDA_PRODUTO: TFMTBCDField
      FieldName = 'ADQUIRIDA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoADQUIRIDA1_PRODUTO: TFMTBCDField
      FieldName = 'ADQUIRIDA1_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryServicoDATA_COMPRA_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA_PRODUTO'
    end
    object qryServicoDATA_COMPRA1_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA1_PRODUTO'
    end
    object qryServicoULT_VENDA_PRODUTO: TDateField
      FieldName = 'ULT_VENDA_PRODUTO'
    end
    object qryServicoCADASTRO_PRODUTO: TDateField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object qryServicoFIM_PROMOCAO_PRODUTO: TDateField
      FieldName = 'FIM_PROMOCAO_PRODUTO'
    end
    object qryServicoFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object qryServicoBARRA_PRODUTO: TStringField
      FieldName = 'BARRA_PRODUTO'
      Size = 17
    end
    object qryServicoMARKUP_PRODUTO: TFMTBCDField
      FieldName = 'MARKUP_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoREFERENCIA_PRODUTO: TStringField
      FieldName = 'REFERENCIA_PRODUTO'
      Size = 5
    end
    object qryServicoICMSUB_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoICMSUB_VENDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_VENDA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoICM_ENTRADA_PRODUTO: TFMTBCDField
      FieldName = 'ICM_ENTRADA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoICMSAIDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoICMSAIDA_FORA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_FORA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoFRETE_PRODUTO: TFMTBCDField
      FieldName = 'FRETE_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoCOMISSAO1_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO1_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoCOMISSAO2_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO2_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoDESCONTO_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTO_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoDESCONTOC_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTOC_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoIPI_PRODUTO: TFMTBCDField
      FieldName = 'IPI_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoII_PRODUTO: TFMTBCDField
      FieldName = 'II_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoOUTROS_PRODUTO: TFMTBCDField
      FieldName = 'OUTROS_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoTMP_GARANTIA_PRODUTO: TStringField
      FieldName = 'TMP_GARANTIA_PRODUTO'
      Size = 10
    end
    object qryServicoMEDIA_PRODUTO: TFMTBCDField
      FieldName = 'MEDIA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoREDU_DENTR_PRODUTO: TFMTBCDField
      FieldName = 'REDU_DENTR_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoREDU_FORA_PRODUTO: TFMTBCDField
      FieldName = 'REDU_FORA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoOBS_DENTR_PRODUTO: TIntegerField
      FieldName = 'OBS_DENTR_PRODUTO'
    end
    object qryServicoOBS_FORA_PRODUTO: TIntegerField
      FieldName = 'OBS_FORA_PRODUTO'
    end
    object qryServicoISS_PRODUTO: TFMTBCDField
      FieldName = 'ISS_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoPRAT1_PRODUTO: TStringField
      FieldName = 'PRAT1_PRODUTO'
      Size = 8
    end
    object qryServicoPRAT2_PRODUTO: TStringField
      FieldName = 'PRAT2_PRODUTO'
      Size = 8
    end
    object qryServicoFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object qryServicoDISTRIB1_PRODUTO: TIntegerField
      FieldName = 'DISTRIB1_PRODUTO'
    end
    object qryServicoDISTRIB2_PRODUTO: TIntegerField
      FieldName = 'DISTRIB2_PRODUTO'
    end
    object qryServicoVALIDADE_PRODUTO: TDateField
      FieldName = 'VALIDADE_PRODUTO'
    end
    object qryServicoTRIB_DENTRO_PRODUTO: TStringField
      FieldName = 'TRIB_DENTRO_PRODUTO'
      Size = 3
    end
    object qryServicoTRIB_FORA_PRODUTO: TStringField
      FieldName = 'TRIB_FORA_PRODUTO'
      Size = 3
    end
    object qryServicoSIMILAR1_PRODUTO: TIntegerField
      FieldName = 'SIMILAR1_PRODUTO'
    end
    object qryServicoSIMILAR2_PRODUTO: TIntegerField
      FieldName = 'SIMILAR2_PRODUTO'
    end
    object qryServicoOBSERVACAO_PRODUTO: TMemoField
      FieldName = 'OBSERVACAO_PRODUTO'
      BlobType = ftMemo
      Size = 1
    end
    object qryServicoSEXO_PRODUTO: TStringField
      FieldName = 'SEXO_PRODUTO'
      Size = 1
    end
    object qryServicoFISCAL_PRODUTO: TStringField
      FieldName = 'FISCAL_PRODUTO'
      Size = 10
    end
    object qryServicoCONTABIL_PRODUTO: TStringField
      FieldName = 'CONTABIL_PRODUTO'
      Size = 1
    end
    object qryServicoC_DEFEITO_PRODUTO: TFMTBCDField
      FieldName = 'C_DEFEITO_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoENV_GARANTIA_PRODUTO: TFMTBCDField
      FieldName = 'ENV_GARANTIA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoLOCAL_ESTOQUE_PRODUTO: TIntegerField
      FieldName = 'LOCAL_ESTOQUE_PRODUTO'
    end
    object qryServicoEXPORTADO_PRODUTO: TDateField
      FieldName = 'EXPORTADO_PRODUTO'
    end
    object qryServicoSELECAO_PRODUTO: TStringField
      FieldName = 'SELECAO_PRODUTO'
      Size = 1
    end
    object qryServicoMETRO_CUB_PRODUTO: TStringField
      FieldName = 'METRO_CUB_PRODUTO'
      Size = 1
    end
    object qryServicoRECEITUAR_PRODUTO: TStringField
      FieldName = 'RECEITUAR_PRODUTO'
      Size = 1
    end
    object qryServicoRED_CONTRI_PRODUTO: TStringField
      FieldName = 'RED_CONTRI_PRODUTO'
      Size = 1
    end
    object qryServicoALI_CONTRI_PRODUTO: TFMTBCDField
      FieldName = 'ALI_CONTRI_PRODUTO'
      Precision = 15
      Size = 2
    end
    object qryServicoTRIB_U_A_PRODUTO: TStringField
      FieldName = 'TRIB_U_A_PRODUTO'
      Size = 3
    end
    object qryServicoTRIB_F_A_PRODUTO: TStringField
      FieldName = 'TRIB_F_A_PRODUTO'
      Size = 3
    end
    object qryServicoRED_U_A_PRODUTO: TFMTBCDField
      FieldName = 'RED_U_A_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoRED_F_A_PRODUTO: TFMTBCDField
      FieldName = 'RED_F_A_PRODUTO'
      Precision = 15
      Size = 4
    end
    object qryServicoMERCOSUL_PRODUTO: TStringField
      FieldName = 'MERCOSUL_PRODUTO'
      Size = 12
    end
    object qryServicoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryServicoFOTO_PRODUTO: TStringField
      FieldName = 'FOTO_PRODUTO'
      Size = 1
    end
    object qryServicoQTD_FRACIONADA: TStringField
      FieldName = 'QTD_FRACIONADA'
      Size = 1
    end
  end
  object dspServico: TDataSetProvider
    DataSet = qryServico
    Options = [poAllowCommandText]
    Left = 115
    Top = 19
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'CLASSE'
        ParamType = ptInput
        Value = 2
      end>
    ProviderName = 'dspServico'
    Left = 200
    Top = 18
    object cdsServicoCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object cdsServicoCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
    end
    object cdsServicoGRUPO_PRODUTO: TIntegerField
      FieldName = 'GRUPO_PRODUTO'
    end
    object cdsServicoSUBGRUPO_PRODUTO: TIntegerField
      FieldName = 'SUBGRUPO_PRODUTO'
    end
    object cdsServicoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      FixedChar = True
      Size = 40
    end
    object cdsServicoUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object cdsServicoPESO_PRODUTO: TFMTBCDField
      FieldName = 'PESO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoSERIE_PRODUTO: TStringField
      FieldName = 'SERIE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsServicoDESUSO_PRODUTO: TStringField
      FieldName = 'DESUSO_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsServicoGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsServicoESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoESTOQUE1_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE1_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoESTOQUE2_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE2_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoESTOQUE3_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE3_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoMINIMO_PRODUTO: TFMTBCDField
      FieldName = 'MINIMO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoMAXIMO_PRODUTO: TFMTBCDField
      FieldName = 'MAXIMO_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoRESERVA_PRODUTO: TFMTBCDField
      FieldName = 'RESERVA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoPRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoPROMOCAO_PRODUTO: TFMTBCDField
      FieldName = 'PROMOCAO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoPRECO_ANT_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_ANT_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoPRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoPRECO_LISTA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_LISTA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoPER_DESCON_PRODUTO: TFMTBCDField
      FieldName = 'PER_DESCON_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoPER_ANTER_PRODUTO: TFMTBCDField
      FieldName = 'PER_ANTER_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoDATA_CUSTO_PRODUTO: TDateField
      FieldName = 'DATA_CUSTO_PRODUTO'
    end
    object cdsServicoVLRATACADO_PRODUTO: TFMTBCDField
      FieldName = 'VLRATACADO_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoADQUIRIDA_PRODUTO: TFMTBCDField
      FieldName = 'ADQUIRIDA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoADQUIRIDA1_PRODUTO: TFMTBCDField
      FieldName = 'ADQUIRIDA1_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsServicoDATA_COMPRA_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA_PRODUTO'
    end
    object cdsServicoDATA_COMPRA1_PRODUTO: TDateField
      FieldName = 'DATA_COMPRA1_PRODUTO'
    end
    object cdsServicoULT_VENDA_PRODUTO: TDateField
      FieldName = 'ULT_VENDA_PRODUTO'
    end
    object cdsServicoCADASTRO_PRODUTO: TDateField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object cdsServicoFIM_PROMOCAO_PRODUTO: TDateField
      FieldName = 'FIM_PROMOCAO_PRODUTO'
    end
    object cdsServicoFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object cdsServicoBARRA_PRODUTO: TStringField
      FieldName = 'BARRA_PRODUTO'
      Size = 17
    end
    object cdsServicoMARKUP_PRODUTO: TFMTBCDField
      FieldName = 'MARKUP_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoREFERENCIA_PRODUTO: TStringField
      FieldName = 'REFERENCIA_PRODUTO'
      Size = 5
    end
    object cdsServicoICMSUB_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoICMSUB_VENDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_VENDA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoICM_ENTRADA_PRODUTO: TFMTBCDField
      FieldName = 'ICM_ENTRADA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoICMSAIDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoICMSAIDA_FORA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_FORA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoFRETE_PRODUTO: TFMTBCDField
      FieldName = 'FRETE_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoCOMISSAO1_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO1_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoCOMISSAO2_PRODUTO: TFMTBCDField
      FieldName = 'COMISSAO2_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoDESCONTO_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTO_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoDESCONTOC_PRODUTO: TFMTBCDField
      FieldName = 'DESCONTOC_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoIPI_PRODUTO: TFMTBCDField
      FieldName = 'IPI_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoII_PRODUTO: TFMTBCDField
      FieldName = 'II_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoOUTROS_PRODUTO: TFMTBCDField
      FieldName = 'OUTROS_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoTMP_GARANTIA_PRODUTO: TStringField
      FieldName = 'TMP_GARANTIA_PRODUTO'
      Size = 10
    end
    object cdsServicoMEDIA_PRODUTO: TFMTBCDField
      FieldName = 'MEDIA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoREDU_DENTR_PRODUTO: TFMTBCDField
      FieldName = 'REDU_DENTR_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoREDU_FORA_PRODUTO: TFMTBCDField
      FieldName = 'REDU_FORA_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoOBS_DENTR_PRODUTO: TIntegerField
      FieldName = 'OBS_DENTR_PRODUTO'
    end
    object cdsServicoOBS_FORA_PRODUTO: TIntegerField
      FieldName = 'OBS_FORA_PRODUTO'
    end
    object cdsServicoISS_PRODUTO: TFMTBCDField
      FieldName = 'ISS_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoPRAT1_PRODUTO: TStringField
      FieldName = 'PRAT1_PRODUTO'
      Size = 8
    end
    object cdsServicoPRAT2_PRODUTO: TStringField
      FieldName = 'PRAT2_PRODUTO'
      Size = 8
    end
    object cdsServicoFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object cdsServicoDISTRIB1_PRODUTO: TIntegerField
      FieldName = 'DISTRIB1_PRODUTO'
    end
    object cdsServicoDISTRIB2_PRODUTO: TIntegerField
      FieldName = 'DISTRIB2_PRODUTO'
    end
    object cdsServicoVALIDADE_PRODUTO: TDateField
      FieldName = 'VALIDADE_PRODUTO'
    end
    object cdsServicoTRIB_DENTRO_PRODUTO: TStringField
      FieldName = 'TRIB_DENTRO_PRODUTO'
      Size = 3
    end
    object cdsServicoTRIB_FORA_PRODUTO: TStringField
      FieldName = 'TRIB_FORA_PRODUTO'
      Size = 3
    end
    object cdsServicoSIMILAR1_PRODUTO: TIntegerField
      FieldName = 'SIMILAR1_PRODUTO'
    end
    object cdsServicoSIMILAR2_PRODUTO: TIntegerField
      FieldName = 'SIMILAR2_PRODUTO'
    end
    object cdsServicoOBSERVACAO_PRODUTO: TMemoField
      FieldName = 'OBSERVACAO_PRODUTO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsServicoSEXO_PRODUTO: TStringField
      FieldName = 'SEXO_PRODUTO'
      Size = 1
    end
    object cdsServicoFISCAL_PRODUTO: TStringField
      FieldName = 'FISCAL_PRODUTO'
      Size = 10
    end
    object cdsServicoCONTABIL_PRODUTO: TStringField
      FieldName = 'CONTABIL_PRODUTO'
      Size = 1
    end
    object cdsServicoC_DEFEITO_PRODUTO: TFMTBCDField
      FieldName = 'C_DEFEITO_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoENV_GARANTIA_PRODUTO: TFMTBCDField
      FieldName = 'ENV_GARANTIA_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoLOCAL_ESTOQUE_PRODUTO: TIntegerField
      FieldName = 'LOCAL_ESTOQUE_PRODUTO'
    end
    object cdsServicoEXPORTADO_PRODUTO: TDateField
      FieldName = 'EXPORTADO_PRODUTO'
    end
    object cdsServicoSELECAO_PRODUTO: TStringField
      FieldName = 'SELECAO_PRODUTO'
      Size = 1
    end
    object cdsServicoMETRO_CUB_PRODUTO: TStringField
      FieldName = 'METRO_CUB_PRODUTO'
      Size = 1
    end
    object cdsServicoRECEITUAR_PRODUTO: TStringField
      FieldName = 'RECEITUAR_PRODUTO'
      Size = 1
    end
    object cdsServicoRED_CONTRI_PRODUTO: TStringField
      FieldName = 'RED_CONTRI_PRODUTO'
      Size = 1
    end
    object cdsServicoALI_CONTRI_PRODUTO: TFMTBCDField
      FieldName = 'ALI_CONTRI_PRODUTO'
      Precision = 15
      Size = 2
    end
    object cdsServicoTRIB_U_A_PRODUTO: TStringField
      FieldName = 'TRIB_U_A_PRODUTO'
      Size = 3
    end
    object cdsServicoTRIB_F_A_PRODUTO: TStringField
      FieldName = 'TRIB_F_A_PRODUTO'
      Size = 3
    end
    object cdsServicoRED_U_A_PRODUTO: TFMTBCDField
      FieldName = 'RED_U_A_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoRED_F_A_PRODUTO: TFMTBCDField
      FieldName = 'RED_F_A_PRODUTO'
      Precision = 15
      Size = 4
    end
    object cdsServicoMERCOSUL_PRODUTO: TStringField
      FieldName = 'MERCOSUL_PRODUTO'
      Size = 12
    end
    object cdsServicoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsServicoFOTO_PRODUTO: TStringField
      FieldName = 'FOTO_PRODUTO'
      Size = 1
    end
    object cdsServicoQTD_FRACIONADA: TStringField
      FieldName = 'QTD_FRACIONADA'
      Size = 1
    end
  end
end
