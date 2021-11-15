object dmCd1006: TdmCd1006
  OldCreateOrder = False
  Left = 397
  Top = 281
  Height = 195
  Width = 289
  object qryAssociacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_ASSOCIACAO ORDER BY DESCRICAO_ASSOCIACAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 31
    Top = 15
    object qryAssociacaoCODIGO_ASSOCIACAO: TIntegerField
      FieldName = 'CODIGO_ASSOCIACAO'
      Required = True
    end
    object qryAssociacaoDESCRICAO_ASSOCIACAO: TStringField
      FieldName = 'DESCRICAO_ASSOCIACAO'
      Size = 58
    end
    object qryAssociacaoREPRESENTA_ASSOCIACAO: TStringField
      FieldName = 'REPRESENTA_ASSOCIACAO'
      Size = 50
    end
    object qryAssociacaoENDERECO_ASSOCIACAO: TStringField
      FieldName = 'ENDERECO_ASSOCIACAO'
      Size = 55
    end
    object qryAssociacaoBAIRRO_ASSOCIACAO: TStringField
      FieldName = 'BAIRRO_ASSOCIACAO'
      Size = 25
    end
    object qryAssociacaoCIDADE_ASSOCIACAO: TStringField
      FieldName = 'CIDADE_ASSOCIACAO'
    end
    object qryAssociacaoESTADO_ASSOCIACAO: TStringField
      FieldName = 'ESTADO_ASSOCIACAO'
      Size = 2
    end
    object qryAssociacaoCEP_ASSOCIACAO: TStringField
      FieldName = 'CEP_ASSOCIACAO'
      Size = 10
    end
    object qryAssociacaoFONE_ASSOCIACAO: TStringField
      FieldName = 'FONE_ASSOCIACAO'
      Size = 15
    end
    object qryAssociacaoFAX_ASSOCIACAO: TStringField
      FieldName = 'FAX_ASSOCIACAO'
      Size = 13
    end
    object qryAssociacaoOBSERVACAO_ASSOCIACAO: TMemoField
      FieldName = 'OBSERVACAO_ASSOCIACAO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspAssociacao: TDataSetProvider
    DataSet = qryAssociacao
    Left = 123
    Top = 15
  end
  object cdsAssociacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAssociacao'
    Left = 215
    Top = 15
    object cdsAssociacaoCODIGO_ASSOCIACAO: TIntegerField
      FieldName = 'CODIGO_ASSOCIACAO'
      Required = True
    end
    object cdsAssociacaoDESCRICAO_ASSOCIACAO: TStringField
      FieldName = 'DESCRICAO_ASSOCIACAO'
      Size = 58
    end
    object cdsAssociacaoREPRESENTA_ASSOCIACAO: TStringField
      FieldName = 'REPRESENTA_ASSOCIACAO'
      Size = 50
    end
    object cdsAssociacaoENDERECO_ASSOCIACAO: TStringField
      FieldName = 'ENDERECO_ASSOCIACAO'
      Size = 55
    end
    object cdsAssociacaoBAIRRO_ASSOCIACAO: TStringField
      FieldName = 'BAIRRO_ASSOCIACAO'
      Size = 25
    end
    object cdsAssociacaoCIDADE_ASSOCIACAO: TStringField
      FieldName = 'CIDADE_ASSOCIACAO'
    end
    object cdsAssociacaoESTADO_ASSOCIACAO: TStringField
      FieldName = 'ESTADO_ASSOCIACAO'
      Size = 2
    end
    object cdsAssociacaoCEP_ASSOCIACAO: TStringField
      FieldName = 'CEP_ASSOCIACAO'
      EditMask = '99999\-999;1; '
      Size = 10
    end
    object cdsAssociacaoFONE_ASSOCIACAO: TStringField
      FieldName = 'FONE_ASSOCIACAO'
      EditMask = '\(99\)9999\-9999;1; '
      Size = 15
    end
    object cdsAssociacaoOBSERVACAO_ASSOCIACAO: TMemoField
      FieldName = 'OBSERVACAO_ASSOCIACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAssociacaoFAX_ASSOCIACAO: TStringField
      FieldName = 'FAX_ASSOCIACAO'
      EditMask = '\(99\)9999\-9999;1; '
      Size = 13
    end
  end
  object qrySecao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_SECAO ORDER BY DESCRICAO_SECAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 30
    Top = 70
  end
  object dspSecao: TDataSetProvider
    DataSet = qrySecao
    Options = [poAllowCommandText]
    Left = 126
    Top = 70
  end
  object cdsSecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSecao'
    Left = 217
    Top = 68
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
end
