object dmAltF1: TdmAltF1
  OldCreateOrder = False
  Left = 294
  Top = 223
  Height = 100
  Width = 174
  object cdsDolar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDolar'
    Left = 112
    Top = 8
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
  object dspDolar: TDataSetProvider
    DataSet = qryDolar
    Left = 64
    Top = 8
  end
  object qryDolar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_DOLAR ORDER BY DATA_DOLAR')
    SQLConnection = DmPrincipal.DbConexao
    Left = 17
    Top = 8
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
end
