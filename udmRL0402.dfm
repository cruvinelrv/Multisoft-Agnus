object dmRL0402: TdmRL0402
  OldCreateOrder = False
  Left = 347
  Top = 180
  Height = 352
  Width = 255
  object qryVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO_VENDEDOR, NOME_VENDEDOR'
      'FROM P_VENDEDOR'
      'WHERE (P_VENDEDOR.COD_EMPRESA = :Empresa)'
      'ORDER BY NOME_VENDEDOR')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 16
  end
  object dspVendedor: TDataSetProvider
    DataSet = qryVendedor
    Options = [poAllowCommandText]
    Left = 104
    Top = 16
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 184
    Top = 16
  end
  object qrySecao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Empresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO_SECAO, DESCRICAO_SECAO, COD_EMPRESA'
      'FROM P_SECAO'
      'WHERE (P_SECAO.COD_EMPRESA = :Empresa)'
      'ORDER BY DESCRICAO_SECAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 72
  end
  object dspSecao: TDataSetProvider
    DataSet = qrySecao
    Options = [poAllowCommandText]
    Left = 104
    Top = 72
  end
  object cdsSecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSecao'
    Left = 184
    Top = 72
  end
  object qryVendedor2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 128
  end
  object dspVendedor2: TDataSetProvider
    DataSet = qryVendedor2
    Options = [poAllowCommandText]
    Left = 104
    Top = 128
  end
  object cdsVendedor2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor2'
    Left = 184
    Top = 128
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 24
    Top = 184
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Options = [poAllowCommandText]
    Left = 104
    Top = 184
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendas'
    Left = 184
    Top = 184
  end
  object cdsRelatorio: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'COD_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'DATA'
        DataType = ftDate
      end
      item
        Name = 'HORA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VAL_TABELA'
        DataType = ftFloat
      end
      item
        Name = 'DESCONTO'
        DataType = ftFloat
      end
      item
        Name = 'VAL_RECEBIDO'
        DataType = ftFloat
      end
      item
        Name = 'TIPO_PGTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DATA_CAIXA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TURNO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FUNCIONARIO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUM_DOC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CFOP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 240
    Data = {
      700100009619E0BD01000000180000000E000000000003000000700109434F44
      5F56454E444104000100000000000444415441040006000000000004484F5241
      0100490000000100055749445448020002000A000A56414C5F544142454C4108
      0004000000000008444553434F4E544F08000400000000000C56414C5F524543
      454249444F0800040000000000095449504F5F5047544F010049000000010005
      57494454480200020028000A444154415F434149584101004900000001000557
      49445448020002000A00055455524E4F01004900000001000557494454480200
      020001000B46554E43494F4E4152494F01004900000001000557494454480200
      02001400074E554D5F444F430100490000000100055749445448020002000A00
      0443464F50010049000000010005574944544802000200050007434C49454E54
      4501004900000001000557494454480200020032000856454E4445444F520100
      4900000001000557494454480200020028000000}
    object cdsRelatorioVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 40
    end
    object cdsRelatorioCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsRelatorioDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsRelatorioHORA: TStringField
      FieldName = 'HORA'
      Size = 10
    end
    object cdsRelatorioVAL_TABELA: TFloatField
      FieldName = 'VAL_TABELA'
    end
    object cdsRelatorioDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object cdsRelatorioVAL_RECEBIDO: TFloatField
      FieldName = 'VAL_RECEBIDO'
    end
    object cdsRelatorioTIPO_PGTO: TStringField
      FieldName = 'TIPO_PGTO'
      Size = 40
    end
    object cdsRelatorioDATA_CAIXA: TStringField
      FieldName = 'DATA_CAIXA'
      Size = 10
    end
    object cdsRelatorioTURNO: TStringField
      FieldName = 'TURNO'
      Size = 1
    end
    object cdsRelatorioFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
    end
    object cdsRelatorioNUM_DOC: TStringField
      FieldName = 'NUM_DOC'
      Size = 10
    end
    object cdsRelatorioCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object cdsRelatorioCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 50
    end
  end
end
