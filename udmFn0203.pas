unit udmFn0203;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TdmFn0203 = class(TDataModule)
    qryCliente: TSQLQuery;
    cdsCliente: TClientDataSet;
    dspCliente: TDataSetProvider;
    qryClienteCODIGO_CLIENTE: TIntegerField;
    qryClienteNOME_CLIENTE: TStringField;
    cdsClienteCODIGO_CLIENTE: TIntegerField;
    cdsClienteNOME_CLIENTE: TStringField;
    qryReceber: TSQLQuery;
    dspReceber: TDataSetProvider;
    cdsReceber: TClientDataSet;
    qryReceberDUPLICATA_RECEBER: TStringField;
    qryReceberTIPO_DOCUMENTO_RECEBER: TIntegerField;
    qryReceberCODIGO_CLIENTE_RECEBER: TIntegerField;
    qryReceberEMISSAO_RECEBER: TDateField;
    qryReceberVENCIMENTO_RECEBER: TDateField;
    qryReceberPREVISAO_RECEBER: TDateField;
    qryReceberVALOR_RECEBER: TFMTBCDField;
    qryReceberCODIGO_PORTADOR_RECEBER: TIntegerField;
    qryReceberTIPO_DUP_RECEBER: TStringField;
    qryReceberHISTORICO_RECEBER: TMemoField;
    cdsReceberDUPLICATA_RECEBER: TStringField;
    cdsReceberTIPO_DOCUMENTO_RECEBER: TIntegerField;
    cdsReceberCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsReceberEMISSAO_RECEBER: TDateField;
    cdsReceberVENCIMENTO_RECEBER: TDateField;
    cdsReceberPREVISAO_RECEBER: TDateField;
    cdsReceberVALOR_RECEBER: TFMTBCDField;
    cdsReceberCODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsReceberTIPO_DUP_RECEBER: TStringField;
    cdsReceberHISTORICO_RECEBER: TMemoField;
    cdsGrid: TClientDataSet;
    cdsGridDUPLICATA: TStringField;
    cdsGridCODIGO_CLIENTE: TIntegerField;
    cdsGridEMISSAO: TDateField;
    cdsGridVENCIMENTO: TDateField;
    cdsGridVALOR: TFloatField;
    cdsGridVALOR_PAGO: TFloatField;
    cdsGridSALDO: TFloatField;
    cdsGridJUROS: TFloatField;
    cdsGridDIAS_ATRASO: TFloatField;
    cdsGridSELECIONADO: TStringField;
    qryEmpresa: TSQLQuery;
    qryEmpresaCODIGO_EMP: TIntegerField;
    qryEmpresaJUROS_EMP: TFMTBCDField;
    qryEmpresaDIAS_BLOQ_EMP: TIntegerField;
    qryEmpresaTIPO_JUR_EMP: TStringField;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaCODIGO_EMP: TIntegerField;
    cdsEmpresaJUROS_EMP: TFMTBCDField;
    cdsEmpresaDIAS_BLOQ_EMP: TIntegerField;
    cdsEmpresaTIPO_JUR_EMP: TStringField;
    qryReceberPARCIAL_RECEBER: TFMTBCDField;
    cdsReceberPARCIAL_RECEBER: TFMTBCDField;
    qryReceberDATA_BASE_RECEBER: TDateField;
    cdsReceberDATA_BASE_RECEBER: TDateField;
    qryReceberVALORPAGO_RECEBER: TFMTBCDField;
    cdsReceberVALORPAGO_RECEBER: TFMTBCDField;
    qryReceber2: TSQLQuery;
    dspReceber2: TDataSetProvider;
    cdsReceber2: TClientDataSet;
    qryReceber2DUPLICATA_RECEBER: TStringField;
    cdsReceber2DUPLICATA_RECEBER: TStringField;
    qryReceberCOD_EMPRESA: TIntegerField;
    cdsReceberCOD_EMPRESA: TIntegerField;
    qryReceber2TIPO_DOCUMENTO_RECEBER: TIntegerField;
    qryReceber2CODIGO_CLIENTE_RECEBER: TIntegerField;
    qryReceber2EMISSAO_RECEBER: TDateField;
    qryReceber2VENCIMENTO_RECEBER: TDateField;
    qryReceber2PREVISAO_RECEBER: TDateField;
    qryReceber2VALOR_RECEBER: TFMTBCDField;
    qryReceber2CODIGO_PORTADOR_RECEBER: TIntegerField;
    qryReceber2TIPO_DUP_RECEBER: TStringField;
    qryReceber2HISTORICO_RECEBER: TMemoField;
    qryReceber2PARCIAL_RECEBER: TFMTBCDField;
    qryReceber2DATA_BASE_RECEBER: TDateField;
    qryReceber2VALORPAGO_RECEBER: TFMTBCDField;
    qryReceber2COD_EMPRESA: TIntegerField;
    cdsReceber2TIPO_DOCUMENTO_RECEBER: TIntegerField;
    cdsReceber2CODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsReceber2EMISSAO_RECEBER: TDateField;
    cdsReceber2VENCIMENTO_RECEBER: TDateField;
    cdsReceber2PREVISAO_RECEBER: TDateField;
    cdsReceber2VALOR_RECEBER: TFMTBCDField;
    cdsReceber2CODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsReceber2TIPO_DUP_RECEBER: TStringField;
    cdsReceber2HISTORICO_RECEBER: TMemoField;
    cdsReceber2PARCIAL_RECEBER: TFMTBCDField;
    cdsReceber2DATA_BASE_RECEBER: TDateField;
    cdsReceber2VALORPAGO_RECEBER: TFMTBCDField;
    cdsReceber2COD_EMPRESA: TIntegerField;
    qryReceber2TIT_PRINC_RECEBER: TStringField;
    qryReceber2MOVIMENTO_RECEBER: TDateField;
    cdsReceber2TIT_PRINC_RECEBER: TStringField;
    cdsReceber2MOVIMENTO_RECEBER: TDateField;
    qryReceber2TIPO_BAIXA_RECEBER: TStringField;
    cdsReceber2TIPO_BAIXA_RECEBER: TStringField;
    cdsGridTIPO_BAIXA: TStringField;
    qryReceberTIPO_BAIXA_RECEBER: TStringField;
    cdsReceberTIPO_BAIXA_RECEBER: TStringField;
    qryReceber3: TSQLQuery;
    dspReceber3: TDataSetProvider;
    cdsReceber3: TClientDataSet;
    qryReceber3COD_EMPRESA: TIntegerField;
    qryReceber3TIT_PRINC_RECEBER: TStringField;
    cdsReceber3COD_EMPRESA: TIntegerField;
    cdsReceber3TIT_PRINC_RECEBER: TStringField;
    qryReceber3DUPLICATA_RECEBER: TStringField;
    qryReceber3TIPO_DOCUMENTO_RECEBER: TIntegerField;
    qryReceber3CODIGO_CLIENTE_RECEBER: TIntegerField;
    qryReceber3EMISSAO_RECEBER: TDateField;
    qryReceber3VENCIMENTO_RECEBER: TDateField;
    qryReceber3PREVISAO_RECEBER: TDateField;
    qryReceber3VALOR_RECEBER: TFMTBCDField;
    qryReceber3CODIGO_PORTADOR_RECEBER: TIntegerField;
    qryReceber3TIPO_DUP_RECEBER: TStringField;
    qryReceber3HISTORICO_RECEBER: TMemoField;
    qryReceber3PARCIAL_RECEBER: TFMTBCDField;
    qryReceber3DATA_BASE_RECEBER: TDateField;
    qryReceber3VALORPAGO_RECEBER: TFMTBCDField;
    qryReceber3MOVIMENTO_RECEBER: TDateField;
    qryReceber3TIPO_BAIXA_RECEBER: TStringField;
    cdsReceber3DUPLICATA_RECEBER: TStringField;
    cdsReceber3TIPO_DOCUMENTO_RECEBER: TIntegerField;
    cdsReceber3CODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsReceber3EMISSAO_RECEBER: TDateField;
    cdsReceber3VENCIMENTO_RECEBER: TDateField;
    cdsReceber3PREVISAO_RECEBER: TDateField;
    cdsReceber3VALOR_RECEBER: TFMTBCDField;
    cdsReceber3CODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsReceber3TIPO_DUP_RECEBER: TStringField;
    cdsReceber3HISTORICO_RECEBER: TMemoField;
    cdsReceber3PARCIAL_RECEBER: TFMTBCDField;
    cdsReceber3DATA_BASE_RECEBER: TDateField;
    cdsReceber3VALORPAGO_RECEBER: TFMTBCDField;
    cdsReceber3MOVIMENTO_RECEBER: TDateField;
    cdsReceber3TIPO_BAIXA_RECEBER: TStringField;
    qryReceber2EMPRESA: TStringField;
    cdsReceber2EMPRESA: TStringField;
    qryReceber2DESCRICAO_PORTADOR: TStringField;
    cdsReceber2DESCRICAO_PORTADOR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn0203: TdmFn0203;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
