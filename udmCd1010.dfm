object dmCd1010: TdmCd1010
  OldCreateOrder = False
  Left = 344
  Top = 208
  Height = 187
  Width = 357
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
    Left = 32
    Top = 16
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
    Left = 147
    Top = 16
  end
  object cdsParceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsParceiro'
    Left = 262
    Top = 16
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
  object qryRamoAtividade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_ATIVIDADE ORDER BY DESCRICAO_ATIVIDADE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 72
    object qryRamoAtividadeCODIGO_ATIVIDADE: TIntegerField
      FieldName = 'CODIGO_ATIVIDADE'
      Required = True
    end
    object qryRamoAtividadeTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 35
    end
    object qryRamoAtividadeDESCRICAO_ATIVIDADE: TStringField
      FieldName = 'DESCRICAO_ATIVIDADE'
      Size = 40
    end
  end
  object dspRamoAtividade: TDataSetProvider
    DataSet = qryRamoAtividade
    Left = 148
    Top = 72
  end
  object cdsRamoAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRamoAtividade'
    Left = 265
    Top = 72
    object cdsRamoAtividadeCODIGO_ATIVIDADE: TIntegerField
      FieldName = 'CODIGO_ATIVIDADE'
      Required = True
    end
    object cdsRamoAtividadeTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 35
    end
    object cdsRamoAtividadeDESCRICAO_ATIVIDADE: TStringField
      FieldName = 'DESCRICAO_ATIVIDADE'
      Size = 40
    end
  end
end
