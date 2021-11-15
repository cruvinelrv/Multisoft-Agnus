object dmAltF12: TdmAltF12
  OldCreateOrder = False
  Left = 370
  Top = 176
  Height = 143
  Width = 238
  object qryParceiro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptUnknown
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_PARCEIRO  WHERE COD_EMPRESA=:EMPRESA ORDER BY NO' +
        'ME_PARCEIRO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 26
    Top = 21
    object qryParceiroCODIGO_PARCEIRO: TIntegerField
      FieldName = 'CODIGO_PARCEIRO'
      Required = True
    end
    object qryParceiroNOME_PARCEIRO: TStringField
      FieldName = 'NOME_PARCEIRO'
      Size = 50
    end
    object qryParceiroENDERECO_PARCEIRO: TStringField
      FieldName = 'ENDERECO_PARCEIRO'
      Size = 50
    end
    object qryParceiroCIDADE_PARCEIRO: TStringField
      FieldName = 'CIDADE_PARCEIRO'
      Size = 30
    end
    object qryParceiroESTADO_PARCEIRO: TStringField
      FieldName = 'ESTADO_PARCEIRO'
      FixedChar = True
      Size = 2
    end
    object qryParceiroTELEFONE_PARCEIRO: TStringField
      FieldName = 'TELEFONE_PARCEIRO'
      Size = 13
    end
    object qryParceiroCONTATO_PARCEIRO: TStringField
      FieldName = 'CONTATO_PARCEIRO'
      Size = 40
    end
    object qryParceiroRAMO_PARCEIRO: TIntegerField
      FieldName = 'RAMO_PARCEIRO'
    end
    object qryParceiroCELULAR_PARCEIRO: TStringField
      FieldName = 'CELULAR_PARCEIRO'
      Size = 13
    end
    object qryParceiroEMAIL_PARCEIRO: TStringField
      FieldName = 'EMAIL_PARCEIRO'
      Size = 60
    end
    object qryParceiroCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dsParceiro: TDataSetProvider
    DataSet = qryParceiro
    Options = [poAllowCommandText]
    Left = 98
    Top = 20
  end
  object cdsParceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsParceiro'
    Left = 170
    Top = 21
    object cdsParceiroCODIGO_PARCEIRO: TIntegerField
      FieldName = 'CODIGO_PARCEIRO'
      Required = True
    end
    object cdsParceiroNOME_PARCEIRO: TStringField
      FieldName = 'NOME_PARCEIRO'
      Size = 50
    end
    object cdsParceiroENDERECO_PARCEIRO: TStringField
      FieldName = 'ENDERECO_PARCEIRO'
      Size = 50
    end
    object cdsParceiroCIDADE_PARCEIRO: TStringField
      FieldName = 'CIDADE_PARCEIRO'
      Size = 30
    end
    object cdsParceiroESTADO_PARCEIRO: TStringField
      FieldName = 'ESTADO_PARCEIRO'
      FixedChar = True
      Size = 2
    end
    object cdsParceiroTELEFONE_PARCEIRO: TStringField
      FieldName = 'TELEFONE_PARCEIRO'
      Size = 13
    end
    object cdsParceiroCONTATO_PARCEIRO: TStringField
      FieldName = 'CONTATO_PARCEIRO'
      Size = 40
    end
    object cdsParceiroRAMO_PARCEIRO: TIntegerField
      FieldName = 'RAMO_PARCEIRO'
    end
    object cdsParceiroCELULAR_PARCEIRO: TStringField
      FieldName = 'CELULAR_PARCEIRO'
      Size = 13
    end
    object cdsParceiroEMAIL_PARCEIRO: TStringField
      FieldName = 'EMAIL_PARCEIRO'
      Size = 60
    end
    object cdsParceiroCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
end
