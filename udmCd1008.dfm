object dmCd1008: TdmCd1008
  OldCreateOrder = False
  Left = 379
  Top = 254
  Height = 191
  Width = 291
  object qryObservacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_OBSERVACAONF ORDER BY DESCRICAO_OBSERVACAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 20
    object qryObservacaoCODIGO_OBSERVACAO: TIntegerField
      FieldName = 'CODIGO_OBSERVACAO'
      Required = True
    end
    object qryObservacaoTEXTO_OBSERVACAO: TMemoField
      FieldName = 'TEXTO_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object qryObservacaoDESCRICAO_OBSERVACAO: TStringField
      FieldName = 'DESCRICAO_OBSERVACAO'
      Size = 50
    end
  end
  object dspObservacao: TDataSetProvider
    DataSet = qryObservacao
    Left = 120
    Top = 20
  end
  object cdsObservacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspObservacao'
    Left = 212
    Top = 20
    object cdsObservacaoCODIGO_OBSERVACAO: TIntegerField
      FieldName = 'CODIGO_OBSERVACAO'
      Required = True
    end
    object cdsObservacaoTEXTO_OBSERVACAO: TMemoField
      FieldName = 'TEXTO_OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsObservacaoDESCRICAO_OBSERVACAO: TStringField
      FieldName = 'DESCRICAO_OBSERVACAO'
      Size = 50
    end
  end
end
