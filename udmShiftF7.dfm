object dmShiftF7: TdmShiftF7
  OldCreateOrder = False
  Left = 324
  Top = 211
  Height = 326
  Width = 296
  object dspServicos: TDataSetProvider
    DataSet = qryServicos
    Left = 116
    Top = 19
  end
  object cdsServicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServicos'
    Left = 209
    Top = 19
    object cdsServicosCODIGO_SERVICO: TIntegerField
      FieldName = 'CODIGO_SERVICO'
    end
    object cdsServicosCLIENTE_SERVICO: TIntegerField
      FieldName = 'CLIENTE_SERVICO'
    end
    object cdsServicosNOMECLI_SERVICO: TStringField
      FieldName = 'NOMECLI_SERVICO'
      Size = 40
    end
    object cdsServicosTECNICO_SERVICO: TIntegerField
      FieldName = 'TECNICO_SERVICO'
    end
    object cdsServicosSOLICITAN_SERVICO: TIntegerField
      FieldName = 'SOLICITAN_SERVICO'
    end
    object cdsServicosREQUISICAO_SERVICO: TDateField
      FieldName = 'REQUISICAO_SERVICO'
    end
    object cdsServicosHORA_SERVICO: TStringField
      FieldName = 'HORA_SERVICO'
      Size = 8
    end
    object cdsServicosPREVISAO_SERVICO: TDateField
      FieldName = 'PREVISAO_SERVICO'
    end
    object cdsServicosFECHAMENTO_SERVICO: TDateField
      FieldName = 'FECHAMENTO_SERVICO'
    end
    object cdsServicosCONTRATO_SERVICO: TStringField
      FieldName = 'CONTRATO_SERVICO'
      Size = 1
    end
    object cdsServicosEXTERNO_SERVICO: TStringField
      FieldName = 'EXTERNO_SERVICO'
      Size = 1
    end
    object cdsServicosGARANTIA_SERVICO: TStringField
      FieldName = 'GARANTIA_SERVICO'
      Size = 1
    end
    object cdsServicosEQUIPAMENT_SERVICO: TStringField
      FieldName = 'EQUIPAMENT_SERVICO'
      Size = 35
    end
    object cdsServicosPLACA_SERVICO: TStringField
      FieldName = 'PLACA_SERVICO'
    end
    object cdsServicosMODELO_SERVICO: TStringField
      FieldName = 'MODELO_SERVICO'
      Size = 12
    end
    object cdsServicosMOTOR_SERVICO: TStringField
      FieldName = 'MOTOR_SERVICO'
      Size = 12
    end
    object cdsServicosSERIE_SERVICO: TStringField
      FieldName = 'SERIE_SERVICO'
    end
    object cdsServicosHORAS_SERVICO: TStringField
      FieldName = 'HORAS_SERVICO'
      Size = 12
    end
    object cdsServicosROD_TRAZ_SERVICO: TStringField
      FieldName = 'ROD_TRAZ_SERVICO'
    end
    object cdsServicosROD_DIAN_SERVICO: TStringField
      FieldName = 'ROD_DIAN_SERVICO'
    end
    object cdsServicosREMOVIDO_SERVICO: TStringField
      FieldName = 'REMOVIDO_SERVICO'
      Size = 1
    end
    object cdsServicosDEFEITOR_SERVICO: TStringField
      FieldName = 'DEFEITOR_SERVICO'
      Size = 53
    end
    object cdsServicosDEFEITOC_SERVICO: TStringField
      FieldName = 'DEFEITOC_SERVICO'
      Size = 53
    end
    object cdsServicosCONTATO_SERVICO: TStringField
      FieldName = 'CONTATO_SERVICO'
      Size = 53
    end
    object cdsServicosAUTORIZADO_SERVICO: TStringField
      FieldName = 'AUTORIZADO_SERVICO'
      Size = 30
    end
    object cdsServicosOBSERVACAO_SERVICO: TStringField
      FieldName = 'OBSERVACAO_SERVICO'
      Size = 53
    end
    object cdsServicosDEFEITO1_SERVICO: TStringField
      FieldName = 'DEFEITO1_SERVICO'
      Size = 53
    end
    object cdsServicosDEFEITO2_SERVICO: TStringField
      FieldName = 'DEFEITO2_SERVICO'
      Size = 53
    end
    object cdsServicosDEFEITO3_SERVICO: TStringField
      FieldName = 'DEFEITO3_SERVICO'
      Size = 53
    end
    object cdsServicosDEFEITO4_SERVICO: TStringField
      FieldName = 'DEFEITO4_SERVICO'
      Size = 53
    end
    object cdsServicosSOLUCAO1_SERVICO: TStringField
      FieldName = 'SOLUCAO1_SERVICO'
      Size = 53
    end
    object cdsServicosSOLUCAO2_SERVICO: TStringField
      FieldName = 'SOLUCAO2_SERVICO'
      Size = 53
    end
    object cdsServicosSOLUCAO3_SERVICO: TStringField
      FieldName = 'SOLUCAO3_SERVICO'
      Size = 53
    end
    object cdsServicosSOLUCAO4_SERVICO: TStringField
      FieldName = 'SOLUCAO4_SERVICO'
      Size = 53
    end
    object cdsServicosTIPOSERVICO_SERVICO: TStringField
      FieldName = 'TIPOSERVICO_SERVICO'
      Size = 25
    end
    object cdsServicosPAGAMENTO_SERVICO: TIntegerField
      FieldName = 'PAGAMENTO_SERVICO'
    end
    object cdsServicosVALORTOTAL_SERVICO: TFMTBCDField
      FieldName = 'VALORTOTAL_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosDESCONTO_SERVICO: TFMTBCDField
      FieldName = 'DESCONTO_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosDESCONTO_S_SERVICO: TFMTBCDField
      FieldName = 'DESCONTO_S_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALORLIQUIDO_SERVICO: TFMTBCDField
      FieldName = 'VALORLIQUIDO_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosSTATUS_SERVICO: TStringField
      FieldName = 'STATUS_SERVICO'
      Size = 1
    end
    object cdsServicosDEVOLUCAO_SERVICO: TStringField
      FieldName = 'DEVOLUCAO_SERVICO'
      Size = 1
    end
    object cdsServicosCODIGOVENDA_SERVICO: TIntegerField
      FieldName = 'CODIGOVENDA_SERVICO'
    end
    object cdsServicosOBSERVACA1_SERVICO: TStringField
      FieldName = 'OBSERVACA1_SERVICO'
      Size = 60
    end
    object cdsServicosVALOR01_SERVICO: TFMTBCDField
      FieldName = 'VALOR01_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR02_SERVICO: TFMTBCDField
      FieldName = 'VALOR02_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR03_SERVICO: TFMTBCDField
      FieldName = 'VALOR03_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR04_SERVICO: TFMTBCDField
      FieldName = 'VALOR04_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR05_SERVICO: TFMTBCDField
      FieldName = 'VALOR05_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR06_SERVICO: TFMTBCDField
      FieldName = 'VALOR06_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR07_SERVICO: TFMTBCDField
      FieldName = 'VALOR07_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR08_SERVICO: TFMTBCDField
      FieldName = 'VALOR08_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR09_SERVICO: TFMTBCDField
      FieldName = 'VALOR09_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR10_SERVICO: TFMTBCDField
      FieldName = 'VALOR10_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR11_SERVICO: TFMTBCDField
      FieldName = 'VALOR11_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR12_SERVICO: TFMTBCDField
      FieldName = 'VALOR12_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR13_SERVICO: TFMTBCDField
      FieldName = 'VALOR13_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR14_SERVICO: TFMTBCDField
      FieldName = 'VALOR14_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVALOR15_SERVICO: TFMTBCDField
      FieldName = 'VALOR15_SERVICO'
      Precision = 15
      Size = 2
    end
    object cdsServicosVENCIMEN01: TDateField
      FieldName = 'VENCIMEN01'
    end
    object cdsServicosVENCIMEN02: TDateField
      FieldName = 'VENCIMEN02'
    end
    object cdsServicosVENCIMEN03: TDateField
      FieldName = 'VENCIMEN03'
    end
    object cdsServicosVENCIMEN04: TDateField
      FieldName = 'VENCIMEN04'
    end
    object cdsServicosVENCIMEN05: TDateField
      FieldName = 'VENCIMEN05'
    end
    object cdsServicosVENCIMEN06: TDateField
      FieldName = 'VENCIMEN06'
    end
    object cdsServicosVENCIMEN07: TDateField
      FieldName = 'VENCIMEN07'
    end
    object cdsServicosVENCIMEN08: TDateField
      FieldName = 'VENCIMEN08'
    end
    object cdsServicosVENCIMEN09: TDateField
      FieldName = 'VENCIMEN09'
    end
    object cdsServicosVENCIMEN10: TDateField
      FieldName = 'VENCIMEN10'
    end
    object cdsServicosVENCIMEN11: TDateField
      FieldName = 'VENCIMEN11'
    end
    object cdsServicosVENCIMEN12: TDateField
      FieldName = 'VENCIMEN12'
    end
    object cdsServicosVENCIMEN13: TDateField
      FieldName = 'VENCIMEN13'
    end
    object cdsServicosVENCIMEN14: TDateField
      FieldName = 'VENCIMEN14'
    end
    object cdsServicosVENCIMEN15: TDateField
      FieldName = 'VENCIMEN15'
    end
    object cdsServicosCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object qryServicos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT * FROM P_SERVICO WHERE COD_EMPRESA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 18
  end
  object qryPesqServico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT P_SERVICO.codigo_servico,'
      'P_SERVICO.cliente_servico,'
      'P_SERVICO.tecnico_servico,'
      'P_SERVICO.equipament_servico,'
      'P_SERVICO.valorliquido_servico,'
      'CASE P_SERVICO.status_servico'
      ' WHEN '#39'A'#39' THEN '#39'ABERTO'#39
      ' wHEN '#39'F'#39' THEN '#39'FECHADO'#39
      ' END AS STATUS,'
      ' P_SERVICO.requisicao_servico,'
      ' P_SERVICO.hora_servico,'
      ' P_SERVICO.previsao_servico,'
      ' P_SERVICO.equipament_servico,'
      ' P_SERVICO.codigovenda_servico,'
      ' P_SERVICO.placa_servico,'
      ' P_SERVICO.serie_servico,'
      ' P_SERVICO.hora_servico,'
      ' P_SERVICO.previsao_servico,'
      ' P_SERVICO.contrato_servico,'
      ' P_SERVICO.garantia_servico,'
      ' P_SERVICO.externo_servico,'
      ' P_SERVICO.tiposervico_servico,'
      ' P_SERVICO.equipament_servico,'
      ' P_SERVICO.placa_servico,'
      ' P_SERVICO.removido_servico,'
      ' P_SERVICO.defeitor_servico,'
      ' P_SERVICO.defeitoc_servico,'
      ' P_SERVICO.observacao_servico,'
      ' P_SERVICO.motor_servico,'
      ' P_SERVICO.modelo_servico,'
      ' P_SERVICO.serie_servico,'
      ' P_SERVICO.pagamento_servico,'
      ' P_SERVICO.rod_traz_servico,'
      ' P_SERVICO.rod_dian_servico,'
      ' P_SERVICO.observaca1_servico,'
      ' E_CLIENTE.bairro_cliente,'
      ' E_CLIENTE.nome_cliente,'
      ' E_CLIENTE.endereco_cliente,'
      ' E_CLIENTE.cidade_cliente,'
      ' E_CLIENTE.telefone_cliente,'
      ' P_VENDEDOR.nome_vendedor'
      ' FROM P_SERVICO'
      
        ' INNER JOIN E_CLIENTE ON P_SERVICO.cliente_servico=E_CLIENTE.cod' +
        'igo_cliente'
      
        ' INNER JOIN p_vendedor ON P_SERVICO.tecnico_servico=p_vendedor.c' +
        'odigo_vendedor AND P_VENDEDOR.cod_empresa=P_SERVICO.cod_empresa'
      'WHERE P_SERVICO.COD_EMPRESA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 28
    Top = 81
    object qryPesqServicoCODIGO_SERVICO: TIntegerField
      FieldName = 'CODIGO_SERVICO'
    end
    object qryPesqServicoCLIENTE_SERVICO: TIntegerField
      FieldName = 'CLIENTE_SERVICO'
    end
    object qryPesqServicoTECNICO_SERVICO: TIntegerField
      FieldName = 'TECNICO_SERVICO'
    end
    object qryPesqServicoEQUIPAMENT_SERVICO: TStringField
      FieldName = 'EQUIPAMENT_SERVICO'
      Size = 35
    end
    object qryPesqServicoVALORLIQUIDO_SERVICO: TFMTBCDField
      FieldName = 'VALORLIQUIDO_SERVICO'
      Precision = 15
      Size = 2
    end
    object qryPesqServicoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 7
    end
    object qryPesqServicoREQUISICAO_SERVICO: TDateField
      FieldName = 'REQUISICAO_SERVICO'
    end
    object qryPesqServicoHORA_SERVICO: TStringField
      FieldName = 'HORA_SERVICO'
      Size = 8
    end
    object qryPesqServicoPREVISAO_SERVICO: TDateField
      FieldName = 'PREVISAO_SERVICO'
    end
    object qryPesqServicoEQUIPAMENT_SERVICO_1: TStringField
      FieldName = 'EQUIPAMENT_SERVICO_1'
      Size = 35
    end
    object qryPesqServicoCODIGOVENDA_SERVICO: TIntegerField
      FieldName = 'CODIGOVENDA_SERVICO'
    end
    object qryPesqServicoPLACA_SERVICO: TStringField
      FieldName = 'PLACA_SERVICO'
    end
    object qryPesqServicoSERIE_SERVICO: TStringField
      FieldName = 'SERIE_SERVICO'
    end
    object qryPesqServicoHORA_SERVICO_1: TStringField
      FieldName = 'HORA_SERVICO_1'
      Size = 8
    end
    object qryPesqServicoPREVISAO_SERVICO_1: TDateField
      FieldName = 'PREVISAO_SERVICO_1'
    end
    object qryPesqServicoCONTRATO_SERVICO: TStringField
      FieldName = 'CONTRATO_SERVICO'
      Size = 1
    end
    object qryPesqServicoGARANTIA_SERVICO: TStringField
      FieldName = 'GARANTIA_SERVICO'
      Size = 1
    end
    object qryPesqServicoEXTERNO_SERVICO: TStringField
      FieldName = 'EXTERNO_SERVICO'
      Size = 1
    end
    object qryPesqServicoTIPOSERVICO_SERVICO: TStringField
      FieldName = 'TIPOSERVICO_SERVICO'
      Size = 25
    end
    object qryPesqServicoPAGAMENTO_SERVICO: TIntegerField
      FieldName = 'PAGAMENTO_SERVICO'
    end
    object qryPesqServicoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryPesqServicoENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqServicoCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object qryPesqServicoTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object qryPesqServicoNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object qryPesqServicoBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object qryPesqServicoEQUIPAMENT_SERVICO_2: TStringField
      FieldName = 'EQUIPAMENT_SERVICO_2'
      Size = 35
    end
    object qryPesqServicoPLACA_SERVICO_1: TStringField
      FieldName = 'PLACA_SERVICO_1'
    end
    object qryPesqServicoREMOVIDO_SERVICO: TStringField
      FieldName = 'REMOVIDO_SERVICO'
      Size = 1
    end
    object qryPesqServicoDEFEITOR_SERVICO: TStringField
      FieldName = 'DEFEITOR_SERVICO'
      Size = 53
    end
    object qryPesqServicoDEFEITOC_SERVICO: TStringField
      FieldName = 'DEFEITOC_SERVICO'
      Size = 53
    end
    object qryPesqServicoOBSERVACAO_SERVICO: TStringField
      FieldName = 'OBSERVACAO_SERVICO'
      Size = 53
    end
    object qryPesqServicoMOTOR_SERVICO: TStringField
      FieldName = 'MOTOR_SERVICO'
      Size = 12
    end
    object qryPesqServicoMODELO_SERVICO: TStringField
      FieldName = 'MODELO_SERVICO'
      Size = 12
    end
    object qryPesqServicoSERIE_SERVICO_1: TStringField
      FieldName = 'SERIE_SERVICO_1'
    end
    object qryPesqServicoROD_TRAZ_SERVICO: TStringField
      FieldName = 'ROD_TRAZ_SERVICO'
    end
    object qryPesqServicoROD_DIAN_SERVICO: TStringField
      FieldName = 'ROD_DIAN_SERVICO'
    end
    object qryPesqServicoOBSERVACA1_SERVICO: TStringField
      FieldName = 'OBSERVACA1_SERVICO'
      Size = 60
    end
  end
  object dspPesqServico: TDataSetProvider
    DataSet = qryPesqServico
    Left = 118
    Top = 81
  end
  object cdsPesqServico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspPesqServico'
    Left = 210
    Top = 77
    object cdsPesqServicoCODIGO_SERVICO: TIntegerField
      FieldName = 'CODIGO_SERVICO'
    end
    object cdsPesqServicoCLIENTE_SERVICO: TIntegerField
      FieldName = 'CLIENTE_SERVICO'
    end
    object cdsPesqServicoTECNICO_SERVICO: TIntegerField
      FieldName = 'TECNICO_SERVICO'
    end
    object cdsPesqServicoEQUIPAMENT_SERVICO: TStringField
      FieldName = 'EQUIPAMENT_SERVICO'
      Size = 35
    end
    object cdsPesqServicoVALORLIQUIDO_SERVICO: TFMTBCDField
      FieldName = 'VALORLIQUIDO_SERVICO'
      DisplayFormat = '.00'
      Precision = 15
      Size = 2
    end
    object cdsPesqServicoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 7
    end
    object cdsPesqServicoREQUISICAO_SERVICO: TDateField
      FieldName = 'REQUISICAO_SERVICO'
    end
    object cdsPesqServicoHORA_SERVICO: TStringField
      FieldName = 'HORA_SERVICO'
      Size = 8
    end
    object cdsPesqServicoPREVISAO_SERVICO: TDateField
      FieldName = 'PREVISAO_SERVICO'
    end
    object cdsPesqServicoEQUIPAMENT_SERVICO_1: TStringField
      FieldName = 'EQUIPAMENT_SERVICO_1'
      Size = 35
    end
    object cdsPesqServicoCODIGOVENDA_SERVICO: TIntegerField
      FieldName = 'CODIGOVENDA_SERVICO'
    end
    object cdsPesqServicoPLACA_SERVICO: TStringField
      FieldName = 'PLACA_SERVICO'
    end
    object cdsPesqServicoSERIE_SERVICO: TStringField
      FieldName = 'SERIE_SERVICO'
    end
    object cdsPesqServicoHORA_SERVICO_1: TStringField
      FieldName = 'HORA_SERVICO_1'
      Size = 8
    end
    object cdsPesqServicoPREVISAO_SERVICO_1: TDateField
      FieldName = 'PREVISAO_SERVICO_1'
    end
    object cdsPesqServicoCONTRATO_SERVICO: TStringField
      FieldName = 'CONTRATO_SERVICO'
      Size = 1
    end
    object cdsPesqServicoGARANTIA_SERVICO: TStringField
      FieldName = 'GARANTIA_SERVICO'
      Size = 1
    end
    object cdsPesqServicoEXTERNO_SERVICO: TStringField
      FieldName = 'EXTERNO_SERVICO'
      Size = 1
    end
    object cdsPesqServicoTIPOSERVICO_SERVICO: TStringField
      FieldName = 'TIPOSERVICO_SERVICO'
      Size = 25
    end
    object cdsPesqServicoPAGAMENTO_SERVICO: TIntegerField
      FieldName = 'PAGAMENTO_SERVICO'
    end
    object cdsPesqServicoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqServicoENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqServicoCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object cdsPesqServicoTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqServicoNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object cdsPesqServicoBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsPesqServicoEQUIPAMENT_SERVICO_2: TStringField
      FieldName = 'EQUIPAMENT_SERVICO_2'
      Size = 35
    end
    object cdsPesqServicoPLACA_SERVICO_1: TStringField
      FieldName = 'PLACA_SERVICO_1'
    end
    object cdsPesqServicoREMOVIDO_SERVICO: TStringField
      FieldName = 'REMOVIDO_SERVICO'
      Size = 1
    end
    object cdsPesqServicoDEFEITOR_SERVICO: TStringField
      FieldName = 'DEFEITOR_SERVICO'
      Size = 53
    end
    object cdsPesqServicoDEFEITOC_SERVICO: TStringField
      FieldName = 'DEFEITOC_SERVICO'
      Size = 53
    end
    object cdsPesqServicoOBSERVACAO_SERVICO: TStringField
      FieldName = 'OBSERVACAO_SERVICO'
      Size = 53
    end
    object cdsPesqServicoMOTOR_SERVICO: TStringField
      FieldName = 'MOTOR_SERVICO'
      Size = 12
    end
    object cdsPesqServicoMODELO_SERVICO: TStringField
      FieldName = 'MODELO_SERVICO'
      Size = 12
    end
    object cdsPesqServicoSERIE_SERVICO_1: TStringField
      FieldName = 'SERIE_SERVICO_1'
    end
    object cdsPesqServicoROD_TRAZ_SERVICO: TStringField
      FieldName = 'ROD_TRAZ_SERVICO'
    end
    object cdsPesqServicoROD_DIAN_SERVICO: TStringField
      FieldName = 'ROD_DIAN_SERVICO'
    end
    object cdsPesqServicoOBSERVACA1_SERVICO: TStringField
      FieldName = 'OBSERVACA1_SERVICO'
      Size = 60
    end
  end
  object qryServicosItem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_SERVICO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM P_SERVICO_ITEM WHERE COD_SERV=:COD_SERVICO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 139
    object qryServicosItemCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object qryServicosItemPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object qryServicosItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 4
    end
    object qryServicosItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qryServicosItemVALOR_BRUTO: TFMTBCDField
      FieldName = 'VALOR_BRUTO'
      Precision = 15
      Size = 4
    end
    object qryServicosItemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 3
    end
    object qryServicosItemGRADE: TStringField
      FieldName = 'GRADE'
      Size = 5
    end
    object qryServicosItemPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object qryServicosItemFABRICA: TStringField
      FieldName = 'FABRICA'
      Size = 15
    end
    object qryServicosItemSERIE: TStringField
      FieldName = 'SERIE'
    end
    object qryServicosItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object qryServicosItemICM: TFMTBCDField
      FieldName = 'ICM'
      Precision = 15
      Size = 2
    end
    object qryServicosItemIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 15
      Size = 2
    end
    object qryServicosItemREDUTOR: TFMTBCDField
      FieldName = 'REDUTOR'
      Precision = 15
      Size = 2
    end
    object qryServicosItemTRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
      Size = 3
    end
    object qryServicosItemTMP_GAR: TStringField
      FieldName = 'TMP_GAR'
      Size = 10
    end
    object qryServicosItemCOD_SERV: TIntegerField
      FieldName = 'COD_SERV'
      Required = True
    end
    object qryServicosItemTECNICO: TIntegerField
      FieldName = 'TECNICO'
    end
    object qryServicosItemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object dspServicosItem: TDataSetProvider
    DataSet = qryServicosItem
    Left = 120
    Top = 137
  end
  object cdsServicosItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_SERVICO'
        ParamType = ptInput
      end>
    ProviderName = 'dspServicosItem'
    Left = 211
    Top = 136
    object cdsServicosItemCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
    end
    object cdsServicosItemPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object cdsServicosItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 4
    end
    object cdsServicosItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsServicosItemVALOR_BRUTO: TFMTBCDField
      FieldName = 'VALOR_BRUTO'
      DisplayFormat = '.00'
      Precision = 15
      Size = 4
    end
    object cdsServicosItemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 15
      Size = 3
    end
    object cdsServicosItemGRADE: TStringField
      FieldName = 'GRADE'
      Size = 5
    end
    object cdsServicosItemPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object cdsServicosItemFABRICA: TStringField
      FieldName = 'FABRICA'
      Size = 15
    end
    object cdsServicosItemSERIE: TStringField
      FieldName = 'SERIE'
    end
    object cdsServicosItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsServicosItemICM: TFMTBCDField
      FieldName = 'ICM'
      Precision = 15
      Size = 2
    end
    object cdsServicosItemIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 15
      Size = 2
    end
    object cdsServicosItemREDUTOR: TFMTBCDField
      FieldName = 'REDUTOR'
      Precision = 15
      Size = 2
    end
    object cdsServicosItemTRIBUTACAO: TStringField
      FieldName = 'TRIBUTACAO'
      Size = 3
    end
    object cdsServicosItemTMP_GAR: TStringField
      FieldName = 'TMP_GAR'
      Size = 10
    end
    object cdsServicosItemCOD_SERV: TIntegerField
      FieldName = 'COD_SERV'
      Required = True
    end
    object cdsServicosItemTECNICO: TIntegerField
      FieldName = 'TECNICO'
    end
    object cdsServicosItemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object qryMoviServico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_SERVICO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM P_MOVI_SERVICO WHERE SERVICO=:COD_SERVICO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 194
    object qryMoviServicoORD_STA: TFMTBCDField
      FieldName = 'ORD_STA'
      Precision = 15
      Size = 0
    end
    object qryMoviServicoSERVICO: TFMTBCDField
      FieldName = 'SERVICO'
      Precision = 15
      Size = 0
    end
    object qryMoviServicoTIP_STA: TStringField
      FieldName = 'TIP_STA'
      Size = 40
    end
    object qryMoviServicoDAT_STA: TDateField
      FieldName = 'DAT_STA'
    end
    object qryMoviServicoRSP_STA: TStringField
      FieldName = 'RSP_STA'
      Size = 15
    end
    object qryMoviServicoHOR_STA: TStringField
      FieldName = 'HOR_STA'
      Size = 5
    end
  end
  object dspMoviServico: TDataSetProvider
    DataSet = qryMoviServico
    Left = 120
    Top = 194
  end
  object cdsMoviServico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_SERVICO'
        ParamType = ptInput
      end>
    ProviderName = 'dspMoviServico'
    Left = 211
    Top = 194
    object cdsMoviServicoORD_STA: TFMTBCDField
      FieldName = 'ORD_STA'
      Precision = 15
      Size = 0
    end
    object cdsMoviServicoSERVICO: TFMTBCDField
      FieldName = 'SERVICO'
      Precision = 15
      Size = 0
    end
    object cdsMoviServicoTIP_STA: TStringField
      FieldName = 'TIP_STA'
      Size = 40
    end
    object cdsMoviServicoDAT_STA: TDateField
      FieldName = 'DAT_STA'
    end
    object cdsMoviServicoRSP_STA: TStringField
      FieldName = 'RSP_STA'
      Size = 15
    end
    object cdsMoviServicoHOR_STA: TStringField
      FieldName = 'HOR_STA'
      Size = 5
    end
  end
end
