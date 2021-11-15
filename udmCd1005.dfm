object dmCd1005: TdmCd1005
  OldCreateOrder = False
  Left = 334
  Top = 202
  Height = 146
  Width = 262
  object qryVeiculos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT * FROM P_VEICULOS WHERE COD_EMPRESA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 25
    Top = 14
  end
  object dspVeiculos: TDataSetProvider
    DataSet = qryVeiculos
    Left = 105
    Top = 11
  end
  object cdsVeiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVeiculos'
    Left = 185
    Top = 12
    object cdsVeiculosCODIGO_VEICULO: TIntegerField
      FieldName = 'CODIGO_VEICULO'
      Required = True
    end
    object cdsVeiculosDESCRICAO_VEICULO: TStringField
      FieldName = 'DESCRICAO_VEICULO'
      Size = 30
    end
    object cdsVeiculosCAPACIDADE_VEICULO: TFMTBCDField
      FieldName = 'CAPACIDADE_VEICULO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
    end
    object cdsVeiculosFABRICA_VEICULO: TStringField
      FieldName = 'FABRICA_VEICULO'
      Size = 30
    end
    object cdsVeiculosANO_VEICULO: TIntegerField
      FieldName = 'ANO_VEICULO'
    end
    object cdsVeiculosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
end
