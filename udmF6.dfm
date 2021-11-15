object dmF6: TdmF6
  OldCreateOrder = False
  Left = 372
  Top = 225
  Height = 337
  Width = 429
  object qryFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 48
    Top = 8
  end
  object dspFornecedor: TDataSetProvider
    DataSet = qryFornecedor
    Options = [poAllowCommandText]
    Left = 148
    Top = 8
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 248
    Top = 8
  end
  object qryPesqClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT E_CLIENTE.*,'
      
        '       (E_CLIENTE.credito_cliente-E_CLIENTE.utilizado_cliente) A' +
        'S SALDO,'
      '       p_contrato.ultanuidade_contrato'
      '       FROM E_CLIENTE'
      '       LEFT OUTER JOIN E_CIDADE'
      '       ON E_CLIENTE.cidade_cliente=E_CIDADE.codigo_cidade'
      '       LEFT OUTER JOIN P_CONTRATO'
      '       ON E_CLIENTE.codigo_cliente=p_contrato.cliente_contrato'
      '       AND (P_CONTRATO.cod_empresa=:EMPRESA)'
      '       WHERE E_CLIENTE.TIPO_CLIENTE=:TIPO '
      '       ORDER BY E_CLIENTE.NOME_CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 48
    Top = 67
    object qryPesqClientesCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryPesqClientesTIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      Required = True
    end
    object qryPesqClientesNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryPesqClientesFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object qryPesqClientesTIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      Size = 1
    end
    object qryPesqClientesPAI_CLIENTE: TStringField
      FieldName = 'PAI_CLIENTE'
      Size = 40
    end
    object qryPesqClientesMAE_CLIENTE: TStringField
      FieldName = 'MAE_CLIENTE'
      Size = 40
    end
    object qryPesqClientesENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object qryPesqClientesCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object qryPesqClientesESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 9
    end
    object qryPesqClientesCX_POSTAL_CLIENTE: TStringField
      FieldName = 'CX_POSTAL_CLIENTE'
      Size = 6
    end
    object qryPesqClientesTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object qryPesqClientesDATANASC_CLIENTE: TDateField
      FieldName = 'DATANASC_CLIENTE'
    end
    object qryPesqClientesINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
    object qryPesqClientesINSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      Size = 10
    end
    object qryPesqClientesDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
    object qryPesqClientesULTIMA_COMPRA_CLIENTE: TDateField
      FieldName = 'ULTIMA_COMPRA_CLIENTE'
    end
    object qryPesqClientesDATACADASTRO_CLIENTE: TDateField
      FieldName = 'DATACADASTRO_CLIENTE'
    end
    object qryPesqClientesVALORCOMPRA_CLIENTE: TFMTBCDField
      FieldName = 'VALORCOMPRA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesCONTATO_CLIENTE: TStringField
      FieldName = 'CONTATO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesAREA_CLIENTE: TIntegerField
      FieldName = 'AREA_CLIENTE'
    end
    object qryPesqClientesCONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      Size = 1
    end
    object qryPesqClientesOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object qryPesqClientesMANEQUIN_CLIENTE: TStringField
      FieldName = 'MANEQUIN_CLIENTE'
      Size = 2
    end
    object qryPesqClientesSAPATO_CLIENTE: TStringField
      FieldName = 'SAPATO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesMANEQUIN1_CLIENTE: TStringField
      FieldName = 'MANEQUIN1_CLIENTE'
      Size = 2
    end
    object qryPesqClientesSAPATO1_CLIENTE: TStringField
      FieldName = 'SAPATO1_CLIENTE'
      Size = 2
    end
    object qryPesqClientesSPC_CLIENTE: TStringField
      FieldName = 'SPC_CLIENTE'
      Size = 2
    end
    object qryPesqClientesCHECK_CLIENTE: TStringField
      FieldName = 'CHECK_CLIENTE'
      Size = 2
    end
    object qryPesqClientesSERASA_CLIENTE: TStringField
      FieldName = 'SERASA_CLIENTE'
      Size = 2
    end
    object qryPesqClientesATACADO_CLIENTE: TStringField
      FieldName = 'ATACADO_CLIENTE'
      Size = 1
    end
    object qryPesqClientesHOMEPAGE_CLIENTE: TStringField
      FieldName = 'HOMEPAGE_CLIENTE'
      Size = 30
    end
    object qryPesqClientesEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 30
    end
    object qryPesqClientesDDG_CLIENTE: TStringField
      FieldName = 'DDG_CLIENTE'
      Size = 13
    end
    object qryPesqClientesSOCIO1_CLIENTE: TStringField
      FieldName = 'SOCIO1_CLIENTE'
      Size = 40
    end
    object qryPesqClientesSOCIO2_CLIENTE: TStringField
      FieldName = 'SOCIO2_CLIENTE'
      Size = 40
    end
    object qryPesqClientesSOCIO1_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO1_DATANASC_CLIENTE'
    end
    object qryPesqClientesSOCIO2_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO2_DATANASC_CLIENTE'
    end
    object qryPesqClientesGERENTE_CLIENTE: TStringField
      FieldName = 'GERENTE_CLIENTE'
      Size = 40
    end
    object qryPesqClientesGERENTE_DATANASC_CLIENTE: TDateField
      FieldName = 'GERENTE_DATANASC_CLIENTE'
    end
    object qryPesqClientesJUNTACOMERCIAL_CLIENTE: TStringField
      FieldName = 'JUNTACOMERCIAL_CLIENTE'
      Size = 30
    end
    object qryPesqClientesCAPITAL_CLIENTE: TFMTBCDField
      FieldName = 'CAPITAL_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesTRAB_CLIENTE: TStringField
      FieldName = 'TRAB_CLIENTE'
      Size = 30
    end
    object qryPesqClientesTRAB_FUNCAO_CLIENTE: TStringField
      FieldName = 'TRAB_FUNCAO_CLIENTE'
      Size = 30
    end
    object qryPesqClientesTRAB_FONE_CLIENTE: TStringField
      FieldName = 'TRAB_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesTRAB_RAMAL_CLIENTE: TStringField
      FieldName = 'TRAB_RAMAL_CLIENTE'
      Size = 4
    end
    object qryPesqClientesTRAB_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesTRAB_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesCONJUGE_CLIENTE: TStringField
      FieldName = 'CONJUGE_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCONJUGE_TRABALHO_CLIENTE: TStringField
      FieldName = 'CONJUGE_TRABALHO_CLIENTE'
      Size = 30
    end
    object qryPesqClientesCONJUGE_FUNCAO1_CLIENTE: TStringField
      FieldName = 'CONJUGE_FUNCAO1_CLIENTE'
      Size = 30
    end
    object qryPesqClientesCONJUGE_DATANASC_CLIENTE: TDateField
      FieldName = 'CONJUGE_DATANASC_CLIENTE'
    end
    object qryPesqClientesCONJUGE_FONE_CLIENTE: TStringField
      FieldName = 'CONJUGE_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCONJUGE_RAMAL_CLIENTE: TStringField
      FieldName = 'CONJUGE_RAMAL_CLIENTE'
      Size = 4
    end
    object qryPesqClientesCONJUGE_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesCONJUGE_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesREF_BANCO1_CLIENTE: TStringField
      FieldName = 'REF_BANCO1_CLIENTE'
      Size = 22
    end
    object qryPesqClientesREF_BANCO2_CLIENTE: TStringField
      FieldName = 'REF_BANCO2_CLIENTE'
      Size = 22
    end
    object qryPesqClientesREF_BANCOFONE1_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE1_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_BANCOFONE2_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE2_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_COMERCIAL1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 22
    end
    object qryPesqClientesREF_COMERCIAL2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 22
    end
    object qryPesqClientesREF_COMERCIALFONE1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE1_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_COMERCIALFONE2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE2_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_PESSOAL1_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL1_CLIENTE'
      Size = 30
    end
    object qryPesqClientesREF_PESSOAL2_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL2_CLIENTE'
      Size = 30
    end
    object qryPesqClientesREF_PESSOALFONE1_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE1_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREF_PESSOALFONE2_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE2_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCOB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCOB_BAIRRO_CLIENTE: TStringField
      FieldName = 'COB_BAIRRO_CLIENTE'
    end
    object qryPesqClientesCOB_CIDADE_CLIENTE: TIntegerField
      FieldName = 'COB_CIDADE_CLIENTE'
    end
    object qryPesqClientesCOB_ESTADO_CLIENTE: TStringField
      FieldName = 'COB_ESTADO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesCOB_CEP_CLIENTE: TStringField
      FieldName = 'COB_CEP_CLIENTE'
      Size = 9
    end
    object qryPesqClientesCOB_TELEFONE_CLIENTE: TStringField
      FieldName = 'COB_TELEFONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCOB_FAX_CLIENTE: TStringField
      FieldName = 'COB_FAX_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCOB_CXPOSTAL_CLIENTE: TStringField
      FieldName = 'COB_CXPOSTAL_CLIENTE'
      Size = 6
    end
    object qryPesqClientesVENDEDOR_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR_CLIENTE'
    end
    object qryPesqClientesVENDEDOR1_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR1_CLIENTE'
    end
    object qryPesqClientesRAMO1_CLIENTE: TIntegerField
      FieldName = 'RAMO1_CLIENTE'
    end
    object qryPesqClientesRAMO2_CLIENTE: TIntegerField
      FieldName = 'RAMO2_CLIENTE'
    end
    object qryPesqClientesRAMO3_CLIENTE: TIntegerField
      FieldName = 'RAMO3_CLIENTE'
    end
    object qryPesqClientesTPGTO_CLIENTE: TIntegerField
      FieldName = 'TPGTO_CLIENTE'
    end
    object qryPesqClientesBANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC1_CLIENTE: TStringField
      FieldName = 'AGENC1_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB1_CLIENTE: TStringField
      FieldName = 'FONEB1_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA1_CLIENTE: TStringField
      FieldName = 'CONTA1_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD1_CLIENTE: TDateField
      FieldName = 'CLDSD1_CLIENTE'
    end
    object qryPesqClientesBANCO2_CLIENTE: TStringField
      FieldName = 'BANCO2_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC2_CLIENTE: TStringField
      FieldName = 'AGENC2_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB2_CLIENTE: TStringField
      FieldName = 'FONEB2_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA2_CLIENTE: TStringField
      FieldName = 'CONTA2_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD2_CLIENTE: TDateField
      FieldName = 'CLDSD2_CLIENTE'
    end
    object qryPesqClientesBANCO3_CLIENTE: TStringField
      FieldName = 'BANCO3_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC3_CLIENTE: TStringField
      FieldName = 'AGENC3_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB3_CLIENTE: TStringField
      FieldName = 'FONEB3_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA3_CLIENTE: TStringField
      FieldName = 'CONTA3_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD3_CLIENTE: TDateField
      FieldName = 'CLDSD3_CLIENTE'
    end
    object qryPesqClientesBANCO4_CLIENTE: TStringField
      FieldName = 'BANCO4_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC4_CLIENTE: TStringField
      FieldName = 'AGENC4_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB4_CLIENTE: TStringField
      FieldName = 'FONEB4_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA4_CLIENTE: TStringField
      FieldName = 'CONTA4_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD4_CLIENTE: TDateField
      FieldName = 'CLDSD4_CLIENTE'
    end
    object qryPesqClientesBANCO5_CLIENTE: TStringField
      FieldName = 'BANCO5_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAGENC5_CLIENTE: TStringField
      FieldName = 'AGENC5_CLIENTE'
      Size = 6
    end
    object qryPesqClientesFONEB5_CLIENTE: TStringField
      FieldName = 'FONEB5_CLIENTE'
      Size = 14
    end
    object qryPesqClientesCONTA5_CLIENTE: TStringField
      FieldName = 'CONTA5_CLIENTE'
      Size = 10
    end
    object qryPesqClientesCLDSD5_CLIENTE: TDateField
      FieldName = 'CLDSD5_CLIENTE'
    end
    object qryPesqClientesCOMISSAO_CLIENTE: TStringField
      FieldName = 'COMISSAO_CLIENTE'
      Size = 1
    end
    object qryPesqClientesCARTAO_CLIENTE: TDateField
      FieldName = 'CARTAO_CLIENTE'
    end
    object qryPesqClientesULTIMO_CONT_CLIENTE: TDateField
      FieldName = 'ULTIMO_CONT_CLIENTE'
    end
    object qryPesqClientesUSUARIO_CLIENTE: TStringField
      FieldName = 'USUARIO_CLIENTE'
      Size = 10
    end
    object qryPesqClientesSTATUS_CLIENTE: TStringField
      FieldName = 'STATUS_CLIENTE'
      Size = 1
    end
    object qryPesqClientesNATURALID_CLIENTE: TStringField
      FieldName = 'NATURALID_CLIENTE'
      Size = 30
    end
    object qryPesqClientesESTADOCIVIL_CLIENTE: TStringField
      FieldName = 'ESTADOCIVIL_CLIENTE'
      Size = 15
    end
    object qryPesqClientesCARTEIRATRAB_CLIENTE: TStringField
      FieldName = 'CARTEIRATRAB_CLIENTE'
      Size = 15
    end
    object qryPesqClientesTEMPO_RES_CLIENTE: TStringField
      FieldName = 'TEMPO_RES_CLIENTE'
      Size = 10
    end
    object qryPesqClientesTIPO_CASA_CLIENTE: TStringField
      FieldName = 'TIPO_CASA_CLIENTE'
      Size = 1
    end
    object qryPesqClientesVALOR_CASA_CLIENTE: TFMTBCDField
      FieldName = 'VALOR_CASA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesFONERECADO_CLIENTE: TStringField
      FieldName = 'FONERECADO_CLIENTE'
      Size = 13
    end
    object qryPesqClientesTRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesTRAB_BAIRRO_CLIENTE: TStringField
      FieldName = 'TRAB_BAIRRO_CLIENTE'
    end
    object qryPesqClientesTRAB_CIDADE_CLIENTE: TStringField
      FieldName = 'TRAB_CIDADE_CLIENTE'
    end
    object qryPesqClientesTRAB_ESTADO_CLIENTE: TStringField
      FieldName = 'TRAB_ESTADO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesTRAB_CEP_CLIENTE: TStringField
      FieldName = 'TRAB_CEP_CLIENTE'
      Size = 9
    end
    object qryPesqClientesTRAB_DATAADMISSAO_CLIENTE: TDateField
      FieldName = 'TRAB_DATAADMISSAO_CLIENTE'
    end
    object qryPesqClientesAVACONJ_TIPO_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPO_CLIENTE'
      Size = 1
    end
    object qryPesqClientesAVACONJ_NOME_CLIENTE: TStringField
      FieldName = 'AVACONJ_NOME_CLIENTE'
      Size = 40
    end
    object qryPesqClientesAVACONJ_DATANASC_CLIENTE: TDateField
      FieldName = 'AVACONJ_DATANASC_CLIENTE'
    end
    object qryPesqClientesAVACONJ_ESTCIVIL_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTCIVIL_CLIENTE'
      Size = 10
    end
    object qryPesqClientesAVACONJ_PAI_CLIENTE: TStringField
      FieldName = 'AVACONJ_PAI_CLIENTE'
      Size = 30
    end
    object qryPesqClientesAVACONJ_MAE_CLIENTE: TStringField
      FieldName = 'AVACONJ_MAE_CLIENTE'
      Size = 30
    end
    object qryPesqClientesAVACONJ_RG_CLIENTE: TStringField
      FieldName = 'AVACONJ_RG_CLIENTE'
    end
    object qryPesqClientesAVACONJ_CPF_CLIENTE: TStringField
      FieldName = 'AVACONJ_CPF_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAVACONJ_CARTERA_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARTERA_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAVACONJ_ENDERECO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesAVACONJ_BAIRRO_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAIRRO_CLIENTE'
    end
    object qryPesqClientesAVACONJ_CIDADE_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDADE_CLIENTE'
    end
    object qryPesqClientesAVACONJ_ESTADO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTADO_CLIENTE'
      Size = 2
    end
    object qryPesqClientesAVACONJ_CEP_CLIENTE: TStringField
      FieldName = 'AVACONJ_CEP_CLIENTE'
      Size = 9
    end
    object qryPesqClientesAVACONJ_FONE_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesAVACONJ_TEMPORESID_CLIENTE: TStringField
      FieldName = 'AVACONJ_TEMPORESID_CLIENTE'
      Size = 10
    end
    object qryPesqClientesAVACONJ_TIPOIMOV_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPOIMOV_CLIENTE'
      Size = 1
    end
    object qryPesqClientesAVACONJ_EMPTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_EMPTRAB_CLIENTE'
      Size = 30
    end
    object qryPesqClientesAVACONJ_ENDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDTRAB_CLIENTE'
      Size = 40
    end
    object qryPesqClientesAVACONJ_BAITRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAITRAB_CLIENTE'
    end
    object qryPesqClientesAVACONJ_CIDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDTRAB_CLIENTE'
    end
    object qryPesqClientesAVACONJ_ESTTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTTRAB_CLIENTE'
      Size = 2
    end
    object qryPesqClientesAVACONJ_ADMTRAB_CLIENTE: TDateField
      FieldName = 'AVACONJ_ADMTRAB_CLIENTE'
    end
    object qryPesqClientesAVACONJ_FUNCAO_CLIENTE: TStringField
      FieldName = 'AVACONJ_FUNCAO_CLIENTE'
    end
    object qryPesqClientesAVACONJ_CARGO_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARGO_CLIENTE'
    end
    object qryPesqClientesAVACONJ_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'AVACONJ_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object qryPesqClientesAVACONJ_FONTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONTRAB_CLIENTE'
      Size = 13
    end
    object qryPesqClientesAVACONJ_REFERENCIA1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA1_CLIENTE'
      Size = 22
    end
    object qryPesqClientesAVACONJ_REFERENCIA2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA2_CLIENTE'
      Size = 22
    end
    object qryPesqClientesAVACONJ_REFERENCIA3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA3_CLIENTE'
      Size = 22
    end
    object qryPesqClientesPARENTE_NOME_CLIENTE: TStringField
      FieldName = 'PARENTE_NOME_CLIENTE'
      Size = 40
    end
    object qryPesqClientesPARENTE_FONE_CLIENTE: TStringField
      FieldName = 'PARENTE_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesPARENTE_ENDERECO_CLIENTE: TStringField
      FieldName = 'PARENTE_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryPesqClientesPARENTE_BAIRRO_CLIENTE: TStringField
      FieldName = 'PARENTE_BAIRRO_CLIENTE'
    end
    object qryPesqClientesPARENTE_CIDADE_CLIENTE: TStringField
      FieldName = 'PARENTE_CIDADE_CLIENTE'
    end
    object qryPesqClientesDATABASE_CLIENTE: TIntegerField
      FieldName = 'DATABASE_CLIENTE'
    end
    object qryPesqClientesCONTATO1_CLIENTE: TStringField
      FieldName = 'CONTATO1_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCONTATO2_CLIENTE: TStringField
      FieldName = 'CONTATO2_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCONTATO3_CLIENTE: TStringField
      FieldName = 'CONTATO3_CLIENTE'
      Size = 40
    end
    object qryPesqClientesCONTATO1_FONE__CLIENTE: TStringField
      FieldName = 'CONTATO1_FONE__CLIENTE'
      Size = 13
    end
    object qryPesqClientesCONTATO2_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO2_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesCONTATO3_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO3_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesPAIS_CLIENTE: TStringField
      FieldName = 'PAIS_CLIENTE'
    end
    object qryPesqClientesREPR_NOME_CLIENTE: TStringField
      FieldName = 'REPR_NOME_CLIENTE'
      Size = 40
    end
    object qryPesqClientesREPR_FONE_CLIENTE: TStringField
      FieldName = 'REPR_FONE_CLIENTE'
      Size = 13
    end
    object qryPesqClientesREPR_CELULAR_CLIENTE: TStringField
      FieldName = 'REPR_CELULAR_CLIENTE'
      Size = 15
    end
    object qryPesqClientesREPR_FAX_CLIENTE: TStringField
      FieldName = 'REPR_FAX_CLIENTE'
      Size = 15
    end
    object qryPesqClientesAVACONJ_REFFONE3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE3_CLIENTE'
      Size = 13
    end
    object qryPesqClientesAVACONJ_REFFONE2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE2_CLIENTE'
      Size = 13
    end
    object qryPesqClientesAVACONJ_REFFONE1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE1_CLIENTE'
      Size = 13
    end
    object qryPesqClientesSALDO: TFMTBCDField
      FieldName = 'SALDO'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object qryPesqClientesULTANUIDADE_CONTRATO: TIntegerField
      FieldName = 'ULTANUIDADE_CONTRATO'
    end
  end
  object dspPesqClientes: TDataSetProvider
    DataSet = qryPesqClientes
    Options = [poAllowCommandText]
    Left = 146
    Top = 65
  end
  object cdsPesqCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspPesqClientes'
    Left = 248
    Top = 67
    object cdsPesqClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsPesqClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object cdsPesqClienteFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsPesqClienteDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object cdsPesqClienteESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPesqClienteULTANUIDADE_CONTRATO: TIntegerField
      FieldName = 'ULTANUIDADE_CONTRATO'
    end
  end
  object cdsPesqClientes2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqClientes'
    Left = 341
    Top = 65
    object cdsPesqClientes2CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsPesqClientes2TIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      Required = True
    end
    object cdsPesqClientes2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2FANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2TIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2PAI_CLIENTE: TStringField
      FieldName = 'PAI_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2MAE_CLIENTE: TStringField
      FieldName = 'MAE_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2ENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2BAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2CIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object cdsPesqClientes2ESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2CEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClientes2CX_POSTAL_CLIENTE: TStringField
      FieldName = 'CX_POSTAL_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2TELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2FAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object cdsPesqClientes2DATANASC_CLIENTE: TDateField
      FieldName = 'DATANASC_CLIENTE'
    end
    object cdsPesqClientes2INSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
    object cdsPesqClientes2INSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2DATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
    object cdsPesqClientes2ULTIMA_COMPRA_CLIENTE: TDateField
      FieldName = 'ULTIMA_COMPRA_CLIENTE'
    end
    object cdsPesqClientes2DATACADASTRO_CLIENTE: TDateField
      FieldName = 'DATACADASTRO_CLIENTE'
    end
    object cdsPesqClientes2VALORCOMPRA_CLIENTE: TFMTBCDField
      FieldName = 'VALORCOMPRA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2CREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2UTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2CONTATO_CLIENTE: TStringField
      FieldName = 'CONTATO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2AREA_CLIENTE: TIntegerField
      FieldName = 'AREA_CLIENTE'
    end
    object cdsPesqClientes2CONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2OBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPesqClientes2MANEQUIN_CLIENTE: TStringField
      FieldName = 'MANEQUIN_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2SAPATO_CLIENTE: TStringField
      FieldName = 'SAPATO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2MANEQUIN1_CLIENTE: TStringField
      FieldName = 'MANEQUIN1_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2SAPATO1_CLIENTE: TStringField
      FieldName = 'SAPATO1_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2SPC_CLIENTE: TStringField
      FieldName = 'SPC_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2CHECK_CLIENTE: TStringField
      FieldName = 'CHECK_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2SERASA_CLIENTE: TStringField
      FieldName = 'SERASA_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2ATACADO_CLIENTE: TStringField
      FieldName = 'ATACADO_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2HOMEPAGE_CLIENTE: TStringField
      FieldName = 'HOMEPAGE_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2EMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2DDG_CLIENTE: TStringField
      FieldName = 'DDG_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2SOCIO1_CLIENTE: TStringField
      FieldName = 'SOCIO1_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2SOCIO2_CLIENTE: TStringField
      FieldName = 'SOCIO2_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2SOCIO1_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO1_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2SOCIO2_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO2_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2GERENTE_CLIENTE: TStringField
      FieldName = 'GERENTE_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2GERENTE_DATANASC_CLIENTE: TDateField
      FieldName = 'GERENTE_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2JUNTACOMERCIAL_CLIENTE: TStringField
      FieldName = 'JUNTACOMERCIAL_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2CAPITAL_CLIENTE: TFMTBCDField
      FieldName = 'CAPITAL_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2TRAB_CLIENTE: TStringField
      FieldName = 'TRAB_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2TRAB_FUNCAO_CLIENTE: TStringField
      FieldName = 'TRAB_FUNCAO_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2TRAB_FONE_CLIENTE: TStringField
      FieldName = 'TRAB_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2TRAB_RAMAL_CLIENTE: TStringField
      FieldName = 'TRAB_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsPesqClientes2TRAB_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2TRAB_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2CONJUGE_CLIENTE: TStringField
      FieldName = 'CONJUGE_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2CONJUGE_TRABALHO_CLIENTE: TStringField
      FieldName = 'CONJUGE_TRABALHO_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2CONJUGE_FUNCAO1_CLIENTE: TStringField
      FieldName = 'CONJUGE_FUNCAO1_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2CONJUGE_DATANASC_CLIENTE: TDateField
      FieldName = 'CONJUGE_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2CONJUGE_FONE_CLIENTE: TStringField
      FieldName = 'CONJUGE_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CONJUGE_RAMAL_CLIENTE: TStringField
      FieldName = 'CONJUGE_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsPesqClientes2CONJUGE_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2CONJUGE_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2REF_BANCO1_CLIENTE: TStringField
      FieldName = 'REF_BANCO1_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2REF_BANCO2_CLIENTE: TStringField
      FieldName = 'REF_BANCO2_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2REF_BANCOFONE1_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_BANCOFONE2_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_COMERCIAL1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2REF_COMERCIAL2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2REF_COMERCIALFONE1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_COMERCIALFONE2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_PESSOAL1_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL1_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2REF_PESSOAL2_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL2_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2REF_PESSOALFONE1_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_PESSOALFONE2_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2COB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2COB_BAIRRO_CLIENTE: TStringField
      FieldName = 'COB_BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2COB_CIDADE_CLIENTE: TIntegerField
      FieldName = 'COB_CIDADE_CLIENTE'
    end
    object cdsPesqClientes2COB_ESTADO_CLIENTE: TStringField
      FieldName = 'COB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2COB_CEP_CLIENTE: TStringField
      FieldName = 'COB_CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClientes2COB_TELEFONE_CLIENTE: TStringField
      FieldName = 'COB_TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2COB_FAX_CLIENTE: TStringField
      FieldName = 'COB_FAX_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2COB_CXPOSTAL_CLIENTE: TStringField
      FieldName = 'COB_CXPOSTAL_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2VENDEDOR_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR_CLIENTE'
    end
    object cdsPesqClientes2VENDEDOR1_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR1_CLIENTE'
    end
    object cdsPesqClientes2RAMO1_CLIENTE: TIntegerField
      FieldName = 'RAMO1_CLIENTE'
    end
    object cdsPesqClientes2RAMO2_CLIENTE: TIntegerField
      FieldName = 'RAMO2_CLIENTE'
    end
    object cdsPesqClientes2RAMO3_CLIENTE: TIntegerField
      FieldName = 'RAMO3_CLIENTE'
    end
    object cdsPesqClientes2TPGTO_CLIENTE: TIntegerField
      FieldName = 'TPGTO_CLIENTE'
    end
    object cdsPesqClientes2BANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC1_CLIENTE: TStringField
      FieldName = 'AGENC1_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB1_CLIENTE: TStringField
      FieldName = 'FONEB1_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA1_CLIENTE: TStringField
      FieldName = 'CONTA1_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD1_CLIENTE: TDateField
      FieldName = 'CLDSD1_CLIENTE'
    end
    object cdsPesqClientes2BANCO2_CLIENTE: TStringField
      FieldName = 'BANCO2_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC2_CLIENTE: TStringField
      FieldName = 'AGENC2_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB2_CLIENTE: TStringField
      FieldName = 'FONEB2_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA2_CLIENTE: TStringField
      FieldName = 'CONTA2_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD2_CLIENTE: TDateField
      FieldName = 'CLDSD2_CLIENTE'
    end
    object cdsPesqClientes2BANCO3_CLIENTE: TStringField
      FieldName = 'BANCO3_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC3_CLIENTE: TStringField
      FieldName = 'AGENC3_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB3_CLIENTE: TStringField
      FieldName = 'FONEB3_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA3_CLIENTE: TStringField
      FieldName = 'CONTA3_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD3_CLIENTE: TDateField
      FieldName = 'CLDSD3_CLIENTE'
    end
    object cdsPesqClientes2BANCO4_CLIENTE: TStringField
      FieldName = 'BANCO4_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC4_CLIENTE: TStringField
      FieldName = 'AGENC4_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB4_CLIENTE: TStringField
      FieldName = 'FONEB4_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA4_CLIENTE: TStringField
      FieldName = 'CONTA4_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD4_CLIENTE: TDateField
      FieldName = 'CLDSD4_CLIENTE'
    end
    object cdsPesqClientes2BANCO5_CLIENTE: TStringField
      FieldName = 'BANCO5_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC5_CLIENTE: TStringField
      FieldName = 'AGENC5_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB5_CLIENTE: TStringField
      FieldName = 'FONEB5_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA5_CLIENTE: TStringField
      FieldName = 'CONTA5_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD5_CLIENTE: TDateField
      FieldName = 'CLDSD5_CLIENTE'
    end
    object cdsPesqClientes2COMISSAO_CLIENTE: TStringField
      FieldName = 'COMISSAO_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2CARTAO_CLIENTE: TDateField
      FieldName = 'CARTAO_CLIENTE'
    end
    object cdsPesqClientes2ULTIMO_CONT_CLIENTE: TDateField
      FieldName = 'ULTIMO_CONT_CLIENTE'
    end
    object cdsPesqClientes2USUARIO_CLIENTE: TStringField
      FieldName = 'USUARIO_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2STATUS_CLIENTE: TStringField
      FieldName = 'STATUS_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2NATURALID_CLIENTE: TStringField
      FieldName = 'NATURALID_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2ESTADOCIVIL_CLIENTE: TStringField
      FieldName = 'ESTADOCIVIL_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2CARTEIRATRAB_CLIENTE: TStringField
      FieldName = 'CARTEIRATRAB_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2TEMPO_RES_CLIENTE: TStringField
      FieldName = 'TEMPO_RES_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2TIPO_CASA_CLIENTE: TStringField
      FieldName = 'TIPO_CASA_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2VALOR_CASA_CLIENTE: TFMTBCDField
      FieldName = 'VALOR_CASA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2FONERECADO_CLIENTE: TStringField
      FieldName = 'FONERECADO_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2TRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2TRAB_BAIRRO_CLIENTE: TStringField
      FieldName = 'TRAB_BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2TRAB_CIDADE_CLIENTE: TStringField
      FieldName = 'TRAB_CIDADE_CLIENTE'
    end
    object cdsPesqClientes2TRAB_ESTADO_CLIENTE: TStringField
      FieldName = 'TRAB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2TRAB_CEP_CLIENTE: TStringField
      FieldName = 'TRAB_CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClientes2TRAB_DATAADMISSAO_CLIENTE: TDateField
      FieldName = 'TRAB_DATAADMISSAO_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_TIPO_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPO_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2AVACONJ_NOME_CLIENTE: TStringField
      FieldName = 'AVACONJ_NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2AVACONJ_DATANASC_CLIENTE: TDateField
      FieldName = 'AVACONJ_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_ESTCIVIL_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTCIVIL_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2AVACONJ_PAI_CLIENTE: TStringField
      FieldName = 'AVACONJ_PAI_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2AVACONJ_MAE_CLIENTE: TStringField
      FieldName = 'AVACONJ_MAE_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2AVACONJ_RG_CLIENTE: TStringField
      FieldName = 'AVACONJ_RG_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_CPF_CLIENTE: TStringField
      FieldName = 'AVACONJ_CPF_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AVACONJ_CARTERA_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARTERA_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AVACONJ_ENDERECO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2AVACONJ_BAIRRO_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_CIDADE_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDADE_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_ESTADO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2AVACONJ_CEP_CLIENTE: TStringField
      FieldName = 'AVACONJ_CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClientes2AVACONJ_FONE_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2AVACONJ_TEMPORESID_CLIENTE: TStringField
      FieldName = 'AVACONJ_TEMPORESID_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2AVACONJ_TIPOIMOV_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPOIMOV_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2AVACONJ_EMPTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_EMPTRAB_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2AVACONJ_ENDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDTRAB_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2AVACONJ_BAITRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAITRAB_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_CIDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDTRAB_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_ESTTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTTRAB_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2AVACONJ_ADMTRAB_CLIENTE: TDateField
      FieldName = 'AVACONJ_ADMTRAB_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_FUNCAO_CLIENTE: TStringField
      FieldName = 'AVACONJ_FUNCAO_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_CARGO_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARGO_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'AVACONJ_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2AVACONJ_FONTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONTRAB_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2AVACONJ_REFERENCIA1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA1_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2AVACONJ_REFERENCIA2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA2_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2AVACONJ_REFERENCIA3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA3_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2PARENTE_NOME_CLIENTE: TStringField
      FieldName = 'PARENTE_NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2PARENTE_FONE_CLIENTE: TStringField
      FieldName = 'PARENTE_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2PARENTE_ENDERECO_CLIENTE: TStringField
      FieldName = 'PARENTE_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2PARENTE_BAIRRO_CLIENTE: TStringField
      FieldName = 'PARENTE_BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2PARENTE_CIDADE_CLIENTE: TStringField
      FieldName = 'PARENTE_CIDADE_CLIENTE'
    end
    object cdsPesqClientes2DATABASE_CLIENTE: TIntegerField
      FieldName = 'DATABASE_CLIENTE'
    end
    object cdsPesqClientes2CONTATO1_CLIENTE: TStringField
      FieldName = 'CONTATO1_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2CONTATO2_CLIENTE: TStringField
      FieldName = 'CONTATO2_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2CONTATO3_CLIENTE: TStringField
      FieldName = 'CONTATO3_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2CONTATO1_FONE__CLIENTE: TStringField
      FieldName = 'CONTATO1_FONE__CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CONTATO2_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO2_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CONTATO3_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO3_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2PAIS_CLIENTE: TStringField
      FieldName = 'PAIS_CLIENTE'
    end
    object cdsPesqClientes2REPR_NOME_CLIENTE: TStringField
      FieldName = 'REPR_NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2REPR_FONE_CLIENTE: TStringField
      FieldName = 'REPR_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REPR_CELULAR_CLIENTE: TStringField
      FieldName = 'REPR_CELULAR_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2REPR_FAX_CLIENTE: TStringField
      FieldName = 'REPR_FAX_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AVACONJ_REFFONE3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE3_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2AVACONJ_REFFONE2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2AVACONJ_REFFONE1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2SALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2ULTANUIDADE_CONTRATO: TIntegerField
      FieldName = 'ULTANUIDADE_CONTRATO'
    end
  end
  object qryPesquisa4: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 47
    Top = 124
  end
  object dspPesquisa4: TDataSetProvider
    DataSet = qryPesquisa4
    Options = [poAllowCommandText]
    Left = 146
    Top = 124
  end
  object cdsPesquisa4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa4'
    Left = 248
    Top = 124
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      ''
      'CODIGO_VENDA,'
      'SERIE_VENDA,'
      'NOTAFISCAL_VENDA,'
      'CFOP_VENDA,'
      'EMISSAO_VENDA,'
      'HORA_VENDA,'
      'VENDEDOR_VENDA,'
      'FATURA_VENDA,'
      'TIPO_PRECO_VENDA'
      ''
      
        ' FROM P_VENDAS WHERE COD_EMPRESA=:EMPRESA AND CLIENTE_VENDA=:CLI' +
        'ENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 48
    Top = 184
    object qryVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object qryVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object qryVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Left = 147
    Top = 184
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendas'
    Left = 248
    Top = 184
    object cdsVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
  end
  object dspVeiculoCliente: TDataSetProvider
    DataSet = qryVeiculoCliente
    Left = 144
    Top = 240
  end
  object cdsVeiculoCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVeiculoCliente'
    Left = 248
    Top = 240
    object cdsVeiculoClienteCLIENTE_VEICULO: TIntegerField
      FieldName = 'CLIENTE_VEICULO'
      Required = True
    end
    object cdsVeiculoClienteCODIGO_VEICULO: TIntegerField
      FieldName = 'CODIGO_VEICULO'
      Required = True
    end
    object cdsVeiculoClienteDESCRICAO_VEICULO: TStringField
      FieldName = 'DESCRICAO_VEICULO'
      Size = 30
    end
    object cdsVeiculoClienteMODELO_VEICULO: TStringField
      FieldName = 'MODELO_VEICULO'
      Size = 30
    end
    object cdsVeiculoClienteANO_VEICULO: TStringField
      FieldName = 'ANO_VEICULO'
      Size = 9
    end
    object cdsVeiculoClientePLACA_VEICULO: TStringField
      FieldName = 'PLACA_VEICULO'
      Size = 10
    end
    object cdsVeiculoClienteNR_MOTOR_VEICULO: TStringField
      FieldName = 'NR_MOTOR_VEICULO'
      Size = 30
    end
    object cdsVeiculoClienteNR_SERIE_VEICULO: TStringField
      FieldName = 'NR_SERIE_VEICULO'
      Size = 30
    end
  end
  object qryVeiculoCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT * FROM E_VEICULO_CLIENTE  WHERE CLIENTE_VEICULO=:CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 48
    Top = 240
  end
end
