object dmCtrlF3: TdmCtrlF3
  OldCreateOrder = False
  Left = 310
  Top = 198
  Height = 150
  Width = 215
  object qryCST: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_SITUACAO ORDER BY DESCRICAO_SITUACAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 18
    Top = 16
    object qryCSTCODIGO_SITUACAO: TStringField
      FieldName = 'CODIGO_SITUACAO'
      Size = 3
    end
    object qryCSTDESCRICAO_SITUACAO: TStringField
      FieldName = 'DESCRICAO_SITUACAO'
      Size = 40
    end
  end
  object dspCST: TDataSetProvider
    DataSet = qryCST
    Left = 81
    Top = 17
  end
  object cdsCST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCST'
    Left = 137
    Top = 18
    object cdsCSTCODIGO_SITUACAO: TStringField
      FieldName = 'CODIGO_SITUACAO'
      Size = 3
    end
    object cdsCSTDESCRICAO_SITUACAO: TStringField
      FieldName = 'DESCRICAO_SITUACAO'
      Size = 40
    end
  end
end
