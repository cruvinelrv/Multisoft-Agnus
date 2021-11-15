unit udmF6;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmF6 = class(TDataModule)
    qryFornecedor: TSQLQuery;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    qryPesqClientes: TSQLQuery;
    qryPesqClientesCODIGO_CLIENTE: TIntegerField;
    qryPesqClientesTIPO_CLIENTE: TIntegerField;
    qryPesqClientesNOME_CLIENTE: TStringField;
    qryPesqClientesFANTASIA_CLIENTE: TStringField;
    qryPesqClientesTIPOPESSOA_CLIENTE: TStringField;
    qryPesqClientesPAI_CLIENTE: TStringField;
    qryPesqClientesMAE_CLIENTE: TStringField;
    qryPesqClientesENDERECO_CLIENTE: TStringField;
    qryPesqClientesBAIRRO_CLIENTE: TStringField;
    qryPesqClientesCIDADE_CLIENTE: TIntegerField;
    qryPesqClientesESTADO_CLIENTE: TStringField;
    qryPesqClientesCEP_CLIENTE: TStringField;
    qryPesqClientesCX_POSTAL_CLIENTE: TStringField;
    qryPesqClientesTELEFONE_CLIENTE: TStringField;
    qryPesqClientesFAX_CLIENTE: TStringField;
    qryPesqClientesCELULAR_CLIENTE: TStringField;
    qryPesqClientesCNPJ_CLIENTE: TStringField;
    qryPesqClientesDATANASC_CLIENTE: TDateField;
    qryPesqClientesINSCRICAO_CLIENTE: TStringField;
    qryPesqClientesINSC_MUN_CLIENTE: TStringField;
    qryPesqClientesDATABLOQUEIO_CLIENTE: TDateField;
    qryPesqClientesULTIMA_COMPRA_CLIENTE: TDateField;
    qryPesqClientesDATACADASTRO_CLIENTE: TDateField;
    qryPesqClientesVALORCOMPRA_CLIENTE: TFMTBCDField;
    qryPesqClientesCREDITO_CLIENTE: TFMTBCDField;
    qryPesqClientesUTILIZADO_CLIENTE: TFMTBCDField;
    qryPesqClientesCONTATO_CLIENTE: TStringField;
    qryPesqClientesAREA_CLIENTE: TIntegerField;
    qryPesqClientesCONTRIBUINTE_CLIENTE: TStringField;
    qryPesqClientesOBSEVACAO_CLIENTE: TMemoField;
    qryPesqClientesMANEQUIN_CLIENTE: TStringField;
    qryPesqClientesSAPATO_CLIENTE: TStringField;
    qryPesqClientesMANEQUIN1_CLIENTE: TStringField;
    qryPesqClientesSAPATO1_CLIENTE: TStringField;
    qryPesqClientesSPC_CLIENTE: TStringField;
    qryPesqClientesCHECK_CLIENTE: TStringField;
    qryPesqClientesSERASA_CLIENTE: TStringField;
    qryPesqClientesATACADO_CLIENTE: TStringField;
    qryPesqClientesHOMEPAGE_CLIENTE: TStringField;
    qryPesqClientesEMAIL_CLIENTE: TStringField;
    qryPesqClientesDDG_CLIENTE: TStringField;
    qryPesqClientesSOCIO1_CLIENTE: TStringField;
    qryPesqClientesSOCIO2_CLIENTE: TStringField;
    qryPesqClientesSOCIO1_DATANASC_CLIENTE: TDateField;
    qryPesqClientesSOCIO2_DATANASC_CLIENTE: TDateField;
    qryPesqClientesGERENTE_CLIENTE: TStringField;
    qryPesqClientesGERENTE_DATANASC_CLIENTE: TDateField;
    qryPesqClientesJUNTACOMERCIAL_CLIENTE: TStringField;
    qryPesqClientesCAPITAL_CLIENTE: TFMTBCDField;
    qryPesqClientesTRAB_CLIENTE: TStringField;
    qryPesqClientesTRAB_FUNCAO_CLIENTE: TStringField;
    qryPesqClientesTRAB_FONE_CLIENTE: TStringField;
    qryPesqClientesTRAB_RAMAL_CLIENTE: TStringField;
    qryPesqClientesTRAB_SALARIO_CLIENTE: TFMTBCDField;
    qryPesqClientesTRAB_OUTRAS_CLIENTE: TFMTBCDField;
    qryPesqClientesCONJUGE_CLIENTE: TStringField;
    qryPesqClientesCONJUGE_TRABALHO_CLIENTE: TStringField;
    qryPesqClientesCONJUGE_FUNCAO1_CLIENTE: TStringField;
    qryPesqClientesCONJUGE_DATANASC_CLIENTE: TDateField;
    qryPesqClientesCONJUGE_FONE_CLIENTE: TStringField;
    qryPesqClientesCONJUGE_RAMAL_CLIENTE: TStringField;
    qryPesqClientesCONJUGE_SALARIO_CLIENTE: TFMTBCDField;
    qryPesqClientesCONJUGE_OUTRAS_CLIENTE: TFMTBCDField;
    qryPesqClientesREF_BANCO1_CLIENTE: TStringField;
    qryPesqClientesREF_BANCO2_CLIENTE: TStringField;
    qryPesqClientesREF_BANCOFONE1_CLIENTE: TStringField;
    qryPesqClientesREF_BANCOFONE2_CLIENTE: TStringField;
    qryPesqClientesREF_COMERCIAL1_CLIENTE: TStringField;
    qryPesqClientesREF_COMERCIAL2_CLIENTE: TStringField;
    qryPesqClientesREF_COMERCIALFONE1_CLIENTE: TStringField;
    qryPesqClientesREF_COMERCIALFONE2_CLIENTE: TStringField;
    qryPesqClientesREF_PESSOAL1_CLIENTE: TStringField;
    qryPesqClientesREF_PESSOAL2_CLIENTE: TStringField;
    qryPesqClientesREF_PESSOALFONE1_CLIENTE: TStringField;
    qryPesqClientesREF_PESSOALFONE2_CLIENTE: TStringField;
    qryPesqClientesCOB_ENDERECO_CLIENTE: TStringField;
    qryPesqClientesCOB_BAIRRO_CLIENTE: TStringField;
    qryPesqClientesCOB_CIDADE_CLIENTE: TIntegerField;
    qryPesqClientesCOB_ESTADO_CLIENTE: TStringField;
    qryPesqClientesCOB_CEP_CLIENTE: TStringField;
    qryPesqClientesCOB_TELEFONE_CLIENTE: TStringField;
    qryPesqClientesCOB_FAX_CLIENTE: TStringField;
    qryPesqClientesCOB_CXPOSTAL_CLIENTE: TStringField;
    qryPesqClientesVENDEDOR_CLIENTE: TIntegerField;
    qryPesqClientesVENDEDOR1_CLIENTE: TIntegerField;
    qryPesqClientesRAMO1_CLIENTE: TIntegerField;
    qryPesqClientesRAMO2_CLIENTE: TIntegerField;
    qryPesqClientesRAMO3_CLIENTE: TIntegerField;
    qryPesqClientesTPGTO_CLIENTE: TIntegerField;
    qryPesqClientesBANCO1_CLIENTE: TStringField;
    qryPesqClientesAGENC1_CLIENTE: TStringField;
    qryPesqClientesFONEB1_CLIENTE: TStringField;
    qryPesqClientesCONTA1_CLIENTE: TStringField;
    qryPesqClientesCLDSD1_CLIENTE: TDateField;
    qryPesqClientesBANCO2_CLIENTE: TStringField;
    qryPesqClientesAGENC2_CLIENTE: TStringField;
    qryPesqClientesFONEB2_CLIENTE: TStringField;
    qryPesqClientesCONTA2_CLIENTE: TStringField;
    qryPesqClientesCLDSD2_CLIENTE: TDateField;
    qryPesqClientesBANCO3_CLIENTE: TStringField;
    qryPesqClientesAGENC3_CLIENTE: TStringField;
    qryPesqClientesFONEB3_CLIENTE: TStringField;
    qryPesqClientesCONTA3_CLIENTE: TStringField;
    qryPesqClientesCLDSD3_CLIENTE: TDateField;
    qryPesqClientesBANCO4_CLIENTE: TStringField;
    qryPesqClientesAGENC4_CLIENTE: TStringField;
    qryPesqClientesFONEB4_CLIENTE: TStringField;
    qryPesqClientesCONTA4_CLIENTE: TStringField;
    qryPesqClientesCLDSD4_CLIENTE: TDateField;
    qryPesqClientesBANCO5_CLIENTE: TStringField;
    qryPesqClientesAGENC5_CLIENTE: TStringField;
    qryPesqClientesFONEB5_CLIENTE: TStringField;
    qryPesqClientesCONTA5_CLIENTE: TStringField;
    qryPesqClientesCLDSD5_CLIENTE: TDateField;
    qryPesqClientesCOMISSAO_CLIENTE: TStringField;
    qryPesqClientesCARTAO_CLIENTE: TDateField;
    qryPesqClientesULTIMO_CONT_CLIENTE: TDateField;
    qryPesqClientesUSUARIO_CLIENTE: TStringField;
    qryPesqClientesSTATUS_CLIENTE: TStringField;
    qryPesqClientesNATURALID_CLIENTE: TStringField;
    qryPesqClientesESTADOCIVIL_CLIENTE: TStringField;
    qryPesqClientesCARTEIRATRAB_CLIENTE: TStringField;
    qryPesqClientesTEMPO_RES_CLIENTE: TStringField;
    qryPesqClientesTIPO_CASA_CLIENTE: TStringField;
    qryPesqClientesVALOR_CASA_CLIENTE: TFMTBCDField;
    qryPesqClientesFONERECADO_CLIENTE: TStringField;
    qryPesqClientesTRAB_ENDERECO_CLIENTE: TStringField;
    qryPesqClientesTRAB_BAIRRO_CLIENTE: TStringField;
    qryPesqClientesTRAB_CIDADE_CLIENTE: TStringField;
    qryPesqClientesTRAB_ESTADO_CLIENTE: TStringField;
    qryPesqClientesTRAB_CEP_CLIENTE: TStringField;
    qryPesqClientesTRAB_DATAADMISSAO_CLIENTE: TDateField;
    qryPesqClientesAVACONJ_TIPO_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_NOME_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_DATANASC_CLIENTE: TDateField;
    qryPesqClientesAVACONJ_ESTCIVIL_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_PAI_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_MAE_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_RG_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_CPF_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_CARTERA_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_ENDERECO_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_BAIRRO_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_CIDADE_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_ESTADO_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_CEP_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_FONE_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_TEMPORESID_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_TIPOIMOV_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_EMPTRAB_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_ENDTRAB_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_BAITRAB_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_CIDTRAB_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_ESTTRAB_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_ADMTRAB_CLIENTE: TDateField;
    qryPesqClientesAVACONJ_FUNCAO_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_CARGO_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_SALARIO_CLIENTE: TFMTBCDField;
    qryPesqClientesAVACONJ_FONTRAB_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_REFERENCIA1_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_REFERENCIA2_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_REFERENCIA3_CLIENTE: TStringField;
    qryPesqClientesPARENTE_NOME_CLIENTE: TStringField;
    qryPesqClientesPARENTE_FONE_CLIENTE: TStringField;
    qryPesqClientesPARENTE_ENDERECO_CLIENTE: TStringField;
    qryPesqClientesPARENTE_BAIRRO_CLIENTE: TStringField;
    qryPesqClientesPARENTE_CIDADE_CLIENTE: TStringField;
    qryPesqClientesDATABASE_CLIENTE: TIntegerField;
    qryPesqClientesCONTATO1_CLIENTE: TStringField;
    qryPesqClientesCONTATO2_CLIENTE: TStringField;
    qryPesqClientesCONTATO3_CLIENTE: TStringField;
    qryPesqClientesCONTATO1_FONE__CLIENTE: TStringField;
    qryPesqClientesCONTATO2_FONE_CLIENTE: TStringField;
    qryPesqClientesCONTATO3_FONE_CLIENTE: TStringField;
    qryPesqClientesPAIS_CLIENTE: TStringField;
    qryPesqClientesREPR_NOME_CLIENTE: TStringField;
    qryPesqClientesREPR_FONE_CLIENTE: TStringField;
    qryPesqClientesREPR_CELULAR_CLIENTE: TStringField;
    qryPesqClientesREPR_FAX_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_REFFONE3_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_REFFONE2_CLIENTE: TStringField;
    qryPesqClientesAVACONJ_REFFONE1_CLIENTE: TStringField;
    qryPesqClientesSALDO: TFMTBCDField;
    qryPesqClientesULTANUIDADE_CONTRATO: TIntegerField;
    dspPesqClientes: TDataSetProvider;
    cdsPesqCliente: TClientDataSet;
    cdsPesqClienteCODIGO_CLIENTE: TIntegerField;
    cdsPesqClienteNOME_CLIENTE: TStringField;
    cdsPesqClienteFANTASIA_CLIENTE: TStringField;
    cdsPesqClienteTELEFONE_CLIENTE: TStringField;
    cdsPesqClienteCNPJ_CLIENTE: TStringField;
    cdsPesqClienteFAX_CLIENTE: TStringField;
    cdsPesqClienteENDERECO_CLIENTE: TStringField;
    cdsPesqClienteBAIRRO_CLIENTE: TStringField;
    cdsPesqClienteDESCRICAO_CIDADE: TStringField;
    cdsPesqClienteESTADO_CLIENTE: TStringField;
    cdsPesqClienteCREDITO_CLIENTE: TFMTBCDField;
    cdsPesqClienteUTILIZADO_CLIENTE: TFMTBCDField;
    cdsPesqClienteSALDO: TFMTBCDField;
    cdsPesqClienteOBSEVACAO_CLIENTE: TMemoField;
    cdsPesqClienteULTANUIDADE_CONTRATO: TIntegerField;
    cdsPesqClientes2: TClientDataSet;
    cdsPesqClientes2CODIGO_CLIENTE: TIntegerField;
    cdsPesqClientes2TIPO_CLIENTE: TIntegerField;
    cdsPesqClientes2NOME_CLIENTE: TStringField;
    cdsPesqClientes2FANTASIA_CLIENTE: TStringField;
    cdsPesqClientes2TIPOPESSOA_CLIENTE: TStringField;
    cdsPesqClientes2PAI_CLIENTE: TStringField;
    cdsPesqClientes2MAE_CLIENTE: TStringField;
    cdsPesqClientes2ENDERECO_CLIENTE: TStringField;
    cdsPesqClientes2BAIRRO_CLIENTE: TStringField;
    cdsPesqClientes2CIDADE_CLIENTE: TIntegerField;
    cdsPesqClientes2ESTADO_CLIENTE: TStringField;
    cdsPesqClientes2CEP_CLIENTE: TStringField;
    cdsPesqClientes2CX_POSTAL_CLIENTE: TStringField;
    cdsPesqClientes2TELEFONE_CLIENTE: TStringField;
    cdsPesqClientes2FAX_CLIENTE: TStringField;
    cdsPesqClientes2CELULAR_CLIENTE: TStringField;
    cdsPesqClientes2CNPJ_CLIENTE: TStringField;
    cdsPesqClientes2DATANASC_CLIENTE: TDateField;
    cdsPesqClientes2INSCRICAO_CLIENTE: TStringField;
    cdsPesqClientes2INSC_MUN_CLIENTE: TStringField;
    cdsPesqClientes2DATABLOQUEIO_CLIENTE: TDateField;
    cdsPesqClientes2ULTIMA_COMPRA_CLIENTE: TDateField;
    cdsPesqClientes2DATACADASTRO_CLIENTE: TDateField;
    cdsPesqClientes2VALORCOMPRA_CLIENTE: TFMTBCDField;
    cdsPesqClientes2CREDITO_CLIENTE: TFMTBCDField;
    cdsPesqClientes2UTILIZADO_CLIENTE: TFMTBCDField;
    cdsPesqClientes2CONTATO_CLIENTE: TStringField;
    cdsPesqClientes2AREA_CLIENTE: TIntegerField;
    cdsPesqClientes2CONTRIBUINTE_CLIENTE: TStringField;
    cdsPesqClientes2OBSEVACAO_CLIENTE: TMemoField;
    cdsPesqClientes2MANEQUIN_CLIENTE: TStringField;
    cdsPesqClientes2SAPATO_CLIENTE: TStringField;
    cdsPesqClientes2MANEQUIN1_CLIENTE: TStringField;
    cdsPesqClientes2SAPATO1_CLIENTE: TStringField;
    cdsPesqClientes2SPC_CLIENTE: TStringField;
    cdsPesqClientes2CHECK_CLIENTE: TStringField;
    cdsPesqClientes2SERASA_CLIENTE: TStringField;
    cdsPesqClientes2ATACADO_CLIENTE: TStringField;
    cdsPesqClientes2HOMEPAGE_CLIENTE: TStringField;
    cdsPesqClientes2EMAIL_CLIENTE: TStringField;
    cdsPesqClientes2DDG_CLIENTE: TStringField;
    cdsPesqClientes2SOCIO1_CLIENTE: TStringField;
    cdsPesqClientes2SOCIO2_CLIENTE: TStringField;
    cdsPesqClientes2SOCIO1_DATANASC_CLIENTE: TDateField;
    cdsPesqClientes2SOCIO2_DATANASC_CLIENTE: TDateField;
    cdsPesqClientes2GERENTE_CLIENTE: TStringField;
    cdsPesqClientes2GERENTE_DATANASC_CLIENTE: TDateField;
    cdsPesqClientes2JUNTACOMERCIAL_CLIENTE: TStringField;
    cdsPesqClientes2CAPITAL_CLIENTE: TFMTBCDField;
    cdsPesqClientes2TRAB_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_FUNCAO_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_FONE_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_RAMAL_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_SALARIO_CLIENTE: TFMTBCDField;
    cdsPesqClientes2TRAB_OUTRAS_CLIENTE: TFMTBCDField;
    cdsPesqClientes2CONJUGE_CLIENTE: TStringField;
    cdsPesqClientes2CONJUGE_TRABALHO_CLIENTE: TStringField;
    cdsPesqClientes2CONJUGE_FUNCAO1_CLIENTE: TStringField;
    cdsPesqClientes2CONJUGE_DATANASC_CLIENTE: TDateField;
    cdsPesqClientes2CONJUGE_FONE_CLIENTE: TStringField;
    cdsPesqClientes2CONJUGE_RAMAL_CLIENTE: TStringField;
    cdsPesqClientes2CONJUGE_SALARIO_CLIENTE: TFMTBCDField;
    cdsPesqClientes2CONJUGE_OUTRAS_CLIENTE: TFMTBCDField;
    cdsPesqClientes2REF_BANCO1_CLIENTE: TStringField;
    cdsPesqClientes2REF_BANCO2_CLIENTE: TStringField;
    cdsPesqClientes2REF_BANCOFONE1_CLIENTE: TStringField;
    cdsPesqClientes2REF_BANCOFONE2_CLIENTE: TStringField;
    cdsPesqClientes2REF_COMERCIAL1_CLIENTE: TStringField;
    cdsPesqClientes2REF_COMERCIAL2_CLIENTE: TStringField;
    cdsPesqClientes2REF_COMERCIALFONE1_CLIENTE: TStringField;
    cdsPesqClientes2REF_COMERCIALFONE2_CLIENTE: TStringField;
    cdsPesqClientes2REF_PESSOAL1_CLIENTE: TStringField;
    cdsPesqClientes2REF_PESSOAL2_CLIENTE: TStringField;
    cdsPesqClientes2REF_PESSOALFONE1_CLIENTE: TStringField;
    cdsPesqClientes2REF_PESSOALFONE2_CLIENTE: TStringField;
    cdsPesqClientes2COB_ENDERECO_CLIENTE: TStringField;
    cdsPesqClientes2COB_BAIRRO_CLIENTE: TStringField;
    cdsPesqClientes2COB_CIDADE_CLIENTE: TIntegerField;
    cdsPesqClientes2COB_ESTADO_CLIENTE: TStringField;
    cdsPesqClientes2COB_CEP_CLIENTE: TStringField;
    cdsPesqClientes2COB_TELEFONE_CLIENTE: TStringField;
    cdsPesqClientes2COB_FAX_CLIENTE: TStringField;
    cdsPesqClientes2COB_CXPOSTAL_CLIENTE: TStringField;
    cdsPesqClientes2VENDEDOR_CLIENTE: TIntegerField;
    cdsPesqClientes2VENDEDOR1_CLIENTE: TIntegerField;
    cdsPesqClientes2RAMO1_CLIENTE: TIntegerField;
    cdsPesqClientes2RAMO2_CLIENTE: TIntegerField;
    cdsPesqClientes2RAMO3_CLIENTE: TIntegerField;
    cdsPesqClientes2TPGTO_CLIENTE: TIntegerField;
    cdsPesqClientes2BANCO1_CLIENTE: TStringField;
    cdsPesqClientes2AGENC1_CLIENTE: TStringField;
    cdsPesqClientes2FONEB1_CLIENTE: TStringField;
    cdsPesqClientes2CONTA1_CLIENTE: TStringField;
    cdsPesqClientes2CLDSD1_CLIENTE: TDateField;
    cdsPesqClientes2BANCO2_CLIENTE: TStringField;
    cdsPesqClientes2AGENC2_CLIENTE: TStringField;
    cdsPesqClientes2FONEB2_CLIENTE: TStringField;
    cdsPesqClientes2CONTA2_CLIENTE: TStringField;
    cdsPesqClientes2CLDSD2_CLIENTE: TDateField;
    cdsPesqClientes2BANCO3_CLIENTE: TStringField;
    cdsPesqClientes2AGENC3_CLIENTE: TStringField;
    cdsPesqClientes2FONEB3_CLIENTE: TStringField;
    cdsPesqClientes2CONTA3_CLIENTE: TStringField;
    cdsPesqClientes2CLDSD3_CLIENTE: TDateField;
    cdsPesqClientes2BANCO4_CLIENTE: TStringField;
    cdsPesqClientes2AGENC4_CLIENTE: TStringField;
    cdsPesqClientes2FONEB4_CLIENTE: TStringField;
    cdsPesqClientes2CONTA4_CLIENTE: TStringField;
    cdsPesqClientes2CLDSD4_CLIENTE: TDateField;
    cdsPesqClientes2BANCO5_CLIENTE: TStringField;
    cdsPesqClientes2AGENC5_CLIENTE: TStringField;
    cdsPesqClientes2FONEB5_CLIENTE: TStringField;
    cdsPesqClientes2CONTA5_CLIENTE: TStringField;
    cdsPesqClientes2CLDSD5_CLIENTE: TDateField;
    cdsPesqClientes2COMISSAO_CLIENTE: TStringField;
    cdsPesqClientes2CARTAO_CLIENTE: TDateField;
    cdsPesqClientes2ULTIMO_CONT_CLIENTE: TDateField;
    cdsPesqClientes2USUARIO_CLIENTE: TStringField;
    cdsPesqClientes2STATUS_CLIENTE: TStringField;
    cdsPesqClientes2NATURALID_CLIENTE: TStringField;
    cdsPesqClientes2ESTADOCIVIL_CLIENTE: TStringField;
    cdsPesqClientes2CARTEIRATRAB_CLIENTE: TStringField;
    cdsPesqClientes2TEMPO_RES_CLIENTE: TStringField;
    cdsPesqClientes2TIPO_CASA_CLIENTE: TStringField;
    cdsPesqClientes2VALOR_CASA_CLIENTE: TFMTBCDField;
    cdsPesqClientes2FONERECADO_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_ENDERECO_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_BAIRRO_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_CIDADE_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_ESTADO_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_CEP_CLIENTE: TStringField;
    cdsPesqClientes2TRAB_DATAADMISSAO_CLIENTE: TDateField;
    cdsPesqClientes2AVACONJ_TIPO_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_NOME_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_DATANASC_CLIENTE: TDateField;
    cdsPesqClientes2AVACONJ_ESTCIVIL_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_PAI_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_MAE_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_RG_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_CPF_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_CARTERA_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_ENDERECO_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_BAIRRO_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_CIDADE_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_ESTADO_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_CEP_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_FONE_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_TEMPORESID_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_TIPOIMOV_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_EMPTRAB_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_ENDTRAB_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_BAITRAB_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_CIDTRAB_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_ESTTRAB_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_ADMTRAB_CLIENTE: TDateField;
    cdsPesqClientes2AVACONJ_FUNCAO_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_CARGO_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_SALARIO_CLIENTE: TFMTBCDField;
    cdsPesqClientes2AVACONJ_FONTRAB_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_REFERENCIA1_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_REFERENCIA2_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_REFERENCIA3_CLIENTE: TStringField;
    cdsPesqClientes2PARENTE_NOME_CLIENTE: TStringField;
    cdsPesqClientes2PARENTE_FONE_CLIENTE: TStringField;
    cdsPesqClientes2PARENTE_ENDERECO_CLIENTE: TStringField;
    cdsPesqClientes2PARENTE_BAIRRO_CLIENTE: TStringField;
    cdsPesqClientes2PARENTE_CIDADE_CLIENTE: TStringField;
    cdsPesqClientes2DATABASE_CLIENTE: TIntegerField;
    cdsPesqClientes2CONTATO1_CLIENTE: TStringField;
    cdsPesqClientes2CONTATO2_CLIENTE: TStringField;
    cdsPesqClientes2CONTATO3_CLIENTE: TStringField;
    cdsPesqClientes2CONTATO1_FONE__CLIENTE: TStringField;
    cdsPesqClientes2CONTATO2_FONE_CLIENTE: TStringField;
    cdsPesqClientes2CONTATO3_FONE_CLIENTE: TStringField;
    cdsPesqClientes2PAIS_CLIENTE: TStringField;
    cdsPesqClientes2REPR_NOME_CLIENTE: TStringField;
    cdsPesqClientes2REPR_FONE_CLIENTE: TStringField;
    cdsPesqClientes2REPR_CELULAR_CLIENTE: TStringField;
    cdsPesqClientes2REPR_FAX_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_REFFONE3_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_REFFONE2_CLIENTE: TStringField;
    cdsPesqClientes2AVACONJ_REFFONE1_CLIENTE: TStringField;
    cdsPesqClientes2SALDO: TFMTBCDField;
    cdsPesqClientes2ULTANUIDADE_CONTRATO: TIntegerField;
    qryPesquisa4: TSQLQuery;
    dspPesquisa4: TDataSetProvider;
    cdsPesquisa4: TClientDataSet;
    qryVendas: TSQLQuery;
    qryVendasCODIGO_VENDA: TIntegerField;
    qryVendasSERIE_VENDA: TStringField;
    qryVendasNOTAFISCAL_VENDA: TIntegerField;
    qryVendasCFOP_VENDA: TStringField;
    qryVendasEMISSAO_VENDA: TDateField;
    qryVendasHORA_VENDA: TStringField;
    qryVendasVENDEDOR_VENDA: TIntegerField;
    qryVendasFATURA_VENDA: TFMTBCDField;
    qryVendasTIPO_PRECO_VENDA: TStringField;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    cdsVendasCODIGO_VENDA: TIntegerField;
    cdsVendasSERIE_VENDA: TStringField;
    cdsVendasNOTAFISCAL_VENDA: TIntegerField;
    cdsVendasCFOP_VENDA: TStringField;
    cdsVendasEMISSAO_VENDA: TDateField;
    cdsVendasHORA_VENDA: TStringField;
    cdsVendasVENDEDOR_VENDA: TIntegerField;
    cdsVendasFATURA_VENDA: TFMTBCDField;
    cdsVendasTIPO_PRECO_VENDA: TStringField;
    dspVeiculoCliente: TDataSetProvider;
    cdsVeiculoCliente: TClientDataSet;
    cdsVeiculoClienteCLIENTE_VEICULO: TIntegerField;
    cdsVeiculoClienteCODIGO_VEICULO: TIntegerField;
    cdsVeiculoClienteDESCRICAO_VEICULO: TStringField;
    cdsVeiculoClienteMODELO_VEICULO: TStringField;
    cdsVeiculoClienteANO_VEICULO: TStringField;
    cdsVeiculoClientePLACA_VEICULO: TStringField;
    cdsVeiculoClienteNR_MOTOR_VEICULO: TStringField;
    cdsVeiculoClienteNR_SERIE_VEICULO: TStringField;
    qryVeiculoCliente: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmF6: TdmF6;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
