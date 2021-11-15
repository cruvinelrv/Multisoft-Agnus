unit udmF7;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmF7 = class(TDataModule)
    qryPesqClientes: TSQLQuery;
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
    qryPropriedade: TSQLQuery;
    qryPropriedadeCLIENTE_PRO: TIntegerField;
    qryPropriedadeCODIGO_PRO: TIntegerField;
    qryPropriedadeINSCEST_PRO: TStringField;
    qryPropriedadeDINS_PRO: TDateField;
    qryPropriedadeENDERECO_PRO: TStringField;
    qryPropriedadeBAIRRO_PRO: TStringField;
    qryPropriedadeCIDADE_PRO: TIntegerField;
    qryPropriedadeESTADO_PRO: TStringField;
    qryPropriedadeCEP_PRO: TStringField;
    qryPropriedadeFONE_PRO: TStringField;
    qryPropriedadeLOCAL_PRO: TMemoField;
    qryPropriedadeARREDADA_PRO: TStringField;
    qryPropriedadeARRENDATIPO_PRO: TStringField;
    qryPropriedadeARRENDNOME_PRO: TStringField;
    qryPropriedadeARRENDAEND_PRO: TStringField;
    qryPropriedadeARRENDABAIRRO_PRO: TStringField;
    qryPropriedadeARRENDACIDADE_PRO: TStringField;
    qryPropriedadeARRENDAESTADO_PRO: TStringField;
    qryPropriedadeARRENDACEP_PRO: TStringField;
    qryPropriedadeARREMDAFON_PRO: TStringField;
    qryPropriedadeDURACAO_PRO: TStringField;
    qryPropriedadeAREA_PRO: TFMTBCDField;
    qryPropriedadeGERENTE_PRO: TStringField;
    qryPropriedadeSAFRA_PRO: TStringField;
    qryPropriedadePLANTADA_PRO: TFMTBCDField;
    qryPropriedadeOBSERVACAO_PRO: TMemoField;
    qryPropriedadeDESCRICAO_PRO: TStringField;
    qryPropriedadeARRENDACNPJ_PRO: TStringField;
    dspPropriedade: TDataSetProvider;
    cdsPropriedade: TClientDataSet;
    cdsPropriedadeCLIENTE_PRO: TIntegerField;
    cdsPropriedadeCODIGO_PRO: TIntegerField;
    cdsPropriedadeINSCEST_PRO: TStringField;
    cdsPropriedadeDINS_PRO: TDateField;
    cdsPropriedadeENDERECO_PRO: TStringField;
    cdsPropriedadeBAIRRO_PRO: TStringField;
    cdsPropriedadeCIDADE_PRO: TIntegerField;
    cdsPropriedadeESTADO_PRO: TStringField;
    cdsPropriedadeCEP_PRO: TStringField;
    cdsPropriedadeFONE_PRO: TStringField;
    cdsPropriedadeLOCAL_PRO: TMemoField;
    cdsPropriedadeARREDADA_PRO: TStringField;
    cdsPropriedadeARRENDATIPO_PRO: TStringField;
    cdsPropriedadeARRENDNOME_PRO: TStringField;
    cdsPropriedadeARRENDAEND_PRO: TStringField;
    cdsPropriedadeARRENDABAIRRO_PRO: TStringField;
    cdsPropriedadeARRENDACIDADE_PRO: TStringField;
    cdsPropriedadeARRENDAESTADO_PRO: TStringField;
    cdsPropriedadeARRENDACEP_PRO: TStringField;
    cdsPropriedadeARREMDAFON_PRO: TStringField;
    cdsPropriedadeDURACAO_PRO: TStringField;
    cdsPropriedadeAREA_PRO: TFMTBCDField;
    cdsPropriedadeGERENTE_PRO: TStringField;
    cdsPropriedadeSAFRA_PRO: TStringField;
    cdsPropriedadePLANTADA_PRO: TFMTBCDField;
    cdsPropriedadeOBSERVACAO_PRO: TMemoField;
    cdsPropriedadeDESCRICAO_PRO: TStringField;
    cdsPropriedadeARRENDACNPJ_PRO: TStringField;
    cdsCidade: TClientDataSet;
    cdsCidadeCODIGO_CIDADE: TIntegerField;
    cdsCidadeDESCRICAO_CIDADE: TStringField;
    cdsCidadeCEP_INICIA_CIDADE: TStringField;
    cdsCidadeCEP_FINAL_CIDADE: TStringField;
    cdsCidadeUF_CIDADE: TStringField;
    cdsCidadePAIS_CIDADE: TStringField;
    dspCidade: TDataSetProvider;
    qryCidade: TSQLQuery;
    qryCidadeCODIGO_CIDADE: TIntegerField;
    qryCidadeDESCRICAO_CIDADE: TStringField;
    qryCidadeCEP_INICIA_CIDADE: TStringField;
    qryCidadeCEP_FINAL_CIDADE: TStringField;
    qryCidadeUF_CIDADE: TStringField;
    qryCidadePAIS_CIDADE: TStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmF7: TdmF7;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
