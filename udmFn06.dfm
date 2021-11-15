object dmFn06: TdmFn06
  OldCreateOrder = False
  Left = 280
  Top = 136
  Height = 501
  Width = 283
  object qryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select e.codigo_emp, e.apaga_lanc_emp'
      'from EMPRESA e'
      'where e.codigo_emp =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 16
    object qryEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object qryEmpresaAPAGA_LANC_EMP: TStringField
      FieldName = 'APAGA_LANC_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 120
    Top = 16
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
    Left = 200
    Top = 16
    object cdsEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object cdsEmpresaAPAGA_LANC_EMP: TStringField
      FieldName = 'APAGA_LANC_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object qryConlan: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select c.codigo_conlan, c.corrente_conlan, c.data_conlan, c.movi' +
        'mento_conlan,'
      
        '       c.historico_conlan, c.valor_conlan, c.tipo_conlan, c.orig' +
        'em_conlan,'
      
        '       c.cod_empresa, b.descricao_banco, c.documento_conlan, c.e' +
        'storno_conlan,'
      
        '       c.centro_conlan, c.historic2_conlan, c.cli_for_conlan, c1' +
        '.tipo_cliente'
      'from P_CONLAN c'
      
        '     left outer join p_banco b on (c.corrente_conlan = b.codigo_' +
        'banco)'
      
        '     left outer join e_cliente c1 on (c.cli_for_conlan = c1.codi' +
        'go_cliente)')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 80
    object qryConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object qryConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object qryConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object qryConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object qryConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object qryConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryConlanDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object qryConlanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object qryConlanESTORNO_CONLAN: TStringField
      FieldName = 'ESTORNO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object qryConlanCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlanHISTORIC2_CONLAN: TStringField
      FieldName = 'HISTORIC2_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConlanCLI_FOR_CONLAN: TIntegerField
      FieldName = 'CLI_FOR_CONLAN'
    end
    object qryConlanTIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      ProviderFlags = []
    end
    object qryConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
  end
  object dspConlan: TDataSetProvider
    DataSet = qryConlan
    Left = 121
    Top = 80
  end
  object cdsConlan: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConlan'
    Left = 205
    Top = 80
    object cdsConlanCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConlanCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsConlanDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsConlanMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsConlanHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 150
    end
    object cdsConlanVALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      Precision = 15
      Size = 2
    end
    object cdsConlanTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlanORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlanCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsConlanDESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object cdsConlanDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      Size = 11
    end
    object cdsConlanESTORNO_CONLAN: TStringField
      FieldName = 'ESTORNO_CONLAN'
      FixedChar = True
      Size = 1
    end
    object cdsConlanCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlanHISTORIC2_CONLAN: TStringField
      FieldName = 'HISTORIC2_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsConlanCLI_FOR_CONLAN: TIntegerField
      FieldName = 'CLI_FOR_CONLAN'
    end
    object cdsConlanTIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      ProviderFlags = []
    end
  end
  object qryPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.documento_pagar, p.valorpago_pagar, p.movimento_pagar, ' +
        'p.historico_pagar,'
      
        '       p.tipo_baixa_pagar, p.previsao_pagar, p.parcial_pagar, p.' +
        'vencimento_pagar,'
      '       p.cod_empresa_pagar'
      'from P_PAGAR p'
      'where p.documento_pagar =:DOCUMENTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 35
    Top = 191
    object qryPagarDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      Required = True
      Size = 10
    end
    object qryPagarVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPagarMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryPagarTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryPagarPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarPARCIAL_PAGAR: TFMTBCDField
      FieldName = 'PARCIAL_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryPagarVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object qryPagarCOD_EMPRESA_PAGAR: TIntegerField
      FieldName = 'COD_EMPRESA_PAGAR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dspPagar: TDataSetProvider
    DataSet = qryPagar
    Left = 120
    Top = 189
  end
  object cdsPagar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DOCUMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspPagar'
    Left = 207
    Top = 189
    object cdsPagarDOCUMENTO_PAGAR: TStringField
      FieldName = 'DOCUMENTO_PAGAR'
      Required = True
      Size = 10
    end
    object cdsPagarVALORPAGO_PAGAR: TFMTBCDField
      FieldName = 'VALORPAGO_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPagarMOVIMENTO_PAGAR: TDateField
      FieldName = 'MOVIMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarHISTORICO_PAGAR: TMemoField
      FieldName = 'HISTORICO_PAGAR'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsPagarTIPO_BAIXA_PAGAR: TStringField
      FieldName = 'TIPO_BAIXA_PAGAR'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsPagarPREVISAO_PAGAR: TDateField
      FieldName = 'PREVISAO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarPARCIAL_PAGAR: TFMTBCDField
      FieldName = 'PARCIAL_PAGAR'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsPagarVENCIMENTO_PAGAR: TDateField
      FieldName = 'VENCIMENTO_PAGAR'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPagarCOD_EMPRESA_PAGAR: TIntegerField
      FieldName = 'COD_EMPRESA_PAGAR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object qryReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.valorpago_receber, r.movimento_rec' +
        'eber,'
      
        '       r.tipo_baixa_receber, r.previsao_receber, r.vencimento_re' +
        'ceber,'
      '       r.parcial_receber'
      'from P_RECEBER r'
      'where r.duplicata_receber =:DUPLICATA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 35
    Top = 247
    object qryReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object qryReceberVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReceberMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object qryReceberPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = qryReceber
    Left = 120
    Top = 245
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptInput
      end>
    ProviderName = 'dspReceber'
    Left = 207
    Top = 245
    object cdsReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object cdsReceberVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsReceberMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReceberPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object qryParcial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_PARCIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select p.codigo_parcial, p.duplicata_parcial'
      'from P_PARCIAL p'
      'where p.codigo_parcial =:CODIGO_PARCIAL')
    SQLConnection = DmPrincipal.DbConexao
    Left = 35
    Top = 311
    object qryParcialCODIGO_PARCIAL: TIntegerField
      FieldName = 'CODIGO_PARCIAL'
      Required = True
    end
    object qryParcialDUPLICATA_PARCIAL: TStringField
      FieldName = 'DUPLICATA_PARCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
  end
  object dspParcial: TDataSetProvider
    DataSet = qryParcial
    Left = 120
    Top = 309
  end
  object cdsParcial: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_PARCIAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspParcial'
    Left = 207
    Top = 309
    object cdsParcialCODIGO_PARCIAL: TIntegerField
      FieldName = 'CODIGO_PARCIAL'
      Required = True
    end
    object cdsParcialDUPLICATA_PARCIAL: TStringField
      FieldName = 'DUPLICATA_PARCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 15
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
      'select r.chave_resban, r.credito_resban, r.debito_resban'
      'from P_RESBAN r'
      'where r.chave_resban =:CHAVE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 35
    Top = 367
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
    object qryResbanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object dspResban: TDataSetProvider
    DataSet = qryResban
    Left = 120
    Top = 366
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
    Left = 207
    Top = 365
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
    object cdsResbanDEBITO_RESBAN: TFMTBCDField
      FieldName = 'DEBITO_RESBAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object qryConlan2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CONLAN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.codigo_conlan, c.corrente_conlan, c.data_conlan, c.movi' +
        'mento_conlan,'
      
        '       c.historico_conlan, c.valor_conlan, c.tipo_conlan, c.orig' +
        'em_conlan,'
      
        '       c.cod_empresa, c.documento_conlan, c.estorno_conlan, c.co' +
        'nta_conlan,'
      
        '       c.centro_conlan, c.historic2_conlan, c.cli_for_conlan, c1' +
        '.tipo_cliente,'
      
        '       b.descricao_banco, c2.descricao_conta, c3.descricao_centr' +
        'o'
      'from P_CONLAN c'
      
        '     left outer join p_banco b on (c.corrente_conlan = b.codigo_' +
        'banco)'
      
        '     left outer join e_cliente c1 on (c.cli_for_conlan = c1.codi' +
        'go_cliente)'
      
        '     left outer join e_conta c2 on (c.conta_conlan = c2.codigo_c' +
        'onta)'
      
        '     left outer join e_centro c3 on (c.centro_conlan = c3.codigo' +
        '_centro)'
      'where c.codigo_conlan =:CODIGO_CONLAN ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 136
    object qryConlan2CODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object qryConlan2CORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlan2DATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlan2MOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlan2HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConlan2VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryConlan2TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryConlan2ORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryConlan2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryConlan2DESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object qryConlan2DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qryConlan2ESTORNO_CONLAN: TStringField
      FieldName = 'ESTORNO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryConlan2CENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlan2HISTORIC2_CONLAN: TStringField
      FieldName = 'HISTORIC2_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object qryConlan2CLI_FOR_CONLAN: TIntegerField
      FieldName = 'CLI_FOR_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object qryConlan2TIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      ProviderFlags = []
    end
    object qryConlan2DESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object qryConlan2DESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
      ProviderFlags = []
    end
    object qryConlan2CONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
    end
  end
  object dspConlan2: TDataSetProvider
    DataSet = qryConlan2
    Left = 121
    Top = 134
  end
  object cdsConlan2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CONLAN'
        ParamType = ptInput
      end>
    ProviderName = 'dspConlan2'
    Left = 207
    Top = 133
    object cdsConlan2CODIGO_CONLAN: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO_CONLAN'
      Required = True
    end
    object cdsConlan2CORRENTE_CONLAN: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CORRENTE_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlan2DATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlan2MOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlan2HISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsConlan2VALOR_CONLAN: TFMTBCDField
      FieldName = 'VALOR_CONLAN'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsConlan2TIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsConlan2ORIGEM_CONLAN: TStringField
      FieldName = 'ORIGEM_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsConlan2COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsConlan2DESCRICAO_BANCO: TStringField
      FieldName = 'DESCRICAO_BANCO'
      ProviderFlags = []
    end
    object cdsConlan2DOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsConlan2ESTORNO_CONLAN: TStringField
      FieldName = 'ESTORNO_CONLAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsConlan2CENTRO_CONLAN: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CENTRO_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlan2HISTORIC2_CONLAN: TStringField
      FieldName = 'HISTORIC2_CONLAN'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object cdsConlan2CLI_FOR_CONLAN: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CLI_FOR_CONLAN'
      ProviderFlags = [pfInUpdate]
    end
    object cdsConlan2TIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      ProviderFlags = []
    end
    object cdsConlan2DESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object cdsConlan2DESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
      ProviderFlags = []
    end
    object cdsConlan2CONTA_CONLAN: TStringField
      FieldName = 'CONTA_CONLAN'
    end
  end
  object cdsGrid: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_CONLAN'
        DataType = ftInteger
      end
      item
        Name = 'CORRENTE_CONLAN'
        DataType = ftInteger
      end
      item
        Name = 'DATA_CONLAN'
        DataType = ftDate
      end
      item
        Name = 'MOVIMENTO_CONLAN'
        DataType = ftDate
      end
      item
        Name = 'VALOR_CONLAN'
        DataType = ftFloat
      end
      item
        Name = 'DOCUMENTO_CONLAN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CENTRO_CONLAN'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_CONLAN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CLI_FOR_CONLAN'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'HISTORICO_CONLAN'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 208
    Top = 418
    Data = {
      500100009619E0BD01000000180000000C00000000000300000050010D434F44
      49474F5F434F4E4C414E04000100000000000F434F5252454E54455F434F4E4C
      414E04000100000000000B444154415F434F4E4C414E0400060000000000104D
      4F56494D454E544F5F434F4E4C414E04000600000000000C56414C4F525F434F
      4E4C414E080004000000000010444F43554D454E544F5F434F4E4C414E010049
      00000001000557494454480200020014000D43454E54524F5F434F4E4C414E04
      000100000000000B5449504F5F434F4E4C414E01004900000001000557494454
      480200020014000E434C495F464F525F434F4E4C414E01004900000001000557
      4944544802000200140010484953544F5249434F5F434F4E4C414E0100490000
      00010005574944544802000200FA0007434C49454E544504000100000000000A
      464F524E454345444F5204000100000000000000}
    object cdsGridCODIGO_CONLAN: TIntegerField
      FieldName = 'CODIGO_CONLAN'
    end
    object cdsGridCORRENTE_CONLAN: TIntegerField
      FieldName = 'CORRENTE_CONLAN'
    end
    object cdsGridDATA_CONLAN: TDateField
      FieldName = 'DATA_CONLAN'
    end
    object cdsGridMOVIMENTO_CONLAN: TDateField
      FieldName = 'MOVIMENTO_CONLAN'
    end
    object cdsGridVALOR_CONLAN: TFloatField
      FieldName = 'VALOR_CONLAN'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cdsGridDOCUMENTO_CONLAN: TStringField
      FieldName = 'DOCUMENTO_CONLAN'
    end
    object cdsGridCENTRO_CONLAN: TIntegerField
      FieldName = 'CENTRO_CONLAN'
    end
    object cdsGridTIPO_CONLAN: TStringField
      FieldName = 'TIPO_CONLAN'
    end
    object cdsGridCLI_FOR_CONLAN: TStringField
      FieldName = 'CLI_FOR_CONLAN'
    end
    object cdsGridHISTORICO_CONLAN: TStringField
      FieldName = 'HISTORICO_CONLAN'
      Size = 250
    end
    object cdsGridCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object cdsGridFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
  end
end
