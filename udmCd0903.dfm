object dmCd0903: TdmCd0903
  OldCreateOrder = False
  Left = 360
  Top = 182
  Height = 215
  Width = 373
  object qryTipoPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_CPAGAMENTO WHERE COD_EMPRESA=:EMPRESA ORDER BY D' +
        'ESCRICAO_CPAGAMENTO ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 41
    Top = 16
    object qryTipoPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryTipoPagamentoCODIGO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_CPAGAMENTO'
      Required = True
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
    object qryTipoPagamentoACRECIMO: TFMTBCDField
      FieldName = 'ACRECIMO'
      Precision = 15
      Size = 2
    end
  end
  object qryPortador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT CODIGO_PORTADOR,DESCRICAO_PORTADOR,TIPO_PORTADOR'
      '  FROM E_PORTADOR ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 72
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
    Left = 168
    Top = 69
  end
  object cdsPortador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPortador'
    Left = 280
    Top = 66
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
  object dspTipoPagamento: TDataSetProvider
    DataSet = qryTipoPagamento
    Left = 168
    Top = 16
  end
  object cdsTipoPagamento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspTipoPagamento'
    Left = 280
    Top = 16
    object cdsTipoPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsTipoPagamentoCODIGO_CPAGAMENTO: TIntegerField
      FieldName = 'CODIGO_CPAGAMENTO'
      Required = True
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
    object cdsTipoPagamentoPRAZO1_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO1_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO2_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO2_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO3_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO3_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO4_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO4_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO5_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO5_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO6_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO6_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO7_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO7_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO8_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO8_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO9_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO9_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO10_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO10_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO11_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO11_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO12_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO12_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO13_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO13_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO14_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO14_CPAGAMENTO'
    end
    object cdsTipoPagamentoPRAZO15_CPAGAMENTO: TIntegerField
      FieldName = 'PRAZO15_CPAGAMENTO'
    end
    object cdsTipoPagamentoPARCELA1_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA1_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA2_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA2_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA3_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA3_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA4_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA4_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA5_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA5_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA6_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA6_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA7_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA7_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA8_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA8_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA9_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA9_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA10_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA10_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA11_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA11_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA12_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA12_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA13_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA13_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA14_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA14_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoPARCELA15_CPAGAMENTO: TFMTBCDField
      FieldName = 'PARCELA15_CPAGAMENTO'
      Precision = 15
      Size = 3
    end
    object cdsTipoPagamentoACRECIMO: TFMTBCDField
      FieldName = 'ACRECIMO'
      Precision = 15
      Size = 2
    end
  end
  object cdsTipoDocumento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoDocumento'
    Left = 280
    Top = 128
    object cdsTipoDocumentoCODIGO_TIPODOCUMENTO: TIntegerField
      FieldName = 'CODIGO_TIPODOCUMENTO'
      Required = True
    end
    object cdsTipoDocumentoDESCRICAO_TIPODOCUMENTO: TStringField
      FieldName = 'DESCRICAO_TIPODOCUMENTO'
    end
  end
  object dspTipoDocumento: TDataSetProvider
    DataSet = qryTipoDocumento
    Left = 169
    Top = 128
  end
  object qryTipoDocumento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_TIPODOCUMENTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 128
    object qryTipoDocumentoCODIGO_TIPODOCUMENTO: TIntegerField
      FieldName = 'CODIGO_TIPODOCUMENTO'
      Required = True
    end
    object qryTipoDocumentoDESCRICAO_TIPODOCUMENTO: TStringField
      FieldName = 'DESCRICAO_TIPODOCUMENTO'
    end
  end
end
