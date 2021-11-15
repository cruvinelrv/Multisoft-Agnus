object dmCd02: TdmCd02
  OldCreateOrder = False
  Left = 393
  Top = 183
  Height = 223
  Width = 340
  object cdsGrupoProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupoProduto'
    Left = 241
    Top = 21
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
    Left = 150
    Top = 21
  end
  object qryGrupoProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO_EMP'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM P_GRUPOS '
      'WHERE COD_EMPRESA=:CODIGO_EMP')
    SQLConnection = DmPrincipal.DbConexao
    Left = 63
    Top = 21
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
  object qrySecao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO_EMP'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT '
      ''
      'COD_EMPRESA, '
      'CODIGO_SECAO, '
      'DESCRICAO_SECAO '
      ''
      
        'FROM P_SECAO WHERE COD_EMPRESA=:CODIGO_EMP ORDER  BY DESCRICAO_S' +
        'ECAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 63
    Top = 75
  end
  object dspSecao: TDataSetProvider
    DataSet = qrySecao
    Options = [poAllowCommandText]
    Left = 150
    Top = 75
  end
  object cdsSecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSecao'
    Left = 239
    Top = 75
    object cdsSecaoCODIGO_SECAO: TIntegerField
      FieldName = 'CODIGO_SECAO'
      Required = True
    end
    object cdsSecaoDESCRICAO_SECAO: TStringField
      FieldName = 'DESCRICAO_SECAO'
    end
    object cdsSecaoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 62
    Top = 136
  end
end
