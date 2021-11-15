object dmCtrlF5: TdmCtrlF5
  OldCreateOrder = False
  Left = 292
  Top = 203
  Height = 155
  Width = 293
  object qrySubGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_SUBGRUPO ORDER BY DESCRICAO_SUBGRUPO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 56
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
    Left = 124
    Top = 56
  end
  object cdsSubGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSubGrupo'
    Left = 212
    Top = 56
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
  object cdsGrupoProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupoProduto'
    Left = 212
    Top = 8
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
    Left = 124
    Top = 8
  end
  object qryGrupoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_GRUPOS WHERE COD_EMPRESA=1')
    Left = 36
    Top = 8
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
end
