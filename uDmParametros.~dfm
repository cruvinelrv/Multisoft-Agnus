object dmParametros: TdmParametros
  OldCreateOrder = False
  Left = 232
  Top = 146
  Height = 471
  Width = 687
  object cdsSerie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSerie'
    Left = 223
    Top = 107
    object cdsSerieSERIE_SERIE: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object cdsSerieSER_DOC_SERIE: TStringField
      FieldName = 'SER_DOC_SERIE'
      Size = 2
    end
    object cdsSerieNUMERO_SERIE: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      Precision = 15
      Size = 0
    end
    object cdsSerieIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
  end
  object dspSerie: TDataSetProvider
    DataSet = qrySerie
    Options = [poAllowCommandText]
    Left = 131
    Top = 108
  end
  object qrySerie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_SERIE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 112
    object qrySerieSERIE_SERIE: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object qrySerieSER_DOC_SERIE: TStringField
      FieldName = 'SER_DOC_SERIE'
      Size = 2
    end
    object qrySerieNUMERO_SERIE: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      Precision = 15
      Size = 0
    end
    object qrySerieIMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
  end
  object cdsConta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConta'
    Left = 223
    Top = 55
    object cdsContaCODIGO_CONTA: TStringField
      FieldName = 'CODIGO_CONTA'
      Required = True
    end
    object cdsContaDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      Size = 40
    end
    object cdsContaTIPO_CONTA: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object cdsContaTITULO_CONTA: TStringField
      FieldName = 'TITULO_CONTA'
      Size = 40
    end
  end
  object dspConta: TDataSetProvider
    DataSet = qryConta
    Options = [poAllowCommandText]
    Left = 131
    Top = 57
  end
  object qryConta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CONTA ORDER BY DESCRICAO_CONTA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 60
    object qryContaCODIGO_CONTA: TStringField
      FieldName = 'CODIGO_CONTA'
      Required = True
    end
    object qryContaDESCRICAO_CONTA: TStringField
      FieldName = 'DESCRICAO_CONTA'
      Size = 40
    end
    object qryContaTIPO_CONTA2: TStringField
      FieldName = 'TIPO_CONTA'
      FixedChar = True
      Size = 1
    end
    object qryContaTITULO_CONTA: TStringField
      FieldName = 'TITULO_CONTA'
      Size = 40
    end
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
    Left = 223
    Top = 7
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
  object dspContaBanco: TDataSetProvider
    DataSet = qryContaBanco
    Options = [poAllowCommandText]
    Left = 132
    Top = 9
  end
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
    Top = 12
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
  object qryTipoPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_CPAGAMENTO WHERE COD_EMPRESA=:EMPRESA ORDER BY D' +
        'ESCRICAO_CPAGAMENTO ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
    Top = 272
    object qryTipoPagamentoCODIGO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_CPAGAMENTO'
    end
    object qryTipoPagamentoDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      Size = 40
    end
    object qryTipoPagamentoDESCONTO_CPAGAMENTO: TFMTBCDField
      FieldName = 'DESCONTO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object qryTipoPagamentoPERC_COMISSAO_CPAGAMENTO: TFMTBCDField
      FieldName = 'PERC_COMISSAO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object qryTipoPagamentoCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
    end
    object qryTipoPagamentoCOMISSAO_CPAGAMENTO: TStringField
      FieldName = 'COMISSAO_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoLIVRE_CPAGAMENTO: TStringField
      FieldName = 'LIVRE_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_TPDOCUMENTO_CPAGAMENTO'
      Required = True
    end
    object qryTipoPagamentoCODIGO_PORTADOR_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_PORTADOR_CPAGAMENTO'
    end
    object qryTipoPagamentoDESCONTO_FIXO_CPAGAMENTO: TStringField
      FieldName = 'DESCONTO_FIXO_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoGERA_RECEBER_CPAGAMENTO: TStringField
      FieldName = 'GERA_RECEBER_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoECF_CPAGAMENTO: TStringField
      FieldName = 'ECF_CPAGAMENTO'
      Size = 3
    end
    object qryTipoPagamentoTEF_CPAGAMENTO: TStringField
      FieldName = 'TEF_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoSENHA_CPAGAMENTO: TStringField
      FieldName = 'SENHA_CPAGAMENTO'
      Size = 1
    end
    object qryTipoPagamentoMEDIA_DIA_CPAGAMENTO: TIntegerField
      FieldName = 'MEDIA_DIA_CPAGAMENTO'
    end
    object qryTipoPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryTipoPagamentoPRAZO1_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO1_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO2_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO2_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO3_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO3_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO4_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO4_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO5_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO5_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO6_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO6_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO7_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO7_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO8_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO8_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO9_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO9_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO10_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO10_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO11_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO11_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO12_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO12_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO13_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO13_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO14_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO14_CPAGAMENTO'
    end
    object qryTipoPagamentoPRAZO15_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO15_CPAGAMENTO'
    end
    object qryTipoPagamentoPARCELA1_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA1_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA2_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA2_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA3_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA3_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA4_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA4_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA5_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA5_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA6_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA6_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA7_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA7_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA8_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA8_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA9_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA9_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA10_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA10_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA11_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA11_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA12_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA12_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA13_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA13_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA14_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA14_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object qryTipoPagamentoPARCELA15_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA15_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
  end
  object dspTipoPagamento: TDataSetProvider
    DataSet = qryTipoPagamento
    Left = 129
    Top = 272
  end
  object cdsTipoPagamento: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO_CPAGAMENTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DESCONTO_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'PERC_COMISSAO_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'CAIXA_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'COMISSAO_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LIVRE_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGO_TPDOCUMENTO_CPAGAMENTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIGO_PORTADOR_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCONTO_FIXO_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'GERA_RECEBER_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ECF_CPAGAMENTO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TEF_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SENHA_CPAGAMENTO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MEDIA_DIA_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO1_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO2_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO3_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO4_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO5_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO6_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO7_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO8_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO9_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO10_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO11_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO12_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO13_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO14_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PRAZO15_CPAGAMENTO'
        DataType = ftInteger
      end
      item
        Name = 'PARCELA1_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA2_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA3_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA4_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA5_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA6_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA7_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA8_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA9_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA10_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA11_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA12_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA13_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA14_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end
      item
        Name = 'PARCELA15_CPAGAMENTO'
        DataType = ftFMTBcd
        Precision = 15
        Size = 3
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspTipoPagamento'
    StoreDefs = True
    Left = 225
    Top = 272
    object cdsTipoPagamentoCODIGO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_CPAGAMENTO'
    end
    object cdsTipoPagamentoDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      Size = 40
    end
    object cdsTipoPagamentoDESCONTO_CPAGAMENTO: TFMTBCDField
      FieldName = 'DESCONTO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object cdsTipoPagamentoPERC_COMISSAO_CPAGAMENTO: TFMTBCDField
      FieldName = 'PERC_COMISSAO_CPAGAMENTO'
      Precision = 15
      Size = 2
    end
    object cdsTipoPagamentoCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
    end
    object cdsTipoPagamentoCOMISSAO_CPAGAMENTO: TStringField
      FieldName = 'COMISSAO_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoLIVRE_CPAGAMENTO: TStringField
      FieldName = 'LIVRE_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_TPDOCUMENTO_CPAGAMENTO'
      Required = True
    end
    object cdsTipoPagamentoCODIGO_PORTADOR_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_PORTADOR_CPAGAMENTO'
    end
    object cdsTipoPagamentoDESCONTO_FIXO_CPAGAMENTO: TStringField
      FieldName = 'DESCONTO_FIXO_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoGERA_RECEBER_CPAGAMENTO: TStringField
      FieldName = 'GERA_RECEBER_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoECF_CPAGAMENTO: TStringField
      FieldName = 'ECF_CPAGAMENTO'
      Size = 3
    end
    object cdsTipoPagamentoTEF_CPAGAMENTO: TStringField
      FieldName = 'TEF_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoSENHA_CPAGAMENTO: TStringField
      FieldName = 'SENHA_CPAGAMENTO'
      Size = 1
    end
    object cdsTipoPagamentoMEDIA_DIA_CPAGAMENTO: TIntegerField
      FieldName = 'MEDIA_DIA_CPAGAMENTO'
    end
    object cdsTipoPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsTipoPagamentoPRAZO1_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO1_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO2_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO2_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO3_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO3_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO4_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO4_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO5_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO5_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO6_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO6_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO7_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO7_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO8_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO8_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO9_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO9_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO10_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO10_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO11_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO11_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO12_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO12_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO13_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO13_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO14_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO14_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPRAZO15_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO15_CPAGAMENTO'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object cdsTipoPagamentoPARCELA1_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA1_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA2_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA2_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA3_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA3_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA4_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA4_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA5_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA5_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA6_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA6_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA7_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA7_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA8_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA8_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA9_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA9_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA10_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA10_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA11_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA11_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA12_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA12_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA13_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA13_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA14_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA14_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA15_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA15_CPAGAMENTO'
      DisplayFormat = '0.000'
      EditFormat = '0.000'
      currency = True
      Precision = 15
      Size = 3
    end
  end
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT C.*,'
      ' CI.DESCRICAO_CIDADE AS NOME_CIDADE'
      ' FROM E_CLIENTE C'
      
        ' LEFT OUTER JOIN E_CIDADE CI ON (C.CIDADE_CLIENTE=CI.CODIGO_CIDA' +
        'DE)'
      ' WHERE CODIGO_CLIENTE=:CLIENTE AND TIPO_CLIENTE=0')
    SQLConnection = DmPrincipal.DbConexao
    Left = 345
    Top = 8
    object qryClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryClienteFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object qryClienteTIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      Size = 1
    end
    object qryClientePAI_CLIENTE: TStringField
      FieldName = 'PAI_CLIENTE'
      Size = 40
    end
    object qryClienteMAE_CLIENTE: TStringField
      FieldName = 'MAE_CLIENTE'
      Size = 40
    end
    object qryClienteENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object qryClienteBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object qryClienteCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object qryClienteESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object qryClienteCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 9
    end
    object qryClienteCX_POSTAL_CLIENTE: TStringField
      FieldName = 'CX_POSTAL_CLIENTE'
      Size = 6
    end
    object qryClienteTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object qryClienteFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object qryClienteCELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 13
    end
    object qryClienteCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object qryClienteDATANASC_CLIENTE: TDateField
      FieldName = 'DATANASC_CLIENTE'
    end
    object qryClienteINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
    object qryClienteINSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      Size = 10
    end
    object qryClienteDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
    object qryClienteULTIMA_COMPRA_CLIENTE: TDateField
      FieldName = 'ULTIMA_COMPRA_CLIENTE'
    end
    object qryClienteDATACADASTRO_CLIENTE: TDateField
      FieldName = 'DATACADASTRO_CLIENTE'
    end
    object qryClienteVALORCOMPRA_CLIENTE: TFMTBCDField
      FieldName = 'VALORCOMPRA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteCONTATO_CLIENTE: TStringField
      FieldName = 'CONTATO_CLIENTE'
      Size = 40
    end
    object qryClienteAREA_CLIENTE: TIntegerField
      FieldName = 'AREA_CLIENTE'
    end
    object qryClienteCONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      Size = 1
    end
    object qryClienteOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object qryClienteMANEQUIN_CLIENTE: TStringField
      FieldName = 'MANEQUIN_CLIENTE'
      Size = 2
    end
    object qryClienteSAPATO_CLIENTE: TStringField
      FieldName = 'SAPATO_CLIENTE'
      Size = 2
    end
    object qryClienteMANEQUIN1_CLIENTE: TStringField
      FieldName = 'MANEQUIN1_CLIENTE'
      Size = 2
    end
    object qryClienteSAPATO1_CLIENTE: TStringField
      FieldName = 'SAPATO1_CLIENTE'
      Size = 2
    end
    object qryClienteSPC_CLIENTE: TStringField
      FieldName = 'SPC_CLIENTE'
      Size = 2
    end
    object qryClienteCHECK_CLIENTE: TStringField
      FieldName = 'CHECK_CLIENTE'
      Size = 2
    end
    object qryClienteSERASA_CLIENTE: TStringField
      FieldName = 'SERASA_CLIENTE'
      Size = 2
    end
    object qryClienteATACADO_CLIENTE: TStringField
      FieldName = 'ATACADO_CLIENTE'
      Size = 1
    end
    object qryClienteHOMEPAGE_CLIENTE: TStringField
      FieldName = 'HOMEPAGE_CLIENTE'
      Size = 30
    end
    object qryClienteEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 30
    end
    object qryClienteDDG_CLIENTE: TStringField
      FieldName = 'DDG_CLIENTE'
      Size = 13
    end
    object qryClienteTIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      Required = True
    end
    object qryClienteSOCIO1_CLIENTE: TStringField
      FieldName = 'SOCIO1_CLIENTE'
      Size = 40
    end
    object qryClienteSOCIO2_CLIENTE: TStringField
      FieldName = 'SOCIO2_CLIENTE'
      Size = 40
    end
    object qryClienteSOCIO1_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO1_DATANASC_CLIENTE'
    end
    object qryClienteSOCIO2_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO2_DATANASC_CLIENTE'
    end
    object qryClienteGERENTE_CLIENTE: TStringField
      FieldName = 'GERENTE_CLIENTE'
      Size = 40
    end
    object qryClienteGERENTE_DATANASC_CLIENTE: TDateField
      FieldName = 'GERENTE_DATANASC_CLIENTE'
    end
    object qryClienteJUNTACOMERCIAL_CLIENTE: TStringField
      FieldName = 'JUNTACOMERCIAL_CLIENTE'
      Size = 30
    end
    object qryClienteCAPITAL_CLIENTE: TFMTBCDField
      FieldName = 'CAPITAL_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteTRAB_CLIENTE: TStringField
      FieldName = 'TRAB_CLIENTE'
      Size = 30
    end
    object qryClienteTRAB_FUNCAO_CLIENTE: TStringField
      FieldName = 'TRAB_FUNCAO_CLIENTE'
      Size = 30
    end
    object qryClienteTRAB_FONE_CLIENTE: TStringField
      FieldName = 'TRAB_FONE_CLIENTE'
      Size = 13
    end
    object qryClienteTRAB_RAMAL_CLIENTE: TStringField
      FieldName = 'TRAB_RAMAL_CLIENTE'
      Size = 4
    end
    object qryClienteTRAB_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteTRAB_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteCONJUGE_CLIENTE: TStringField
      FieldName = 'CONJUGE_CLIENTE'
      Size = 40
    end
    object qryClienteCONJUGE_TRABALHO_CLIENTE: TStringField
      FieldName = 'CONJUGE_TRABALHO_CLIENTE'
      Size = 30
    end
    object qryClienteCONJUGE_FUNCAO1_CLIENTE: TStringField
      FieldName = 'CONJUGE_FUNCAO1_CLIENTE'
      Size = 30
    end
    object qryClienteCONJUGE_DATANASC_CLIENTE: TDateField
      FieldName = 'CONJUGE_DATANASC_CLIENTE'
    end
    object qryClienteCONJUGE_FONE_CLIENTE: TStringField
      FieldName = 'CONJUGE_FONE_CLIENTE'
      Size = 13
    end
    object qryClienteCONJUGE_RAMAL_CLIENTE: TStringField
      FieldName = 'CONJUGE_RAMAL_CLIENTE'
      Size = 4
    end
    object qryClienteCONJUGE_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteCONJUGE_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteREF_BANCO1_CLIENTE: TStringField
      FieldName = 'REF_BANCO1_CLIENTE'
      Size = 22
    end
    object qryClienteREF_BANCO2_CLIENTE: TStringField
      FieldName = 'REF_BANCO2_CLIENTE'
      Size = 22
    end
    object qryClienteREF_BANCOFONE1_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE1_CLIENTE'
      Size = 13
    end
    object qryClienteREF_BANCOFONE2_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE2_CLIENTE'
      Size = 13
    end
    object qryClienteREF_COMERCIAL1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 22
    end
    object qryClienteREF_COMERCIAL2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 22
    end
    object qryClienteREF_COMERCIALFONE1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE1_CLIENTE'
      Size = 13
    end
    object qryClienteREF_COMERCIALFONE2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE2_CLIENTE'
      Size = 13
    end
    object qryClienteREF_PESSOAL1_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL1_CLIENTE'
      Size = 30
    end
    object qryClienteREF_PESSOAL2_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL2_CLIENTE'
      Size = 30
    end
    object qryClienteREF_PESSOALFONE1_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE1_CLIENTE'
      Size = 13
    end
    object qryClienteREF_PESSOALFONE2_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE2_CLIENTE'
      Size = 13
    end
    object qryClienteCOB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryClienteCOB_BAIRRO_CLIENTE: TStringField
      FieldName = 'COB_BAIRRO_CLIENTE'
    end
    object qryClienteCOB_CIDADE_CLIENTE: TIntegerField
      FieldName = 'COB_CIDADE_CLIENTE'
    end
    object qryClienteCOB_ESTADO_CLIENTE: TStringField
      FieldName = 'COB_ESTADO_CLIENTE'
      Size = 2
    end
    object qryClienteCOB_CEP_CLIENTE: TStringField
      FieldName = 'COB_CEP_CLIENTE'
      Size = 9
    end
    object qryClienteCOB_TELEFONE_CLIENTE: TStringField
      FieldName = 'COB_TELEFONE_CLIENTE'
      Size = 13
    end
    object qryClienteCOB_FAX_CLIENTE: TStringField
      FieldName = 'COB_FAX_CLIENTE'
      Size = 13
    end
    object qryClienteCOB_CXPOSTAL_CLIENTE: TStringField
      FieldName = 'COB_CXPOSTAL_CLIENTE'
      Size = 6
    end
    object qryClienteVENDEDOR_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR_CLIENTE'
    end
    object qryClienteVENDEDOR1_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR1_CLIENTE'
    end
    object qryClienteRAMO1_CLIENTE: TIntegerField
      FieldName = 'RAMO1_CLIENTE'
    end
    object qryClienteRAMO2_CLIENTE: TIntegerField
      FieldName = 'RAMO2_CLIENTE'
    end
    object qryClienteRAMO3_CLIENTE: TIntegerField
      FieldName = 'RAMO3_CLIENTE'
    end
    object qryClienteTPGTO_CLIENTE: TIntegerField
      FieldName = 'TPGTO_CLIENTE'
    end
    object qryClienteBANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object qryClienteAGENC1_CLIENTE: TStringField
      FieldName = 'AGENC1_CLIENTE'
      Size = 6
    end
    object qryClienteFONEB1_CLIENTE: TStringField
      FieldName = 'FONEB1_CLIENTE'
      Size = 14
    end
    object qryClienteCONTA1_CLIENTE: TStringField
      FieldName = 'CONTA1_CLIENTE'
      Size = 10
    end
    object qryClienteCLDSD1_CLIENTE: TDateField
      FieldName = 'CLDSD1_CLIENTE'
    end
    object qryClienteBANCO2_CLIENTE: TStringField
      FieldName = 'BANCO2_CLIENTE'
      Size = 15
    end
    object qryClienteAGENC2_CLIENTE: TStringField
      FieldName = 'AGENC2_CLIENTE'
      Size = 6
    end
    object qryClienteFONEB2_CLIENTE: TStringField
      FieldName = 'FONEB2_CLIENTE'
      Size = 14
    end
    object qryClienteCONTA2_CLIENTE: TStringField
      FieldName = 'CONTA2_CLIENTE'
      Size = 10
    end
    object qryClienteCLDSD2_CLIENTE: TDateField
      FieldName = 'CLDSD2_CLIENTE'
    end
    object qryClienteBANCO3_CLIENTE: TStringField
      FieldName = 'BANCO3_CLIENTE'
      Size = 15
    end
    object qryClienteAGENC3_CLIENTE: TStringField
      FieldName = 'AGENC3_CLIENTE'
      Size = 6
    end
    object qryClienteFONEB3_CLIENTE: TStringField
      FieldName = 'FONEB3_CLIENTE'
      Size = 14
    end
    object qryClienteCONTA3_CLIENTE: TStringField
      FieldName = 'CONTA3_CLIENTE'
      Size = 10
    end
    object qryClienteCLDSD3_CLIENTE: TDateField
      FieldName = 'CLDSD3_CLIENTE'
    end
    object qryClienteBANCO4_CLIENTE: TStringField
      FieldName = 'BANCO4_CLIENTE'
      Size = 15
    end
    object qryClienteAGENC4_CLIENTE: TStringField
      FieldName = 'AGENC4_CLIENTE'
      Size = 6
    end
    object qryClienteFONEB4_CLIENTE: TStringField
      FieldName = 'FONEB4_CLIENTE'
      Size = 14
    end
    object qryClienteCONTA4_CLIENTE: TStringField
      FieldName = 'CONTA4_CLIENTE'
      Size = 10
    end
    object qryClienteCLDSD4_CLIENTE: TDateField
      FieldName = 'CLDSD4_CLIENTE'
    end
    object qryClienteBANCO5_CLIENTE: TStringField
      FieldName = 'BANCO5_CLIENTE'
      Size = 15
    end
    object qryClienteAGENC5_CLIENTE: TStringField
      FieldName = 'AGENC5_CLIENTE'
      Size = 6
    end
    object qryClienteFONEB5_CLIENTE: TStringField
      FieldName = 'FONEB5_CLIENTE'
      Size = 14
    end
    object qryClienteCONTA5_CLIENTE: TStringField
      FieldName = 'CONTA5_CLIENTE'
      Size = 10
    end
    object qryClienteCLDSD5_CLIENTE: TDateField
      FieldName = 'CLDSD5_CLIENTE'
    end
    object qryClienteCOMISSAO_CLIENTE: TStringField
      FieldName = 'COMISSAO_CLIENTE'
      Size = 1
    end
    object qryClienteCARTAO_CLIENTE: TDateField
      FieldName = 'CARTAO_CLIENTE'
    end
    object qryClienteULTIMO_CONT_CLIENTE: TDateField
      FieldName = 'ULTIMO_CONT_CLIENTE'
    end
    object qryClienteUSUARIO_CLIENTE: TStringField
      FieldName = 'USUARIO_CLIENTE'
      Size = 10
    end
    object qryClienteSTATUS_CLIENTE: TStringField
      FieldName = 'STATUS_CLIENTE'
      Size = 1
    end
    object qryClienteNATURALID_CLIENTE: TStringField
      FieldName = 'NATURALID_CLIENTE'
      Size = 30
    end
    object qryClienteESTADOCIVIL_CLIENTE: TStringField
      FieldName = 'ESTADOCIVIL_CLIENTE'
      Size = 15
    end
    object qryClienteCARTEIRATRAB_CLIENTE: TStringField
      FieldName = 'CARTEIRATRAB_CLIENTE'
      Size = 15
    end
    object qryClienteTEMPO_RES_CLIENTE: TStringField
      FieldName = 'TEMPO_RES_CLIENTE'
      Size = 10
    end
    object qryClienteTIPO_CASA_CLIENTE: TStringField
      FieldName = 'TIPO_CASA_CLIENTE'
      Size = 1
    end
    object qryClienteVALOR_CASA_CLIENTE: TFMTBCDField
      FieldName = 'VALOR_CASA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteFONERECADO_CLIENTE: TStringField
      FieldName = 'FONERECADO_CLIENTE'
      Size = 13
    end
    object qryClienteTRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryClienteTRAB_BAIRRO_CLIENTE: TStringField
      FieldName = 'TRAB_BAIRRO_CLIENTE'
    end
    object qryClienteTRAB_CIDADE_CLIENTE: TStringField
      FieldName = 'TRAB_CIDADE_CLIENTE'
    end
    object qryClienteTRAB_ESTADO_CLIENTE: TStringField
      FieldName = 'TRAB_ESTADO_CLIENTE'
      Size = 2
    end
    object qryClienteTRAB_CEP_CLIENTE: TStringField
      FieldName = 'TRAB_CEP_CLIENTE'
      Size = 9
    end
    object qryClienteTRAB_DATAADMISSAO_CLIENTE: TDateField
      FieldName = 'TRAB_DATAADMISSAO_CLIENTE'
    end
    object qryClienteAVACONJ_TIPO_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPO_CLIENTE'
      Size = 1
    end
    object qryClienteAVACONJ_NOME_CLIENTE: TStringField
      FieldName = 'AVACONJ_NOME_CLIENTE'
      Size = 40
    end
    object qryClienteAVACONJ_DATANASC_CLIENTE: TDateField
      FieldName = 'AVACONJ_DATANASC_CLIENTE'
    end
    object qryClienteAVACONJ_ESTCIVIL_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTCIVIL_CLIENTE'
      Size = 10
    end
    object qryClienteAVACONJ_PAI_CLIENTE: TStringField
      FieldName = 'AVACONJ_PAI_CLIENTE'
      Size = 30
    end
    object qryClienteAVACONJ_MAE_CLIENTE: TStringField
      FieldName = 'AVACONJ_MAE_CLIENTE'
      Size = 30
    end
    object qryClienteAVACONJ_RG_CLIENTE: TStringField
      FieldName = 'AVACONJ_RG_CLIENTE'
    end
    object qryClienteAVACONJ_CPF_CLIENTE: TStringField
      FieldName = 'AVACONJ_CPF_CLIENTE'
      Size = 15
    end
    object qryClienteAVACONJ_CARTERA_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARTERA_CLIENTE'
      Size = 15
    end
    object qryClienteAVACONJ_ENDERECO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryClienteAVACONJ_BAIRRO_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAIRRO_CLIENTE'
    end
    object qryClienteAVACONJ_CIDADE_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDADE_CLIENTE'
    end
    object qryClienteAVACONJ_ESTADO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTADO_CLIENTE'
      Size = 2
    end
    object qryClienteAVACONJ_CEP_CLIENTE: TStringField
      FieldName = 'AVACONJ_CEP_CLIENTE'
      Size = 9
    end
    object qryClienteAVACONJ_FONE_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONE_CLIENTE'
      Size = 13
    end
    object qryClienteAVACONJ_TEMPORESID_CLIENTE: TStringField
      FieldName = 'AVACONJ_TEMPORESID_CLIENTE'
      Size = 10
    end
    object qryClienteAVACONJ_TIPOIMOV_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPOIMOV_CLIENTE'
      Size = 1
    end
    object qryClienteAVACONJ_EMPTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_EMPTRAB_CLIENTE'
      Size = 30
    end
    object qryClienteAVACONJ_ENDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDTRAB_CLIENTE'
      Size = 40
    end
    object qryClienteAVACONJ_BAITRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAITRAB_CLIENTE'
    end
    object qryClienteAVACONJ_CIDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDTRAB_CLIENTE'
    end
    object qryClienteAVACONJ_ESTTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTTRAB_CLIENTE'
      Size = 2
    end
    object qryClienteAVACONJ_ADMTRAB_CLIENTE: TDateField
      FieldName = 'AVACONJ_ADMTRAB_CLIENTE'
    end
    object qryClienteAVACONJ_FUNCAO_CLIENTE: TStringField
      FieldName = 'AVACONJ_FUNCAO_CLIENTE'
    end
    object qryClienteAVACONJ_CARGO_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARGO_CLIENTE'
    end
    object qryClienteAVACONJ_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'AVACONJ_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryClienteAVACONJ_FONTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONTRAB_CLIENTE'
      Size = 13
    end
    object qryClienteAVACONJ_REFERENCIA1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA1_CLIENTE'
      Size = 22
    end
    object qryClienteAVACONJ_REFERENCIA2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA2_CLIENTE'
      Size = 22
    end
    object qryClienteAVACONJ_REFERENCIA3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA3_CLIENTE'
      Size = 22
    end
    object qryClientePARENTE_NOME_CLIENTE: TStringField
      FieldName = 'PARENTE_NOME_CLIENTE'
      Size = 40
    end
    object qryClientePARENTE_FONE_CLIENTE: TStringField
      FieldName = 'PARENTE_FONE_CLIENTE'
      Size = 13
    end
    object qryClientePARENTE_ENDERECO_CLIENTE: TStringField
      FieldName = 'PARENTE_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryClientePARENTE_BAIRRO_CLIENTE: TStringField
      FieldName = 'PARENTE_BAIRRO_CLIENTE'
    end
    object qryClientePARENTE_CIDADE_CLIENTE: TStringField
      FieldName = 'PARENTE_CIDADE_CLIENTE'
    end
    object qryClienteDATABASE_CLIENTE: TIntegerField
      FieldName = 'DATABASE_CLIENTE'
    end
    object qryClienteCONTATO1_CLIENTE: TStringField
      FieldName = 'CONTATO1_CLIENTE'
      Size = 40
    end
    object qryClienteCONTATO2_CLIENTE: TStringField
      FieldName = 'CONTATO2_CLIENTE'
      Size = 40
    end
    object qryClienteCONTATO3_CLIENTE: TStringField
      FieldName = 'CONTATO3_CLIENTE'
      Size = 40
    end
    object qryClienteCONTATO1_FONE__CLIENTE: TStringField
      FieldName = 'CONTATO1_FONE__CLIENTE'
      Size = 13
    end
    object qryClienteCONTATO2_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO2_FONE_CLIENTE'
      Size = 13
    end
    object qryClienteCONTATO3_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO3_FONE_CLIENTE'
      Size = 13
    end
    object qryClientePAIS_CLIENTE: TStringField
      FieldName = 'PAIS_CLIENTE'
    end
    object qryClienteREPR_NOME_CLIENTE: TStringField
      FieldName = 'REPR_NOME_CLIENTE'
      Size = 40
    end
    object qryClienteREPR_FONE_CLIENTE: TStringField
      FieldName = 'REPR_FONE_CLIENTE'
      Size = 13
    end
    object qryClienteREPR_CELULAR_CLIENTE: TStringField
      FieldName = 'REPR_CELULAR_CLIENTE'
      Size = 15
    end
    object qryClienteREPR_FAX_CLIENTE: TStringField
      FieldName = 'REPR_FAX_CLIENTE'
      Size = 15
    end
    object qryClienteAVACONJ_REFFONE3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE3_CLIENTE'
      Size = 13
    end
    object qryClienteAVACONJ_REFFONE2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE2_CLIENTE'
      Size = 13
    end
    object qryClienteAVACONJ_REFFONE1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE1_CLIENTE'
      Size = 13
    end
    object qryClienteNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Options = [poAllowCommandText]
    Left = 424
    Top = 8
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FANTASIA_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TIPOPESSOA_CLIENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PAI_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'MAE_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDERECO_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BAIRRO_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CIDADE_CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ESTADO_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP_CLIENTE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CX_POSTAL_CLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'TELEFONE_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FAX_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CELULAR_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CNPJ_CLIENTE'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'DATANASC_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'INSCRICAO_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INSC_MUN_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DATABLOQUEIO_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'ULTIMA_COMPRA_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'DATACADASTRO_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'VALORCOMPRA_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'CREDITO_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'UTILIZADO_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'CONTATO_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AREA_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'CONTRIBUINTE_CLIENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OBSEVACAO_CLIENTE'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'MANEQUIN_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SAPATO_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MANEQUIN1_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SAPATO1_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SPC_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CHECK_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SERASA_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ATACADO_CLIENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'HOMEPAGE_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EMAIL_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DDG_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'TIPO_CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SOCIO1_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SOCIO2_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SOCIO1_DATANASC_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'SOCIO2_DATANASC_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'GERENTE_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'GERENTE_DATANASC_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'JUNTACOMERCIAL_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CAPITAL_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'TRAB_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TRAB_FUNCAO_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TRAB_FONE_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'TRAB_RAMAL_CLIENTE'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'TRAB_SALARIO_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'TRAB_OUTRAS_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'CONJUGE_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONJUGE_TRABALHO_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CONJUGE_FUNCAO1_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CONJUGE_DATANASC_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'CONJUGE_FONE_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CONJUGE_RAMAL_CLIENTE'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CONJUGE_SALARIO_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'CONJUGE_OUTRAS_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'REF_BANCO1_CLIENTE'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'REF_BANCO2_CLIENTE'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'REF_BANCOFONE1_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'REF_BANCOFONE2_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'REF_COMERCIAL1_CLIENTE'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'REF_COMERCIAL2_CLIENTE'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'REF_COMERCIALFONE1_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'REF_COMERCIALFONE2_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'REF_PESSOAL1_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'REF_PESSOAL2_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'REF_PESSOALFONE1_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'REF_PESSOALFONE2_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'COB_ENDERECO_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COB_BAIRRO_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COB_CIDADE_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'COB_ESTADO_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COB_CEP_CLIENTE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'COB_TELEFONE_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'COB_FAX_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'COB_CXPOSTAL_CLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VENDEDOR_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'VENDEDOR1_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'RAMO1_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'RAMO2_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'RAMO3_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'TPGTO_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'BANCO1_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AGENC1_CLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FONEB1_CLIENTE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONTA1_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLDSD1_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'BANCO2_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AGENC2_CLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FONEB2_CLIENTE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONTA2_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLDSD2_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'BANCO3_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AGENC3_CLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FONEB3_CLIENTE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONTA3_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLDSD3_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'BANCO4_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AGENC4_CLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FONEB4_CLIENTE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONTA4_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLDSD4_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'BANCO5_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AGENC5_CLIENTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FONEB5_CLIENTE'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CONTA5_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLDSD5_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'COMISSAO_CLIENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CARTAO_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'ULTIMO_CONT_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'USUARIO_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'STATUS_CLIENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NATURALID_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ESTADOCIVIL_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CARTEIRATRAB_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TEMPO_RES_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TIPO_CASA_CLIENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VALOR_CASA_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'FONERECADO_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'TRAB_ENDERECO_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TRAB_BAIRRO_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TRAB_CIDADE_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TRAB_ESTADO_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TRAB_CEP_CLIENTE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'TRAB_DATAADMISSAO_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'AVACONJ_TIPO_CLIENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AVACONJ_NOME_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AVACONJ_DATANASC_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'AVACONJ_ESTCIVIL_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AVACONJ_PAI_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AVACONJ_MAE_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AVACONJ_RG_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AVACONJ_CPF_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AVACONJ_CARTERA_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AVACONJ_ENDERECO_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AVACONJ_BAIRRO_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AVACONJ_CIDADE_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AVACONJ_ESTADO_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AVACONJ_CEP_CLIENTE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'AVACONJ_FONE_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'AVACONJ_TEMPORESID_CLIENTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AVACONJ_TIPOIMOV_CLIENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'AVACONJ_EMPTRAB_CLIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AVACONJ_ENDTRAB_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AVACONJ_BAITRAB_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AVACONJ_CIDTRAB_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AVACONJ_ESTTRAB_CLIENTE'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'AVACONJ_ADMTRAB_CLIENTE'
        DataType = ftDate
      end
      item
        Name = 'AVACONJ_FUNCAO_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AVACONJ_CARGO_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'AVACONJ_SALARIO_CLIENTE'
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'AVACONJ_FONTRAB_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'AVACONJ_REFERENCIA1_CLIENTE'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'AVACONJ_REFERENCIA2_CLIENTE'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'AVACONJ_REFERENCIA3_CLIENTE'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'PARENTE_NOME_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PARENTE_FONE_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'PARENTE_ENDERECO_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PARENTE_BAIRRO_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PARENTE_CIDADE_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATABASE_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'CONTATO1_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONTATO2_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONTATO3_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONTATO1_FONE__CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CONTATO2_FONE_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CONTATO3_FONE_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'PAIS_CLIENTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REPR_NOME_CLIENTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REPR_FONE_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'REPR_CELULAR_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'REPR_FAX_CLIENTE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'AVACONJ_REFFONE3_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'AVACONJ_REFFONE2_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'AVACONJ_REFFONE1_CLIENTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'NOME_CIDADE'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspCliente'
    StoreDefs = True
    Left = 504
    Top = 8
    object cdsClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsClienteFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsClienteTIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      Size = 1
    end
    object cdsClientePAI_CLIENTE: TStringField
      FieldName = 'PAI_CLIENTE'
      Size = 40
    end
    object cdsClienteMAE_CLIENTE: TStringField
      FieldName = 'MAE_CLIENTE'
      Size = 40
    end
    object cdsClienteENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClienteBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsClienteCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object cdsClienteESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsClienteCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      EditMask = '!99999\-999;1; '
      Size = 9
    end
    object cdsClienteCX_POSTAL_CLIENTE: TStringField
      FieldName = 'CX_POSTAL_CLIENTE'
      Size = 6
    end
    object cdsClienteTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteCELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object cdsClienteDATANASC_CLIENTE: TDateField
      FieldName = 'DATANASC_CLIENTE'
    end
    object cdsClienteINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
    object cdsClienteINSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      Size = 10
    end
    object cdsClienteDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
    object cdsClienteULTIMA_COMPRA_CLIENTE: TDateField
      FieldName = 'ULTIMA_COMPRA_CLIENTE'
      DisplayFormat = '0.00'
    end
    object cdsClienteDATACADASTRO_CLIENTE: TDateField
      FieldName = 'DATACADASTRO_CLIENTE'
    end
    object cdsClienteVALORCOMPRA_CLIENTE: TFMTBCDField
      FieldName = 'VALORCOMPRA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteCONTATO_CLIENTE: TStringField
      FieldName = 'CONTATO_CLIENTE'
      Size = 40
    end
    object cdsClienteAREA_CLIENTE: TIntegerField
      FieldName = 'AREA_CLIENTE'
    end
    object cdsClienteCONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      Size = 1
    end
    object cdsClienteOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClienteMANEQUIN_CLIENTE: TStringField
      FieldName = 'MANEQUIN_CLIENTE'
      Size = 2
    end
    object cdsClienteSAPATO_CLIENTE: TStringField
      FieldName = 'SAPATO_CLIENTE'
      Size = 2
    end
    object cdsClienteMANEQUIN1_CLIENTE: TStringField
      FieldName = 'MANEQUIN1_CLIENTE'
      Size = 2
    end
    object cdsClienteSAPATO1_CLIENTE: TStringField
      FieldName = 'SAPATO1_CLIENTE'
      Size = 2
    end
    object cdsClienteSPC_CLIENTE: TStringField
      FieldName = 'SPC_CLIENTE'
      Size = 2
    end
    object cdsClienteCHECK_CLIENTE: TStringField
      FieldName = 'CHECK_CLIENTE'
      Size = 2
    end
    object cdsClienteSERASA_CLIENTE: TStringField
      FieldName = 'SERASA_CLIENTE'
      Size = 2
    end
    object cdsClienteATACADO_CLIENTE: TStringField
      FieldName = 'ATACADO_CLIENTE'
      Size = 1
    end
    object cdsClienteHOMEPAGE_CLIENTE: TStringField
      FieldName = 'HOMEPAGE_CLIENTE'
      Size = 30
    end
    object cdsClienteEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 30
    end
    object cdsClienteDDG_CLIENTE: TStringField
      FieldName = 'DDG_CLIENTE'
      Size = 13
    end
    object cdsClienteTIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      Required = True
    end
    object cdsClienteSOCIO1_CLIENTE: TStringField
      FieldName = 'SOCIO1_CLIENTE'
      Size = 40
    end
    object cdsClienteSOCIO2_CLIENTE: TStringField
      FieldName = 'SOCIO2_CLIENTE'
      Size = 40
    end
    object cdsClienteSOCIO1_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO1_DATANASC_CLIENTE'
    end
    object cdsClienteSOCIO2_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO2_DATANASC_CLIENTE'
    end
    object cdsClienteGERENTE_CLIENTE: TStringField
      FieldName = 'GERENTE_CLIENTE'
      Size = 40
    end
    object cdsClienteGERENTE_DATANASC_CLIENTE: TDateField
      FieldName = 'GERENTE_DATANASC_CLIENTE'
    end
    object cdsClienteJUNTACOMERCIAL_CLIENTE: TStringField
      FieldName = 'JUNTACOMERCIAL_CLIENTE'
      Size = 30
    end
    object cdsClienteCAPITAL_CLIENTE: TFMTBCDField
      FieldName = 'CAPITAL_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteTRAB_CLIENTE: TStringField
      FieldName = 'TRAB_CLIENTE'
      Size = 30
    end
    object cdsClienteTRAB_FUNCAO_CLIENTE: TStringField
      FieldName = 'TRAB_FUNCAO_CLIENTE'
      Size = 30
    end
    object cdsClienteTRAB_FONE_CLIENTE: TStringField
      FieldName = 'TRAB_FONE_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteTRAB_RAMAL_CLIENTE: TStringField
      FieldName = 'TRAB_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsClienteTRAB_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteTRAB_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteCONJUGE_CLIENTE: TStringField
      FieldName = 'CONJUGE_CLIENTE'
      Size = 40
    end
    object cdsClienteCONJUGE_TRABALHO_CLIENTE: TStringField
      FieldName = 'CONJUGE_TRABALHO_CLIENTE'
      Size = 30
    end
    object cdsClienteCONJUGE_FUNCAO1_CLIENTE: TStringField
      FieldName = 'CONJUGE_FUNCAO1_CLIENTE'
      Size = 30
    end
    object cdsClienteCONJUGE_DATANASC_CLIENTE: TDateField
      FieldName = 'CONJUGE_DATANASC_CLIENTE'
    end
    object cdsClienteCONJUGE_FONE_CLIENTE: TStringField
      FieldName = 'CONJUGE_FONE_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteCONJUGE_RAMAL_CLIENTE: TStringField
      FieldName = 'CONJUGE_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsClienteCONJUGE_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteCONJUGE_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteREF_BANCO1_CLIENTE: TStringField
      FieldName = 'REF_BANCO1_CLIENTE'
      Size = 22
    end
    object cdsClienteREF_BANCO2_CLIENTE: TStringField
      FieldName = 'REF_BANCO2_CLIENTE'
      Size = 22
    end
    object cdsClienteREF_BANCOFONE1_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE1_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteREF_BANCOFONE2_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE2_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteREF_COMERCIAL1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 22
    end
    object cdsClienteREF_COMERCIAL2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 22
    end
    object cdsClienteREF_COMERCIALFONE1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE1_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteREF_COMERCIALFONE2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE2_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteREF_PESSOAL1_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL1_CLIENTE'
      Size = 30
    end
    object cdsClienteREF_PESSOAL2_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL2_CLIENTE'
      Size = 30
    end
    object cdsClienteREF_PESSOALFONE1_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE1_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteREF_PESSOALFONE2_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE2_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteCOB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClienteCOB_BAIRRO_CLIENTE: TStringField
      FieldName = 'COB_BAIRRO_CLIENTE'
    end
    object cdsClienteCOB_ESTADO_CLIENTE: TStringField
      FieldName = 'COB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsClienteCOB_CEP_CLIENTE: TStringField
      FieldName = 'COB_CEP_CLIENTE'
      EditMask = '!99999\-999;1; '
      Size = 9
    end
    object cdsClienteCOB_TELEFONE_CLIENTE: TStringField
      FieldName = 'COB_TELEFONE_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteCOB_FAX_CLIENTE: TStringField
      FieldName = 'COB_FAX_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteCOB_CXPOSTAL_CLIENTE: TStringField
      FieldName = 'COB_CXPOSTAL_CLIENTE'
      Size = 6
    end
    object cdsClienteVENDEDOR_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR_CLIENTE'
    end
    object cdsClienteVENDEDOR1_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR1_CLIENTE'
    end
    object cdsClienteRAMO1_CLIENTE: TIntegerField
      FieldName = 'RAMO1_CLIENTE'
    end
    object cdsClienteRAMO2_CLIENTE: TIntegerField
      FieldName = 'RAMO2_CLIENTE'
    end
    object cdsClienteRAMO3_CLIENTE: TIntegerField
      FieldName = 'RAMO3_CLIENTE'
    end
    object cdsClienteTPGTO_CLIENTE: TIntegerField
      FieldName = 'TPGTO_CLIENTE'
    end
    object cdsClienteBANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object cdsClienteAGENC1_CLIENTE: TStringField
      FieldName = 'AGENC1_CLIENTE'
      Size = 6
    end
    object cdsClienteFONEB1_CLIENTE: TStringField
      FieldName = 'FONEB1_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 14
    end
    object cdsClienteCONTA1_CLIENTE: TStringField
      FieldName = 'CONTA1_CLIENTE'
      Size = 10
    end
    object cdsClienteCLDSD1_CLIENTE: TDateField
      FieldName = 'CLDSD1_CLIENTE'
    end
    object cdsClienteBANCO2_CLIENTE: TStringField
      FieldName = 'BANCO2_CLIENTE'
      Size = 15
    end
    object cdsClienteAGENC2_CLIENTE: TStringField
      FieldName = 'AGENC2_CLIENTE'
      Size = 6
    end
    object cdsClienteFONEB2_CLIENTE: TStringField
      FieldName = 'FONEB2_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 14
    end
    object cdsClienteCONTA2_CLIENTE: TStringField
      FieldName = 'CONTA2_CLIENTE'
      Size = 10
    end
    object cdsClienteCLDSD2_CLIENTE: TDateField
      FieldName = 'CLDSD2_CLIENTE'
    end
    object cdsClienteBANCO3_CLIENTE: TStringField
      FieldName = 'BANCO3_CLIENTE'
      Size = 15
    end
    object cdsClienteAGENC3_CLIENTE: TStringField
      FieldName = 'AGENC3_CLIENTE'
      Size = 6
    end
    object cdsClienteFONEB3_CLIENTE: TStringField
      FieldName = 'FONEB3_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 14
    end
    object cdsClienteCONTA3_CLIENTE: TStringField
      FieldName = 'CONTA3_CLIENTE'
      Size = 10
    end
    object cdsClienteCLDSD3_CLIENTE: TDateField
      FieldName = 'CLDSD3_CLIENTE'
    end
    object cdsClienteBANCO4_CLIENTE: TStringField
      FieldName = 'BANCO4_CLIENTE'
      Size = 15
    end
    object cdsClienteAGENC4_CLIENTE: TStringField
      FieldName = 'AGENC4_CLIENTE'
      Size = 6
    end
    object cdsClienteFONEB4_CLIENTE: TStringField
      FieldName = 'FONEB4_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 14
    end
    object cdsClienteCONTA4_CLIENTE: TStringField
      FieldName = 'CONTA4_CLIENTE'
      Size = 10
    end
    object cdsClienteCLDSD4_CLIENTE: TDateField
      FieldName = 'CLDSD4_CLIENTE'
    end
    object cdsClienteBANCO5_CLIENTE: TStringField
      FieldName = 'BANCO5_CLIENTE'
      Size = 15
    end
    object cdsClienteAGENC5_CLIENTE: TStringField
      FieldName = 'AGENC5_CLIENTE'
      Size = 6
    end
    object cdsClienteFONEB5_CLIENTE: TStringField
      FieldName = 'FONEB5_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 14
    end
    object cdsClienteCONTA5_CLIENTE: TStringField
      FieldName = 'CONTA5_CLIENTE'
      Size = 10
    end
    object cdsClienteCLDSD5_CLIENTE: TDateField
      FieldName = 'CLDSD5_CLIENTE'
    end
    object cdsClienteCOMISSAO_CLIENTE: TStringField
      FieldName = 'COMISSAO_CLIENTE'
      Size = 1
    end
    object cdsClienteCARTAO_CLIENTE: TDateField
      FieldName = 'CARTAO_CLIENTE'
    end
    object cdsClienteULTIMO_CONT_CLIENTE: TDateField
      FieldName = 'ULTIMO_CONT_CLIENTE'
    end
    object cdsClienteUSUARIO_CLIENTE: TStringField
      FieldName = 'USUARIO_CLIENTE'
      Size = 10
    end
    object cdsClienteSTATUS_CLIENTE: TStringField
      FieldName = 'STATUS_CLIENTE'
      Size = 1
    end
    object cdsClienteNATURALID_CLIENTE: TStringField
      FieldName = 'NATURALID_CLIENTE'
      Size = 30
    end
    object cdsClienteESTADOCIVIL_CLIENTE: TStringField
      FieldName = 'ESTADOCIVIL_CLIENTE'
      Size = 15
    end
    object cdsClienteCARTEIRATRAB_CLIENTE: TStringField
      FieldName = 'CARTEIRATRAB_CLIENTE'
      Size = 15
    end
    object cdsClienteTEMPO_RES_CLIENTE: TStringField
      FieldName = 'TEMPO_RES_CLIENTE'
      Size = 10
    end
    object cdsClienteTIPO_CASA_CLIENTE: TStringField
      FieldName = 'TIPO_CASA_CLIENTE'
      Size = 1
    end
    object cdsClienteVALOR_CASA_CLIENTE: TFMTBCDField
      FieldName = 'VALOR_CASA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteFONERECADO_CLIENTE: TStringField
      FieldName = 'FONERECADO_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteTRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClienteTRAB_BAIRRO_CLIENTE: TStringField
      FieldName = 'TRAB_BAIRRO_CLIENTE'
    end
    object cdsClienteTRAB_CIDADE_CLIENTE: TStringField
      FieldName = 'TRAB_CIDADE_CLIENTE'
    end
    object cdsClienteTRAB_ESTADO_CLIENTE: TStringField
      FieldName = 'TRAB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsClienteTRAB_CEP_CLIENTE: TStringField
      FieldName = 'TRAB_CEP_CLIENTE'
      EditMask = '!99999\-999;1; '
      Size = 9
    end
    object cdsClienteTRAB_DATAADMISSAO_CLIENTE: TDateField
      FieldName = 'TRAB_DATAADMISSAO_CLIENTE'
    end
    object cdsClienteAVACONJ_TIPO_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPO_CLIENTE'
      Size = 1
    end
    object cdsClienteAVACONJ_NOME_CLIENTE: TStringField
      FieldName = 'AVACONJ_NOME_CLIENTE'
      Size = 40
    end
    object cdsClienteAVACONJ_DATANASC_CLIENTE: TDateField
      FieldName = 'AVACONJ_DATANASC_CLIENTE'
    end
    object cdsClienteAVACONJ_ESTCIVIL_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTCIVIL_CLIENTE'
      Size = 10
    end
    object cdsClienteAVACONJ_PAI_CLIENTE: TStringField
      FieldName = 'AVACONJ_PAI_CLIENTE'
      Size = 30
    end
    object cdsClienteAVACONJ_MAE_CLIENTE: TStringField
      FieldName = 'AVACONJ_MAE_CLIENTE'
      Size = 30
    end
    object cdsClienteAVACONJ_RG_CLIENTE: TStringField
      FieldName = 'AVACONJ_RG_CLIENTE'
    end
    object cdsClienteAVACONJ_CPF_CLIENTE: TStringField
      FieldName = 'AVACONJ_CPF_CLIENTE'
      EditMask = '000\.000\.000\-00;1; '
      Size = 15
    end
    object cdsClienteAVACONJ_CARTERA_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARTERA_CLIENTE'
      Size = 15
    end
    object cdsClienteAVACONJ_ENDERECO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClienteAVACONJ_BAIRRO_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAIRRO_CLIENTE'
    end
    object cdsClienteAVACONJ_CIDADE_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDADE_CLIENTE'
    end
    object cdsClienteAVACONJ_ESTADO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsClienteAVACONJ_CEP_CLIENTE: TStringField
      FieldName = 'AVACONJ_CEP_CLIENTE'
      EditMask = '!99999\-999;1; '
      Size = 9
    end
    object cdsClienteAVACONJ_FONE_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONE_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteAVACONJ_TEMPORESID_CLIENTE: TStringField
      FieldName = 'AVACONJ_TEMPORESID_CLIENTE'
      Size = 10
    end
    object cdsClienteAVACONJ_TIPOIMOV_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPOIMOV_CLIENTE'
      Size = 1
    end
    object cdsClienteAVACONJ_EMPTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_EMPTRAB_CLIENTE'
      Size = 30
    end
    object cdsClienteAVACONJ_ENDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDTRAB_CLIENTE'
      Size = 40
    end
    object cdsClienteAVACONJ_BAITRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAITRAB_CLIENTE'
    end
    object cdsClienteAVACONJ_CIDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDTRAB_CLIENTE'
    end
    object cdsClienteAVACONJ_ESTTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTTRAB_CLIENTE'
      Size = 2
    end
    object cdsClienteAVACONJ_ADMTRAB_CLIENTE: TDateField
      FieldName = 'AVACONJ_ADMTRAB_CLIENTE'
    end
    object cdsClienteAVACONJ_FUNCAO_CLIENTE: TStringField
      FieldName = 'AVACONJ_FUNCAO_CLIENTE'
    end
    object cdsClienteAVACONJ_CARGO_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARGO_CLIENTE'
    end
    object cdsClienteAVACONJ_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'AVACONJ_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClienteAVACONJ_FONTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONTRAB_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteAVACONJ_REFERENCIA1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA1_CLIENTE'
      Size = 22
    end
    object cdsClienteAVACONJ_REFERENCIA2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA2_CLIENTE'
      Size = 22
    end
    object cdsClienteAVACONJ_REFERENCIA3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA3_CLIENTE'
      Size = 22
    end
    object cdsClientePARENTE_NOME_CLIENTE: TStringField
      FieldName = 'PARENTE_NOME_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 40
    end
    object cdsClientePARENTE_FONE_CLIENTE: TStringField
      FieldName = 'PARENTE_FONE_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClientePARENTE_ENDERECO_CLIENTE: TStringField
      FieldName = 'PARENTE_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClientePARENTE_BAIRRO_CLIENTE: TStringField
      FieldName = 'PARENTE_BAIRRO_CLIENTE'
    end
    object cdsClientePARENTE_CIDADE_CLIENTE: TStringField
      FieldName = 'PARENTE_CIDADE_CLIENTE'
    end
    object cdsClienteDATABASE_CLIENTE: TIntegerField
      FieldName = 'DATABASE_CLIENTE'
    end
    object cdsClienteCONTATO1_CLIENTE: TStringField
      FieldName = 'CONTATO1_CLIENTE'
      Size = 40
    end
    object cdsClienteCONTATO2_CLIENTE: TStringField
      FieldName = 'CONTATO2_CLIENTE'
      Size = 40
    end
    object cdsClienteCONTATO3_CLIENTE: TStringField
      FieldName = 'CONTATO3_CLIENTE'
      Size = 40
    end
    object cdsClienteCONTATO1_FONE__CLIENTE: TStringField
      FieldName = 'CONTATO1_FONE__CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteCONTATO2_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO2_FONE_CLIENTE'
      Size = 13
    end
    object cdsClienteCONTATO3_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO3_FONE_CLIENTE'
      Size = 13
    end
    object cdsClientePAIS_CLIENTE: TStringField
      FieldName = 'PAIS_CLIENTE'
    end
    object cdsClienteREPR_NOME_CLIENTE: TStringField
      FieldName = 'REPR_NOME_CLIENTE'
      Size = 40
    end
    object cdsClienteREPR_FONE_CLIENTE: TStringField
      FieldName = 'REPR_FONE_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 13
    end
    object cdsClienteREPR_CELULAR_CLIENTE: TStringField
      FieldName = 'REPR_CELULAR_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 15
    end
    object cdsClienteREPR_FAX_CLIENTE: TStringField
      FieldName = 'REPR_FAX_CLIENTE'
      EditMask = '!\(99\)9999\-9999;1; '
      Size = 15
    end
    object cdsClienteAVACONJ_REFFONE3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE3_CLIENTE'
      Size = 13
    end
    object cdsClienteAVACONJ_REFFONE2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE2_CLIENTE'
      Size = 13
    end
    object cdsClienteAVACONJ_REFFONE1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE1_CLIENTE'
      Size = 13
    end
    object cdsClienteCOB_CIDADE_CLIENTE: TIntegerField
      FieldName = 'COB_CIDADE_CLIENTE'
    end
    object cdsClienteNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      ProviderFlags = []
      Size = 30
    end
  end
  object qryCentroCusto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CENTRO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 345
    Top = 104
    object qryCentroCustoCODIGO_CENTRO: TIntegerField
      FieldName = 'CODIGO_CENTRO'
      Required = True
    end
    object qryCentroCustoDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
    end
  end
  object dspCentroCusto: TDataSetProvider
    DataSet = qryCentroCusto
    Options = [poAllowCommandText]
    Left = 424
    Top = 104
  end
  object cdsCentroCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCentroCusto'
    Left = 506
    Top = 104
    object cdsCentroCustoCODIGO_CENTRO: TIntegerField
      FieldName = 'CODIGO_CENTRO'
      Required = True
    end
    object cdsCentroCustoDESCRICAO_CENTRO: TStringField
      FieldName = 'DESCRICAO_CENTRO'
    end
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNatureza'
    Left = 506
    Top = 57
    object cdsNaturezaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 4
    end
    object cdsNaturezaCODIGO_NAT: TStringField
      FieldName = 'CODIGO_NAT'
      Size = 4
    end
    object cdsNaturezaOPERACAO_NAT: TStringField
      FieldName = 'OPERACAO_NAT'
      Size = 1
    end
    object cdsNaturezaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      Size = 310
    end
  end
  object dspNatureza: TDataSetProvider
    DataSet = qryNatureza
    Options = [poAllowCommandText]
    Left = 424
    Top = 57
  end
  object qryNatureza: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_NATUREZA  ORDER BY CODIGO_NAT')
    SQLConnection = DmPrincipal.DbConexao
    Left = 345
    Top = 56
    object qryNaturezaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 4
    end
    object qryNaturezaCODIGO_NAT: TStringField
      FieldName = 'CODIGO_NAT'
      Size = 4
    end
    object qryNaturezaOPERACAO_NAT: TStringField
      FieldName = 'OPERACAO_NAT'
      Size = 1
    end
    object qryNaturezaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      Size = 310
    end
  end
  object qryEstados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_ESTADOS ORDER BY CODIGO_ESTADO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 329
    object qryEstadosCODIGO_ESTADO: TStringField
      FieldName = 'CODIGO_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryEstadosNOME_ESTADO: TStringField
      FieldName = 'NOME_ESTADO'
      FixedChar = True
      Size = 25
    end
    object qryEstadosICMS_VD_CT: TFMTBCDField
      FieldName = 'ICMS_VD_CT'
      Precision = 15
      Size = 2
    end
    object qryEstadosICMS_VD_NC: TFMTBCDField
      FieldName = 'ICMS_VD_NC'
      Precision = 15
      Size = 2
    end
  end
  object dspEstados: TDataSetProvider
    DataSet = qryEstados
    Options = [poAllowCommandText]
    Left = 129
    Top = 330
  end
  object cdsEstados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstados'
    Left = 226
    Top = 331
    object cdsEstadosCODIGO_ESTADO: TStringField
      FieldName = 'CODIGO_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsEstadosNOME_ESTADO: TStringField
      FieldName = 'NOME_ESTADO'
      FixedChar = True
      Size = 25
    end
    object cdsEstadosICMS_VD_CT: TFMTBCDField
      FieldName = 'ICMS_VD_CT'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsEstadosICMS_VD_NC: TFMTBCDField
      FieldName = 'ICMS_VD_NC'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
  end
  object cdsImp_OR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspImp_OR'
    Left = 223
    Top = 165
    object StringField1: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object StringField2: TStringField
      FieldName = 'SER_DOC_SERIE'
      Size = 2
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      Precision = 15
      Size = 0
    end
    object StringField3: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
  end
  object dspImp_OR: TDataSetProvider
    DataSet = qryImp_OR
    Options = [poAllowCommandText]
    Left = 131
    Top = 166
  end
  object qryImp_OR: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_SERIE WHERE SERIE_SERIE='#39'OR'#39)
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 165
    object StringField4: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'SER_DOC_SERIE'
      Size = 2
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      Precision = 15
      Size = 0
    end
    object StringField6: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
  end
  object cdsImp_CI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspImp_CI'
    Left = 223
    Top = 213
    object StringField7: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object StringField8: TStringField
      FieldName = 'SER_DOC_SERIE'
      Size = 2
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      Precision = 15
      Size = 0
    end
    object StringField9: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
  end
  object dspImp_CI: TDataSetProvider
    DataSet = qryImp_CI
    Options = [poAllowCommandText]
    Left = 131
    Top = 214
  end
  object qryImp_CI: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_SERIE WHERE SERIE_SERIE='#39'CI'#39)
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 213
    object StringField10: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object StringField11: TStringField
      FieldName = 'SER_DOC_SERIE'
      Size = 2
    end
    object FMTBCDField4: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      Precision = 15
      Size = 0
    end
    object StringField12: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
    end
  end
end
