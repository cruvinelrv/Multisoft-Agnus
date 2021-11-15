object dmCd0905: TdmCd0905
  OldCreateOrder = False
  Left = 297
  Top = 183
  Height = 266
  Width = 348
  object qryConta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CONTA ORDER BY DESCRICAO_CONTA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 20
    object qryContaCODIGO_CONTA: TStringField
      FieldName = 'CODIGO_CONTA'
      Required = True
    end
    object qryContaDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      Size = 40
    end
    object qryContaTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object qryContaTITULO_CONTA: TStringField
      FieldName = 'TITULO_CONTA'
      Size = 40
    end
  end
  object dspConta: TDataSetProvider
    DataSet = qryConta
    Options = [poAllowCommandText]
    Left = 104
    Top = 20
  end
  object cdsConta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConta'
    Left = 176
    Top = 20
    object cdsContaCODIGO_CONTA: TStringField
      FieldName = 'CODIGO_CONTA'
      Required = True
    end
    object cdsContaDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      Size = 40
    end
    object cdsContaTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsContaTITULO_CONTA: TStringField
      FieldName = 'TITULO_CONTA'
      Size = 40
    end
  end
  object qryConsultaConta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT c.codigo_conta, c.descricao_conta, c.tipo_conta'
      'FROM E_CONTA c'
      'where c.codigo_conta =:CONTA'
      'ORDER BY DESCRICAO_CONTA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 30
    Top = 80
    object qryConsultaContaCODIGO_CONTA: TStringField
      FieldName = 'CODIGO_CONTA'
      Required = True
    end
    object qryConsultaContaDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryConsultaContaTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object dspConsultaConta: TDataSetProvider
    DataSet = qryConsultaConta
    Left = 120
    Top = 80
  end
  object cdsConsultaConta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsultaConta'
    Left = 216
    Top = 80
    object cdsConsultaContaCODIGO_CONTA: TStringField
      FieldName = 'CODIGO_CONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsConsultaContaDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsConsultaContaTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object qryConta2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CONTA ORDER BY DESCRICAO_CONTA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 140
    object StringField1: TStringField
      FieldName = 'CODIGO_CONTA'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO_CONTA'
      Size = 40
    end
    object StringField3: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'TITULO_CONTA'
      Size = 40
    end
  end
  object dspConta2: TDataSetProvider
    DataSet = qryConta2
    Options = [poAllowCommandText]
    Left = 104
    Top = 140
  end
  object cdsConta2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConta'
    Left = 176
    Top = 140
    object cdsConta2CODIGO_CONTA: TStringField
      FieldName = 'CODIGO_CONTA'
      Required = True
    end
    object cdsConta2DESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      Size = 40
    end
    object cdsConta2TIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsConta2TITULO_CONTA: TStringField
      FieldName = 'TITULO_CONTA'
      Size = 40
    end
  end
end
