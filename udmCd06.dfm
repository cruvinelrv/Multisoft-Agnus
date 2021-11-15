object dmCd06: TdmCd06
  OldCreateOrder = False
  Left = 228
  Top = 74
  Height = 634
  Width = 678
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
      ' WHERE CODIGO_CLIENTE=:CLIENTE AND TIPO_CLIENTE=0'
      'ORDER BY CODIGO_CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 33
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
      DisplayWidth = 44
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 44
    end
    object qryClienteREF_COMERCIAL2_CLIENTE: TStringField
      DisplayWidth = 44
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 44
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
      DisplayWidth = 40
      FieldName = 'AVACONJ_CARGO_CLIENTE'
      Size = 40
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
    Left = 128
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
        Size = 44
      end
      item
        Name = 'REF_COMERCIAL2_CLIENTE'
        DataType = ftString
        Size = 44
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
        Size = 40
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
    Left = 224
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
      LookupDataSet = cdsCidade
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
      EditMask = '999\.999\.999\-99;1; '
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
      DisplayWidth = 44
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 44
    end
    object cdsClienteREF_COMERCIAL2_CLIENTE: TStringField
      DisplayWidth = 44
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 44
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
      DisplayWidth = 40
      FieldName = 'AVACONJ_CARGO_CLIENTE'
      Size = 40
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
    Left = 224
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
  object dspPesqClientes: TDataSetProvider
    DataSet = qryPesqClientes
    Options = [poAllowCommandText]
    Left = 128
    Top = 67
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
    Left = 32
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
  object qryPropriedade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM E_PROPRIEDADE WHERE CLIENTE_PRO=:CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 407
    Top = 56
    object qryPropriedadeCLIENTE_PRO: TIntegerField
      FieldName = 'CLIENTE_PRO'
      Required = True
    end
    object qryPropriedadeCODIGO_PRO: TIntegerField
      FieldName = 'CODIGO_PRO'
      Required = True
    end
    object qryPropriedadeINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      Size = 18
    end
    object qryPropriedadeDINS_PRO: TDateField
      FieldName = 'DINS_PRO'
    end
    object qryPropriedadeENDERECO_PRO: TStringField
      FieldName = 'ENDERECO_PRO'
      Size = 40
    end
    object qryPropriedadeBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
    end
    object qryPropriedadeCIDADE_PRO: TIntegerField
      FieldName = 'CIDADE_PRO'
    end
    object qryPropriedadeESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      Size = 2
    end
    object qryPropriedadeCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      Size = 9
    end
    object qryPropriedadeFONE_PRO: TStringField
      FieldName = 'FONE_PRO'
      Size = 15
    end
    object qryPropriedadeLOCAL_PRO: TMemoField
      FieldName = 'LOCAL_PRO'
      BlobType = ftMemo
      Size = 1
    end
    object qryPropriedadeARREDADA_PRO: TStringField
      FieldName = 'ARREDADA_PRO'
      FixedChar = True
      Size = 1
    end
    object qryPropriedadeARRENDATIPO_PRO: TStringField
      FieldName = 'ARRENDATIPO_PRO'
      Size = 1
    end
    object qryPropriedadeARRENDNOME_PRO: TStringField
      FieldName = 'ARRENDNOME_PRO'
      Size = 40
    end
    object qryPropriedadeARRENDAEND_PRO: TStringField
      FieldName = 'ARRENDAEND_PRO'
      Size = 40
    end
    object qryPropriedadeARRENDABAIRRO_PRO: TStringField
      FieldName = 'ARRENDABAIRRO_PRO'
    end
    object qryPropriedadeARRENDACIDADE_PRO: TStringField
      FieldName = 'ARRENDACIDADE_PRO'
    end
    object qryPropriedadeARRENDAESTADO_PRO: TStringField
      FieldName = 'ARRENDAESTADO_PRO'
      Size = 2
    end
    object qryPropriedadeARRENDACEP_PRO: TStringField
      FieldName = 'ARRENDACEP_PRO'
      Size = 8
    end
    object qryPropriedadeARREMDAFON_PRO: TStringField
      FieldName = 'ARREMDAFON_PRO'
      Size = 15
    end
    object qryPropriedadeDURACAO_PRO: TStringField
      FieldName = 'DURACAO_PRO'
      Size = 15
    end
    object qryPropriedadeAREA_PRO: TFMTBCDField
      FieldName = 'AREA_PRO'
      Precision = 15
      Size = 2
    end
    object qryPropriedadeGERENTE_PRO: TStringField
      FieldName = 'GERENTE_PRO'
    end
    object qryPropriedadeSAFRA_PRO: TStringField
      FieldName = 'SAFRA_PRO'
      Size = 9
    end
    object qryPropriedadePLANTADA_PRO: TFMTBCDField
      FieldName = 'PLANTADA_PRO'
      Precision = 15
      Size = 2
    end
    object qryPropriedadeOBSERVACAO_PRO: TMemoField
      FieldName = 'OBSERVACAO_PRO'
      BlobType = ftMemo
      Size = 1
    end
    object qryPropriedadeDESCRICAO_PRO: TStringField
      FieldName = 'DESCRICAO_PRO'
      Size = 40
    end
    object qryPropriedadeARRENDACNPJ_PRO: TStringField
      FieldName = 'ARRENDACNPJ_PRO'
      Size = 18
    end
  end
  object dspPropriedade: TDataSetProvider
    DataSet = qryPropriedade
    Left = 502
    Top = 53
  end
  object cdsPropriedade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPropriedade'
    Left = 600
    Top = 52
    object cdsPropriedadeCLIENTE_PRO: TIntegerField
      FieldName = 'CLIENTE_PRO'
      Required = True
    end
    object cdsPropriedadeCODIGO_PRO: TIntegerField
      FieldName = 'CODIGO_PRO'
      Required = True
    end
    object cdsPropriedadeINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      Size = 18
    end
    object cdsPropriedadeDINS_PRO: TDateField
      FieldName = 'DINS_PRO'
    end
    object cdsPropriedadeENDERECO_PRO: TStringField
      FieldName = 'ENDERECO_PRO'
      Size = 40
    end
    object cdsPropriedadeBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
    end
    object cdsPropriedadeCIDADE_PRO: TIntegerField
      FieldName = 'CIDADE_PRO'
    end
    object cdsPropriedadeESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      Size = 2
    end
    object cdsPropriedadeCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      Size = 9
    end
    object cdsPropriedadeFONE_PRO: TStringField
      FieldName = 'FONE_PRO'
      Size = 15
    end
    object cdsPropriedadeLOCAL_PRO: TMemoField
      FieldName = 'LOCAL_PRO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPropriedadeARREDADA_PRO: TStringField
      FieldName = 'ARREDADA_PRO'
      FixedChar = True
      Size = 1
    end
    object cdsPropriedadeARRENDATIPO_PRO: TStringField
      FieldName = 'ARRENDATIPO_PRO'
      Size = 1
    end
    object cdsPropriedadeARRENDNOME_PRO: TStringField
      FieldName = 'ARRENDNOME_PRO'
      Size = 40
    end
    object cdsPropriedadeARRENDAEND_PRO: TStringField
      FieldName = 'ARRENDAEND_PRO'
      Size = 40
    end
    object cdsPropriedadeARRENDABAIRRO_PRO: TStringField
      FieldName = 'ARRENDABAIRRO_PRO'
    end
    object cdsPropriedadeARRENDACIDADE_PRO: TStringField
      FieldName = 'ARRENDACIDADE_PRO'
    end
    object cdsPropriedadeARRENDAESTADO_PRO: TStringField
      FieldName = 'ARRENDAESTADO_PRO'
      Size = 2
    end
    object cdsPropriedadeARRENDACEP_PRO: TStringField
      FieldName = 'ARRENDACEP_PRO'
      Size = 8
    end
    object cdsPropriedadeARREMDAFON_PRO: TStringField
      FieldName = 'ARREMDAFON_PRO'
      Size = 15
    end
    object cdsPropriedadeDURACAO_PRO: TStringField
      FieldName = 'DURACAO_PRO'
      Size = 15
    end
    object cdsPropriedadeAREA_PRO: TFMTBCDField
      FieldName = 'AREA_PRO'
      Precision = 15
      Size = 2
    end
    object cdsPropriedadeGERENTE_PRO: TStringField
      FieldName = 'GERENTE_PRO'
    end
    object cdsPropriedadeSAFRA_PRO: TStringField
      FieldName = 'SAFRA_PRO'
      Size = 9
    end
    object cdsPropriedadePLANTADA_PRO: TFMTBCDField
      FieldName = 'PLANTADA_PRO'
      Precision = 15
      Size = 2
    end
    object cdsPropriedadeOBSERVACAO_PRO: TMemoField
      FieldName = 'OBSERVACAO_PRO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPropriedadeDESCRICAO_PRO: TStringField
      FieldName = 'DESCRICAO_PRO'
      Size = 40
    end
    object cdsPropriedadeARRENDACNPJ_PRO: TStringField
      FieldName = 'ARRENDACNPJ_PRO'
      Size = 18
    end
  end
  object qryDependente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM E_DEPENDENTE WHERE CLIENTE_DEPENDENTE=:CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 405
    Top = 105
    object qryDependenteCODIGO_DEPENDENTE: TIntegerField
      FieldName = 'CODIGO_DEPENDENTE'
      Required = True
    end
    object qryDependenteNOME_DEPENDENTE: TStringField
      FieldName = 'NOME_DEPENDENTE'
      Size = 40
    end
    object qryDependentePARENTESCO_DEPENDENTE: TStringField
      FieldName = 'PARENTESCO_DEPENDENTE'
    end
    object qryDependenteDATANASC_DEPENDENTE: TDateField
      FieldName = 'DATANASC_DEPENDENTE'
    end
    object qryDependenteCLIENTE_DEPENDENTE: TIntegerField
      FieldName = 'CLIENTE_DEPENDENTE'
      Required = True
    end
  end
  object dspDependente: TDataSetProvider
    DataSet = qryDependente
    Left = 502
    Top = 106
  end
  object cdsDependente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspDependente'
    Left = 600
    Top = 106
    object cdsDependenteCODIGO_DEPENDENTE: TIntegerField
      FieldName = 'CODIGO_DEPENDENTE'
      Required = True
    end
    object cdsDependenteNOME_DEPENDENTE: TStringField
      FieldName = 'NOME_DEPENDENTE'
      Size = 40
    end
    object cdsDependentePARENTESCO_DEPENDENTE: TStringField
      FieldName = 'PARENTESCO_DEPENDENTE'
    end
    object cdsDependenteDATANASC_DEPENDENTE: TDateField
      FieldName = 'DATANASC_DEPENDENTE'
    end
    object cdsDependenteCLIENTE_DEPENDENTE: TIntegerField
      FieldName = 'CLIENTE_DEPENDENTE'
      Required = True
    end
  end
  object cdsVeiculoCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspVeiculoCliente'
    Left = 600
    Top = 157
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
      EditMask = '9999;1; '
      Size = 9
    end
    object cdsVeiculoClientePLACA_VEICULO: TStringField
      FieldName = 'PLACA_VEICULO'
      EditMask = '!LLL\-9999;1; '
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
  object dspVeiculoCliente: TDataSetProvider
    DataSet = qryVeiculoCliente
    Left = 502
    Top = 156
  end
  object qryVeiculoCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM E_VEICULO_CLIENTE  WHERE CLIENTE_VEICULO=:CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 407
    Top = 154
    object qryVeiculoClienteCLIENTE_VEICULO: TIntegerField
      FieldName = 'CLIENTE_VEICULO'
      Required = True
    end
    object qryVeiculoClienteCODIGO_VEICULO: TIntegerField
      FieldName = 'CODIGO_VEICULO'
      Required = True
    end
    object qryVeiculoClienteDESCRICAO_VEICULO: TStringField
      FieldName = 'DESCRICAO_VEICULO'
      Size = 30
    end
    object qryVeiculoClienteMODELO_VEICULO: TStringField
      FieldName = 'MODELO_VEICULO'
      Size = 30
    end
    object qryVeiculoClienteANO_VEICULO: TStringField
      FieldName = 'ANO_VEICULO'
      Size = 9
    end
    object qryVeiculoClientePLACA_VEICULO: TStringField
      FieldName = 'PLACA_VEICULO'
      Size = 10
    end
    object qryVeiculoClienteNR_MOTOR_VEICULO: TStringField
      FieldName = 'NR_MOTOR_VEICULO'
      Size = 30
    end
    object qryVeiculoClienteNR_SERIE_VEICULO: TStringField
      FieldName = 'NR_SERIE_VEICULO'
      Size = 30
    end
  end
  object qryRamoAtividade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_ATIVIDADE ORDER BY DESCRICAO_ATIVIDADE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 407
    Top = 8
    object qryRamoAtividadeCODIGO_ATIVIDADE: TIntegerField
      FieldName = 'CODIGO_ATIVIDADE'
      Required = True
    end
    object qryRamoAtividadeTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 35
    end
    object qryRamoAtividadeDESCRICAO_ATIVIDADE: TStringField
      FieldName = 'DESCRICAO_ATIVIDADE'
      Size = 40
    end
  end
  object dspRamoAtividade: TDataSetProvider
    DataSet = qryRamoAtividade
    Left = 502
    Top = 7
  end
  object cdsRamoAtividade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRamoAtividade'
    Left = 600
    Top = 6
    object cdsRamoAtividadeCODIGO_ATIVIDADE: TIntegerField
      FieldName = 'CODIGO_ATIVIDADE'
      Required = True
    end
    object cdsRamoAtividadeTIPO_ATIVIDADE: TStringField
      FieldName = 'TIPO_ATIVIDADE'
      Size = 35
    end
    object cdsRamoAtividadeDESCRICAO_ATIVIDADE: TStringField
      FieldName = 'DESCRICAO_ATIVIDADE'
      Size = 40
    end
  end
  object qryCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CIDADE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 408
    Top = 304
    object qryCidadeCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      Required = True
    end
    object qryCidadeDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object qryCidadeCEP_INICIA_CIDADE: TStringField
      FieldName = 'CEP_INICIA_CIDADE'
      Size = 9
    end
    object qryCidadeCEP_FINAL_CIDADE: TStringField
      FieldName = 'CEP_FINAL_CIDADE'
      Size = 9
    end
    object qryCidadeUF_CIDADE: TStringField
      FieldName = 'UF_CIDADE'
      FixedChar = True
      Size = 2
    end
    object qryCidadePAIS_CIDADE: TStringField
      FieldName = 'PAIS_CIDADE'
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = qryCidade
    Options = [poAllowCommandText]
    Left = 502
    Top = 301
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 601
    Top = 303
    object cdsCidadeCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      Required = True
    end
    object cdsCidadeDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object cdsCidadeCEP_INICIA_CIDADE: TStringField
      FieldName = 'CEP_INICIA_CIDADE'
      EditMask = '99999\-999;1;_'
      Size = 9
    end
    object cdsCidadeCEP_FINAL_CIDADE: TStringField
      FieldName = 'CEP_FINAL_CIDADE'
      EditMask = '99999\-999;1;_'
      Size = 9
    end
    object cdsCidadeUF_CIDADE: TStringField
      FieldName = 'UF_CIDADE'
      FixedChar = True
      Size = 2
    end
    object cdsCidadePAIS_CIDADE: TStringField
      FieldName = 'PAIS_CIDADE'
    end
  end
  object qryEstados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_ESTADOS ORDER BY CODIGO_ESTADO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 407
    Top = 201
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
    Left = 503
    Top = 202
  end
  object cdsEstados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstados'
    Left = 600
    Top = 203
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
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 602
    Top = 252
    object cdsVendedorCODIGO_VENDEDOR: TIntegerField
      FieldName = 'CODIGO_VENDEDOR'
      Required = True
    end
    object cdsVendedorNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object cdsVendedorCHAVE_VENDEDOR: TStringField
      FieldName = 'CHAVE_VENDEDOR'
      Size = 5
    end
    object cdsVendedorSITUACAO_VENDEDOR: TStringField
      FieldName = 'SITUACAO_VENDEDOR'
      Size = 1
    end
    object cdsVendedorFUNCAO_VENDEDOR: TStringField
      FieldName = 'FUNCAO_VENDEDOR'
      Size = 1
    end
    object cdsVendedorTABELA_VENDEDOR: TIntegerField
      FieldName = 'TABELA_VENDEDOR'
    end
    object cdsVendedorCODCLI_VENDEDOR: TIntegerField
      FieldName = 'CODCLI_VENDEDOR'
    end
    object cdsVendedorDEPARTAMENTO_VENDEDOR: TStringField
      FieldName = 'DEPARTAMENTO_VENDEDOR'
      Size = 30
    end
    object cdsVendedorENDERECO_VENDEDOR: TStringField
      FieldName = 'ENDERECO_VENDEDOR'
      Size = 40
    end
    object cdsVendedorVLR_HORA_VENDEDOR: TFMTBCDField
      FieldName = 'VLR_HORA_VENDEDOR'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsVendedorCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspVendedor: TDataSetProvider
    DataSet = qryVendedor
    Left = 502
    Top = 251
  end
  object qryVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_VENDEDOR WHERE COD_EMPRESA=:EMPRESA AND FUNCAO_V' +
        'ENDEDOR='#39'V'#39'  ORDER BY NOME_VENDEDOR')
    SQLConnection = DmPrincipal.DbConexao
    Left = 407
    Top = 252
    object qryVendedorCODIGO_VENDEDOR: TIntegerField
      FieldName = 'CODIGO_VENDEDOR'
      Required = True
    end
    object qryVendedorNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object qryVendedorCHAVE_VENDEDOR: TStringField
      FieldName = 'CHAVE_VENDEDOR'
      Size = 5
    end
    object qryVendedorSITUACAO_VENDEDOR: TStringField
      FieldName = 'SITUACAO_VENDEDOR'
      Size = 1
    end
    object qryVendedorFUNCAO_VENDEDOR: TStringField
      FieldName = 'FUNCAO_VENDEDOR'
      Size = 1
    end
    object qryVendedorTABELA_VENDEDOR: TIntegerField
      FieldName = 'TABELA_VENDEDOR'
    end
    object qryVendedorCODCLI_VENDEDOR: TIntegerField
      FieldName = 'CODCLI_VENDEDOR'
    end
    object qryVendedorDEPARTAMENTO_VENDEDOR: TStringField
      FieldName = 'DEPARTAMENTO_VENDEDOR'
      Size = 30
    end
    object qryVendedorENDERECO_VENDEDOR: TStringField
      FieldName = 'ENDERECO_VENDEDOR'
      Size = 40
    end
    object qryVendedorVLR_HORA_VENDEDOR: TFMTBCDField
      FieldName = 'VLR_HORA_VENDEDOR'
      Precision = 15
      Size = 2
    end
    object qryVendedorCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object dspTipoPagamento: TDataSetProvider
    DataSet = qryTipoPagamento
    Left = 505
    Top = 360
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
    Left = 600
    Top = 360
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
    object cdsTipoPagamentoCOD_EMPRESA: TIntegerField
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
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_CPAGAMENTO WHERE COD_EMPRESA=:EMPRESA ORDER BY D' +
        'ESCRICAO_CPAGAMENTO ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 411
    Top = 360
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
    object qryTipoPagamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendas'
    Left = 602
    Top = 411
    object cdsVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendasPARCEIRO_VENDA: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object cdsVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsVendasPROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object cdsVendasNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object cdsVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasDESCON_ESP_VENDA: TFMTBCDField
      FieldName = 'DESCON_ESP_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsVendasCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object cdsVendasCAIXA_VENDA: TFMTBCDField
      FieldName = 'CAIXA_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsVendasTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object cdsVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 4
    end
    object cdsVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendasCONFIRMA_VENDA: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object cdsVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsVendasDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object cdsVendasHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object cdsVendasVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object cdsVendasPESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsVendasPESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsVendasOBSERVACAO_VENDA: TStringField
      FieldName = 'OBSERVACAO_VENDA'
      Size = 75
    end
    object cdsVendasPARCELAS_VENDA: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object cdsVendasVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
    end
    object cdsVendasVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
    end
    object cdsVendasVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
    end
    object cdsVendasVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
    end
    object cdsVendasVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
    end
    object cdsVendasVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
    end
    object cdsVendasVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
    end
    object cdsVendasVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
    end
    object cdsVendasVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
    end
    object cdsVendasVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
    end
    object cdsVendasVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
    end
    object cdsVendasVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
    end
    object cdsVendasVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
    end
    object cdsVendasVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
    end
    object cdsVendasVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
    end
    object cdsVendasCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsVendasTIPO1_VENDA: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object cdsVendasDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object cdsVendasENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object cdsVendasTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object cdsVendasPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object cdsVendasESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
    object cdsVendasNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object cdsVendasAUTONOMO_VENDA: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object cdsVendasEXPORTADO_VENDA: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object cdsVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsVendasINFOADICIONA_VENDA: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object cdsVendasMACHO_4_VENDA: TIntegerField
      FieldName = 'MACHO_4_VENDA'
    end
    object cdsVendasMACHO_4_12_VENDA: TIntegerField
      FieldName = 'MACHO_4_12_VENDA'
    end
    object cdsVendasMACHO_12_24_VENDA: TIntegerField
      FieldName = 'MACHO_12_24_VENDA'
    end
    object cdsVendasMACHO_24_36_VENDA: TIntegerField
      FieldName = 'MACHO_24_36_VENDA'
    end
    object cdsVendasMACHO_M36_VENDA: TIntegerField
      FieldName = 'MACHO_M36_VENDA'
    end
    object cdsVendasFEMEA_4_VENDA: TIntegerField
      FieldName = 'FEMEA_4_VENDA'
    end
    object cdsVendasFEMEA_4_12_VENDA: TIntegerField
      FieldName = 'FEMEA_4_12_VENDA'
    end
    object cdsVendasFEMEA_12_24_VENDA: TIntegerField
      FieldName = 'FEMEA_12_24_VENDA'
    end
    object cdsVendasFEMEA_24_36_VENDA: TIntegerField
      FieldName = 'FEMEA_24_36_VENDA'
    end
    object cdsVendasFEMEA_M36_VENDA: TIntegerField
      FieldName = 'FEMEA_M36_VENDA'
    end
    object cdsVendasBUFALOS_VENDA: TIntegerField
      FieldName = 'BUFALOS_VENDA'
    end
    object cdsVendasCAPRINOS_VENDA: TIntegerField
      FieldName = 'CAPRINOS_VENDA'
    end
    object cdsVendasOVINOS_VENDA: TIntegerField
      FieldName = 'OVINOS_VENDA'
    end
    object cdsVendasSUINOS_VENDA: TIntegerField
      FieldName = 'SUINOS_VENDA'
    end
    object cdsVendasTROCA_VENDA: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object cdsVendasOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsVendasCNPJCLIENTE_VENDA: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object cdsVendasRGCLIENTE_VENDA: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object cdsVendasENDCLIENTE_VENDA: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object cdsVendasBAICLIENTE_VENDA: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object cdsVendasCIDCLIENTE_VENDA: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object cdsVendasESTCLIENTE_VENDA: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object cdsVendasCEPCLIENTE_VENDA: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object cdsVendasFONECLIENTE_VENDA: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object cdsVendasCARNE_VENDA: TStringField
      FieldName = 'CARNE_VENDA'
      Size = 1
    end
    object cdsVendasUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object cdsVendasUSUALTERA_VENDA: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object cdsVendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsVendasOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object cdsVendasOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object cdsVendasOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object cdsVendasOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Options = [poAllowCommandText]
    Left = 506
    Top = 409
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT * FROM P_VENDAS WHERE COD_EMPRESA=:EMPRESA ')
    SQLConnection = DmPrincipal.DbConexao
    Left = 410
    Top = 410
    object qryVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVendasPARCEIRO_VENDA: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object qryVendasCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryVendasPROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object qryVendasNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object qryVendasDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryVendasEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object qryVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasDESCON_ESP_VENDA: TFMTBCDField
      FieldName = 'DESCON_ESP_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object qryVendasCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object qryVendasCAIXA_VENDA: TFMTBCDField
      FieldName = 'CAIXA_VENDA'
      Precision = 15
      Size = 0
    end
    object qryVendasTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object qryVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 4
    end
    object qryVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendasCONFIRMA_VENDA: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object qryVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object qryVendasDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object qryVendasHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object qryVendasVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object qryVendasPESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      Precision = 15
      Size = 3
    end
    object qryVendasPESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      Precision = 15
      Size = 3
    end
    object qryVendasOBSERVACAO_VENDA: TStringField
      FieldName = 'OBSERVACAO_VENDA'
      Size = 75
    end
    object qryVendasPARCELAS_VENDA: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object qryVendasVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
    end
    object qryVendasVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
    end
    object qryVendasVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
    end
    object qryVendasVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
    end
    object qryVendasVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
    end
    object qryVendasVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
    end
    object qryVendasVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
    end
    object qryVendasVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
    end
    object qryVendasVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
    end
    object qryVendasVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
    end
    object qryVendasVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
    end
    object qryVendasVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
    end
    object qryVendasVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
    end
    object qryVendasVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
    end
    object qryVendasVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
    end
    object qryVendasCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qryVendasTIPO1_VENDA: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object qryVendasDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object qryVendasENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object qryVendasTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object qryVendasPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object qryVendasESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
    object qryVendasNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object qryVendasAUTONOMO_VENDA: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object qryVendasEXPORTADO_VENDA: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object qryVendasTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object qryVendasINFOADICIONA_VENDA: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object qryVendasMACHO_4_VENDA: TIntegerField
      FieldName = 'MACHO_4_VENDA'
    end
    object qryVendasMACHO_4_12_VENDA: TIntegerField
      FieldName = 'MACHO_4_12_VENDA'
    end
    object qryVendasMACHO_12_24_VENDA: TIntegerField
      FieldName = 'MACHO_12_24_VENDA'
    end
    object qryVendasMACHO_24_36_VENDA: TIntegerField
      FieldName = 'MACHO_24_36_VENDA'
    end
    object qryVendasMACHO_M36_VENDA: TIntegerField
      FieldName = 'MACHO_M36_VENDA'
    end
    object qryVendasFEMEA_4_VENDA: TIntegerField
      FieldName = 'FEMEA_4_VENDA'
    end
    object qryVendasFEMEA_4_12_VENDA: TIntegerField
      FieldName = 'FEMEA_4_12_VENDA'
    end
    object qryVendasFEMEA_12_24_VENDA: TIntegerField
      FieldName = 'FEMEA_12_24_VENDA'
    end
    object qryVendasFEMEA_24_36_VENDA: TIntegerField
      FieldName = 'FEMEA_24_36_VENDA'
    end
    object qryVendasFEMEA_M36_VENDA: TIntegerField
      FieldName = 'FEMEA_M36_VENDA'
    end
    object qryVendasBUFALOS_VENDA: TIntegerField
      FieldName = 'BUFALOS_VENDA'
    end
    object qryVendasCAPRINOS_VENDA: TIntegerField
      FieldName = 'CAPRINOS_VENDA'
    end
    object qryVendasOVINOS_VENDA: TIntegerField
      FieldName = 'OVINOS_VENDA'
    end
    object qryVendasSUINOS_VENDA: TIntegerField
      FieldName = 'SUINOS_VENDA'
    end
    object qryVendasTROCA_VENDA: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object qryVendasOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object qryVendasCNPJCLIENTE_VENDA: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object qryVendasRGCLIENTE_VENDA: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object qryVendasENDCLIENTE_VENDA: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object qryVendasBAICLIENTE_VENDA: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object qryVendasCIDCLIENTE_VENDA: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object qryVendasESTCLIENTE_VENDA: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object qryVendasCEPCLIENTE_VENDA: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object qryVendasFONECLIENTE_VENDA: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object qryVendasCARNE_VENDA: TStringField
      FieldName = 'CARNE_VENDA'
      Size = 1
    end
    object qryVendasUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object qryVendasUSUALTERA_VENDA: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object qryVendasCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryVendasOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object qryVendasOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object qryVendasOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object qryVendasOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
  end
  object cdsPesqClientes2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqClientes'
    Left = 314
    Top = 67
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
  object sdsTemporario: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
    Left = 312
    Top = 8
  end
  object qryReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_CLI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      '* '
      'FROM P_RECEBER '
      
        'WHERE CODIGO_CLIENTE_RECEBER=:COD_CLI AND TIPO_BAIXA_RECEBER<>'#39'T' +
        #39' AND COD_EMPRESA=:COD_EMP')
    SQLConnection = DmPrincipal.DbConexao
    Left = 408
    Top = 456
    object qryReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 13
    end
    object qryReceberTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object qryReceberCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object qryReceberEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object qryReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object qryReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object qryReceberALTERACAO_RECEBER: TDateField
      FieldName = 'ALTERACAO_RECEBER'
    end
    object qryReceberVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberDESCJUROS_RECEBER: TFMTBCDField
      FieldName = 'DESCJUROS_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberCOMISSAO_RECEBER: TFMTBCDField
      FieldName = 'COMISSAO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object qryReceberCODIGO_CENTRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_CENTRO_RECEBER'
    end
    object qryReceberCODIGO_CORRENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CORRENTE_RECEBER'
    end
    object qryReceberCODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
    end
    object qryReceberCODIGO_CONTA_RECEBER: TStringField
      FieldName = 'CODIGO_CONTA_RECEBER'
    end
    object qryReceberCODIGO_PARCEIRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_PARCEIRO_RECEBER'
    end
    object qryReceberCODIGO_BANCO_RECEBER: TIntegerField
      FieldName = 'CODIGO_BANCO_RECEBER'
    end
    object qryReceberBLOQUETE_RECEBER: TStringField
      FieldName = 'BLOQUETE_RECEBER'
      Size = 14
    end
    object qryReceberEMIS_BLOQ_RECEBER: TDateField
      FieldName = 'EMIS_BLOQ_RECEBER'
    end
    object qryReceberVENC_BLOQ_RECEBER: TDateField
      FieldName = 'VENC_BLOQ_RECEBER'
    end
    object qryReceberREMESSA_RECEBER: TIntegerField
      FieldName = 'REMESSA_RECEBER'
    end
    object qryReceberMORA_DIA_RECEBER: TFMTBCDField
      FieldName = 'MORA_DIA_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberINSTRUCAO_RECEBER: TStringField
      FieldName = 'INSTRUCAO_RECEBER'
      Size = 2
    end
    object qryReceberDESCONTO_RECEBER: TFMTBCDField
      FieldName = 'DESCONTO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberDESC_ATE_RECEBER: TDateField
      FieldName = 'DESC_ATE_RECEBER'
    end
    object qryReceberCONDICOES_RECEBER: TStringField
      FieldName = 'CONDICOES_RECEBER'
      Size = 55
    end
    object qryReceberTIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      Size = 1
    end
    object qryReceberMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object qryReceberCODIGO_CAIXA_RECEBER: TIntegerField
      FieldName = 'CODIGO_CAIXA_RECEBER'
    end
    object qryReceberS_RECEBER: TStringField
      FieldName = 'S_RECEBER'
      Size = 1
    end
    object qryReceberFORMAPAGTO_RECEBER: TStringField
      FieldName = 'FORMAPAGTO_RECEBER'
      Size = 1
    end
    object qryReceberTIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      Size = 11
    end
    object qryReceberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryReceberSALDO_RECEBER: TFMTBCDField
      FieldName = 'SALDO_RECEBER'
      Precision = 15
      Size = 2
    end
    object qryReceberHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      BlobType = ftMemo
      Size = 1
    end
    object qryReceberDATA_BASE_RECEBER2: TDateField
      FieldName = 'DATA_BASE_RECEBER'
    end
    object qryReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = qryReceber
    Options = [poAllowCommandText]
    Left = 505
    Top = 456
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_CLI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_EMP'
        ParamType = ptInput
      end>
    ProviderName = 'dspReceber'
    Left = 600
    Top = 457
    object cdsReceberDUPLICATA_RECEBER: TStringField
      FieldName = 'DUPLICATA_RECEBER'
      Required = True
      Size = 13
    end
    object cdsReceberTIPO_DOCUMENTO_RECEBER: TIntegerField
      FieldName = 'TIPO_DOCUMENTO_RECEBER'
    end
    object cdsReceberCODIGO_CLIENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CLIENTE_RECEBER'
      Required = True
    end
    object cdsReceberEMISSAO_RECEBER: TDateField
      FieldName = 'EMISSAO_RECEBER'
    end
    object cdsReceberVENCIMENTO_RECEBER: TDateField
      FieldName = 'VENCIMENTO_RECEBER'
    end
    object cdsReceberPREVISAO_RECEBER: TDateField
      FieldName = 'PREVISAO_RECEBER'
    end
    object cdsReceberALTERACAO_RECEBER: TDateField
      FieldName = 'ALTERACAO_RECEBER'
    end
    object cdsReceberVALOR_RECEBER: TFMTBCDField
      FieldName = 'VALOR_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberPARCIAL_RECEBER: TFMTBCDField
      FieldName = 'PARCIAL_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberVALORPAGO_RECEBER: TFMTBCDField
      FieldName = 'VALORPAGO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberDESCJUROS_RECEBER: TFMTBCDField
      FieldName = 'DESCJUROS_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberCOMISSAO_RECEBER: TFMTBCDField
      FieldName = 'COMISSAO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberCODIGO_PORTADOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_PORTADOR_RECEBER'
    end
    object cdsReceberCODIGO_CENTRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_CENTRO_RECEBER'
    end
    object cdsReceberCODIGO_CORRENTE_RECEBER: TIntegerField
      FieldName = 'CODIGO_CORRENTE_RECEBER'
    end
    object cdsReceberCODIGO_VENDEDOR_RECEBER: TIntegerField
      FieldName = 'CODIGO_VENDEDOR_RECEBER'
    end
    object cdsReceberCODIGO_CONTA_RECEBER: TStringField
      FieldName = 'CODIGO_CONTA_RECEBER'
    end
    object cdsReceberCODIGO_PARCEIRO_RECEBER: TIntegerField
      FieldName = 'CODIGO_PARCEIRO_RECEBER'
    end
    object cdsReceberCODIGO_BANCO_RECEBER: TIntegerField
      FieldName = 'CODIGO_BANCO_RECEBER'
    end
    object cdsReceberBLOQUETE_RECEBER: TStringField
      FieldName = 'BLOQUETE_RECEBER'
      Size = 14
    end
    object cdsReceberEMIS_BLOQ_RECEBER: TDateField
      FieldName = 'EMIS_BLOQ_RECEBER'
    end
    object cdsReceberVENC_BLOQ_RECEBER: TDateField
      FieldName = 'VENC_BLOQ_RECEBER'
    end
    object cdsReceberREMESSA_RECEBER: TIntegerField
      FieldName = 'REMESSA_RECEBER'
    end
    object cdsReceberMORA_DIA_RECEBER: TFMTBCDField
      FieldName = 'MORA_DIA_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberINSTRUCAO_RECEBER: TStringField
      FieldName = 'INSTRUCAO_RECEBER'
      Size = 2
    end
    object cdsReceberDESCONTO_RECEBER: TFMTBCDField
      FieldName = 'DESCONTO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberDESC_ATE_RECEBER: TDateField
      FieldName = 'DESC_ATE_RECEBER'
    end
    object cdsReceberCONDICOES_RECEBER: TStringField
      FieldName = 'CONDICOES_RECEBER'
      Size = 55
    end
    object cdsReceberTIPO_DUP_RECEBER: TStringField
      FieldName = 'TIPO_DUP_RECEBER'
      Size = 1
    end
    object cdsReceberMOVIMENTO_RECEBER: TDateField
      FieldName = 'MOVIMENTO_RECEBER'
    end
    object cdsReceberCODIGO_CAIXA_RECEBER: TIntegerField
      FieldName = 'CODIGO_CAIXA_RECEBER'
    end
    object cdsReceberS_RECEBER: TStringField
      FieldName = 'S_RECEBER'
      Size = 1
    end
    object cdsReceberFORMAPAGTO_RECEBER: TStringField
      FieldName = 'FORMAPAGTO_RECEBER'
      Size = 1
    end
    object cdsReceberTIT_PRINC_RECEBER: TStringField
      FieldName = 'TIT_PRINC_RECEBER'
      Size = 11
    end
    object cdsReceberCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsReceberSALDO_RECEBER: TFMTBCDField
      FieldName = 'SALDO_RECEBER'
      Precision = 15
      Size = 2
    end
    object cdsReceberHISTORICO_RECEBER: TMemoField
      FieldName = 'HISTORICO_RECEBER'
      BlobType = ftMemo
      Size = 1
    end
    object cdsReceberDATA_BASE_RECEBER: TDateField
      FieldName = 'DATA_BASE_RECEBER'
    end
    object cdsReceberTIPO_BAIXA_RECEBER: TStringField
      FieldName = 'TIPO_BAIXA_RECEBER'
      Size = 1
    end
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
    Left = 409
    Top = 516
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
  object dspContaBanco: TDataSetProvider
    DataSet = qryContaBanco
    Options = [poAllowCommandText]
    Left = 505
    Top = 516
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
    Left = 602
    Top = 516
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
end
