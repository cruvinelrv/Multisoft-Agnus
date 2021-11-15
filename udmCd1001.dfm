object dmCd1001: TdmCd1001
  OldCreateOrder = False
  Left = 394
  Top = 249
  Height = 165
  Width = 287
  object qryDolar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_DOLAR ORDER BY DATA_DOLAR')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
    Top = 16
    object qryDolarDATA_DOLAR: TDateField
      FieldName = 'DATA_DOLAR'
      Required = True
    end
    object qryDolarCCOMPRA_DOLAR: TFMTBCDField
      FieldName = 'CCOMPRA_DOLAR'
      Precision = 15
    end
    object qryDolarCVENDA_DOLAR: TFMTBCDField
      FieldName = 'CVENDA_DOLAR'
      Precision = 15
    end
    object qryDolarPCOMPRA_DOLAR: TFMTBCDField
      FieldName = 'PCOMPRA_DOLAR'
      Precision = 15
    end
    object qryDolarPVENDA_DOLAR: TFMTBCDField
      FieldName = 'PVENDA_DOLAR'
      Precision = 15
    end
  end
  object dspDolar: TDataSetProvider
    DataSet = qryDolar
    Left = 116
    Top = 16
  end
  object cdsDolar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDolar'
    Left = 200
    Top = 16
    object cdsDolarDATA_DOLAR: TDateField
      FieldName = 'DATA_DOLAR'
      Required = True
    end
    object cdsDolarCCOMPRA_DOLAR: TFMTBCDField
      FieldName = 'CCOMPRA_DOLAR'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsDolarCVENDA_DOLAR: TFMTBCDField
      FieldName = 'CVENDA_DOLAR'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsDolarPCOMPRA_DOLAR: TFMTBCDField
      FieldName = 'PCOMPRA_DOLAR'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
    object cdsDolarPVENDA_DOLAR: TFMTBCDField
      FieldName = 'PVENDA_DOLAR'
      DisplayFormat = '0.0000'
      EditFormat = '0.0000'
      Precision = 15
    end
  end
end
