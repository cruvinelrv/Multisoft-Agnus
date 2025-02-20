unit uRL0327;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppModule, raCodMod, ppFormWrapper, ppRptExp, ppEndUsr, JvSpin, DB, Grids,
  DBGrids;

type
  TfrmRL0327 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label7: TLabel;
    edtSecao: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label2: TLabel;
    edtGrupo: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Label3: TLabel;
    edtFabricante: TJvValidateEdit;
    SpeedButton2: TSpeedButton;
    Edit3: TEdit;
    edtLocacao: TEdit;
    Label4: TLabel;
    edtTributacao: TJvValidateEdit;
    SpeedButton4: TSpeedButton;
    Edit4: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    cbxOrdem: TComboBox;
    cbxSeparador: TComboBox;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cbxZerados: TComboBox;
    cbxTipPreco: TComboBox;
    Label14: TLabel;
    edtPerValor: TJvValidateEdit;
    cbxResumo: TComboBox;
    cbxModelo: TComboBox;
    edtData: TJvDateEdit;
    edtCabecalho: TEdit;
    Label15: TLabel;
    rptRel_Grupo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    lblEmpresa: TppLabel;
    ppLine1: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppLine2: TppLine;
    ppDetailBand2: TppDetailBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    codigo01: TppLabel;
    fabricante01: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    ppLine5: TppLine;
    ppLabel15: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    saldo_TransG: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppLine6: TppLine;
    ppLine7: TppLine;
    dbcodigo01: TppDBText;
    dbfabricante01: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    Preco_ProdutoG: TppVariable;
    Total_ProdutoG: TppVariable;
    ppLabel13: TppLabel;
    ppLine8: TppLine;
    ppLabel16: TppLabel;
    SubTotalG: TppVariable;
    SubTotal_GeralG: TppVariable;
    ppLabel17: TppLabel;
    ppLine9: TppLine;
    ppVariable1G: TppVariable;
    ppLabel18: TppLabel;
    Total_GrupoG: TppVariable;
    ppFooterBand1: TppFooterBand;
    edtPagina: TJvSpinEdit;
    pagina: TppLabel;
    rptRel_Fabricante: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel19: TppLabel;
    ppLine10: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    codigo02: TppLabel;
    fabricante02: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine14: TppLine;
    ppLabel36: TppLabel;
    ppDBText10: TppDBText;
    ppVariable1: TppVariable;
    ppLabel37: TppLabel;
    ppDetailBand1: TppDetailBand;
    dbcodigo02: TppDBText;
    dbfabricante02: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppFooterBand2: TppFooterBand;
    ppLine15: TppLine;
    ppLabel38: TppLabel;
    ppVariable4: TppVariable;
    ppVariable5: TppVariable;
    ppLabel39: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine18: TppLine;
    ppLabel40: TppLabel;
    ppVariable6: TppVariable;
    ppLabel41: TppLabel;
    ppVariable7: TppVariable;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    rptRel_Tributacao: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel42: TppLabel;
    ppLine19: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    codigo03: TppLabel;
    fabricante03: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine23: TppLine;
    ppLabel59: TppLabel;
    ppDBText19: TppDBText;
    ppVariable8: TppVariable;
    ppLabel60: TppLabel;
    ppDetailBand3: TppDetailBand;
    dbcodigo03: TppDBText;
    dbfabricante03: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppVariable9: TppVariable;
    ppVariable10: TppVariable;
    ppFooterBand3: TppFooterBand;
    ppLine24: TppLine;
    ppLabel61: TppLabel;
    ppVariable11: TppVariable;
    ppVariable12: TppVariable;
    ppLabel62: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine27: TppLine;
    ppLabel63: TppLabel;
    ppVariable13: TppVariable;
    ppLabel64: TppLabel;
    ppVariable14: TppVariable;
    raCodeModule3: TraCodeModule;
    ppParameterList3: TppParameterList;
    rptRel_Nenhum: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel65: TppLabel;
    ppLine28: TppLine;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    codigo00: TppLabel;
    fabricante00: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine32: TppLine;
    ppLabel82: TppLabel;
    ppDBText28: TppDBText;
    ppVariable15: TppVariable;
    ppLabel83: TppLabel;
    ppDetailBand4: TppDetailBand;
    dbcodigo00: TppDBText;
    dbfabricante00: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppVariable16: TppVariable;
    ppVariable17: TppVariable;
    ppFooterBand4: TppFooterBand;
    ppLine33: TppLine;
    ppVariable19: TppVariable;
    ppLabel85: TppLabel;
    raCodeModule4: TraCodeModule;
    ppParameterList4: TppParameterList;
    rptRel_GrupoM2: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel84: TppLabel;
    ppLine34: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLine38: TppLine;
    ppLabel102: TppLabel;
    ppVariable18: TppVariable;
    ppLabel103: TppLabel;
    ppDetailBand5: TppDetailBand;
    dbcodigo05: TppDBText;
    dbfabricante05: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppVariable20: TppVariable;
    ppVariable21: TppVariable;
    ppFooterBand5: TppFooterBand;
    ppLine39: TppLine;
    ppLabel104: TppLabel;
    ppVariable22: TppVariable;
    ppVariable23: TppVariable;
    ppLabel105: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine42: TppLine;
    ppLabel106: TppLabel;
    ppVariable24: TppVariable;
    ppLabel107: TppLabel;
    ppVariable25: TppVariable;
    raCodeModule5: TraCodeModule;
    ppParameterList5: TppParameterList;
    rptRel_NenhumM2: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppLabel95: TppLabel;
    ppLine43: TppLine;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine45: TppLine;
    ppLine46: TppLine;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLine47: TppLine;
    ppLabel118: TppLabel;
    ppVariable26: TppVariable;
    ppLabel119: TppLabel;
    ppDetailBand6: TppDetailBand;
    dbcodigo04: TppDBText;
    dbfabricante04: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppVariable27: TppVariable;
    ppVariable28: TppVariable;
    ppFooterBand6: TppFooterBand;
    ppLine48: TppLine;
    ppVariable29: TppVariable;
    ppLabel120: TppLabel;
    raCodeModule6: TraCodeModule;
    ppParameterList6: TppParameterList;
    ppHeaderBand7: TppHeaderBand;
    ppLabel111: TppLabel;
    ppLine44: TppLine;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLine52: TppLine;
    ppLabel131: TppLabel;
    ppVariable30: TppVariable;
    ppLabel132: TppLabel;
    ppDetailBand7: TppDetailBand;
    dbcodigo06: TppDBText;
    dbfabricante06: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppVariable31: TppVariable;
    ppVariable32: TppVariable;
    ppFooterBand7: TppFooterBand;
    ppLine53: TppLine;
    ppLabel133: TppLabel;
    ppVariable33: TppVariable;
    ppVariable34: TppVariable;
    ppLabel134: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine56: TppLine;
    ppLabel135: TppLabel;
    ppVariable35: TppVariable;
    ppLabel136: TppLabel;
    ppVariable36: TppVariable;
    raCodeModule7: TraCodeModule;
    ppParameterList7: TppParameterList;
    rptRel_FabricanteM2: TppReport;
    rptRel_TributacaoM2: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppLabel124: TppLabel;
    ppLine49: TppLine;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLine60: TppLine;
    ppLabel147: TppLabel;
    ppVariable37: TppVariable;
    ppLabel148: TppLabel;
    ppDetailBand8: TppDetailBand;
    dbcodigo07: TppDBText;
    dbfabricante07: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppVariable38: TppVariable;
    ppVariable39: TppVariable;
    ppFooterBand8: TppFooterBand;
    ppLine61: TppLine;
    ppLabel149: TppLabel;
    ppVariable40: TppVariable;
    ppVariable41: TppVariable;
    ppLabel150: TppLabel;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine64: TppLine;
    ppLabel151: TppLabel;
    ppVariable42: TppVariable;
    ppLabel152: TppLabel;
    ppVariable43: TppVariable;
    raCodeModule8: TraCodeModule;
    ppParameterList8: TppParameterList;
    rptRel_NenhumM3: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppLabel140: TppLabel;
    ppLine57: TppLine;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLine65: TppLine;
    ppLine66: TppLine;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLine67: TppLine;
    ppLabel156: TppLabel;
    ppVariable44: TppVariable;
    ppLabel157: TppLabel;
    ppDetailBand9: TppDetailBand;
    dbcodigo08: TppDBText;
    dbfabricante08: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppVariable45: TppVariable;
    ppVariable46: TppVariable;
    ppFooterBand9: TppFooterBand;
    ppLine68: TppLine;
    ppVariable47: TppVariable;
    ppLabel158: TppLabel;
    raCodeModule9: TraCodeModule;
    ppParameterList9: TppParameterList;
    rptRel_GrupoM3: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppLabel159: TppLabel;
    ppLine69: TppLine;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppLine73: TppLine;
    ppLabel169: TppLabel;
    ppVariable48: TppVariable;
    ppLabel170: TppLabel;
    ppDetailBand10: TppDetailBand;
    dbcodigo09: TppDBText;
    dbfabricante09: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppVariable49: TppVariable;
    ppVariable50: TppVariable;
    ppFooterBand10: TppFooterBand;
    ppLine74: TppLine;
    ppLabel171: TppLabel;
    ppVariable51: TppVariable;
    ppVariable52: TppVariable;
    ppLabel172: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine77: TppLine;
    ppLabel173: TppLabel;
    ppVariable53: TppVariable;
    ppLabel174: TppLabel;
    ppVariable54: TppVariable;
    raCodeModule10: TraCodeModule;
    ppParameterList10: TppParameterList;
    rptRel_FabricanteM3: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppLabel175: TppLabel;
    ppLine78: TppLine;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLine81: TppLine;
    ppLabel185: TppLabel;
    ppVariable55: TppVariable;
    ppLabel186: TppLabel;
    ppDetailBand11: TppDetailBand;
    dbcodigo10: TppDBText;
    dbfabricante10: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppVariable56: TppVariable;
    ppVariable57: TppVariable;
    ppFooterBand11: TppFooterBand;
    ppLine82: TppLine;
    ppLabel187: TppLabel;
    ppVariable58: TppVariable;
    ppVariable59: TppVariable;
    ppLabel188: TppLabel;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLine85: TppLine;
    ppLabel189: TppLabel;
    ppVariable60: TppVariable;
    ppLabel190: TppLabel;
    ppVariable61: TppVariable;
    raCodeModule11: TraCodeModule;
    ppParameterList11: TppParameterList;
    rptRel_TributacaoM3: TppReport;
    ppHeaderBand12: TppHeaderBand;
    ppLabel191: TppLabel;
    ppLine86: TppLine;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLine89: TppLine;
    ppLabel201: TppLabel;
    ppVariable62: TppVariable;
    ppLabel202: TppLabel;
    ppDetailBand12: TppDetailBand;
    dbcodigo11: TppDBText;
    dbfabricante11: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppVariable63: TppVariable;
    ppVariable64: TppVariable;
    ppFooterBand12: TppFooterBand;
    ppLine90: TppLine;
    ppLabel203: TppLabel;
    ppVariable65: TppVariable;
    ppVariable66: TppVariable;
    ppLabel204: TppLabel;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppLine93: TppLine;
    ppLabel205: TppLabel;
    ppVariable67: TppVariable;
    ppLabel206: TppLabel;
    ppVariable68: TppVariable;
    raCodeModule12: TraCodeModule;
    ppParameterList12: TppParameterList;
    barra00: TppLabel;
    dbbarra00: TppDBText;
    Barra01: TppLabel;
    dbbarra01: TppDBText;
    barra02: TppLabel;
    dbbarra02: TppDBText;
    barra03: TppLabel;
    dbBarra03: TppDBText;
    dbbarra04: TppDBText;
    dbbarra05: TppDBText;
    dbbarra06: TppDBText;
    dbbarra07: TppDBText;
    dbbarra08: TppDBText;
    dbbarra09: TppDBText;
    dbbarra10: TppDBText;
    dbbarra11: TppDBText;
    ppLabel_Geral: TppLabel;
    ppVariable_Geral: TppVariable;
    ppLabel7: TppLabel;
    ppVariable69: TppVariable;
    ppLabel8: TppLabel;
    ppVariable70: TppVariable;
    ppLabel29: TppLabel;
    ppVariable71: TppVariable;
    ppLabel30: TppLabel;
    ppVariable72: TppVariable;
    ppLabel52: TppLabel;
    ppVariable73: TppVariable;
    ppLabel53: TppLabel;
    ppVariable74: TppVariable;
    ppLabel75: TppLabel;
    ppVariable75: TppVariable;
    ppLabel76: TppLabel;
    ppVariable76: TppVariable;
    ppLabel207: TppLabel;
    ppVariable77: TppVariable;
    ppLabel208: TppLabel;
    ppVariable78: TppVariable;
    ppLabel209: TppLabel;
    ppVariable79: TppVariable;
    rptRel_NenhumR: TppReport;
    ppHeaderBand13: TppHeaderBand;
    ppLabel210: TppLabel;
    ppLine94: TppLine;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppLabel219: TppLabel;
    ppLine97: TppLine;
    ppLabel220: TppLabel;
    ppVariable80: TppVariable;
    ppLabel221: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppFooterBand13: TppFooterBand;
    ppLine98: TppLine;
    ppLabel223: TppLabel;
    ppVariable84: TppVariable;
    raCodeModule13: TraCodeModule;
    ppParameterList13: TppParameterList;
    ppLine99: TppLine;
    ppLabel222: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    rptRel_GrupoR: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppLabel226: TppLabel;
    ppLine100: TppLine;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppLabel229: TppLabel;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLabel230: TppLabel;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLine103: TppLine;
    ppLabel236: TppLabel;
    ppVariable81: TppVariable;
    ppLabel237: TppLabel;
    ppLine104: TppLine;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppFooterBand14: TppFooterBand;
    ppLine105: TppLine;
    ppLabel241: TppLabel;
    ppVariable82: TppVariable;
    raCodeModule14: TraCodeModule;
    ppParameterList14: TppParameterList;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppVariable83: TppVariable;
    ppLine106: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppVariable86: TppVariable;
    ppVariable85: TppVariable;
    rptRel_FabricanteR: TppReport;
    ppHeaderBand15: TppHeaderBand;
    ppLabel242: TppLabel;
    ppLine107: TppLine;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLine108: TppLine;
    ppLine109: TppLine;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLine110: TppLine;
    ppLabel252: TppLabel;
    ppVariable87: TppVariable;
    ppLabel253: TppLabel;
    ppLine111: TppLine;
    ppLabel254: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppFooterBand15: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine112: TppLine;
    ppLabel257: TppLabel;
    ppVariable88: TppVariable;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppVariable89: TppVariable;
    ppLine113: TppLine;
    ppVariable90: TppVariable;
    ppVariable91: TppVariable;
    raCodeModule15: TraCodeModule;
    ppParameterList15: TppParameterList;
    rptRel_TributacaoR: TppReport;
    ppHeaderBand16: TppHeaderBand;
    ppLabel258: TppLabel;
    ppLine114: TppLine;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppLabel267: TppLabel;
    ppLine117: TppLine;
    ppLabel268: TppLabel;
    ppVariable92: TppVariable;
    ppLabel269: TppLabel;
    ppLine118: TppLine;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppFooterBand16: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLine119: TppLine;
    ppLabel273: TppLabel;
    ppVariable93: TppVariable;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppVariable94: TppVariable;
    ppLine120: TppLine;
    ppVariable95: TppVariable;
    ppVariable96: TppVariable;
    raCodeModule16: TraCodeModule;
    ppParameterList16: TppParameterList;
    ppSummaryBand4: TppSummaryBand;
    ppVariable97: TppVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtSecaoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtFabricanteExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtTributacaoExit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure lblParam2GetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure paginaGetText(Sender: TObject; var Text: String);
    procedure ppLabel37GetText(Sender: TObject; var Text: String);
    procedure ppLabel83GetText(Sender: TObject; var Text: String);
    procedure ppLabel60GetText(Sender: TObject; var Text: String);
    procedure ppLabel103GetText(Sender: TObject; var Text: String);
    procedure ppLabel119GetText(Sender: TObject; var Text: String);
    procedure ppLabel132GetText(Sender: TObject; var Text: String);
    procedure ppLabel148GetText(Sender: TObject; var Text: String);
    procedure ppLabel157GetText(Sender: TObject; var Text: String);
    procedure ppLabel170GetText(Sender: TObject; var Text: String);
    procedure ppLabel186GetText(Sender: TObject; var Text: String);
    procedure ppLabel202GetText(Sender: TObject; var Text: String);
    procedure ppVariable_GeralCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable69Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable70Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable71Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable72Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable73Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable74Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable75Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable76Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable77Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable78Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable79Calc(Sender: TObject; var Value: Variant);
    procedure ppLabel221GetText(Sender: TObject; var Text: String);
    procedure ppLabel237GetText(Sender: TObject; var Text: String);
    procedure ppLabel253GetText(Sender: TObject; var Text: String);
    procedure ppLabel269GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Codigo_Barra(pParam : Boolean);
  public
    { Public declarations }
    Total_Produto, Preco_Produto : Double;
  end;

var
  frmRL0327: TfrmRL0327;

implementation

uses udmRL0327, uConsulta, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0327.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0327.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0327.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0327.FormCreate(Sender: TObject);
begin
   dmRL0327 := TdmRL0327.Create(Self);
end;

procedure TfrmRL0327.edtSecaoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtSecao, Edit1, 'P_SECAO', 'CODIGO_SECAO', 'DESCRICAO_SECAO') then
   begin
      edtSecao.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0327.SpeedButton3Click(Sender: TObject);
begin
   edtSecao.SetFocus;

   ConsultaSecao(edtSecao);
end;

procedure TfrmRL0327.edtGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtGrupo, Edit2, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0327.SpeedButton1Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0327.edtFabricanteExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtFabricante, Edit3, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
   begin
      edtFabricante.SetFocus;
      Exit;
   end
   else
   begin
      if Tipo_Cliente = 0 then
      begin
         Edit3.Clear;
         Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
         edtFabricante.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0327.SpeedButton2Click(Sender: TObject);
begin
   edtFabricante.SetFocus;

   ConsultaFornecedor(edtFabricante);
end;

procedure TfrmRL0327.edtTributacaoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtTributacao, Edit4, 'E_SITUACAO', 'CODIGO_SITUACAO', 'DESCRICAO_SITUACAO') then
   begin
      edtTributacao.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0327.SpeedButton4Click(Sender: TObject);
begin
   edtTributacao.SetFocus;

   ConsultaSituacaoTributaria(edtTributacao);
end;

procedure TfrmRL0327.btnImprimirClick(Sender: TObject);
Var
  Sql1, Ordenador : String;
begin
   Ordenador     := '';
   Preco_Produto := 0;
   Total_Produto := 0;

   Sql1 := 'select p. *, g.descricao_grupo, s.descricao_subgrupo, c.nome_cliente as Nome_Fabricante, '+
           '(p.estoque_produto * p.preco_lista_produto) as Total_Pre_Ven, si.descricao_situacao, '+
           '(p.estoque_produto * p.preco_custo_produto) as Total_Pre_Cus, '+
           '(p.estoque_produto * p.preco_compra_produto) as Total_Pre_Com, '+
           'Case when (not p.prat1_produto is null) or (p.prat1_produto <> '''') then p.prat1_produto '+
           'else p.prat2_produto '+
           'end as Prateleira '+
           'from P_PRODUTOS p '+
           'left outer join p_grupos g on (p.grupo_produto = g.codigo_grupo) '+
           'left outer join p_subgrupo s on (p.subgrupo_produto = s.codigo_subgrupo) '+
           'left outer join e_cliente c on (p.fabrica_produto = c.codigo_cliente) '+
           'left outer join p_secao e on (g.codigo_secao_grupo = e.codigo_secao) '+
           'left outer join e_situacao si on (p.trib_dentro_produto = si.codigo_situacao) '+
           'where p.codigo_produto > 0 '+
           'and p.desuso_produto <> ''S'''+
           'and p.classe_produto = ''1''';

   if edtSecao.Value > 0 then
      Sql1 := Sql1 + ' and e.codigo_secao = ' + QuotedStr(edtSecao.EditText);

   if edtGrupo.Value > 0 then
      Sql1 := Sql1 + ' and p.grupo_produto = ' + QuotedStr(edtGrupo.EditText);

   if edtFabricante.Value > 0 then
      Sql1 := Sql1 + ' and p.fabrica_produto = ' + QuotedStr(edtFabricante.EditText);

   if edtTributacao.Value > 0 then
      Sql1 := Sql1 + ' and p.trib_dentro_produto = '+ QuotedStr(edtTributacao.EditText);

   if edtLocacao.Text <> '' then
      Sql1 := Sql1 + ' and ((p.prat1_produto = '+ QuotedStr(edtLocacao.Text) +') or (p.prat2_produto = '+ QuotedStr(edtLocacao.Text) +' )) ';

   if cbxZerados.ItemIndex = 0 then
      Sql1 := Sql1 + ' and p.estoque_produto > 0';
   

   with dmRL0327 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsProdutos.Close;
      cdsProdutos.CommandText := Sql1;
      cdsProdutos.Open;

      Case cbxSeparador.ItemIndex of
         0: Ordenador := '';
         1: Ordenador := 'grupo_produto; ';
         2: Ordenador := 'fabrica_produto; ';
         3: Ordenador := 'trib_dentro_produto; ';
      end;

      Case cbxOrdem.ItemIndex of
         0: cdsProdutos.IndexFieldNames := Ordenador + 'codigo_produto';
         1: cdsProdutos.IndexFieldNames := Ordenador + 'descricao_produto';
         2: cdsProdutos.IndexFieldNames := Ordenador + 'Prateleira';
         3: cdsProdutos.IndexFieldNames := Ordenador + 'fabrica_produto';
         4: cdsProdutos.IndexFieldNames := Ordenador + 'barra_produto';
      end;

      cdsTipoVenda.Close;
      cdsTipoVenda.CreateDataSet;

      cdsTipoVenda.Append;

      Case cbxTipPreco.ItemIndex of
         0:
         begin
            cdsTipoVendaCODIGO.AsInteger          := 1;
            cdsTipoVendaTIPO_PRECO_VENDA.AsString := 'Valor (ven)';
         end;

         1:
         begin
             cdsTipoVendaCODIGO.AsInteger          := 2;
             cdsTipoVendaTIPO_PRECO_VENDA.AsString := 'Valor (cus)';
         end;

         2:
         begin
             cdsTipoVendaCODIGO.AsInteger          := 3;
             cdsTipoVendaTIPO_PRECO_VENDA.AsString := 'Valor (com)';
         end;
      end;

      cdsTipoVendaPER_AUMENTO.AsFloat := edtPerValor.AsFloat;

      cdsTipoVenda.Post;

      if cbxOrdem.ItemIndex = 4 then
         Codigo_Barra(True)
      else
         Codigo_Barra(False);

      frmProcesso2.Close;

      Case cbxResumo.ItemIndex of
         0:
         begin
            Case cbxModelo.ItemIndex of
               0:
               begin // modelo 1
                  Case cbxSeparador.ItemIndex of
                     0: rptRel_Nenhum.Print;
                     1: rptRel_Grupo.Print;
                     2: rptRel_Fabricante.Print;
                     3: rptRel_Tributacao.Print;
                  end;
               end;

               1:
               begin // modelo 2
                  Case cbxSeparador.ItemIndex of
                     0: rptRel_NenhumM2.Print;
                     1: rptRel_GrupoM2.Print;
                     2: rptRel_FabricanteM2.Print;
                     3: rptRel_TributacaoM2.Print;
                  end;
               end;

               2:
               begin // modelo 3
                  Case cbxSeparador.ItemIndex of
                     0: rptRel_NenhumM3.Print;
                     1: rptRel_GrupoM3.Print;
                     2: rptRel_FabricanteM3.Print;
                     3: rptRel_TributacaoM3.Print;
                  end;
               end;
            end;
         end;

         1:
         begin // apenas resumo
            Case cbxSeparador.ItemIndex of  
               0: rptRel_NenhumR.Print;
               1: rptRel_GrupoR.Print;
               2: rptRel_FabricanteR.Print;
               3: rptRel_TributacaoR.Print;
            end;
         end;
      end;
   end;
end;

procedure TfrmRL0327.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0327.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Text := InscEstadual1;
end;

procedure TfrmRL0327.lblParam2GetText(Sender: TObject; var Text: String);
begin
   Text := CGCEmpresa1;
end;

procedure TfrmRL0327.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := edtData.Text;
end;

procedure TfrmRL0327.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   if edtCabecalho.Text <> '' then
      Text := edtCabecalho.Text;
end;

procedure TfrmRL0327.paginaGetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_Grupo.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel37GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_Fabricante.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel83GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_Nenhum.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel60GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_Tributacao.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel103GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_GrupoM3.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel119GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_NenhumM2.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel132GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_FabricanteM2.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel148GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_TributacaoM2.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel157GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_NenhumM3.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel170GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_GrupoM3.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel186GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_FabricanteM3.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel202GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_TributacaoM3.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.Codigo_Barra(pParam: Boolean);
begin
   if pParam = True then
   begin
      barra00.Visible    := True;
      dbbarra00.Visible  := True;
      Barra01.Visible    := True;
      dbbarra01.Visible  := True;
      barra02.Visible    := True;
      dbbarra02.Visible  := True;
      barra03.Visible    := True;
      dbBarra03.Visible  := True;

      codigo00.Visible   := False;
      dbcodigo00.Visible := False;
      codigo01.Visible   := False;
      dbcodigo01.Visible := False;
      codigo02.Visible   := False;
      dbcodigo02.Visible := False;
      codigo03.Visible   := False;
      dbcodigo03.Visible := False;
      dbcodigo04.Visible := False;
      dbcodigo05.Visible := False;
      dbcodigo06.Visible := False;
      dbcodigo07.Visible := False;
      dbcodigo08.Visible := False;
      dbcodigo09.Visible := False;
      dbcodigo10.Visible := False;
      dbcodigo11.Visible := False;
      fabricante00.Visible   := False;
      dbfabricante00.Visible := False;
      fabricante01.Visible   := False;
      dbfabricante01.Visible := False;
      fabricante02.Visible   := False;
      dbfabricante02.Visible := False;
      fabricante03.Visible   := False;
      dbfabricante03.Visible := False;
      dbfabricante04.Visible := False;
      dbfabricante05.Visible := False;
      dbfabricante06.Visible := False;
      dbfabricante07.Visible := False;
      dbfabricante08.Visible := False;
      dbfabricante09.Visible := False;
      dbfabricante10.Visible := False;
      dbfabricante11.Visible := False;
   end
   else
   begin
      barra00.Visible    := False;
      dbbarra00.Visible  := False;
      Barra01.Visible    := False;
      dbbarra01.Visible  := False;
      barra02.Visible    := False;
      dbbarra02.Visible  := False;
      barra03.Visible    := False;
      dbBarra03.Visible  := False;

      codigo00.Visible   := True;
      dbcodigo00.Visible := True;
      codigo01.Visible   := True;
      dbcodigo01.Visible := True;
      codigo02.Visible   := True;
      dbcodigo02.Visible := True;
      codigo03.Visible   := True;
      dbcodigo03.Visible := True;
      dbcodigo04.Visible := True;
      dbcodigo05.Visible := True;
      dbcodigo06.Visible := True;
      dbcodigo07.Visible := True;
      dbcodigo08.Visible := True;
      dbcodigo09.Visible := True;
      dbcodigo10.Visible := True;
      dbcodigo11.Visible := True;
      fabricante00.Visible   := True;
      dbfabricante00.Visible := True;
      fabricante01.Visible   := True;
      dbfabricante01.Visible := True;
      fabricante02.Visible   := True;
      dbfabricante02.Visible := True;
      fabricante03.Visible   := True;
      dbfabricante03.Visible := True;
      dbfabricante04.Visible := True;
      dbfabricante05.Visible := True;
      dbfabricante06.Visible := True;
      dbfabricante07.Visible := True;
      dbfabricante08.Visible := True;
      dbfabricante09.Visible := True;
      dbfabricante10.Visible := True;
      dbfabricante11.Visible := True;
   end;
end;

procedure TfrmRL0327.ppVariable_GeralCalc(Sender: TObject;
  var Value: Variant);
begin
   if rptRel_Nenhum.PageNo = rptRel_Nenhum.PageCount then
   begin
      ppVariable_Geral.Visible := True;
      ppLabel_Geral.Visible    := True;
      ppVariable19.Visible     := False;
      ppLabel85.Visible        := False;
   end
   else
   begin
      ppVariable_Geral.Visible := False;
      ppLabel_Geral.Visible    := False;
      ppVariable19.Visible     := True;
      ppLabel85.Visible        := True;
   end;
end;

procedure TfrmRL0327.ppVariable69Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_Grupo.PageNo = rptRel_Grupo.PageCount then
   begin
      ppVariable69.Visible    := True;
      ppLabel7.Visible        := True;
      SubTotal_GeralG.Visible := False;
      ppLabel16.Visible       := False;
      ppLabel13.Visible       := False;
      SubTotalG.Visible       := False;
   end
   else
   begin
      ppVariable69.Visible    := False;
      ppLabel7.Visible        := False;
      SubTotal_GeralG.Visible := True;
      ppLabel16.Visible       := True;
      ppLabel13.Visible       := True;
      SubTotalG.Visible       := True;
   end;
end;

procedure TfrmRL0327.ppVariable70Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_Fabricante.PageNo = rptRel_Fabricante.PageCount then
   begin
      ppVariable70.Visible := True;
      ppLabel8.Visible     := True;
      ppVariable5.Visible  := False;
      ppLabel39.Visible    := False;
      ppLabel38.Visible    := False;
      ppVariable4.Visible  := False;
   end
   else
   begin
      ppVariable70.Visible := False;
      ppLabel8.Visible     := False;
      ppVariable5.Visible  := True;
      ppLabel39.Visible    := True;
      ppLabel38.Visible    := True;
      ppVariable4.Visible  := True;
   end;
end;

procedure TfrmRL0327.ppVariable71Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_Tributacao.PageNo = rptRel_Tributacao.PageCount then
   begin
      ppVariable71.Visible := True;
      ppLabel29.Visible    := True;
      ppVariable12.Visible := False;
      ppLabel62.Visible    := False;
      ppLabel61.Visible    := False;
      ppVariable11.Visible := False;
   end
   else
   begin
      ppVariable71.Visible := False;
      ppLabel29.Visible    := False;
      ppVariable12.Visible := True;
      ppLabel62.Visible    := True;
      ppLabel61.Visible    := True;
      ppVariable11.Visible := True;
   end;
end;

procedure TfrmRL0327.ppVariable72Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_NenhumM2.PageNo = rptRel_NenhumM2.PageCount then
   begin
      ppVariable72.Visible := True;
      ppLabel30.Visible    := True;
      ppVariable29.Visible := False;
      ppLabel120.Visible   := False;
   end
   else
   begin
      ppVariable72.Visible := False;
      ppLabel30.Visible    := False;
      ppVariable29.Visible := True;
      ppLabel120.Visible   := True;
   end;
end;

procedure TfrmRL0327.ppVariable73Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_GrupoM2.PageNo = rptRel_GrupoM2.PageCount then
   begin
      ppVariable73.Visible := True;
      ppLabel52.Visible    := True;
      ppVariable23.Visible := False;
      ppLabel105.Visible   := False;
      ppLabel104.Visible   := False;
      ppVariable22.Visible := False;
   end
   else
   begin
      ppVariable73.Visible := False;
      ppLabel52.Visible    := False;
      ppVariable23.Visible := True;
      ppLabel105.Visible   := True;
      ppLabel104.Visible   := True;
      ppVariable22.Visible := True;
   end;
end;

procedure TfrmRL0327.ppVariable74Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_FabricanteM2.PageNo = rptRel_FabricanteM2.PageCount then
   begin
      ppVariable74.Visible := True;
      ppLabel53.Visible    := True;
      ppVariable34.Visible := False;
      ppLabel134.Visible   := False;
      ppLabel133.Visible   := False;
      ppVariable33.Visible := False;
   end
   else
   begin
      ppVariable74.Visible := False;
      ppLabel53.Visible    := False;
      ppVariable34.Visible := True;
      ppLabel134.Visible   := True;
      ppLabel133.Visible   := True;
      ppVariable33.Visible := True;
   end;
end;

procedure TfrmRL0327.ppVariable75Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_TributacaoM2.PageNo = rptRel_TributacaoM2.PageCount then
   begin
      ppVariable75.Visible := True;
      ppLabel75.Visible    := True;
      ppVariable41.Visible := False;
      ppLabel150.Visible   := False;
      ppLabel149.Visible   := False;
      ppVariable40.Visible := False;
   end
   else
   begin
      ppVariable75.Visible := False;
      ppLabel75.Visible    := False;
      ppVariable41.Visible := True;
      ppLabel150.Visible   := True;
      ppLabel149.Visible   := True;
      ppVariable40.Visible := True;
   end;
end;

procedure TfrmRL0327.ppVariable76Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_NenhumM3.PageNo = rptRel_NenhumM3.PageCount then
   begin
      ppVariable76.Visible := True;
      ppLabel76.Visible    := True;
      ppVariable47.Visible := False;
      ppLabel158.Visible   := False;
   end
   else
   begin
      ppVariable76.Visible := False;
      ppLabel76.Visible    := False;
      ppVariable47.Visible := True;
      ppLabel158.Visible   := True;
   end;
end;

procedure TfrmRL0327.ppVariable77Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_GrupoM3.PageNo = rptRel_GrupoM3.PageCount then
   begin
      ppVariable77.Visible := True;
      ppLabel207.Visible   := True;
      ppVariable52.Visible := False;
      ppLabel172.Visible   := False;
      ppLabel171.Visible   := False;
      ppVariable51.Visible := False;
   end
   else
   begin
      ppVariable77.Visible := False;
      ppLabel207.Visible   := False;
      ppVariable52.Visible := True;
      ppLabel172.Visible   := True;
      ppLabel171.Visible   := True;
      ppVariable51.Visible := True;
   end;
end;

procedure TfrmRL0327.ppVariable78Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_FabricanteM3.PageNo = rptRel_FabricanteM3.PageCount then
   begin
      ppVariable78.Visible := True;
      ppLabel208.Visible   := True;
      ppVariable59.Visible := False;
      ppLabel188.Visible   := False;
      ppLabel187.Visible   := False;
      ppVariable58.Visible := False;
   end
   else
   begin
      ppVariable78.Visible := False;
      ppLabel208.Visible   := False;
      ppVariable59.Visible := True;
      ppLabel188.Visible   := True;
      ppLabel187.Visible   := True;
      ppVariable58.Visible := True;
   end;
end;

procedure TfrmRL0327.ppVariable79Calc(Sender: TObject; var Value: Variant);
begin
   if rptRel_TributacaoM3.PageNo = rptRel_TributacaoM3.PageCount then
   begin
      ppVariable79.Visible := True;
      ppLabel209.Visible   := True;
      ppVariable66.Visible := False;
      ppLabel204.Visible   := False;
      ppLabel203.Visible   := False;
      ppVariable65.Visible := False;
   end
   else
   begin
      ppVariable79.Visible := False;
      ppLabel209.Visible   := False;
      ppVariable66.Visible := True;
      ppLabel204.Visible   := True;
      ppLabel203.Visible   := True;
      ppVariable65.Visible := True;
   end;
end;

procedure TfrmRL0327.ppLabel221GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_NenhumR.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel237GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_GrupoR.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel253GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_FabricanteR.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.ppLabel269GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(IntToStr((rptRel_TributacaoR.PageNo + edtPagina.AsInteger) - 1), 4);
end;

procedure TfrmRL0327.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
