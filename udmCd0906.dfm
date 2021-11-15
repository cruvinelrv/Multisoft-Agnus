object dmCd0906: TdmCd0906
  OldCreateOrder = False
  Left = 294
  Top = 245
  Height = 296
  Width = 318
  object qryContaBanco: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_BANCO WHERE COD_EMPRESA=:EMPRESA ORDER BY DESCRI' +
        'CAO_BANCO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 36
    Top = 20
    object qryContaBancoCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
      Required = True
    end
    object qryContaBancoDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
    end
    object qryContaBancoAGENCIA_BANCO: TStringField
      FieldName = 'AGENCIA_BANCO'
      Size = 4
    end
    object qryContaBancoDIGITO1_BANCO: TStringField
      FieldName = 'DIGITO1_BANCO'
      Size = 2
    end
    object qryContaBancoCONTA_BANCO: TStringField
      FieldName = 'CONTA_BANCO'
      Size = 8
    end
    object qryContaBancoDIGITO2_BANCO: TStringField
      FieldName = 'DIGITO2_BANCO'
      Size = 2
    end
    object qryContaBancoCONVENIO_BANCO: TStringField
      FieldName = 'CONVENIO_BANCO'
      Size = 6
    end
    object qryContaBancoVINCULADO_BANCO: TStringField
      FieldName = 'VINCULADO_BANCO'
      Size = 1
    end
    object qryContaBancoCENTRAL_BANCO: TStringField
      FieldName = 'CENTRAL_BANCO'
      Size = 3
    end
    object qryContaBancoCODIGO_PORTADOR_BANCO: TFMTBCDField
      FieldName = 'CODIGO_PORTADOR_BANCO'
      Precision = 15
      Size = 0
    end
    object qryContaBancoLIMITE_BANCO: TFMTBCDField
      FieldName = 'LIMITE_BANCO'
      Precision = 15
      Size = 2
    end
    object qryContaBancoTIPO_BANCO: TStringField
      FieldName = 'TIPO_BANCO'
      Size = 1
    end
    object qryContaBancoCANHOTO_BANCO: TStringField
      FieldName = 'CANHOTO_BANCO'
      Size = 1
    end
    object qryContaBancoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspContaBanco: TDataSetProvider
    DataSet = qryContaBanco
    Options = [poAllowCommandText]
    Left = 128
    Top = 20
  end
  object cdsContaBanco: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_BANCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO_BANCO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AGENCIA_BANCO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DIGITO1_BANCO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CONTA_BANCO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DIGITO2_BANCO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CONVENIO_BANCO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VINCULADO_BANCO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CENTRAL_BANCO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CODIGO_PORTADOR_BANCO'
        DataType = ftFMTBcd
        Precision = 15
      end
      item
        Name = 'LIMITE_BANCO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'TIPO_BANCO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CANHOTO_BANCO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COD_EMPRESA'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspContaBanco'
    StoreDefs = True
    Left = 220
    Top = 20
    object cdsContaBancoCODIGO_BANCO: TIntegerField
      FieldName = 'CODIGO_BANCO'
      Required = True
    end
    object cdsContaBancoDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
    end
    object cdsContaBancoAGENCIA_BANCO: TStringField
      FieldName = 'AGENCIA_BANCO'
      Size = 4
    end
    object cdsContaBancoDIGITO1_BANCO: TStringField
      FieldName = 'DIGITO1_BANCO'
      Size = 2
    end
    object cdsContaBancoCONTA_BANCO: TStringField
      FieldName = 'CONTA_BANCO'
      Size = 8
    end
    object cdsContaBancoDIGITO2_BANCO: TStringField
      FieldName = 'DIGITO2_BANCO'
      Size = 2
    end
    object cdsContaBancoCONVENIO_BANCO: TStringField
      FieldName = 'CONVENIO_BANCO'
      Size = 6
    end
    object cdsContaBancoVINCULADO_BANCO: TStringField
      FieldName = 'VINCULADO_BANCO'
      Size = 1
    end
    object cdsContaBancoCENTRAL_BANCO: TStringField
      FieldName = 'CENTRAL_BANCO'
      Size = 3
    end
    object cdsContaBancoCODIGO_PORTADOR_BANCO: TFMTBCDField
      FieldName = 'CODIGO_PORTADOR_BANCO'
      Precision = 15
      Size = 0
    end
    object cdsContaBancoLIMITE_BANCO: TFMTBCDField
      FieldName = 'LIMITE_BANCO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsContaBancoTIPO_BANCO: TStringField
      FieldName = 'TIPO_BANCO'
      Size = 1
    end
    object cdsContaBancoCANHOTO_BANCO: TStringField
      FieldName = 'CANHOTO_BANCO'
      Size = 1
    end
    object cdsContaBancoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryPortador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CODIGO_PORTADOR,DESCRICAO_PORTADOR,TIPO_PORTADOR'
      '  FROM E_PORTADOR ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 76
    object qryPortadorCODIGO_PORTADOR: TIntegerField
      FieldName = 'CODIGO_PORTADOR'
      Required = True
    end
    object qryPortadorDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      FixedChar = True
    end
    object qryPortadorTIPO_PORTADOR: TStringField
      FieldName = 'TIPO_PORTADOR'
      Required = True
      Size = 1
    end
  end
  object dspPortador: TDataSetProvider
    DataSet = qryPortador
    Options = [poAllowCommandText]
    Left = 128
    Top = 75
  end
  object cdsPortador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPortador'
    Left = 220
    Top = 72
    object cdsPortadorCODIGO_PORTADOR: TIntegerField
      FieldName = 'CODIGO_PORTADOR'
      Required = True
    end
    object cdsPortadorDESCRICAO_PORTADOR: TStringField
      FieldName = 'DESCRICAO_PORTADOR'
      FixedChar = True
    end
    object cdsPortadorTIPO_PORTADOR: TStringField
      FieldName = 'TIPO_PORTADOR'
      Required = True
      Size = 1
    end
  end
end
