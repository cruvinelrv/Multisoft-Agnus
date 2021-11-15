unit udmRL0415;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, ppDB, ppComm,
  ppRelatv, ppDBPipe;

type
  TdmRL0415 = class(TDataModule)
    qryVenda: TSQLQuery;
    dspVenda: TDataSetProvider;
    dtsVenda: TDataSource;
    qryVendas_Itens: TSQLQuery;
    cdsVendas_Itens: TClientDataSet;
    dtsVendas_Itens: TDataSource;
    cdsVenda: TClientDataSet;
    qryVendaCODIGO_VENDA: TIntegerField;
    qryVendaVENDEDOR_VENDA: TIntegerField;
    qryVendaCLIENTE_VENDA: TIntegerField;
    qryVendaTIPO_DOC_VENDA: TStringField;
    qryVendaNOTAFISCAL_VENDA: TIntegerField;
    qryVendaDATA_VENDA: TDateField;
    qryVendaSERIE_VENDA: TStringField;
    qryVendaNOME_CLIENTE: TStringField;
    qryVendaDEVOLVE_VENDA: TStringField;
    qryVendaVALORNOTA_VENDA: TFMTBCDField;
    qryVendaCFOP_VENDA: TStringField;
    qryVendaValor_Liquido: TFMTBCDField;
    qryVendaTRANSPORTA_VENDA: TIntegerField;
    qryVendaPLACASAIDA_VENDA: TStringField;
    qryVendaFRETE_VENDA: TFMTBCDField;
    qryVendaOUTROS_VENDA: TFMTBCDField;
    qryVendaROMANEIO_VENDA: TIntegerField;
    qryVendaHORASAIDA_VENDA: TStringField;
    qryVendaHORA_VENDA: TStringField;
    qryVendaICMS_VENDA: TFMTBCDField;
    qryVendaFATURA_VENDA: TFMTBCDField;
    qryVendaSEGURO_VENDA: TFMTBCDField;
    qryVendaIPI_VENDA: TFMTBCDField;
    qryVendaValorNota: TFMTBCDField;
    qryVendaValorDev: TFMTBCDField;
    cdsVendaCODIGO_VENDA: TIntegerField;
    cdsVendaVENDEDOR_VENDA: TIntegerField;
    cdsVendaCLIENTE_VENDA: TIntegerField;
    cdsVendaTIPO_DOC_VENDA: TStringField;
    cdsVendaNOTAFISCAL_VENDA: TIntegerField;
    cdsVendaDATA_VENDA: TDateField;
    cdsVendaSERIE_VENDA: TStringField;
    cdsVendaNOME_CLIENTE: TStringField;
    cdsVendaDEVOLVE_VENDA: TStringField;
    cdsVendaVALORNOTA_VENDA: TFMTBCDField;
    cdsVendaCFOP_VENDA: TStringField;
    cdsVendaValor_Liquido: TFMTBCDField;
    cdsVendaTRANSPORTA_VENDA: TIntegerField;
    cdsVendaPLACASAIDA_VENDA: TStringField;
    cdsVendaFRETE_VENDA: TFMTBCDField;
    cdsVendaOUTROS_VENDA: TFMTBCDField;
    cdsVendaROMANEIO_VENDA: TIntegerField;
    cdsVendaHORASAIDA_VENDA: TStringField;
    cdsVendaHORA_VENDA: TStringField;
    cdsVendaICMS_VENDA: TFMTBCDField;
    cdsVendaFATURA_VENDA: TFMTBCDField;
    cdsVendaSEGURO_VENDA: TFMTBCDField;
    cdsVendaIPI_VENDA: TFMTBCDField;
    cdsVendaValorNota: TFMTBCDField;
    cdsVendaValorDev: TFMTBCDField;
    qryVendas_ItensID_VENDA_ITEM: TIntegerField;
    qryVendas_ItensCODIGO_IVENDA: TIntegerField;
    qryVendas_ItensCODIGO_VENDA: TIntegerField;
    qryVendas_ItensEMISSAO_VENDA: TDateField;
    qryVendas_ItensDATASAIDA_VENDA: TDateField;
    qryVendas_ItensSERIE_VENDA: TStringField;
    qryVendas_ItensNOTAFISCAL_VENDA: TIntegerField;
    qryVendas_ItensCODIGO_CLIENTE: TIntegerField;
    qryVendas_ItensNOME_CLIENTE: TStringField;
    qryVendas_ItensCODIGO_PRODUTO: TIntegerField;
    qryVendas_ItensDESCRICAO_PRODUTO: TStringField;
    qryVendas_ItensUNIDADE_PRODUTO: TStringField;
    qryVendas_ItensQUANTIDADE_IVENDAS: TFMTBCDField;
    qryVendas_ItensVALORBRUTO_IVENDAS: TFMTBCDField;
    qryVendas_ItensVALORNOTA_VENDA: TFMTBCDField;
    qryVendas_ItensCFOP_VENDA: TStringField;
    qryVendas_ItensFORNECEDOR_PEDIDO: TIntegerField;
    qryVendas_ItensCLIENTE_PEDIDO: TIntegerField;
    qryVendas_ItensTotal_IVenda: TFMTBCDField;
    qryVendas_ItensTRIBUTACAO_IVENDAS: TStringField;
    qryVendas_ItensTRANSPORTA_VENDA: TIntegerField;
    qryVendas_ItensPLACASAIDA_VENDA: TStringField;
    qryVendas_ItensFRETE_VENDA: TFMTBCDField;
    qryVendas_ItensOUTROS_VENDA: TFMTBCDField;
    qryVendas_ItensROMANEIO_VENDA: TIntegerField;
    qryVendas_ItensValor_Liquido: TFMTBCDField;
    qryVendas_ItensHORASAIDA_VENDA: TStringField;
    qryVendas_ItensHORA_VENDA: TStringField;
    qryVendas_ItensREDUTOR_IVENDAS: TFMTBCDField;
    qryVendas_ItensICM_IVENDAS: TFMTBCDField;
    qryVendas_ItensICMS_VENDA: TFMTBCDField;
    qryVendas_ItensFATURA_VENDA: TFMTBCDField;
    qryVendas_ItensSEGURO_VENDA: TFMTBCDField;
    qryVendas_ItensIPI_VENDA: TFMTBCDField;
    cdsVendas_ItensID_VENDA_ITEM: TIntegerField;
    cdsVendas_ItensCODIGO_IVENDA: TIntegerField;
    cdsVendas_ItensCODIGO_VENDA: TIntegerField;
    cdsVendas_ItensEMISSAO_VENDA: TDateField;
    cdsVendas_ItensDATASAIDA_VENDA: TDateField;
    cdsVendas_ItensSERIE_VENDA: TStringField;
    cdsVendas_ItensNOTAFISCAL_VENDA: TIntegerField;
    cdsVendas_ItensCODIGO_CLIENTE: TIntegerField;
    cdsVendas_ItensNOME_CLIENTE: TStringField;
    cdsVendas_ItensCODIGO_PRODUTO: TIntegerField;
    cdsVendas_ItensDESCRICAO_PRODUTO: TStringField;
    cdsVendas_ItensUNIDADE_PRODUTO: TStringField;
    cdsVendas_ItensQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsVendas_ItensVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsVendas_ItensVALORNOTA_VENDA: TFMTBCDField;
    cdsVendas_ItensCFOP_VENDA: TStringField;
    cdsVendas_ItensFORNECEDOR_PEDIDO: TIntegerField;
    cdsVendas_ItensCLIENTE_PEDIDO: TIntegerField;
    cdsVendas_ItensTotal_IVenda: TFMTBCDField;
    cdsVendas_ItensTRIBUTACAO_IVENDAS: TStringField;
    cdsVendas_ItensTRANSPORTA_VENDA: TIntegerField;
    cdsVendas_ItensPLACASAIDA_VENDA: TStringField;
    cdsVendas_ItensFRETE_VENDA: TFMTBCDField;
    cdsVendas_ItensOUTROS_VENDA: TFMTBCDField;
    cdsVendas_ItensROMANEIO_VENDA: TIntegerField;
    cdsVendas_ItensValor_Liquido: TFMTBCDField;
    cdsVendas_ItensHORASAIDA_VENDA: TStringField;
    cdsVendas_ItensHORA_VENDA: TStringField;
    cdsVendas_ItensREDUTOR_IVENDAS: TFMTBCDField;
    cdsVendas_ItensICM_IVENDAS: TFMTBCDField;
    cdsVendas_ItensICMS_VENDA: TFMTBCDField;
    cdsVendas_ItensFATURA_VENDA: TFMTBCDField;
    cdsVendas_ItensSEGURO_VENDA: TFMTBCDField;
    cdsVendas_ItensIPI_VENDA: TFMTBCDField;
    qryVendaCODIGO_PEDIDO: TIntegerField;
    cdsVendaCODIGO_PEDIDO: TIntegerField;
    dspVendas_Itens: TDataSetProvider;
    DataSource1: TDataSource;
    qryVendaEMISSAO_VENDA: TDateField;
    cdsVendaEMISSAO_VENDA: TDateField;
    qryVendas_ItensTribu000: TFMTBCDField;
    qryVendas_ItensTribu010: TFMTBCDField;
    qryVendas_ItensTribu020: TFMTBCDField;
    qryVendas_ItensTribu040: TFMTBCDField;
    qryVendas_ItensTribu060: TFMTBCDField;
    cdsVendas_ItensTribu000: TFMTBCDField;
    cdsVendas_ItensTribu010: TFMTBCDField;
    cdsVendas_ItensTribu020: TFMTBCDField;
    cdsVendas_ItensTribu040: TFMTBCDField;
    cdsVendas_ItensTribu060: TFMTBCDField;
    ppDBVendas_Itens: TppDBPipeline;
    qryVendaNOME_VENDEDOR: TStringField;
    qryVendaBASEICMS_VENDA: TFMTBCDField;
    qryVendaBASEICMSSB_VENDA: TFMTBCDField;
    qryVendaDESCONTO_VENDA: TFMTBCDField;
    qryVendaICMSSB_VENDA: TFMTBCDField;
    qryVendaRecebido: TFMTBCDField;
    cdsVendaNOME_VENDEDOR: TStringField;
    cdsVendaBASEICMS_VENDA: TFMTBCDField;
    cdsVendaBASEICMSSB_VENDA: TFMTBCDField;
    cdsVendaDESCONTO_VENDA: TFMTBCDField;
    cdsVendaICMSSB_VENDA: TFMTBCDField;
    cdsVendaRecebido: TFMTBCDField;
    qryVendaTIPO_PRECO_VENDA: TStringField;
    cdsVendaTIPO_PRECO_VENDA: TStringField;
    qryVendaEXCLUSAO_VENDA: TDateField;
    cdsVendaEXCLUSAO_VENDA: TDateField;
    qryVendaDATASAIDA_VENDA: TDateField;
    qryVendaESTADOSAIDA_VENDA: TStringField;
    cdsVendaDATASAIDA_VENDA: TDateField;
    cdsVendaESTADOSAIDA_VENDA: TStringField;
    ppDBVendas: TppDBPipeline;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0415: TdmRL0415;

implementation

uses uDmPrincipal;

{$R *.dfm}

procedure TdmRL0415.DataSource1DataChange(Sender: TObject; Field: TField);
begin
   if dmRL0415 <> nil then
   begin
      cdsVendas_Itens.Close;
      cdsVendas_Itens.Params.ParamByName('CODIGO_VENDA').AsInteger := cdsVendaCODIGO_VENDA.AsInteger;
      cdsVendas_Itens.Open;
   end;
end;

end.
