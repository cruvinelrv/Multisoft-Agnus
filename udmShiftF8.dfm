object dmShiftF8: TdmShiftF8
  OldCreateOrder = False
  Left = 385
  Top = 204
  Height = 151
  Width = 320
  object qryObservacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_OBSERVACAONF ORDER BY DESCRICAO_OBSERVACAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 12
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
    Left = 140
    Top = 13
  end
  object cdsObservacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspObservacao'
    Left = 236
    Top = 13
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
