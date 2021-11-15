unit udmRL0421;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TdmRL0421 = class(TDataModule)
    qryOrcamento: TSQLQuery;
    dspOrcamento: TDataSetProvider;
    cdsOrcamento: TClientDataSet;
    dsOrcamento: TDataSource;
    pplOrcamento: TppDBPipeline;
    qryOrc_itens: TSQLQuery;
    dspOrc_itens: TDataSetProvider;
    cdsOrc_itens: TClientDataSet;
    dsOrc_itens: TDataSource;
    pplOrc_itens: TppDBPipeline;
    cdsOrcamentoCODIGO_VENDA: TIntegerField;
    cdsOrcamentoDATA_VENDA: TDateField;
    cdsOrcamentoCLIENTE_VENDA: TIntegerField;
    cdsOrcamentoNOME_CLIENTE: TStringField;
    cdsOrcamentoCOD_VENDEDOR: TIntegerField;
    cdsOrcamentoNOME_VENDEDOR: TStringField;
    cdsOrcamentoCODIGO_CPAGAMENTO: TIntegerField;
    cdsOrcamentoDESCRICAO_CPAGAMENTO: TStringField;
    cdsOrcamentoCFOP_VENDA: TStringField;
    cdsOrcamentoDESCONTO_VENDA: TFMTBCDField;
    cdsOrcamentoVALORNOTA_VENDA: TFMTBCDField;
    cdsOrc_itensPRODUTO_IVENDA: TIntegerField;
    cdsOrc_itensFABRICA_IVENDAS: TStringField;
    cdsOrc_itensUNIDADE_PRODUTO: TStringField;
    cdsOrc_itensGRADE_IVENDAS: TStringField;
    cdsOrc_itensSERIE_IVENDAS: TStringField;
    cdsOrc_itensQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsOrc_itensVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsOrc_itensDESCRICAO_PRODUTO: TStringField;
    dspOrc_Itens2: TDataSetProvider;
    cdsOrc_Itens2: TClientDataSet;
    dsORc_Itens2: TDataSource;
    pplOrc_Itens2: TppDBPipeline;
    qryOrc_Itens2: TSQLQuery;
    cdsOrc_Itens2CODIGO_IVENDA: TIntegerField;
    cdsOrc_Itens2PRODUTO_IVENDA: TIntegerField;
    cdsOrc_Itens2FABRICA_IVENDAS: TStringField;
    cdsOrc_Itens2DESCRICAO_PRODUTO: TStringField;
    cdsOrc_Itens2UNIDADE_PRODUTO: TStringField;
    cdsOrc_Itens2GRADE_IVENDAS: TStringField;
    cdsOrc_Itens2SERIE_IVENDAS: TStringField;
    cdsOrc_Itens2QUANTIDADE_IVENDAS: TFMTBCDField;
    cdsOrc_Itens2VALORBRUTO_IVENDAS: TFMTBCDField;
    cdsOrc_Itens2DATA_VENDA: TDateField;
    cdsOrc_Itens2CODIGO_VENDA: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0421: TdmRL0421;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
