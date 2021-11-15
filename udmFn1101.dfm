object dmFn1101: TdmFn1101
  OldCreateOrder = False
  Left = 240
  Top = 107
  Height = 574
  Width = 538
  object qryEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select e.codigo_emp, e.ser_pad_emp, e.qtd_pro_emp, e.linha1_emp,' +
        ' e.linha2_emp,'
      
        '       e.linha3_emp, e.linha4_emp, e.linha5_emp, e.linha6_emp, e' +
        '.linha7_emp,'
      
        '       e.linha8_emp, e.linha9_emp, e.linha10_emp, e.porta_ecf_em' +
        'p, e.aliq01_emp,'
      
        '       e.aliq02_emp, e.aliq03_emp, e.aliq04_emp, e.aliq05_emp, e' +
        '.aliq06_emp,'
      
        '       e.aliq07_emp, e.aliq08_emp, e.valor04_emp, e.valor05_emp,' +
        ' e.valor06_emp,'
      
        '       e.valor07_emp, e.valor08_emp, e.model_ecf_emp, e.cup_anex' +
        '_emp, e.mode_bema_emp,'
      '       e.nf_serv_emp, e.decimal_emp'
      'from EMPRESA e'
      'where e.codigo_emp =:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 9
    object qryEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object qryEmpresaSER_PAD_EMP: TStringField
      FieldName = 'SER_PAD_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryEmpresaQTD_PRO_EMP: TIntegerField
      FieldName = 'QTD_PRO_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object qryEmpresaLINHA1_EMP: TStringField
      FieldName = 'LINHA1_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object qryEmpresaLINHA2_EMP: TStringField
      FieldName = 'LINHA2_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object qryEmpresaLINHA3_EMP: TStringField
      FieldName = 'LINHA3_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object qryEmpresaLINHA4_EMP: TStringField
      FieldName = 'LINHA4_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object qryEmpresaLINHA5_EMP: TStringField
      FieldName = 'LINHA5_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object qryEmpresaLINHA6_EMP: TStringField
      FieldName = 'LINHA6_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object qryEmpresaLINHA7_EMP: TStringField
      FieldName = 'LINHA7_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object qryEmpresaLINHA8_EMP: TStringField
      FieldName = 'LINHA8_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object qryEmpresaLINHA9_EMP: TStringField
      FieldName = 'LINHA9_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object qryEmpresaLINHA10_EMP: TStringField
      FieldName = 'LINHA10_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object qryEmpresaPORTA_ECF_EMP: TStringField
      FieldName = 'PORTA_ECF_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryEmpresaALIQ01_EMP: TStringField
      FieldName = 'ALIQ01_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryEmpresaALIQ02_EMP: TStringField
      FieldName = 'ALIQ02_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryEmpresaALIQ03_EMP: TStringField
      FieldName = 'ALIQ03_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryEmpresaALIQ04_EMP: TStringField
      FieldName = 'ALIQ04_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryEmpresaALIQ05_EMP: TStringField
      FieldName = 'ALIQ05_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryEmpresaALIQ06_EMP: TStringField
      FieldName = 'ALIQ06_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryEmpresaALIQ07_EMP: TStringField
      FieldName = 'ALIQ07_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryEmpresaALIQ08_EMP: TStringField
      FieldName = 'ALIQ08_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryEmpresaVALOR04_EMP: TFMTBCDField
      FieldName = 'VALOR04_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEmpresaVALOR05_EMP: TFMTBCDField
      FieldName = 'VALOR05_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEmpresaVALOR06_EMP: TFMTBCDField
      FieldName = 'VALOR06_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEmpresaVALOR07_EMP: TFMTBCDField
      FieldName = 'VALOR07_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEmpresaVALOR08_EMP: TFMTBCDField
      FieldName = 'VALOR08_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEmpresaMODEL_ECF_EMP: TStringField
      FieldName = 'MODEL_ECF_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryEmpresaCUP_ANEX_EMP: TStringField
      FieldName = 'CUP_ANEX_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryEmpresaMODE_BEMA_EMP: TStringField
      FieldName = 'MODE_BEMA_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryEmpresaNF_SERV_EMP: TStringField
      FieldName = 'NF_SERV_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryEmpresaDECIMAL_EMP: TIntegerField
      FieldName = 'DECIMAL_EMP'
      ProviderFlags = [pfInUpdate]
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Left = 120
    Top = 9
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
    Left = 209
    Top = 10
    object cdsEmpresaCODIGO_EMP: TIntegerField
      FieldName = 'CODIGO_EMP'
      Required = True
    end
    object cdsEmpresaSER_PAD_EMP: TStringField
      FieldName = 'SER_PAD_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsEmpresaQTD_PRO_EMP: TIntegerField
      FieldName = 'QTD_PRO_EMP'
      ProviderFlags = [pfInUpdate]
    end
    object cdsEmpresaLINHA1_EMP: TStringField
      FieldName = 'LINHA1_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object cdsEmpresaLINHA2_EMP: TStringField
      FieldName = 'LINHA2_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object cdsEmpresaLINHA3_EMP: TStringField
      FieldName = 'LINHA3_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 72
    end
    object cdsEmpresaLINHA4_EMP: TStringField
      FieldName = 'LINHA4_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object cdsEmpresaLINHA5_EMP: TStringField
      FieldName = 'LINHA5_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object cdsEmpresaLINHA6_EMP: TStringField
      FieldName = 'LINHA6_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object cdsEmpresaLINHA7_EMP: TStringField
      FieldName = 'LINHA7_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object cdsEmpresaLINHA8_EMP: TStringField
      FieldName = 'LINHA8_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object cdsEmpresaLINHA9_EMP: TStringField
      FieldName = 'LINHA9_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object cdsEmpresaLINHA10_EMP: TStringField
      FieldName = 'LINHA10_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 48
    end
    object cdsEmpresaPORTA_ECF_EMP: TStringField
      FieldName = 'PORTA_ECF_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEmpresaALIQ01_EMP: TStringField
      FieldName = 'ALIQ01_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEmpresaALIQ02_EMP: TStringField
      FieldName = 'ALIQ02_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEmpresaALIQ03_EMP: TStringField
      FieldName = 'ALIQ03_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEmpresaALIQ04_EMP: TStringField
      FieldName = 'ALIQ04_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEmpresaALIQ05_EMP: TStringField
      FieldName = 'ALIQ05_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEmpresaALIQ06_EMP: TStringField
      FieldName = 'ALIQ06_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEmpresaALIQ07_EMP: TStringField
      FieldName = 'ALIQ07_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEmpresaALIQ08_EMP: TStringField
      FieldName = 'ALIQ08_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsEmpresaVALOR04_EMP: TFMTBCDField
      FieldName = 'VALOR04_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEmpresaVALOR05_EMP: TFMTBCDField
      FieldName = 'VALOR05_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEmpresaVALOR06_EMP: TFMTBCDField
      FieldName = 'VALOR06_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEmpresaVALOR07_EMP: TFMTBCDField
      FieldName = 'VALOR07_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEmpresaVALOR08_EMP: TFMTBCDField
      FieldName = 'VALOR08_EMP'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEmpresaMODEL_ECF_EMP: TStringField
      FieldName = 'MODEL_ECF_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEmpresaCUP_ANEX_EMP: TStringField
      FieldName = 'CUP_ANEX_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEmpresaMODE_BEMA_EMP: TStringField
      FieldName = 'MODE_BEMA_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEmpresaNF_SERV_EMP: TStringField
      FieldName = 'NF_SERV_EMP'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsEmpresaDECIMAL_EMP: TIntegerField
      FieldName = 'DECIMAL_EMP'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.codigo_cliente, c.nome_cliente, c.fantasia_cliente, c.e' +
        'stado_cliente,'
      
        '       c.inscricao_cliente, c.insc_mun_cliente, c.endereco_clien' +
        'te, c.bairro_cliente,'
      
        '       c.cidade_cliente, c.cep_cliente, c.telefone_cliente, c.fa' +
        'x_cliente, c.cnpj_cliente,'
      
        '       p.estado_pro, p.inscest_pro, p.endereco_pro, p.bairro_pro' +
        ', p.cep_pro, p.cidade_pro,'
      '       c1.descricao_cidade, c.tipopessoa_cliente'
      'from E_CLIENTE  c'
      
        '     left outer join e_propriedade p on (c.codigo_cliente = p.cl' +
        'iente_pro)'
      
        '     left outer join e_cidade c1 on (c.cidade_cliente = c1.codig' +
        'o_cidade)'
      'where c.codigo_cliente =:CODIGO_CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 112
    object qryClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryClienteFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryClienteESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryClienteINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qryClienteINSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryClienteENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryClienteBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qryClienteCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryClienteCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object qryClienteTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object qryClienteFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object qryClienteCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object qryClienteESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      ProviderFlags = []
      Size = 2
    end
    object qryClienteINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      ProviderFlags = []
      Size = 18
    end
    object qryClienteENDERECO_PRO: TStringField
      FieldName = 'ENDERECO_PRO'
      ProviderFlags = []
      Size = 40
    end
    object qryClienteBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
      ProviderFlags = []
    end
    object qryClienteCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      ProviderFlags = []
      Size = 9
    end
    object qryClienteCIDADE_PRO: TIntegerField
      FieldName = 'CIDADE_PRO'
      ProviderFlags = []
    end
    object qryClienteDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object qryClienteTIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Left = 120
    Top = 112
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspCliente'
    Left = 209
    Top = 112
    object cdsClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsClienteFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsClienteESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsClienteINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteINSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsClienteENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsClienteBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsClienteCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsClienteCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsClienteTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsClienteFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsClienteCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object cdsClienteESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      ProviderFlags = []
      Size = 2
    end
    object cdsClienteINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      ProviderFlags = []
      Size = 18
    end
    object cdsClienteENDERECO_PRO: TStringField
      FieldName = 'ENDERECO_PRO'
      ProviderFlags = []
      Size = 40
    end
    object cdsClienteBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
      ProviderFlags = []
    end
    object cdsClienteCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      ProviderFlags = []
      Size = 9
    end
    object cdsClienteCIDADE_PRO: TIntegerField
      FieldName = 'CIDADE_PRO'
      ProviderFlags = []
    end
    object cdsClienteDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object cdsClienteTIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object qryFatura: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_FATURA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select f.codigo_fatura, f.codigo_cliente_fatura, f.propriedade_f' +
        'atura,'
      
        '       f.serie_fatura, f.cfop_fatura, f.emissao_fatura, f.notafi' +
        'scal_fatura,'
      
        '       f.valor_fatura, f.vendedor_01_fatura, f.vencimento_01_fat' +
        'ura,'
      
        '       f.valor_01_fatura, f.vencimento_02_fatura, f.valor_02_fat' +
        'ura,'
      
        '       f.vendedor_02_fatura, f.vencimento_03_fatura, f.valor_03_' +
        'fatura,'
      
        '       f.vendedor_03_fatura, f.vencimento_04_fatura, f.valor_04_' +
        'fatura,'
      
        '       f.vendedor_04_fatura, f.vencimento_05_fatura, f.valor_05_' +
        'fatura,'
      
        '       f.vendedor_05_fatura, f.vencimento_06_fatura, f.valor_06_' +
        'fatura,'
      
        '       f.vendedor_06_fatura, f.vencimento_07_fatura, f.valor_07_' +
        'fatura,'
      
        '       f.vendedor_07_fatura, f.vencimento_08_fatura, f.valor_08_' +
        'fatura,'
      
        '       f.vendedor_08_fatura, f.vencimento_09_fatura, f.valor_09_' +
        'fatura,'
      
        '       f.vendedor_09_fatura, f.vencimento_10_fatura, f.valor_10_' +
        'fatura,'
      '       f.vendedor_10_fatura, f.cod_empresa'
      'from P_FATURA f'
      'where f.codigo_fatura =:CODIGO_FATURA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 218
    object qryFaturaCODIGO_FATURA: TIntegerField
      FieldName = 'CODIGO_FATURA'
      Required = True
    end
    object qryFaturaCODIGO_CLIENTE_FATURA: TIntegerField
      FieldName = 'CODIGO_CLIENTE_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaPROPRIEDADE_FATURA: TIntegerField
      FieldName = 'PROPRIEDADE_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaSERIE_FATURA: TStringField
      FieldName = 'SERIE_FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryFaturaCFOP_FATURA: TStringField
      FieldName = 'CFOP_FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryFaturaEMISSAO_FATURA: TDateField
      FieldName = 'EMISSAO_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaNOTAFISCAL_FATURA: TIntegerField
      FieldName = 'NOTAFISCAL_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_FATURA: TFMTBCDField
      FieldName = 'VALOR_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_01_FATURA: TIntegerField
      FieldName = 'VENDEDOR_01_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVENCIMENTO_01_FATURA: TDateField
      FieldName = 'VENCIMENTO_01_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_01_FATURA: TFMTBCDField
      FieldName = 'VALOR_01_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENCIMENTO_02_FATURA: TDateField
      FieldName = 'VENCIMENTO_02_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_02_FATURA: TFMTBCDField
      FieldName = 'VALOR_02_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_02_FATURA: TIntegerField
      FieldName = 'VENDEDOR_02_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVENCIMENTO_03_FATURA: TDateField
      FieldName = 'VENCIMENTO_03_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_03_FATURA: TFMTBCDField
      FieldName = 'VALOR_03_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_03_FATURA: TIntegerField
      FieldName = 'VENDEDOR_03_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVENCIMENTO_04_FATURA: TDateField
      FieldName = 'VENCIMENTO_04_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_04_FATURA: TFMTBCDField
      FieldName = 'VALOR_04_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_04_FATURA: TIntegerField
      FieldName = 'VENDEDOR_04_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVENCIMENTO_05_FATURA: TDateField
      FieldName = 'VENCIMENTO_05_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_05_FATURA: TFMTBCDField
      FieldName = 'VALOR_05_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_05_FATURA: TIntegerField
      FieldName = 'VENDEDOR_05_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVENCIMENTO_06_FATURA: TDateField
      FieldName = 'VENCIMENTO_06_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_06_FATURA: TFMTBCDField
      FieldName = 'VALOR_06_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_06_FATURA: TIntegerField
      FieldName = 'VENDEDOR_06_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVENCIMENTO_07_FATURA: TDateField
      FieldName = 'VENCIMENTO_07_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_07_FATURA: TFMTBCDField
      FieldName = 'VALOR_07_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_07_FATURA: TIntegerField
      FieldName = 'VENDEDOR_07_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVENCIMENTO_08_FATURA: TDateField
      FieldName = 'VENCIMENTO_08_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_08_FATURA: TFMTBCDField
      FieldName = 'VALOR_08_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_08_FATURA: TIntegerField
      FieldName = 'VENDEDOR_08_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVENCIMENTO_09_FATURA: TDateField
      FieldName = 'VENCIMENTO_09_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_09_FATURA: TFMTBCDField
      FieldName = 'VALOR_09_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_09_FATURA: TIntegerField
      FieldName = 'VENDEDOR_09_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVENCIMENTO_10_FATURA: TDateField
      FieldName = 'VENCIMENTO_10_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaVALOR_10_FATURA: TFMTBCDField
      FieldName = 'VALOR_10_FATURA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryFaturaVENDEDOR_10_FATURA: TIntegerField
      FieldName = 'VENDEDOR_10_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object dspFatura: TDataSetProvider
    DataSet = qryFatura
    Left = 120
    Top = 218
  end
  object cdsFatura: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_FATURA'
        ParamType = ptInput
      end>
    ProviderName = 'dspFatura'
    Left = 208
    Top = 218
    object cdsFaturaCODIGO_FATURA: TIntegerField
      FieldName = 'CODIGO_FATURA'
      Required = True
    end
    object cdsFaturaCODIGO_CLIENTE_FATURA: TIntegerField
      FieldName = 'CODIGO_CLIENTE_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaPROPRIEDADE_FATURA: TIntegerField
      FieldName = 'PROPRIEDADE_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaSERIE_FATURA: TStringField
      FieldName = 'SERIE_FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsFaturaCFOP_FATURA: TStringField
      FieldName = 'CFOP_FATURA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsFaturaEMISSAO_FATURA: TDateField
      FieldName = 'EMISSAO_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaNOTAFISCAL_FATURA: TIntegerField
      FieldName = 'NOTAFISCAL_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_01_FATURA: TIntegerField
      FieldName = 'VENDEDOR_01_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVENCIMENTO_01_FATURA: TDateField
      FieldName = 'VENCIMENTO_01_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_01_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_01_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENCIMENTO_02_FATURA: TDateField
      FieldName = 'VENCIMENTO_02_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_02_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_02_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_02_FATURA: TIntegerField
      FieldName = 'VENDEDOR_02_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVENCIMENTO_03_FATURA: TDateField
      FieldName = 'VENCIMENTO_03_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_03_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_03_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_03_FATURA: TIntegerField
      FieldName = 'VENDEDOR_03_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVENCIMENTO_04_FATURA: TDateField
      FieldName = 'VENCIMENTO_04_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_04_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_04_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_04_FATURA: TIntegerField
      FieldName = 'VENDEDOR_04_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVENCIMENTO_05_FATURA: TDateField
      FieldName = 'VENCIMENTO_05_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_05_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_05_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_05_FATURA: TIntegerField
      FieldName = 'VENDEDOR_05_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVENCIMENTO_06_FATURA: TDateField
      FieldName = 'VENCIMENTO_06_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_06_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_06_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_06_FATURA: TIntegerField
      FieldName = 'VENDEDOR_06_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVENCIMENTO_07_FATURA: TDateField
      FieldName = 'VENCIMENTO_07_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_07_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_07_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_07_FATURA: TIntegerField
      FieldName = 'VENDEDOR_07_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVENCIMENTO_08_FATURA: TDateField
      FieldName = 'VENCIMENTO_08_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_08_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_08_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_08_FATURA: TIntegerField
      FieldName = 'VENDEDOR_08_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVENCIMENTO_09_FATURA: TDateField
      FieldName = 'VENCIMENTO_09_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_09_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_09_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_09_FATURA: TIntegerField
      FieldName = 'VENDEDOR_09_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVENCIMENTO_10_FATURA: TDateField
      FieldName = 'VENCIMENTO_10_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaVALOR_10_FATURA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR_10_FATURA'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsFaturaVENDEDOR_10_FATURA: TIntegerField
      FieldName = 'VENDEDOR_10_FATURA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsFaturaCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
  end
  object qryVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SERIE2'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'select v.codigo_venda, v.vendedor_venda, v.cliente_venda, v.prop' +
        'riedade_venda,'
      
        '       v.nomecliente_venda, v.serie_venda, v.cfop_venda, n.descr' +
        'icao_nat,'
      
        '       v.emissao_venda, v.cpagamento_venda, c.descricao_cpagamen' +
        'to, v.valornota_venda,'
      
        '       v.notafiscal_venda, v.data_venda, v.desconto_venda, v.fat' +
        'ura_venda, c1.estado_cliente,'
      
        '       c1.contribuinte_cliente, v.nrfatura_venda, v1.nome_vended' +
        'or, c.caixa_cpagamento'
      'from P_VENDAS v'
      
        '     left outer join e_natureza n on (v.cfop_venda = n.codigo_na' +
        't)'
      
        '     left outer join p_cpagamento c on (v.cpagamento_venda = c.c' +
        'odigo_cpagamento)'
      
        '     left outer join e_cliente c1 on (v.cliente_venda = c1.codig' +
        'o_cliente)'
      
        '     left outer join p_vendedor v1 on (v.vendedor_venda = v1.cod' +
        'igo_vendedor)'
      'where v.cliente_venda =:CODIGO_CLIENTE'
      'and ((v.nrfatura_venda = 0) or (v.nrfatura_venda is null))'
      'and ((v.serie_venda =:SERIE1) or (v.serie_venda =:SERIE2))')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 273
    object qryVendaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendaVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendaCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendaPROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendaNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryVendaSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryVendaCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object qryVendaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      ProviderFlags = []
      Size = 310
    end
    object qryVendaEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendaCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object qryVendaDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qryVendaVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendaNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryVendaFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendaESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      ProviderFlags = []
      Size = 2
    end
    object qryVendaCONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      ProviderFlags = []
      Size = 1
    end
    object qryVendaNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object qryVendaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 30
    end
    object qryVendaCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
      ProviderFlags = []
    end
  end
  object dspVenda: TDataSetProvider
    DataSet = qryVenda
    Left = 120
    Top = 274
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'SERIE2'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVenda'
    Left = 208
    Top = 274
    object cdsVendaCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendaVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaPROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cdsVendaSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsVendaCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object cdsVendaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      ProviderFlags = []
      Size = 310
    end
    object cdsVendaEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object cdsVendaDESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsVendaVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendaNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsVendaFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendaESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      ProviderFlags = []
      Size = 2
    end
    object cdsVendaCONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      ProviderFlags = []
      Size = 1
    end
    object cdsVendaNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsVendaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      ProviderFlags = []
      Size = 30
    end
    object cdsVendaCAIXA_CPAGAMENTO: TIntegerField
      FieldName = 'CAIXA_CPAGAMENTO'
      ProviderFlags = []
    end
  end
  object qryConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 299
    Top = 109
  end
  object cdsGrid: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 460
    Top = 110
    Data = {
      250100009619E0BD01000000180000000A000000000003000000250109434F44
      5F56454E444104000100000000000B53455249455F56454E4441010049000000
      0100055749445448020002001400104E4F544146495343414C5F56454E444104
      000100000000000A444154415F56454E444104000600000000000D434C49454E
      54455F56454E444104000100000000000C4E4F4D455F434C49454E5445010049
      000000010005574944544802000200FA000B56414C4F525F56454E4441080004
      000000000010464F524D41504147544F5F56454E444104000100000000001446
      4F524D41504147544F5F44455343524943414F01004900000001000557494454
      4802000200FA000B53454C4543494F4E41444F01004900000001000557494454
      480200020014000000}
    object cdsGridCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsGridSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
    end
    object cdsGridNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsGridDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsGridCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsGridNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 250
    end
    object cdsGridVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
    end
    object cdsGridFORMAPAGTO_VENDA: TIntegerField
      FieldName = 'FORMAPAGTO_VENDA'
    end
    object cdsGridFORMAPAGTO_DESCRICAO: TStringField
      FieldName = 'FORMAPAGTO_DESCRICAO'
      Size = 250
    end
    object cdsGridSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
    end
  end
  object cdsItemVenda_Imp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ESTADO_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'PRODUTO_COD'
        DataType = ftInteger
      end
      item
        Name = 'PRODUTO_DESCRI'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'FABRICANTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'REDUTOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ORDEM'
        DataType = ftInteger
      end
      item
        Name = 'TRIBUTACAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CLASSE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COD_IVENDA'
        DataType = ftInteger
      end
      item
        Name = 'CFOP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ICM'
        DataType = ftFloat
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'DESCONTO'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 462
    Top = 161
    Data = {
      710100009619E0BD01000000180000000F00000000000300000071010E455354
      41444F5F434C49454E544504000100000000000B50524F4455544F5F434F4404
      000100000000000E50524F4455544F5F44455343524901004900000001000557
      494454480200020064000556414C4F5208000400000000000A46414252494341
      4E544501004900000001000557494454480200020064000752454455544F5201
      00490000000100055749445448020002001400054F5244454D04000100000000
      000A5452494255544143414F0100490000000100055749445448020002001400
      06434C41535345010049000000010005574944544802000200140007554E4944
      41444501004900000001000557494454480200020014000A434F445F4956454E
      444104000100000000000443464F500100490000000100055749445448020002
      0014000349434D08000400000000000A5155414E544944414445080004000000
      000008444553434F4E544F08000400000000000000}
    object cdsItemVenda_ImpESTADO_CLIENTE: TIntegerField
      FieldName = 'ESTADO_CLIENTE'
    end
    object cdsItemVenda_ImpPRODUTO_COD: TIntegerField
      FieldName = 'PRODUTO_COD'
    end
    object cdsItemVenda_ImpPRODUTO_DESCRI: TStringField
      FieldName = 'PRODUTO_DESCRI'
      Size = 100
    end
    object cdsItemVenda_ImpVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsItemVenda_ImpFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 100
    end
    object cdsItemVenda_ImpREDUTOR: TStringField
      FieldName = 'REDUTOR'
    end
    object cdsItemVenda_ImpORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsItemVenda_ImpTRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
    end
    object cdsItemVenda_ImpCLASSE: TStringField
      FieldName = 'CLASSE'
    end
    object cdsItemVenda_ImpUNIDADE: TStringField
      FieldName = 'UNIDADE'
    end
    object cdsItemVenda_ImpCOD_IVENDA: TIntegerField
      FieldName = 'COD_IVENDA'
    end
    object cdsItemVenda_ImpCFOP: TStringField
      FieldName = 'CFOP'
    end
    object cdsItemVenda_ImpICM: TFloatField
      FieldName = 'ICM'
    end
    object cdsItemVenda_ImpQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsItemVenda_ImpDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
  end
  object cdsItemVenda_Temp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'COD_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'COD_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'VALOR_BRUTO'
        DataType = ftFloat
      end
      item
        Name = 'ICM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REDUTOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TRIBUTACAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SERIE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CFOP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftFloat
      end
      item
        Name = 'DESCONTO'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 462
    Top = 211
    Data = {
      FE0000009619E0BD01000000180000000A000000000003000000FE0009434F44
      5F56454E444104000100000000000B434F445F50524F4455544F040001000000
      00000B56414C4F525F425255544F08000400000000000349434D010049000000
      01000557494454480200020014000752454455544F5201004900000001000557
      494454480200020014000A5452494255544143414F0100490000000100055749
      4454480200020014000553455249450100490000000100055749445448020002
      0014000443464F5001004900000001000557494454480200020014000A515541
      4E544944414445080004000000000008444553434F4E544F0800040000000000
      0000}
    object cdsItemVenda_TempCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsItemVenda_TempCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object cdsItemVenda_TempVALOR_BRUTO: TFloatField
      FieldName = 'VALOR_BRUTO'
    end
    object cdsItemVenda_TempICM: TStringField
      FieldName = 'ICM'
    end
    object cdsItemVenda_TempREDUTOR: TStringField
      FieldName = 'REDUTOR'
    end
    object cdsItemVenda_TempTRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
    end
    object cdsItemVenda_TempSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsItemVenda_TempCFOP: TStringField
      FieldName = 'CFOP'
    end
    object cdsItemVenda_TempQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object cdsItemVenda_TempDESCONTO: TFloatField
      FieldName = 'DESCONTO'
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
      
        '          v.icm_ivendas, v.redutor_ivendas, v.tributacao_ivendas' +
        ', v.serie_ivendas,'
      '          v.desconto_ivendas'
      'from P_VENDAS_ITENS v'
      'where v.codigo_ivenda =:CODIGO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
    Top = 377
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
    Left = 122
    Top = 377
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
    Left = 209
    Top = 377
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
    Params = <
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.codigo_produto, p.precounit_produto, p.classe_produto, ' +
        'p.redu_fora_produto,'
      
        '       p.trib_dentro_produto, p.trib_fora_produto, p.icmsub_prod' +
        'uto, p.descricao_produto,'
      
        '       p.fabricante_produto, p.unidade_produto, p.icmsaida_produ' +
        'to, p.redu_dentr_produto,'
      '       p.trib_u_a_produto, p.trib_f_a_produto'
      'from P_PRODUTOS p'
      'where p.codigo_produto =:PRODUTO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
    Top = 429
    object qryProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object qryProdutosPRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qryProdutosCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryProdutosREDU_FORA_PRODUTO: TFMTBCDField
      FieldName = 'REDU_FORA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qryProdutosTRIB_DENTRO_PRODUTO: TStringField
      FieldName = 'TRIB_DENTRO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryProdutosTRIB_FORA_PRODUTO: TStringField
      FieldName = 'TRIB_FORA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryProdutosICMSUB_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryProdutosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object qryProdutosFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qryProdutosUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object qryProdutosICMSAIDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryProdutosREDU_DENTR_PRODUTO: TFMTBCDField
      FieldName = 'REDU_DENTR_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object qryProdutosTRIB_U_A_PRODUTO: TStringField
      FieldName = 'TRIB_U_A_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qryProdutosTRIB_F_A_PRODUTO: TStringField
      FieldName = 'TRIB_F_A_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = qryProdutos
    Left = 122
    Top = 428
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspProdutos'
    Left = 210
    Top = 428
    object cdsProdutosCODIGO_PRODUTO: TIntegerField
      FieldName = 'CODIGO_PRODUTO'
      Required = True
    end
    object cdsProdutosPRECOUNIT_PRODUTO: TFMTBCDField
      FieldName = 'PRECOUNIT_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsProdutosCLASSE_PRODUTO: TIntegerField
      FieldName = 'CLASSE_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsProdutosREDU_FORA_PRODUTO: TFMTBCDField
      FieldName = 'REDU_FORA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsProdutosTRIB_DENTRO_PRODUTO: TStringField
      FieldName = 'TRIB_DENTRO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsProdutosTRIB_FORA_PRODUTO: TStringField
      FieldName = 'TRIB_FORA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsProdutosICMSUB_PRODUTO: TFMTBCDField
      FieldName = 'ICMSUB_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsProdutosDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 40
    end
    object cdsProdutosFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsProdutosUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
    object cdsProdutosICMSAIDA_PRODUTO: TFMTBCDField
      FieldName = 'ICMSAIDA_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsProdutosREDU_DENTR_PRODUTO: TFMTBCDField
      FieldName = 'REDU_DENTR_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 4
    end
    object cdsProdutosTRIB_U_A_PRODUTO: TStringField
      FieldName = 'TRIB_U_A_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object cdsProdutosTRIB_F_A_PRODUTO: TStringField
      FieldName = 'TRIB_F_A_PRODUTO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
  end
  object qryVenda2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select v.codigo_venda, v.vendedor_venda, v.cliente_venda, v.prop' +
        'riedade_venda,'
      
        '       v.nomecliente_venda, v.serie_venda, v.cfop_venda, n.descr' +
        'icao_nat,'
      
        '       v.emissao_venda, v.cpagamento_venda, c.descricao_cpagamen' +
        'to, v.valornota_venda,'
      
        '       v.notafiscal_venda , v.data_venda , v.desconto_venda, v.f' +
        'atura_venda,'
      '       v.nrfatura_venda'
      'from P_VENDAS v'
      
        '     left outer join e_natureza n on (v.cfop_venda = n.codigo_na' +
        't)'
      
        '     left outer join p_cpagamento c on (v.cpagamento_venda = c.c' +
        'odigo_cpagamento)'
      'where  v.codigo_venda =:CODIGO_VENDA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
    Top = 329
    object qryVenda2CODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVenda2VENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVenda2CLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryVenda2PROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object qryVenda2NOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object qryVenda2SERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVenda2CFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object qryVenda2DESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      ProviderFlags = []
      Size = 310
    end
    object qryVenda2EMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object qryVenda2CPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object qryVenda2DESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qryVenda2VALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVenda2NOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVenda2DATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryVenda2DESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVenda2FATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVenda2NRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
  end
  object dspVenda2: TDataSetProvider
    DataSet = qryVenda2
    Left = 123
    Top = 328
  end
  object cdsVenda2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspVenda2'
    Left = 211
    Top = 327
    object cdsVenda2CODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVenda2VENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVenda2CLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVenda2PROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object cdsVenda2NOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object cdsVenda2SERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVenda2CFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsVenda2DESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      ProviderFlags = []
      Size = 310
    end
    object cdsVenda2EMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsVenda2CPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsVenda2DESCRICAO_CPAGAMENTO: TStringField
      FieldName = 'DESCRICAO_CPAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsVenda2VALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVenda2NOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVenda2DATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsVenda2DESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVenda2FATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVenda2NRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
  end
  object qryEstado: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO_ESTADO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select e.codigo_estado, e.nome_estado, e.icms_vd_ct, e.icms_vd_n' +
        'c'
      'from E_ESTADOS e'
      'where e.codigo_estado =:CODIGO_ESTADO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 61
    object qryEstadoCODIGO_ESTADO: TStringField
      FieldName = 'CODIGO_ESTADO'
      FixedChar = True
      Size = 2
    end
    object qryEstadoNOME_ESTADO: TStringField
      FieldName = 'NOME_ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object qryEstadoICMS_VD_CT: TFMTBCDField
      FieldName = 'ICMS_VD_CT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object qryEstadoICMS_VD_NC: TFMTBCDField
      FieldName = 'ICMS_VD_NC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object dspEstado: TDataSetProvider
    DataSet = qryEstado
    Left = 121
    Top = 59
  end
  object cdsEstado: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO_ESTADO'
        ParamType = ptInput
      end>
    ProviderName = 'dspEstado'
    Left = 209
    Top = 60
    object cdsEstadoCODIGO_ESTADO: TStringField
      FieldName = 'CODIGO_ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsEstadoNOME_ESTADO: TStringField
      FieldName = 'NOME_ESTADO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 25
    end
    object cdsEstadoICMS_VD_CT: TFMTBCDField
      FieldName = 'ICMS_VD_CT'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object cdsEstadoICMS_VD_NC: TFMTBCDField
      FieldName = 'ICMS_VD_NC'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
  end
  object qryPropriedade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select p.cliente_pro, p.descricao_pro, p.bairro_pro, p.cep_pro, ' +
        'p.cidade_pro,'
      
        '       c.descricao_cidade, p.fone_pro, p.estado_pro, p.inscest_p' +
        'ro'
      'from E_PROPRIEDADE p'
      
        '     left outer join e_cidade c on (p.cidade_pro = c.codigo_cida' +
        'de)'
      'where p.cliente_pro =:CODIGO_CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 167
    object qryPropriedadeCLIENTE_PRO: TIntegerField
      FieldName = 'CLIENTE_PRO'
      Required = True
    end
    object qryPropriedadeDESCRICAO_PRO: TStringField
      FieldName = 'DESCRICAO_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryPropriedadeBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
      ProviderFlags = [pfInUpdate]
    end
    object qryPropriedadeCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object qryPropriedadeCIDADE_PRO: TIntegerField
      FieldName = 'CIDADE_PRO'
      ProviderFlags = [pfInUpdate]
    end
    object qryPropriedadeDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object qryPropriedadeFONE_PRO: TStringField
      FieldName = 'FONE_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qryPropriedadeESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qryPropriedadeINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
  end
  object dspPropriedade: TDataSetProvider
    DataSet = qryPropriedade
    Left = 121
    Top = 165
  end
  object cdsPropriedade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_CLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspPropriedade'
    Left = 208
    Top = 164
    object cdsPropriedadeCLIENTE_PRO: TIntegerField
      FieldName = 'CLIENTE_PRO'
      Required = True
    end
    object cdsPropriedadeDESCRICAO_PRO: TStringField
      FieldName = 'DESCRICAO_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsPropriedadeBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPropriedadeCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object cdsPropriedadeCIDADE_PRO: TIntegerField
      FieldName = 'CIDADE_PRO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPropriedadeDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object cdsPropriedadeFONE_PRO: TStringField
      FieldName = 'FONE_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object cdsPropriedadeESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object cdsPropriedadeINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
  end
  object qryNatureza: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM E_NATUREZA WHERE CODIGO_NAT=:CODIGO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 299
    Top = 11
    object qryNaturezaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object qryNaturezaCODIGO_NAT: TStringField
      FieldName = 'CODIGO_NAT'
      Size = 4
    end
    object qryNaturezaOPERACAO_NAT: TStringField
      FieldName = 'OPERACAO_NAT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryNaturezaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      ProviderFlags = [pfInUpdate]
      Size = 310
    end
  end
  object dspNatureza: TDataSetProvider
    DataSet = qryNatureza
    Left = 368
    Top = 11
  end
  object cdsNatureza: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspNatureza'
    Left = 456
    Top = 11
    object cdsNaturezaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object cdsNaturezaCODIGO_NAT: TStringField
      FieldName = 'CODIGO_NAT'
      Size = 4
    end
    object cdsNaturezaOPERACAO_NAT: TStringField
      FieldName = 'OPERACAO_NAT'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object cdsNaturezaDESCRICAO_NAT: TStringField
      FieldName = 'DESCRICAO_NAT'
      ProviderFlags = [pfInUpdate]
      Size = 310
    end
  end
  object qrySerie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM P_SERIE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 301
    Top = 268
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
  object dspSerie: TDataSetProvider
    DataSet = qrySerie
    Options = [poAllowCommandText]
    Left = 384
    Top = 268
  end
  object cdsSerie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSerie'
    Left = 466
    Top = 267
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
  object qrySerie2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select s.serie_serie, s.ser_doc_serie, s.numero_serie, s.impress' +
        'ao'
      'from P_SERIE s'
      'where s.serie_serie =:SERIE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 300
    Top = 60
    object qrySerie2SERIE_SERIE: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object qrySerie2SER_DOC_SERIE: TStringField
      FieldName = 'SER_DOC_SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qrySerie2NUMERO_SERIE: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 0
    end
    object qrySerie2IMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dspSerie2: TDataSetProvider
    DataSet = qrySerie2
    Left = 372
    Top = 59
  end
  object cdsSerie2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
    ProviderName = 'dspSerie2'
    Left = 460
    Top = 59
    object cdsSerie2SERIE_SERIE: TStringField
      FieldName = 'SERIE_SERIE'
      Size = 2
    end
    object cdsSerie2SER_DOC_SERIE: TStringField
      FieldName = 'SER_DOC_SERIE'
      Size = 2
    end
    object cdsSerie2NUMERO_SERIE: TFMTBCDField
      FieldName = 'NUMERO_SERIE'
      Precision = 15
      Size = 0
    end
    object cdsSerie2IMPRESSAO: TStringField
      FieldName = 'IMPRESSAO'
      Size = 1
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
      
        '          r.tipo_baixa_receber, r.tit_princ_receber, r.historico' +
        '_receber, r.valor_receber'
      'from P_RECEBER r'
      'where r.duplicata_receber =:DUPLICATA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 297
    Top = 325
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
    object qryReceberTIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qryReceberHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryReceberVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = qryReceber
    Left = 386
    Top = 325
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspReceber'
    Left = 473
    Top = 325
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
    object cdsReceberTIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object cdsReceberHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object cdsReceberVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
  end
  object qryReceber2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      
        'select r.duplicata_receber, r.valorpago_receber, r.movimento_rec' +
        'eber,'
      
        '          r.tipo_baixa_receber, r.tit_princ_receber, r.historico' +
        '_receber, r.valor_receber'
      'from P_RECEBER r'
      'where r.duplicata_receber =:DUPLICATA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 297
    Top = 381
    object StringField1: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      ProviderFlags = [pfInUpdate]
      Precision = 15
      Size = 2
    end
    object DateField1: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
      ProviderFlags = [pfInUpdate]
    end
    object StringField2: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object StringField3: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object MemoField1: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qryReceber2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
  end
  object dspReceber2: TDataSetProvider
    DataSet = qryReceber2
    Left = 386
    Top = 381
  end
  object cdsReceber2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspReceber2'
    Left = 473
    Top = 381
    object cdsReceber2DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 11
    end
    object cdsReceber2VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber2MOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object cdsReceber2TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
    object cdsReceber2TIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      Size = 11
    end
    object cdsReceber2HISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      BlobType = ftMemo
      Size = 1
    end
    object cdsReceber2VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
  end
  object qryReceber3: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'select  * from P_RECEBER '
      'where duplicata_receber =:DUPLICATA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 297
    Top = 432
    object qryReceber3DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 13
    end
    object qryReceber3TIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object qryReceber3CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object qryReceber3EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object qryReceber3VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object qryReceber3PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object qryReceber3ALTERACAO_RECEBER: TDateField
      FieldName = 'ALTERACAO_RECEBER'
    end
    object qryReceber3VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceber3PARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceber3VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceber3DESCJUROS_RECEBER: TFMTBCDField
      FieldName = 'DESCJUROS_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceber3COMISSAO_RECEBER: TFMTBCDField
      FieldName = 'COMISSAO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceber3CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object qryReceber3CODIGO_CENTRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_CENTRO_RECEBER'
    end
    object qryReceber3CODIGO_CORRENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CORRENTE_RECEBER'
    end
    object qryReceber3CODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
    end
    object qryReceber3CODIGO_CONTA_RECEBER: TStringField
      FieldName = 'CODIGO_CONTA_RECEBER'
    end
    object qryReceber3CODIGO_PARCEIRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_PARCEIRO_RECEBER'
    end
    object qryReceber3CODIGO_BANCO_RECEBER: TIntegerField
      FieldName = 'CODIGO_BANCO_RECEBER'
    end
    object qryReceber3BLOQUETE_RECEBER: TStringField
      FieldName = 'BLOQUETE_RECEBER'
      Size = 14
    end
    object qryReceber3EMIS_BLOQ_RECEBER: TDateField
      FieldName = 'EMIS_BLOQ_RECEBER'
    end
    object qryReceber3VENC_BLOQ_RECEBER: TDateField
      FieldName = 'VENC_BLOQ_RECEBER'
    end
    object qryReceber3REMESSA_RECEBER: TIntegerField
      FieldName = 'REMESSA_RECEBER'
    end
    object qryReceber3MORA_DIA_RECEBER: TFMTBCDField
      FieldName = 'MORA_DIA_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceber3INSTRUCAO_RECEBER: TStringField
      FieldName = 'INSTRUCAO_RECEBER'
      Size = 2
    end
    object qryReceber3DESCONTO_RECEBER: TFMTBCDField
      FieldName = 'DESCONTO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceber3DESC_ATE_RECEBER: TDateField
      FieldName = 'DESC_ATE_RECEBER'
    end
    object qryReceber3CONDICOES_RECEBER: TStringField
      FieldName = 'CONDICOES_RECEBER'
      Size = 55
    end
    object qryReceber3TIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      Size = 1
    end
    object qryReceber3MOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object qryReceber3CODIGO_CAIXA_RECEBER: TIntegerField
      FieldName = 'CODIGO_CAIXA_RECEBER'
    end
    object qryReceber3S_RECEBER: TStringField
      FieldName = 'S_RECEBER'
      Size = 1
    end
    object qryReceber3FORMAPAGTO_RECEBER: TStringField
      FieldName = 'FORMAPAGTO_RECEBER'
      Size = 1
    end
    object qryReceber3TIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      Size = 11
    end
    object qryReceber3COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryReceber3SALDO_RECEBER: TFMTBCDField
      FieldName = 'SALDO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceber3HISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      BlobType = ftMemo
      Size = 1
    end
    object qryReceber3DATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
    end
    object qryReceber3TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
  end
  object dspReceber3: TDataSetProvider
    DataSet = qryReceber3
    Left = 386
    Top = 432
  end
  object cdsReceber3: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DUPLICATA'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspReceber3'
    Left = 473
    Top = 432
    object cdsReceber3DUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 13
    end
    object cdsReceber3TIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object cdsReceber3CODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsReceber3EMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsReceber3VENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsReceber3PREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsReceber3ALTERACAO_RECEBER: TDateField
      FieldName = 'ALTERACAO_RECEBER'
    end
    object cdsReceber3VALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber3PARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber3VALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber3DESCJUROS_RECEBER: TFMTBCDField
      FieldName = 'DESCJUROS_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber3COMISSAO_RECEBER: TFMTBCDField
      FieldName = 'COMISSAO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber3CODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object cdsReceber3CODIGO_CENTRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_CENTRO_RECEBER'
    end
    object cdsReceber3CODIGO_CORRENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CORRENTE_RECEBER'
    end
    object cdsReceber3CODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
    end
    object cdsReceber3CODIGO_CONTA_RECEBER: TStringField
      FieldName = 'CODIGO_CONTA_RECEBER'
    end
    object cdsReceber3CODIGO_PARCEIRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_PARCEIRO_RECEBER'
    end
    object cdsReceber3CODIGO_BANCO_RECEBER: TIntegerField
      FieldName = 'CODIGO_BANCO_RECEBER'
    end
    object cdsReceber3BLOQUETE_RECEBER: TStringField
      FieldName = 'BLOQUETE_RECEBER'
      Size = 14
    end
    object cdsReceber3EMIS_BLOQ_RECEBER: TDateField
      FieldName = 'EMIS_BLOQ_RECEBER'
    end
    object cdsReceber3VENC_BLOQ_RECEBER: TDateField
      FieldName = 'VENC_BLOQ_RECEBER'
    end
    object cdsReceber3REMESSA_RECEBER: TIntegerField
      FieldName = 'REMESSA_RECEBER'
    end
    object cdsReceber3MORA_DIA_RECEBER: TFMTBCDField
      FieldName = 'MORA_DIA_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber3INSTRUCAO_RECEBER: TStringField
      FieldName = 'INSTRUCAO_RECEBER'
      Size = 2
    end
    object cdsReceber3DESCONTO_RECEBER: TFMTBCDField
      FieldName = 'DESCONTO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber3DESC_ATE_RECEBER: TDateField
      FieldName = 'DESC_ATE_RECEBER'
    end
    object cdsReceber3CONDICOES_RECEBER: TStringField
      FieldName = 'CONDICOES_RECEBER'
      Size = 55
    end
    object cdsReceber3TIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      Size = 1
    end
    object cdsReceber3MOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object cdsReceber3CODIGO_CAIXA_RECEBER: TIntegerField
      FieldName = 'CODIGO_CAIXA_RECEBER'
    end
    object cdsReceber3S_RECEBER: TStringField
      FieldName = 'S_RECEBER'
      Size = 1
    end
    object cdsReceber3FORMAPAGTO_RECEBER: TStringField
      FieldName = 'FORMAPAGTO_RECEBER'
      Size = 1
    end
    object cdsReceber3TIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      Size = 11
    end
    object cdsReceber3COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsReceber3SALDO_RECEBER: TFMTBCDField
      FieldName = 'SALDO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceber3HISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      BlobType = ftMemo
      Size = 1
    end
    object cdsReceber3DATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
    end
    object cdsReceber3TIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
  end
end
