object dmCd08: TdmCd08
  OldCreateOrder = False
  Left = 356
  Top = 201
  Height = 158
  Width = 259
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 170
    Top = 28
    object cdsVendedorCODIGO_VENDEDOR: TIntegerField
      FieldName = 'CODIGO_VENDEDOR'
      Required = True
    end
    object cdsVendedorNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object cdsVendedorCHAVE_VENDEDOR: TStringField
      FieldName = 'CHAVE_VENDEDOR'
      Size = 5
    end
    object cdsVendedorSITUACAO_VENDEDOR: TStringField
      FieldName = 'SITUACAO_VENDEDOR'
      Size = 1
    end
    object cdsVendedorFUNCAO_VENDEDOR: TStringField
      FieldName = 'FUNCAO_VENDEDOR'
      Size = 1
    end
    object cdsVendedorTABELA_VENDEDOR: TIntegerField
      FieldName = 'TABELA_VENDEDOR'
    end
    object cdsVendedorCODCLI_VENDEDOR: TIntegerField
      FieldName = 'CODCLI_VENDEDOR'
    end
    object cdsVendedorDEPARTAMENTO_VENDEDOR: TStringField
      FieldName = 'DEPARTAMENTO_VENDEDOR'
      Size = 30
    end
    object cdsVendedorENDERECO_VENDEDOR: TStringField
      FieldName = 'ENDERECO_VENDEDOR'
      Size = 40
    end
    object cdsVendedorVLR_HORA_VENDEDOR: TFMTBCDField
      FieldName = 'VLR_HORA_VENDEDOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsVendedorCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspVendedor: TDataSetProvider
    DataSet = qryVendedor
    Left = 101
    Top = 28
  end
  object qryVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_VENDEDOR WHERE COD_EMPRESA=:EMPRESA  ORDER BY NO' +
        'ME_VENDEDOR')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 28
    object qryVendedorCODIGO_VENDEDOR: TIntegerField
      FieldName = 'CODIGO_VENDEDOR'
      Required = True
    end
    object qryVendedorNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object qryVendedorCHAVE_VENDEDOR: TStringField
      FieldName = 'CHAVE_VENDEDOR'
      Size = 5
    end
    object qryVendedorSITUACAO_VENDEDOR: TStringField
      FieldName = 'SITUACAO_VENDEDOR'
      Size = 1
    end
    object qryVendedorFUNCAO_VENDEDOR: TStringField
      FieldName = 'FUNCAO_VENDEDOR'
      Size = 1
    end
    object qryVendedorTABELA_VENDEDOR: TIntegerField
      FieldName = 'TABELA_VENDEDOR'
    end
    object qryVendedorCODCLI_VENDEDOR: TIntegerField
      FieldName = 'CODCLI_VENDEDOR'
    end
    object qryVendedorDEPARTAMENTO_VENDEDOR: TStringField
      FieldName = 'DEPARTAMENTO_VENDEDOR'
      Size = 30
    end
    object qryVendedorENDERECO_VENDEDOR: TStringField
      FieldName = 'ENDERECO_VENDEDOR'
      Size = 40
    end
    object qryVendedorVLR_HORA_VENDEDOR: TFMTBCDField
      FieldName = 'VLR_HORA_VENDEDOR'
      Precision = 15
      Size = 2
    end
    object qryVendedorCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
end
