object dmFn10: TdmFn10
  OldCreateOrder = False
  Left = 390
  Top = 331
  Height = 143
  Width = 290
  object qryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select e.codigo_emp, e.juros_emp, e.juro_min_emp, e.dias_emp'
      'from EMPRESA e'
      'where e.codigo_emp =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 24
    object qryEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object qryEmpresaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEmpresaJURO_MIN_EMP: TFMTBCDField
      FieldName = 'JURO_MIN_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEmpresaDIAS_EMP: TIntegerField
      FieldName = 'DIAS_EMP'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 120
    Top = 23
  end
  object cdsEmpresa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpresa'
    Left = 216
    Top = 24
    object cdsEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object cdsEmpresaJUROS_EMP: TFMTBCDField
      FieldName = 'JUROS_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEmpresaJURO_MIN_EMP: TFMTBCDField
      FieldName = 'JURO_MIN_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEmpresaDIAS_EMP: TIntegerField
      FieldName = 'DIAS_EMP'
      ProviderFlags = [pfInUpdate]
    end
  end
end
