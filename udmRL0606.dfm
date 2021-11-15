object dmRL0606: TdmRL0606
  OldCreateOrder = False
  Left = 345
  Top = 216
  Height = 195
  Width = 444
  object qryCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.codigo_caixa'
      'from p_caixa c'
      'where c.codigo_caixa =:CAIXA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 16
    object qryCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = qryCaixa
    Left = 120
    Top = 16
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspCaixa'
    Left = 200
    Top = 16
    object cdsCaixaCODIGO_CAIXA: TIntegerField
      FieldName = 'CODIGO_CAIXA'
      Required = True
    end
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'select c.cod_empresa, c.data_caixamov, c.valor_caixamov, c.hora_' +
        'caixamov,'
      
        'c.observacao_caixamov, c.chave_caixamov, c.caixa_caixamov, c.usu' +
        'ario_caixamov,'
      
        'c.tipo_caixamov, c.origem_caixamov, c.tipo_pag_caixamov, c.titul' +
        'o_caixamov'
      'from p_caixa_mov c'
      'where c.cod_empresa =:EMPRESA'
      'and c.data_caixamov >=:DATA1'
      'and c.data_caixamov <=:DATA2'
      'and c.tipo_caixamov =:TIPO'
      'and c.caixa_caixamov =:CAIXA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 80
    object qryConsultaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryConsultaDATA_CAIXAMOV: TDateField
      FieldName = 'DATA_CAIXAMOV'
      Required = True
    end
    object qryConsultaVALOR_CAIXAMOV: TFMTBCDField
      FieldName = 'VALOR_CAIXAMOV'
      Precision = 15
      Size = 2
    end
    object qryConsultaHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object qryConsultaOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 40
    end
    object qryConsultaCHAVE_CAIXAMOV: TStringField
      FieldName = 'CHAVE_CAIXAMOV'
      Size = 12
    end
    object qryConsultaCAIXA_CAIXAMOV: TIntegerField
      FieldName = 'CAIXA_CAIXAMOV'
    end
    object qryConsultaUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object qryConsultaTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
    object qryConsultaORIGEM_CAIXAMOV: TStringField
      FieldName = 'ORIGEM_CAIXAMOV'
      Size = 1
    end
    object qryConsultaTIPO_PAG_CAIXAMOV: TStringField
      FieldName = 'TIPO_PAG_CAIXAMOV'
      Size = 1
    end
    object qryConsultaTITULO_CAIXAMOV: TStringField
      FieldName = 'TITULO_CAIXAMOV'
      Size = 11
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = qryConsulta
    Left = 112
    Top = 80
  end
  object cdsConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspConsulta'
    Left = 192
    Top = 80
    object cdsConsultaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsConsultaDATA_CAIXAMOV: TDateField
      FieldName = 'DATA_CAIXAMOV'
      Required = True
    end
    object cdsConsultaVALOR_CAIXAMOV: TFMTBCDField
      FieldName = 'VALOR_CAIXAMOV'
      Precision = 15
      Size = 2
    end
    object cdsConsultaHORA_CAIXAMOV: TTimeField
      FieldName = 'HORA_CAIXAMOV'
    end
    object cdsConsultaOBSERVACAO_CAIXAMOV: TStringField
      FieldName = 'OBSERVACAO_CAIXAMOV'
      Size = 40
    end
    object cdsConsultaCHAVE_CAIXAMOV: TStringField
      FieldName = 'CHAVE_CAIXAMOV'
      Size = 12
    end
    object cdsConsultaCAIXA_CAIXAMOV: TIntegerField
      FieldName = 'CAIXA_CAIXAMOV'
    end
    object cdsConsultaUSUARIO_CAIXAMOV: TStringField
      FieldName = 'USUARIO_CAIXAMOV'
      Size = 10
    end
    object cdsConsultaTIPO_CAIXAMOV: TStringField
      FieldName = 'TIPO_CAIXAMOV'
      Size = 1
    end
    object cdsConsultaORIGEM_CAIXAMOV: TStringField
      FieldName = 'ORIGEM_CAIXAMOV'
      Size = 1
    end
    object cdsConsultaTIPO_PAG_CAIXAMOV: TStringField
      FieldName = 'TIPO_PAG_CAIXAMOV'
      Size = 1
    end
    object cdsConsultaTITULO_CAIXAMOV: TStringField
      FieldName = 'TITULO_CAIXAMOV'
      Size = 11
    end
  end
  object dtsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 272
    Top = 80
  end
  object ppDBConsulta: TppDBPipeline
    DataSource = dtsConsulta
    UserName = 'DBConsulta'
    Left = 352
    Top = 80
    object ppDBConsultappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBConsultappField2: TppField
      FieldAlias = 'DATA_CAIXAMOV'
      FieldName = 'DATA_CAIXAMOV'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppDBConsultappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_CAIXAMOV'
      FieldName = 'VALOR_CAIXAMOV'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 2
    end
    object ppDBConsultappField4: TppField
      FieldAlias = 'HORA_CAIXAMOV'
      FieldName = 'HORA_CAIXAMOV'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 3
    end
    object ppDBConsultappField5: TppField
      FieldAlias = 'OBSERVACAO_CAIXAMOV'
      FieldName = 'OBSERVACAO_CAIXAMOV'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object ppDBConsultappField6: TppField
      FieldAlias = 'CHAVE_CAIXAMOV'
      FieldName = 'CHAVE_CAIXAMOV'
      FieldLength = 12
      DisplayWidth = 12
      Position = 5
    end
    object ppDBConsultappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAIXA_CAIXAMOV'
      FieldName = 'CAIXA_CAIXAMOV'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDBConsultappField8: TppField
      FieldAlias = 'USUARIO_CAIXAMOV'
      FieldName = 'USUARIO_CAIXAMOV'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppDBConsultappField9: TppField
      FieldAlias = 'TIPO_CAIXAMOV'
      FieldName = 'TIPO_CAIXAMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object ppDBConsultappField10: TppField
      FieldAlias = 'ORIGEM_CAIXAMOV'
      FieldName = 'ORIGEM_CAIXAMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object ppDBConsultappField11: TppField
      FieldAlias = 'TIPO_PAG_CAIXAMOV'
      FieldName = 'TIPO_PAG_CAIXAMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 10
    end
    object ppDBConsultappField12: TppField
      FieldAlias = 'TITULO_CAIXAMOV'
      FieldName = 'TITULO_CAIXAMOV'
      FieldLength = 11
      DisplayWidth = 11
      Position = 11
    end
  end
end
