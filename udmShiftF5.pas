unit udmShiftF5;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmShiftF5 = class(TDataModule)
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
    qryTipoPagamentoGERA_RECEBER_CPAGAMENTO: TStringField;
    qryTipoPagamentoECF_CPAGAMENTO: TStringField;
    qryTipoPagamentoTEF_CPAGAMENTO: TStringField;
    qryTipoPagamentoSENHA_CPAGAMENTO: TStringField;
    qryTipoPagamentoMEDIA_DIA_CPAGAMENTO: TIntegerField;
    qryTipoPagamentoCOD_EMPRESA: TIntegerField;
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
    dspTipoPagamento: TDataSetProvider;
    cdsTipoPagamento: TClientDataSet;
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
    cdsTipoPagamentoCOD_EMPRESA: TIntegerField;
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
    qryTabela02: TSQLQuery;
    qryTabela02DATA_TABELA02: TDateField;
    qryTabela02PRODUTO_TABELA02: TIntegerField;
    qryTabela02ANTERIOR_TABELA02: TFMTBCDField;
    qryTabela02ATUAL_TABELA02: TFMTBCDField;
    qryTabela02PRECO1_TABELA02: TFMTBCDField;
    qryTabela02PRECO2_TABELA02: TFMTBCDField;
    qryTabela02PRECO3_TABELA02: TFMTBCDField;
    qryTabela02PRECO4_TABELA02: TFMTBCDField;
    qryTabela02PRECO5_TABELA02: TFMTBCDField;
    qryTabela02PRECO6_TABELA02: TFMTBCDField;
    qryTabela02PRECO7_TABELA02: TFMTBCDField;
    qryTabela02VALIDADE1_TABELA02: TDateField;
    qryTabela02VALIDADE2_TABELA02: TDateField;
    qryTabela02TRIB_ANT_TABELA02: TStringField;
    qryTabela02TRIB_ATU_TABELA02: TStringField;
    qryTabela02TRIBF_ANT_TABELA02: TStringField;
    qryTabela02TRIBF_ATU_TABELA02: TStringField;
    qryTabela02REDU_ANT_TABELA02: TFMTBCDField;
    qryTabela02REDU_ATU_TABELA02: TFMTBCDField;
    qryTabela02REDUF_ANT_TABELA02: TFMTBCDField;
    qryTabela02REDUF_ATU_TABELA02: TFMTBCDField;
    qryTabela02USUARIO_TABELA02: TStringField;
    qryTabela02COD_EMPRESA: TIntegerField;
    dspTabela02: TDataSetProvider;
    cdsTabela02: TClientDataSet;
    cdsTabela02DATA_TABELA02: TDateField;
    cdsTabela02PRODUTO_TABELA02: TIntegerField;
    cdsTabela02ANTERIOR_TABELA02: TFMTBCDField;
    cdsTabela02ATUAL_TABELA02: TFMTBCDField;
    cdsTabela02PRECO1_TABELA02: TFMTBCDField;
    cdsTabela02PRECO2_TABELA02: TFMTBCDField;
    cdsTabela02PRECO3_TABELA02: TFMTBCDField;
    cdsTabela02PRECO4_TABELA02: TFMTBCDField;
    cdsTabela02PRECO5_TABELA02: TFMTBCDField;
    cdsTabela02PRECO6_TABELA02: TFMTBCDField;
    cdsTabela02PRECO7_TABELA02: TFMTBCDField;
    cdsTabela02VALIDADE1_TABELA02: TDateField;
    cdsTabela02VALIDADE2_TABELA02: TDateField;
    cdsTabela02TRIB_ANT_TABELA02: TStringField;
    cdsTabela02TRIB_ATU_TABELA02: TStringField;
    cdsTabela02TRIBF_ANT_TABELA02: TStringField;
    cdsTabela02TRIBF_ATU_TABELA02: TStringField;
    cdsTabela02REDU_ANT_TABELA02: TFMTBCDField;
    cdsTabela02REDU_ATU_TABELA02: TFMTBCDField;
    cdsTabela02REDUF_ANT_TABELA02: TFMTBCDField;
    cdsTabela02REDUF_ATU_TABELA02: TFMTBCDField;
    cdsTabela02USUARIO_TABELA02: TStringField;
    cdsTabela02COD_EMPRESA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmShiftF5: TdmShiftF5;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
