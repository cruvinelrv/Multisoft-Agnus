unit udmRL0202;

interface

uses
  SysUtils, Classes, FMTBcd, DB, ppComm, ppRelatv, ppDB, ppDBPipe,
  DBClient, Provider, SqlExpr;

type
  TdmRL0202 = class(TDataModule)
    qryClientes: TSQLQuery;
    dspClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    ppClientes: TppDBPipeline;
    dtsClientes: TDataSource;
    cdsClientesCODIGO_CLIENTE: TIntegerField;
    cdsClientesTIPO_CLIENTE: TIntegerField;
    cdsClientesNOME_CLIENTE: TStringField;
    cdsClientesFANTASIA_CLIENTE: TStringField;
    cdsClientesTIPOPESSOA_CLIENTE: TStringField;
    cdsClientesPAI_CLIENTE: TStringField;
    cdsClientesMAE_CLIENTE: TStringField;
    cdsClientesENDERECO_CLIENTE: TStringField;
    cdsClientesBAIRRO_CLIENTE: TStringField;
    cdsClientesCIDADE_CLIENTE: TIntegerField;
    cdsClientesESTADO_CLIENTE: TStringField;
    cdsClientesCEP_CLIENTE: TStringField;
    cdsClientesCX_POSTAL_CLIENTE: TStringField;
    cdsClientesTELEFONE_CLIENTE: TStringField;
    cdsClientesFAX_CLIENTE: TStringField;
    cdsClientesCELULAR_CLIENTE: TStringField;
    cdsClientesCNPJ_CLIENTE: TStringField;
    cdsClientesDATANASC_CLIENTE: TDateField;
    cdsClientesINSCRICAO_CLIENTE: TStringField;
    cdsClientesINSC_MUN_CLIENTE: TStringField;
    cdsClientesDATABLOQUEIO_CLIENTE: TDateField;
    cdsClientesULTIMA_COMPRA_CLIENTE: TDateField;
    cdsClientesDATACADASTRO_CLIENTE: TDateField;
    cdsClientesVALORCOMPRA_CLIENTE: TFMTBCDField;
    cdsClientesCREDITO_CLIENTE: TFMTBCDField;
    cdsClientesUTILIZADO_CLIENTE: TFMTBCDField;
    cdsClientesCONTATO_CLIENTE: TStringField;
    cdsClientesAREA_CLIENTE: TIntegerField;
    cdsClientesCONTRIBUINTE_CLIENTE: TStringField;
    cdsClientesOBSEVACAO_CLIENTE: TMemoField;
    cdsClientesMANEQUIN_CLIENTE: TStringField;
    cdsClientesSAPATO_CLIENTE: TStringField;
    cdsClientesMANEQUIN1_CLIENTE: TStringField;
    cdsClientesSAPATO1_CLIENTE: TStringField;
    cdsClientesSPC_CLIENTE: TStringField;
    cdsClientesCHECK_CLIENTE: TStringField;
    cdsClientesSERASA_CLIENTE: TStringField;
    cdsClientesATACADO_CLIENTE: TStringField;
    cdsClientesHOMEPAGE_CLIENTE: TStringField;
    cdsClientesEMAIL_CLIENTE: TStringField;
    cdsClientesDDG_CLIENTE: TStringField;
    cdsClientesSOCIO1_CLIENTE: TStringField;
    cdsClientesSOCIO2_CLIENTE: TStringField;
    cdsClientesSOCIO1_DATANASC_CLIENTE: TDateField;
    cdsClientesSOCIO2_DATANASC_CLIENTE: TDateField;
    cdsClientesGERENTE_CLIENTE: TStringField;
    cdsClientesGERENTE_DATANASC_CLIENTE: TDateField;
    cdsClientesJUNTACOMERCIAL_CLIENTE: TStringField;
    cdsClientesCAPITAL_CLIENTE: TFMTBCDField;
    cdsClientesTRAB_CLIENTE: TStringField;
    cdsClientesTRAB_FUNCAO_CLIENTE: TStringField;
    cdsClientesTRAB_FONE_CLIENTE: TStringField;
    cdsClientesTRAB_RAMAL_CLIENTE: TStringField;
    cdsClientesTRAB_SALARIO_CLIENTE: TFMTBCDField;
    cdsClientesTRAB_OUTRAS_CLIENTE: TFMTBCDField;
    cdsClientesCONJUGE_CLIENTE: TStringField;
    cdsClientesCONJUGE_TRABALHO_CLIENTE: TStringField;
    cdsClientesCONJUGE_FUNCAO1_CLIENTE: TStringField;
    cdsClientesCONJUGE_DATANASC_CLIENTE: TDateField;
    cdsClientesCONJUGE_FONE_CLIENTE: TStringField;
    cdsClientesCONJUGE_RAMAL_CLIENTE: TStringField;
    cdsClientesCONJUGE_SALARIO_CLIENTE: TFMTBCDField;
    cdsClientesCONJUGE_OUTRAS_CLIENTE: TFMTBCDField;
    cdsClientesREF_BANCO1_CLIENTE: TStringField;
    cdsClientesREF_BANCO2_CLIENTE: TStringField;
    cdsClientesREF_BANCOFONE1_CLIENTE: TStringField;
    cdsClientesREF_BANCOFONE2_CLIENTE: TStringField;
    cdsClientesREF_COMERCIAL1_CLIENTE: TStringField;
    cdsClientesREF_COMERCIAL2_CLIENTE: TStringField;
    cdsClientesREF_COMERCIALFONE1_CLIENTE: TStringField;
    cdsClientesREF_COMERCIALFONE2_CLIENTE: TStringField;
    cdsClientesREF_PESSOAL1_CLIENTE: TStringField;
    cdsClientesREF_PESSOAL2_CLIENTE: TStringField;
    cdsClientesREF_PESSOALFONE1_CLIENTE: TStringField;
    cdsClientesREF_PESSOALFONE2_CLIENTE: TStringField;
    cdsClientesCOB_ENDERECO_CLIENTE: TStringField;
    cdsClientesCOB_BAIRRO_CLIENTE: TStringField;
    cdsClientesCOB_CIDADE_CLIENTE: TIntegerField;
    cdsClientesCOB_ESTADO_CLIENTE: TStringField;
    cdsClientesCOB_CEP_CLIENTE: TStringField;
    cdsClientesCOB_TELEFONE_CLIENTE: TStringField;
    cdsClientesCOB_FAX_CLIENTE: TStringField;
    cdsClientesCOB_CXPOSTAL_CLIENTE: TStringField;
    cdsClientesVENDEDOR_CLIENTE: TIntegerField;
    cdsClientesVENDEDOR1_CLIENTE: TIntegerField;
    cdsClientesRAMO1_CLIENTE: TIntegerField;
    cdsClientesRAMO2_CLIENTE: TIntegerField;
    cdsClientesRAMO3_CLIENTE: TIntegerField;
    cdsClientesTPGTO_CLIENTE: TIntegerField;
    cdsClientesBANCO1_CLIENTE: TStringField;
    cdsClientesAGENC1_CLIENTE: TStringField;
    cdsClientesFONEB1_CLIENTE: TStringField;
    cdsClientesCONTA1_CLIENTE: TStringField;
    cdsClientesCLDSD1_CLIENTE: TDateField;
    cdsClientesBANCO2_CLIENTE: TStringField;
    cdsClientesAGENC2_CLIENTE: TStringField;
    cdsClientesFONEB2_CLIENTE: TStringField;
    cdsClientesCONTA2_CLIENTE: TStringField;
    cdsClientesCLDSD2_CLIENTE: TDateField;
    cdsClientesBANCO3_CLIENTE: TStringField;
    cdsClientesAGENC3_CLIENTE: TStringField;
    cdsClientesFONEB3_CLIENTE: TStringField;
    cdsClientesCONTA3_CLIENTE: TStringField;
    cdsClientesCLDSD3_CLIENTE: TDateField;
    cdsClientesBANCO4_CLIENTE: TStringField;
    cdsClientesAGENC4_CLIENTE: TStringField;
    cdsClientesFONEB4_CLIENTE: TStringField;
    cdsClientesCONTA4_CLIENTE: TStringField;
    cdsClientesCLDSD4_CLIENTE: TDateField;
    cdsClientesBANCO5_CLIENTE: TStringField;
    cdsClientesAGENC5_CLIENTE: TStringField;
    cdsClientesFONEB5_CLIENTE: TStringField;
    cdsClientesCONTA5_CLIENTE: TStringField;
    cdsClientesCLDSD5_CLIENTE: TDateField;
    cdsClientesCOMISSAO_CLIENTE: TStringField;
    cdsClientesCARTAO_CLIENTE: TDateField;
    cdsClientesULTIMO_CONT_CLIENTE: TDateField;
    cdsClientesUSUARIO_CLIENTE: TStringField;
    cdsClientesSTATUS_CLIENTE: TStringField;
    cdsClientesNATURALID_CLIENTE: TStringField;
    cdsClientesESTADOCIVIL_CLIENTE: TStringField;
    cdsClientesCARTEIRATRAB_CLIENTE: TStringField;
    cdsClientesTEMPO_RES_CLIENTE: TStringField;
    cdsClientesTIPO_CASA_CLIENTE: TStringField;
    cdsClientesVALOR_CASA_CLIENTE: TFMTBCDField;
    cdsClientesFONERECADO_CLIENTE: TStringField;
    cdsClientesTRAB_ENDERECO_CLIENTE: TStringField;
    cdsClientesTRAB_BAIRRO_CLIENTE: TStringField;
    cdsClientesTRAB_CIDADE_CLIENTE: TStringField;
    cdsClientesTRAB_ESTADO_CLIENTE: TStringField;
    cdsClientesTRAB_CEP_CLIENTE: TStringField;
    cdsClientesTRAB_DATAADMISSAO_CLIENTE: TDateField;
    cdsClientesAVACONJ_TIPO_CLIENTE: TStringField;
    cdsClientesAVACONJ_NOME_CLIENTE: TStringField;
    cdsClientesAVACONJ_DATANASC_CLIENTE: TDateField;
    cdsClientesAVACONJ_ESTCIVIL_CLIENTE: TStringField;
    cdsClientesAVACONJ_PAI_CLIENTE: TStringField;
    cdsClientesAVACONJ_MAE_CLIENTE: TStringField;
    cdsClientesAVACONJ_RG_CLIENTE: TStringField;
    cdsClientesAVACONJ_CPF_CLIENTE: TStringField;
    cdsClientesAVACONJ_CARTERA_CLIENTE: TStringField;
    cdsClientesAVACONJ_ENDERECO_CLIENTE: TStringField;
    cdsClientesAVACONJ_BAIRRO_CLIENTE: TStringField;
    cdsClientesAVACONJ_CIDADE_CLIENTE: TStringField;
    cdsClientesAVACONJ_ESTADO_CLIENTE: TStringField;
    cdsClientesAVACONJ_CEP_CLIENTE: TStringField;
    cdsClientesAVACONJ_FONE_CLIENTE: TStringField;
    cdsClientesAVACONJ_TEMPORESID_CLIENTE: TStringField;
    cdsClientesAVACONJ_TIPOIMOV_CLIENTE: TStringField;
    cdsClientesAVACONJ_EMPTRAB_CLIENTE: TStringField;
    cdsClientesAVACONJ_ENDTRAB_CLIENTE: TStringField;
    cdsClientesAVACONJ_BAITRAB_CLIENTE: TStringField;
    cdsClientesAVACONJ_CIDTRAB_CLIENTE: TStringField;
    cdsClientesAVACONJ_ESTTRAB_CLIENTE: TStringField;
    cdsClientesAVACONJ_ADMTRAB_CLIENTE: TDateField;
    cdsClientesAVACONJ_FUNCAO_CLIENTE: TStringField;
    cdsClientesAVACONJ_CARGO_CLIENTE: TStringField;
    cdsClientesAVACONJ_SALARIO_CLIENTE: TFMTBCDField;
    cdsClientesAVACONJ_FONTRAB_CLIENTE: TStringField;
    cdsClientesAVACONJ_REFERENCIA1_CLIENTE: TStringField;
    cdsClientesAVACONJ_REFERENCIA2_CLIENTE: TStringField;
    cdsClientesAVACONJ_REFERENCIA3_CLIENTE: TStringField;
    cdsClientesPARENTE_NOME_CLIENTE: TStringField;
    cdsClientesPARENTE_FONE_CLIENTE: TStringField;
    cdsClientesPARENTE_ENDERECO_CLIENTE: TStringField;
    cdsClientesPARENTE_BAIRRO_CLIENTE: TStringField;
    cdsClientesPARENTE_CIDADE_CLIENTE: TStringField;
    cdsClientesDATABASE_CLIENTE: TIntegerField;
    cdsClientesCONTATO1_CLIENTE: TStringField;
    cdsClientesCONTATO2_CLIENTE: TStringField;
    cdsClientesCONTATO3_CLIENTE: TStringField;
    cdsClientesCONTATO1_FONE__CLIENTE: TStringField;
    cdsClientesCONTATO2_FONE_CLIENTE: TStringField;
    cdsClientesCONTATO3_FONE_CLIENTE: TStringField;
    cdsClientesPAIS_CLIENTE: TStringField;
    cdsClientesREPR_NOME_CLIENTE: TStringField;
    cdsClientesREPR_FONE_CLIENTE: TStringField;
    cdsClientesREPR_CELULAR_CLIENTE: TStringField;
    cdsClientesREPR_FAX_CLIENTE: TStringField;
    cdsClientesAVACONJ_REFFONE3_CLIENTE: TStringField;
    cdsClientesAVACONJ_REFFONE2_CLIENTE: TStringField;
    cdsClientesAVACONJ_REFFONE1_CLIENTE: TStringField;
    cdsClientesSALDO: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0202: TdmRL0202;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
