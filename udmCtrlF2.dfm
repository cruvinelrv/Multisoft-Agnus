object dmCtrlF2: TdmCtrlF2
  OldCreateOrder = False
  Left = 412
  Top = 231
  Height = 168
  Width = 302
  object qryNatureza: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_NATUREZA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 16
    object qryNaturezaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 4
    end
    object qryNaturezaCODIGO_NAT: TStringField
      FieldName = 'CODIGO_NAT'
      Size = 4
    end
    object qryNaturezaOPERACAO_NAT: TStringField
      FieldName = 'OPERACAO_NAT'
      Size = 1
    end
    object qryNaturezaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      Size = 310
    end
  end
  object dspNatureza: TDataSetProvider
    DataSet = qryNatureza
    Left = 96
    Top = 16
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNatureza'
    Left = 168
    Top = 16
    object cdsNaturezaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 4
    end
    object cdsNaturezaCODIGO_NAT: TStringField
      FieldName = 'CODIGO_NAT'
      Size = 4
    end
    object cdsNaturezaOPERACAO_NAT: TStringField
      FieldName = 'OPERACAO_NAT'
      Size = 1
    end
    object cdsNaturezaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      Size = 310
    end
  end
end
