object dmAltF2: TdmAltF2
  OldCreateOrder = False
  Left = 317
  Top = 189
  Height = 263
  Width = 348
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 126
    Top = 16
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
  object dspCidade: TDataSetProvider
    DataSet = qryCidade
    Options = [poAllowCommandText]
    Left = 71
    Top = 16
  end
  object qryCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CIDADE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 16
    Top = 16
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
    Left = 17
    Top = 80
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
    Left = 71
    Top = 81
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
    Left = 128
    Top = 81
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
      ProviderFlags = [pfInUpdate, pfInKey]
      Size = 30
    end
  end
end
