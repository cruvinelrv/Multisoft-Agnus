object dmF8: TdmF8
  OldCreateOrder = False
  Left = 308
  Top = 216
  Height = 139
  Width = 358
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
    Left = 41
    Top = 24
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
    Left = 145
    Top = 23
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
    Left = 249
    Top = 23
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
end
