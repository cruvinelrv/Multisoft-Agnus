object dmRL0202: TdmRL0202
  OldCreateOrder = False
  Left = 250
  Top = 186
  Height = 113
  Width = 534
  object qryClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DmPrincipal.DbConexao
    Left = 43
    Top = 14
  end
  object dspClientes: TDataSetProvider
    DataSet = qryClientes
    Options = [poAllowCommandText]
    Left = 144
    Top = 14
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'dspClientes'
    Left = 250
    Top = 14
    object cdsClientesCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsClientesTIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      Required = True
    end
    object cdsClientesNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsClientesFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsClientesTIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      Size = 1
    end
    object cdsClientesPAI_CLIENTE: TStringField
      FieldName = 'PAI_CLIENTE'
      Size = 40
    end
    object cdsClientesMAE_CLIENTE: TStringField
      FieldName = 'MAE_CLIENTE'
      Size = 40
    end
    object cdsClientesENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClientesBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsClientesCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object cdsClientesESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsClientesCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 9
    end
    object cdsClientesCX_POSTAL_CLIENTE: TStringField
      FieldName = 'CX_POSTAL_CLIENTE'
      Size = 6
    end
    object cdsClientesTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsClientesFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object cdsClientesCELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 13
    end
    object cdsClientesCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object cdsClientesDATANASC_CLIENTE: TDateField
      FieldName = 'DATANASC_CLIENTE'
    end
    object cdsClientesINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
    object cdsClientesINSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      Size = 10
    end
    object cdsClientesDATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
    object cdsClientesULTIMA_COMPRA_CLIENTE: TDateField
      FieldName = 'ULTIMA_COMPRA_CLIENTE'
    end
    object cdsClientesDATACADASTRO_CLIENTE: TDateField
      FieldName = 'DATACADASTRO_CLIENTE'
    end
    object cdsClientesVALORCOMPRA_CLIENTE: TFMTBCDField
      FieldName = 'VALORCOMPRA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesCONTATO_CLIENTE: TStringField
      FieldName = 'CONTATO_CLIENTE'
      Size = 40
    end
    object cdsClientesAREA_CLIENTE: TIntegerField
      FieldName = 'AREA_CLIENTE'
    end
    object cdsClientesCONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      Size = 1
    end
    object cdsClientesOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClientesMANEQUIN_CLIENTE: TStringField
      FieldName = 'MANEQUIN_CLIENTE'
      Size = 2
    end
    object cdsClientesSAPATO_CLIENTE: TStringField
      FieldName = 'SAPATO_CLIENTE'
      Size = 2
    end
    object cdsClientesMANEQUIN1_CLIENTE: TStringField
      FieldName = 'MANEQUIN1_CLIENTE'
      Size = 2
    end
    object cdsClientesSAPATO1_CLIENTE: TStringField
      FieldName = 'SAPATO1_CLIENTE'
      Size = 2
    end
    object cdsClientesSPC_CLIENTE: TStringField
      FieldName = 'SPC_CLIENTE'
      Size = 2
    end
    object cdsClientesCHECK_CLIENTE: TStringField
      FieldName = 'CHECK_CLIENTE'
      Size = 2
    end
    object cdsClientesSERASA_CLIENTE: TStringField
      FieldName = 'SERASA_CLIENTE'
      Size = 2
    end
    object cdsClientesATACADO_CLIENTE: TStringField
      FieldName = 'ATACADO_CLIENTE'
      Size = 1
    end
    object cdsClientesHOMEPAGE_CLIENTE: TStringField
      FieldName = 'HOMEPAGE_CLIENTE'
      Size = 30
    end
    object cdsClientesEMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 30
    end
    object cdsClientesDDG_CLIENTE: TStringField
      FieldName = 'DDG_CLIENTE'
      Size = 13
    end
    object cdsClientesSOCIO1_CLIENTE: TStringField
      FieldName = 'SOCIO1_CLIENTE'
      Size = 40
    end
    object cdsClientesSOCIO2_CLIENTE: TStringField
      FieldName = 'SOCIO2_CLIENTE'
      Size = 40
    end
    object cdsClientesSOCIO1_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO1_DATANASC_CLIENTE'
    end
    object cdsClientesSOCIO2_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO2_DATANASC_CLIENTE'
    end
    object cdsClientesGERENTE_CLIENTE: TStringField
      FieldName = 'GERENTE_CLIENTE'
      Size = 40
    end
    object cdsClientesGERENTE_DATANASC_CLIENTE: TDateField
      FieldName = 'GERENTE_DATANASC_CLIENTE'
    end
    object cdsClientesJUNTACOMERCIAL_CLIENTE: TStringField
      FieldName = 'JUNTACOMERCIAL_CLIENTE'
      Size = 30
    end
    object cdsClientesCAPITAL_CLIENTE: TFMTBCDField
      FieldName = 'CAPITAL_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesTRAB_CLIENTE: TStringField
      FieldName = 'TRAB_CLIENTE'
      Size = 30
    end
    object cdsClientesTRAB_FUNCAO_CLIENTE: TStringField
      FieldName = 'TRAB_FUNCAO_CLIENTE'
      Size = 30
    end
    object cdsClientesTRAB_FONE_CLIENTE: TStringField
      FieldName = 'TRAB_FONE_CLIENTE'
      Size = 13
    end
    object cdsClientesTRAB_RAMAL_CLIENTE: TStringField
      FieldName = 'TRAB_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsClientesTRAB_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesTRAB_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesCONJUGE_CLIENTE: TStringField
      FieldName = 'CONJUGE_CLIENTE'
      Size = 40
    end
    object cdsClientesCONJUGE_TRABALHO_CLIENTE: TStringField
      FieldName = 'CONJUGE_TRABALHO_CLIENTE'
      Size = 30
    end
    object cdsClientesCONJUGE_FUNCAO1_CLIENTE: TStringField
      FieldName = 'CONJUGE_FUNCAO1_CLIENTE'
      Size = 30
    end
    object cdsClientesCONJUGE_DATANASC_CLIENTE: TDateField
      FieldName = 'CONJUGE_DATANASC_CLIENTE'
    end
    object cdsClientesCONJUGE_FONE_CLIENTE: TStringField
      FieldName = 'CONJUGE_FONE_CLIENTE'
      Size = 13
    end
    object cdsClientesCONJUGE_RAMAL_CLIENTE: TStringField
      FieldName = 'CONJUGE_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsClientesCONJUGE_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesCONJUGE_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesREF_BANCO1_CLIENTE: TStringField
      FieldName = 'REF_BANCO1_CLIENTE'
      Size = 22
    end
    object cdsClientesREF_BANCO2_CLIENTE: TStringField
      FieldName = 'REF_BANCO2_CLIENTE'
      Size = 22
    end
    object cdsClientesREF_BANCOFONE1_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE1_CLIENTE'
      Size = 13
    end
    object cdsClientesREF_BANCOFONE2_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE2_CLIENTE'
      Size = 13
    end
    object cdsClientesREF_COMERCIAL1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 44
    end
    object cdsClientesREF_COMERCIAL2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 44
    end
    object cdsClientesREF_COMERCIALFONE1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE1_CLIENTE'
      Size = 13
    end
    object cdsClientesREF_COMERCIALFONE2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE2_CLIENTE'
      Size = 13
    end
    object cdsClientesREF_PESSOAL1_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL1_CLIENTE'
      Size = 30
    end
    object cdsClientesREF_PESSOAL2_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL2_CLIENTE'
      Size = 30
    end
    object cdsClientesREF_PESSOALFONE1_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE1_CLIENTE'
      Size = 13
    end
    object cdsClientesREF_PESSOALFONE2_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE2_CLIENTE'
      Size = 13
    end
    object cdsClientesCOB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClientesCOB_BAIRRO_CLIENTE: TStringField
      FieldName = 'COB_BAIRRO_CLIENTE'
    end
    object cdsClientesCOB_CIDADE_CLIENTE: TIntegerField
      FieldName = 'COB_CIDADE_CLIENTE'
    end
    object cdsClientesCOB_ESTADO_CLIENTE: TStringField
      FieldName = 'COB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsClientesCOB_CEP_CLIENTE: TStringField
      FieldName = 'COB_CEP_CLIENTE'
      Size = 9
    end
    object cdsClientesCOB_TELEFONE_CLIENTE: TStringField
      FieldName = 'COB_TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsClientesCOB_FAX_CLIENTE: TStringField
      FieldName = 'COB_FAX_CLIENTE'
      Size = 13
    end
    object cdsClientesCOB_CXPOSTAL_CLIENTE: TStringField
      FieldName = 'COB_CXPOSTAL_CLIENTE'
      Size = 6
    end
    object cdsClientesVENDEDOR_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR_CLIENTE'
    end
    object cdsClientesVENDEDOR1_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR1_CLIENTE'
    end
    object cdsClientesRAMO1_CLIENTE: TIntegerField
      FieldName = 'RAMO1_CLIENTE'
    end
    object cdsClientesRAMO2_CLIENTE: TIntegerField
      FieldName = 'RAMO2_CLIENTE'
    end
    object cdsClientesRAMO3_CLIENTE: TIntegerField
      FieldName = 'RAMO3_CLIENTE'
    end
    object cdsClientesTPGTO_CLIENTE: TIntegerField
      FieldName = 'TPGTO_CLIENTE'
    end
    object cdsClientesBANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object cdsClientesAGENC1_CLIENTE: TStringField
      FieldName = 'AGENC1_CLIENTE'
      Size = 6
    end
    object cdsClientesFONEB1_CLIENTE: TStringField
      FieldName = 'FONEB1_CLIENTE'
      Size = 14
    end
    object cdsClientesCONTA1_CLIENTE: TStringField
      FieldName = 'CONTA1_CLIENTE'
      Size = 10
    end
    object cdsClientesCLDSD1_CLIENTE: TDateField
      FieldName = 'CLDSD1_CLIENTE'
    end
    object cdsClientesBANCO2_CLIENTE: TStringField
      FieldName = 'BANCO2_CLIENTE'
      Size = 15
    end
    object cdsClientesAGENC2_CLIENTE: TStringField
      FieldName = 'AGENC2_CLIENTE'
      Size = 6
    end
    object cdsClientesFONEB2_CLIENTE: TStringField
      FieldName = 'FONEB2_CLIENTE'
      Size = 14
    end
    object cdsClientesCONTA2_CLIENTE: TStringField
      FieldName = 'CONTA2_CLIENTE'
      Size = 10
    end
    object cdsClientesCLDSD2_CLIENTE: TDateField
      FieldName = 'CLDSD2_CLIENTE'
    end
    object cdsClientesBANCO3_CLIENTE: TStringField
      FieldName = 'BANCO3_CLIENTE'
      Size = 15
    end
    object cdsClientesAGENC3_CLIENTE: TStringField
      FieldName = 'AGENC3_CLIENTE'
      Size = 6
    end
    object cdsClientesFONEB3_CLIENTE: TStringField
      FieldName = 'FONEB3_CLIENTE'
      Size = 14
    end
    object cdsClientesCONTA3_CLIENTE: TStringField
      FieldName = 'CONTA3_CLIENTE'
      Size = 10
    end
    object cdsClientesCLDSD3_CLIENTE: TDateField
      FieldName = 'CLDSD3_CLIENTE'
    end
    object cdsClientesBANCO4_CLIENTE: TStringField
      FieldName = 'BANCO4_CLIENTE'
      Size = 15
    end
    object cdsClientesAGENC4_CLIENTE: TStringField
      FieldName = 'AGENC4_CLIENTE'
      Size = 6
    end
    object cdsClientesFONEB4_CLIENTE: TStringField
      FieldName = 'FONEB4_CLIENTE'
      Size = 14
    end
    object cdsClientesCONTA4_CLIENTE: TStringField
      FieldName = 'CONTA4_CLIENTE'
      Size = 10
    end
    object cdsClientesCLDSD4_CLIENTE: TDateField
      FieldName = 'CLDSD4_CLIENTE'
    end
    object cdsClientesBANCO5_CLIENTE: TStringField
      FieldName = 'BANCO5_CLIENTE'
      Size = 15
    end
    object cdsClientesAGENC5_CLIENTE: TStringField
      FieldName = 'AGENC5_CLIENTE'
      Size = 6
    end
    object cdsClientesFONEB5_CLIENTE: TStringField
      FieldName = 'FONEB5_CLIENTE'
      Size = 14
    end
    object cdsClientesCONTA5_CLIENTE: TStringField
      FieldName = 'CONTA5_CLIENTE'
      Size = 10
    end
    object cdsClientesCLDSD5_CLIENTE: TDateField
      FieldName = 'CLDSD5_CLIENTE'
    end
    object cdsClientesCOMISSAO_CLIENTE: TStringField
      FieldName = 'COMISSAO_CLIENTE'
      Size = 1
    end
    object cdsClientesCARTAO_CLIENTE: TDateField
      FieldName = 'CARTAO_CLIENTE'
    end
    object cdsClientesULTIMO_CONT_CLIENTE: TDateField
      FieldName = 'ULTIMO_CONT_CLIENTE'
    end
    object cdsClientesUSUARIO_CLIENTE: TStringField
      FieldName = 'USUARIO_CLIENTE'
      Size = 10
    end
    object cdsClientesSTATUS_CLIENTE: TStringField
      FieldName = 'STATUS_CLIENTE'
      Size = 1
    end
    object cdsClientesNATURALID_CLIENTE: TStringField
      FieldName = 'NATURALID_CLIENTE'
      Size = 30
    end
    object cdsClientesESTADOCIVIL_CLIENTE: TStringField
      FieldName = 'ESTADOCIVIL_CLIENTE'
      Size = 15
    end
    object cdsClientesCARTEIRATRAB_CLIENTE: TStringField
      FieldName = 'CARTEIRATRAB_CLIENTE'
      Size = 15
    end
    object cdsClientesTEMPO_RES_CLIENTE: TStringField
      FieldName = 'TEMPO_RES_CLIENTE'
      Size = 10
    end
    object cdsClientesTIPO_CASA_CLIENTE: TStringField
      FieldName = 'TIPO_CASA_CLIENTE'
      Size = 1
    end
    object cdsClientesVALOR_CASA_CLIENTE: TFMTBCDField
      FieldName = 'VALOR_CASA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesFONERECADO_CLIENTE: TStringField
      FieldName = 'FONERECADO_CLIENTE'
      Size = 13
    end
    object cdsClientesTRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClientesTRAB_BAIRRO_CLIENTE: TStringField
      FieldName = 'TRAB_BAIRRO_CLIENTE'
    end
    object cdsClientesTRAB_CIDADE_CLIENTE: TStringField
      FieldName = 'TRAB_CIDADE_CLIENTE'
    end
    object cdsClientesTRAB_ESTADO_CLIENTE: TStringField
      FieldName = 'TRAB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsClientesTRAB_CEP_CLIENTE: TStringField
      FieldName = 'TRAB_CEP_CLIENTE'
      Size = 9
    end
    object cdsClientesTRAB_DATAADMISSAO_CLIENTE: TDateField
      FieldName = 'TRAB_DATAADMISSAO_CLIENTE'
    end
    object cdsClientesAVACONJ_TIPO_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPO_CLIENTE'
      Size = 1
    end
    object cdsClientesAVACONJ_NOME_CLIENTE: TStringField
      FieldName = 'AVACONJ_NOME_CLIENTE'
      Size = 40
    end
    object cdsClientesAVACONJ_DATANASC_CLIENTE: TDateField
      FieldName = 'AVACONJ_DATANASC_CLIENTE'
    end
    object cdsClientesAVACONJ_ESTCIVIL_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTCIVIL_CLIENTE'
      Size = 10
    end
    object cdsClientesAVACONJ_PAI_CLIENTE: TStringField
      FieldName = 'AVACONJ_PAI_CLIENTE'
      Size = 30
    end
    object cdsClientesAVACONJ_MAE_CLIENTE: TStringField
      FieldName = 'AVACONJ_MAE_CLIENTE'
      Size = 30
    end
    object cdsClientesAVACONJ_RG_CLIENTE: TStringField
      FieldName = 'AVACONJ_RG_CLIENTE'
    end
    object cdsClientesAVACONJ_CPF_CLIENTE: TStringField
      FieldName = 'AVACONJ_CPF_CLIENTE'
      Size = 15
    end
    object cdsClientesAVACONJ_CARTERA_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARTERA_CLIENTE'
      Size = 15
    end
    object cdsClientesAVACONJ_ENDERECO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClientesAVACONJ_BAIRRO_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAIRRO_CLIENTE'
    end
    object cdsClientesAVACONJ_CIDADE_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDADE_CLIENTE'
    end
    object cdsClientesAVACONJ_ESTADO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsClientesAVACONJ_CEP_CLIENTE: TStringField
      FieldName = 'AVACONJ_CEP_CLIENTE'
      Size = 9
    end
    object cdsClientesAVACONJ_FONE_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONE_CLIENTE'
      Size = 13
    end
    object cdsClientesAVACONJ_TEMPORESID_CLIENTE: TStringField
      FieldName = 'AVACONJ_TEMPORESID_CLIENTE'
      Size = 10
    end
    object cdsClientesAVACONJ_TIPOIMOV_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPOIMOV_CLIENTE'
      Size = 1
    end
    object cdsClientesAVACONJ_EMPTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_EMPTRAB_CLIENTE'
      Size = 30
    end
    object cdsClientesAVACONJ_ENDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDTRAB_CLIENTE'
      Size = 40
    end
    object cdsClientesAVACONJ_BAITRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAITRAB_CLIENTE'
    end
    object cdsClientesAVACONJ_CIDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDTRAB_CLIENTE'
    end
    object cdsClientesAVACONJ_ESTTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTTRAB_CLIENTE'
      Size = 2
    end
    object cdsClientesAVACONJ_ADMTRAB_CLIENTE: TDateField
      FieldName = 'AVACONJ_ADMTRAB_CLIENTE'
    end
    object cdsClientesAVACONJ_FUNCAO_CLIENTE: TStringField
      FieldName = 'AVACONJ_FUNCAO_CLIENTE'
    end
    object cdsClientesAVACONJ_CARGO_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARGO_CLIENTE'
      Size = 40
    end
    object cdsClientesAVACONJ_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'AVACONJ_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsClientesAVACONJ_FONTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONTRAB_CLIENTE'
      Size = 13
    end
    object cdsClientesAVACONJ_REFERENCIA1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA1_CLIENTE'
      Size = 22
    end
    object cdsClientesAVACONJ_REFERENCIA2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA2_CLIENTE'
      Size = 22
    end
    object cdsClientesAVACONJ_REFERENCIA3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA3_CLIENTE'
      Size = 22
    end
    object cdsClientesPARENTE_NOME_CLIENTE: TStringField
      FieldName = 'PARENTE_NOME_CLIENTE'
      Size = 40
    end
    object cdsClientesPARENTE_FONE_CLIENTE: TStringField
      FieldName = 'PARENTE_FONE_CLIENTE'
      Size = 13
    end
    object cdsClientesPARENTE_ENDERECO_CLIENTE: TStringField
      FieldName = 'PARENTE_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsClientesPARENTE_BAIRRO_CLIENTE: TStringField
      FieldName = 'PARENTE_BAIRRO_CLIENTE'
    end
    object cdsClientesPARENTE_CIDADE_CLIENTE: TStringField
      FieldName = 'PARENTE_CIDADE_CLIENTE'
    end
    object cdsClientesDATABASE_CLIENTE: TIntegerField
      FieldName = 'DATABASE_CLIENTE'
    end
    object cdsClientesCONTATO1_CLIENTE: TStringField
      FieldName = 'CONTATO1_CLIENTE'
      Size = 40
    end
    object cdsClientesCONTATO2_CLIENTE: TStringField
      FieldName = 'CONTATO2_CLIENTE'
      Size = 40
    end
    object cdsClientesCONTATO3_CLIENTE: TStringField
      FieldName = 'CONTATO3_CLIENTE'
      Size = 40
    end
    object cdsClientesCONTATO1_FONE__CLIENTE: TStringField
      FieldName = 'CONTATO1_FONE__CLIENTE'
      Size = 13
    end
    object cdsClientesCONTATO2_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO2_FONE_CLIENTE'
      Size = 13
    end
    object cdsClientesCONTATO3_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO3_FONE_CLIENTE'
      Size = 13
    end
    object cdsClientesPAIS_CLIENTE: TStringField
      FieldName = 'PAIS_CLIENTE'
    end
    object cdsClientesREPR_NOME_CLIENTE: TStringField
      FieldName = 'REPR_NOME_CLIENTE'
      Size = 40
    end
    object cdsClientesREPR_FONE_CLIENTE: TStringField
      FieldName = 'REPR_FONE_CLIENTE'
      Size = 13
    end
    object cdsClientesREPR_CELULAR_CLIENTE: TStringField
      FieldName = 'REPR_CELULAR_CLIENTE'
      Size = 15
    end
    object cdsClientesREPR_FAX_CLIENTE: TStringField
      FieldName = 'REPR_FAX_CLIENTE'
      Size = 15
    end
    object cdsClientesAVACONJ_REFFONE3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE3_CLIENTE'
      Size = 13
    end
    object cdsClientesAVACONJ_REFFONE2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE2_CLIENTE'
      Size = 13
    end
    object cdsClientesAVACONJ_REFFONE1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE1_CLIENTE'
      Size = 13
    end
    object cdsClientesSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
  end
  object ppClientes: TppDBPipeline
    DataSource = dtsClientes
    UserName = 'Clientes'
    Left = 455
    Top = 14
  end
  object dtsClientes: TDataSource
    DataSet = cdsClientes
    Left = 354
    Top = 15
  end
end
