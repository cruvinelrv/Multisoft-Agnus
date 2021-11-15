unit udmRL0401;

interface

uses
  SysUtils, Classes, FMTBcd, DB, ppComm, ppRelatv, ppDB, ppDBPipe,
  DBClient, Provider, SqlExpr;

type
  TdmRL0401 = class(TDataModule)
    qryVenda: TSQLQuery;
    dspVenda: TDataSetProvider;
    cdsVenda: TClientDataSet;
    dtsVenda: TDataSource;
    cdsVendaCODIGO_VENDA: TIntegerField;
    cdsVendaVENDEDOR_VENDA: TIntegerField;
    cdsVendaPARCEIRO_VENDA: TIntegerField;
    cdsVendaCLIENTE_VENDA: TIntegerField;
    cdsVendaPROPRIEDADE_VENDA: TIntegerField;
    cdsVendaNOMECLIENTE_VENDA: TStringField;
    cdsVendaDATA_VENDA: TDateField;
    cdsVendaEXCLUSAO_VENDA: TDateField;
    cdsVendaHORA_VENDA: TStringField;
    cdsVendaFATURA_VENDA: TFMTBCDField;
    cdsVendaDESCONTO_VENDA: TFMTBCDField;
    cdsVendaDESCON_ESP_VENDA: TFMTBCDField;
    cdsVendaCPAGAMENTO_VENDA: TFMTBCDField;
    cdsVendaCHAVE_VENDA: TStringField;
    cdsVendaCAIXA_VENDA: TFMTBCDField;
    cdsVendaTIPO_PRECO_VENDA: TStringField;
    cdsVendaCFOP_VENDA: TStringField;
    cdsVendaNOTAFISCAL_VENDA: TIntegerField;
    cdsVendaSERIE_VENDA: TStringField;
    cdsVendaCONFIRMA_VENDA: TStringField;
    cdsVendaEMISSAO_VENDA: TDateField;
    cdsVendaDATASAIDA_VENDA: TDateField;
    cdsVendaHORASAIDA_VENDA: TStringField;
    cdsVendaVALORNOTA_VENDA: TFMTBCDField;
    cdsVendaBASEICMS_VENDA: TFMTBCDField;
    cdsVendaICMS_VENDA: TFMTBCDField;
    cdsVendaBASEICMSSB_VENDA: TFMTBCDField;
    cdsVendaICMSSB_VENDA: TFMTBCDField;
    cdsVendaIPI_VENDA: TFMTBCDField;
    cdsVendaTRANSPORTA_VENDA: TIntegerField;
    cdsVendaPESOBRUTO_VENDA: TFMTBCDField;
    cdsVendaPESOLIQUIDO_VENDA: TFMTBCDField;
    cdsVendaOBSERVACAO_VENDA: TStringField;
    cdsVendaPARCELAS_VENDA: TIntegerField;
    cdsVendaVALOR01_VENDA: TFMTBCDField;
    cdsVendaVALOR02_VENDA: TFMTBCDField;
    cdsVendaVALOR03_VENDA: TFMTBCDField;
    cdsVendaVALOR04_VENDA: TFMTBCDField;
    cdsVendaVALOR05_VENDA: TFMTBCDField;
    cdsVendaVALOR06_VENDA: TFMTBCDField;
    cdsVendaVALOR07_VENDA: TFMTBCDField;
    cdsVendaVALOR08_VENDA: TFMTBCDField;
    cdsVendaVALOR09_VENDA: TFMTBCDField;
    cdsVendaVALOR10_VENDA: TFMTBCDField;
    cdsVendaVALOR11_VENDA: TFMTBCDField;
    cdsVendaVALOR12_VENDA: TFMTBCDField;
    cdsVendaVALOR13_VENDA: TFMTBCDField;
    cdsVendaVALOR14_VENDA: TFMTBCDField;
    cdsVendaVALOR15_VENDA: TFMTBCDField;
    cdsVendaVENCIMEN01_VENDA: TDateField;
    cdsVendaVENCIMEN02_VENDA: TDateField;
    cdsVendaVENCIMEN03_VENDA: TDateField;
    cdsVendaVENCIMEN04_VENDA: TDateField;
    cdsVendaVENCIMEN05_VENDA: TDateField;
    cdsVendaVENCIMEN06_VENDA: TDateField;
    cdsVendaVENCIMEN07_VENDA: TDateField;
    cdsVendaVENCIMEN08_VENDA: TDateField;
    cdsVendaVENCIMEN09_VENDA: TDateField;
    cdsVendaVENCIMEN10_VENDA: TDateField;
    cdsVendaVENCIMEN11_VENDA: TDateField;
    cdsVendaVENCIMEN12_VENDA: TDateField;
    cdsVendaVENCIMEN13_VENDA: TDateField;
    cdsVendaVENCIMEN14_VENDA: TDateField;
    cdsVendaVENCIMEN15_VENDA: TDateField;
    cdsVendaCOMISSAO_VENDA: TFMTBCDField;
    cdsVendaTIPO_VENDA: TStringField;
    cdsVendaTIPO1_VENDA: TStringField;
    cdsVendaDEVOLVE_VENDA: TStringField;
    cdsVendaENTREGA_VENDA: TStringField;
    cdsVendaTROCO_VENDA: TFMTBCDField;
    cdsVendaFRETE_VENDA: TFMTBCDField;
    cdsVendaSEGURO_VENDA: TFMTBCDField;
    cdsVendaOUTROS_VENDA: TFMTBCDField;
    cdsVendaROMANEIO_VENDA: TIntegerField;
    cdsVendaPLACASAIDA_VENDA: TStringField;
    cdsVendaESTADOSAIDA_VENDA: TStringField;
    cdsVendaNRFATURA_VENDA: TIntegerField;
    cdsVendaAUTONOMO_VENDA: TStringField;
    cdsVendaEXPORTADO_VENDA: TStringField;
    cdsVendaTIPO_DOC_VENDA: TStringField;
    cdsVendaINFOADICIONA_VENDA: TStringField;
    cdsVendaMACHO_4_VENDA: TIntegerField;
    cdsVendaMACHO_4_12_VENDA: TIntegerField;
    cdsVendaMACHO_12_24_VENDA: TIntegerField;
    cdsVendaMACHO_24_36_VENDA: TIntegerField;
    cdsVendaMACHO_M36_VENDA: TIntegerField;
    cdsVendaFEMEA_4_VENDA: TIntegerField;
    cdsVendaFEMEA_4_12_VENDA: TIntegerField;
    cdsVendaFEMEA_12_24_VENDA: TIntegerField;
    cdsVendaFEMEA_24_36_VENDA: TIntegerField;
    cdsVendaFEMEA_M36_VENDA: TIntegerField;
    cdsVendaBUFALOS_VENDA: TIntegerField;
    cdsVendaCAPRINOS_VENDA: TIntegerField;
    cdsVendaOVINOS_VENDA: TIntegerField;
    cdsVendaSUINOS_VENDA: TIntegerField;
    cdsVendaTROCA_VENDA: TIntegerField;
    cdsVendaOS_VENDA: TIntegerField;
    cdsVendaCNPJCLIENTE_VENDA: TStringField;
    cdsVendaRGCLIENTE_VENDA: TStringField;
    cdsVendaENDCLIENTE_VENDA: TStringField;
    cdsVendaBAICLIENTE_VENDA: TStringField;
    cdsVendaCIDCLIENTE_VENDA: TStringField;
    cdsVendaESTCLIENTE_VENDA: TStringField;
    cdsVendaCEPCLIENTE_VENDA: TStringField;
    cdsVendaFONECLIENTE_VENDA: TStringField;
    cdsVendaCARNE_VENDA: TStringField;
    cdsVendaUSUARIO_VENDA: TStringField;
    cdsVendaUSUALTERA_VENDA: TStringField;
    cdsVendaCOD_EMPRESA: TIntegerField;
    cdsVendaOBS1: TStringField;
    cdsVendaOBS2: TStringField;
    cdsVendaOBS3: TStringField;
    cdsVendaOBS4: TStringField;
    cdsVendaNF_SERV: TIntegerField;
    cdsVendaDESCRICAO_CPAGAMENTO: TStringField;
    cdsVendaNOME_VENDEDOR: TStringField;
    cdsVendaNOME_CLIENTE: TStringField;
    cdsVendaPERC_DESC: TFMTBCDField;
    cdsVendaVALOR_RECEBIDO: TFMTBCDField;
    cdsVendaENT_PERIODO: TFMTBCDField;
    cdsVendaVALOR_VENDA: TFMTBCDField;
    qryI_Venda: TSQLQuery;
    dspI_Venda: TDataSetProvider;
    cdsI_Venda: TClientDataSet;
    dtsI_Venda: TDataSource;
    cdsI_VendaID_VENDA_ITEM: TIntegerField;
    cdsI_VendaCODIGO_IVENDA: TIntegerField;
    cdsI_VendaPRODUTO_IVENDA: TIntegerField;
    cdsI_VendaDESCRICAO_IVENDAS: TStringField;
    cdsI_VendaVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsI_VendaQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsI_VendaGRADE_IVENDAS: TStringField;
    cdsI_VendaPROMOCAO_IVENDAS: TStringField;
    cdsI_VendaFABRICA_IVENDAS: TStringField;
    cdsI_VendaSERIE_IVENDAS: TStringField;
    cdsI_VendaDESCONTO_IVENDAS: TFMTBCDField;
    cdsI_VendaICM_IVENDAS: TFMTBCDField;
    cdsI_VendaIPI_IVENDAS: TFMTBCDField;
    cdsI_VendaREDUTOR_IVENDAS: TFMTBCDField;
    cdsI_VendaTRIBUTACAO_IVENDAS: TStringField;
    cdsI_VendaFISCAL_IVENDAS: TStringField;
    cdsI_VendaGARANTIA_IVENDAS: TStringField;
    cdsI_VendaTECNICO_IVENDAS: TIntegerField;
    cdsI_VendaALTURA_IVENDAS: TFMTBCDField;
    cdsI_VendaLARGURA_IVENDAS: TFMTBCDField;
    cdsI_VendaCOMPRIMENTO_VENDAS: TFMTBCDField;
    cdsI_VendaQTDE_VENDAS: TIntegerField;
    cdsI_VendaCOMPLEMENTO: TStringField;
    cdsI_VendaCOD_EMPRESA: TIntegerField;
    cdsI_VendaCLASSE_IVENDA: TStringField;
    cdsI_VendaCFOP: TStringField;
    cdsI_VendaSERIE_VENDA: TStringField;
    qryI_VendaID_VENDA_ITEM: TIntegerField;
    qryI_VendaCODIGO_IVENDA: TIntegerField;
    qryI_VendaPRODUTO_IVENDA: TIntegerField;
    qryI_VendaDESCRICAO_IVENDAS: TStringField;
    qryI_VendaVALORBRUTO_IVENDAS: TFMTBCDField;
    qryI_VendaQUANTIDADE_IVENDAS: TFMTBCDField;
    qryI_VendaGRADE_IVENDAS: TStringField;
    qryI_VendaPROMOCAO_IVENDAS: TStringField;
    qryI_VendaFABRICA_IVENDAS: TStringField;
    qryI_VendaSERIE_IVENDAS: TStringField;
    qryI_VendaDESCONTO_IVENDAS: TFMTBCDField;
    qryI_VendaICM_IVENDAS: TFMTBCDField;
    qryI_VendaIPI_IVENDAS: TFMTBCDField;
    qryI_VendaREDUTOR_IVENDAS: TFMTBCDField;
    qryI_VendaTRIBUTACAO_IVENDAS: TStringField;
    qryI_VendaFISCAL_IVENDAS: TStringField;
    qryI_VendaGARANTIA_IVENDAS: TStringField;
    qryI_VendaTECNICO_IVENDAS: TIntegerField;
    qryI_VendaALTURA_IVENDAS: TFMTBCDField;
    qryI_VendaLARGURA_IVENDAS: TFMTBCDField;
    qryI_VendaCOMPRIMENTO_VENDAS: TFMTBCDField;
    qryI_VendaQTDE_VENDAS: TIntegerField;
    qryI_VendaCOMPLEMENTO: TStringField;
    qryI_VendaCOD_EMPRESA: TIntegerField;
    qryI_VendaCLASSE_IVENDA: TStringField;
    qryI_VendaCFOP: TStringField;
    qryI_VendaSERIE_VENDA: TStringField;
    ppI_Venda: TppDBPipeline;
    cdsTemp: TClientDataSet;
    dtsTemp: TDataSource;
    ppTemp: TppDBPipeline;
    cdsTempSITUACAO: TStringField;
    cdsTempVALOR: TFloatField;
    cdsVendaDATA_CAIXA: TStringField;
    cdsVendaTIPO: TStringField;
    cdsVendaFUNCIONARIO: TStringField;
    ppVenda: TppDBPipeline;
    qryCpagamento: TSQLQuery;
    dspCpagamento: TDataSetProvider;
    cdsCpagamento: TClientDataSet;
    dtsCpagamento: TDataSource;
    qryCpagamentoCODIGO_CPAGAMENTO: TIntegerField;
    qryCpagamentoDESCRICAO_CPAGAMENTO: TStringField;
    cdsCpagamentoCODIGO_CPAGAMENTO: TIntegerField;
    cdsCpagamentoDESCRICAO_CPAGAMENTO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsVendaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Desconto1, Valor1 : Double;
  end;

var
  dmRL0401: TdmRL0401;

implementation

uses uDmPrincipal, uRL0401, uGlobal;

{$R *.dfm}

procedure TdmRL0401.DataModuleCreate(Sender: TObject);
begin
   Valor1    := 0;
   Desconto1 := 0;
   cdsTemp.Close;
   cdsTemp.CreateDataSet;
end;

procedure TdmRL0401.cdsVendaAfterOpen(DataSet: TDataSet);
begin
   if (dmRL0401 <> nil) and (frmRL0401.Calcula_CST = True) then
   begin
      cdsVenda.First;
      while not cdsVenda.Eof do
      begin
         cdsI_Venda.Close;
         cdsI_Venda.Params.ParamByName('CODIGO_IVENDA').AsInteger := cdsVendaCODIGO_VENDA.AsInteger;
         cdsI_Venda.Open;

         cdsI_Venda.First;
         while not cdsI_Venda.Eof do
         begin
            Valor1    := (cdsI_VendaQUANTIDADE_IVENDAS.AsFloat * cdsI_VendaVALORBRUTO_IVENDAS.AsFloat);
            Desconto1 := Porcento(cdsVendaDESCONTO_VENDA.AsFloat, cdsVendaFATURA_VENDA.AsFloat);
            Desconto1 := (Valor1 * (Desconto1 / 100));
            Valor1    := Valor1 - Desconto1;

            if not cdsTemp.Locate('SITUACAO', cdsI_VendaTRIBUTACAO_IVENDAS.AsString, []) then
            begin
               cdsTemp.Append;
               cdsTempSITUACAO.AsString := cdsI_VendaTRIBUTACAO_IVENDAS.AsString;
               cdsTempVALOR.AsFloat     := Valor1;
            end
            else
            begin
               cdsTemp.Edit;
               cdsTempSITUACAO.AsString := cdsI_VendaTRIBUTACAO_IVENDAS.AsString;
               cdsTempVALOR.AsFloat     := cdsTempVALOR.AsFloat + Valor1;
            end;

            cdsTemp.Post;

            cdsI_Venda.Next;
         end;

         cdsVenda.Next;
      end;

      cdsTemp.First;
      cdsVenda.First;
   end;
end;

end.
