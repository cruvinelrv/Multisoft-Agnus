object dmFn09: TdmFn09
  OldCreateOrder = False
  Left = 218
  Top = 161
  Height = 515
  Width = 584
  object qryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select e.codigo_emp, e.bloqueio_emp, e.bloq_cli_emp, e.encerram_' +
        'emp'
      'from EMPRESA e'
      'where e.codigo_emp =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 38
    Top = 10
    object qryEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object qryEmpresaBLOQUEIO_EMP: TIntegerField
      FieldName = 'BLOQUEIO_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryEmpresaBLOQ_CLI_EMP: TStringField
      FieldName = 'BLOQ_CLI_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryEmpresaENCERRAM_EMP: TStringField
      FieldName = 'ENCERRAM_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 136
    Top = 10
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspEmpresa'
    Left = 244
    Top = 12
    object cdsEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object cdsEmpresaBLOQUEIO_EMP: TIntegerField
      FieldName = 'BLOQUEIO_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaBLOQ_CLI_EMP: TStringField
      FieldName = 'BLOQ_CLI_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEmpresaENCERRAM_EMP: TStringField
      FieldName = 'ENCERRAM_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_VENDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select v.codigo_venda, v.data_venda, v.exclusao_venda, v.cfop_ve' +
        'nda,'
      
        '       v.serie_venda, v.notafiscal_venda, v.nrfatura_venda, v.cp' +
        'agamento_venda,'
      
        '       v.fatura_venda, v.emissao_venda, v.vencimen01_venda, v.va' +
        'lor01_venda,'
      
        '       v.vencimen02_venda, v.valor02_venda, v.vencimen03_venda, ' +
        'v.valor03_venda,'
      
        '       v.vencimen04_venda, v.valor04_venda, v.vencimen05_venda, ' +
        'v.valor05_venda,'
      
        '       v.vencimen06_venda, v.valor06_venda, v.vencimen07_venda, ' +
        'v.valor07_venda,'
      
        '       v.vencimen08_venda, v.valor08_venda, v.vencimen09_venda, ' +
        'v.valor09_venda,'
      
        '       v.vencimen10_venda, v.valor10_venda, v.vencimen11_venda, ' +
        'v.valor11_venda,'
      
        '       v.vencimen12_venda, v.valor12_venda, v.vencimen13_venda, ' +
        'v.valor13_venda,'
      
        '       v.vencimen14_venda, v.valor14_venda, v.vencimen15_venda, ' +
        'v.valor15_venda,'
      '       v.cliente_venda, v.tipo_doc_venda, v.vendedor_venda'
      'from P_VENDAS v'
      'where v.data_venda =:DATA_VENDA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 38
    Top = 66
    object qryVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qryVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object qryVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Left = 136
    Top = 66
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_VENDA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVendas'
    Left = 244
    Top = 68
    object cdsVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object cdsVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_VENDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.codigo_cliente_receber, r.emissao_' +
        'receber,'
      
        '       r.vencimento_receber, r.previsao_receber, r.tipo_dup_rece' +
        'ber,'
      
        '       r.valor_receber, r.codigo_vendedor_receber, r.codigo_port' +
        'ador_receber,'
      '       r.tipo_documento_receber'
      'from P_RECEBER r'
      'where r.duplicata_receber =:DUPLICATA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 38
    Top = 119
    object qryReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object qryReceberCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryReceberEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberTIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceberVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberCODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = qryReceber
    Left = 136
    Top = 119
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA_VENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspReceber'
    Left = 240
    Top = 121
    object cdsReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object cdsReceberCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsReceberEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberTIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsReceberVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberCODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'TIPO_PAGTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.cod_empresa, c.codigo_cpagamento, c.codigo_tpdocumento_' +
        'cpagamento,'
      
        '       c.codigo_portador_cpagamento, c.caixa_cpagamento, c.gera_' +
        'receber_cpagamento'
      'from P_CPAGAMENTO c'
      'where c.codigo_cpagamento =:TIPO_PAGTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 37
    Top = 172
    object qryPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryPagamentoCODIGO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_CPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_TPDOCUMENTO_CPAGAMENTO'
      Required = True
    end
    object qryPagamentoCODIGO_PORTADOR_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_PORTADOR_CPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagamentoCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagamentoGERA_RECEBER_CPAGAMENTO: TStringField
      FieldName = 'GERA_RECEBER_CPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspPagamento: TDataSetProvider
    DataSet = qryPagamento
    Left = 141
    Top = 172
  end
  object cdsPagamento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'TIPO_PAGTO'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspPagamento'
    Left = 237
    Top = 172
    object cdsPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsPagamentoCODIGO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_CPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_TPDOCUMENTO_CPAGAMENTO'
      Required = True
    end
    object cdsPagamentoCODIGO_PORTADOR_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_PORTADOR_CPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagamentoCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagamentoGERA_RECEBER_CPAGAMENTO: TStringField
      FieldName = 'GERA_RECEBER_CPAGAMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object qryItemVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select v.codigo_ivenda, v.produto_ivenda, v.valorbruto_ivendas, ' +
        'v.quantidade_ivendas,'
      
        '       v.icm_ivendas, v.redutor_ivendas, v.tributacao_ivendas, v' +
        '.serie_ivendas, v.desconto_ivendas'
      'from P_VENDAS_ITENS v'
      'where v.codigo_ivenda =:CODIGO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 37
    Top = 223
    object qryItemVendaCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object qryItemVendaPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryItemVendaVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qryItemVendaQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 3
    end
    object qryItemVendaICM_IVENDAS: TFMTBCDField
      FieldName = 'ICM_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryItemVendaREDUTOR_IVENDAS: TFMTBCDField
      FieldName = 'REDUTOR_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qryItemVendaTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryItemVendaSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qryItemVendaDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object dspItemVenda: TDataSetProvider
    DataSet = qryItemVenda
    Left = 141
    Top = 223
  end
  object cdsItemVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemVenda'
    Left = 234
    Top = 224
    object cdsItemVendaCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object cdsItemVendaPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsItemVendaVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsItemVendaQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 3
    end
    object cdsItemVendaICM_IVENDAS: TFMTBCDField
      FieldName = 'ICM_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsItemVendaREDUTOR_IVENDAS: TFMTBCDField
      FieldName = 'REDUTOR_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsItemVendaTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsItemVendaSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object cdsItemVendaDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object qryProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select p.codigo_produto, p.estoque_produto, p.grade_produto, p.r' +
        'eserva_produto,'
      '       p.fim_promocao_produto, p.promocao_produto'
      'from P_PRODUTOS p')
    SQLConnection = DmPrincipal.DbConexao
    Left = 38
    Top = 274
    object qryProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qryProdutosESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object qryProdutosRESERVA_PRODUTO: TFMTBCDField
      FieldName = 'RESERVA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object qryProdutosFIM_PROMOCAO_PRODUTO: TDateField
      FieldName = 'FIM_PROMOCAO_PRODUTO'
    end
    object qryProdutosPROMOCAO_PRODUTO: TFMTBCDField
      FieldName = 'PROMOCAO_PRODUTO'
      Precision = 15
      Size = 4
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = qryProdutos
    Left = 142
    Top = 274
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 236
    Top = 274
    object cdsProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object cdsProdutosESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosGRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosRESERVA_PRODUTO: TFMTBCDField
      FieldName = 'RESERVA_PRODUTO'
      Precision = 15
      Size = 3
    end
    object cdsProdutosFIM_PROMOCAO_PRODUTO: TDateField
      FieldName = 'FIM_PROMOCAO_PRODUTO'
    end
    object cdsProdutosPROMOCAO_PRODUTO: TFMTBCDField
      FieldName = 'PROMOCAO_PRODUTO'
      Precision = 15
      Size = 4
    end
  end
  object qryGrade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.produto_grade, p.codigo_grade, p.cod_empresa, p.descric' +
        'ao_grade,'
      '          p.estoque_grade'
      'from P_PRODUTOS_GRADE p'
      'where p.produto_grade =:PRODUTO'
      'and  p.cod_empresa =:EMPRESA'
      ' ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 39
    Top = 327
    object qryGradePRODUTO_GRADE: TIntegerField
      FieldName = 'PRODUTO_GRADE'
      Required = True
    end
    object qryGradeCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object qryGradeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryGradeDESCRICAO_GRADE: TStringField
      FieldName = 'DESCRICAO_GRADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryGradeESTOQUE_GRADE: TFMTBCDField
      FieldName = 'ESTOQUE_GRADE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
  end
  object dspGrade: TDataSetProvider
    DataSet = qryGrade
    Left = 143
    Top = 327
  end
  object cdsGrade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspGrade'
    Left = 239
    Top = 327
    object cdsGradePRODUTO_GRADE: TIntegerField
      FieldName = 'PRODUTO_GRADE'
      Required = True
    end
    object cdsGradeCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 3
    end
    object cdsGradeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsGradeDESCRICAO_GRADE: TStringField
      FieldName = 'DESCRICAO_GRADE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsGradeESTOQUE_GRADE: TFMTBCDField
      FieldName = 'ESTOQUE_GRADE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
  end
  object qryFuturo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select f.cod_empresa, f.produto_futuro, f.tabela_futuro, f.promo' +
        'ssao_futuro,'
      '       f.atacado_futuro, f.data_futuro'
      'from P_FUTURO f')
    SQLConnection = DmPrincipal.DbConexao
    Left = 38
    Top = 378
    object qryFuturoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryFuturoPRODUTO_FUTURO: TIntegerField
      FieldName = 'PRODUTO_FUTURO'
      Required = True
    end
    object qryFuturoTABELA_FUTURO: TFMTBCDField
      FieldName = 'TABELA_FUTURO'
      Precision = 15
      Size = 4
    end
    object qryFuturoPROMOSSAO_FUTURO: TFMTBCDField
      FieldName = 'PROMOSSAO_FUTURO'
      Precision = 15
      Size = 4
    end
    object qryFuturoATACADO_FUTURO: TFMTBCDField
      FieldName = 'ATACADO_FUTURO'
      Precision = 15
      Size = 4
    end
    object qryFuturoDATA_FUTURO: TDateField
      FieldName = 'DATA_FUTURO'
      Required = True
    end
  end
  object dspFuturo: TDataSetProvider
    DataSet = qryFuturo
    Left = 142
    Top = 378
  end
  object cdsFuturo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuturo'
    Left = 238
    Top = 378
    object cdsFuturoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsFuturoPRODUTO_FUTURO: TIntegerField
      FieldName = 'PRODUTO_FUTURO'
      Required = True
    end
    object cdsFuturoTABELA_FUTURO: TFMTBCDField
      FieldName = 'TABELA_FUTURO'
      Precision = 15
      Size = 4
    end
    object cdsFuturoPROMOSSAO_FUTURO: TFMTBCDField
      FieldName = 'PROMOSSAO_FUTURO'
      Precision = 15
      Size = 4
    end
    object cdsFuturoATACADO_FUTURO: TFMTBCDField
      FieldName = 'ATACADO_FUTURO'
      Precision = 15
      Size = 4
    end
    object cdsFuturoDATA_FUTURO: TDateField
      FieldName = 'DATA_FUTURO'
      Required = True
    end
  end
  object qryProdutos2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.codigo_produto, p.estoque_produto, p.grade_produto, p.r' +
        'eserva_produto,'
      
        '       p.fim_promocao_produto, p.promocao_produto, p.precounit_p' +
        'roduto, p.vlratacado_produto,'
      '       p.validade_produto, p.preco_compra_produto'
      'from P_PRODUTOS p'
      'where  p.codigo_produto =:PRODUTO ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 330
    Top = 11
    object qryProdutos2CODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qryProdutos2ESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object qryProdutos2GRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryProdutos2RESERVA_PRODUTO: TFMTBCDField
      FieldName = 'RESERVA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object qryProdutos2FIM_PROMOCAO_PRODUTO: TDateField
      FieldName = 'FIM_PROMOCAO_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdutos2PROMOCAO_PRODUTO: TFMTBCDField
      FieldName = 'PROMOCAO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qryProdutos2PRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qryProdutos2VLRATACADO_PRODUTO: TFMTBCDField
      FieldName = 'VLRATACADO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qryProdutos2VALIDADE_PRODUTO: TDateField
      FieldName = 'VALIDADE_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdutos2PRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
  end
  object dspProdutos2: TDataSetProvider
    DataSet = qryProdutos2
    Left = 418
    Top = 11
  end
  object cdsProdutos2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspProdutos2'
    Left = 504
    Top = 11
    object cdsProdutos2CODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object cdsProdutos2ESTOQUE_PRODUTO: TFMTBCDField
      FieldName = 'ESTOQUE_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsProdutos2GRADE_PRODUTO: TStringField
      FieldName = 'GRADE_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsProdutos2RESERVA_PRODUTO: TFMTBCDField
      FieldName = 'RESERVA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 3
    end
    object cdsProdutos2FIM_PROMOCAO_PRODUTO: TDateField
      FieldName = 'FIM_PROMOCAO_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutos2PROMOCAO_PRODUTO: TFMTBCDField
      FieldName = 'PROMOCAO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsProdutos2PRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsProdutos2VLRATACADO_PRODUTO: TFMTBCDField
      FieldName = 'VLRATACADO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsProdutos2VALIDADE_PRODUTO: TDateField
      FieldName = 'VALIDADE_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutos2PRECO_COMPRA_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_COMPRA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
  end
  object qryTabela02: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select t.data_tabela02, t.produto_tabela02, t.preco1_tabela02, t' +
        '.preco2_tabela02,'
      
        '       t.anterior_tabela02, t.atual_tabela02, t.validade1_tabela' +
        '02, t.validade2_tabela02,'
      
        '       t.usuario_tabela02, t.preco3_tabela02, t.preco4_tabela02,' +
        ' t.preco5_tabela02,'
      '       t.preco6_tabela02, t.preco7_tabela02, t.cod_empresa'
      'from P_TABELA02 t')
    SQLConnection = DmPrincipal.DbConexao
    Left = 329
    Top = 67
    object qryTabela02DATA_TABELA02: TDateField
      FieldName = 'DATA_TABELA02'
      Required = True
    end
    object qryTabela02PRODUTO_TABELA02: TIntegerField
      FieldName = 'PRODUTO_TABELA02'
      Required = True
    end
    object qryTabela02PRECO1_TABELA02: TFMTBCDField
      FieldName = 'PRECO1_TABELA02'
      Precision = 15
      Size = 4
    end
    object qryTabela02PRECO2_TABELA02: TFMTBCDField
      FieldName = 'PRECO2_TABELA02'
      Precision = 15
      Size = 4
    end
    object qryTabela02ANTERIOR_TABELA02: TFMTBCDField
      FieldName = 'ANTERIOR_TABELA02'
      Precision = 15
      Size = 3
    end
    object qryTabela02ATUAL_TABELA02: TFMTBCDField
      FieldName = 'ATUAL_TABELA02'
      Precision = 15
      Size = 3
    end
    object qryTabela02VALIDADE1_TABELA02: TDateField
      FieldName = 'VALIDADE1_TABELA02'
    end
    object qryTabela02VALIDADE2_TABELA02: TDateField
      FieldName = 'VALIDADE2_TABELA02'
    end
    object qryTabela02USUARIO_TABELA02: TStringField
      FieldName = 'USUARIO_TABELA02'
      Size = 10
    end
    object qryTabela02PRECO3_TABELA02: TFMTBCDField
      FieldName = 'PRECO3_TABELA02'
      Precision = 15
      Size = 4
    end
    object qryTabela02PRECO4_TABELA02: TFMTBCDField
      FieldName = 'PRECO4_TABELA02'
      Precision = 15
      Size = 4
    end
    object qryTabela02PRECO5_TABELA02: TFMTBCDField
      FieldName = 'PRECO5_TABELA02'
      Precision = 15
      Size = 4
    end
    object qryTabela02PRECO6_TABELA02: TFMTBCDField
      FieldName = 'PRECO6_TABELA02'
      Precision = 15
      Size = 4
    end
    object qryTabela02PRECO7_TABELA02: TFMTBCDField
      FieldName = 'PRECO7_TABELA02'
      Precision = 15
      Size = 4
    end
    object qryTabela02COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dspTabela02: TDataSetProvider
    DataSet = qryTabela02
    Left = 418
    Top = 68
  end
  object cdsTabela02: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabela02'
    Left = 504
    Top = 68
    object cdsTabela02DATA_TABELA02: TDateField
      FieldName = 'DATA_TABELA02'
      Required = True
    end
    object cdsTabela02PRODUTO_TABELA02: TIntegerField
      FieldName = 'PRODUTO_TABELA02'
      Required = True
    end
    object cdsTabela02PRECO1_TABELA02: TFMTBCDField
      FieldName = 'PRECO1_TABELA02'
      Precision = 15
      Size = 4
    end
    object cdsTabela02PRECO2_TABELA02: TFMTBCDField
      FieldName = 'PRECO2_TABELA02'
      Precision = 15
      Size = 4
    end
    object cdsTabela02ANTERIOR_TABELA02: TFMTBCDField
      FieldName = 'ANTERIOR_TABELA02'
      Precision = 15
      Size = 3
    end
    object cdsTabela02ATUAL_TABELA02: TFMTBCDField
      FieldName = 'ATUAL_TABELA02'
      Precision = 15
      Size = 3
    end
    object cdsTabela02VALIDADE1_TABELA02: TDateField
      FieldName = 'VALIDADE1_TABELA02'
    end
    object cdsTabela02VALIDADE2_TABELA02: TDateField
      FieldName = 'VALIDADE2_TABELA02'
    end
    object cdsTabela02USUARIO_TABELA02: TStringField
      FieldName = 'USUARIO_TABELA02'
      Size = 10
    end
    object cdsTabela02PRECO3_TABELA02: TFMTBCDField
      FieldName = 'PRECO3_TABELA02'
      Precision = 15
      Size = 4
    end
    object cdsTabela02PRECO4_TABELA02: TFMTBCDField
      FieldName = 'PRECO4_TABELA02'
      Precision = 15
      Size = 4
    end
    object cdsTabela02PRECO5_TABELA02: TFMTBCDField
      FieldName = 'PRECO5_TABELA02'
      Precision = 15
      Size = 4
    end
    object cdsTabela02PRECO6_TABELA02: TFMTBCDField
      FieldName = 'PRECO6_TABELA02'
      Precision = 15
      Size = 4
    end
    object cdsTabela02PRECO7_TABELA02: TFMTBCDField
      FieldName = 'PRECO7_TABELA02'
      Precision = 15
      Size = 4
    end
    object cdsTabela02COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select c.codigo_cliente, c.nome_cliente, c.databloqueio_cliente'
      'from E_CLIENTE c')
    SQLConnection = DmPrincipal.DbConexao
    Left = 329
    Top = 118
    object qryClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryClienteDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Left = 421
    Top = 118
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 504
    Top = 117
    object cdsClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsClienteDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
  end
  object qryReceber2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.codigo_cliente_receber, r.emissao_' +
        'receber,'
      
        '       r.vencimento_receber, r.previsao_receber, r.tipo_dup_rece' +
        'ber,'
      
        '       r.valor_receber, r.codigo_vendedor_receber, r.codigo_port' +
        'ador_receber,'
      '       r.tipo_documento_receber, r.tipo_baixa_receber'
      'from P_RECEBER r'
      'where  r.codigo_cliente_receber =:CODIGO_CLIENTE ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 329
    Top = 169
    object qryReceber2DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object qryReceber2CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object qryReceber2EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2TIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceber2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceber2CODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2TIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceber2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspReceber2: TDataSetProvider
    DataSet = qryReceber2
    Left = 421
    Top = 170
  end
  object cdsReceber2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspReceber2'
    Left = 505
    Top = 170
    object cdsReceber2DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object cdsReceber2CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsReceber2EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsReceber2VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsReceber2PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsReceber2TIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      Size = 1
    end
    object cdsReceber2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber2CODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
    end
    object cdsReceber2CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object cdsReceber2TIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object cdsReceber2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
  end
  object qryResban: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.chave_resban, r.credito_resban, r.cod_empresa, r.debito' +
        '_resban, '
      '       r.anterior_resban'
      'from P_RESBAN r'
      'where r.chave_resban =:CHAVE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 329
    Top = 223
    object qryResbanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object qryResbanCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryResbanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object qryResbanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryResbanANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object dspResban: TDataSetProvider
    DataSet = qryResban
    Left = 424
    Top = 224
  end
  object cdsResban: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptInput
      end>
    ProviderName = 'dspResban'
    Left = 507
    Top = 224
    object cdsResbanCHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object cdsResbanCREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsResbanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsResbanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsResbanANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object cdsTemp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 508
    Top = 277
    Data = {
      420000009619E0BD010000001800000002000000000003000000420005434841
      564501004900000001000557494454480200020014000553414C444F08000400
      000000000000}
    object cdsTempCHAVE: TStringField
      FieldName = 'CHAVE'
    end
    object cdsTempSALDO: TFloatField
      FieldName = 'SALDO'
    end
  end
  object qryResban2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select r.chave_resban, r.credito_resban, r.cod_empresa, r.debito' +
        '_resban, '
      '       r.anterior_resban'
      'from P_RESBAN r'
      '')
    SQLConnection = DmPrincipal.DbConexao
    Left = 329
    Top = 329
    object qryResban2CHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object qryResban2CREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object qryResban2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryResban2DEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object qryResban2ANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      Precision = 15
      Size = 2
    end
  end
  object dspResban2: TDataSetProvider
    DataSet = qryResban2
    Left = 424
    Top = 328
  end
  object cdsResban2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspResban2'
    Left = 507
    Top = 328
    object cdsResban2CHAVE_RESBAN: TStringField
      FieldName = 'CHAVE_RESBAN'
      Size = 14
    end
    object cdsResban2CREDITO_RESBAN: TFMTBCDField
      FieldName = 'CREDITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsResban2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsResban2DEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      Precision = 15
      Size = 2
    end
    object cdsResban2ANTERIOR_RESBAN: TFMTBCDField
      FieldName = 'ANTERIOR_RESBAN'
      Precision = 15
      Size = 2
    end
  end
  object qryEmpresa2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select e.codigo_emp, e.bloqueio_emp, e.bloq_cli_emp, e.encerram_' +
        'emp,'
      '       e.datasystem_emp'
      'from EMPRESA e'
      '')
    SQLConnection = DmPrincipal.DbConexao
    Left = 330
    Top = 378
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'BLOQUEIO_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object StringField1: TStringField
      FieldName = 'BLOQ_CLI_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object StringField2: TStringField
      FieldName = 'ENCERRAM_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object qryEmpresa2DATASYSTEM_EMP: TSQLTimeStampField
      FieldName = 'DATASYSTEM_EMP'
    end
  end
  object dspEmpresa2: TDataSetProvider
    DataSet = qryEmpresa2
    Left = 424
    Top = 378
  end
  object cdsEmpresa2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa2'
    Left = 508
    Top = 377
    object cdsEmpresa2CODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object cdsEmpresa2BLOQUEIO_EMP: TIntegerField
      FieldName = 'BLOQUEIO_EMP'
    end
    object cdsEmpresa2BLOQ_CLI_EMP: TStringField
      FieldName = 'BLOQ_CLI_EMP'
      Size = 1
    end
    object cdsEmpresa2ENCERRAM_EMP: TStringField
      FieldName = 'ENCERRAM_EMP'
      Size = 7
    end
    object cdsEmpresa2DATASYSTEM_EMP: TSQLTimeStampField
      FieldName = 'DATASYSTEM_EMP'
    end
  end
  object qryBalcao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select b.chave_balcao, b.exclusao_balcao, b.codigo_balcao'
      'from P_BALCAO b')
    SQLConnection = DmPrincipal.DbConexao
    Left = 37
    Top = 430
    object qryBalcaoCHAVE_BALCAO: TStringField
      FieldName = 'CHAVE_BALCAO'
      Size = 21
    end
    object qryBalcaoEXCLUSAO_BALCAO: TDateField
      FieldName = 'EXCLUSAO_BALCAO'
    end
    object qryBalcaoCODIGO_BALCAO: TIntegerField
      FieldName = 'CODIGO_BALCAO'
    end
  end
  object dspBalcao: TDataSetProvider
    DataSet = qryBalcao
    Left = 141
    Top = 431
  end
  object cdsBalcao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBalcao'
    Left = 237
    Top = 431
    object cdsBalcaoCHAVE_BALCAO: TStringField
      FieldName = 'CHAVE_BALCAO'
      Size = 21
    end
    object cdsBalcaoEXCLUSAO_BALCAO: TDateField
      FieldName = 'EXCLUSAO_BALCAO'
    end
    object cdsBalcaoCODIGO_BALCAO: TIntegerField
      FieldName = 'CODIGO_BALCAO'
    end
  end
  object qryIten_Balcao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_IBALCAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select b.codigo_ibalcao'
      'from P_BALCAO_ITENS b'
      'where b.codigo_ibalcao =:CODIGO_IBALCAO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 331
    Top = 430
    object qryIten_BalcaoCODIGO_IBALCAO: TIntegerField
      FieldName = 'CODIGO_IBALCAO'
      Required = True
    end
  end
  object dspIten_Balcao: TDataSetProvider
    DataSet = qryIten_Balcao
    Left = 424
    Top = 431
  end
  object cdsIten_Balcao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_IBALCAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspIten_Balcao'
    Left = 513
    Top = 431
    object cdsIten_BalcaoCODIGO_IBALCAO: TIntegerField
      FieldName = 'CODIGO_IBALCAO'
      Required = True
    end
  end
end
