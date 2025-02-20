unit uDmImpOrc;

interface

uses
  SysUtils, Classes, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppModule, raCodMod, ppParameter, DB,
  ppDB, ppDBPipe, FMTBcd, Provider, SqlExpr, DBClient, uMultiClasses,
  ppArchiv;

type
  TdmImpOrc = class(TDataModule)
    pplItenOrc: TppDBPipeline;
    rptOrc_00: TppReport;
    ppParameterList2: TppParameterList;
    dsItensOrc: TDataSource;
    dsOrcamento: TDataSource;
    cdsOrcamento: TClientDataSet;
    cdsItensOrc: TClientDataSet;
    qryVenda: TSQLQuery;
    qryItensVnd: TSQLQuery;
    qryItensVndID_VENDA_ITEM: TIntegerField;
    qryItensVndCODIGO_IVENDA: TIntegerField;
    qryItensVndPRODUTO_IVENDA: TIntegerField;
    qryItensVndDESCRICAO_IVENDAS: TStringField;
    qryItensVndVALORBRUTO_IVENDAS: TFMTBCDField;
    qryItensVndQUANTIDADE_IVENDAS: TFMTBCDField;
    qryItensVndGRADE_IVENDAS: TStringField;
    qryItensVndPROMOCAO_IVENDAS: TStringField;
    qryItensVndSERIE_IVENDAS: TStringField;
    qryItensVndDESCONTO_IVENDAS: TFMTBCDField;
    qryItensVndICM_IVENDAS: TFMTBCDField;
    qryItensVndIPI_IVENDAS: TFMTBCDField;
    qryItensVndREDUTOR_IVENDAS: TFMTBCDField;
    qryItensVndTRIBUTACAO_IVENDAS: TStringField;
    qryItensVndFISCAL_IVENDAS: TStringField;
    qryItensVndGARANTIA_IVENDAS: TStringField;
    qryItensVndTECNICO_IVENDAS: TIntegerField;
    qryItensVndALTURA_IVENDAS: TFMTBCDField;
    qryItensVndLARGURA_IVENDAS: TFMTBCDField;
    qryItensVndCOMPRIMENTO_VENDAS: TFMTBCDField;
    qryItensVndQTDE_VENDAS: TIntegerField;
    qryItensVndCOMPLEMENTO: TStringField;
    qryItensVndCOD_EMPRESA: TIntegerField;
    qryItensVndCLASSE_IVENDA: TStringField;
    qryItensVndVALORTOTAL: TFMTBCDField;
    qryItensVndFABRICANTE_PRODUTO: TStringField;
    qryItensVndUNIDADE_PRODUTO: TStringField;
    qryItensVndCODIGO_GRADE: TStringField;
    cdsItensOrcID_VENDA_ITEM: TIntegerField;
    cdsItensOrcCODIGO_IVENDA: TIntegerField;
    cdsItensOrcPRODUTO_IVENDA: TIntegerField;
    cdsItensOrcDESCRICAO_IVENDAS: TStringField;
    cdsItensOrcVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsItensOrcQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsItensOrcGRADE_IVENDAS: TStringField;
    cdsItensOrcPROMOCAO_IVENDAS: TStringField;
    cdsItensOrcSERIE_IVENDAS: TStringField;
    cdsItensOrcDESCONTO_IVENDAS: TFMTBCDField;
    cdsItensOrcICM_IVENDAS: TFMTBCDField;
    cdsItensOrcIPI_IVENDAS: TFMTBCDField;
    cdsItensOrcREDUTOR_IVENDAS: TFMTBCDField;
    cdsItensOrcTRIBUTACAO_IVENDAS: TStringField;
    cdsItensOrcFISCAL_IVENDAS: TStringField;
    cdsItensOrcGARANTIA_IVENDAS: TStringField;
    cdsItensOrcTECNICO_IVENDAS: TIntegerField;
    cdsItensOrcALTURA_IVENDAS: TFMTBCDField;
    cdsItensOrcLARGURA_IVENDAS: TFMTBCDField;
    cdsItensOrcCOMPRIMENTO_VENDAS: TFMTBCDField;
    cdsItensOrcQTDE_VENDAS: TIntegerField;
    cdsItensOrcCOMPLEMENTO: TStringField;
    cdsItensOrcCOD_EMPRESA: TIntegerField;
    cdsItensOrcCLASSE_IVENDA: TStringField;
    cdsItensOrcVALORTOTAL: TFMTBCDField;
    cdsItensOrcFABRICANTE_PRODUTO: TStringField;
    cdsItensOrcUNIDADE_PRODUTO: TStringField;
    cdsItensOrcCODIGO_GRADE: TStringField;
    pplOrc: TppDBPipeline;
    pplCliente: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLine7: TppLine;
    ppLabel25: TppLabel;
    ppLabel30: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine8: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel45: TppLabel;
    ppLabel47: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText20: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel27: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel29: TppLabel;
    ppDBText14: TppDBText;
    ppLabel31: TppLabel;
    ppDBText27: TppDBText;
    ppLabel32: TppLabel;
    ppDBText28: TppDBText;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    raCodeModule2: TraCodeModule;
    ppLabel40: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel26: TppLabel;
    ppDBText33: TppDBText;
    ppLabel28: TppLabel;
    ppDBText35: TppDBText;
    ppLabel43: TppLabel;
    ppDBText34: TppDBText;
    ppLabel44: TppLabel;
    ppDBText36: TppDBText;
    ppLabel39: TppLabel;
    ppDBText37: TppDBText;
    ppLabel46: TppLabel;
    rptOrc_01: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppLabel48: TppLabel;
    ppDBText45: TppDBText;
    ppLabel55: TppLabel;
    ppDBText46: TppDBText;
    ppLabel67: TppLabel;
    ppDBText63: TppDBText;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBText54: TppDBText;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLabel62: TppLabel;
    ppDBText59: TppDBText;
    ppLabel63: TppLabel;
    ppDBText60: TppDBText;
    ppLabel64: TppLabel;
    ppDBText61: TppDBText;
    ppLabel65: TppLabel;
    ppDBText62: TppDBText;
    ppLabel66: TppLabel;
    ppLine9: TppLine;
    ppLabel61: TppLabel;
    ppLine10: TppLine;
    ppLabel58: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine11: TppLine;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    raCodeModule1: TraCodeModule;
    ppParameterList3: TppParameterList;
    rptOrc_02: TppReport;
    rptORc_03: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel150: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLine21: TppLine;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppLine22: TppLine;
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
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppLabel170: TppLabel;
    ppDBText105: TppDBText;
    ppLabel171: TppLabel;
    ppDBText106: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel173: TppLabel;
    ppDBText114: TppDBText;
    ppLabel174: TppLabel;
    ppDBText115: TppDBText;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppLabel178: TppLabel;
    ppDBText119: TppDBText;
    ppLabel179: TppLabel;
    ppDBText120: TppDBText;
    ppLabel180: TppLabel;
    ppDBText121: TppDBText;
    ppLabel181: TppLabel;
    ppDBText122: TppDBText;
    ppLabel182: TppLabel;
    raCodeModule4: TraCodeModule;
    ppParameterList4: TppParameterList;
    ppLabel172: TppLabel;
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
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    rptOrc_05: TppReport;
    ppParameterList5: TppParameterList;
    ppHeaderBand5: TppHeaderBand;
    ppLabel198: TppLabel;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLine25: TppLine;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLine26: TppLine;
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
    ppDBText113: TppDBText;
    ppDBText123: TppDBText;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppLabel218: TppLabel;
    ppDBText135: TppDBText;
    ppLabel219: TppLabel;
    ppDBText136: TppDBText;
    ppLabel220: TppLabel;
    ppDBText137: TppDBText;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppDBText144: TppDBText;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppLabel231: TppLabel;
    ppDBText148: TppDBText;
    ppLabel232: TppLabel;
    ppDBText149: TppDBText;
    ppLabel233: TppLabel;
    ppDBText150: TppDBText;
    ppLabel234: TppLabel;
    ppDBText151: TppDBText;
    ppLabel235: TppLabel;
    ppLine27: TppLine;
    ppLabel236: TppLabel;
    ppLine28: TppLine;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel256: TppLabel;
    ppDBText152: TppDBText;
    raCodeModule5: TraCodeModule;
    ppHeaderBand3: TppHeaderBand;
    ppLabel92: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLine14: TppLine;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLine15: TppLine;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppDBText53: TppDBText;
    ppDBText55: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppLabel112: TppLabel;
    ppDBText75: TppDBText;
    ppLabel113: TppLabel;
    ppDBText76: TppDBText;
    ppLabel114: TppLabel;
    ppDBText77: TppDBText;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppDBText84: TppDBText;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppLabel125: TppLabel;
    ppDBText88: TppDBText;
    ppLabel126: TppLabel;
    ppDBText89: TppDBText;
    ppLabel127: TppLabel;
    ppDBText90: TppDBText;
    ppLabel128: TppLabel;
    ppDBText91: TppDBText;
    ppLabel129: TppLabel;
    ppLine16: TppLine;
    ppLabel130: TppLabel;
    ppLine17: TppLine;
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
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLine18: TppLine;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    raCodeModule3: TraCodeModule;
    rptOrc_07: TppReport;
    ppParameterList6: TppParameterList;
    ppHeaderBand6: TppHeaderBand;
    ppLabel252: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLabel255: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLine31: TppLine;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLine32: TppLine;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppLabel273: TppLabel;
    ppDBText166: TppDBText;
    ppLabel274: TppLabel;
    ppDBText167: TppDBText;
    ppLabel275: TppLabel;
    ppDBText168: TppDBText;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppDBText171: TppDBText;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppDBText174: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppDBText175: TppDBText;
    ppLabel284: TppLabel;
    ppLabel285: TppLabel;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppDBText178: TppDBText;
    ppLabel286: TppLabel;
    ppDBText179: TppDBText;
    ppLabel287: TppLabel;
    ppDBText180: TppDBText;
    ppLabel288: TppLabel;
    ppDBText181: TppDBText;
    ppLabel289: TppLabel;
    ppDBText182: TppDBText;
    ppLabel290: TppLabel;
    ppLine33: TppLine;
    ppLabel291: TppLabel;
    ppLine34: TppLine;
    ppLabel292: TppLabel;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    raCodeModule6: TraCodeModule;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppDBText183: TppDBText;
    ppLabel322: TppLabel;
    ppDBText192: TppDBText;
    rptOrc_06: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppLabel325: TppLabel;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLabel327: TppLabel;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLine42: TppLine;
    ppLabel330: TppLabel;
    ppLabel331: TppLabel;
    ppLabel342: TppLabel;
    ppLabel343: TppLabel;
    ppLabel344: TppLabel;
    ppLabel345: TppLabel;
    ppLine43: TppLine;
    ppLabel346: TppLabel;
    ppLabel347: TppLabel;
    ppLabel348: TppLabel;
    ppLabel349: TppLabel;
    ppLabel350: TppLabel;
    ppLabel351: TppLabel;
    ppLabel352: TppLabel;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppDBText193: TppDBText;
    ppDBText196: TppDBText;
    ppDBText205: TppDBText;
    ppDBText206: TppDBText;
    ppDBText209: TppDBText;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppDBText213: TppDBText;
    ppDBText214: TppDBText;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppDBText218: TppDBText;
    ppLabel356: TppLabel;
    ppDBText219: TppDBText;
    ppLabel357: TppLabel;
    ppDBText220: TppDBText;
    ppLabel358: TppLabel;
    ppDBText221: TppDBText;
    ppLabel359: TppLabel;
    ppLabel360: TppLabel;
    ppLabel361: TppLabel;
    ppLabel362: TppLabel;
    ppLabel363: TppLabel;
    ppLabel364: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText222: TppDBText;
    ppDBText223: TppDBText;
    ppDBText224: TppDBText;
    ppDBText225: TppDBText;
    ppDBText226: TppDBText;
    ppDBText227: TppDBText;
    ppFooterBand8: TppFooterBand;
    ppLabel365: TppLabel;
    ppLabel366: TppLabel;
    ppDBText228: TppDBText;
    ppLabel367: TppLabel;
    ppLabel368: TppLabel;
    ppDBText229: TppDBText;
    ppDBText230: TppDBText;
    ppDBText231: TppDBText;
    ppLabel369: TppLabel;
    ppDBText232: TppDBText;
    ppLabel370: TppLabel;
    ppDBText233: TppDBText;
    ppLabel371: TppLabel;
    ppDBText234: TppDBText;
    ppLabel372: TppLabel;
    ppDBText235: TppDBText;
    ppLabel373: TppLabel;
    ppLine44: TppLine;
    ppLabel374: TppLabel;
    ppLine45: TppLine;
    ppLabel375: TppLabel;
    ppLabel376: TppLabel;
    ppLabel377: TppLabel;
    ppLabel378: TppLabel;
    ppLabel379: TppLabel;
    ppLabel380: TppLabel;
    ppLabel381: TppLabel;
    ppLabel382: TppLabel;
    ppLabel383: TppLabel;
    ppLabel384: TppLabel;
    ppLabel385: TppLabel;
    ppLabel386: TppLabel;
    ppLabel387: TppLabel;
    ppLabel388: TppLabel;
    ppLabel389: TppLabel;
    ppLine46: TppLine;
    ppLabel390: TppLabel;
    ppLabel391: TppLabel;
    ppLabel392: TppLabel;
    ppLabel393: TppLabel;
    raCodeModule8: TraCodeModule;
    ppParameterList8: TppParameterList;
    ppLabel394: TppLabel;
    ppDBText236: TppDBText;
    rptOrc_04: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppLabel395: TppLabel;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLabel396: TppLabel;
    ppLabel397: TppLabel;
    ppLabel398: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLine49: TppLine;
    ppLabel399: TppLabel;
    ppLabel400: TppLabel;
    ppLabel401: TppLabel;
    ppLabel402: TppLabel;
    ppLabel403: TppLabel;
    ppLabel404: TppLabel;
    ppLine50: TppLine;
    ppLabel405: TppLabel;
    ppLabel406: TppLabel;
    ppLabel407: TppLabel;
    ppLabel408: TppLabel;
    ppLabel409: TppLabel;
    ppLabel410: TppLabel;
    ppLabel411: TppLabel;
    ppLabel412: TppLabel;
    ppLabel413: TppLabel;
    ppLabel414: TppLabel;
    ppDBText237: TppDBText;
    ppDBText238: TppDBText;
    ppDBText239: TppDBText;
    ppDBText240: TppDBText;
    ppDBText241: TppDBText;
    ppDBText242: TppDBText;
    ppDBText243: TppDBText;
    ppDBText244: TppDBText;
    ppDBText245: TppDBText;
    ppDBText246: TppDBText;
    ppDBText247: TppDBText;
    ppDBText248: TppDBText;
    ppDBText249: TppDBText;
    ppLabel415: TppLabel;
    ppDBText250: TppDBText;
    ppLabel416: TppLabel;
    ppDBText251: TppDBText;
    ppLabel417: TppLabel;
    ppDBText252: TppDBText;
    ppLabel418: TppLabel;
    ppLabel419: TppLabel;
    ppLabel420: TppLabel;
    ppLabel421: TppLabel;
    ppLabel422: TppLabel;
    ppLabel423: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText255: TppDBText;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    ppDBText258: TppDBText;
    ppFooterBand9: TppFooterBand;
    ppLabel424: TppLabel;
    ppLabel425: TppLabel;
    ppDBText259: TppDBText;
    ppLabel426: TppLabel;
    ppLabel427: TppLabel;
    ppDBText260: TppDBText;
    ppDBText261: TppDBText;
    ppDBText262: TppDBText;
    ppLabel428: TppLabel;
    ppDBText263: TppDBText;
    ppLabel429: TppLabel;
    ppDBText264: TppDBText;
    ppLabel430: TppLabel;
    ppDBText265: TppDBText;
    ppLabel431: TppLabel;
    ppDBText266: TppDBText;
    ppLabel432: TppLabel;
    ppLine51: TppLine;
    ppLabel433: TppLabel;
    ppLine52: TppLine;
    ppLabel434: TppLabel;
    ppLabel435: TppLabel;
    ppLabel436: TppLabel;
    ppLabel437: TppLabel;
    ppLabel438: TppLabel;
    ppLabel439: TppLabel;
    ppLabel440: TppLabel;
    ppLabel441: TppLabel;
    ppLabel442: TppLabel;
    ppLabel443: TppLabel;
    ppLabel444: TppLabel;
    ppLabel445: TppLabel;
    ppLabel446: TppLabel;
    ppLabel447: TppLabel;
    ppLabel448: TppLabel;
    ppLine53: TppLine;
    ppLabel449: TppLabel;
    ppLabel450: TppLabel;
    ppLabel451: TppLabel;
    ppLabel452: TppLabel;
    raCodeModule9: TraCodeModule;
    ppParameterList9: TppParameterList;
    ppLabel453: TppLabel;
    ppLabel454: TppLabel;
    ppDBText267: TppDBText;
    ppDBText268: TppDBText;
    rptOrc_09: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppLabel455: TppLabel;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLabel456: TppLabel;
    ppLabel457: TppLabel;
    ppLabel458: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLine56: TppLine;
    ppLabel459: TppLabel;
    ppLabel460: TppLabel;
    ppLabel461: TppLabel;
    ppLabel462: TppLabel;
    ppLabel463: TppLabel;
    ppLabel464: TppLabel;
    ppLine57: TppLine;
    ppLabel466: TppLabel;
    ppLabel468: TppLabel;
    ppLabel469: TppLabel;
    ppLabel470: TppLabel;
    ppLabel471: TppLabel;
    ppLabel472: TppLabel;
    ppLabel473: TppLabel;
    ppLabel474: TppLabel;
    ppDBText269: TppDBText;
    ppDBText270: TppDBText;
    ppDBText271: TppDBText;
    ppDBText272: TppDBText;
    ppDBText274: TppDBText;
    ppDBText275: TppDBText;
    ppDBText276: TppDBText;
    ppDBText277: TppDBText;
    ppDBText278: TppDBText;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppLabel475: TppLabel;
    ppDBText282: TppDBText;
    ppDBText283: TppDBText;
    ppDetailBand10: TppDetailBand;
    ppDBText284: TppDBText;
    ppDBText285: TppDBText;
    ppDBText286: TppDBText;
    ppDBText287: TppDBText;
    ppDBText288: TppDBText;
    ppDBText289: TppDBText;
    ppFooterBand10: TppFooterBand;
    ppLabel477: TppLabel;
    ppDBText290: TppDBText;
    ppLabel478: TppLabel;
    ppDBText291: TppDBText;
    ppLabel479: TppLabel;
    ppLabel480: TppLabel;
    ppLabel481: TppLabel;
    ppDBText292: TppDBText;
    ppDBText293: TppDBText;
    ppDBText294: TppDBText;
    ppLabel482: TppLabel;
    ppDBText295: TppDBText;
    ppDBText296: TppDBText;
    ppDBText297: TppDBText;
    ppDBText298: TppDBText;
    ppLabel487: TppLabel;
    ppLabel488: TppLabel;
    ppLabel489: TppLabel;
    ppLabel490: TppLabel;
    ppLabel491: TppLabel;
    ppLabel492: TppLabel;
    ppLabel493: TppLabel;
    ppLabel494: TppLabel;
    ppLabel495: TppLabel;
    ppLabel496: TppLabel;
    ppLabel497: TppLabel;
    ppLabel498: TppLabel;
    ppLabel499: TppLabel;
    ppLabel500: TppLabel;
    ppLabel501: TppLabel;
    ppLabel502: TppLabel;
    raCodeModule10: TraCodeModule;
    ppParameterList10: TppParameterList;
    ppLabel476: TppLabel;
    ppLabel465: TppLabel;
    ppDBText273: TppDBText;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppDBText279: TppDBText;
    ppLine61: TppLine;
    rptOrc_A: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppLabel504: TppLabel;
    ppLabel505: TppLabel;
    ppLabel506: TppLabel;
    ppLabel507: TppLabel;
    ppLine65: TppLine;
    ppLabel508: TppLabel;
    ppLabel509: TppLabel;
    ppLabel510: TppLabel;
    ppLabel511: TppLabel;
    ppLabel512: TppLabel;
    ppLabel513: TppLabel;
    ppLabel514: TppLabel;
    ppLabel515: TppLabel;
    ppDBText300: TppDBText;
    ppDBText301: TppDBText;
    ppDBText302: TppDBText;
    ppDBText303: TppDBText;
    ppDBText304: TppDBText;
    ppDBText308: TppDBText;
    ppDBText309: TppDBText;
    ppLabel516: TppLabel;
    ppLabel518: TppLabel;
    ppDBText312: TppDBText;
    ppDetailBand11: TppDetailBand;
    ppDBText313: TppDBText;
    ppDBText314: TppDBText;
    ppDBText315: TppDBText;
    ppDBText316: TppDBText;
    ppDBText317: TppDBText;
    ppDBText318: TppDBText;
    ppFooterBand11: TppFooterBand;
    ppLabel519: TppLabel;
    ppDBText319: TppDBText;
    ppLabel520: TppLabel;
    ppDBText320: TppDBText;
    ppLabel521: TppLabel;
    ppLabel522: TppLabel;
    ppLabel523: TppLabel;
    ppDBText321: TppDBText;
    ppDBText322: TppDBText;
    ppDBText323: TppDBText;
    ppLabel524: TppLabel;
    ppDBText324: TppDBText;
    ppDBText325: TppDBText;
    ppDBText326: TppDBText;
    ppDBText327: TppDBText;
    ppLabel525: TppLabel;
    ppLine66: TppLine;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppDBText328: TppDBText;
    ppLine69: TppLine;
    raCodeModule11: TraCodeModule;
    ppParameterList11: TppParameterList;
    ppDBText329: TppDBText;
    ppLabel467: TppLabel;
    ppLabel483: TppLabel;
    ppLabel484: TppLabel;
    ppLabel485: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLine64: TppLine;
    ppLabel486: TppLabel;
    ppLabel503: TppLabel;
    ppDBText299: TppDBText;
    ppDBText305: TppDBText;
    ppDBText306: TppDBText;
    ppDBText307: TppDBText;
    ppDBText310: TppDBText;
    ppLabel517: TppLabel;
    ppDBText311: TppDBText;
    rptOrc_08: TppReport;
    ppParameterList12: TppParameterList;
    ppHeaderBand12: TppHeaderBand;
    ppLine70: TppLine;
    ppLabel526: TppLabel;
    ppLine71: TppLine;
    ppLabel527: TppLabel;
    ppLabel528: TppLabel;
    ppLabel529: TppLabel;
    ppLine72: TppLine;
    ppLabel530: TppLabel;
    ppLabel531: TppLabel;
    ppLabel532: TppLabel;
    ppLabel533: TppLabel;
    ppLabel534: TppLabel;
    ppLabel535: TppLabel;
    ppLabel536: TppLabel;
    ppLabel537: TppLabel;
    ppLabel538: TppLabel;
    ppLabel539: TppLabel;
    ppDBText330: TppDBText;
    ppDBText331: TppDBText;
    ppDBText332: TppDBText;
    ppDBText333: TppDBText;
    ppDBText334: TppDBText;
    ppDBText335: TppDBText;
    ppDBText336: TppDBText;
    ppDBText337: TppDBText;
    ppDBText338: TppDBText;
    ppDBText339: TppDBText;
    ppLine73: TppLine;
    ppLabel540: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText340: TppDBText;
    ppDBText341: TppDBText;
    ppDBText342: TppDBText;
    ppDBText343: TppDBText;
    ppDBText344: TppDBText;
    ppDBText345: TppDBText;
    ppDBText346: TppDBText;
    ppFooterBand12: TppFooterBand;
    ppLabel541: TppLabel;
    ppDBText347: TppDBText;
    ppLabel542: TppLabel;
    ppLabel543: TppLabel;
    ppDBText348: TppDBText;
    ppDBText349: TppDBText;
    ppLabel544: TppLabel;
    ppDBText350: TppDBText;
    ppLabel545: TppLabel;
    ppLabel546: TppLabel;
    ppLine74: TppLine;
    ppLabel547: TppLabel;
    ppLabel548: TppLabel;
    ppLabel549: TppLabel;
    ppLabel550: TppLabel;
    ppLabel551: TppLabel;
    ppLabel552: TppLabel;
    ppLabel553: TppLabel;
    ppLabel554: TppLabel;
    ppLabel555: TppLabel;
    ppLabel556: TppLabel;
    ppLabel557: TppLabel;
    ppLabel558: TppLabel;
    ppLabel559: TppLabel;
    ppLabel560: TppLabel;
    ppLabel561: TppLabel;
    raCodeModule12: TraCodeModule;
    rptOrc_C: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppLabel293: TppLabel;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel302: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLine37: TppLine;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppLabel305: TppLabel;
    ppLabel306: TppLabel;
    ppLabel307: TppLabel;
    ppLabel308: TppLabel;
    ppLine38: TppLine;
    ppLabel309: TppLabel;
    ppLabel310: TppLabel;
    ppLabel311: TppLabel;
    ppLabel312: TppLabel;
    ppLabel313: TppLabel;
    ppLabel314: TppLabel;
    ppLabel315: TppLabel;
    ppLabel316: TppLabel;
    ppLabel317: TppLabel;
    ppLabel318: TppLabel;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppDBText197: TppDBText;
    ppDBText198: TppDBText;
    ppDBText199: TppDBText;
    ppLabel319: TppLabel;
    ppDBText200: TppDBText;
    ppLabel320: TppLabel;
    ppDBText201: TppDBText;
    ppLabel321: TppLabel;
    ppDBText202: TppDBText;
    ppLabel323: TppLabel;
    ppLabel324: TppLabel;
    ppLabel326: TppLabel;
    ppLabel332: TppLabel;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText203: TppDBText;
    ppDBText204: TppDBText;
    ppDBText207: TppDBText;
    ppDBText208: TppDBText;
    ppDBText210: TppDBText;
    ppDBText351: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppDBText352: TppDBText;
    ppLabel337: TppLabel;
    ppLabel338: TppLabel;
    ppDBText353: TppDBText;
    ppDBText354: TppDBText;
    ppDBText355: TppDBText;
    ppLabel339: TppLabel;
    ppDBText356: TppDBText;
    ppLabel340: TppLabel;
    ppDBText357: TppDBText;
    ppLabel341: TppLabel;
    ppDBText358: TppDBText;
    ppLabel562: TppLabel;
    ppDBText359: TppDBText;
    ppLabel563: TppLabel;
    ppLine39: TppLine;
    ppLabel564: TppLabel;
    ppLine75: TppLine;
    ppLabel565: TppLabel;
    ppLabel566: TppLabel;
    ppLabel567: TppLabel;
    ppLabel568: TppLabel;
    ppLabel569: TppLabel;
    ppLabel570: TppLabel;
    ppLabel571: TppLabel;
    ppLabel572: TppLabel;
    ppLabel573: TppLabel;
    ppLabel574: TppLabel;
    ppLabel575: TppLabel;
    ppLabel576: TppLabel;
    ppLabel577: TppLabel;
    ppLabel578: TppLabel;
    ppLabel579: TppLabel;
    ppLine76: TppLine;
    ppLabel580: TppLabel;
    ppLabel581: TppLabel;
    ppLabel582: TppLabel;
    ppLabel583: TppLabel;
    raCodeModule7: TraCodeModule;
    ppParameterList7: TppParameterList;
    ppLabel584: TppLabel;
    ppDBText360: TppDBText;
    ppLabel585: TppLabel;
    ppDBText361: TppDBText;
    rptOrc_D: TppReport;
    ppHeaderBand13: TppHeaderBand;
    ppLabel586: TppLabel;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppLabel587: TppLabel;
    ppLabel588: TppLabel;
    ppLabel589: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLine79: TppLine;
    ppLabel590: TppLabel;
    ppLabel591: TppLabel;
    ppLabel592: TppLabel;
    ppLabel593: TppLabel;
    ppLabel594: TppLabel;
    ppLabel595: TppLabel;
    ppLine80: TppLine;
    ppLabel596: TppLabel;
    ppLabel597: TppLabel;
    ppLabel598: TppLabel;
    ppLabel599: TppLabel;
    ppLabel600: TppLabel;
    ppLabel601: TppLabel;
    ppLabel602: TppLabel;
    ppLabel603: TppLabel;
    ppLabel604: TppLabel;
    ppLabel605: TppLabel;
    ppDBText362: TppDBText;
    ppDBText363: TppDBText;
    ppDBText364: TppDBText;
    ppDBText365: TppDBText;
    ppDBText366: TppDBText;
    ppDBText367: TppDBText;
    ppDBText368: TppDBText;
    ppDBText369: TppDBText;
    ppDBText370: TppDBText;
    ppDBText371: TppDBText;
    ppDBText372: TppDBText;
    ppDBText373: TppDBText;
    ppDBText374: TppDBText;
    ppLabel606: TppLabel;
    ppDBText375: TppDBText;
    ppLabel607: TppLabel;
    ppDBText376: TppDBText;
    ppLabel608: TppLabel;
    ppDBText377: TppDBText;
    ppLabel609: TppLabel;
    ppLabel610: TppLabel;
    ppLabel611: TppLabel;
    ppLabel612: TppLabel;
    ppLabel613: TppLabel;
    ppLabel614: TppLabel;
    ppLabel615: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppDBText378: TppDBText;
    ppDBText379: TppDBText;
    ppDBText380: TppDBText;
    ppDBText381: TppDBText;
    ppDBText382: TppDBText;
    ppDBText383: TppDBText;
    ppDBText384: TppDBText;
    ppFooterBand13: TppFooterBand;
    ppLabel616: TppLabel;
    ppLabel617: TppLabel;
    ppDBText385: TppDBText;
    ppLabel618: TppLabel;
    ppLabel619: TppLabel;
    ppDBText386: TppDBText;
    ppDBText387: TppDBText;
    ppDBText388: TppDBText;
    ppLabel620: TppLabel;
    ppDBText389: TppDBText;
    ppLabel621: TppLabel;
    ppDBText390: TppDBText;
    ppLabel622: TppLabel;
    ppDBText391: TppDBText;
    ppLabel623: TppLabel;
    ppDBText392: TppDBText;
    ppLabel624: TppLabel;
    ppLine81: TppLine;
    ppLabel625: TppLabel;
    ppLine82: TppLine;
    ppLabel626: TppLabel;
    ppLabel627: TppLabel;
    ppLabel628: TppLabel;
    ppLabel629: TppLabel;
    ppLabel630: TppLabel;
    ppLabel631: TppLabel;
    ppLabel632: TppLabel;
    ppLabel633: TppLabel;
    ppLabel634: TppLabel;
    ppLabel635: TppLabel;
    ppLabel636: TppLabel;
    ppLabel637: TppLabel;
    ppLabel638: TppLabel;
    ppLabel639: TppLabel;
    ppLabel640: TppLabel;
    ppLabel641: TppLabel;
    ppDBText393: TppDBText;
    raCodeModule13: TraCodeModule;
    ppParameterList13: TppParameterList;
    qryItensVndPRECO_CUSTO_PRODUTO: TFMTBCDField;
    cdsItensOrcPRECO_CUSTO_PRODUTO: TFMTBCDField;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLine85: TppLine;
    ppDBText394: TppDBText;
    rptOrc_E: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppLabel642: TppLabel;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLabel643: TppLabel;
    ppLabel644: TppLabel;
    ppLabel645: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppLine88: TppLine;
    ppLabel646: TppLabel;
    ppLabel647: TppLabel;
    ppLabel648: TppLabel;
    ppLabel649: TppLabel;
    ppLabel650: TppLabel;
    ppLabel651: TppLabel;
    ppLine89: TppLine;
    ppLabel652: TppLabel;
    ppLabel653: TppLabel;
    ppLabel654: TppLabel;
    ppLabel655: TppLabel;
    ppLabel656: TppLabel;
    ppLabel657: TppLabel;
    ppLabel658: TppLabel;
    ppLabel659: TppLabel;
    ppLabel660: TppLabel;
    ppLabel661: TppLabel;
    ppDBText395: TppDBText;
    ppDBText396: TppDBText;
    ppDBText397: TppDBText;
    ppDBText398: TppDBText;
    ppDBText399: TppDBText;
    ppDBText400: TppDBText;
    ppDBText401: TppDBText;
    ppDBText402: TppDBText;
    ppDBText403: TppDBText;
    ppDBText404: TppDBText;
    ppDBText405: TppDBText;
    ppDBText406: TppDBText;
    ppDBText407: TppDBText;
    ppLabel662: TppLabel;
    ppDBText408: TppDBText;
    ppLabel663: TppLabel;
    ppDBText409: TppDBText;
    ppLabel664: TppLabel;
    ppDBText410: TppDBText;
    ppLabel665: TppLabel;
    ppLabel666: TppLabel;
    ppLabel667: TppLabel;
    ppLabel668: TppLabel;
    ppLabel669: TppLabel;
    ppLabel670: TppLabel;
    ppLabel671: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppDBText411: TppDBText;
    ppDBText412: TppDBText;
    ppDBText413: TppDBText;
    ppDBText414: TppDBText;
    ppDBText415: TppDBText;
    ppDBText416: TppDBText;
    ppDBText417: TppDBText;
    ppFooterBand14: TppFooterBand;
    ppLabel672: TppLabel;
    ppLabel673: TppLabel;
    ppDBText418: TppDBText;
    ppLabel674: TppLabel;
    ppLabel675: TppLabel;
    ppDBText419: TppDBText;
    ppDBText420: TppDBText;
    ppDBText421: TppDBText;
    ppLabel676: TppLabel;
    ppDBText422: TppDBText;
    ppLabel677: TppLabel;
    ppDBText423: TppDBText;
    ppLabel678: TppLabel;
    ppDBText424: TppDBText;
    ppLabel679: TppLabel;
    ppDBText425: TppDBText;
    ppLabel680: TppLabel;
    ppLine90: TppLine;
    ppLabel681: TppLabel;
    ppLine91: TppLine;
    ppLabel682: TppLabel;
    ppLabel683: TppLabel;
    ppLabel684: TppLabel;
    ppLabel685: TppLabel;
    ppLabel686: TppLabel;
    ppLabel687: TppLabel;
    ppLabel688: TppLabel;
    ppLabel689: TppLabel;
    ppLabel690: TppLabel;
    ppLabel691: TppLabel;
    ppLabel692: TppLabel;
    ppLabel693: TppLabel;
    ppLabel694: TppLabel;
    ppLabel695: TppLabel;
    ppLabel696: TppLabel;
    ppLabel697: TppLabel;
    ppDBText426: TppDBText;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppDBText427: TppDBText;
    raCodeModule14: TraCodeModule;
    ppParameterList14: TppParameterList;
    ppLabel698: TppLabel;
    ppLabel699: TppLabel;
    ppDBText429: TppDBText;
    ppLine95: TppLine;
    rptOrc_B: TppReport;
    ppDetailBand15: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppTitleBand1: TppTitleBand;
    ppDBText428: TppDBText;
    ppDBText430: TppDBText;
    ppDBText431: TppDBText;
    ppLabel700: TppLabel;
    ppLabel701: TppLabel;
    ppLabel702: TppLabel;
    ppDBText432: TppDBText;
    ppLabel703: TppLabel;
    ppDBText433: TppDBText;
    ppLabel704: TppLabel;
    ppDBText434: TppDBText;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLabel705: TppLabel;
    ppLabel706: TppLabel;
    ppLabel707: TppLabel;
    ppLabel708: TppLabel;
    ppLabel709: TppLabel;
    ppLabel710: TppLabel;
    ppDBText435: TppDBText;
    ppDBText436: TppDBText;
    ppDBText437: TppDBText;
    ppDBText438: TppDBText;
    ppDBText439: TppDBText;
    ppLine98: TppLine;
    ppParameterList15: TppParameterList;
    ppLabel711: TppLabel;
    ppLabel712: TppLabel;
    ppLabel713: TppLabel;
    ppLabel714: TppLabel;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLabel715: TppLabel;
    ppSystemVariable14: TppSystemVariable;
    ppLabel716: TppLabel;
    ppDBText440: TppDBText;
    ppLabel717: TppLabel;
    ppDBText441: TppDBText;
    rptOrc_F: TppReport;
    ppHeaderBand15: TppHeaderBand;
    ppDetailBand16: TppDetailBand;
    ppFooterBand15: TppFooterBand;
    ppLabel725: TppLabel;
    ppLabel718: TppLabel;
    ppLabel719: TppLabel;
    ppLabel720: TppLabel;
    ppLabel721: TppLabel;
    ppLabel722: TppLabel;
    ppLabel723: TppLabel;
    ppLabel726: TppLabel;
    ppLabel727: TppLabel;
    ppLabel728: TppLabel;
    ppLabel729: TppLabel;
    ppLabel730: TppLabel;
    ppLabel731: TppLabel;
    ppLabel732: TppLabel;
    ppLabel733: TppLabel;
    ppLabel734: TppLabel;
    ppLabel735: TppLabel;
    ppDBText442: TppDBText;
    ppDBText443: TppDBText;
    ppLabel724: TppLabel;
    ppDBText444: TppDBText;
    ppDBText445: TppDBText;
    ppDBText446: TppDBText;
    ppLabel736: TppLabel;
    ppLabel737: TppLabel;
    ppLabel738: TppLabel;
    ppLabel739: TppLabel;
    ppLabel740: TppLabel;
    ppLabel741: TppLabel;
    ppDBText447: TppDBText;
    ppLabel742: TppLabel;
    ppDBText448: TppDBText;
    ppLabel743: TppLabel;
    ppDBText449: TppDBText;
    ppDBText450: TppDBText;
    qryVendaCODIGO_VENDA: TIntegerField;
    qryVendaVENDEDOR_VENDA: TIntegerField;
    qryVendaPARCEIRO_VENDA: TIntegerField;
    qryVendaCLIENTE_VENDA: TIntegerField;
    qryVendaPROPRIEDADE_VENDA: TIntegerField;
    qryVendaNOMECLIENTE_VENDA: TStringField;
    qryVendaDATA_VENDA: TDateField;
    qryVendaEXCLUSAO_VENDA: TDateField;
    qryVendaHORA_VENDA: TStringField;
    qryVendaFATURA_VENDA: TFMTBCDField;
    qryVendaDESCONTO_VENDA: TFMTBCDField;
    qryVendaDESCON_ESP_VENDA: TFMTBCDField;
    qryVendaCPAGAMENTO_VENDA: TFMTBCDField;
    qryVendaCHAVE_VENDA: TStringField;
    qryVendaCAIXA_VENDA: TFMTBCDField;
    qryVendaTIPO_PRECO_VENDA: TStringField;
    qryVendaCFOP_VENDA: TStringField;
    qryVendaNOTAFISCAL_VENDA: TIntegerField;
    qryVendaSERIE_VENDA: TStringField;
    qryVendaCONFIRMA_VENDA: TStringField;
    qryVendaEMISSAO_VENDA: TDateField;
    qryVendaDATASAIDA_VENDA: TDateField;
    qryVendaHORASAIDA_VENDA: TStringField;
    qryVendaVALORNOTA_VENDA: TFMTBCDField;
    qryVendaBASEICMS_VENDA: TFMTBCDField;
    qryVendaICMS_VENDA: TFMTBCDField;
    qryVendaBASEICMSSB_VENDA: TFMTBCDField;
    qryVendaICMSSB_VENDA: TFMTBCDField;
    qryVendaIPI_VENDA: TFMTBCDField;
    qryVendaTRANSPORTA_VENDA: TIntegerField;
    qryVendaPESOBRUTO_VENDA: TFMTBCDField;
    qryVendaPESOLIQUIDO_VENDA: TFMTBCDField;
    qryVendaOBSERVACAO_VENDA: TStringField;
    qryVendaPARCELAS_VENDA: TIntegerField;
    qryVendaVALOR01_VENDA: TFMTBCDField;
    qryVendaVALOR02_VENDA: TFMTBCDField;
    qryVendaVALOR03_VENDA: TFMTBCDField;
    qryVendaVALOR04_VENDA: TFMTBCDField;
    qryVendaVALOR05_VENDA: TFMTBCDField;
    qryVendaVALOR06_VENDA: TFMTBCDField;
    qryVendaVALOR07_VENDA: TFMTBCDField;
    qryVendaVALOR08_VENDA: TFMTBCDField;
    qryVendaVALOR09_VENDA: TFMTBCDField;
    qryVendaVALOR10_VENDA: TFMTBCDField;
    qryVendaVALOR11_VENDA: TFMTBCDField;
    qryVendaVALOR12_VENDA: TFMTBCDField;
    qryVendaVALOR13_VENDA: TFMTBCDField;
    qryVendaVALOR14_VENDA: TFMTBCDField;
    qryVendaVALOR15_VENDA: TFMTBCDField;
    qryVendaVENCIMEN01_VENDA: TDateField;
    qryVendaVENCIMEN02_VENDA: TDateField;
    qryVendaVENCIMEN03_VENDA: TDateField;
    qryVendaVENCIMEN04_VENDA: TDateField;
    qryVendaVENCIMEN05_VENDA: TDateField;
    qryVendaVENCIMEN06_VENDA: TDateField;
    qryVendaVENCIMEN07_VENDA: TDateField;
    qryVendaVENCIMEN08_VENDA: TDateField;
    qryVendaVENCIMEN09_VENDA: TDateField;
    qryVendaVENCIMEN10_VENDA: TDateField;
    qryVendaVENCIMEN11_VENDA: TDateField;
    qryVendaVENCIMEN12_VENDA: TDateField;
    qryVendaVENCIMEN13_VENDA: TDateField;
    qryVendaVENCIMEN14_VENDA: TDateField;
    qryVendaVENCIMEN15_VENDA: TDateField;
    qryVendaCOMISSAO_VENDA: TFMTBCDField;
    qryVendaTIPO_VENDA: TStringField;
    qryVendaTIPO1_VENDA: TStringField;
    qryVendaDEVOLVE_VENDA: TStringField;
    qryVendaENTREGA_VENDA: TStringField;
    qryVendaTROCO_VENDA: TFMTBCDField;
    qryVendaFRETE_VENDA: TFMTBCDField;
    qryVendaSEGURO_VENDA: TFMTBCDField;
    qryVendaOUTROS_VENDA: TFMTBCDField;
    qryVendaROMANEIO_VENDA: TIntegerField;
    qryVendaPLACASAIDA_VENDA: TStringField;
    qryVendaESTADOSAIDA_VENDA: TStringField;
    qryVendaNRFATURA_VENDA: TIntegerField;
    qryVendaAUTONOMO_VENDA: TStringField;
    qryVendaEXPORTADO_VENDA: TStringField;
    qryVendaTIPO_DOC_VENDA: TStringField;
    qryVendaINFOADICIONA_VENDA: TStringField;
    qryVendaMACHO_4_VENDA: TIntegerField;
    qryVendaMACHO_4_12_VENDA: TIntegerField;
    qryVendaMACHO_12_24_VENDA: TIntegerField;
    qryVendaMACHO_24_36_VENDA: TIntegerField;
    qryVendaMACHO_M36_VENDA: TIntegerField;
    qryVendaFEMEA_4_VENDA: TIntegerField;
    qryVendaFEMEA_4_12_VENDA: TIntegerField;
    qryVendaFEMEA_12_24_VENDA: TIntegerField;
    qryVendaFEMEA_24_36_VENDA: TIntegerField;
    qryVendaFEMEA_M36_VENDA: TIntegerField;
    qryVendaBUFALOS_VENDA: TIntegerField;
    qryVendaCAPRINOS_VENDA: TIntegerField;
    qryVendaOVINOS_VENDA: TIntegerField;
    qryVendaSUINOS_VENDA: TIntegerField;
    qryVendaTROCA_VENDA: TIntegerField;
    qryVendaOS_VENDA: TIntegerField;
    qryVendaCNPJCLIENTE_VENDA: TStringField;
    qryVendaRGCLIENTE_VENDA: TStringField;
    qryVendaENDCLIENTE_VENDA: TStringField;
    qryVendaBAICLIENTE_VENDA: TStringField;
    qryVendaCIDCLIENTE_VENDA: TStringField;
    qryVendaESTCLIENTE_VENDA: TStringField;
    qryVendaCEPCLIENTE_VENDA: TStringField;
    qryVendaFONECLIENTE_VENDA: TStringField;
    qryVendaCARNE_VENDA: TStringField;
    qryVendaUSUARIO_VENDA: TStringField;
    qryVendaUSUALTERA_VENDA: TStringField;
    qryVendaCOD_EMPRESA: TIntegerField;
    qryVendaOBS1: TStringField;
    qryVendaOBS2: TStringField;
    qryVendaOBS3: TStringField;
    qryVendaOBS4: TStringField;
    qryVendaVALOR_BRUTO: TFMTBCDField;
    qryVendaDESC_PORC: TFMTBCDField;
    qryVendaCGC_EMP: TStringField;
    qryVendaINSCRICAO_EMP: TStringField;
    qryVendaEMPRESA: TStringField;
    qryVendaEND_EMPRESA: TStringField;
    qryVendaCIDADE_EMP: TStringField;
    qryVendaFONE_EMP: TStringField;
    qryVendaNOME_VENDEDOR: TStringField;
    qryVendaFORMA_PAGAMENTO: TStringField;
    qryVendaDESCRICAO_PRO: TStringField;
    qryVendaBAIRRO_PRO: TStringField;
    qryVendaCEP_PRO: TStringField;
    qryVendaCIDADE_PRO: TStringField;
    qryVendaFONE_PRO: TStringField;
    qryVendaESTADO_PRO: TStringField;
    qryVendaINSCEST_PRO: TStringField;
    qryVendaCODIGO_CLIENTE: TIntegerField;
    qryVendaNOME_CLIENTE: TStringField;
    qryVendaFANTASIA_CLIENTE: TStringField;
    qryVendaCNPJ_CLIENTE: TStringField;
    qryVendaNOME_CIDADE: TStringField;
    qryVendaCOB_NOME_CIDADE: TStringField;
    qryVendaCOB_ENDERECO_CLIENTE: TStringField;
    qryVendaBANCO1_CLIENTE: TStringField;
    qryVendaENDERECO_CLIENTE: TStringField;
    qryVendaBAIRRO_CLIENTE: TStringField;
    qryVendaCEP_CLIENTE: TStringField;
    qryVendaCIDADE_CLIENTE: TIntegerField;
    qryVendaTELEFONE_CLIENTE: TStringField;
    qryVendaESTADO_CLIENTE: TStringField;
    qryVendaINSCRICAO_CLIENTE: TStringField;
    cdsOrcamentoCODIGO_VENDA: TIntegerField;
    cdsOrcamentoVENDEDOR_VENDA: TIntegerField;
    cdsOrcamentoPARCEIRO_VENDA: TIntegerField;
    cdsOrcamentoCLIENTE_VENDA: TIntegerField;
    cdsOrcamentoPROPRIEDADE_VENDA: TIntegerField;
    cdsOrcamentoNOMECLIENTE_VENDA: TStringField;
    cdsOrcamentoDATA_VENDA: TDateField;
    cdsOrcamentoEXCLUSAO_VENDA: TDateField;
    cdsOrcamentoHORA_VENDA: TStringField;
    cdsOrcamentoFATURA_VENDA: TFMTBCDField;
    cdsOrcamentoDESCONTO_VENDA: TFMTBCDField;
    cdsOrcamentoDESCON_ESP_VENDA: TFMTBCDField;
    cdsOrcamentoCPAGAMENTO_VENDA: TFMTBCDField;
    cdsOrcamentoCHAVE_VENDA: TStringField;
    cdsOrcamentoCAIXA_VENDA: TFMTBCDField;
    cdsOrcamentoTIPO_PRECO_VENDA: TStringField;
    cdsOrcamentoCFOP_VENDA: TStringField;
    cdsOrcamentoNOTAFISCAL_VENDA: TIntegerField;
    cdsOrcamentoSERIE_VENDA: TStringField;
    cdsOrcamentoCONFIRMA_VENDA: TStringField;
    cdsOrcamentoEMISSAO_VENDA: TDateField;
    cdsOrcamentoDATASAIDA_VENDA: TDateField;
    cdsOrcamentoHORASAIDA_VENDA: TStringField;
    cdsOrcamentoVALORNOTA_VENDA: TFMTBCDField;
    cdsOrcamentoBASEICMS_VENDA: TFMTBCDField;
    cdsOrcamentoICMS_VENDA: TFMTBCDField;
    cdsOrcamentoBASEICMSSB_VENDA: TFMTBCDField;
    cdsOrcamentoICMSSB_VENDA: TFMTBCDField;
    cdsOrcamentoIPI_VENDA: TFMTBCDField;
    cdsOrcamentoTRANSPORTA_VENDA: TIntegerField;
    cdsOrcamentoPESOBRUTO_VENDA: TFMTBCDField;
    cdsOrcamentoPESOLIQUIDO_VENDA: TFMTBCDField;
    cdsOrcamentoOBSERVACAO_VENDA: TStringField;
    cdsOrcamentoPARCELAS_VENDA: TIntegerField;
    cdsOrcamentoVALOR01_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR02_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR03_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR04_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR05_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR06_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR07_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR08_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR09_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR10_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR11_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR12_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR13_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR14_VENDA: TFMTBCDField;
    cdsOrcamentoVALOR15_VENDA: TFMTBCDField;
    cdsOrcamentoVENCIMEN01_VENDA: TDateField;
    cdsOrcamentoVENCIMEN02_VENDA: TDateField;
    cdsOrcamentoVENCIMEN03_VENDA: TDateField;
    cdsOrcamentoVENCIMEN04_VENDA: TDateField;
    cdsOrcamentoVENCIMEN05_VENDA: TDateField;
    cdsOrcamentoVENCIMEN06_VENDA: TDateField;
    cdsOrcamentoVENCIMEN07_VENDA: TDateField;
    cdsOrcamentoVENCIMEN08_VENDA: TDateField;
    cdsOrcamentoVENCIMEN09_VENDA: TDateField;
    cdsOrcamentoVENCIMEN10_VENDA: TDateField;
    cdsOrcamentoVENCIMEN11_VENDA: TDateField;
    cdsOrcamentoVENCIMEN12_VENDA: TDateField;
    cdsOrcamentoVENCIMEN13_VENDA: TDateField;
    cdsOrcamentoVENCIMEN14_VENDA: TDateField;
    cdsOrcamentoVENCIMEN15_VENDA: TDateField;
    cdsOrcamentoCOMISSAO_VENDA: TFMTBCDField;
    cdsOrcamentoTIPO_VENDA: TStringField;
    cdsOrcamentoTIPO1_VENDA: TStringField;
    cdsOrcamentoDEVOLVE_VENDA: TStringField;
    cdsOrcamentoENTREGA_VENDA: TStringField;
    cdsOrcamentoTROCO_VENDA: TFMTBCDField;
    cdsOrcamentoFRETE_VENDA: TFMTBCDField;
    cdsOrcamentoSEGURO_VENDA: TFMTBCDField;
    cdsOrcamentoOUTROS_VENDA: TFMTBCDField;
    cdsOrcamentoROMANEIO_VENDA: TIntegerField;
    cdsOrcamentoPLACASAIDA_VENDA: TStringField;
    cdsOrcamentoESTADOSAIDA_VENDA: TStringField;
    cdsOrcamentoNRFATURA_VENDA: TIntegerField;
    cdsOrcamentoAUTONOMO_VENDA: TStringField;
    cdsOrcamentoEXPORTADO_VENDA: TStringField;
    cdsOrcamentoTIPO_DOC_VENDA: TStringField;
    cdsOrcamentoINFOADICIONA_VENDA: TStringField;
    cdsOrcamentoMACHO_4_VENDA: TIntegerField;
    cdsOrcamentoMACHO_4_12_VENDA: TIntegerField;
    cdsOrcamentoMACHO_12_24_VENDA: TIntegerField;
    cdsOrcamentoMACHO_24_36_VENDA: TIntegerField;
    cdsOrcamentoMACHO_M36_VENDA: TIntegerField;
    cdsOrcamentoFEMEA_4_VENDA: TIntegerField;
    cdsOrcamentoFEMEA_4_12_VENDA: TIntegerField;
    cdsOrcamentoFEMEA_12_24_VENDA: TIntegerField;
    cdsOrcamentoFEMEA_24_36_VENDA: TIntegerField;
    cdsOrcamentoFEMEA_M36_VENDA: TIntegerField;
    cdsOrcamentoBUFALOS_VENDA: TIntegerField;
    cdsOrcamentoCAPRINOS_VENDA: TIntegerField;
    cdsOrcamentoOVINOS_VENDA: TIntegerField;
    cdsOrcamentoSUINOS_VENDA: TIntegerField;
    cdsOrcamentoTROCA_VENDA: TIntegerField;
    cdsOrcamentoOS_VENDA: TIntegerField;
    cdsOrcamentoCNPJCLIENTE_VENDA: TStringField;
    cdsOrcamentoRGCLIENTE_VENDA: TStringField;
    cdsOrcamentoENDCLIENTE_VENDA: TStringField;
    cdsOrcamentoBAICLIENTE_VENDA: TStringField;
    cdsOrcamentoCIDCLIENTE_VENDA: TStringField;
    cdsOrcamentoESTCLIENTE_VENDA: TStringField;
    cdsOrcamentoCEPCLIENTE_VENDA: TStringField;
    cdsOrcamentoFONECLIENTE_VENDA: TStringField;
    cdsOrcamentoCARNE_VENDA: TStringField;
    cdsOrcamentoUSUARIO_VENDA: TStringField;
    cdsOrcamentoUSUALTERA_VENDA: TStringField;
    cdsOrcamentoCOD_EMPRESA: TIntegerField;
    cdsOrcamentoOBS1: TStringField;
    cdsOrcamentoOBS2: TStringField;
    cdsOrcamentoOBS3: TStringField;
    cdsOrcamentoOBS4: TStringField;
    cdsOrcamentoVALOR_BRUTO: TFMTBCDField;
    cdsOrcamentoDESC_PORC: TFMTBCDField;
    cdsOrcamentoCGC_EMP: TStringField;
    cdsOrcamentoINSCRICAO_EMP: TStringField;
    cdsOrcamentoEMPRESA: TStringField;
    cdsOrcamentoEND_EMPRESA: TStringField;
    cdsOrcamentoCIDADE_EMP: TStringField;
    cdsOrcamentoFONE_EMP: TStringField;
    cdsOrcamentoNOME_VENDEDOR: TStringField;
    cdsOrcamentoFORMA_PAGAMENTO: TStringField;
    cdsOrcamentoDESCRICAO_PRO: TStringField;
    cdsOrcamentoBAIRRO_PRO: TStringField;
    cdsOrcamentoCEP_PRO: TStringField;
    cdsOrcamentoCIDADE_PRO: TStringField;
    cdsOrcamentoFONE_PRO: TStringField;
    cdsOrcamentoESTADO_PRO: TStringField;
    cdsOrcamentoINSCEST_PRO: TStringField;
    cdsOrcamentoCODIGO_CLIENTE: TIntegerField;
    cdsOrcamentoNOME_CLIENTE: TStringField;
    cdsOrcamentoFANTASIA_CLIENTE: TStringField;
    cdsOrcamentoCNPJ_CLIENTE: TStringField;
    cdsOrcamentoNOME_CIDADE: TStringField;
    cdsOrcamentoCOB_NOME_CIDADE: TStringField;
    cdsOrcamentoCOB_ENDERECO_CLIENTE: TStringField;
    cdsOrcamentoBANCO1_CLIENTE: TStringField;
    cdsOrcamentoENDERECO_CLIENTE: TStringField;
    cdsOrcamentoBAIRRO_CLIENTE: TStringField;
    cdsOrcamentoCEP_CLIENTE: TStringField;
    cdsOrcamentoCIDADE_CLIENTE: TIntegerField;
    cdsOrcamentoTELEFONE_CLIENTE: TStringField;
    cdsOrcamentoESTADO_CLIENTE: TStringField;
    cdsOrcamentoINSCRICAO_CLIENTE: TStringField;
    ppArchiveReader1: TppArchiveReader;
    qryItensVndFABRICA_IVENDAS: TStringField;
    qryItensVndCFOP: TStringField;
    cdsItensOrcCFOP: TStringField;
    cdsItensOrcFABRICA_IVENDAS: TStringField;
    qryItensVndFABRICA_PRODUTO: TIntegerField;
    cdsItensOrcFABRICA_PRODUTO: TIntegerField;
    qryBalcao: TSQLQuery;
    qryBalcaoCODIGO_BALCAO: TIntegerField;
    qryBalcaoVENDEDOR_BALCAO: TIntegerField;
    qryBalcaoPARCEIRO_BALCAO: TIntegerField;
    qryBalcaoCLIENTE_BALCAO: TIntegerField;
    qryBalcaoPROPRIEDADE_BALCAO: TIntegerField;
    qryBalcaoNOMECLIENTE_BALCAO: TStringField;
    qryBalcaoDATA_BALCAO: TDateField;
    qryBalcaoEXCLUSAO_BALCAO: TDateField;
    qryBalcaoHORA_BALCAO: TStringField;
    qryBalcaoFATURA_BALCAO: TFMTBCDField;
    qryBalcaoDESCONTO_BALCAO: TFMTBCDField;
    qryBalcaoDESCON_ESP_BALCAO: TFMTBCDField;
    qryBalcaoCPAGAMENTO_BALCAO: TFMTBCDField;
    qryBalcaoCHAVE_BALCAO: TStringField;
    qryBalcaoCAIXA_BALCAO: TFMTBCDField;
    qryBalcaoTIPO_PRECO_BALCAO: TStringField;
    qryBalcaoCFOP_BALCAO: TStringField;
    qryBalcaoNOTAFISCAL_BALCAO: TIntegerField;
    qryBalcaoSERIE_BALCAO: TStringField;
    qryBalcaoCONFIRMA_BALCAO: TStringField;
    qryBalcaoEMISSAO_BALCAO: TDateField;
    qryBalcaoDATASAIDA_BALCAO: TDateField;
    qryBalcaoHORASAIDA_BALCAO: TStringField;
    qryBalcaoVALORNOTA_BALCAO: TFMTBCDField;
    qryBalcaoBASEICMS_BALCAO: TFMTBCDField;
    qryBalcaoICMS_BALCAO: TFMTBCDField;
    qryBalcaoBASEICMSSB_BALCAO: TFMTBCDField;
    qryBalcaoICMSSB_BALCAO: TFMTBCDField;
    qryBalcaoIPI_BALCAO: TFMTBCDField;
    qryBalcaoTRANSPORTA_BALCAO: TIntegerField;
    qryBalcaoPESOBRUTO_BALCAO: TFMTBCDField;
    qryBalcaoPESOLIQUIDO_BALCAO: TFMTBCDField;
    qryBalcaoOBSERVACAO_BALCAO: TStringField;
    qryBalcaoPARCELAS_BALCAO: TIntegerField;
    qryBalcaoVALOR01_BALCAO: TFMTBCDField;
    qryBalcaoVALOR02_BALCAO: TFMTBCDField;
    qryBalcaoVALOR03_BALCAO: TFMTBCDField;
    qryBalcaoVALOR04_BALCAO: TFMTBCDField;
    qryBalcaoVALOR05_BALCAO: TFMTBCDField;
    qryBalcaoVALOR06_BALCAO: TFMTBCDField;
    qryBalcaoVALOR07_BALCAO: TFMTBCDField;
    qryBalcaoVALOR08_BALCAO: TFMTBCDField;
    qryBalcaoVALOR09_BALCAO: TFMTBCDField;
    qryBalcaoVALOR10_BALCAO: TFMTBCDField;
    qryBalcaoVALOR11_BALCAO: TFMTBCDField;
    qryBalcaoVALOR12_BALCAO: TFMTBCDField;
    qryBalcaoVALOR13_BALCAO: TFMTBCDField;
    qryBalcaoVALOR14_BALCAO: TFMTBCDField;
    qryBalcaoVALOR15_BALCAO: TFMTBCDField;
    qryBalcaoVENCIMEN01_BALCAO: TDateField;
    qryBalcaoVENCIMEN02_BALCAO: TDateField;
    qryBalcaoVENCIMEN03_BALCAO: TDateField;
    qryBalcaoVENCIMEN04_BALCAO: TDateField;
    qryBalcaoVENCIMEN05_BALCAO: TDateField;
    qryBalcaoVENCIMEN06_BALCAO: TDateField;
    qryBalcaoVENCIMEN07_BALCAO: TDateField;
    qryBalcaoVENCIMEN08_BALCAO: TDateField;
    qryBalcaoVENCIMEN09_BALCAO: TDateField;
    qryBalcaoVENCIMEN10_BALCAO: TDateField;
    qryBalcaoVENCIMEN11_BALCAO: TDateField;
    qryBalcaoVENCIMEN12_BALCAO: TDateField;
    qryBalcaoVENCIMEN13_BALCAO: TDateField;
    qryBalcaoVENCIMEN14_BALCAO: TDateField;
    qryBalcaoVENCIMEN15_BALCAO: TDateField;
    qryBalcaoCOMISSAO_BALCAO: TFMTBCDField;
    qryBalcaoTIPO_BALCAO: TStringField;
    qryBalcaoTIPO1_BALCAO: TStringField;
    qryBalcaoDEVOLVE_BALCAO: TStringField;
    qryBalcaoENTREGA_BALCAO: TStringField;
    qryBalcaoTROCO_BALCAO: TFMTBCDField;
    qryBalcaoFRETE_BALCAO: TFMTBCDField;
    qryBalcaoSEGURO_BALCAO: TFMTBCDField;
    qryBalcaoOUTROS_BALCAO: TFMTBCDField;
    qryBalcaoROMANEIO_BALCAO: TIntegerField;
    qryBalcaoPLACASAIDA_BALCAO: TStringField;
    qryBalcaoESTADOSAIDA_BALCAO: TStringField;
    qryBalcaoNRFATURA_BALCAO: TIntegerField;
    qryBalcaoAUTONOMO_BALCAO: TStringField;
    qryBalcaoEXPORTADO_BALCAO: TStringField;
    qryBalcaoTIPO_DOC_BALCAO: TStringField;
    qryBalcaoINFOADICIONA_BALCAO: TStringField;
    qryBalcaoMACHO_4_BALCAO: TIntegerField;
    qryBalcaoMACHO_4_12_BALCAO: TIntegerField;
    qryBalcaoMACHO_12_24_BALCAO: TIntegerField;
    qryBalcaoMACHO_24_36_BALCAO: TIntegerField;
    qryBalcaoMACHO_M36_BALCAO: TIntegerField;
    qryBalcaoFEMEA_4_BALCAO: TIntegerField;
    qryBalcaoFEMEA_4_12_BALCAO: TIntegerField;
    qryBalcaoFEMEA_12_24_BALCAO: TIntegerField;
    qryBalcaoFEMEA_24_36_BALCAO: TIntegerField;
    qryBalcaoFEMEA_M36_BALCAO: TIntegerField;
    qryBalcaoBUFALOS_BALCAO: TIntegerField;
    qryBalcaoCAPRINOS_BALCAO: TIntegerField;
    qryBalcaoOVINOS_BALCAO: TIntegerField;
    qryBalcaoSUINOS_BALCAO: TIntegerField;
    qryBalcaoTROCA_BALCAO: TIntegerField;
    qryBalcaoOS_BALCAO: TIntegerField;
    qryBalcaoCNPJCLIENTE_BALCAO: TStringField;
    qryBalcaoRGCLIENTE_BALCAO: TStringField;
    qryBalcaoENDCLIENTE_BALCAO: TStringField;
    qryBalcaoBAICLIENTE_BALCAO: TStringField;
    qryBalcaoCIDCLIENTE_BALCAO: TStringField;
    qryBalcaoESTCLIENTE_BALCAO: TStringField;
    qryBalcaoCEPCLIENTE_BALCAO: TStringField;
    qryBalcaoFONECLIENTE_BALCAO: TStringField;
    qryBalcaoCARNE_BALCAO: TStringField;
    qryBalcaoUSUARIO_BALCAO: TStringField;
    qryBalcaoUSUALTERA_BALCAO: TStringField;
    qryBalcaoCOD_EMPRESA: TIntegerField;
    qryBalcaoOBS1: TStringField;
    qryBalcaoOBS2: TStringField;
    qryBalcaoOBS3: TStringField;
    qryBalcaoOBS4: TStringField;
    qryBalcaoNF_SERV: TIntegerField;
    qryBalcaoVALOR_BRUTO: TFMTBCDField;
    qryBalcaoDESC_PORC: TFMTBCDField;
    qryBalcaoCGC_EMP: TStringField;
    qryBalcaoINSCRICAO_EMP: TStringField;
    qryBalcaoEMPRESA: TStringField;
    qryBalcaoEND_EMPRESA: TStringField;
    qryBalcaoCIDADE_EMP: TStringField;
    qryBalcaoFONE_EMP: TStringField;
    qryBalcaoNOME_VENDEDOR: TStringField;
    qryBalcaoFORMA_PAGAMENTO: TStringField;
    qryBalcaoDESCRICAO_PRO: TStringField;
    qryBalcaoBAIRRO_PRO: TStringField;
    qryBalcaoCEP_PRO: TStringField;
    qryBalcaoCIDADE_PRO: TStringField;
    qryBalcaoFONE_PRO: TStringField;
    qryBalcaoESTADO_PRO: TStringField;
    qryBalcaoINSCEST_PRO: TStringField;
    qryBalcaoCODIGO_CLIENTE: TIntegerField;
    qryBalcaoNOME_CLIENTE: TStringField;
    qryBalcaoFANTASIA_CLIENTE: TStringField;
    qryBalcaoCNPJ_CLIENTE: TStringField;
    qryBalcaoNOME_CIDADE: TStringField;
    qryBalcaoCOB_NOME_CIDADE: TStringField;
    qryBalcaoCOB_ENDERECO_CLIENTE: TStringField;
    qryBalcaoBANCO1_CLIENTE: TStringField;
    qryBalcaoENDERECO_CLIENTE: TStringField;
    qryBalcaoBAIRRO_CLIENTE: TStringField;
    qryBalcaoCEP_CLIENTE: TStringField;
    qryBalcaoCIDADE_CLIENTE: TIntegerField;
    qryBalcaoTELEFONE_CLIENTE: TStringField;
    qryBalcaoESTADO_CLIENTE: TStringField;
    qryBalcaoINSCRICAO_CLIENTE: TStringField;
    qryItensBlc: TSQLQuery;
    qryItensBlcID_BALCAO_ITENS: TIntegerField;
    qryItensBlcCODIGO_IBALCAO: TIntegerField;
    qryItensBlcPRODUTO_IBALCAO: TIntegerField;
    qryItensBlcDESCRICAO_IBALCAO: TStringField;
    qryItensBlcVALORBRUTO_IBALCAO: TFMTBCDField;
    qryItensBlcQUANTIDADE_IBALCAO: TFMTBCDField;
    qryItensBlcGRADE_IBALCAO: TStringField;
    qryItensBlcPROMOCAO_IBALCAO: TStringField;
    qryItensBlcFABRICA_IBALCAO: TStringField;
    qryItensBlcSERIE_IBALCAO: TStringField;
    qryItensBlcDESCONTO_IBALCAO: TFMTBCDField;
    qryItensBlcICM_IBALCAO: TFMTBCDField;
    qryItensBlcIPI_IBALCAO: TFMTBCDField;
    qryItensBlcREDUTOR_IBALCAO: TFMTBCDField;
    qryItensBlcTRIBUTACAO_IBALCAO: TStringField;
    qryItensBlcFISCAL_IBALCAO: TStringField;
    qryItensBlcGARANTIA_IBALCAO: TStringField;
    qryItensBlcTECNICO_IBALCAO: TIntegerField;
    qryItensBlcALTURA_IBALCAO: TFMTBCDField;
    qryItensBlcLARGURA_IBALCAO: TFMTBCDField;
    qryItensBlcCOMPRIMENTO_VENDAS: TFMTBCDField;
    qryItensBlcQTDE_VENDAS: TIntegerField;
    qryItensBlcCOMPLEMENTO: TStringField;
    qryItensBlcCOD_EMPRESA: TIntegerField;
    qryItensBlcCLASSE_IBALCAO: TStringField;
    qryItensBlcCFOP: TStringField;
    qryItensBlcVALORTOTAL: TFMTBCDField;
    qryItensBlcFABRICA_PRODUTO: TIntegerField;
    qryItensBlcFABRICANTE_PRODUTO: TStringField;
    qryItensBlcUNIDADE_PRODUTO: TStringField;
    qryItensBlcPRECO_CUSTO_PRODUTO: TFMTBCDField;
    qryItensBlcCODIGO_GRADE: TStringField;
    procedure ppDBText32GetText(Sender: TObject; var Text: String);
    procedure ppDBText63GetText(Sender: TObject; var Text: String);
    procedure ppLabel69GetText(Sender: TObject; var Text: String);
    procedure ppLabel71GetText(Sender: TObject; var Text: String);
    procedure ppLabel73GetText(Sender: TObject; var Text: String);
    procedure ppLabel58GetText(Sender: TObject; var Text: String);
    procedure ppLabel74GetText(Sender: TObject; var Text: String);
    procedure ppLabel75GetText(Sender: TObject; var Text: String);
    procedure ppLabel76GetText(Sender: TObject; var Text: String);
    procedure ppLabel77GetText(Sender: TObject; var Text: String);
    procedure ppLabel78GetText(Sender: TObject; var Text: String);
    procedure ppLabel79GetText(Sender: TObject; var Text: String);
    procedure ppLabel80GetText(Sender: TObject; var Text: String);
    procedure ppLabel81GetText(Sender: TObject; var Text: String);
    procedure ppLabel82GetText(Sender: TObject; var Text: String);
    procedure ppLabel83GetText(Sender: TObject; var Text: String);
    procedure ppLabel84GetText(Sender: TObject; var Text: String);
    procedure ppLabel85GetText(Sender: TObject; var Text: String);
    procedure ppLabel86GetText(Sender: TObject; var Text: String);
    procedure ppLabel87GetText(Sender: TObject; var Text: String);
    procedure ppLabel88GetText(Sender: TObject; var Text: String);
    procedure DataModuleCreate(Sender: TObject);
    procedure ppLabel89GetText(Sender: TObject; var Text: String);
    procedure ppLabel90GetText(Sender: TObject; var Text: String);
    procedure ppLabel91GetText(Sender: TObject; var Text: String);
    procedure ppLabel292GetText(Sender: TObject; var Text: String);
    procedure ppLabel296GetText(Sender: TObject; var Text: String);
    procedure ppLabel297GetText(Sender: TObject; var Text: String);
    procedure ppLabel300GetText(Sender: TObject; var Text: String);
    procedure ppLabel301GetText(Sender: TObject; var Text: String);
    procedure ppLabel294GetText(Sender: TObject; var Text: String);
    procedure ppDBText191GetText(Sender: TObject; var Text: String);
    procedure ppLabel476GetText(Sender: TObject; var Text: String);
    procedure ppDBText270GetText(Sender: TObject; var Text: String);
    procedure ppDBText279GetText(Sender: TObject; var Text: String);
    procedure ppDBText310GetText(Sender: TObject; var Text: String);
    procedure ppDBText210GetText(Sender: TObject; var Text: String);
    procedure ppDBText360GetText(Sender: TObject; var Text: String);
    procedure ppDBText384GetText(Sender: TObject; var Text: String);
    procedure ppLabel615GetText(Sender: TObject; var Text: String);
    procedure ppDBText394GetText(Sender: TObject; var Text: String);
    procedure ppDBText428GetText(Sender: TObject; var Text: String);
    procedure ppLabel724GetText(Sender: TObject; var Text: String);
    procedure ppLabel725GetText(Sender: TObject; var Text: String);
    procedure ppLabel728GetText(Sender: TObject; var Text: String);
    procedure ppLabel729GetText(Sender: TObject; var Text: String);
    procedure ppLabel730GetText(Sender: TObject; var Text: String);
    procedure ppLabel731GetText(Sender: TObject; var Text: String);
    procedure ppLabel719GetText(Sender: TObject; var Text: String);
    procedure ppLabel718GetText(Sender: TObject; var Text: String);
    procedure ppLabel732GetText(Sender: TObject; var Text: String);
    procedure ppLabel733GetText(Sender: TObject; var Text: String);
    procedure ppLabel726GetText(Sender: TObject; var Text: String);
    procedure ppLabel727GetText(Sender: TObject; var Text: String);
    procedure ppLabel736GetText(Sender: TObject; var Text: String);
    procedure ppLabel737GetText(Sender: TObject; var Text: String);
    procedure ppLabel738GetText(Sender: TObject; var Text: String);
    procedure ppLabel739GetText(Sender: TObject; var Text: String);
    procedure ppLabel740GetText(Sender: TObject; var Text: String);
    procedure ppLabel720GetText(Sender: TObject; var Text: String);
    procedure ppLabel721GetText(Sender: TObject; var Text: String);
    procedure ppLabel734GetText(Sender: TObject; var Text: String);
    procedure ppLabel722GetText(Sender: TObject; var Text: String);
    procedure ppLabel723GetText(Sender: TObject; var Text: String);
    procedure ppLabel22GetText(Sender: TObject; var Text: String);
    procedure ppLabel526GetText(Sender: TObject; var Text: String);
    procedure ppLabel701GetText(Sender: TObject; var Text: String);
    procedure imprime(File1: String);
    procedure Carrega_data_sets(Serie: String; Cod_lancamento: Integer; Venda_balcao: Boolean = False; Fatura: Boolean = False);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmImpOrc: TdmImpOrc;
  Parametro: TParametros_Venda;

implementation

uses uGlobal, uDmPrincipal;

{$R *.dfm}

procedure TdmImpOrc.ppDBText32GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoEND_EMPRESA.Value + ' - ' + cdsOrcamentoCIDADE_EMP.Value;
end;

procedure TdmImpOrc.ppDBText63GetText(Sender: TObject; var Text: String);
begin
   Text := CidadeEmpresa1
end;

procedure TdmImpOrc.ppLabel69GetText(Sender: TObject; var Text: String);
begin
   Text := EstadoEmpresa1
end;

procedure TdmImpOrc.ppLabel71GetText(Sender: TObject; var Text: String);
begin
   Text := CepEmpresa1
end;

procedure TdmImpOrc.ppLabel73GetText(Sender: TObject; var Text: String);
begin
   Text := FoneEmpresa1;
end;

procedure TdmImpOrc.ppLabel58GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN01_VENDA.AsString + ' ' +  cdsOrcamentoVALOR01_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel74GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN02_VENDA.AsString + ' ' +  cdsOrcamentoVALOR02_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel75GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN03_VENDA.AsString + ' ' +  cdsOrcamentoVALOR03_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel76GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN04_VENDA.AsString + ' ' +  cdsOrcamentoVALOR04_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel77GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN05_VENDA.AsString + ' ' +  cdsOrcamentoVALOR05_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel78GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN06_VENDA.AsString + ' ' +  cdsOrcamentoVALOR06_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel79GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN07_VENDA.AsString + ' ' +  cdsOrcamentoVALOR07_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel80GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN08_VENDA.AsString + ' ' +  cdsOrcamentoVALOR08_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel81GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN09_VENDA.AsString + ' ' +  cdsOrcamentoVALOR09_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel82GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN10_VENDA.AsString + ' ' +  cdsOrcamentoVALOR10_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel83GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN11_VENDA.AsString + ' ' +  cdsOrcamentoVALOR11_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel84GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN12_VENDA.AsString + ' ' +  cdsOrcamentoVALOR12_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel85GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN13_VENDA.AsString + ' ' +  cdsOrcamentoVALOR13_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel86GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN14_VENDA.AsString + ' ' +  cdsOrcamentoVALOR14_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel87GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoVENCIMEN15_VENDA.AsString + ' ' +  cdsOrcamentoVALOR15_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel88GetText(Sender: TObject; var Text: String);
begin
   Text := Parametro.Msn_linha(1);
end;

procedure TdmImpOrc.DataModuleCreate(Sender: TObject);
begin
   Parametro := TParametros_Venda.Create;
   Parametro.Carregar();

   cdsOrcamento.CreateDataSet;
   cdsOrcamento.Open;

   cdsItensOrc.CreateDataSet;
   cdsItensOrc.Open;
end;

procedure TdmImpOrc.ppLabel89GetText(Sender: TObject; var Text: String);
begin
   Text := Parametro.Msn_linha(2);
end;

procedure TdmImpOrc.ppLabel90GetText(Sender: TObject; var Text: String);
begin
   Text := Parametro.Msn_linha(3);
end;

procedure TdmImpOrc.ppLabel91GetText(Sender: TObject; var Text: String);
begin
   Text := Parametro.Msn_linha(4);
end;

procedure TdmImpOrc.ppLabel292GetText(Sender: TObject; var Text: String);
begin
   Text := 'PLANO 1: 1� 30 dias - ' + DateToStr(cdsOrcamentoDATA_VENDA.Value + 30);
end;

procedure TdmImpOrc.ppLabel296GetText(Sender: TObject; var Text: String);
begin
   Text := 'PLANO 2: 1� 20 dias - ' + DateToStr(cdsOrcamentoDATA_VENDA.Value + 20);
end;

procedure TdmImpOrc.ppLabel297GetText(Sender: TObject; var Text: String);
begin
   Text := '2� 40 dias - ' + DateToStr(cdsOrcamentoDATA_VENDA.Value + 40);
end;

procedure TdmImpOrc.ppLabel300GetText(Sender: TObject; var Text: String);
begin
   Text := 'PLANO 3: 1� 15 dias - ' + DateToStr(cdsOrcamentoDATA_VENDA.Value + 15);
end;

procedure TdmImpOrc.ppLabel301GetText(Sender: TObject; var Text: String);
begin
   Text := '2� 30 dias - ' + DateToStr(cdsOrcamentoDATA_VENDA.Value + 30);
end;

procedure TdmImpOrc.ppLabel294GetText(Sender: TObject; var Text: String);
begin
   Text := '3� 45 dias - ' + DateToStr(cdsOrcamentoDATA_VENDA.Value + 45);
end;

procedure TdmImpOrc.ppDBText191GetText(Sender: TObject; var Text: String);
begin
   Text := RazaoSocial1;
end;

procedure TdmImpOrc.ppLabel476GetText(Sender: TObject; var Text: String);
begin
   Text := 'Telefone: ' + cdsOrcamentoFONE_EMP.Value
end;

procedure TdmImpOrc.ppDBText270GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoENDERECO_CLIENTE.Value + ' - ' + cdsOrcamentoBAIRRO_CLIENTE.Value + ' - ' + cdsOrcamentoNOME_CIDADE.Value;
end;

procedure TdmImpOrc.ppDBText279GetText(Sender: TObject; var Text: String);
begin
   Text := Parametro.Msn_linha(1);
end;

procedure TdmImpOrc.ppDBText310GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoEND_EMPRESA.Value + ' - ' + cdsOrcamentoCIDADE_EMP.Value + ' * FONE: ' + cdsOrcamentoFONE_EMP.Value;
end;

procedure TdmImpOrc.ppDBText210GetText(Sender: TObject; var Text: String);
begin
   Text := FloatToStrF(cdsItensOrcVALORBRUTO_IVENDAS.asFloat + cdsItensOrcDESCONTO_IVENDAS.AsFloat,ffFixed,18,2);
end;

procedure TdmImpOrc.ppDBText360GetText(Sender: TObject; var Text: String);
begin
   if cdsItensOrcDESCONTO_IVENDAS.AsFloat > 0 then
      Text := FloatToStrF(cdsItensOrcDESCONTO_IVENDAS.AsFloat * 100 / (cdsItensOrcVALORBRUTO_IVENDAS.asFloat + cdsItensOrcDESCONTO_IVENDAS.AsFloat),ffFixed,18,2) + '%'
   else
      Text := '';
end;

procedure TdmImpOrc.ppDBText384GetText(Sender: TObject; var Text: String);
begin
   if Master1 = 'T' then
      Text := FloatToStrF(cdsItensOrcPRECO_CUSTO_PRODUTO.AsFloat,ffFixed,18,2)
   else
      Text := '';
end;

procedure TdmImpOrc.ppLabel615GetText(Sender: TObject; var Text: String);
begin
   if Master1 = 'T' then
      Text := 'Pre�o Custo'
   else
      Text := '';
end;

procedure TdmImpOrc.ppDBText394GetText(Sender: TObject; var Text: String);
begin
   Text := Parametro.Msn_linha(1);
end;

procedure TdmImpOrc.ppDBText428GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoEMPRESA.Value + ' - ' + cdsOrcamentoFONE_EMP.Value;
end;

procedure TdmImpOrc.ppLabel724GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(cdsItensOrcPRODUTO_IVENDA.AsString,6) + ' ' + cdsItensOrcDESCRICAO_IVENDAS.Value;
end;

procedure TdmImpOrc.ppLabel725GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(cdsOrcamentoCODIGO_CLIENTE.AsString,6) + '-' + cdsOrcamentoNOME_CLIENTE.Value;
end;

procedure TdmImpOrc.ppLabel728GetText(Sender: TObject; var Text: String);
begin
   text := StrZero(cdsOrcamentoCODIGO_VENDA.AsString,6);
end;

procedure TdmImpOrc.ppLabel729GetText(Sender: TObject; var Text: String);
var
   Dia,mes,ano:word;
begin
   DecodeDate(cdsOrcamentoDATA_VENDA.AsDateTime,ano,mes,dia);
   text := StrZero(IntToStr(dia),2);
end;

procedure TdmImpOrc.ppLabel730GetText(Sender: TObject; var Text: String);
var
   Dia,mes,ano:word;
begin
   DecodeDate(cdsOrcamentoDATA_VENDA.AsDateTime,ano,mes,dia);
   text := StrZero(IntToStr(mes),2);
end;

procedure TdmImpOrc.ppLabel731GetText(Sender: TObject; var Text: String);
var
   Dia,mes,ano:word;
begin
   DecodeDate(cdsOrcamentoDATA_VENDA.AsDateTime,ano,mes,dia);
   text := IntToStr(ano);
end;

procedure TdmImpOrc.ppLabel719GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoCNPJ_CLIENTE.AsString;
end;

procedure TdmImpOrc.ppLabel718GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoENDERECO_CLIENTE.AsString;
end;

procedure TdmImpOrc.ppLabel732GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoNOME_CIDADE.AsString + '-' + cdsOrcamentoESTADO_CLIENTE.AsString;
end;

procedure TdmImpOrc.ppLabel733GetText(Sender: TObject; var Text: String);
begin
 Text := cdsOrcamentoINSCRICAO_CLIENTE.AsString;
end;

procedure TdmImpOrc.ppLabel726GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoFORMA_PAGAMENTO.Value;
end;

procedure TdmImpOrc.ppLabel727GetText(Sender: TObject; var Text: String);
begin
   if cdsOrcamentoVALOR01_VENDA.AsFloat > 0 then
      text := cdsOrcamentoVENCIMEN01_VENDA.AsString + ' ' + FloatToStrF(cdsOrcamentoVALOR01_VENDA.AsFloat,ffFixed,18,2);
end;

procedure TdmImpOrc.ppLabel736GetText(Sender: TObject; var Text: String);
begin
      if cdsOrcamentoVALOR02_VENDA.AsFloat > 0 then
      text := cdsOrcamentoVENCIMEN02_VENDA.AsString + ' ' + FloatToStrF(cdsOrcamentoVALOR02_VENDA.AsFloat,ffFixed,18,2);
end;

procedure TdmImpOrc.ppLabel737GetText(Sender: TObject; var Text: String);
begin
      if cdsOrcamentoVALOR03_VENDA.AsFloat > 0 then
      text := cdsOrcamentoVENCIMEN03_VENDA.AsString + ' ' + FloatToStrF(cdsOrcamentoVALOR03_VENDA.AsFloat,ffFixed,18,2);
end;

procedure TdmImpOrc.ppLabel738GetText(Sender: TObject; var Text: String);
begin
      if cdsOrcamentoVALOR04_VENDA.AsFloat > 0 then
      text := cdsOrcamentoVENCIMEN04_VENDA.AsString + ' ' + FloatToStrF(cdsOrcamentoVALOR04_VENDA.AsFloat,ffFixed,18,2);
end;

procedure TdmImpOrc.ppLabel739GetText(Sender: TObject; var Text: String);
begin
      if cdsOrcamentoVALOR05_VENDA.AsFloat > 0 then
      text := cdsOrcamentoVENCIMEN05_VENDA.AsString + ' ' + FloatToStrF(cdsOrcamentoVALOR05_VENDA.AsFloat,ffFixed,18,2);
end;

procedure TdmImpOrc.ppLabel740GetText(Sender: TObject; var Text: String);
begin
   if cdsOrcamentoVALOR06_VENDA.AsFloat > 0 then
      text := cdsOrcamentoVENCIMEN06_VENDA.AsString + ' ' + FloatToStrF(cdsOrcamentoVALOR06_VENDA.AsFloat,ffFixed,18,2);
end;

procedure TdmImpOrc.ppLabel720GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoCOB_ENDERECO_CLIENTE.Value;
end;

procedure TdmImpOrc.ppLabel721GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoCOB_NOME_CIDADE.Value;
end;

procedure TdmImpOrc.ppLabel734GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoBANCO1_CLIENTE.Value;
end;

procedure TdmImpOrc.ppLabel722GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoDATA_VENDA.AsString;
end;

procedure TdmImpOrc.ppLabel723GetText(Sender: TObject; var Text: String);
begin
   Text := cdsOrcamentoENDERECO_CLIENTE.Value;
end;

procedure TdmImpOrc.ppLabel22GetText(Sender: TObject; var Text: String);
begin
   if cdsOrcamentoSERIE_VENDA.Value = 'OR' then
      Text := 'OR�AMENTO Nr '
   else
      Text := 'PEDIDO Nr';
end;

procedure TdmImpOrc.ppLabel526GetText(Sender: TObject; var Text: String);
begin
   if cdsOrcamentoSERIE_VENDA.Value = 'OR' then
      Text := 'OR�AMENTO / ENTREGA DE MERCADORIA - Nr� '
   else
      Text := 'PEDIDO / ENTREGA DE MERCADORIA - Nr�';

end;

procedure TdmImpOrc.ppLabel701GetText(Sender: TObject; var Text: String);
begin
   if cdsOrcamentoSERIE_VENDA.Value = 'OR' then
      Text := 'O R � A M E N T O'
   else
      Text := 'P E D I D O';
end;

procedure TdmImpOrc.imprime(File1: String);
begin
   if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '0' then
   begin
      dmImpOrc.rptOrc_00.ArchiveFileName := Path1 + File1;
      dmImpOrc.rptOrc_00.Print
   end
   else
   begin
      if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '1' then
      begin
         dmImpOrc.rptOrc_01.ArchiveFileName := Path1 + File1;
         dmImpOrc.rptOrc_01.Print
      end
      else
      begin
         if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '2' then
         begin
            dmImpOrc.rptOrc_02.ArchiveFileName := Path1 + File1;
            dmImpOrc.rptOrc_02.Print
         end
         else
         begin
            if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '3' then
            begin
               dmImpOrc.rptORc_03.ArchiveFileName := Path1 + File1;
               dmImpOrc.rptORc_03.Print
            end
            else
            begin
               if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '4' then
               begin
                  dmImpOrc.rptORc_02.ArchiveFileName := Path1 + File1;
                  dmImpOrc.rptORc_02.Print
               end
               else
               begin
                  if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '5' then
                  begin
                     dmImpOrc.rptORc_05.ArchiveFileName := Path1 + File1;
                     dmImpOrc.rptORc_05.Print
                  end
                  else
                  begin
                     if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '6' then
                     begin
                        dmImpOrc.rptORc_06.ArchiveFileName := Path1 + File1;
                        dmImpOrc.rptORc_06.Print
                     end
                     else
                     begin
                        if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '7' then
                        begin
                           dmImpOrc.rptOrc_07.ArchiveFileName := Path1 + File1;
                           dmImpOrc.rptOrc_07.Print
                        end
                        else
                        begin
                           if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '8' then
                           begin
                              dmImpOrc.rptOrc_08.ArchiveFileName := Path1 + File1;
                              dmImpOrc.rptOrc_08.Print
                           end
                           else
                           begin
                              if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = '9' then
                              begin
                                 dmImpOrc.rptOrc_09.ArchiveFileName := Path1 + File1;
                                 dmImpOrc.rptOrc_09.Print
                              end
                              else
                              begin
                                 if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = 'A' then
                                 begin
                                    dmImpOrc.rptOrc_A.ArchiveFileName := Path1 + File1;
                                    dmImpOrc.rptOrc_A.Print
                                 end
                                 else
                                 begin
                                    if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = 'B' then
                                    begin
                                       dmImpOrc.rptOrc_B.ArchiveFileName := Path1 + File1;
                                       dmImpOrc.rptOrc_B.Print
                                    end
                                    else
                                    begin
                                       if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = 'C' then
                                       begin
                                          dmImpOrc.rptOrc_C.ArchiveFileName := Path1 + File1;
                                          dmImpOrc.rptOrc_C.Print
                                       end
                                       else
                                       begin
                                          if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = 'D' then
                                          begin
                                             dmImpOrc.rptOrc_D.ArchiveFileName := Path1 + File1;
                                             dmImpOrc.rptOrc_D.Print
                                          end
                                          else
                                          begin
                                             if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = 'E' then
                                             begin
                                                dmImpOrc.rptOrc_E.ArchiveFileName := Path1 + File1;
                                                dmImpOrc.rptOrc_E.Print
                                             end
                                             else
                                             begin
                                                if Parametro.Modelo_orcamento(cdsOrcamentoSERIE_VENDA.AsString) = 'F' then
                                                begin
                                                   dmImpOrc.rptOrc_F.ArchiveFileName := Path1 + File1;
                                                   dmImpOrc.rptOrc_F.Print
                                                end
                                             end;
                                          end;
                                       end;
                                    end;
                                 end;
                              end;
                           end;
                        end;
                     end;
                  end;
               end;
            end;
         end;
      end;
   end;

   dmImpOrc.ppArchiveReader1.ArchiveFileName := Path1 + File1;
   dmImpOrc.ppArchiveReader1.Print;
   dmImpOrc := nil;
end;

procedure TdmImpOrc.Carrega_data_sets(Serie: String; Cod_lancamento: Integer; Venda_balcao: Boolean = False; Fatura: Boolean = False);
begin

   if Venda_balcao then
   begin
      qryBalcao.Close;
      qryBalcao.ParamByName('CODEMPRESA') .AsString  := CodigoEmpresa1;
      qryBalcao.ParamByName('NUMORC')     .AsInteger := Cod_lancamento;
      qryBalcao.Open;

      cdsOrcamento.Append;

      cdsOrcamentoCODIGO_VENDA.AsVariant 		:= qryBalcao.FieldByName('CODIGO_BALCAO').asVariant;
      cdsOrcamentoPARCEIRO_VENDA.AsVariant 	:= qryBalcao.FieldByName('PARCEIRO_BALCAO').asVariant;
      cdsOrcamentoCLIENTE_VENDA.AsVariant 	:= qryBalcao.FieldByName('CLIENTE_BALCAO').asVariant;
      cdsOrcamentoPROPRIEDADE_VENDA.AsVariant:= qryBalcao.FieldByName('PROPRIEDADE_BALCAO').asVariant;
      cdsOrcamentoNOMECLIENTE_VENDA.AsVariant:= qryBalcao.FieldByName('NOMECLIENTE_BALCAO').asVariant;
      cdsOrcamentoDATA_VENDA.AsVariant 		:= qryBalcao.FieldByName('DATA_BALCAO').asVariant;
      cdsOrcamentoEXCLUSAO_VENDA.AsVariant 	:= qryBalcao.FieldByName('EXCLUSAO_BALCAO').asVariant;
      cdsOrcamentoHORA_VENDA.AsVariant 		:= qryBalcao.FieldByName('HORA_BALCAO').asVariant;
      cdsOrcamentoFATURA_VENDA.AsVariant		:= qryBalcao.FieldByName('FATURA_BALCAO').asVariant;
      cdsOrcamentoDESCONTO_VENDA.AsVariant 	:= qryBalcao.FieldByName('DESCONTO_BALCAO').asVariant;
      cdsOrcamentoDESCON_ESP_VENDA.AsVariant := qryBalcao.FieldByName('DESCON_ESP_BALCAO').asVariant;
      cdsOrcamentoCPAGAMENTO_VENDA.AsVariant := qryBalcao.FieldByName('CPAGAMENTO_BALCAO').asVariant;
      cdsOrcamentoCHAVE_VENDA.AsVariant 		:= qryBalcao.FieldByName('CHAVE_BALCAO').asVariant;
      cdsOrcamentoCAIXA_VENDA.AsVariant 		:= qryBalcao.FieldByName('CAIXA_BALCAO').asVariant;
      cdsOrcamentoTIPO_PRECO_VENDA.AsVariant := qryBalcao.FieldByName('TIPO_PRECO_BALCAO').asVariant;
      cdsOrcamentoCFOP_VENDA.AsVariant 		:= qryBalcao.FieldByName('CFOP_BALCAO').asVariant;
      cdsOrcamentoNOTAFISCAL_VENDA.AsVariant := qryBalcao.FieldByName('NOTAFISCAL_BALCAO').asVariant;
      cdsOrcamentoSERIE_VENDA.AsVariant 		:= Serie;
      cdsOrcamentoCONFIRMA_VENDA.AsVariant 	:= qryBalcao.FieldByName('CONFIRMA_BALCAO').asVariant;
      cdsOrcamentoEMISSAO_VENDA.AsVariant 	:= qryBalcao.FieldByName('EMISSAO_BALCAO').asVariant;
      cdsOrcamentoDATASAIDA_VENDA.AsVariant 	:= qryBalcao.FieldByName('DATASAIDA_BALCAO').asVariant;
      cdsOrcamentoHORASAIDA_VENDA.AsVariant 	:= qryBalcao.FieldByName('HORASAIDA_BALCAO').asVariant;
      cdsOrcamentoVALORNOTA_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALORNOTA_BALCAO').asVariant;
      cdsOrcamentoBASEICMS_VENDA.AsVariant 	:= qryBalcao.FieldByName('BASEICMS_BALCAO').asVariant;
      cdsOrcamentoICMS_VENDA.AsVariant 		:= qryBalcao.FieldByName('ICMS_BALCAO').asVariant;
      cdsOrcamentoBASEICMSSB_VENDA.AsVariant := qryBalcao.FieldByName('BASEICMSSB_BALCAO').asVariant;
      cdsOrcamentoICMSSB_VENDA.AsVariant 		:= qryBalcao.FieldByName('ICMSSB_BALCAO').asVariant;
      cdsOrcamentoIPI_VENDA.AsVariant 			:= qryBalcao.FieldByName('IPI_BALCAO').asVariant;
      cdsOrcamentoTRANSPORTA_VENDA.AsVariant := qryBalcao.FieldByName('TRANSPORTA_BALCAO').asVariant;
      cdsOrcamentoPESOBRUTO_VENDA.AsVariant 	:= qryBalcao.FieldByName('PESOBRUTO_BALCAO').asVariant;
      cdsOrcamentoPESOLIQUIDO_VENDA.AsVariant:= qryBalcao.FieldByName('PESOLIQUIDO_BALCAO').asVariant;
      cdsOrcamentoOBSERVACAO_VENDA.AsVariant := qryBalcao.FieldByName('OBSERVACAO_BALCAO').asVariant;
      cdsOrcamentoPARCELAS_VENDA.AsVariant 	:= qryBalcao.FieldByName('PARCELAS_BALCAO').asVariant;
      cdsOrcamentoVALOR01_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR01_BALCAO').asVariant;
      cdsOrcamentoVALOR02_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR02_BALCAO').asVariant;
      cdsOrcamentoVALOR03_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR03_BALCAO').asVariant;
      cdsOrcamentoVALOR04_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR04_BALCAO').asVariant;
      cdsOrcamentoVALOR05_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR05_BALCAO').asVariant;
      cdsOrcamentoVALOR06_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR06_BALCAO').asVariant;
      cdsOrcamentoVALOR07_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR07_BALCAO').asVariant;
      cdsOrcamentoVALOR08_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR08_BALCAO').asVariant;
      cdsOrcamentoVALOR09_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR09_BALCAO').asVariant;
      cdsOrcamentoVALOR10_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR10_BALCAO').asVariant;
      cdsOrcamentoVALOR11_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR11_BALCAO').asVariant;
      cdsOrcamentoVALOR12_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR12_BALCAO').asVariant;
      cdsOrcamentoVALOR13_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR13_BALCAO').asVariant;
      cdsOrcamentoVALOR14_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR14_BALCAO').asVariant;
      cdsOrcamentoVALOR15_VENDA.AsVariant 	:= qryBalcao.FieldByName('VALOR15_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN01_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN01_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN02_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN02_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN03_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN03_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN04_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN04_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN05_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN05_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN06_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN06_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN07_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN07_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN08_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN08_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN09_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN09_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN10_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN10_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN11_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN11_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN12_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN12_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN13_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN13_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN14_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN14_BALCAO').asVariant;
      cdsOrcamentoVENCIMEN15_VENDA.AsVariant := qryBalcao.FieldByName('VENCIMEN15_BALCAO').asVariant;
      cdsOrcamentoCOMISSAO_VENDA.AsVariant 	:= qryBalcao.FieldByName('COMISSAO_BALCAO').asVariant;
      cdsOrcamentoTIPO_VENDA.AsVariant 		:= qryBalcao.FieldByName('TIPO_BALCAO').asVariant;
      cdsOrcamentoTIPO1_VENDA.AsVariant 		:= qryBalcao.FieldByName('TIPO1_BALCAO').asVariant;
      cdsOrcamentoDEVOLVE_VENDA.AsVariant 	:= qryBalcao.FieldByName('DEVOLVE_BALCAO').asVariant;
      cdsOrcamentoENTREGA_VENDA.AsVariant 	:= qryBalcao.FieldByName('ENTREGA_BALCAO').asVariant;
      cdsOrcamentoTROCO_VENDA.AsVariant 		:= qryBalcao.FieldByName('TROCO_BALCAO').asVariant;
      cdsOrcamentoFRETE_VENDA.AsVariant 		:= qryBalcao.FieldByName('FRETE_BALCAO').asVariant;
      cdsOrcamentoSEGURO_VENDA.AsVariant 		:= qryBalcao.FieldByName('SEGURO_BALCAO').asVariant;
      cdsOrcamentoOUTROS_VENDA.AsVariant 		:= qryBalcao.FieldByName('OUTROS_BALCAO').asVariant;
      cdsOrcamentoROMANEIO_VENDA.AsVariant 	:= qryBalcao.FieldByName('ROMANEIO_BALCAO').asVariant;
      cdsOrcamentoPLACASAIDA_VENDA.AsVariant := qryBalcao.FieldByName('PLACASAIDA_BALCAO').asVariant;
      cdsOrcamentoESTADOSAIDA_VENDA.AsVariant:= qryBalcao.FieldByName('ESTADOSAIDA_BALCAO').asVariant;
      cdsOrcamentoNRFATURA_VENDA.AsVariant 	:= qryBalcao.FieldByName('NRFATURA_BALCAO').asVariant;
      cdsOrcamentoAUTONOMO_VENDA.AsVariant 	:= qryBalcao.FieldByName('AUTONOMO_BALCAO').asVariant;
      cdsOrcamentoEXPORTADO_VENDA.AsVariant 	:= qryBalcao.FieldByName('EXPORTADO_BALCAO').asVariant;
      cdsOrcamentoTIPO_DOC_VENDA.AsVariant 	:= qryBalcao.FieldByName('TIPO_DOC_BALCAO').asVariant;
      cdsOrcamentoINFOADICIONA_VENDA.AsVariant 	:= qryBalcao.FieldByName('INFOADICIONA_BALCAO').asVariant;
      cdsOrcamentoMACHO_4_VENDA.AsVariant 		:= qryBalcao.FieldByName('MACHO_4_BALCAO').asVariant;
      cdsOrcamentoMACHO_4_12_VENDA.AsVariant 	:= qryBalcao.FieldByName('MACHO_4_12_BALCAO').asVariant;
      cdsOrcamentoMACHO_12_24_VENDA.AsVariant 	:= qryBalcao.FieldByName('MACHO_12_24_BALCAO').asVariant;
      cdsOrcamentoMACHO_24_36_VENDA.AsVariant 	:= qryBalcao.FieldByName('MACHO_24_36_BALCAO').asVariant;
      cdsOrcamentoMACHO_M36_VENDA.AsVariant 		:= qryBalcao.FieldByName('MACHO_M36_BALCAO').asVariant;
      cdsOrcamentoFEMEA_4_VENDA.AsVariant 		:= qryBalcao.FieldByName('FEMEA_4_BALCAO').asVariant;
      cdsOrcamentoFEMEA_4_12_VENDA.AsVariant 	:= qryBalcao.FieldByName('FEMEA_4_12_BALCAO').asVariant;
      cdsOrcamentoFEMEA_12_24_VENDA.AsVariant 	:= qryBalcao.FieldByName('FEMEA_12_24_BALCAO').asVariant;
      cdsOrcamentoFEMEA_24_36_VENDA.AsVariant 	:= qryBalcao.FieldByName('FEMEA_24_36_BALCAO').asVariant;
      cdsOrcamentoFEMEA_M36_VENDA.AsVariant 		:= qryBalcao.FieldByName('FEMEA_M36_BALCAO').asVariant;
      cdsOrcamentoBUFALOS_VENDA.AsVariant 		:= qryBalcao.FieldByName('BUFALOS_BALCAO').asVariant;
      cdsOrcamentoCAPRINOS_VENDA.AsVariant 		:= qryBalcao.FieldByName('CAPRINOS_BALCAO').asVariant;
      cdsOrcamentoOVINOS_VENDA.AsVariant 			:= qryBalcao.FieldByName('OVINOS_BALCAO').asVariant;
      cdsOrcamentoSUINOS_VENDA.AsVariant	 		:= qryBalcao.FieldByName('SUINOS_BALCAO').asVariant;
      cdsOrcamentoTROCA_VENDA.AsVariant			:= qryBalcao.FieldByName('TROCA_BALCAO').asVariant;
      cdsOrcamentoOS_VENDA.AsVariant 				:= qryBalcao.FieldByName('OS_BALCAO').asVariant;
      cdsOrcamentoCNPJCLIENTE_VENDA.AsVariant 	:= qryBalcao.FieldByName('CNPJCLIENTE_BALCAO').asVariant;
      cdsOrcamentoRGCLIENTE_VENDA.AsVariant 		:= qryBalcao.FieldByName('RGCLIENTE_BALCAO').asVariant;
      cdsOrcamentoENDCLIENTE_VENDA.AsVariant 	:= qryBalcao.FieldByName('ENDCLIENTE_BALCAO').asVariant;
      cdsOrcamentoBAICLIENTE_VENDA.AsVariant 	:= qryBalcao.FieldByName('BAICLIENTE_BALCAO').asVariant;
      cdsOrcamentoCIDCLIENTE_VENDA.AsVariant 	:= qryBalcao.FieldByName('CIDCLIENTE_BALCAO').asVariant;
      cdsOrcamentoESTCLIENTE_VENDA.AsVariant 	:= qryBalcao.FieldByName('ESTCLIENTE_BALCAO').asVariant;
      cdsOrcamentoCEPCLIENTE_VENDA.AsVariant 	:= qryBalcao.FieldByName('CEPCLIENTE_BALCAO').asVariant;
      cdsOrcamentoFONECLIENTE_VENDA.AsVariant 	:= qryBalcao.FieldByName('FONECLIENTE_BALCAO').asVariant;
      cdsOrcamentoCARNE_VENDA.AsVariant 			:= qryBalcao.FieldByName('CARNE_BALCAO').asVariant;
      cdsOrcamentoUSUARIO_VENDA.AsVariant 		:= qryBalcao.FieldByName('USUARIO_BALCAO').asVariant;
      cdsOrcamentoUSUALTERA_VENDA.AsVariant 		:= qryBalcao.FieldByName('USUALTERA_BALCAO').asVariant;
      cdsOrcamentoCOD_EMPRESA.AsVariant 			:= qryBalcao.FieldByName('COD_EMPRESA').asVariant;
      cdsOrcamentoOBS1.AsVariant 					:= qryBalcao.FieldByName('OBS1').asVariant;
      cdsOrcamentoOBS2.AsVariant 					:= qryBalcao.FieldByName('OBS2').asVariant;
      cdsOrcamentoOBS3.AsVariant 					:= qryBalcao.FieldByName('OBS3').asVariant;
      cdsOrcamentoOBS4.AsVariant 					:= qryBalcao.FieldByName('OBS4').asVariant;
      cdsOrcamentoVALOR_BRUTO.AsVariant 			:= qryBalcao.FieldByName('VALOR_BRUTO').asVariant;
      cdsOrcamentoDESC_PORC.AsVariant 				:= qryBalcao.FieldByName('DESC_PORC').asVariant;
      cdsOrcamentoCGC_EMP.AsVariant 				:= qryBalcao.FieldByName('CGC_EMP').asVariant;
      cdsOrcamentoINSCRICAO_EMP.AsVariant 		:= qryBalcao.FieldByName('INSCRICAO_EMP').asVariant;
      cdsOrcamentoEMPRESA.AsVariant 				:= qryBalcao.FieldByName('EMPRESA').asVariant;
      cdsOrcamentoEND_EMPRESA.AsVariant 			:= qryBalcao.FieldByName('END_EMPRESA').asVariant;
      cdsOrcamentoCIDADE_EMP.AsVariant 			:= qryBalcao.FieldByName('CIDADE_EMP').asVariant;
      cdsOrcamentoFONE_EMP.AsVariant 				:= qryBalcao.FieldByName('FONE_EMP').asVariant;
      cdsOrcamentoNOME_VENDEDOR.AsVariant 		:= qryBalcao.FieldByName('NOME_VENDEDOR').asVariant;
      cdsOrcamentoFORMA_PAGAMENTO.AsVariant 		:= qryBalcao.FieldByName('FORMA_PAGAMENTO').asVariant;
      cdsOrcamentoDESCRICAO_PRO.AsVariant 		:= qryBalcao.FieldByName('DESCRICAO_PRO').asVariant;
      cdsOrcamentoBAIRRO_PRO.AsVariant 			:= qryBalcao.FieldByName('BAIRRO_PRO').asVariant;
      cdsOrcamentoCEP_PRO.AsVariant 				:= qryBalcao.FieldByName('CEP_PRO').asVariant;
      cdsOrcamentoCIDADE_PRO.AsVariant 			:= qryBalcao.FieldByName('CIDADE_PRO').asVariant;
      cdsOrcamentoFONE_PRO.AsVariant 				:= qryBalcao.FieldByName('FONE_PRO').asVariant;
      cdsOrcamentoESTADO_PRO.AsVariant 			:= qryBalcao.FieldByName('ESTADO_PRO').asVariant;
      cdsOrcamentoINSCEST_PRO.AsVariant 			:= qryBalcao.FieldByName('INSCEST_PRO').asVariant;
      cdsOrcamentoCODIGO_CLIENTE.AsVariant	 	:= qryBalcao.FieldByName('CODIGO_CLIENTE').asVariant;
      cdsOrcamentoNOME_CLIENTE.AsVariant 			:= qryBalcao.FieldByName('NOME_CLIENTE').asVariant;
      cdsOrcamentoFANTASIA_CLIENTE.AsVariant 	:= qryBalcao.FieldByName('FANTASIA_CLIENTE').asVariant;
      cdsOrcamentoCNPJ_CLIENTE.AsVariant 			:= qryBalcao.FieldByName('CNPJ_CLIENTE').asVariant;
      cdsOrcamentoNOME_CIDADE.AsVariant 			:= qryBalcao.FieldByName('NOME_CIDADE').asVariant;
      cdsOrcamentoCOB_NOME_CIDADE.AsVariant 		:= qryBalcao.FieldByName('COB_NOME_CIDADE').asVariant;
      cdsOrcamentoBANCO1_CLIENTE.AsVariant 		:= qryBalcao.FieldByName('BANCO1_CLIENTE').asVariant;
      cdsOrcamentoENDERECO_CLIENTE.AsVariant 	:= qryBalcao.FieldByName('ENDERECO_CLIENTE').asVariant;
      cdsOrcamentoBAIRRO_CLIENTE.AsVariant 		:= qryBalcao.FieldByName('BAIRRO_CLIENTE').asVariant;
      cdsOrcamentoCEP_CLIENTE.AsVariant 			:= qryBalcao.FieldByName('CEP_CLIENTE').asVariant;
      cdsOrcamentoCIDADE_CLIENTE.AsVariant	 	:= qryBalcao.FieldByName('CIDADE_CLIENTE').asVariant;
      cdsOrcamentoTELEFONE_CLIENTE.AsVariant 	:= qryBalcao.FieldByName('TELEFONE_CLIENTE').asVariant;
      cdsOrcamentoESTADO_CLIENTE.AsVariant 		:= qryBalcao.FieldByName('ESTADO_CLIENTE').asVariant;
      cdsOrcamentoINSCRICAO_CLIENTE.AsVariant	:= qryBalcao.FieldByName('INSCRICAO_CLIENTE').asVariant;

      cdsOrcamento.Post;

      qryItensBlc.Close;
      qryItensBlc.ParamByName('CODIGO_VENDA').AsInteger := cdsOrcamentoCODIGO_VENDA.AsInteger;
      qryItensBlc.ParamByName('EMPRESA')     .AsString  := CodigoEmpresa1;
      qryItensBlc.Open;

      qryItensBlc.First;
      while not qryItensBlc.Eof do
      begin
         cdsItensOrc.Append;

         cdsItensOrcID_VENDA_ITEM.AsVariant       := qryItensBlc.FieldByName('ID_BALCAO_ITENS').asVariant;
         cdsItensOrcCODIGO_IVENDA.AsVariant       := qryItensBlc.FieldByName('CODIGO_IBALCAO').asVariant;
         cdsItensOrcPRODUTO_IVENDA.AsVariant      := qryItensBlc.FieldByName('PRODUTO_IBALCAO').asVariant;
         cdsItensOrcDESCRICAO_IVENDAS.AsVariant   := qryItensBlc.FieldByName('DESCRICAO_IBALCAO').asVariant;
         cdsItensOrcVALORBRUTO_IVENDAS.AsVariant  := qryItensBlc.FieldByName('VALORBRUTO_IBALCAO').asVariant;
         cdsItensOrcQUANTIDADE_IVENDAS.AsVariant  := qryItensBlc.FieldByName('QUANTIDADE_IBALCAO').asVariant;
         cdsItensOrcGRADE_IVENDAS.AsVariant       := qryItensBlc.FieldByName('GRADE_IBALCAO').asVariant;
         cdsItensOrcPROMOCAO_IVENDAS.AsVariant    := qryItensBlc.FieldByName('PROMOCAO_IBALCAO').asVariant;
         cdsItensOrcSERIE_IVENDAS.AsVariant       := qryItensBlc.FieldByName('SERIE_IBALCAO').asVariant;
         cdsItensOrcDESCONTO_IVENDAS.AsVariant    := qryItensBlc.FieldByName('DESCONTO_IBALCAO').asVariant;
         cdsItensOrcICM_IVENDAS.AsVariant         := qryItensBlc.FieldByName('ICM_IBALCAO').asVariant;
         cdsItensOrcIPI_IVENDAS.AsVariant         := qryItensBlc.FieldByName('IPI_IBALCAO').asVariant;
         cdsItensOrcREDUTOR_IVENDAS.AsVariant     := qryItensBlc.FieldByName('REDUTOR_IBALCAO').asVariant;
         cdsItensOrcTRIBUTACAO_IVENDAS.AsVariant  := qryItensBlc.FieldByName('TRIBUTACAO_IBALCAO').asVariant;
         cdsItensOrcFISCAL_IVENDAS.AsVariant      := qryItensBlc.FieldByName('FISCAL_IBALCAO').asVariant;
         cdsItensOrcGARANTIA_IVENDAS.AsVariant    := qryItensBlc.FieldByName('GARANTIA_IBALCAO').asVariant;
         cdsItensOrcTECNICO_IVENDAS.AsVariant     := qryItensBlc.FieldByName('TECNICO_IBALCAO').asVariant;
         cdsItensOrcALTURA_IVENDAS.AsVariant      := qryItensBlc.FieldByName('ALTURA_IBALCAO').asVariant;
         cdsItensOrcLARGURA_IVENDAS.AsVariant     := qryItensBlc.FieldByName('LARGURA_IBALCAO').asVariant;
         cdsItensOrcCOMPRIMENTO_VENDAS.AsVariant  := qryItensBlc.FieldByName('COMPRIMENTO_VENDAS').asVariant;
         cdsItensOrcQTDE_VENDAS.AsVariant         := qryItensBlc.FieldByName('QTDE_VENDAS').asVariant;
         cdsItensOrcCOMPLEMENTO.AsVariant         := qryItensBlc.FieldByName('COMPLEMENTO').asVariant;
         cdsItensOrcCOD_EMPRESA.AsVariant         := qryItensBlc.FieldByName('COD_EMPRESA').asVariant;
         cdsItensOrcCLASSE_IVENDA.AsVariant       := qryItensBlc.FieldByName('CLASSE_IBALCAO').asVariant;
         cdsItensOrcVALORTOTAL.AsVariant          := qryItensBlc.FieldByName('VALORTOTAL').asVariant;
         cdsItensOrcFABRICANTE_PRODUTO.AsVariant  := qryItensBlc.FieldByName('FABRICANTE_PRODUTO').asVariant;
         cdsItensOrcUNIDADE_PRODUTO.AsVariant     := qryItensBlc.FieldByName('UNIDADE_PRODUTO').asVariant;
         cdsItensOrcCODIGO_GRADE.AsVariant        := qryItensBlc.FieldByName('CODIGO_GRADE').asVariant;
         cdsItensOrcPRECO_CUSTO_PRODUTO.AsVariant := qryItensBlc.FieldByName('PRECO_CUSTO_PRODUTO').asVariant;
         cdsItensOrcCFOP.AsVariant                := qryItensBlc.FieldByName('CFOP').asVariant;
         cdsItensOrcFABRICA_IVENDAS.AsVariant     := qryItensBlc.FieldByName('FABRICA_IBALCAO').asVariant;
         cdsItensOrcFABRICA_PRODUTO.AsVariant     := qryItensBlc.FieldByName('FABRICA_PRODUTO').asVariant;

         cdsItensOrc.Post;
         qryItensBlc.Next;
      end;
   end
   else
   begin
      if Fatura = False then
      begin
         qryVenda.Close;
         qryVenda.ParamByName('CODEMPRESA') .AsString  := CodigoEmpresa1;
         qryVenda.ParamByName('NUMORC')     .AsInteger := Cod_lancamento;
         qryVenda.Open;

         cdsOrcamento.Append;

         cdsOrcamentoCODIGO_VENDA.AsVariant 		:= qryVenda.FieldByName('CODIGO_VENDA').asVariant;
         cdsOrcamentoPARCEIRO_VENDA.AsVariant 	:= qryVenda.FieldByName('PARCEIRO_VENDA').asVariant;
         cdsOrcamentoCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('CLIENTE_VENDA').asVariant;
         cdsOrcamentoPROPRIEDADE_VENDA.AsVariant:= qryVenda.FieldByName('PROPRIEDADE_VENDA').asVariant;
         cdsOrcamentoNOMECLIENTE_VENDA.AsVariant:= qryVenda.FieldByName('NOMECLIENTE_VENDA').asVariant;
         cdsOrcamentoDATA_VENDA.AsVariant 		:= qryVenda.FieldByName('DATA_VENDA').asVariant;
         cdsOrcamentoEXCLUSAO_VENDA.AsVariant 	:= qryVenda.FieldByName('EXCLUSAO_VENDA').asVariant;
         cdsOrcamentoHORA_VENDA.AsVariant 		:= qryVenda.FieldByName('HORA_VENDA').asVariant;
         cdsOrcamentoFATURA_VENDA.AsVariant		:= qryVenda.FieldByName('FATURA_VENDA').asVariant;
         cdsOrcamentoDESCONTO_VENDA.AsVariant 	:= qryVenda.FieldByName('DESCONTO_VENDA').asVariant;
         cdsOrcamentoDESCON_ESP_VENDA.AsVariant := qryVenda.FieldByName('DESCON_ESP_VENDA').asVariant;
         cdsOrcamentoCPAGAMENTO_VENDA.AsVariant := qryVenda.FieldByName('CPAGAMENTO_VENDA').asVariant;
         cdsOrcamentoCHAVE_VENDA.AsVariant 		:= qryVenda.FieldByName('CHAVE_VENDA').asVariant;
         cdsOrcamentoCAIXA_VENDA.AsVariant 		:= qryVenda.FieldByName('CAIXA_VENDA').asVariant;
         cdsOrcamentoTIPO_PRECO_VENDA.AsVariant := qryVenda.FieldByName('TIPO_PRECO_VENDA').asVariant;
         cdsOrcamentoCFOP_VENDA.AsVariant 		:= qryVenda.FieldByName('CFOP_VENDA').asVariant;
         cdsOrcamentoNOTAFISCAL_VENDA.AsVariant := qryVenda.FieldByName('NOTAFISCAL_VENDA').asVariant;
         cdsOrcamentoSERIE_VENDA.AsVariant 		:= qryVenda.FieldByName('SERIE_VENDA').asVariant;
         cdsOrcamentoCONFIRMA_VENDA.AsVariant 	:= qryVenda.FieldByName('CONFIRMA_VENDA').asVariant;
         cdsOrcamentoEMISSAO_VENDA.AsVariant 	:= qryVenda.FieldByName('EMISSAO_VENDA').asVariant;
         cdsOrcamentoDATASAIDA_VENDA.AsVariant 	:= qryVenda.FieldByName('DATASAIDA_VENDA').asVariant;
         cdsOrcamentoHORASAIDA_VENDA.AsVariant 	:= qryVenda.FieldByName('HORASAIDA_VENDA').asVariant;
         cdsOrcamentoVALORNOTA_VENDA.AsVariant 	:= qryVenda.FieldByName('VALORNOTA_VENDA').asVariant;
         cdsOrcamentoBASEICMS_VENDA.AsVariant 	:= qryVenda.FieldByName('BASEICMS_VENDA').asVariant;
         cdsOrcamentoICMS_VENDA.AsVariant 		:= qryVenda.FieldByName('ICMS_VENDA').asVariant;
         cdsOrcamentoBASEICMSSB_VENDA.AsVariant := qryVenda.FieldByName('BASEICMSSB_VENDA').asVariant;
         cdsOrcamentoICMSSB_VENDA.AsVariant 		:= qryVenda.FieldByName('ICMSSB_VENDA').asVariant;
         cdsOrcamentoIPI_VENDA.AsVariant 			:= qryVenda.FieldByName('IPI_VENDA').asVariant;
         cdsOrcamentoTRANSPORTA_VENDA.AsVariant := qryVenda.FieldByName('TRANSPORTA_VENDA').asVariant;
         cdsOrcamentoPESOBRUTO_VENDA.AsVariant 	:= qryVenda.FieldByName('PESOBRUTO_VENDA').asVariant;
         cdsOrcamentoPESOLIQUIDO_VENDA.AsVariant:= qryVenda.FieldByName('PESOLIQUIDO_VENDA').asVariant;
         cdsOrcamentoOBSERVACAO_VENDA.AsVariant := qryVenda.FieldByName('OBSERVACAO_VENDA').asVariant;
         cdsOrcamentoPARCELAS_VENDA.AsVariant 	:= qryVenda.FieldByName('PARCELAS_VENDA').asVariant;
         cdsOrcamentoVALOR01_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR01_VENDA').asVariant;
         cdsOrcamentoVALOR02_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR02_VENDA').asVariant;
         cdsOrcamentoVALOR03_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR03_VENDA').asVariant;
         cdsOrcamentoVALOR04_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR04_VENDA').asVariant;
         cdsOrcamentoVALOR05_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR05_VENDA').asVariant;
         cdsOrcamentoVALOR06_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR06_VENDA').asVariant;
         cdsOrcamentoVALOR07_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR07_VENDA').asVariant;
         cdsOrcamentoVALOR08_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR08_VENDA').asVariant;
         cdsOrcamentoVALOR09_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR09_VENDA').asVariant;
         cdsOrcamentoVALOR10_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR10_VENDA').asVariant;
         cdsOrcamentoVALOR11_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR11_VENDA').asVariant;
         cdsOrcamentoVALOR12_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR12_VENDA').asVariant;
         cdsOrcamentoVALOR13_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR13_VENDA').asVariant;
         cdsOrcamentoVALOR14_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR14_VENDA').asVariant;
         cdsOrcamentoVALOR15_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR15_VENDA').asVariant;
         cdsOrcamentoVENCIMEN01_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN01_VENDA').asVariant;
         cdsOrcamentoVENCIMEN02_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN02_VENDA').asVariant;
         cdsOrcamentoVENCIMEN03_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN03_VENDA').asVariant;
         cdsOrcamentoVENCIMEN04_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN04_VENDA').asVariant;
         cdsOrcamentoVENCIMEN05_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN05_VENDA').asVariant;
         cdsOrcamentoVENCIMEN06_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN06_VENDA').asVariant;
         cdsOrcamentoVENCIMEN07_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN07_VENDA').asVariant;
         cdsOrcamentoVENCIMEN08_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN08_VENDA').asVariant;
         cdsOrcamentoVENCIMEN09_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN09_VENDA').asVariant;
         cdsOrcamentoVENCIMEN10_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN10_VENDA').asVariant;
         cdsOrcamentoVENCIMEN11_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN11_VENDA').asVariant;
         cdsOrcamentoVENCIMEN12_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN12_VENDA').asVariant;
         cdsOrcamentoVENCIMEN13_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN13_VENDA').asVariant;
         cdsOrcamentoVENCIMEN14_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN14_VENDA').asVariant;
         cdsOrcamentoVENCIMEN15_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN15_VENDA').asVariant;
         cdsOrcamentoCOMISSAO_VENDA.AsVariant 	   := qryVenda.FieldByName('COMISSAO_VENDA').asVariant;
         cdsOrcamentoTIPO_VENDA.AsVariant 			:= qryVenda.FieldByName('TIPO_VENDA').asVariant;
         cdsOrcamentoTIPO1_VENDA.AsVariant 		   := qryVenda.FieldByName('TIPO1_VENDA').asVariant;
         cdsOrcamentoDEVOLVE_VENDA.AsVariant 		:= qryVenda.FieldByName('DEVOLVE_VENDA').asVariant;
         cdsOrcamentoENTREGA_VENDA.AsVariant 		:= qryVenda.FieldByName('ENTREGA_VENDA').asVariant;
         cdsOrcamentoTROCO_VENDA.AsVariant 		   := qryVenda.FieldByName('TROCO_VENDA').asVariant;
         cdsOrcamentoFRETE_VENDA.AsVariant 		   := qryVenda.FieldByName('FRETE_VENDA').asVariant;
         cdsOrcamentoSEGURO_VENDA.AsVariant 		   := qryVenda.FieldByName('SEGURO_VENDA').asVariant;
         cdsOrcamentoOUTROS_VENDA.AsVariant 		   := qryVenda.FieldByName('OUTROS_VENDA').asVariant;
         cdsOrcamentoROMANEIO_VENDA.AsVariant 	   := qryVenda.FieldByName('ROMANEIO_VENDA').asVariant;
         cdsOrcamentoPLACASAIDA_VENDA.AsVariant 	:= qryVenda.FieldByName('PLACASAIDA_VENDA').asVariant;
         cdsOrcamentoESTADOSAIDA_VENDA.AsVariant   := qryVenda.FieldByName('ESTADOSAIDA_VENDA').asVariant;
         cdsOrcamentoNRFATURA_VENDA.AsVariant 	   := qryVenda.FieldByName('NRFATURA_VENDA').asVariant;
         cdsOrcamentoAUTONOMO_VENDA.AsVariant 	   := qryVenda.FieldByName('AUTONOMO_VENDA').asVariant;
         cdsOrcamentoEXPORTADO_VENDA.AsVariant 	   := qryVenda.FieldByName('EXPORTADO_VENDA').asVariant;
         cdsOrcamentoTIPO_DOC_VENDA.AsVariant 		:= qryVenda.FieldByName('TIPO_DOC_VENDA').asVariant;
         cdsOrcamentoINFOADICIONA_VENDA.AsVariant 	:= qryVenda.FieldByName('INFOADICIONA_VENDA').asVariant;
         cdsOrcamentoMACHO_4_VENDA.AsVariant 		:= qryVenda.FieldByName('MACHO_4_VENDA').asVariant;
         cdsOrcamentoMACHO_4_12_VENDA.AsVariant 	:= qryVenda.FieldByName('MACHO_4_12_VENDA').asVariant;
         cdsOrcamentoMACHO_12_24_VENDA.AsVariant 	:= qryVenda.FieldByName('MACHO_12_24_VENDA').asVariant;
         cdsOrcamentoMACHO_24_36_VENDA.AsVariant 	:= qryVenda.FieldByName('MACHO_24_36_VENDA').asVariant;
         cdsOrcamentoMACHO_M36_VENDA.AsVariant 		:= qryVenda.FieldByName('MACHO_M36_VENDA').asVariant;
         cdsOrcamentoFEMEA_4_VENDA.AsVariant 		:= qryVenda.FieldByName('FEMEA_4_VENDA').asVariant;
         cdsOrcamentoFEMEA_4_12_VENDA.AsVariant 	:= qryVenda.FieldByName('FEMEA_4_12_VENDA').asVariant;
         cdsOrcamentoFEMEA_12_24_VENDA.AsVariant 	:= qryVenda.FieldByName('FEMEA_12_24_VENDA').asVariant;
         cdsOrcamentoFEMEA_24_36_VENDA.AsVariant 	:= qryVenda.FieldByName('FEMEA_24_36_VENDA').asVariant;
         cdsOrcamentoFEMEA_M36_VENDA.AsVariant 		:= qryVenda.FieldByName('FEMEA_M36_VENDA').asVariant;
         cdsOrcamentoBUFALOS_VENDA.AsVariant 		:= qryVenda.FieldByName('BUFALOS_VENDA').asVariant;
         cdsOrcamentoCAPRINOS_VENDA.AsVariant 		:= qryVenda.FieldByName('CAPRINOS_VENDA').asVariant;
         cdsOrcamentoOVINOS_VENDA.AsVariant 			:= qryVenda.FieldByName('OVINOS_VENDA').asVariant;
         cdsOrcamentoSUINOS_VENDA.AsVariant	 		:= qryVenda.FieldByName('SUINOS_VENDA').asVariant;
         cdsOrcamentoTROCA_VENDA.AsVariant			:= qryVenda.FieldByName('TROCA_VENDA').asVariant;
         cdsOrcamentoOS_VENDA.AsVariant 				:= qryVenda.FieldByName('OS_VENDA').asVariant;
         cdsOrcamentoCNPJCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('CNPJCLIENTE_VENDA').asVariant;
         cdsOrcamentoRGCLIENTE_VENDA.AsVariant 		:= qryVenda.FieldByName('RGCLIENTE_VENDA').asVariant;
         cdsOrcamentoENDCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('ENDCLIENTE_VENDA').asVariant;
         cdsOrcamentoBAICLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('BAICLIENTE_VENDA').asVariant;
         cdsOrcamentoCIDCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('CIDCLIENTE_VENDA').asVariant;
         cdsOrcamentoESTCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('ESTCLIENTE_VENDA').asVariant;
         cdsOrcamentoCEPCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('CEPCLIENTE_VENDA').asVariant;
         cdsOrcamentoFONECLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('FONECLIENTE_VENDA').asVariant;
         cdsOrcamentoCARNE_VENDA.AsVariant 			:= qryVenda.FieldByName('CARNE_VENDA').asVariant;
         cdsOrcamentoUSUARIO_VENDA.AsVariant 		:= qryVenda.FieldByName('USUARIO_VENDA').asVariant;
         cdsOrcamentoUSUALTERA_VENDA.AsVariant 		:= qryVenda.FieldByName('USUALTERA_VENDA').asVariant;
         cdsOrcamentoCOD_EMPRESA.AsVariant 			:= qryVenda.FieldByName('COD_EMPRESA').asVariant;
         cdsOrcamentoOBS1.AsVariant 					:= qryVenda.FieldByName('OBS1').asVariant;
         cdsOrcamentoOBS2.AsVariant 					:= qryVenda.FieldByName('OBS2').asVariant;
         cdsOrcamentoOBS3.AsVariant 					:= qryVenda.FieldByName('OBS3').asVariant;
         cdsOrcamentoOBS4.AsVariant 					:= qryVenda.FieldByName('OBS4').asVariant;
         cdsOrcamentoVALOR_BRUTO.AsVariant 			:= qryVenda.FieldByName('VALOR_BRUTO').asVariant;
         cdsOrcamentoDESC_PORC.AsVariant 				:= qryVenda.FieldByName('DESC_PORC').asVariant;
         cdsOrcamentoCGC_EMP.AsVariant 				:= qryVenda.FieldByName('CGC_EMP').asVariant;
         cdsOrcamentoINSCRICAO_EMP.AsVariant 		:= qryVenda.FieldByName('INSCRICAO_EMP').asVariant;
         cdsOrcamentoEMPRESA.AsVariant 				:= qryVenda.FieldByName('EMPRESA').asVariant;
         cdsOrcamentoEND_EMPRESA.AsVariant 			:= qryVenda.FieldByName('END_EMPRESA').asVariant;
         cdsOrcamentoCIDADE_EMP.AsVariant 			:= qryVenda.FieldByName('CIDADE_EMP').asVariant;
         cdsOrcamentoFONE_EMP.AsVariant 				:= qryVenda.FieldByName('FONE_EMP').asVariant;
         cdsOrcamentoNOME_VENDEDOR.AsVariant 		:= qryVenda.FieldByName('NOME_VENDEDOR').asVariant;
         cdsOrcamentoFORMA_PAGAMENTO.AsVariant 		:= qryVenda.FieldByName('FORMA_PAGAMENTO').asVariant;
         cdsOrcamentoDESCRICAO_PRO.AsVariant 		:= qryVenda.FieldByName('DESCRICAO_PRO').asVariant;
         cdsOrcamentoBAIRRO_PRO.AsVariant 			:= qryVenda.FieldByName('BAIRRO_PRO').asVariant;
         cdsOrcamentoCEP_PRO.AsVariant 				:= qryVenda.FieldByName('CEP_PRO').asVariant;
         cdsOrcamentoCIDADE_PRO.AsVariant 			:= qryVenda.FieldByName('CIDADE_PRO').asVariant;
         cdsOrcamentoFONE_PRO.AsVariant 				:= qryVenda.FieldByName('FONE_PRO').asVariant;
         cdsOrcamentoESTADO_PRO.AsVariant 			:= qryVenda.FieldByName('ESTADO_PRO').asVariant;
         cdsOrcamentoINSCEST_PRO.AsVariant 			:= qryVenda.FieldByName('INSCEST_PRO').asVariant;
         cdsOrcamentoCODIGO_CLIENTE.AsVariant	 	:= qryVenda.FieldByName('CODIGO_CLIENTE').asVariant;
         cdsOrcamentoNOME_CLIENTE.AsVariant 			:= qryVenda.FieldByName('NOME_CLIENTE').asVariant;
         cdsOrcamentoFANTASIA_CLIENTE.AsVariant 	:= qryVenda.FieldByName('FANTASIA_CLIENTE').asVariant;
         cdsOrcamentoCNPJ_CLIENTE.AsVariant 			:= qryVenda.FieldByName('CNPJ_CLIENTE').asVariant;
         cdsOrcamentoNOME_CIDADE.AsVariant 			:= qryVenda.FieldByName('NOME_CIDADE').asVariant;
         cdsOrcamentoCOB_NOME_CIDADE.AsVariant 		:= qryVenda.FieldByName('COB_NOME_CIDADE').asVariant;
         cdsOrcamentoBANCO1_CLIENTE.AsVariant 		:= qryVenda.FieldByName('BANCO1_CLIENTE').asVariant;
         cdsOrcamentoENDERECO_CLIENTE.AsVariant 	:= qryVenda.FieldByName('ENDERECO_CLIENTE').asVariant;
         cdsOrcamentoBAIRRO_CLIENTE.AsVariant 		:= qryVenda.FieldByName('BAIRRO_CLIENTE').asVariant;
         cdsOrcamentoCEP_CLIENTE.AsVariant 			:= qryVenda.FieldByName('CEP_CLIENTE').asVariant;
         cdsOrcamentoCIDADE_CLIENTE.AsVariant	 	:= qryVenda.FieldByName('CIDADE_CLIENTE').asVariant;
         cdsOrcamentoTELEFONE_CLIENTE.AsVariant 	:= qryVenda.FieldByName('TELEFONE_CLIENTE').asVariant;
         cdsOrcamentoESTADO_CLIENTE.AsVariant 		:= qryVenda.FieldByName('ESTADO_CLIENTE').asVariant;
         cdsOrcamentoINSCRICAO_CLIENTE.AsVariant	:= qryVenda.FieldByName('INSCRICAO_CLIENTE').asVariant;

         cdsOrcamento.Post;
      end;

      qryItensVnd.Close;
      qryItensVnd.ParamByName('CODIGO_VENDA').AsInteger := Cod_lancamento;
      qryItensVnd.ParamByName('EMPRESA')     .AsString  := CodigoEmpresa1;
      qryItensVnd.Open;

      qryItensVnd.First;
      while not qryItensVnd.Eof do
      begin
         cdsItensOrc.Append;

         cdsItensOrcID_VENDA_ITEM.AsVariant       := qryItensVnd.FieldByName('ID_VENDA_ITEM').asVariant;
         cdsItensOrcCODIGO_IVENDA.AsVariant       := qryItensVnd.FieldByName('CODIGO_IVENDA').asVariant;
         cdsItensOrcPRODUTO_IVENDA.AsVariant      := qryItensVnd.FieldByName('PRODUTO_IVENDA').asVariant;
         cdsItensOrcDESCRICAO_IVENDAS.AsVariant   := qryItensVnd.FieldByName('DESCRICAO_IVENDAS').asVariant;
         cdsItensOrcVALORBRUTO_IVENDAS.AsVariant  := qryItensVnd.FieldByName('VALORBRUTO_IVENDAS').asVariant;
         cdsItensOrcQUANTIDADE_IVENDAS.AsVariant  := qryItensVnd.FieldByName('QUANTIDADE_IVENDAS').asVariant;
         cdsItensOrcGRADE_IVENDAS.AsVariant       := qryItensVnd.FieldByName('GRADE_IVENDAS').asVariant;
         cdsItensOrcPROMOCAO_IVENDAS.AsVariant    := qryItensVnd.FieldByName('PROMOCAO_IVENDAS').asVariant;
         cdsItensOrcSERIE_IVENDAS.AsVariant       := qryItensVnd.FieldByName('SERIE_IVENDAS').asVariant;
         cdsItensOrcDESCONTO_IVENDAS.AsVariant    := qryItensVnd.FieldByName('DESCONTO_IVENDAS').asVariant;
         cdsItensOrcICM_IVENDAS.AsVariant         := qryItensVnd.FieldByName('ICM_IVENDAS').asVariant;
         cdsItensOrcIPI_IVENDAS.AsVariant         := qryItensVnd.FieldByName('IPI_IVENDAS').asVariant;
         cdsItensOrcREDUTOR_IVENDAS.AsVariant     := qryItensVnd.FieldByName('REDUTOR_IVENDAS').asVariant;
         cdsItensOrcTRIBUTACAO_IVENDAS.AsVariant  := qryItensVnd.FieldByName('TRIBUTACAO_IVENDAS').asVariant;
         cdsItensOrcFISCAL_IVENDAS.AsVariant      := qryItensVnd.FieldByName('FISCAL_IVENDAS').asVariant;
         cdsItensOrcGARANTIA_IVENDAS.AsVariant    := qryItensVnd.FieldByName('GARANTIA_IVENDAS').asVariant;
         cdsItensOrcTECNICO_IVENDAS.AsVariant     := qryItensVnd.FieldByName('TECNICO_IVENDAS').asVariant;
         cdsItensOrcALTURA_IVENDAS.AsVariant      := qryItensVnd.FieldByName('ALTURA_IVENDAS').asVariant;
         cdsItensOrcLARGURA_IVENDAS.AsVariant     := qryItensVnd.FieldByName('LARGURA_IVENDAS').asVariant;
         cdsItensOrcCOMPRIMENTO_VENDAS.AsVariant  := qryItensVnd.FieldByName('COMPRIMENTO_VENDAS').asVariant;
         cdsItensOrcQTDE_VENDAS.AsVariant         := qryItensVnd.FieldByName('QTDE_VENDAS').asVariant;
         cdsItensOrcCOMPLEMENTO.AsVariant         := qryItensVnd.FieldByName('COMPLEMENTO').asVariant;
         cdsItensOrcCOD_EMPRESA.AsVariant         := qryItensVnd.FieldByName('COD_EMPRESA').asVariant;
         cdsItensOrcCLASSE_IVENDA.AsVariant       := qryItensVnd.FieldByName('CLASSE_IVENDA').asVariant;
         cdsItensOrcVALORTOTAL.AsVariant          := qryItensVnd.FieldByName('VALORTOTAL').asVariant;
         cdsItensOrcFABRICANTE_PRODUTO.AsVariant  := qryItensVnd.FieldByName('FABRICANTE_PRODUTO').asVariant;
         cdsItensOrcUNIDADE_PRODUTO.AsVariant     := qryItensVnd.FieldByName('UNIDADE_PRODUTO').asVariant;
         cdsItensOrcCODIGO_GRADE.AsVariant        := qryItensVnd.FieldByName('CODIGO_GRADE').asVariant;
         cdsItensOrcPRECO_CUSTO_PRODUTO.AsVariant := qryItensVnd.FieldByName('PRECO_CUSTO_PRODUTO').asVariant;
         cdsItensOrcCFOP.AsVariant                := qryItensVnd.FieldByName('CFOP').asVariant;
         cdsItensOrcFABRICA_IVENDAS.AsVariant     := qryItensVnd.FieldByName('FABRICA_IVENDAS').asVariant;
         cdsItensOrcFABRICA_PRODUTO.AsVariant     := qryItensVnd.FieldByName('FABRICA_PRODUTO').asVariant;

         cdsItensOrc.Post;
         qryItensVnd.Next;
      end;
   end;
end;

end.
