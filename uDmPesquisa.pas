unit uDmPesquisa;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmPesquisa = class(TDataModule)
    qryPesqClientes: TSQLQuery;
    dspPesqClientes: TDataSetProvider;
    cdsPesqCliente: TClientDataSet;
    cdsPesqClienteCODIGO_CLIENTE: TIntegerField;
    cdsPesqClienteNOME_CLIENTE: TStringField;
    cdsPesqClienteFANTASIA_CLIENTE: TStringField;
    qryPesqClientesCODIGO_CLIENTE: TIntegerField;
    qryPesqClientesNOME_CLIENTE: TStringField;
    qryPesqClientesFANTASIA_CLIENTE: TStringField;
    qryPesqClientesTELEFONE_CLIENTE: TStringField;
    qryPesqClientesCNPJ_CLIENTE: TStringField;
    cdsPesqClienteTELEFONE_CLIENTE: TStringField;
    cdsPesqClienteCNPJ_CLIENTE: TStringField;
    dspTipoPagamento: TDataSetProvider;
    cdsTipoPagamento: TClientDataSet;
    qryTipoPagamento: TSQLQuery;
    qryTipoPagamentoCODIGO_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoDESCRICAO_CPAGAMENTO: TStringField;
    qryTipoPagamentoDESCONTO_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPERC_COMISSAO_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoCAIXA_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoCOMISSAO_CPAGAMENTO: TStringField;
    qryTipoPagamentoLIVRE_CPAGAMENTO: TStringField;
    qryTipoPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoCODIGO_PORTADOR_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoDESCONTO_FIXO_CPAGAMENTO: TStringField;
    qryTipoPagamentoQTDE_PARCELAS_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoGERA_RECEBER_CPAGAMENTO: TStringField;
    qryTipoPagamentoECF_CPAGAMENTO: TStringField;
    qryTipoPagamentoTEF_CPAGAMENTO: TStringField;
    qryTipoPagamentoSENHA_CPAGAMENTO: TStringField;
    qryTipoPagamentoMEDIA_DIA_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoCOD_EMPRESA: TIntegerField;
    qryPesqContrato: TSQLQuery;
    dspPesqContrato: TDataSetProvider;
    cdsPesqContrato: TClientDataSet;
    qryPesqContratoCODIGO_CONTRATO: TIntegerField;
    qryPesqContratoNUMERO_CONTRATO: TStringField;
    qryPesqContratoVALOR_CONTRATO: TFMTBCDField;
    qryPesqContratoDESCONTO_CONTRATO: TFMTBCDField;
    qryPesqContratoDESCP_CONTRATO: TFMTBCDField;
    qryPesqContratoDIAFATURA_CONTRATO: TIntegerField;
    qryPesqContratoQTDSM_CONTRATO: TFMTBCDField;
    qryPesqContratoDATAINICIO_CONTRATO: TDateField;
    qryPesqContratoDATAFIM_CONTRATO: TDateField;
    qryPesqContratoOBSERVACAO_CONTRATO: TStringField;
    qryPesqContratoCOD_EMPRESA: TIntegerField;
    qryPesqContratoCLIENTE_CONTRATO: TIntegerField;
    qryPesqContratoNOME_CLIENTE: TStringField;
    cdsPesqContratoCODIGO_CONTRATO: TIntegerField;
    cdsPesqContratoNUMERO_CONTRATO: TStringField;
    cdsPesqContratoVALOR_CONTRATO: TFMTBCDField;
    cdsPesqContratoDESCONTO_CONTRATO: TFMTBCDField;
    cdsPesqContratoDESCP_CONTRATO: TFMTBCDField;
    cdsPesqContratoDIAFATURA_CONTRATO: TIntegerField;
    cdsPesqContratoQTDSM_CONTRATO: TFMTBCDField;
    cdsPesqContratoDATAINICIO_CONTRATO: TDateField;
    cdsPesqContratoDATAFIM_CONTRATO: TDateField;
    cdsPesqContratoOBSERVACAO_CONTRATO: TStringField;
    cdsPesqContratoCOD_EMPRESA: TIntegerField;
    cdsPesqContratoCLIENTE_CONTRATO: TIntegerField;
    cdsPesqContratoNOME_CLIENTE: TStringField;
    cdsPesqProdutos: TClientDataSet;
    dspPesqProdutos: TDataSetProvider;
    qryPesqProdutos: TSQLQuery;
    qryPesqProdutosDESCRICAO_PRODUTO: TStringField;
    qryPesqProdutosCODIGO_PRODUTO: TIntegerField;
    cdsPesqProdutosDESCRICAO_PRODUTO: TStringField;
    cdsPesqProdutosCODIGO_PRODUTO: TIntegerField;
    procedure cdsPesqClienteAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPesquisa: TdmPesquisa;

implementation

uses uDmPrincipal;

{$R *.dfm}

procedure TdmPesquisa.cdsPesqClienteAfterDelete(DataSet: TDataSet);
begin
    cdsPesqCliente.ApplyUpdates(0);
end;

end.
