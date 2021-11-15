{Para obter um bom desenpenho em velocidade de busca de dados desse relatório é
 necessário que na tabela VENDAS o campo VENDEDOR_VENDAS NÃO esteja INDEXADO}

unit udmRL0408;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0408 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    dsConsulta: TDataSource;
    qrySerie: TSQLQuery;
    dspSerie: TDataSetProvider;
    cdsSerie: TClientDataSet;
    qrySerieSERIE_SERIE: TStringField;
    qrySerieSER_DOC_SERIE: TStringField;
    qrySerieNUMERO_SERIE: TFMTBCDField;
    qrySerieIMPRESSAO: TStringField;
    cdsSerieSERIE_SERIE: TStringField;
    cdsSerieSER_DOC_SERIE: TStringField;
    cdsSerieNUMERO_SERIE: TFMTBCDField;
    cdsSerieIMPRESSAO: TStringField;
    dsSerie: TDataSource;
    qryEmpresa: TSQLQuery;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    qryEmpresaCODIGO_EMP: TIntegerField;
    qryEmpresaTIPO_COM_EMP: TStringField;
    cdsEmpresaCODIGO_EMP: TIntegerField;
    cdsEmpresaTIPO_COM_EMP: TStringField;
    cdsConsulta: TClientDataSet;
    cdsVendaTemp: TClientDataSet;
    cdsVendaTempCODIGO_VENDEDOR: TIntegerField;
    cdsVendaTempMOME_VENDEDOR: TStringField;
    cdsVendaTempPERCENT_LUCRO: TFloatField;
    cdsVendaTempVAL_TOTAL: TFloatField;
    cdsVendaTempDEVOLUCOES: TFloatField;
    cdsVendaTempVAL_LIQUIDO: TFloatField;
    cdsVendaTempCOMISSAO: TFloatField;
    dsVendaTemp: TDataSource;
    ppDBVendaTemp: TppDBPipeline;
    ppDBConsulta: TppDBPipeline;
    qryConsultaCODIGO_VENDA: TIntegerField;
    qryConsultaID_VENDA_ITEM: TIntegerField;
    qryConsultaCODIGO_IVENDA: TIntegerField;
    qryConsultaVENDEDOR_VENDA: TIntegerField;
    qryConsultaNOME_VENDEDOR: TStringField;
    qryConsultaVALORNOTA_VENDA: TFMTBCDField;
    qryConsultaDEVOLVE_VENDA: TStringField;
    qryConsultaDESCONTO_VENDA: TFMTBCDField;
    qryConsultaValor_liquido: TFMTBCDField;
    qryConsultaCOMISSAO_VENDA: TFMTBCDField;
    qryConsultaHORA_VENDA: TStringField;
    qryConsultaOS_VENDA: TIntegerField;
    qryConsultaSERIE_VENDA: TStringField;
    qryConsultaTIPO_VENDA: TStringField;
    qryConsultaPRECO_LISTA_PRODUTO: TFMTBCDField;
    qryConsultaDESCONTO_IVENDAS: TFMTBCDField;
    qryConsultaValor_Recebido: TFMTBCDField;
    qryConsultaPercent_Desc: TFMTBCDField;
    qryConsultaLucro: TFMTBCDField;
    qryConsultaQUANTIDADE_IVENDAS: TFMTBCDField;
    qryConsultaVALORBRUTO_IVENDAS: TFMTBCDField;
    qryConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField;
    qryConsultaPercent_Lucro: TFMTBCDField;
    qryConsultaCPAGAMENTO_VENDA: TFMTBCDField;
    qryConsultaDESCRICAO_CPAGAMENTO: TStringField;
    qryConsultaCOMISSAO_CPAGAMENTO: TStringField;
    qryConsultaComissao_Prod: TFMTBCDField;
    qryConsultaCODIGO_PRODUTO: TIntegerField;
    qryConsultaDESCRICAO_PRODUTO: TStringField;
    qryConsultaUNIDADE_PRODUTO: TStringField;
    qryConsultaCLIENTE_VENDA: TIntegerField;
    qryConsultaNOME_CLIENTE: TStringField;
    qryConsultaCOMISSAO1_PRODUTO: TFMTBCDField;
    qryConsultaDATA_VENDA: TDateField;
    qryConsultaCODIGO_SECAO_GRUPO: TIntegerField;
    qryConsultaCODIGO_GRUPO: TIntegerField;
    qryConsultaSERIE: TStringField;
    qryConsultaValorNota: TFMTBCDField;
    qryConsultaValorDev: TFMTBCDField;
    cdsConsultaCODIGO_VENDA: TIntegerField;
    cdsConsultaID_VENDA_ITEM: TIntegerField;
    cdsConsultaCODIGO_IVENDA: TIntegerField;
    cdsConsultaVENDEDOR_VENDA: TIntegerField;
    cdsConsultaNOME_VENDEDOR: TStringField;
    cdsConsultaVALORNOTA_VENDA: TFMTBCDField;
    cdsConsultaDEVOLVE_VENDA: TStringField;
    cdsConsultaDESCONTO_VENDA: TFMTBCDField;
    cdsConsultaValor_liquido: TFMTBCDField;
    cdsConsultaCOMISSAO_VENDA: TFMTBCDField;
    cdsConsultaHORA_VENDA: TStringField;
    cdsConsultaOS_VENDA: TIntegerField;
    cdsConsultaSERIE_VENDA: TStringField;
    cdsConsultaTIPO_VENDA: TStringField;
    cdsConsultaPRECO_LISTA_PRODUTO: TFMTBCDField;
    cdsConsultaDESCONTO_IVENDAS: TFMTBCDField;
    cdsConsultaValor_Recebido: TFMTBCDField;
    cdsConsultaPercent_Desc: TFMTBCDField;
    cdsConsultaLucro: TFMTBCDField;
    cdsConsultaQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsConsultaVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsConsultaPRECO_CUSTO_PRODUTO: TFMTBCDField;
    cdsConsultaPercent_Lucro: TFMTBCDField;
    cdsConsultaCPAGAMENTO_VENDA: TFMTBCDField;
    cdsConsultaDESCRICAO_CPAGAMENTO: TStringField;
    cdsConsultaCOMISSAO_CPAGAMENTO: TStringField;
    cdsConsultaComissao_Prod: TFMTBCDField;
    cdsConsultaCODIGO_PRODUTO: TIntegerField;
    cdsConsultaDESCRICAO_PRODUTO: TStringField;
    cdsConsultaUNIDADE_PRODUTO: TStringField;
    cdsConsultaCLIENTE_VENDA: TIntegerField;
    cdsConsultaNOME_CLIENTE: TStringField;
    cdsConsultaCOMISSAO1_PRODUTO: TFMTBCDField;
    cdsConsultaDATA_VENDA: TDateField;
    cdsConsultaCODIGO_SECAO_GRUPO: TIntegerField;
    cdsConsultaCODIGO_GRUPO: TIntegerField;
    cdsConsultaSERIE: TStringField;
    cdsConsultaValorNota: TFMTBCDField;
    cdsConsultaValorDev: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0408: TdmRL0408;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
