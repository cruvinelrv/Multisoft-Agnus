object dmShiftF4: TdmShiftF4
  OldCreateOrder = False
  Left = 357
  Top = 198
  Height = 313
  Width = 265
  object cdsConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DATA_TABELA1'
        DataType = ftDate
      end
      item
        Name = 'GRUPO_TABELA1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PERCENTUAL_TABELA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPO_TABELA1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO_TABELA1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USUARIO_TABELA1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'REAJUSTADO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 39
    Top = 16
    Data = {
      110100009619E0BD01000000180000000800000000000300000011010C444154
      415F544142454C413104000600000000000D475255504F5F544142454C413101
      004900000001000557494454480200020014001150455243454E5455414C5F54
      4142454C4101004900000001000557494454480200020014000C5449504F5F54
      4142454C413101004900000001000557494454480200020014000D505245434F
      5F544142454C413101004900000001000557494454480200020014000F555355
      4152494F5F544142454C41310100490000000100055749445448020002001400
      0B434F445F454D505245534104000100000000000A5245414A55535441444F01
      004900000001000557494454480200020014000000}
    object cdsConsultaDATA_TABELA1: TDateField
      FieldName = 'DATA_TABELA1'
    end
    object cdsConsultaGRUPO_TABELA1: TStringField
      FieldName = 'GRUPO_TABELA1'
    end
    object cdsConsultaPERCENTUAL_TABELA: TStringField
      FieldName = 'PERCENTUAL_TABELA'
    end
    object cdsConsultaTIPO_TABELA1: TStringField
      FieldName = 'TIPO_TABELA1'
    end
    object cdsConsultaPRECO_TABELA1: TStringField
      FieldName = 'PRECO_TABELA1'
    end
    object cdsConsultaUSUARIO_TABELA1: TStringField
      FieldName = 'USUARIO_TABELA1'
    end
    object cdsConsultaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsConsultaREAJUSTADO: TStringField
      FieldName = 'REAJUSTADO'
    end
  end
  object qryTabela01: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_TABELA01 WHERE COD_EMPRESA=:EMPRESA ORDER BY DAT' +
        'A_TABELA01 ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 37
    Top = 70
  end
  object dspTabela01: TDataSetProvider
    DataSet = qryTabela01
    Left = 111
    Top = 70
  end
  object cdsTabela01: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspTabela01'
    Left = 187
    Top = 71
    object cdsTabela01COD_EMPRESA: TIntegerField
      Alignment = taCenter
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsTabela01DATA_TABELA01: TDateField
      Alignment = taCenter
      FieldName = 'DATA_TABELA01'
      Required = True
    end
    object cdsTabela01GRUPO_TABELA01: TIntegerField
      Alignment = taCenter
      FieldName = 'GRUPO_TABELA01'
    end
    object cdsTabela01PERCENTUAL_TABELA01: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PERCENTUAL_TABELA01'
      Precision = 15
      Size = 2
    end
    object cdsTabela01TIPO_TABELA01: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_TABELA01'
      Size = 1
    end
    object cdsTabela01PRECO_TABELA01: TStringField
      Alignment = taCenter
      FieldName = 'PRECO_TABELA01'
      Size = 1
    end
    object cdsTabela01USUARIO_TABELA01: TStringField
      Alignment = taCenter
      FieldName = 'USUARIO_TABELA01'
      Size = 10
    end
  end
end
