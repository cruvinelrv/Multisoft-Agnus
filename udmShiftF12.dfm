object dmShiftF12: TdmShiftF12
  OldCreateOrder = False
  Left = 259
  Top = 166
  Height = 160
  Width = 251
  object qryTroca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_TROCA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 32
    object qryTrocaCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object qryTrocaDATA: TDateField
      FieldName = 'DATA'
    end
    object qryTrocaHORA: TStringField
      FieldName = 'HORA'
      Size = 8
    end
    object qryTrocaPRODUTO1: TIntegerField
      FieldName = 'PRODUTO1'
    end
    object qryTrocaPRODUTO2: TIntegerField
      FieldName = 'PRODUTO2'
    end
    object qryTrocaPRODUTO3: TIntegerField
      FieldName = 'PRODUTO3'
    end
    object qryTrocaPRODUTO4: TIntegerField
      FieldName = 'PRODUTO4'
    end
    object qryTrocaPRODUTO5: TIntegerField
      FieldName = 'PRODUTO5'
    end
    object qryTrocaQUANT1: TIntegerField
      FieldName = 'QUANT1'
    end
    object qryTrocaQUANT2: TIntegerField
      FieldName = 'QUANT2'
    end
    object qryTrocaQUANT3: TIntegerField
      FieldName = 'QUANT3'
    end
    object qryTrocaQUANT4: TIntegerField
      FieldName = 'QUANT4'
    end
    object qryTrocaQUANT5: TIntegerField
      FieldName = 'QUANT5'
    end
    object qryTrocaPRECO1: TFMTBCDField
      FieldName = 'PRECO1'
      Precision = 15
      Size = 4
    end
    object qryTrocaPRECO2: TFMTBCDField
      FieldName = 'PRECO2'
      Precision = 15
      Size = 4
    end
    object qryTrocaPRECO3: TFMTBCDField
      FieldName = 'PRECO3'
      Precision = 15
      Size = 4
    end
    object qryTrocaPRECO4: TFMTBCDField
      FieldName = 'PRECO4'
      Precision = 15
      Size = 4
    end
    object qryTrocaPRECO5: TFMTBCDField
      FieldName = 'PRECO5'
      Precision = 15
      Size = 4
    end
    object qryTrocaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 10
    end
    object qryTrocaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
    object qryTrocaGRADE1: TStringField
      FieldName = 'GRADE1'
      Size = 5
    end
    object qryTrocaGRADE2: TStringField
      FieldName = 'GRADE2'
      Size = 5
    end
    object qryTrocaGRADE3: TStringField
      FieldName = 'GRADE3'
      Size = 5
    end
    object qryTrocaGRADE4: TStringField
      FieldName = 'GRADE4'
      Size = 5
    end
    object qryTrocaGRADE5: TStringField
      FieldName = 'GRADE5'
      Size = 5
    end
  end
  object cdsTroca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTroca'
    Left = 170
    Top = 34
    object cdsTrocaCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsTrocaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsTrocaHORA: TStringField
      FieldName = 'HORA'
      Size = 8
    end
    object cdsTrocaPRODUTO1: TIntegerField
      FieldName = 'PRODUTO1'
    end
    object cdsTrocaPRODUTO2: TIntegerField
      FieldName = 'PRODUTO2'
    end
    object cdsTrocaPRODUTO3: TIntegerField
      FieldName = 'PRODUTO3'
    end
    object cdsTrocaPRODUTO4: TIntegerField
      FieldName = 'PRODUTO4'
    end
    object cdsTrocaPRODUTO5: TIntegerField
      FieldName = 'PRODUTO5'
    end
    object cdsTrocaQUANT1: TIntegerField
      FieldName = 'QUANT1'
    end
    object cdsTrocaQUANT2: TIntegerField
      FieldName = 'QUANT2'
    end
    object cdsTrocaQUANT3: TIntegerField
      FieldName = 'QUANT3'
    end
    object cdsTrocaQUANT4: TIntegerField
      FieldName = 'QUANT4'
    end
    object cdsTrocaQUANT5: TIntegerField
      FieldName = 'QUANT5'
    end
    object cdsTrocaPRECO1: TFMTBCDField
      FieldName = 'PRECO1'
      Precision = 15
      Size = 4
    end
    object cdsTrocaPRECO2: TFMTBCDField
      FieldName = 'PRECO2'
      Precision = 15
      Size = 4
    end
    object cdsTrocaPRECO3: TFMTBCDField
      FieldName = 'PRECO3'
      Precision = 15
      Size = 4
    end
    object cdsTrocaPRECO4: TFMTBCDField
      FieldName = 'PRECO4'
      Precision = 15
      Size = 4
    end
    object cdsTrocaPRECO5: TFMTBCDField
      FieldName = 'PRECO5'
      Precision = 15
      Size = 4
    end
    object cdsTrocaCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 10
    end
    object cdsTrocaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
    object cdsTrocaGRADE1: TStringField
      FieldName = 'GRADE1'
      Size = 5
    end
    object cdsTrocaGRADE2: TStringField
      FieldName = 'GRADE2'
      Size = 5
    end
    object cdsTrocaGRADE3: TStringField
      FieldName = 'GRADE3'
      Size = 5
    end
    object cdsTrocaGRADE4: TStringField
      FieldName = 'GRADE4'
      Size = 5
    end
    object cdsTrocaGRADE5: TStringField
      FieldName = 'GRADE5'
      Size = 5
    end
  end
  object dspTroca: TDataSetProvider
    DataSet = qryTroca
    Left = 101
    Top = 32
  end
end
