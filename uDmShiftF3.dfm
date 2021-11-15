object dmShiftF3: TdmShiftF3
  OldCreateOrder = False
  Left = 398
  Top = 197
  Height = 150
  Width = 215
  object qrySecao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO_EMP'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT '
      ''
      'COD_EMPRESA, '
      'CODIGO_SECAO, '
      'DESCRICAO_SECAO '
      ''
      
        'FROM P_SECAO WHERE COD_EMPRESA=:CODIGO_EMP ORDER  BY DESCRICAO_S' +
        'ECAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 23
    Top = 32
  end
  object dspSecao: TDataSetProvider
    DataSet = qrySecao
    Options = [poAllowCommandText]
    Left = 78
    Top = 32
  end
  object cdsSecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSecao'
    Left = 135
    Top = 32
    object cdsSecaoCODIGO_SECAO: TIntegerField
      FieldName = 'CODIGO_SECAO'
      Required = True
    end
    object cdsSecaoDESCRICAO_SECAO: TStringField
      FieldName = 'DESCRICAO_SECAO'
    end
    object cdsSecaoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
end
