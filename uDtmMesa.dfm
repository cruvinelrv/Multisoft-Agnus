object DtmMesa: TDtmMesa
  OldCreateOrder = False
  Left = 406
  Top = 166
  Height = 432
  Width = 314
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Mesa'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=c:\loja\progs\Mesa.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'fbclient.dll'
    Left = 40
    Top = 8
  end
  object sqlMesa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM MESA')
    SQLConnection = SQLConnection1
    Left = 40
    Top = 80
    object sqlMesaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sqlMesaNUM_MESA: TIntegerField
      FieldName = 'NUM_MESA'
    end
    object sqlMesaGARCOM: TIntegerField
      FieldName = 'GARCOM'
    end
    object sqlMesaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object sqlMesaTIPO_PAGAM: TIntegerField
      FieldName = 'TIPO_PAGAM'
    end
    object sqlMesaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object sqlMesaACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object sqlMesaJUNCAO: TIntegerField
      FieldName = 'JUNCAO'
    end
    object sqlMesaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object dspMesa: TDataSetProvider
    DataSet = sqlMesa
    Options = [poAllowCommandText]
    Left = 136
    Top = 80
  end
  object cdsMesa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMesa'
    Left = 240
    Top = 80
    object cdsMesaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsMesaNUM_MESA: TIntegerField
      FieldName = 'NUM_MESA'
    end
    object cdsMesaGARCOM: TIntegerField
      FieldName = 'GARCOM'
    end
    object cdsMesaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object cdsMesaTIPO_PAGAM: TIntegerField
      FieldName = 'TIPO_PAGAM'
    end
    object cdsMesaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsMesaACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Precision = 15
      Size = 2
    end
    object cdsMesaJUNCAO: TIntegerField
      FieldName = 'JUNCAO'
    end
    object cdsMesaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object sqlI_Mesa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM I_MESA')
    SQLConnection = SQLConnection1
    Left = 40
    Top = 136
    object sqlI_MesaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sqlI_MesaPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object sqlI_MesaVALOR_UNIT: TFMTBCDField
      FieldName = 'VALOR_UNIT'
      Precision = 15
      Size = 4
    end
    object sqlI_MesaQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 4
    end
    object sqlI_MesaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object sqlI_MesaNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 70
    end
    object sqlI_MesaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object dspI_Mesa: TDataSetProvider
    DataSet = sqlI_Mesa
    Options = [poAllowCommandText]
    Left = 136
    Top = 136
  end
  object cdsI_Mesa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspI_Mesa'
    Left = 240
    Top = 136
    object cdsI_MesaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsI_MesaPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object cdsI_MesaVALOR_UNIT: TFMTBCDField
      FieldName = 'VALOR_UNIT'
      Precision = 15
      Size = 4
    end
    object cdsI_MesaQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 4
    end
    object cdsI_MesaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object cdsI_MesaNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 70
    end
    object cdsI_MesaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object sqlCli_Mesa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CLI_MESA')
    SQLConnection = SQLConnection1
    Left = 41
    Top = 192
    object sqlCli_MesaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sqlCli_MesaNUM_MESA: TIntegerField
      FieldName = 'NUM_MESA'
    end
    object sqlCli_MesaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object sqlCli_MesaNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 70
    end
  end
  object dspCli_Mesa: TDataSetProvider
    DataSet = sqlCli_Mesa
    Options = [poAllowCommandText]
    Left = 137
    Top = 192
  end
  object cdsCli_Mesa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCli_Mesa'
    Left = 241
    Top = 192
    object cdsCli_MesaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsCli_MesaNUM_MESA: TIntegerField
      FieldName = 'NUM_MESA'
    end
    object cdsCli_MesaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object cdsCli_MesaNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Size = 70
    end
  end
  object sqlReserva: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM RESERVA')
    SQLConnection = SQLConnection1
    Left = 40
    Top = 252
    object sqlReservaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sqlReservaNUM_MESA: TIntegerField
      FieldName = 'NUM_MESA'
    end
    object sqlReservaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object sqlReservaATENDENTE: TIntegerField
      FieldName = 'ATENDENTE'
    end
    object sqlReservaDATA_RES: TDateField
      FieldName = 'DATA_RES'
    end
    object sqlReservaHORA_RES: TTimeField
      FieldName = 'HORA_RES'
    end
    object sqlReservaDATA_USO: TDateField
      FieldName = 'DATA_USO'
    end
    object sqlReservaHORA_USO: TTimeField
      FieldName = 'HORA_USO'
    end
  end
  object dspReserva: TDataSetProvider
    DataSet = sqlReserva
    Options = [poAllowCommandText]
    Left = 137
    Top = 252
  end
  object cdsReserva: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReserva'
    Left = 242
    Top = 252
    object cdsReservaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsReservaNUM_MESA: TIntegerField
      FieldName = 'NUM_MESA'
    end
    object cdsReservaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object cdsReservaATENDENTE: TIntegerField
      FieldName = 'ATENDENTE'
    end
    object cdsReservaDATA_RES: TDateField
      FieldName = 'DATA_RES'
    end
    object cdsReservaHORA_RES: TTimeField
      FieldName = 'HORA_RES'
    end
    object cdsReservaDATA_USO: TDateField
      FieldName = 'DATA_USO'
    end
    object cdsReservaHORA_USO: TTimeField
      FieldName = 'HORA_USO'
    end
  end
  object sqlPrincipal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 40
    Top = 328
  end
  object dspPrincipal: TDataSetProvider
    DataSet = sqlPrincipal
    Options = [poAllowCommandText]
    Left = 136
    Top = 328
  end
  object cdsPrincipal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrincipal'
    Left = 240
    Top = 328
  end
end
