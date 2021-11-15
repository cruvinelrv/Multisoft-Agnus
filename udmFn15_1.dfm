object dmFn15_1: TdmFn15_1
  OldCreateOrder = False
  Left = 367
  Top = 181
  Height = 169
  Width = 289
  object qryRecibo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cod_empresa'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.codigo_recibo, p.num_doc_recibo, p.tip_doc_recibo, p.em' +
        'is_pgto_recibo,'
      
        '       p.vencimento_recibo, p.valor_recibo, p.juros_desc_recibo,' +
        ' p.valor_pago_recibo,'
      
        '       p.cli_for_recibo, p.favorecido_recibo, p.cnpj_recibo, p.e' +
        'ndereco_recibo,'
      
        '       p.bairro_recibo, p.codigo_cidade, p.estado_recibo, p.hist' +
        'orico_recibo,'
      
        '       c.descricao_cidade, c1.nome_cliente, p.cod_empresa,  p.hi' +
        'storico2_recibo'
      'from P_RECIBO p'
      
        '     left outer join e_cidade c on (c.codigo_cidade = p.codigo_c' +
        'idade)'
      
        '     left outer join e_cliente c1 on (c1.codigo_cliente = p.cli_' +
        'for_recibo)'
      'where p.cod_empresa =:cod_empresa')
    SQLConnection = DmPrincipal.DbConexao
    Left = 31
    Top = 16
    object qryReciboCODIGO_RECIBO: TIntegerField
      FieldName = 'CODIGO_RECIBO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryReciboNUM_DOC_RECIBO: TStringField
      FieldName = 'NUM_DOC_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qryReciboTIP_DOC_RECIBO: TStringField
      FieldName = 'TIP_DOC_RECIBO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryReciboEMIS_PGTO_RECIBO: TDateField
      FieldName = 'EMIS_PGTO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboVENCIMENTO_RECIBO: TDateField
      FieldName = 'VENCIMENTO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboVALOR_RECIBO: TFMTBCDField
      FieldName = 'VALOR_RECIBO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReciboJUROS_DESC_RECIBO: TFMTBCDField
      FieldName = 'JUROS_DESC_RECIBO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReciboVALOR_PAGO_RECIBO: TFMTBCDField
      FieldName = 'VALOR_PAGO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryReciboCLI_FOR_RECIBO: TIntegerField
      FieldName = 'CLI_FOR_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboFAVORECIDO_RECIBO: TStringField
      FieldName = 'FAVORECIDO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryReciboCNPJ_RECIBO: TStringField
      FieldName = 'CNPJ_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object qryReciboENDERECO_RECIBO: TStringField
      FieldName = 'ENDERECO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryReciboBAIRRO_RECIBO: TStringField
      FieldName = 'BAIRRO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object qryReciboESTADO_RECIBO: TStringField
      FieldName = 'ESTADO_RECIBO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qryReciboHISTORICO_RECIBO: TMemoField
      FieldName = 'HISTORICO_RECIBO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryReciboDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object qryReciboNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qryReciboCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryReciboHISTORICO2_RECIBO: TMemoField
      FieldName = 'HISTORICO2_RECIBO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspRecibo: TDataSetProvider
    DataSet = qryRecibo
    Left = 119
    Top = 16
  end
  object cdsRecibo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspRecibo'
    Left = 208
    Top = 16
    object cdsReciboCODIGO_RECIBO: TIntegerField
      FieldName = 'CODIGO_RECIBO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsReciboNUM_DOC_RECIBO: TStringField
      FieldName = 'NUM_DOC_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsReciboTIP_DOC_RECIBO: TStringField
      FieldName = 'TIP_DOC_RECIBO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsReciboEMIS_PGTO_RECIBO: TDateField
      FieldName = 'EMIS_PGTO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboVENCIMENTO_RECIBO: TDateField
      FieldName = 'VENCIMENTO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboVALOR_RECIBO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_RECIBO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsReciboJUROS_DESC_RECIBO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'JUROS_DESC_RECIBO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsReciboVALOR_PAGO_RECIBO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_PAGO_RECIBO'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsReciboCLI_FOR_RECIBO: TIntegerField
      FieldName = 'CLI_FOR_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboFAVORECIDO_RECIBO: TStringField
      FieldName = 'FAVORECIDO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsReciboCNPJ_RECIBO: TStringField
      FieldName = 'CNPJ_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsReciboENDERECO_RECIBO: TStringField
      FieldName = 'ENDERECO_RECIBO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsReciboBAIRRO_RECIBO: TStringField
      FieldName = 'BAIRRO_RECIBO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsReciboESTADO_RECIBO: TStringField
      FieldName = 'ESTADO_RECIBO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsReciboHISTORICO_RECIBO: TMemoField
      FieldName = 'HISTORICO_RECIBO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsReciboDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object cdsReciboNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsReciboCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsReciboHISTORICO2_RECIBO: TMemoField
      FieldName = 'HISTORICO2_RECIBO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
  end
end
