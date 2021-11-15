unit udmCd0903;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd0903 = class(TDataModule)
    qryTipoPagamento: TSQLQuery;
    qryPortador: TSQLQuery;
    qryPortadorCODIGO_PORTADOR: TIntegerField;
    qryPortadorDESCRICAO_PORTADOR: TStringField;
    qryPortadorTIPO_PORTADOR: TStringField;
    dspPortador: TDataSetProvider;
    cdsPortador: TClientDataSet;
    cdsPortadorCODIGO_PORTADOR: TIntegerField;
    cdsPortadorDESCRICAO_PORTADOR: TStringField;
    cdsPortadorTIPO_PORTADOR: TStringField;
    dspTipoPagamento: TDataSetProvider;
    qryTipoPagamentoCOD_EMPRESA: TIntegerField;
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
    qryTipoPagamentoGERA_RECEBER_CPAGAMENTO: TStringField;
    qryTipoPagamentoECF_CPAGAMENTO: TStringField;
    qryTipoPagamentoTEF_CPAGAMENTO: TStringField;
    qryTipoPagamentoSENHA_CPAGAMENTO: TStringField;
    qryTipoPagamentoMEDIA_DIA_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO1_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO2_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO3_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO4_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO5_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO6_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO7_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO8_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO9_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO10_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO11_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO12_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO13_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO14_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPRAZO15_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoPARCELA1_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA2_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA3_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA4_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA5_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA6_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA7_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA8_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA9_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA10_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA11_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA12_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA13_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA14_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoPARCELA15_CPAGAMENTO: TFMTBCDField;
    qryTipoPagamentoACRECIMO: TFMTBCDField;
    cdsTipoPagamento: TClientDataSet;
    cdsTipoPagamentoCOD_EMPRESA: TIntegerField;
    cdsTipoPagamentoCODIGO_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoDESCRICAO_CPAGAMENTO: TStringField;
    cdsTipoPagamentoDESCONTO_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPERC_COMISSAO_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoCAIXA_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoCOMISSAO_CPAGAMENTO: TStringField;
    cdsTipoPagamentoLIVRE_CPAGAMENTO: TStringField;
    cdsTipoPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoCODIGO_PORTADOR_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoDESCONTO_FIXO_CPAGAMENTO: TStringField;
    cdsTipoPagamentoGERA_RECEBER_CPAGAMENTO: TStringField;
    cdsTipoPagamentoECF_CPAGAMENTO: TStringField;
    cdsTipoPagamentoTEF_CPAGAMENTO: TStringField;
    cdsTipoPagamentoSENHA_CPAGAMENTO: TStringField;
    cdsTipoPagamentoMEDIA_DIA_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO1_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO2_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO3_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO4_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO5_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO6_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO7_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO8_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO9_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO10_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO11_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO12_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO13_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO14_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPRAZO15_CPAGAMENTO: TIntegerField;
    cdsTipoPagamentoPARCELA1_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA2_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA3_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA4_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA5_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA6_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA7_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA8_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA9_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA10_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA11_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA12_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA13_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA14_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoPARCELA15_CPAGAMENTO: TFMTBCDField;
    cdsTipoPagamentoACRECIMO: TFMTBCDField;
    cdsTipoDocumento: TClientDataSet;
    dspTipoDocumento: TDataSetProvider;
    qryTipoDocumento: TSQLQuery;
    qryTipoDocumentoCODIGO_TIPODOCUMENTO: TIntegerField;
    qryTipoDocumentoDESCRICAO_TIPODOCUMENTO: TStringField;
    cdsTipoDocumentoCODIGO_TIPODOCUMENTO: TIntegerField;
    cdsTipoDocumentoDESCRICAO_TIPODOCUMENTO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd0903: TdmCd0903;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
