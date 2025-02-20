{
,   Tag = 1 Indica aos demais formul�rios que o form frmParcelas esta criado na mem�ria
}
unit udmImpNF;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, SqlExpr, DBClient, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppClass, ppProd, ppReport,
  ppPrnabl, ppCtrls, ppStrtch, ppRegion, uMultiClasses, ppParameter,
  ppTxPipe, ppArchiv, ppEndUsr;

type
  TdmImpNF = class(TDataModule)
    rpt_NF_01_Bravel: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    xisSaida: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppRegion1: TppRegion;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    rpt_NF_serv_RV: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    lblNoMunicipio: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel74: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel104: TppLabel;
    Cod_cliente: TppLabel;
    lblForaMunicipio: TppLabel;
    ppRegion2: TppRegion;
    cdsNF: TClientDataSet;
    cdsItensNF: TClientDataSet;
    cdsNFNOME_CLIENTE: TStringField;
    cdsNFCNPJ_CLIENTE: TStringField;
    cdsNFENDERECO_CLIENTE: TStringField;
    cdsNFBAIRRO_CLIENTE: TStringField;
    cdsNFCEP_CLIENTE: TStringField;
    cdsNFNOME_CIDADE: TStringField;
    cdsNFTELEFONE_CLIENTE: TStringField;
    cdsNFESTADO_CLIENTE: TStringField;
    cdsNFINSCRICAO_CLIENTE: TStringField;
    cdsNFFORMA_PAGAMENTO: TStringField;
    cdsItensNFPRODUTO_IVENDA: TStringField;
    cdsItensNFDESCRICAO_IVENDAS: TStringField;
    cdsItensNFCFOP: TStringField;
    cdsItensNFTRIBUTACAO_IVENDAS: TStringField;
    cdsItensNFUNIDADE_PRODUTO: TStringField;
    cdsItensNFQUANTIDADE_IVENDAS: TFloatField;
    cdsItensNFVALORBRUTO_IVENDAS: TFloatField;
    cdsItensNFVALORTOTAL: TFloatField;
    cdsItensNFICM_IVENDAS: TFloatField;
    cdsNFCNPJ_TRANSP: TStringField;
    cdsNFENDERECO_TRANSP: TStringField;
    cdsNFNOME_CIDADE_TRANSP: TStringField;
    cdsNFESTADO_TRANSP: TStringField;
    dsNF: TDataSource;
    dsItens: TDataSource;
    pplNF: TppDBPipeline;
    pplItens: TppDBPipeline;
    cdsNFTIPOPESSOA_CLIENTE: TStringField;
    cdsTransport: TClientDataSet;
    cdsTransportCODIGO_CLIENTE: TIntegerField;
    cdsTransportNOME_CLIENTE: TStringField;
    cdsTransportCNPJ_CLIENTE: TStringField;
    cdsTransportENDERECO_CLIENTE: TStringField;
    cdsTransportNOME_CIDADE: TStringField;
    cdsTransportESTADO_CLIENTE: TStringField;
    cdsTransportINSCRICAO_CLIENTE: TStringField;
    dsTransport: TDataSource;
    qryTransport: TSQLQuery;
    qryTransportCODIGO_CLIENTE: TIntegerField;
    qryTransportNOME_CLIENTE: TStringField;
    qryTransportCNPJ_CLIENTE: TStringField;
    qryTransportENDERECO_CLIENTE: TStringField;
    qryTransportNOME_CIDADE: TStringField;
    qryTransportESTADO_CLIENTE: TStringField;
    qryTransportINSCRICAO_CLIENTE: TStringField;
    cdsItensNFREDUTOR_IVENDAS: TStringField;
    cdsItensNFSERIE_IVENDAS: TStringField;
    cdsItensNFQTDE_VENDAS: TIntegerField;
    cdsItensNFCODIGO_IVENDA: TIntegerField;
    cdsItensNF_serv: TClientDataSet;
    cdsItensNF_servPRODUTO_IVENDA: TStringField;
    cdsItensNF_servDESCRICAO_IVENDAS: TStringField;
    cdsItensNF_servCFOP: TStringField;
    cdsItensNF_servTRIBUTACAO_IVENDAS: TStringField;
    cdsItensNF_servUNIDADE_PRODUTO: TStringField;
    cdsItensNF_servQUANTIDADE_IVENDAS: TFloatField;
    cdsItensNF_servVALORBRUTO_IVENDAS: TFloatField;
    cdsItensNF_servVALORTOTAL: TFloatField;
    cdsItensNF_servICM_IVENDAS: TFloatField;
    cdsItensNF_servREDUTOR_IVENDAS: TStringField;
    cdsItensNF_servSERIE_IVENDAS: TStringField;
    cdsItensNF_servQTDE_VENDAS: TIntegerField;
    cdsItensNF_servCODIGO_IVENDA: TIntegerField;
    dsItensNF_serv: TDataSource;
    pplItensNF_serv: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    cdsNFCODIGO_CLIENTE: TStringField;
    cdsNFNOME_VENDEDOR: TStringField;
    xisEntrada: TppLabel;
    ppParameterList1: TppParameterList;
    rpt_NF_02_Agrocaldas: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel55: TppLabel;
    ppLabel62: TppLabel;
    ppLabel67: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppRegion3: TppRegion;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppParameterList2: TppParameterList;
    ppArchiveReader1: TppArchiveReader;
    cdsNFCODIGO_VENDA: TIntegerField;
    rpt_NF_03_Moremaxx: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppRegion4: TppRegion;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppParameterList3: TppParameterList;
    ppLine1: TppLine;
    ppDesigner1: TppDesigner;
    ppReport1: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    ppRegion5: TppRegion;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLine2: TppLine;
    ppParameterList4: TppParameterList;
    dspTransport: TDataSetProvider;
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppLabel12GetText(Sender: TObject; var Text: String);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure ppLabel28GetText(Sender: TObject; var Text: String);
    procedure ppLabel27GetText(Sender: TObject; var Text: String);
    procedure ppLabel29GetText(Sender: TObject; var Text: String);
    procedure ppLabel30GetText(Sender: TObject; var Text: String);
    procedure ppLabel31GetText(Sender: TObject; var Text: String);
    procedure ppLabel32GetText(Sender: TObject; var Text: String);
    procedure ppLabel34GetText(Sender: TObject; var Text: String);
    procedure ppLabel35GetText(Sender: TObject; var Text: String);
    procedure ppLabel36GetText(Sender: TObject; var Text: String);
    procedure ppLabel37GetText(Sender: TObject; var Text: String);
    procedure ppLabel33GetText(Sender: TObject; var Text: String);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel21GetText(Sender: TObject; var Text: String);
    procedure ppLabel22GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel24GetText(Sender: TObject; var Text: String);
    procedure ppLabel25GetText(Sender: TObject; var Text: String);
    procedure ppLabel26GetText(Sender: TObject; var Text: String);
    procedure ppLabel42GetText(Sender: TObject; var Text: String);
    procedure ppLabel44GetText(Sender: TObject; var Text: String);
    procedure ppLabel46GetText(Sender: TObject; var Text: String);
    procedure ppLabel47GetText(Sender: TObject; var Text: String);
    procedure ppLabel48GetText(Sender: TObject; var Text: String);
    procedure ppLabel49GetText(Sender: TObject; var Text: String);
    procedure ppLabel50GetText(Sender: TObject; var Text: String);
    procedure ppLabel53GetText(Sender: TObject; var Text: String);
    procedure ppLabel54GetText(Sender: TObject; var Text: String);
    procedure Cod_clienteGetText(Sender: TObject; var Text: String);
    procedure ppLabel97GetText(Sender: TObject; var Text: String);
    procedure ppLabel74GetText(Sender: TObject; var Text: String);
    procedure ppLabel51GetText(Sender: TObject; var Text: String);
    procedure ppLabel52GetText(Sender: TObject; var Text: String);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure ppLabel43GetText(Sender: TObject; var Text: String);
    procedure ppLabel58GetText(Sender: TObject; var Text: String);
    procedure ppLabel56GetText(Sender: TObject; var Text: String);
    procedure ppLabel65GetText(Sender: TObject; var Text: String);
    procedure ppLabel59GetText(Sender: TObject; var Text: String);
    procedure ppLabel61GetText(Sender: TObject; var Text: String);
    procedure ppLabel63GetText(Sender: TObject; var Text: String);
    procedure ppLabel66GetText(Sender: TObject; var Text: String);
    procedure ppLabel60GetText(Sender: TObject; var Text: String);
    procedure ppLabel57GetText(Sender: TObject; var Text: String);
    procedure ppLabel64GetText(Sender: TObject; var Text: String);
    procedure ppLabel68GetText(Sender: TObject; var Text: String);
    procedure ppLabel95GetText(Sender: TObject; var Text: String);
    procedure ppLabel96GetText(Sender: TObject; var Text: String);
    procedure ppLabel98GetText(Sender: TObject; var Text: String);
    procedure ppLabel99GetText(Sender: TObject; var Text: String);
    procedure ppLabel100GetText(Sender: TObject; var Text: String);
    procedure ppLabel101GetText(Sender: TObject; var Text: String);
    procedure ppLabel104GetText(Sender: TObject; var Text: String);
    procedure ppDetailBand1AfterPrint(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure xisSaidaGetText(Sender: TObject; var Text: String);
    procedure xisEntradaGetText(Sender: TObject; var Text: String);
    procedure ppDBText23GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    Nota_de_entrada: Boolean;
    procedure Carrega_DataSet(Cod_lancamento: Integer; PEM: String);
  public
    { Public declarations }
    Base1, ICM1,IRRF1,Valor_bruto_serv1,Valor_final_serv1, Desc_serv1, Valor_bruto_produto, Valor_desc_produto: Real;
    BaseStr, ICM1Str, Base_SubstStr, Valor_SubstStr, VlrStr, Vlr_freteStr, Valor_SeguroStr, DespesasStr, Valor_IpiStr,
    SERIE_VENDA1, CFOP_VENDA1, NATUREZA1, NUM_NOTA1, VlrStrTotal:String;
    procedure monta_nf(Num_venda:Integer;PEM:String;vlr_nota:Real;vlr_desc:real; Reimpressao: Boolean=False);
    procedure monta_nf_serv(Num_venda:Integer;PEM:String;vlr_nota:Real;vlr_desc:real);
  end;

var
  dmImpNF: TdmImpNF;
  Paramentros: TParametros_Venda;

implementation

uses uComplemento_NF, uGlobal, Mask, uDmPrincipal, StdCtrls,
  JvValidateEdit, uVd1101, uComplemento_NF_serv, Forms, uFinanceiro,
  uDmVd1101, udmFn1101, uFn1101, udmFn1102, uFn1102, udmVd1102;

{$R *.dfm}

{ TdmImpNF }

procedure TdmImpNF.monta_nf(Num_venda:Integer; PEM:String; vlr_nota:Real; vlr_desc:real; Reimpressao: Boolean=False);
Var
   Tabela1, Tabela2, Serie1: String;
   Cod_Venda1,Index1: Integer;
begin
   Carrega_DataSet(Num_venda,PEM);
   if cdsItensNF.RecordCount > 0 then
   begin
      Base1 := 0;
      ICM1  := 0;

      cdsItensNF.First;
      while not cdsItensNF.Eof do
      begin
         if cdsItensNFPRODUTO_IVENDA.AsString <> '' then
         begin
            if cdsItensNFSERIE_IVENDAS.Value <> '' then
            begin
               Serie1     := cdsItensNFSERIE_IVENDAS.Value;
               Cod_Venda1 := cdsItensNFCODIGO_IVENDA.Value;
               Index1     := cdsItensNFQTDE_VENDAS.AsInteger;
            end;

            // Tributado com redu��o na base de calculo
            if cdsItensNFTRIBUTACAO_IVENDAS.AsString = '020' then
            begin
               Base1 := Base1 + (cdsItensNFREDUTOR_IVENDAS.AsFloat  / 100) * cdsItensNFVALORTOTAL.Value;

               ICM1  := ICM1  + ((cdsItensNFREDUTOR_IVENDAS.AsFloat / 100) * cdsItensNFVALORTOTAL.Value) *
                                 (cdsItensNFICM_IVENDAS.AsFloat / 100);
            end
            else
            begin
               // Tributado itegralmente
               if cdsItensNFTRIBUTACAO_IVENDAS.AsString = '000' then
               begin
                  Base1 := Base1 + cdsItensNFVALORTOTAL.Value;

                  ICM1  := ICM1  + ((cdsItensNFVALORTOTAL.Value * cdsItensNFICM_IVENDAS.AsFloat) / 100);
               end;
            end;
         end;

         cdsItensNF.Next;

         if ((PEM <> 'FN11') and (PEM <> 'FN1102')) or (PEM = 'A2') then
         begin
            // Verifica se o item possue descri��o na s�rie e imprime na linha de baixo
            if Serie1 <> '' then
            begin
               cdsItensNF.Insert;
               cdsItensNFCODIGO_IVENDA.Value        := Cod_Venda1;
               cdsItensNFDESCRICAO_IVENDAS.AsString := Serie1;
               cdsItensNFQTDE_VENDAS.Value          := Index1;
               cdsItensNF.Post;

               Serie1 := '';
            end;
         end;
      end;

      Valor_bruto_produto := vlr_nota;
      Valor_desc_produto  := vlr_desc;

      // Chama a tela de complemento
      frmComplemento_NF := TfrmComplemento_NF.Create(Self);

      if PEM = 'FN1102' then
      begin
         dmFn1102.cdsNatureza.Close;
         dmFn1102.cdsNatureza.Params.ParamByName('CODIGO').AsString  := FloatToStr(StringToFloat(CFOP_VENDA1));
         dmFn1102.cdsNatureza.Open;

         with frmComplemento_NF do
         begin
            Num_Nota.ReadOnly := True;
            lbTitulo.Caption  := 'Complemento de Nota Fiscal';

            Serie.Text := SERIE_VENDA1;


            Num_Nota.Value := dmFn1102.cdsSerieNUMERO_SERIE.AsInteger + 1;


            Dt_emissao.Date := DataSystem1;


            CFOP.EditText := CFOP_VENDA1;

            Natureza_Operacao.Text := dmFn1102.cdsNaturezaDESCRICAO_NAT.Value;


            Dt_saida.Date := DataSystem1;


            Hr_Saida.Text := TimeToStr(Time);

            Frete.ItemIndex := 1;
         end;
      end
      else
      begin
         if PEM = 'FN11' then
         begin
            dmFn1101.cdsNatureza.Close;
            dmFn1101.cdsNatureza.Params.ParamByName('CODIGO').AsString  := FloatToStr(StringToFloat(CFOP_VENDA1));
            dmFn1101.cdsNatureza.Open;

            with frmComplemento_NF do
            begin
               Num_Nota.ReadOnly := True;
               lbTitulo.Caption  := 'Complemento de Nota Fiscal';

               Serie.Text := SERIE_VENDA1;


               Num_Nota.Value := dmFn1101.cdsSerieNUMERO_SERIE.AsInteger + 1;


               Dt_emissao.Date := DataSystem1;


               CFOP.EditText := CFOP_VENDA1;

               Natureza_Operacao.Text := dmFn1101.cdsNaturezaDESCRICAO_NAT.Value;


               Dt_saida.Date := DataSystem1;


               Hr_Saida.Text := TimeToStr(Time);

               Frete.ItemIndex := 1;
            end;
         end
         else
         begin
            if PEM = 'A2' then
            begin
               dmVd1102.cdsNatureza.Close;
               dmVd1102.cdsNatureza.Params.ParamByName('CODIGO').AsString  := FloatToStr(StringToFloat(CFOP_VENDA1));
               dmVd1102.cdsNatureza.Open;

               with frmComplemento_NF do
               begin
                  Num_Nota          .ReadOnly := Paramentros.Altera_num_nf;
                  lbTitulo          .Caption  := 'Complemento de Nota Fiscal';
                  Serie             .Text     := SERIE_VENDA1;
                  Num_Nota          .Value    := dmVd1102.cdsSerieNUMERO_SERIE.AsInteger + 1;
                  Dt_emissao        .Date     := DataSystem1;
                  CFOP              .EditText := CFOP_VENDA1;
                  Natureza_Operacao .Text     := dmVd1102.cdsNaturezaDESCRICAO_NAT.Value;
                  Dt_saida          .Date     := DataSystem1;
                  Hr_Saida          .Text     := TimeToStr(Time);

                  Frete.ItemIndex := 1;

                  Msn_corp1.Text := Paramentros.Msn_linha(1);
                  Msn_corp2.Text := Paramentros.Msn_linha(2);
                  Msn_corp3.Text := Paramentros.Msn_linha(3);
                  Msn_corp4.Text := Paramentros.Msn_linha(4);

                  Msn_add1.Text  := 'Vendedor: ' + cdsNFNOME_VENDEDOR.Value;
               end
            end
            else
            begin
               dmVd1101.cdsNatureza.Close;
               dmVd1101.cdsNatureza.Params.ParamByName('CODIGO').AsString  := FloatToStr(StringToFloat(CFOP_VENDA1));
               dmVd1101.cdsNatureza.Open;

               with frmComplemento_NF do
               begin
                  Num_Nota.ReadOnly := frmVd1101.Parametros.Altera_num_nf;
                  lbTitulo.Caption  := 'Complemento de Nota Fiscal';

                  if Reimpressao then
                     Serie.Text := dmVd1101.cdsVendasSERIE_VENDA.AsString
                  else
                     Serie.Text := SERIE_VENDA1;

                  if Reimpressao then
                     Num_Nota.Value := dmVd1101.cdsVendasNOTAFISCAL_VENDA.AsInteger
                  else
                     Num_Nota.Value := dmVd1101.cdsSerieNUMERO_SERIE.AsInteger + 1;

                  if Reimpressao then
                     Dt_emissao.Date := dmVd1101.cdsVendasEMISSAO_VENDA.Value
                  else
                     Dt_emissao.Date := DataSystem1;

                  if Reimpressao then
                     CFOP.EditText := dmVd1101.cdsVendasCFOP_VENDA.AsString
                  else
                     CFOP.EditText := CFOP_VENDA1;

                  Natureza_Operacao.Text := dmVd1101.cdsNaturezaDESCRICAO_NAT.Value;

                  if Reimpressao then
                     Dt_saida.Date := dmVd1101.cdsVendasDATASAIDA_VENDA.Value
                  else
                     Dt_saida.Date := DataSystem1;

                  if Reimpressao then
                     Hr_Saida.Text := dmVd1101.cdsVendasHORASAIDA_VENDA.Value
                  else
                     Hr_Saida.Text := TimeToStr(Time);

                  Frete.ItemIndex := 1;

                  Msn_corp1.Text := Paramentros.Msn_linha(1);
                  Msn_corp2.Text := Paramentros.Msn_linha(2);
                  Msn_corp3.Text := Paramentros.Msn_linha(3);
                  Msn_corp4.Text := Paramentros.Msn_linha(4);

                  Msn_add1.Text  := 'Vendedor: ' + cdsNFNOME_VENDEDOR.Value;
               end;
            end;
         end;
      end;

      frmComplemento_NF.PEM := PEM;
      frmComplemento_NF.ShowModal;
      frmComplemento_NF.Release;
      frmComplemento_NF := nil;
   end;
end;

procedure TdmImpNF.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Natureza_Operacao.Text;
end;

procedure TdmImpNF.ppLabel2GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.CFOP.Value;
end;

procedure TdmImpNF.ppLabel4GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFNOME_CLIENTE.Value;
end;

procedure TdmImpNF.ppLabel5GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFCNPJ_CLIENTE.Value;
end;

procedure TdmImpNF.ppLabel6GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Dt_emissao.Text
end;

procedure TdmImpNF.ppLabel7GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFENDERECO_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel9GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFBAIRRO_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel8GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFCEP_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel10GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Dt_saida.Text
end;

procedure TdmImpNF.ppLabel11GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFNOME_CIDADE.Value
end;

procedure TdmImpNF.ppLabel13GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFTELEFONE_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel14GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFESTADO_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel12GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFINSCRICAO_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel15GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Hr_Saida.Text;
end;

procedure TdmImpNF.ppLabel16GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFFORMA_PAGAMENTO.Value;
end;

procedure TdmImpNF.ppLabel28GetText(Sender: TObject; var Text: String);
begin
   Text := Copy(frmComplemento_NF.Frete.Text,1,1);
end;

procedure TdmImpNF.ppLabel27GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Nome_Transportadora.Text;
end;

procedure TdmImpNF.ppLabel29GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Placa_Veiculo.Text;
end;

procedure TdmImpNF.ppLabel30GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.UF_veiculo.Text;
end;

procedure TdmImpNF.ppLabel31GetText(Sender: TObject; var Text: String);
begin
   Text := cdsTransportCNPJ_CLIENTE.Value;
end;

procedure TdmImpNF.ppLabel32GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Qtd_volume.Value;
end;

procedure TdmImpNF.ppLabel34GetText(Sender: TObject; var Text: String);
begin
   Text := cdsTransportENDERECO_CLIENTE.Value;
end;

procedure TdmImpNF.ppLabel35GetText(Sender: TObject; var Text: String);
begin
   Text := cdsTransportNOME_CIDADE.Value;
end;

procedure TdmImpNF.ppLabel36GetText(Sender: TObject; var Text: String);
begin
   Text := cdsTransportESTADO_CLIENTE.Value;
end;

procedure TdmImpNF.ppLabel37GetText(Sender: TObject; var Text: String);
begin
   Text := cdsTransportINSCRICAO_CLIENTE.Value;
end;

procedure TdmImpNF.ppLabel33GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Especie_volume.Text;
end;

procedure TdmImpNF.ppLabel17GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(BaseStr));
end;

procedure TdmImpNF.ppLabel18GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(ICM1Str));
end;

procedure TdmImpNF.ppDBText2GetText(Sender: TObject; var Text: String);
begin
   if cdsItensNF.FieldByName('PRODUTO_IVENDA').AsString <> '' then
      Text := Copy(cdsItensNF.FieldByName('DESCRICAO_IVENDAS').AsString,1,40)
   else
      Text := cdsItensNF.FieldByName('DESCRICAO_IVENDAS').AsString;
end;

procedure TdmImpNF.ppLabel19GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(Base_SubstStr))
end;

procedure TdmImpNF.ppLabel20GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(Valor_SubstStr))
end;

procedure TdmImpNF.ppLabel21GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(VlrStr));
end;

procedure TdmImpNF.ppLabel22GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(Vlr_freteStr))
end;

procedure TdmImpNF.ppLabel23GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(Valor_SeguroStr));
end;

procedure TdmImpNF.ppLabel24GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(DespesasStr))
end;

procedure TdmImpNF.ppLabel25GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(Valor_IpiStr));
end;

procedure TdmImpNF.ppLabel26GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00',StrToFloat(VlrStrTotal));
end;

procedure TdmImpNF.ppLabel42GetText(Sender: TObject; var Text: String);
begin
   Text := Trim(frmComplemento_NF.Msn_corp1.Text) + Trim(frmComplemento_NF.Msn_corp2.Text);
end;

procedure TdmImpNF.ppLabel44GetText(Sender: TObject; var Text: String);
begin
   Text := Trim(frmComplemento_NF.Msn_corp3.Text) + Trim(frmComplemento_NF.Msn_corp4.Text);
end;

procedure TdmImpNF.ppLabel46GetText(Sender: TObject; var Text: String);
begin
   if Valor_desc_produto > 0 then
      Text := 'Desconto --> ' + FloatToStrF(Valor_desc_produto,ffFixed,18,2);
end;

procedure TdmImpNF.ppLabel47GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Msn_add1.Text;
end;

procedure TdmImpNF.ppLabel48GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Msn_add2.Text;
end;

procedure TdmImpNF.ppLabel49GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Msn_add3.Text;
end;

procedure TdmImpNF.ppLabel50GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Msn_add4.Text;
end;

procedure TdmImpNF.ppLabel53GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(frmComplemento_NF.Num_Nota.EditText,6)
end;

procedure TdmImpNF.ppLabel54GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(frmComplemento_NF.Num_Nota.EditText,6);
end;

procedure TdmImpNF.monta_nf_serv(Num_venda: Integer; PEM: String; vlr_nota:Real; vlr_desc:real);
Var
   Tabela1, Tabela2, Serie1: String;
   Cod_Venda1,Index1: Integer;
begin
   {if PEM <> 'C' then
   begin
      Tabela2 := 'P_VENDAS';
      Tabela1 := 'P_VENDAS_ITENS';
   end
   else
   begin
      Tabela2 := 'P_DOC_SIMPLES';
      Tabela1 := 'P_DOC_SIMPLES_ITENS';
   end;
   cdsNF.Close;

   qryItensNF_serv.SQL.Text :=  'SELECT' +
                           ' V.*,' +
                           ' (V.quantidade_ivendas * V.valorbruto_ivendas) as VALORTOTAL,' +
                           ' P.unidade_produto,' +
                           ' G.codigo_grade' +
                           ' FROM ' + Tabela1 + ' V' +
                           ' left outer join P_PRODUTOS P on V.produto_ivenda=P.codigo_produto' +
                           ' left outer join P_PRODUTOS_GRADE G on V.grade_ivendas=G.codigo_grade' +
                           ' WHERE V.codigo_ivenda=:CODIGO_VENDA AND CLASSE_IVENDA=:CLASSE ORDER BY QTDE_VENDAS';
   qryItensNF_serv.ParamByName('CLASSE').AsString := 'S';

   cdsNF_serv.CommandText := 'SELECT V.*,' +
                        ' (V.valornota_venda + V.desconto_venda) AS VALOR_BRUTO,' +
                        ' (V.desconto_venda * 100 / (V.valornota_venda + V.desconto_venda)) AS DESC_PORC,' +
                        ' E.CGC_EMP,' +
                        ' E.INSCRICAO_EMP,' +
                        ' E.EMPRESA,' +
                        ' E.LINHA1_EMP,' +
                        ' E.LINHA2_EMP,' +
                        ' E.LINHA3_EMP,' +
                        ' E.LINHA4_EMP,' +
                        ' N.DESCRICAO_NAT AS NATURAZA,' +
                        ' (S.NUMERO_SERIE + 1)AS NUM_NOTA,' +
                        ' VE.NOME_VENDEDOR,' +
                        ' P.DESCRICAO_CPAGAMENTO AS FORMA_PAGAMENTO,' +
                        ' C.NOME_CLIENTE,'      +
                        ' C.TELEFONE_CLIENTE,'  +
                        ' C.CODIGO_CLIENTE,'    +
                        ' C.ENDERECO_CLIENTE,'  +
                        ' C.BAIRRO_CLIENTE,'    +
                        ' CI.DESCRICAO_CIDADE,' +
                        ' C.ESTADO_CLIENTE,' +
                        ' C.CEP_CLIENTE,'    +
                        ' C.CNPJ_CLIENTE,'   +
                        ' C.INSCRICAO_CLIENTE,' +
                        ' C.INSC_MUN_CLIENTE'   +
                        ' FROM ' + Tabela2 + ' V' +
                        ' LEFT OUTER JOIN E_NATUREZA N ON (N.CODIGO_NAT=V.CFOP_VENDA)' +
                        ' LEFT OUTER JOIN P_SERIE S ON (S.SERIE_SERIE=V.SERIE_VENDA)' +
                        ' LEFT OUTER JOIN EMPRESA E  ON (E.CODIGO_EMP=:CODEMPRESA)' +
                        ' LEFT OUTER JOIN P_VENDEDOR VE ON (VE.CODIGO_VENDEDOR=V.VENDEDOR_VENDA)'   +
                        ' LEFT OUTER JOIN P_CPAGAMENTO P ON (P.CODIGO_CPAGAMENTO=V.CPAGAMENTO_VENDA)' +
                        ' LEFT OUTER JOIN E_CLIENTE C ON (V.CLIENTE_VENDA=C.CODIGO_CLIENTE)'  +
                        ' LEFT OUTER JOIN E_CIDADE CI ON (C.CIDADE_CLIENTE=CI.CODIGO_CIDADE)' +
                        ' WHERE CODIGO_VENDA=:NUMVENDA';

   cdsNF_serv.Params.ParamByName('CODEMPRESA').AsString := CodigoEmpresa1;
   cdsNF_serv.Params.ParamByName('NUMVENDA').AsInteger  := Num_venda;
   cdsNF_serv.Open;   }

   // Chama a tela de complemento
   Carrega_DataSet(Num_venda,PEM);
   frmComplemento_NF_serv := TfrmComplemento_NF_serv.Create(Self);

   with frmComplemento_NF_serv do
   begin
      lbTitulo.Caption  := 'Complemento de Nota Fiscal de Servi�os [01]';

      Serie.Text        := 'PS';

      dmVd1101.cdsSerie.close;
      dmVd1101.cdsSerie.CommandText := 'SELECT * FROM P_SERIE WHERE SERIE_SERIE=:SERIE';
      dmVd1101.cdsSerie.Params.ParamByName('SERIE').AsString := 'PS';
      dmVd1101.cdsSerie.Open;

      if dmVd1101.cdsSerie.RecordCount > 0 then
         Num_Nota.Value := dmVd1101.cdsSerie.FieldByName('NUMERO_SERIE').AsInteger + 1
      else
         Num_Nota.EditText := '1';

      Dt_emissao.Date   := DataSystem1;
      CFOP.EditText     := '5949';
      Hr_Saida.Text     := TimeToStr(Time);

      Valor_bruto_serv1 := vlr_nota;

      if Existe(PEM,'22C') then
         Desc_serv1 := vlr_desc
      else
         Desc_serv1 := 0;

      Valor_final_serv1 := Valor_bruto_serv1 - Desc_serv1;

      IRRF1 := Valor_bruto_serv1 * (1.5 / 100);
      if (IRRF1 > 10) and (cdsNFTIPOPESSOA_CLIENTE.AsString = 'J') then
      begin
         Valor_bruto_serv1 := Valor_bruto_serv1 - IRRF1;
         Valor_final_serv1 := Valor_bruto_serv1;

         Msn_add1.Text := 'IRRF --> '	+ FloatToStrF(IRRF1,ffFixed,18,2);
      end
      else
         IRRF1 := 0;

      IRRF.Value             := IRRF1;
      Valor_serv.Value       := Valor_bruto_serv1;
      Desconto_serv.Value    := Desc_serv1;
      Valor_total_serv.Value := Valor_final_serv1;

      ShowModal;
      Release;
   end;

   frmComplemento_NF_serv := nil;
end;

procedure TdmImpNF.Cod_clienteGetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFCODIGO_CLIENTE.AsString;
end;

procedure TdmImpNF.ppLabel97GetText(Sender: TObject; var Text: String);
begin
   if frmComplemento_NF_serv.Desconto_serv.Value > 0 then
      Text := 'Desconto --> ' + FloatToStrF(frmComplemento_NF_serv.Desconto_serv.Value,ffFixed,18,2);
end;

procedure TdmImpNF.ppLabel74GetText(Sender: TObject; var Text: String);
begin
   Text := FloatToStrF(frmComplemento_NF_serv.Valor_total_serv.Value,ffFixed,18,2);
end;

procedure TdmImpNF.ppLabel51GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Msn_add5.Text;
end;

procedure TdmImpNF.ppLabel52GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF.Msn_add6.Text;
end;

procedure TdmImpNF.ppLabel45GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF_serv.CFOP.Value;
end;

procedure TdmImpNF.ppLabel43GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF_serv.Natureza_Operacao.Text;
end;

procedure TdmImpNF.ppLabel58GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF_serv.Dt_emissao.Text;
end;

procedure TdmImpNF.ppLabel56GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFNOME_CLIENTE.Value;
end;

procedure TdmImpNF.ppLabel65GetText(Sender: TObject; var Text: String);
begin
      Text := cdsNFTELEFONE_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel59GetText(Sender: TObject; var Text: String);
begin
      Text := cdsNFENDERECO_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel61GetText(Sender: TObject; var Text: String);
begin
      Text := cdsNFBAIRRO_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel63GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFNOME_CIDADE.Value;
end;

procedure TdmImpNF.ppLabel66GetText(Sender: TObject; var Text: String);
begin
   cdsNFESTADO_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel60GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFCEP_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel57GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFCNPJ_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel64GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFINSCRICAO_CLIENTE.Value
end;

procedure TdmImpNF.ppLabel68GetText(Sender: TObject; var Text: String);
begin
   Text := cdsNFFORMA_PAGAMENTO.Value
end;

procedure TdmImpNF.ppLabel95GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF_serv.Msn_corp1.Text;
end;

procedure TdmImpNF.ppLabel96GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF_serv.Msn_corp2.Text;
end;

procedure TdmImpNF.ppLabel98GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF_serv.Msn_add1.Text
end;

procedure TdmImpNF.ppLabel99GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF_serv.Msn_add2.Text
end;

procedure TdmImpNF.ppLabel100GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF_serv.Msn_add3.Text
end;

procedure TdmImpNF.ppLabel101GetText(Sender: TObject; var Text: String);
begin
   Text := frmComplemento_NF_serv.Msn_add4.Text
end;

procedure TdmImpNF.ppLabel104GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(frmComplemento_NF_serv.Num_Nota.Value,6);
end;

procedure TdmImpNF.ppDetailBand1AfterPrint(Sender: TObject);
begin
   if cdsItensNF.RecordCount = cdsItensNF.RecNo then
   begin
      BaseStr         := FloatToStrF(Base1,ffFixed,18,2);
      ICM1Str         := FloatToStrF(ICM1,ffFixed,18,2);
      Base_SubstStr   := frmComplemento_NF.Base_Subst.Value;
      Valor_SubstStr  := frmComplemento_NF.Valor_Subst.Value;
      VlrStr          := FloatToStrF(Valor_bruto_produto - Valor_desc_produto,ffFixed,18,2);
      Vlr_freteStr    := frmComplemento_NF.Vlr_frete.Value;
      Valor_SeguroStr := frmComplemento_NF.Valor_Seguro.Value;
      DespesasStr     := frmComplemento_NF.Despesas.Value;
      Valor_IpiStr    := frmComplemento_NF.Valor_Ipi.Value;
      VlrStrTotal     := FloatToStrF((Valor_bruto_produto - Valor_desc_produto) + frmComplemento_NF.Valor_Ipi.Value,ffFixed,18,2);
   end
   else
   begin
      BaseStr         := '***';
      ICM1Str         := '***';
      Base_SubstStr   := '***';
      Valor_SubstStr  := '***';
      VlrStr          := '***';
      Vlr_freteStr    := '***';
      Valor_SeguroStr := '***';
      DespesasStr     := '***';
      Valor_IpiStr    := '***';
      VlrStrTotal     := '***';
   end;
end;

procedure TdmImpNF.DataModuleCreate(Sender: TObject);
begin
   Paramentros := TParametros_Venda.Create;
   Paramentros.Carregar;

   cdsNF.CreateDataSet;
   cdsItensNF.CreateDataSet;
   cdsItensNF_serv.CreateDataSet;

   cdsNF.Open;
   cdsItensNF.Open;
   cdsItensNF_serv.Open;
end;

procedure TdmImpNF.Carrega_DataSet(Cod_lancamento: Integer; PEM: String);
begin
   if PEM = 'FN1102' then
   begin
      dmFn1102.cdsSerie.close;
      dmFn1102.cdsSerie.CommandText := 'SELECT * FROM P_SERIE WHERE SERIE_SERIE=:SERIE';
      dmFn1102.cdsSerie.Params.ParamByName('SERIE').AsString := 'NF';
      dmFn1102.cdsSerie.Open;
   end
   else
   begin
      if PEM = 'FN11' then
      begin
         dmFn1101.cdsSerie.close;
         dmFn1101.cdsSerie.CommandText := 'SELECT * FROM P_SERIE WHERE SERIE_SERIE=:SERIE';
         dmFn1101.cdsSerie.Params.ParamByName('SERIE').AsString := 'NF';
         dmFn1101.cdsSerie.Open;
      end
      else
      begin
         if PEM = 'A2' then
         begin
            dmvd1102.cdsSerie.close;
            dmvd1102.cdsSerie.CommandText := 'SELECT * FROM P_SERIE WHERE SERIE_SERIE=:SERIE';
            dmvd1102.cdsSerie.Params.ParamByName('SERIE').AsString := 'NF';
            dmvd1102.cdsSerie.Open;
         end
         else
         begin
            dmvd1101.cdsSerie.close;
            dmvd1101.cdsSerie.CommandText := 'SELECT * FROM P_SERIE WHERE SERIE_SERIE=:SERIE';
            dmvd1101.cdsSerie.Params.ParamByName('SERIE').AsString := 'NF';
            dmvd1101.cdsSerie.Open;
         end;
      end;
   end;

   cdsNF.Append;
   Nota_de_entrada := False;

   // Verifica se a nf n�o � simples
   if (PEM = '1') or (PEM = '2') or (PEM = '3') or (PEM = '011') or (PEM = '02') or (PEM = '05') or (Copy(PEM,1,1) = '8') then
   begin
      // Verifica se � devolu��o
      if PEM = '011' then
         Nota_de_entrada := True;

      cdsNFCODIGO_VENDA    .Value := dmVd1101.cdsVendasCODIGO_VENDA.Value;
      cdsNFFORMA_PAGAMENTO .Value := dmVd1101.cdsVendasFORMA_PAGAMENTO.Value;
      cdsNFNOME_VENDEDOR   .Value := dmVd1101.cdsVendasNOME_VENDEDOR.Value;

      SERIE_VENDA1 := dmVd1101.cdsVendasSERIE_VENDA.Value;
      CFOP_VENDA1  := dmVd1101.cdsVendasCFOP_VENDA.Value;
//      NATURAZA    := dmVd1101.cdsVendas

      dmVd1101.cdsVendasItem.Close;
      dmVd1101.cdsVendasItem.Params.ParamByName('VENDA').AsInteger  := dmVd1101.cdsVendasCODIGO_VENDA.AsInteger;
      dmVd1101.cdsVendasItem.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmVd1101.cdsVendasItem.Open;


      dmVd1101.cdsVendasItem.First;
      while not dmVd1101.cdsVendasItem.Eof do
      begin
         if dmVd1101.cdsVendasItemCLASSE_IVENDA.AsString <> 'S' then
         begin
            dmImpNF.cdsItensNF.Append;

            dmImpNF.cdsItensNFPRODUTO_IVENDA     .Value := dmVd1101.cdsVendasItemPRODUTO_IVENDA.AsString;
            dmImpNF.cdsItensNFDESCRICAO_IVENDAS  .Value := dmVd1101.cdsVendasItemDESCRICAO_IVENDAS.AsString;
            dmImpNF.cdsItensNFCFOP               .Value := dmVd1101.cdsVendasItemCFOP.AsString;
            dmImpNF.cdsItensNFTRIBUTACAO_IVENDAS .Value := dmVd1101.cdsVendasItemTRIBUTACAO_IVENDAS.AsString;
            dmImpNF.cdsItensNFUNIDADE_PRODUTO    .Value := dmVd1101.cdsVendasItemUNIDADE_PRODUTO.AsString;
            dmImpNF.cdsItensNFQUANTIDADE_IVENDAS .Value := dmVd1101.cdsVendasItemQUANTIDADE_IVENDAS.AsFloat;
            dmImpNF.cdsItensNFVALORBRUTO_IVENDAS .Value := dmVd1101.cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;
            dmImpNF.cdsItensNFVALORTOTAL         .Value := dmVd1101.cdsVendasItemVALORTOTAL.AsFloat;
            dmImpNF.cdsItensNFICM_IVENDAS        .Value := dmVd1101.cdsVendasItemICM_IVENDAS.AsFloat;
            dmImpNF.cdsItensNFREDUTOR_IVENDAS    .Value := dmVd1101.cdsVendasItemREDUTOR_IVENDAS.AsString;
            dmImpNF.cdsItensNFSERIE_IVENDAS      .Value := dmVd1101.cdsVendasItemSERIE_IVENDAS.AsString;
            dmImpNF.cdsItensNFQTDE_VENDAS        .Value := dmVd1101.cdsVendasItemQTDE_VENDAS.AsInteger;
            dmImpNF.cdsItensNFCODIGO_IVENDA      .Value := dmVd1101.cdsVendasItemCODIGO_IVENDA.AsInteger;

            dmImpNF.cdsItensNF.Post;
         end
         else
         begin
            dmImpNF.cdsItensNF_serv.Append;

            dmImpNF.cdsItensNF_servPRODUTO_IVENDA     .Value := dmVd1101.cdsVendasItemPRODUTO_IVENDA.AsString;
            dmImpNF.cdsItensNF_servDESCRICAO_IVENDAS  .Value := dmVd1101.cdsVendasItemDESCRICAO_IVENDAS.AsString;
            dmImpNF.cdsItensNF_servCFOP               .Value := dmVd1101.cdsVendasItemCFOP.AsString;
            dmImpNF.cdsItensNF_servTRIBUTACAO_IVENDAS .Value := dmVd1101.cdsVendasItemTRIBUTACAO_IVENDAS.AsString;
            dmImpNF.cdsItensNF_servUNIDADE_PRODUTO    .Value := dmVd1101.cdsVendasItemUNIDADE_PRODUTO.AsString;
            dmImpNF.cdsItensNF_servQUANTIDADE_IVENDAS .Value := dmVd1101.cdsVendasItemQUANTIDADE_IVENDAS.AsFloat;
            dmImpNF.cdsItensNF_servVALORBRUTO_IVENDAS .Value := dmVd1101.cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;
            dmImpNF.cdsItensNF_servVALORTOTAL         .Value := dmVd1101.cdsVendasItemVALORTOTAL.AsFloat;
            dmImpNF.cdsItensNF_servICM_IVENDAS        .Value := dmVd1101.cdsVendasItemICM_IVENDAS.AsFloat;
            dmImpNF.cdsItensNF_servREDUTOR_IVENDAS    .Value := dmVd1101.cdsVendasItemREDUTOR_IVENDAS.AsString;
            dmImpNF.cdsItensNF_servSERIE_IVENDAS      .Value := dmVd1101.cdsVendasItemSERIE_IVENDAS.AsString;
            dmImpNF.cdsItensNF_servQTDE_VENDAS        .Value := dmVd1101.cdsVendasItemQTDE_VENDAS.AsInteger;
            dmImpNF.cdsItensNF_servCODIGO_IVENDA      .Value := dmVd1101.cdsVendasItemCODIGO_IVENDA.AsInteger;

            dmImpNF.cdsItensNF_serv.Post;
         end;

         dmVd1101.cdsVendasItem.Next;
      end;
   end;

   // Verifica se a NF � simples
   if PEM = 'C' then
   begin
      cdsNFFORMA_PAGAMENTO.Value := dmVd1101.cdsDocSimplesFORMA_PAGAMENTO.Value;
      cdsNFCODIGO_VENDA.Value    := dmVd1101.cdsDocSimplesCODIGO_VENDA.Value;
      //cdsNFNOME_VENDEDOR   . Value := dmVd1101.cdsVendasNOME_VENDEDOR.Value;

      SERIE_VENDA1 := dmVd1101.cdsDocSimplesSERIE_VENDA.Value;
      CFOP_VENDA1  := dmVd1101.cdsDocSimplesCFOP_VENDA.Value;

      dmVd1101.cdsDocSimplesItens.Close;
      dmVd1101.cdsDocSimplesItens.Params.ParamByName('VENDA').AsInteger  := dmVd1101.cdsDocSimplesCODIGO_VENDA.AsInteger;
      dmVd1101.cdsDocSimplesItens.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmVd1101.cdsDocSimplesItens.Open;

      dmVd1101.cdsDocSimplesItens.First;
      while not dmVd1101.cdsDocSimplesItens.Eof do
      begin
         if dmVd1101.cdsVendasItemCLASSE_IVENDA.AsString <> 'S' then
         begin
            dmImpNF.cdsItensNF.Append;

            dmImpNF.cdsItensNFPRODUTO_IVENDA     .Value := dmVd1101.cdsDocSimplesItensPRODUTO_IVENDA.AsString;
            dmImpNF.cdsItensNFDESCRICAO_IVENDAS  .Value := dmVd1101.cdsDocSimplesItensDESCRICAO_IVENDAS.AsString;
            dmImpNF.cdsItensNFCFOP               .Value := dmVd1101.cdsDocSimplesItensCFOP.AsString;
            dmImpNF.cdsItensNFTRIBUTACAO_IVENDAS .Value := dmVd1101.cdsDocSimplesItensTRIBUTACAO_IVENDAS.AsString;
            dmImpNF.cdsItensNFUNIDADE_PRODUTO    .Value := dmVd1101.cdsDocSimplesItensUNIDADE_PRODUTO.AsString;
            dmImpNF.cdsItensNFQUANTIDADE_IVENDAS .Value := dmVd1101.cdsDocSimplesItensQUANTIDADE_IVENDAS.AsFloat;
            dmImpNF.cdsItensNFVALORBRUTO_IVENDAS .Value := dmVd1101.cdsDocSimplesItensVALORBRUTO_IVENDAS.AsFloat;
            dmImpNF.cdsItensNFVALORTOTAL         .Value := dmVd1101.cdsDocSimplesItensVALORTOTAL.AsFloat;
            dmImpNF.cdsItensNFICM_IVENDAS        .Value := dmVd1101.cdsDocSimplesItensICM_IVENDAS.AsFloat;
            dmImpNF.cdsItensNFREDUTOR_IVENDAS    .Value := dmVd1101.cdsDocSimplesItensREDUTOR_IVENDAS.AsString;
            dmImpNF.cdsItensNFSERIE_IVENDAS      .Value := dmVd1101.cdsDocSimplesItensSERIE_IVENDAS.AsString;
            dmImpNF.cdsItensNFQTDE_VENDAS        .Value := dmVd1101.cdsDocSimplesItensQTDE_VENDAS.AsInteger;
            dmImpNF.cdsItensNFCODIGO_IVENDA      .Value := dmVd1101.cdsDocSimplesItensCODIGO_IVENDA.AsInteger;

            dmImpNF.cdsItensNF.Post;
         end
         else
         begin
            dmImpNF.cdsItensNF_serv.Append;

            dmImpNF.cdsItensNF_servPRODUTO_IVENDA     .Value := dmVd1101.cdsDocSimplesItensPRODUTO_IVENDA.AsString;
            dmImpNF.cdsItensNF_servDESCRICAO_IVENDAS  .Value := dmVd1101.cdsDocSimplesItensDESCRICAO_IVENDAS.AsString;
            dmImpNF.cdsItensNF_servCFOP               .Value := dmVd1101.cdsDocSimplesItensCFOP.AsString;
            dmImpNF.cdsItensNF_servTRIBUTACAO_IVENDAS .Value := dmVd1101.cdsDocSimplesItensTRIBUTACAO_IVENDAS.AsString;
            dmImpNF.cdsItensNF_servUNIDADE_PRODUTO    .Value := dmVd1101.cdsDocSimplesItensUNIDADE_PRODUTO.AsString;
            dmImpNF.cdsItensNF_servQUANTIDADE_IVENDAS .Value := dmVd1101.cdsDocSimplesItensQUANTIDADE_IVENDAS.AsFloat;
            dmImpNF.cdsItensNF_servVALORBRUTO_IVENDAS .Value := dmVd1101.cdsDocSimplesItensVALORBRUTO_IVENDAS.AsFloat;
            dmImpNF.cdsItensNF_servVALORTOTAL         .Value := dmVd1101.cdsDocSimplesItensVALORTOTAL.AsFloat;
            dmImpNF.cdsItensNF_servICM_IVENDAS        .Value := dmVd1101.cdsDocSimplesItensICM_IVENDAS.AsFloat;
            dmImpNF.cdsItensNF_servREDUTOR_IVENDAS    .Value := dmVd1101.cdsDocSimplesItensREDUTOR_IVENDAS.AsString;
            dmImpNF.cdsItensNF_servSERIE_IVENDAS      .Value := dmVd1101.cdsDocSimplesItensSERIE_IVENDAS.AsString;
            dmImpNF.cdsItensNF_servQTDE_VENDAS        .Value := dmVd1101.cdsDocSimplesItensQTDE_VENDAS.AsInteger;
            dmImpNF.cdsItensNF_servCODIGO_IVENDA      .Value := dmVd1101.cdsDocSimplesItensCODIGO_IVENDA.AsInteger;

            dmImpNF.cdsItensNF_serv.Post;
         end;

         dmVd1101.cdsDocSimplesItens.Next;
      end;
   end;

   // Verifica se � NF de entrada
   if PEM = '012' then
   begin
      cdsNFFORMA_PAGAMENTO.Value := '';
      SERIE_VENDA1 := dmVd1101.cdsComprasSERIE_COMPRA.Value;
      CFOP_VENDA1  := dmVd1101.cdsComprasCFOP_COMPRA.Value;

      cdsNFCODIGO_VENDA.Value := dmVd1101.cdsComprasCODIGO_COMPRA.Value;

      Nota_de_entrada := True;

      dmVd1101.cdsComprasItens.Close;
      dmVd1101.cdsComprasItens.Params.ParamByName('COMPRA').AsInteger  := dmVd1101.cdsComprasCODIGO_COMPRA.AsInteger;
      dmVd1101.cdsComprasItens.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmVd1101.cdsComprasItens.Open;

      dmVd1101.cdsComprasItens.First;
      while not dmVd1101.cdsComprasItens.Eof do
      begin
         if dmVd1101.cdsVendasItemCLASSE_IVENDA.AsString <> 'S' then
         begin
            dmImpNF.cdsItensNF.Append;

            dmImpNF.cdsItensNFPRODUTO_IVENDA     .Value := dmVd1101.cdsComprasItensPRODUTO_COMPRA.AsString;
            dmImpNF.cdsItensNFDESCRICAO_IVENDAS  .Value := dmVd1101.cdsComprasItensDESCRICAO_PRODUTO.AsString;
            dmImpNF.cdsItensNFCFOP               .Value := dmVd1101.cdsComprasCFOP_COMPRA.AsString;
            dmImpNF.cdsItensNFTRIBUTACAO_IVENDAS .Value := dmVd1101.cdsComprasItensSIT_TRIB_COMPRA.AsString;
            dmImpNF.cdsItensNFUNIDADE_PRODUTO    .Value := dmVd1101.cdsComprasItensUNIDADE_PRODUTO.AsString;
            dmImpNF.cdsItensNFQUANTIDADE_IVENDAS .Value := dmVd1101.cdsComprasItensQUANTIDADE_COMPRA.AsFloat;
            dmImpNF.cdsItensNFVALORBRUTO_IVENDAS .Value := dmVd1101.cdsComprasItensPRECOUNIT_COMPRA.AsFloat;
            dmImpNF.cdsItensNFVALORTOTAL         .Value := dmVd1101.cdsComprasItensPRECOUNIT_COMPRA.AsFloat * dmVd1101.cdsComprasItensQUANTIDADE_COMPRA.AsFloat;
            dmImpNF.cdsItensNFICM_IVENDAS        .Value := dmVd1101.cdsComprasItensICM_COMPRA.AsFloat;
            dmImpNF.cdsItensNFREDUTOR_IVENDAS    .Value := dmVd1101.cdsComprasItensREDUTOR_COMPRA.AsString;
            dmImpNF.cdsItensNFSERIE_IVENDAS      .Value := dmVd1101.cdsComprasItensSERIE_COMPRA.AsString;
            dmImpNF.cdsItensNFQTDE_VENDAS        .Value := dmVd1101.cdsComprasItensQUANT_OCO_COMPRA.AsInteger;
            dmImpNF.cdsItensNFCODIGO_IVENDA      .Value := dmVd1101.cdsComprasItensCODIGO_COMPRA.AsInteger;

            dmImpNF.cdsItensNF.Post;
         end;
         dmVd1101.cdsComprasItens.Next;
      end;
   end;

   if PEM = 'FN1102' then
   begin
      cdsNFCODIGO_VENDA    .Value := dmFn1102.cdsVendasCODIGO_VENDA.Value;
      {cdsNFFORMA_PAGAMENTO .Value := dmFn1102.cdsVendaFORMA_PAGAMENTO.Value;
      cdsNFNOME_VENDEDOR   .Value := dmFn1102.cdsVendaNOME_VENDEDOR.Value;}

      SERIE_VENDA1 := dmFn1102.cdsVendasSERIE_VENDA.Value;
      CFOP_VENDA1  := dmFn1102.cdsVendasCFOP_VENDA.Value;

      dmFn1102.cdsItemVenda_Imp.First;
      while not dmFn1102.cdsItemVenda_Imp.Eof do
      begin
      if dmFn1102.cdsItemVenda_ImpCLASSE.AsString <> 'S' then
      begin
         dmImpNF.cdsItensNF.Append;

         dmImpNF.cdsItensNFPRODUTO_IVENDA     .AsVariant := dmFn1102.cdsItemVenda_ImpPRODUTO_COD.AsVariant;
         dmImpNF.cdsItensNFDESCRICAO_IVENDAS  .AsVariant := dmFn1102.cdsItemVenda_ImpPRODUTO_DESCRI.AsVariant;
         dmImpNF.cdsItensNFCFOP               .AsVariant := dmFn1102.cdsItemVenda_ImpCFOP.AsVariant;
         dmImpNF.cdsItensNFTRIBUTACAO_IVENDAS .AsVariant := dmFn1102.cdsItemVenda_ImpTRIBUTACAO.AsVariant;
         dmImpNF.cdsItensNFUNIDADE_PRODUTO    .AsVariant := dmFn1102.cdsItemVenda_ImpUNIDADE.AsVariant;
         dmImpNF.cdsItensNFQUANTIDADE_IVENDAS .AsVariant := dmFn1102.cdsItemVenda_ImpQUANTIDADE.AsVariant;
         dmImpNF.cdsItensNFVALORBRUTO_IVENDAS .AsVariant := dmFn1102.cdsItemVenda_ImpVALOR.AsVariant;
         dmImpNF.cdsItensNFVALORTOTAL         .AsVariant := dmFn1102.cdsItemVenda_ImpVALOR.Value * dmFn1102.cdsItemVenda_ImpQUANTIDADE.AsVariant;
         dmImpNF.cdsItensNFICM_IVENDAS        .AsFloat   := dmFn1102.cdsItemVenda_ImpICM.AsFloat;
         dmImpNF.cdsItensNFREDUTOR_IVENDAS    .AsVariant := dmFn1102.cdsItemVenda_ImpREDUTOR.AsVariant;
         dmImpNF.cdsItensNFSERIE_IVENDAS      .AsVariant := dmFn1102.cdsVendasSERIE_VENDA.AsVariant;
         dmImpNF.cdsItensNFQTDE_VENDAS        .AsVariant := dmFn1102.cdsItemVenda_Imp.RecNo;
         dmImpNF.cdsItensNFCODIGO_IVENDA      .AsVariant := dmFn1102.cdsItemVenda_ImpCOD_IVENDA.AsVariant;

         dmImpNF.cdsItensNF.Post;
      end;
      dmFn1102.cdsItemVenda_Imp.Next;
   end;

      cdsNFNOME_CLIENTE.AsVariant := dmFn1102.cdsClienteNOME_CLIENTE.AsVariant;
      cdsNFCNPJ_CLIENTE.AsVariant := dmFn1102.cdsClienteCNPJ_CLIENTE.AsVariant;

      if dmFn1102.cdsVendasPROPRIEDADE_VENDA.Value > 0 then
         cdsNFENDERECO_CLIENTE.AsVariant := dmFn1102.cdsPropriedadeDESCRICAO_PRO.AsVariant
      else
         cdsNFENDERECO_CLIENTE.AsVariant := dmFn1102.cdsClienteENDERECO_CLIENTE.AsVariant;

      if dmFn1102.cdsVendasPROPRIEDADE_VENDA.Value > 0 then
         cdsNFBAIRRO_CLIENTE.AsVariant := dmFn1102.cdsPropriedadeBAIRRO_PRO.AsVariant
      else
         cdsNFBAIRRO_CLIENTE.AsVariant := dmFn1102.cdsClienteBAIRRO_CLIENTE.AsVariant;

      if dmFn1102.cdsVendasPROPRIEDADE_VENDA.Value > 0 then
         cdsNFCEP_CLIENTE.AsVariant := dmFn1102.cdsPropriedadeCEP_PRO.AsVariant
      else
         cdsNFCEP_CLIENTE.AsVariant := dmFn1102.cdsClienteCEP_CLIENTE.AsVariant;

      if dmFn1102.cdsVendasPROPRIEDADE_VENDA.Value > 0 then
         cdsNFNOME_CIDADE.AsVariant := dmFn1102.cdsPropriedadeDESCRICAO_CIDADE.AsVariant
      else
         cdsNFNOME_CIDADE.AsVariant := dmFn1102.cdsClienteDESCRICAO_CIDADE.AsVariant;

      if dmFn1102.cdsVendasPROPRIEDADE_VENDA.Value > 0 then
         cdsNFTELEFONE_CLIENTE.AsVariant := dmFn1102.cdsPropriedadeFONE_PRO.AsVariant
      else
         cdsNFTELEFONE_CLIENTE.AsVariant := dmFn1102.cdsClienteTELEFONE_CLIENTE.AsVariant;

      if dmFn1102.cdsVendasPROPRIEDADE_VENDA.Value > 0 then
         cdsNFESTADO_CLIENTE.AsVariant := dmFn1102.cdsPropriedadeESTADO_PRO.AsVariant
      else
         cdsNFESTADO_CLIENTE.AsVariant := dmFn1102.cdsClienteESTADO_CLIENTE.AsVariant;

      if dmFn1102.cdsVendasPROPRIEDADE_VENDA.Value > 0 then
         cdsNFINSCRICAO_CLIENTE.AsVariant := dmFn1102.cdsPropriedadeINSCEST_PRO.AsVariant
      else
         cdsNFINSCRICAO_CLIENTE.AsVariant := dmFn1102.cdsClienteINSCRICAO_CLIENTE.AsVariant;

      cdsNFCNPJ_TRANSP        . AsVariant := dmImpNF.cdsTransportCNPJ_CLIENTE.AsVariant;
      cdsNFTIPOPESSOA_CLIENTE . AsVariant := dmFn1102.cdsClienteTIPOPESSOA_CLIENTE.AsVariant;
   end
   else
   begin
      // Verifica se � referente ao financeiro
      if PEM = 'FN11' then
      begin
         cdsNFCODIGO_VENDA    .Value := dmFn1101.cdsVendaCODIGO_VENDA.Value;
         {cdsNFFORMA_PAGAMENTO .Value := dmFn1101.cdsVendaFORMA_PAGAMENTO.Value;
         cdsNFNOME_VENDEDOR   .Value := dmFn1101.cdsVendaNOME_VENDEDOR.Value;}

         SERIE_VENDA1 := dmFn1101.cdsVendaSERIE_VENDA.Value;
         CFOP_VENDA1  := dmFn1101.cdsVendaCFOP_VENDA.Value;

         dmFn1101.cdsItemVenda_Imp.First;
         while not dmFn1101.cdsItemVenda_Imp.Eof do
         begin
         if dmFn1101.cdsItemVenda_ImpCLASSE.AsString <> 'S' then
         begin
            dmImpNF.cdsItensNF.Append;

            dmImpNF.cdsItensNFPRODUTO_IVENDA     .AsVariant := dmFn1101.cdsItemVenda_ImpPRODUTO_COD.AsVariant;
            dmImpNF.cdsItensNFDESCRICAO_IVENDAS  .AsVariant := dmFn1101.cdsItemVenda_ImpPRODUTO_DESCRI.AsVariant;
            dmImpNF.cdsItensNFCFOP               .AsVariant := dmFn1101.cdsItemVenda_ImpCFOP.AsVariant;
            dmImpNF.cdsItensNFTRIBUTACAO_IVENDAS .AsVariant := dmFn1101.cdsItemVenda_ImpTRIBUTACAO.AsVariant;
            dmImpNF.cdsItensNFUNIDADE_PRODUTO    .AsVariant := dmFn1101.cdsItemVenda_ImpUNIDADE.AsVariant;
            dmImpNF.cdsItensNFQUANTIDADE_IVENDAS .AsVariant := dmFn1101.cdsItemVenda_ImpQUANTIDADE.AsVariant;
            dmImpNF.cdsItensNFVALORBRUTO_IVENDAS .AsVariant := dmFn1101.cdsItemVenda_ImpVALOR.AsVariant;
            dmImpNF.cdsItensNFVALORTOTAL         .AsVariant := dmFn1101.cdsItemVenda_ImpVALOR.Value * dmFn1101.cdsItemVenda_ImpQUANTIDADE.AsVariant;
            dmImpNF.cdsItensNFICM_IVENDAS        .AsFloat   := dmFn1101.cdsItemVenda_ImpICM.AsFloat;
            dmImpNF.cdsItensNFREDUTOR_IVENDAS    .AsVariant := dmFn1101.cdsItemVenda_ImpREDUTOR.AsVariant;
            dmImpNF.cdsItensNFSERIE_IVENDAS      .AsVariant := frmFn1101.edtSerie.Value;
            dmImpNF.cdsItensNFQTDE_VENDAS        .AsVariant := dmFn1101.cdsItemVenda_Imp.RecNo;
            dmImpNF.cdsItensNFCODIGO_IVENDA      .AsVariant := dmFn1101.cdsItemVenda_ImpCOD_IVENDA.AsVariant;

            dmImpNF.cdsItensNF.Post;
         end;
         dmFn1101.cdsItemVenda_Imp.Next;
      end;



         cdsNFNOME_CLIENTE.AsVariant := dmFn1101.cdsClienteNOME_CLIENTE.AsVariant;
         cdsNFCNPJ_CLIENTE.AsVariant := dmFn1101.cdsClienteCNPJ_CLIENTE.AsVariant;

         if frmFn1101.edtPropriedade.Value > 0 then
            cdsNFENDERECO_CLIENTE.AsVariant := dmFn1101.cdsPropriedadeDESCRICAO_PRO.AsVariant
         else
            cdsNFENDERECO_CLIENTE.AsVariant := dmFn1101.cdsClienteENDERECO_CLIENTE.AsVariant;

         if frmFn1101.edtPropriedade.Value > 0 then
            cdsNFBAIRRO_CLIENTE.AsVariant := dmFn1101.cdsPropriedadeBAIRRO_PRO.AsVariant
         else
            cdsNFBAIRRO_CLIENTE.AsVariant := dmFn1101.cdsClienteBAIRRO_CLIENTE.AsVariant;

         if frmFn1101.edtPropriedade.Value > 0 then
            cdsNFCEP_CLIENTE.AsVariant := dmFn1101.cdsPropriedadeCEP_PRO.AsVariant
         else
            cdsNFCEP_CLIENTE.AsVariant := dmFn1101.cdsClienteCEP_CLIENTE.AsVariant;

         if frmFn1101.edtPropriedade.Value > 0 then
            cdsNFNOME_CIDADE.AsVariant := dmFn1101.cdsPropriedadeDESCRICAO_CIDADE.AsVariant
         else
            cdsNFNOME_CIDADE.AsVariant := dmFn1101.cdsClienteDESCRICAO_CIDADE.AsVariant;

         if frmFn1101.edtPropriedade.Value > 0 then
            cdsNFTELEFONE_CLIENTE.AsVariant := dmFn1101.cdsPropriedadeFONE_PRO.AsVariant
         else
            cdsNFTELEFONE_CLIENTE.AsVariant := dmFn1101.cdsClienteTELEFONE_CLIENTE.AsVariant;

         if frmFn1101.edtPropriedade.Value > 0 then
            cdsNFESTADO_CLIENTE.AsVariant := dmFn1101.cdsPropriedadeESTADO_PRO.AsVariant
         else
            cdsNFESTADO_CLIENTE.AsVariant := dmFn1101.cdsClienteESTADO_CLIENTE.AsVariant;

         if frmFn1101.edtPropriedade.Value > 0 then
            cdsNFINSCRICAO_CLIENTE.AsVariant := dmFn1101.cdsPropriedadeINSCEST_PRO.AsVariant
         else
            cdsNFINSCRICAO_CLIENTE.AsVariant := dmFn1101.cdsClienteINSCRICAO_CLIENTE.AsVariant;

         cdsNFCNPJ_TRANSP        . AsVariant := dmImpNF.cdsTransportCNPJ_CLIENTE.AsVariant;
         cdsNFTIPOPESSOA_CLIENTE . AsVariant := dmFn1101.cdsClienteTIPOPESSOA_CLIENTE.AsVariant;
      end
      else
      begin
         if PEM = 'A2' then
         begin
            cdsNFCODIGO_VENDA    .Value := dmVd1102.cdsBalcaoCODIGO_BALCAO.Value;
            {cdsNFFORMA_PAGAMENTO .Value := dmFn1102.cdsVendaFORMA_PAGAMENTO.Value;
            cdsNFNOME_VENDEDOR   .Value := dmFn1102.cdsVendaNOME_VENDEDOR.Value;}

            SERIE_VENDA1 := dmVd1102.cdsBalcaoSERIE_BALCAO.Value;
            CFOP_VENDA1  := dmVd1102.cdsBalcaoCFOP_BALCAO.Value;

            dmVd1102.cdsBalcaoItens.First;
            while not dmVd1102.cdsBalcaoItens.Eof do
            begin
            if dmVd1102.cdsBalcaoItensCLASSE_IBALCAO.AsString <> 'S' then
            begin
               dmImpNF.cdsItensNF.Append;

               dmImpNF.cdsItensNFPRODUTO_IVENDA     .AsVariant := dmVd1102.cdsBalcaoItensPRODUTO_IBALCAO.AsVariant;
               dmImpNF.cdsItensNFDESCRICAO_IVENDAS  .AsVariant := dmVd1102.cdsBalcaoItensDESCRICAO_IBALCAO.AsVariant;
               dmImpNF.cdsItensNFCFOP               .AsVariant := dmVd1102.cdsBalcaoItensCFOP.AsVariant;
               dmImpNF.cdsItensNFTRIBUTACAO_IVENDAS .AsVariant := dmVd1102.cdsBalcaoItensTRIBUTACAO_IBALCAO.AsVariant;
//               dmImpNF.cdsItensNFUNIDADE_PRODUTO    .AsVariant := dmVd1102.cdsBalcaoItensUNIDADE.AsVariant;
               dmImpNF.cdsItensNFQUANTIDADE_IVENDAS .AsVariant := dmVd1102.cdsBalcaoItensQUANTIDADE_IBALCAO.AsVariant;
               dmImpNF.cdsItensNFVALORBRUTO_IVENDAS .AsVariant := dmVd1102.cdsBalcaoItensVALORBRUTO_IBALCAO.AsVariant;
               dmImpNF.cdsItensNFVALORTOTAL         .AsVariant := dmVd1102.cdsBalcaoItensVALORBRUTO_IBALCAO.AsFloat * dmVd1102.cdsBalcaoItensQUANTIDADE_IBALCAO.AsFloat;
               dmImpNF.cdsItensNFICM_IVENDAS        .AsFloat   := dmVd1102.cdsBalcaoItensICM_IBALCAO.AsFloat;
               dmImpNF.cdsItensNFREDUTOR_IVENDAS    .AsVariant := dmVd1102.cdsBalcaoItensREDUTOR_IBALCAO.AsVariant;
               dmImpNF.cdsItensNFSERIE_IVENDAS      .AsVariant := dmVd1102.cdsBalcaoItensSERIE_IBALCAO.AsVariant;
               dmImpNF.cdsItensNFQTDE_VENDAS        .AsVariant := dmVd1102.cdsBalcaoItens.RecNo;
               dmImpNF.cdsItensNFCODIGO_IVENDA      .AsVariant := dmVd1102.cdsBalcaoItensCODIGO_IBALCAO.AsVariant;

               dmImpNF.cdsItensNF.Post;
            end;
            dmVd1102.cdsBalcaoItens.Next;
         end;

            cdsNFNOME_CLIENTE.Value := dmVd1102.cdsClientesNOME_CLIENTE.Value;
            cdsNFCNPJ_CLIENTE.Value := dmVd1102.cdsClientesCNPJ_CLIENTE.Value;

            if dmVd1102.cdsBalcaoPROPRIEDADE_BALCAO.AsInteger > 0 then
               cdsNFENDERECO_CLIENTE.Value := dmVd1102.cdsPropriedadeDESCRICAO_PRO.Value
            else
               cdsNFENDERECO_CLIENTE.Value := dmVd1102.cdsClientesENDERECO_CLIENTE.Value;

            if dmVd1102.cdsBalcaoPROPRIEDADE_BALCAO.AsInteger > 0 then
               cdsNFBAIRRO_CLIENTE.Value := dmVd1102.cdsPropriedadeBAIRRO_PRO.Value
            else
               cdsNFBAIRRO_CLIENTE.Value := dmVd1102.cdsClientesBAIRRO_CLIENTE.Value;

            if dmVd1102.cdsBalcaoPROPRIEDADE_BALCAO.AsInteger > 0 then
               cdsNFCEP_CLIENTE.Value := dmVd1102.cdsPropriedadeCEP_PRO.Value
            else
               cdsNFCEP_CLIENTE.Value := dmVd1102.cdsClientesCEP_CLIENTE.Value;

            if dmVd1102.cdsBalcaoPROPRIEDADE_BALCAO.AsInteger > 0 then
               cdsNFNOME_CIDADE.Value := dmVd1102.cdsPropriedadeDESCRICAO_CIDADE.Value
            else
               cdsNFNOME_CIDADE.Value := dmVd1102.cdsClientesNOME_CIDADE.Value;

            if dmVd1102.cdsBalcaoPROPRIEDADE_BALCAO.AsInteger > 0 then
               cdsNFTELEFONE_CLIENTE.Value := dmVd1102.cdsPropriedadeFONE_PRO.Value
            else
               cdsNFTELEFONE_CLIENTE.Value := dmVd1102.cdsClientesTELEFONE_CLIENTE.Value;

            if dmVd1102.cdsBalcaoPROPRIEDADE_BALCAO.AsInteger > 0 then
               cdsNFESTADO_CLIENTE.Value := dmVd1102.cdsPropriedadeESTADO_PRO.Value
            else
               cdsNFESTADO_CLIENTE.Value := dmVd1102.cdsClientesESTADO_CLIENTE.Value;

            if dmVd1102.cdsBalcaoPROPRIEDADE_BALCAO.AsInteger > 0 then
               cdsNFINSCRICAO_CLIENTE.Value := dmVd1102.cdsPropriedadeINSCEST_PRO.Value
            else
               cdsNFINSCRICAO_CLIENTE.Value := dmVd1102.cdsClientesINSCRICAO_CLIENTE.Value;

            cdsNFCNPJ_TRANSP        . Value := dmImpNF.cdsTransportCNPJ_CLIENTE.Value;
            cdsNFTIPOPESSOA_CLIENTE . Value := dmVd1102.cdsClientesTIPOPESSOA_CLIENTE.Value;
         end
         else
         begin
            cdsNFNOME_CLIENTE.Value := dmVd1101.cdsClienteNOME_CLIENTE.Value;
            cdsNFCNPJ_CLIENTE.Value := dmVd1101.cdsClienteCNPJ_CLIENTE.Value;

            if frmVd1101.Propriedade then
               cdsNFENDERECO_CLIENTE.Value := dmVd1101.cdsPropriedadeDESCRICAO_PRO.Value
            else
               cdsNFENDERECO_CLIENTE.Value := dmVd1101.cdsClienteENDERECO_CLIENTE.Value;

            if frmVd1101.Propriedade then
               cdsNFBAIRRO_CLIENTE.Value := dmVd1101.cdsPropriedadeBAIRRO_PRO.Value
            else
               cdsNFBAIRRO_CLIENTE.Value := dmVd1101.cdsClienteBAIRRO_CLIENTE.Value;

            if frmVd1101.Propriedade then
               cdsNFCEP_CLIENTE.Value := dmVd1101.cdsPropriedadeCEP_PRO.Value
            else
               cdsNFCEP_CLIENTE.Value := dmVd1101.cdsClienteCEP_CLIENTE.Value;

            if frmVd1101.Propriedade then
               cdsNFNOME_CIDADE.Value := dmVd1101.cdsPropriedadeDESCRICAO_CIDADE.Value
            else
               cdsNFNOME_CIDADE.Value := dmVd1101.cdsClienteNOME_CIDADE.Value;

            if frmVd1101.Propriedade then
               cdsNFTELEFONE_CLIENTE.Value := dmVd1101.cdsPropriedadeFONE_PRO.Value
            else
               cdsNFTELEFONE_CLIENTE.Value := dmVd1101.cdsClienteTELEFONE_CLIENTE.Value;

            if frmVd1101.Propriedade then
               cdsNFESTADO_CLIENTE.Value := dmVd1101.cdsPropriedadeESTADO_PRO.Value
            else
               cdsNFESTADO_CLIENTE.Value := dmVd1101.cdsClienteESTADO_CLIENTE.Value;

            if frmVd1101.Propriedade then
               cdsNFINSCRICAO_CLIENTE.Value := dmVd1101.cdsPropriedadeINSCEST_PRO.Value
            else
               cdsNFINSCRICAO_CLIENTE.Value := dmVd1101.cdsClienteINSCRICAO_CLIENTE.Value;

            cdsNFCNPJ_TRANSP        . Value := dmImpNF.cdsTransportCNPJ_CLIENTE.Value;
            cdsNFTIPOPESSOA_CLIENTE . Value := dmVd1101.cdsClienteTIPOPESSOA_CLIENTE.Value;
         end;
      end;
   end;
   cdsNF.Post;
end;

procedure TdmImpNF.xisSaidaGetText(Sender: TObject; var Text: String);
begin
   if not Nota_de_entrada then
      Text := 'X'
   else
      Text := ' ';
end;

procedure TdmImpNF.xisEntradaGetText(Sender: TObject; var Text: String);
begin
   if Nota_de_entrada then
      Text := 'X'
   else
      Text := ' ';
end;

procedure TdmImpNF.ppDBText23GetText(Sender: TObject; var Text: String);
begin
   if cdsItensNF.FieldByName('PRODUTO_IVENDA').AsString <> '' then
      Text := Copy(cdsItensNF.FieldByName('DESCRICAO_IVENDAS').AsString,1,60)
   else
      Text := cdsItensNF.FieldByName('DESCRICAO_IVENDAS').AsString;
end;

end.
