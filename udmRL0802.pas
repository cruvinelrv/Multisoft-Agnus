unit udmRL0802;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DB, SqlExpr, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient;

type
  TdmRL0802 = class(TDataModule)
    cdsTaxa: TClientDataSet;
    cdsTaxaTAXA_DE_JUROS: TFloatField;
    dtsTaxa: TDataSource;
    ppDBTaxa: TppDBPipeline;
    qryEmpresa: TSQLQuery;
    qryEmpresaCODIGO_EMP: TIntegerField;
    qryEmpresaJUROS_EMP: TFMTBCDField;
    qryEmpresaTIPO_JUR_EMP: TStringField;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaCODIGO_EMP: TIntegerField;
    cdsEmpresaJUROS_EMP: TFMTBCDField;
    cdsEmpresaTIPO_JUR_EMP: TStringField;
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    qryVendas_itens: TSQLQuery;
    cdsVendas_itens: TClientDataSet;
    dtsVendas_itens: TDataSource;
    qryConsulta2: TSQLQuery;
    dspConsulta2: TDataSetProvider;
    cdsConsulta2: TClientDataSet;
    dtsConsulta2: TDataSource;
    cdsConsulta2DUPLICATA_RECEBER: TStringField;
    cdsConsulta2EMISSAO_RECEBER: TDateField;
    cdsConsulta2VENCIMENTO_RECEBER: TDateField;
    cdsConsulta2PREVISAO_RECEBER: TDateField;
    cdsConsulta2CODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsConsulta2NOME_CLIENTE: TStringField;
    cdsConsulta2CODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsConsulta2TIPO_BAIXA_RECEBER: TStringField;
    cdsConsulta2TIPO_DOCUMENTO_RECEBER: TIntegerField;
    cdsConsulta2MOVIMENTO_RECEBER: TDateField;
    cdsConsulta2CODIGO_VENDEDOR_RECEBER: TIntegerField;
    cdsConsulta2DESCRICAO_PORTADOR: TStringField;
    cdsConsulta2Valor_Total: TFMTBCDField;
    cdsConsulta2VALORPAGO_RECEBER: TFMTBCDField;
    cdsConsulta2DATASYSTEM_EMP: TSQLTimeStampField;
    cdsConsulta2TIPO_JUR_EMP: TStringField;
    cdsConsulta2JUROS_EMP: TFMTBCDField;
    cdsConsulta2JURO_MIN_EMP: TFMTBCDField;
    cdsConsulta2VALOR_RECEBER: TFMTBCDField;
    cdsConsulta2BLOQUETE_RECEBER: TStringField;
    cdsConsulta2ENDERECO_CLIENTE: TStringField;
    cdsConsulta2BAIRRO_CLIENTE: TStringField;
    cdsConsulta2TRAB_ENDERECO_CLIENTE: TStringField;
    cdsConsulta2CIDADE_CLIENTE: TIntegerField;
    cdsConsulta2DESCRICAO_CIDADE: TStringField;
    cdsConsulta2TELEFONE_CLIENTE: TStringField;
    cdsConsulta2CELULAR_CLIENTE: TStringField;
    cdsConsulta2FAX_CLIENTE: TStringField;
    ppDBConsulta2: TppDBPipeline;
    cdsConsultaCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsConsultaDUPLICATA_RECEBER: TStringField;
    cdsConsultaEMISSAO_RECEBER: TDateField;
    cdsConsultaVENCIMENTO_RECEBER: TDateField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaCODIGO_PORTADOR_RECEBER: TIntegerField;
    cdsConsultaTIPO_BAIXA_RECEBER: TStringField;
    cdsConsultaTIPO_DOCUMENTO_RECEBER: TIntegerField;
    cdsConsultaMOVIMENTO_RECEBER: TDateField;
    cdsConsultaCODIGO_VENDEDOR_RECEBER: TIntegerField;
    cdsConsultaDESCRICAO_PORTADOR: TStringField;
    cdsConsultaValor_Total: TFMTBCDField;
    cdsConsultaVALORPAGO_RECEBER: TFMTBCDField;
    cdsConsultaPREVISAO_RECEBER: TDateField;
    cdsConsultaDATASYSTEM_EMP: TSQLTimeStampField;
    cdsConsultaTIPO_JUR_EMP: TStringField;
    cdsConsultaJUROS_EMP: TFMTBCDField;
    cdsConsultaJURO_MIN_EMP: TFMTBCDField;
    cdsConsultaVALOR_RECEBER: TFMTBCDField;
    cdsConsultaBLOQUETE_RECEBER: TStringField;
    cdsConsultaENDERECO_CLIENTE: TStringField;
    cdsConsultaBAIRRO_CLIENTE: TStringField;
    cdsConsultaTRAB_ENDERECO_CLIENTE: TStringField;
    cdsConsultaCIDADE_CLIENTE: TIntegerField;
    cdsConsultaDESCRICAO_CIDADE: TStringField;
    cdsConsultaTELEFONE_CLIENTE: TStringField;
    cdsConsultaCELULAR_CLIENTE: TStringField;
    cdsConsultaFAX_CLIENTE: TStringField;
    ppDBConsulta: TppDBPipeline;
    dspVendas_itens: TDataSetProvider;
    qryVendas_itensCODIGO_VENDA: TIntegerField;
    qryVendas_itensCODIGO_IVENDA: TIntegerField;
    qryVendas_itensDATA_VENDA: TDateField;
    qryVendas_itensPRODUTO_IVENDA: TIntegerField;
    qryVendas_itensUNIDADE_PRODUTO: TStringField;
    qryVendas_itensVALORBRUTO_IVENDAS: TFMTBCDField;
    qryVendas_itensQUANTIDADE_IVENDAS: TFMTBCDField;
    qryVendas_itensCLIENTE_VENDA: TIntegerField;
    qryVendas_itensTotal: TFMTBCDField;
    qryVendas_itensDESCRICAO_IVENDAS: TStringField;
    cdsVendas_itensCODIGO_VENDA: TIntegerField;
    cdsVendas_itensCODIGO_IVENDA: TIntegerField;
    cdsVendas_itensDATA_VENDA: TDateField;
    cdsVendas_itensPRODUTO_IVENDA: TIntegerField;
    cdsVendas_itensUNIDADE_PRODUTO: TStringField;
    cdsVendas_itensVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsVendas_itensQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsVendas_itensCLIENTE_VENDA: TIntegerField;
    cdsVendas_itensTotal: TFMTBCDField;
    cdsVendas_itensDESCRICAO_IVENDAS: TStringField;
    qryVendas_itensDESCRICAO_PRODUTO: TStringField;
    qryVendas_itensDescricao: TStringField;
    cdsVendas_itensDESCRICAO_PRODUTO: TStringField;
    cdsVendas_itensDescricao: TStringField;
    qryVendas_itensSERIE_VENDA: TStringField;
    cdsVendas_itensSERIE_VENDA: TStringField;
    ppDBVendas_itens: TppDBPipeline;
    cdsConsultaTIT_PRINC_RECEBER: TStringField;
    procedure dtsConsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0802: TdmRL0802;

implementation

uses uDmPrincipal, StrUtils;

{$R *.dfm}

procedure TdmRL0802.dtsConsultaDataChange(Sender: TObject; Field: TField);
Var Verifica : Boolean;
begin
   if dmRL0802 <> nil then
   begin
      cdsVendas_itens.Close;
      cdsVendas_itens.Params.ParamByName('SERIE').AsString := LeftStr(cdsConsultaDUPLICATA_RECEBER.AsString, 2);
      cdsVendas_itens.Params.ParamByName('VENDA').AsString := copy(cdsConsultaDUPLICATA_RECEBER.AsString, 3, 6);
      cdsVendas_itens.Open;
   end;
end;

end.
