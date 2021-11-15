unit uRL0326;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, ppEndUsr;

type
  TfrmRL0326 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edtSecao: TJvValidateEdit;
    Edit1: TEdit;
    edtGrupo: TJvValidateEdit;
    Edit2: TEdit;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    edtFabricante: TJvValidateEdit;
    Edit3: TEdit;
    edtLocacao: TEdit;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    cbxOrdem: TComboBox;
    cbxSeparador: TComboBox;
    cbxGrade: TComboBox;
    Label9: TLabel;
    cbxModelo: TComboBox;
    Label10: TLabel;
    cbxZerado: TComboBox;
    rptMod_01: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa: TppLabel;
    ppLine1: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppLine2: TppLine;
    lblData: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    ppSubReportGrade2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel52: TppLabel;
    ppLabel76: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine12: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    rpt_grupo_fornecedor_01: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine8: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine9: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLine15: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppLine16: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    rpt_grupo_grupo_01: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppSummaryBand5: TppSummaryBand;
    ppLine23: TppLine;
    ppSummaryBand6: TppSummaryBand;
    ppLine24: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText19: TppDBText;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel40: TppLabel;
    rptMod_02: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLine25: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine26: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel57: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine28: TppLine;
    ppSubReport3: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLine31: TppLine;
    ppSummaryBand8: TppSummaryBand;
    ppLine32: TppLine;
    rpt_grupo_fornecedor_02: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel56: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine27: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLine33: TppLine;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLine34: TppLine;
    ppSubReport4: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    ppLine37: TppLine;
    ppSummaryBand10: TppSummaryBand;
    ppLine38: TppLine;
    rpt_grupo_grupo_02: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLine39: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLine40: TppLine;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine41: TppLine;
    ppSubReport5: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppSummaryBand11: TppSummaryBand;
    ppLine44: TppLine;
    ppSummaryBand12: TppSummaryBand;
    ppLine45: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText38: TppDBText;
    ppLabel90: TppLabel;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine35: TppLine;
    rptMod_03: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLine36: TppLine;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine42: TppLine;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLine43: TppLine;
    ppSubReport6: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppSummaryBand13: TppSummaryBand;
    ppLine47: TppLine;
    ppSummaryBand14: TppSummaryBand;
    ppLine48: TppLine;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLine49: TppLine;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLine46: TppLine;
    ppLine50: TppLine;
    rpt_grupo_fornecedor_03: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppSystemVariable15: TppSystemVariable;
    ppSystemVariable16: TppSystemVariable;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLine51: TppLine;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLine52: TppLine;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLine53: TppLine;
    ppSubReport7: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppSummaryBand15: TppSummaryBand;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBText54: TppDBText;
    ppSummaryBand16: TppSummaryBand;
    ppLine58: TppLine;
    rpt_grupo_grupo_03: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppDetailBand17: TppDetailBand;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppLine61: TppLine;
    ppSubReport8: TppSubReport;
    ppChildReport9: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppDetailBand18: TppDetailBand;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppLine62: TppLine;
    ppLine63: TppLine;
    ppSummaryBand17: TppSummaryBand;
    ppLine64: TppLine;
    ppLine65: TppLine;
    ppDBText62: TppDBText;
    ppSummaryBand18: TppSummaryBand;
    ppLine66: TppLine;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText63: TppDBText;
    ppLabel142: TppLabel;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    rptMod_04: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLine59: TppLine;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLine60: TppLine;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppDetailBand19: TppDetailBand;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppLine69: TppLine;
    ppSubReport9: TppSubReport;
    ppChildReport10: TppChildReport;
    ppTitleBand10: TppTitleBand;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppDetailBand20: TppDetailBand;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppSummaryBand19: TppSummaryBand;
    ppLine72: TppLine;
    ppDBText71: TppDBText;
    ppSummaryBand20: TppSummaryBand;
    ppLine74: TppLine;
    ppLine73: TppLine;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppDBText72: TppDBText;
    ppDBText74: TppDBText;
    rpt_grupo_fornecedor_04: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppSystemVariable21: TppSystemVariable;
    ppSystemVariable22: TppSystemVariable;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLine75: TppLine;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLine76: TppLine;
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
    ppDetailBand21: TppDetailBand;
    ppDBText73: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppLine77: TppLine;
    ppSubReport10: TppSubReport;
    ppChildReport11: TppChildReport;
    ppTitleBand11: TppTitleBand;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppDetailBand22: TppDetailBand;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppSummaryBand21: TppSummaryBand;
    ppLine80: TppLine;
    ppDBText81: TppDBText;
    ppLine81: TppLine;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppSummaryBand22: TppSummaryBand;
    ppLine82: TppLine;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    rpt_grupo_grupo_04: TppReport;
    ppHeaderBand12: TppHeaderBand;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppDetailBand23: TppDetailBand;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppLine85: TppLine;
    ppSubReport11: TppSubReport;
    ppChildReport12: TppChildReport;
    ppTitleBand12: TppTitleBand;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppDetailBand24: TppDetailBand;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppSummaryBand23: TppSummaryBand;
    ppLine88: TppLine;
    ppDBText91: TppDBText;
    ppLine89: TppLine;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppSummaryBand24: TppSummaryBand;
    ppLine90: TppLine;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBText94: TppDBText;
    ppLabel198: TppLabel;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppLabel195: TppLabel;
    rptMod_06: TppReport;
    ppHeaderBand13: TppHeaderBand;
    ppSystemVariable25: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppLabel199: TppLabel;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLine91: TppLine;
    ppLabel203: TppLabel;
    ppLabel204: TppLabel;
    ppLabel205: TppLabel;
    ppLine92: TppLine;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel213: TppLabel;
    ppDetailBand25: TppDetailBand;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppSubReport12: TppSubReport;
    ppChildReport13: TppChildReport;
    ppTitleBand13: TppTitleBand;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppDetailBand26: TppDetailBand;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppSummaryBand25: TppSummaryBand;
    ppLine96: TppLine;
    ppDBText102: TppDBText;
    ppLine97: TppLine;
    ppSummaryBand26: TppSummaryBand;
    ppLine98: TppLine;
    rpt_grupo_fornecedor_06: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppSystemVariable27: TppSystemVariable;
    ppSystemVariable28: TppSystemVariable;
    ppLabel212: TppLabel;
    ppLabel214: TppLabel;
    ppLabel215: TppLabel;
    ppLabel218: TppLabel;
    ppLine93: TppLine;
    ppLabel219: TppLabel;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLine99: TppLine;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppLabel224: TppLabel;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppDetailBand27: TppDetailBand;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppSubReport13: TppSubReport;
    ppChildReport14: TppChildReport;
    ppTitleBand14: TppTitleBand;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppDetailBand28: TppDetailBand;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppSummaryBand27: TppSummaryBand;
    ppLine102: TppLine;
    ppDBText110: TppDBText;
    ppLine103: TppLine;
    ppSummaryBand28: TppSummaryBand;
    ppLine104: TppLine;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppGroupFooterBand9: TppGroupFooterBand;
    rpt_grupo_grupo_06: TppReport;
    ppHeaderBand15: TppHeaderBand;
    ppSystemVariable29: TppSystemVariable;
    ppSystemVariable30: TppSystemVariable;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppDetailBand29: TppDetailBand;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppSubReport14: TppSubReport;
    ppChildReport15: TppChildReport;
    ppTitleBand15: TppTitleBand;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppDetailBand30: TppDetailBand;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppLine107: TppLine;
    ppLine108: TppLine;
    ppSummaryBand29: TppSummaryBand;
    ppLine109: TppLine;
    ppDBText118: TppDBText;
    ppLine110: TppLine;
    ppSummaryBand30: TppSummaryBand;
    ppLine111: TppLine;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppLine112: TppLine;
    ppLine113: TppLine;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppDBText119: TppDBText;
    ppLabel239: TppLabel;
    rptMod_05: TppReport;
    ppHeaderBand16: TppHeaderBand;
    ppSystemVariable31: TppSystemVariable;
    ppSystemVariable32: TppSystemVariable;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLine105: TppLine;
    ppLabel244: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLine106: TppLine;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppLabel261: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppDetailBand31: TppDetailBand;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppLine114: TppLine;
    ppSubReport15: TppSubReport;
    ppChildReport16: TppChildReport;
    ppTitleBand16: TppTitleBand;
    ppLabel265: TppLabel;
    ppLabel266: TppLabel;
    ppDetailBand32: TppDetailBand;
    ppDBText124: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppLine115: TppLine;
    ppLine116: TppLine;
    ppSummaryBand31: TppSummaryBand;
    ppLine117: TppLine;
    ppDBText127: TppDBText;
    ppLine118: TppLine;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppSummaryBand32: TppSummaryBand;
    ppLine119: TppLine;
    rpt_grupo_fornecedor_05: TppReport;
    ppHeaderBand17: TppHeaderBand;
    ppSystemVariable33: TppSystemVariable;
    ppSystemVariable34: TppSystemVariable;
    ppLabel267: TppLabel;
    ppLabel268: TppLabel;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppLine120: TppLine;
    ppLabel271: TppLabel;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    ppLine121: TppLine;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppLabel282: TppLabel;
    ppLabel283: TppLabel;
    ppDetailBand33: TppDetailBand;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppLine122: TppLine;
    ppSubReport16: TppSubReport;
    ppChildReport17: TppChildReport;
    ppTitleBand17: TppTitleBand;
    ppLabel284: TppLabel;
    ppLabel285: TppLabel;
    ppDetailBand34: TppDetailBand;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppLine123: TppLine;
    ppLine124: TppLine;
    ppSummaryBand33: TppSummaryBand;
    ppLine125: TppLine;
    ppDBText137: TppDBText;
    ppLine126: TppLine;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppSummaryBand34: TppSummaryBand;
    ppLine127: TppLine;
    rpt_grupo_grupo_05: TppReport;
    ppHeaderBand18: TppHeaderBand;
    ppSystemVariable35: TppSystemVariable;
    ppSystemVariable36: TppSystemVariable;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLine128: TppLine;
    ppLabel290: TppLabel;
    ppLabel291: TppLabel;
    ppLabel292: TppLabel;
    ppLine129: TppLine;
    ppLabel293: TppLabel;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppLabel296: TppLabel;
    ppLabel297: TppLabel;
    ppLabel298: TppLabel;
    ppLabel299: TppLabel;
    ppLabel300: TppLabel;
    ppLabel301: TppLabel;
    ppLabel302: TppLabel;
    ppDetailBand35: TppDetailBand;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppLine130: TppLine;
    ppSubReport17: TppSubReport;
    ppChildReport18: TppChildReport;
    ppTitleBand18: TppTitleBand;
    ppLabel303: TppLabel;
    ppLabel304: TppLabel;
    ppDetailBand36: TppDetailBand;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppLine131: TppLine;
    ppLine132: TppLine;
    ppSummaryBand35: TppSummaryBand;
    ppLine133: TppLine;
    ppDBText147: TppDBText;
    ppLine134: TppLine;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppSummaryBand36: TppSummaryBand;
    ppLine135: TppLine;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppGroup12: TppGroup;
    ppGroupHeaderBand12: TppGroupHeaderBand;
    ppGroupFooterBand12: TppGroupFooterBand;
    ppDBText150: TppDBText;
    ppLabel305: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtSecaoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtFabricanteExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0326: TfrmRL0326;

implementation

uses udmRL0326, uConsulta, uGlobal;

{$R *.dfm}

procedure TfrmRL0326.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0326.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0326.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TfrmRL0326.FormCreate(Sender: TObject);
begin
   dmRL0326 := TdmRL0326.Create(Self);
end;

procedure TfrmRL0326.edtGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtGrupo, Edit2, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0326.SpeedButton1Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0326.edtSecaoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtSecao, Edit1, 'P_SECAO', 'CODIGO_SECAO', 'DESCRICAO_SECAO') then
   begin
      edtSecao.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0326.SpeedButton3Click(Sender: TObject);
begin
   edtSecao.SetFocus;

   ConsultaSecao(edtGrupo);
end;

procedure TfrmRL0326.edtFabricanteExit(Sender: TObject);
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
         Application.MessageBox('O código informado é inválido', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtFabricante.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0326.SpeedButton2Click(Sender: TObject);
begin
   edtFabricante.SetFocus;

   ConsultaFornecedor(edtFabricante);
end;

procedure TfrmRL0326.btnImprimirClick(Sender: TObject);
Var
   SQL1: String;
begin
   with dmRL0326 do
   begin
      SQL1 := 'SELECT' +
              ' P.CODIGO_PRODUTO,'       +
              ' P.DESCRICAO_PRODUTO,'    +
              ' P.UNIDADE_PRODUTO,'      +
              ' P.REFERENCIA_PRODUTO,'   +
              ' P.ESTOQUE_PRODUTO,'      +
              ' P.GRUPO_PRODUTO,'        +
              ' P.PRECO_CUSTO_PRODUTO,'  +
              ' P.PRECO_COMPRA_PRODUTO,' +
              ' P.BARRA_PRODUTO,'        +
              ' P.FABRICANTE_PRODUTO,'   +
              ' P.PRAT1_PRODUTO,'        +
              ' P.PRAT2_PRODUTO,'        +
              ' G.DESCRICAO_GRUPO,'      +
              ' F.NOME_CLIENTE AS NOME_FABRICANTE' +
              ' FROM P_PRODUTOS P' +
              ' LEFT OUTER JOIN E_CLIENTE F ON (P.FABRICA_PRODUTO = F.CODIGO_CLIENTE)' +
              ' LEFT OUTER JOIN P_GRUPOS  G ON (P.GRUPO_PRODUTO   = G.CODIGO_GRUPO)' +
              ' WHERE P.CODIGO_PRODUTO>0';

      if edtLocacao.Text <> '' then
         SQL1 := SQL1 + ' AND ( (P.PRAT1_PRODUTO = ' + QuotedStr(edtLocacao.Text) + ') OR (P.PRAT2_PRODUTO=' + QuotedStr(edtLocacao.Text) + ') )';

      if edtSecao.Value > 0 then
         SQL1 := SQL1 + ' AND P.CLASSE_PRODUTO = ' + QuotedStr(edtSecao.Text);

      if edtGrupo.Value > 0 then
         SQL1 := SQL1 + ' AND P.GRUPO_PRODUTO = ' + QuotedStr(edtGrupo.Text);

      if edtFabricante.Value > 0 then
         SQL1 := SQL1 + ' AND P.FABRICA_PRODUTO =' + QuotedStr(edtFabricante.Text);

      if cbxZerado.ItemIndex <> 1 then
         SQL1 := SQL1 + ' AND P.ESTOQUE_PRODUTO>0';

      cdsProdutos.Close;
      cdsProdutos.CommandText := SQL1;

      // Ordenação
      Case cbxOrdem.ItemIndex of
         0: cdsProdutos.IndexFieldNames := 'CODIGO_PRODUTO';
         1: cdsProdutos.IndexFieldNames := 'DESCRICAO_PRODUTO';
         2: cdsProdutos.IndexFieldNames := 'PRAT1_PRODUTO';
         3: cdsProdutos.IndexFieldNames := 'FABRICANTE_PRODUTO';
         4: cdsProdutos.IndexFieldNames := 'BARRA_PRODUTO';
      end;

      cdsProdutos.Open;

      Case cbxSeparador.ItemIndex of
         1:
         begin
            cdsProdutos.IndexFieldNames := 'DESCRICAO_GRUPO;' + cdsProdutos.IndexFieldNames;
            Case StrToInt(cbxModelo.Text) of
               1: rpt_grupo_grupo_01.Print;
               2: rpt_grupo_grupo_02.Print;
               3: rpt_grupo_grupo_03.Print;
               4: rpt_grupo_grupo_04.Print;
               5: rpt_grupo_grupo_05.Print;
               6: rpt_grupo_grupo_06.Print;
            end;
         end;
         2:
         begin
            cdsProdutos.IndexFieldNames := 'NOME_FABRICANTE;' + cdsProdutos.IndexFieldNames;
            Case StrToInt(cbxModelo.Text) of
               1: rpt_grupo_fornecedor_01.Print;
               2: rpt_grupo_fornecedor_02.Print;
               3: rpt_grupo_fornecedor_02.Print;
               4: rpt_grupo_fornecedor_04.Print;
               5: rpt_grupo_fornecedor_05.Print;
               6: rpt_grupo_fornecedor_06.Print;
            end;
         end
         else
         begin
            Case StrToInt(cbxModelo.Text) of
               1: rptMod_01.Print;
               2: rptMod_02.Print;
               3: rptMod_03.Print;
               4: rptMod_04.Print;
               5: rptMod_05.Print;
               6: rptMod_06.Print;
            end;
         end;
      end;
   end;
end;

procedure TfrmRL0326.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0326.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
