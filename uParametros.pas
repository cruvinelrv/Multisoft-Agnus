unit uParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, StdCtrls, Mask,
  DBCtrls, WinSkinForm, Buttons, JvComponent, JvBalloonHint, WinSkinData,
  Spin, JvMaskEdit, JvSpin, JvDBSpinEdit, JvComponentBase, ApoDSet;

type
  TfrmParametros = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    edtFantasia: TDBEdit;
    dtsFirm: TDataSource;
    Label2: TLabel;
    edtResponsavel: TDBEdit;
    Label3: TLabel;
    edtRazaoSocial: TDBEdit;
    Label4: TLabel;
    edtEndereco: TDBEdit;
    Label5: TLabel;
    edtNumero: TDBEdit;
    Label6: TLabel;
    edtComplemento: TDBEdit;
    Label7: TLabel;
    edtBairro: TDBEdit;
    Label8: TLabel;
    edtCidade: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtCep: TDBEdit;
    Label11: TLabel;
    edtCNPJ: TDBEdit;
    Label12: TLabel;
    edtInscEst: TDBEdit;
    Label13: TLabel;
    estInscMuni: TDBEdit;
    Label14: TLabel;
    edtTelefone: TDBEdit;
    Label15: TLabel;
    edtFax: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    StatusBar1: TStatusBar;
    dtsEstados: TDataSource;
    TabSheet2: TTabSheet;
    Bevel3: TBevel;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dtsNatureza: TDataSource;
    dtsSerie: TDataSource;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    JvBalloonHint1: TJvBalloonHint;
    cmbEstado: TDBLookupComboBox;
    TabSheet6: TTabSheet;
    Panel14: TPanel;
    GroupBox8: TGroupBox;
    chkVencVendas: TCheckBox;
    chkNumeroNF: TCheckBox;
    chkItensVenda: TCheckBox;
    chkGradeProduto: TCheckBox;
    chkBloqCliente: TCheckBox;
    chkBackupDiario: TCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox5: TDBCheckBox;
    GroupBox10: TGroupBox;
    chkContasPagar: TCheckBox;
    chkContasReceber: TCheckBox;
    chkReindexa: TCheckBox;
    chkLeituraX: TCheckBox;
    chkCheqEmit: TCheckBox;
    chkCheqClie: TCheckBox;
    chkInfoPerso: TCheckBox;
    pnlInfPerso: TPanel;
    edtPersonaliz: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    chkFATOR_SRV: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    pnlFator: TPanel;
    edtVALOR_FAT: TDBEdit;
    Label69: TLabel;
    dtsConta: TDataSource;
    dtsCentro: TDataSource;
    dtsBanco: TDataSource;
    DBRadioGroup3: TDBRadioGroup;
    Label94: TLabel;
    DBCheckBox13: TDBCheckBox;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label45: TLabel;
    Label49: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label66: TLabel;
    Bevel6: TBevel;
    Bevel9: TBevel;
    Label60: TLabel;
    Label65: TLabel;
    Label95: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    edtEtiqueta: TDBEdit;
    edtMens_Carne: TDBEdit;
    edtCmp_Aux: TDBEdit;
    edtPalav_Cust: TDBEdit;
    cmbTipo_Com: TDBComboBox;
    cmbTipo_Prc: TDBComboBox;
    GroupBox5: TGroupBox;
    chkRep_Orc: TCheckBox;
    chkRep_Ent: TCheckBox;
    chkRep_Ven: TCheckBox;
    chkRep_Ped: TCheckBox;
    chkSug_Cod_Ba: TDBCheckBox;
    cmbTransfere: TDBComboBox;
    chkManequin: TDBCheckBox;
    chkObriga_Cpf: TDBCheckBox;
    chkIPI: TDBCheckBox;
    chkCusto_Letr: TDBCheckBox;
    cmbMarkup: TDBComboBox;
    cmbTipo_Cons: TDBComboBox;
    cmbProd_Neg: TDBComboBox;
    chkEstoqDecimal: TCheckBox;
    speDecimal: TSpinEdit;
    speDec_com: TSpinEdit;
    edtPerc_Renda: TDBEdit;
    cmbSUGERE_TIT: TDBComboBox;
    edtMSG_BLOQ1: TDBEdit;
    edtMSG_BLOQ2: TDBEdit;
    GroupBox3: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    Label42: TLabel;
    Label56: TLabel;
    edtBloqueio: TDBEdit;
    edtJuros: TDBEdit;
    edtJuro_Min: TDBEdit;
    edtDias: TDBEdit;
    chkComiss_Rec: TDBCheckBox;
    cbxTipo_Jur: TDBComboBox;
    cbxDuplicata: TDBComboBox;
    cmbBloq_Cli: TDBComboBox;
    edtPORCEN_REC: TDBEdit;
    DBRadioGroup5: TDBRadioGroup;
    GroupBox11: TGroupBox;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    edtIMP_VENDA: TDBEdit;
    edtFIN_ADM: TDBEdit;
    edtCUSTO_FIXO: TDBEdit;
    edtLUCRO: TDBEdit;
    edtICMS: TDBEdit;
    edtPIS: TDBEdit;
    edtCOFINS: TDBEdit;
    edtCONT_SOCIA: TDBEdit;
    GroupBox6: TGroupBox;
    Label44: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Bevel10: TBevel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    cmbPorta_Ecf: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    cmbModel_Ecf: TDBComboBox;
    cmbCod_Pro_Cp: TDBComboBox;
    Panel7: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    edtValor04: TDBEdit;
    edtValor05: TDBEdit;
    edtValor06: TDBEdit;
    edtValor07: TDBEdit;
    edtValor08: TDBEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    edtAliq01: TDBEdit;
    edtAliq02: TDBEdit;
    edtAliq03: TDBEdit;
    edtAliq04: TDBEdit;
    edtAliq05: TDBEdit;
    edtAliq06: TDBEdit;
    edtAliq07: TDBEdit;
    edtAliq08: TDBEdit;
    GroupBox7: TGroupBox;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    pnlMultEcf: TPanel;
    Label96: TLabel;
    speCod_Ecf: TSpinEdit;
    chkVarios_Ecf: TDBCheckBox;
    edtSERIAL_ECF: TDBEdit;
    cmbDRIVE_ECF: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBRadioGroup4: TDBRadioGroup;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    Label68: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    cmbCONTA_REC: TDBLookupComboBox;
    cmbCentro_Rec: TDBLookupComboBox;
    cmbC_C_REC: TDBLookupComboBox;
    Label72: TLabel;
    edtDias_Bloq: TDBEdit;
    Bevel12: TBevel;
    GroupBox12: TGroupBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    cmbDev_Caixa: TDBComboBox;
    Label67: TLabel;
    DBCheckBox26: TDBCheckBox;
    cmbDRIVE_REM: TDBComboBox;
    Label102: TLabel;
    DBCheckBox27: TDBCheckBox;
    Panel4: TPanel;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Panel5: TPanel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    chkPerg_Ecf: TDBCheckBox;
    chkBarra: TDBCheckBox;
    chkData_Ped: TDBCheckBox;
    chkEntrad_Ger: TDBCheckBox;
    chkCadastro: TDBCheckBox;
    chkCadastro1: TDBCheckBox;
    chkTri_Dif: TDBCheckBox;
    chkSer_Pro: TDBCheckBox;
    chkVer_Nf: TDBCheckBox;
    chkVen_Parc: TDBCheckBox;
    chkDes_Ct_Rec: TDBCheckBox;
    chkCompl_Nf: TDBCheckBox;
    chkQtde_Vnd: TDBCheckBox;
    chkConf_Cli: TDBCheckBox;
    chkAltera_Cli: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    chkNf_Serv: TDBCheckBox;
    GroupBox9: TGroupBox;
    chkCheqAberto: TCheckBox;
    chkCheqAtraso: TCheckBox;
    chkConRecAberto: TCheckBox;
    chkConRecAtraso: TCheckBox;
    chkObsCadastro: TCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    Panel6: TPanel;
    Label34: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label59: TLabel;
    Label33: TLabel;
    cbxAltera: TDBComboBox;
    cboObservacao: TDBComboBox;
    DBComboBox1: TDBComboBox;
    cmbConf_Ali: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    cmbSer_Pad: TDBLookupComboBox;
    cmbCarga: TDBComboBox;
    cmbOS: TDBComboBox;
    cmbImpressao: TDBComboBox;
    cmbOR: TDBComboBox;
    cmbAlt_Vl_Par: TDBComboBox;
    Label32: TLabel;
    Label47: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label31: TLabel;
    edtLivre: TDBEdit;
    edtLimite2: TDBEdit;
    edtQtd_Pro: TDBEdit;
    edtQtd_Srv: TDBEdit;
    TabSheet9: TTabSheet;
    Panel15: TPanel;
    edtCli_Padrao: TDBEdit;
    edtCliente: TDBEdit;
    Label103: TLabel;
    DBCheckBox29: TDBCheckBox;
    DBRadioGroup6: TDBRadioGroup;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    edtPgt_Padrao: TDBEdit;
    edtPgtoDescricao: TDBEdit;
    Label104: TLabel;
    dtsClientes: TDataSource;
    dtsCondPgto: TDataSource;
    DBComboBox2: TDBComboBox;
    Label105: TLabel;
    Label106: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Bevel8: TBevel;
    Bevel11: TBevel;
    TabSheet10: TTabSheet;
    GroupBox14: TGroupBox;
    Label107: TLabel;
    rdgPorta_Bal: TDBRadioGroup;
    rdgBaud_Bal: TDBRadioGroup;
    rdgBits_Bal: TDBRadioGroup;
    rdgEscrit_Bal: TDBRadioGroup;
    rdgParid_Bal: TDBRadioGroup;
    edtLocal_Bal: TDBEdit;
    rdgMode_Balan: TDBRadioGroup;
    chkMulti_Bal: TDBCheckBox;
    Bevel7: TBevel;
    rdgEtiq_Balan: TDBRadioGroup;
    Memo1: TMemo;
    Label37: TLabel;
    cmbNegativo: TDBComboBox;
    Bevel13: TBevel;
    DBCheckBox32: TDBCheckBox;
    rdgBALAN_CAI: TDBRadioGroup;
    DBCheckBox33: TDBCheckBox;
    chkIDENT_CHAM: TDBCheckBox;
    Panel16: TPanel;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    GroupBox13: TGroupBox;
    DBCheckBox35: TDBCheckBox;
    edtTotal_Mesa: TDBEdit;
    Label108: TLabel;
    GroupBox15: TGroupBox;
    chkMod_Int: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    cmbImp_NF: TDBComboBox;
    Label109: TLabel;
    chkCaixa_Fat: TDBCheckBox;
    tblECF: TApolloTable;
    tblECFECF: TStringField;
    tblECFTEF: TStringField;
    tblECFPORTA: TStringField;
    tblECFSERIAL: TStringField;
    tblECFCAIXA: TSmallintField;
    tblECFBALANCA: TStringField;
    tblECFPORTA_BAL: TSmallintField;
    tblECFBAUD_BAL: TSmallintField;
    tblECFBITS_BAL: TSmallintField;
    tblECFPARID_BAL: TSmallintField;
    tblECFESCRIT_BAL: TSmallintField;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCNPJExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GroupBox5Exit(Sender: TObject);
    procedure edtPalav_CustEnter(Sender: TObject);
    procedure chkEstoqDecimalClick(Sender: TObject);
    procedure chkInfoPersoClick(Sender: TObject);
    procedure chkFATOR_SRVClick(Sender: TObject);
    procedure edtVALOR_FATExit(Sender: TObject);
    procedure cmbCONTA_RECExit(Sender: TObject);
    procedure edtDias_BloqExit(Sender: TObject);
    procedure edtIMP_VENDAExit(Sender: TObject);
    procedure edtFIN_ADMExit(Sender: TObject);
    procedure edtCUSTO_FIXOExit(Sender: TObject);
    procedure edtLUCROExit(Sender: TObject);
    procedure edtICMSExit(Sender: TObject);
    procedure edtPISExit(Sender: TObject);
    procedure edtCOFINSExit(Sender: TObject);
    procedure edtCONT_SOCIAExit(Sender: TObject);
    procedure chkComiss_RecClick(Sender: TObject);
    procedure chkCusto_LetrClick(Sender: TObject);
    procedure chkVarios_EcfClick(Sender: TObject);
    procedure cmbSer_PadExit(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure edtCli_PadraoExit(Sender: TObject);
    procedure edtPgt_PadraoExit(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure rdgMode_BalanClick(Sender: TObject);
    procedure rdgEscrit_BalClick(Sender: TObject);
    procedure Grava_Bal();
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    xRep_Prod: String;
    procedure Cria_Ecf();
    procedure Grava_Ecf();
    procedure GravaSerie();
  public
    { Public declarations }
  end;

var
  frmParametros: TfrmParametros;


implementation

uses  uConfirma, uGlobal, udmProgs, uDmParametros, DBClient, udmImpNF;

{$R *.dfm}

procedure TfrmParametros.FormShow(Sender: TObject);
begin
   dmProgs.cdsEmpresa           . Open;
   dmParametros.cdsEstados      . Open;
   dmParametros.cdsNatureza     . Open;
   dmParametros.cdsCentroCusto  . Open;
   dmParametros.cdsCliente      . Open;
   dmParametros.cdsConta        . Open;
   dmParametros.cdsContaBanco   . Open;
   dmParametros.cdsSerie        . Open;
   dmParametros.cdsTipoPagamento. Open;

   edtRazaoSocial.SetFocus;

   frmParametros.Caption := frmParametros.Caption + ' Versão ' + xVersao + ' ::.';

   Tag := Empresa;

   dmProgs.cdsEmpresa.Locate('Codigo_Emp',IntToStr(frmParametros.Tag),[loCaseInsensitive]);

   dmProgs.cdsEmpresa.Edit;

   if Pos('O',dmProgs.cdsEmpresaREP_PROD_EMP.Value) > 0 then
      chkRep_Orc.Checked := True;

   if Pos('E',dmProgs.cdsEmpresaREP_PROD_EMP.Value) > 0 then
      chkRep_Ent.Checked := True;

   if Pos('V',dmProgs.cdsEmpresaREP_PROD_EMP.Value) > 0 then
      chkRep_Ven.Checked := True;

   if Pos('P',dmProgs.cdsEmpresaREP_PROD_EMP.Value) > 0 then
      chkRep_Ped.Checked := True;

   if Pos('T',dmProgs.cdsEmpresaREP_PROD_EMP.Value) > 0 then
   begin
      chkRep_Orc.Checked := True;
      chkRep_Ent.Checked := True;
      chkRep_Ven.Checked := True;
      chkRep_Ped.Checked := True;
   end;

   edtPorcen_Rec.Enabled := chkComiss_Rec.Checked;
   edtPalav_Cust.Enabled := chkCusto_Letr.Checked;

   // informaçoes de clientes em vendas
   chkCheqAberto.Checked   := Pos('1',dmProgs.cdsEmpresaCLI_VENDA_EMP.Value) > 0;
   chkCheqAtraso.Checked   := Pos('2',dmProgs.cdsEmpresaCLI_VENDA_EMP.Value) > 0;
   chkConRecAberto.Checked := Pos('3',dmProgs.cdsEmpresaCLI_VENDA_EMP.Value) > 0;
   chkConRecAtraso.Checked := Pos('4',dmProgs.cdsEmpresaCLI_VENDA_EMP.Value) > 0;
   chkObsCadastro.Checked  := Pos('5',dmProgs.cdsEmpresaCLI_VENDA_EMP.Value) > 0;

   // itens do encerramento diário
   chkVencVendas.Checked   := Pos('1',dmProgs.cdsEmpresaENCERRAM_EMP.Value) > 0;
   chkNumeroNF.Checked     := Pos('2',dmProgs.cdsEmpresaENCERRAM_EMP.Value) > 0;
   chkItensVenda.Checked   := Pos('3',dmProgs.cdsEmpresaENCERRAM_EMP.Value) > 0;
   chkGradeProduto.Checked := Pos('4',dmProgs.cdsEmpresaENCERRAM_EMP.Value) > 0;
   chkBloqCliente.Checked  := Pos('5',dmProgs.cdsEmpresaENCERRAM_EMP.Value) > 0;
   chkBackupDiario.Checked := Pos('6',dmProgs.cdsEmpresaENCERRAM_EMP.Value) > 0;

   // lembretes da entrada do sistema
   chkContasPagar.Checked   := Pos('1',dmProgs.cdsEmpresaLEMB_ENT_EMP.Value) > 0;
   chkContasReceber.Checked := Pos('2',dmProgs.cdsEmpresaLEMB_ENT_EMP.Value) > 0;
   chkReindexa.Checked      := Pos('3',dmProgs.cdsEmpresaLEMB_ENT_EMP.Value) > 0;
   chkLeituraX.Checked      := Pos('4',dmProgs.cdsEmpresaLEMB_ENT_EMP.Value) > 0;
   chkCheqEmit.Checked      := Pos('5',dmProgs.cdsEmpresaLEMB_ENT_EMP.Value) > 0;
   chkCheqClie.Checked      := Pos('6',dmProgs.cdsEmpresaLEMB_ENT_EMP.Value) > 0;
   chkInfoPerso.Checked     := Pos('7',dmProgs.cdsEmpresaLEMB_ENT_EMP.Value) > 0;

   chkInfoPersoClick(Sender);

   // utilizaçao de casas decimais
   chkEstoqDecimal.Checked := Pos('S',dmProgs.cdsEmpresaFORMATO_EMP.Text) > 0;

   chkEstoqDecimalClick(Sender);

   chkFATOR_SRVClick(Sender);

   speDecimal.Value := dmProgs.cdsEmpresaDECIMAL_EMP.Value;
   speDec_Com.Value := dmProgs.cdsEmpresaDEC_COM_EMP.Value;

   pnlMultEcf.Enabled := chkVarios_Ecf.Checked;

   if chkVarios_Ecf.Checked then
   begin
      if not FileExists('c:\ecf.dbf') then
         Cria_Ecf();

         tblECF.Open;

         if not Empty(tblECFECF.Value) then
            speCod_Ecf.Value := StrToInt(tblECFECF.Value);

         tblECF.Close;
   end;

   if chkMulti_Bal.Checked then
   begin
      tblECF.Open;

      rdgMode_Balan . ItemIndex := StrToInt(tblECFBALANCA.Value);
      rdgPorta_Bal  . ItemIndex := tblECFPORTA_BAL.Value - 1;
      rdgBaud_Bal   . ItemIndex := tblECFBAUD_BAL.Value;
      //rdgBits_Bal   . ItemIndex := tblECFBITS_BAL.AsInteger;
      rdgParid_Bal  . ItemIndex := tblECFPARID_BAL.AsInteger;
      rdgEscrit_Bal . ItemIndex := tblECFESCRIT_BAL.AsInteger;

      tblECF.Close;
   end;

   //cmbSer_PadExit(Sender);
end;

procedure TfrmParametros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   // fecha tabelas
   dmProgs.cdsEmpresa.Close;
   dmParametros.cdsEstados.Close;

   if dmParametros <> nil then
      FreeAndNil(dmParametros);

   Action := caFree;
end;

procedure TfrmParametros.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Key := #0;
      Perform(WM_NextDlgCtl,0,0);
   end;
end;

procedure TfrmParametros.edtCNPJExit(Sender: TObject);
var cnpj1: string;
begin
   cnpj1 := remove(edtCNPJ.Text);

   // verifica se o campo esta vazio

   if Empty(cnpj1) then
      Abort;

   if Length(cnpj1) < 14 then
   begin
      Application.MessageBox('CNPJ Inválido!','Atenção',MB_ICONERROR);
      edtCNPJ.SetFocus;
      Abort;
   end;

   if not cgc(cnpj1) then
   begin
      Application.MessageBox('CNPJ Inválido!','Atenção',MB_ICONERROR);
      Abort;
   end;
end;

procedure TfrmParametros.FormCreate(Sender: TObject);
begin
   dmParametros := TdmParametros.Create(Self);
   PageControl1.ActivePageIndex := 0;
end;

procedure TfrmParametros.BitBtn1Click(Sender: TObject);
var InfCliVenda, ItEnDiario, LembEnt, RepeteProd: ShortString;
begin
   infCliVenda := '';
   ItEnDiario  := '';
   LembEnt     := '';
   RepeteProd  := '';

   // validaçoes //

   if edtRazaoSocial.Text = '' then
   begin
      Application.MessageBox('A Razão Social deve ser informada !','Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 0;
      edtRazaoSocial.SetFocus;
      Abort;
   end;

   if edtFantasia.Text = '' then
   begin
      Application.MessageBox('O Nome de Fantasia deve ser informado!','Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 0;
      edtFantasia.SetFocus;
      Abort;
   end;

   if edtResponsavel.Text = '' then
   begin
      Application.MessageBox('O campo "Responsável" deve ser informado!','Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 0;
      edtResponsavel.SetFocus;
      Abort;
   end;

   if edtEndereco.Text = '' then
   begin
      Application.MessageBox('O Endereço deve ser informado!','Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 0;
      edtEndereco.SetFocus;
      Abort;
   end;

   if Empty(edtNumero.Text) then
   begin
      Application.MessageBox('O campo Número deve ser informado!','Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 0;
      edtNumero.SetFocus;
      Abort;
   end;

   if edtBairro.Text = '' then
   begin
      Application.MessageBox('O Bairro deve ser informado!','Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 0;
      edtBairro.SetFocus;
      Abort;
   end;

   if edtCidade.Text = '' then
   begin
      Application.MessageBox('A Cidade deve ser informada!','Aten ção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 0;
      edtCidade.SetFocus;
      Abort;
   end;

   if StringToInt(edtBloqueio.Text) > 99 then
   begin
      Application.MessageBox('Nº de dias para bloqueio inválido!' + #13 +
        'Valor Máximo = 99','Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 2;
      edtBloqueio.SetFocus;
      Abort;
   end;

   if StringToFloat(edtJuros.Text) > 100 then
   begin
      Application.MessageBox('Taxa de Juros inválida!' + #13 + 'Valor máximo = 100',
        'Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 2;
      edtJuros.SetFocus;
      Abort;
   end;

   if StringToFloat(edtJuro_Min.Text) > 100 then
   begin
      Application.MessageBox('Juro máximo de cobrança inválido!' + #13 + 'Valor máximo = 100',
        'Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 2;
      edtJuro_Min.SetFocus;
      Abort;
   end;

   if StringToint(edtDias.Text) > 99 then
   begin
      Application.MessageBox('Nº máximo de dias inválido!' + #13 + 'Valor máximo = 99',
        'Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 2;
      edtDias.SetFocus;
      Abort;
   end;

   if StringToint(edtLivre.Text) > 36 then
   begin
      Application.MessageBox('Nº de parcelas Inválido!' + #13 + 'Nº de parcelas deve ser de 1 a 36' ,'Atenção',MB_ICONEXCLAMATION);
      PageControl1.TabIndex := 1;
      edtLivre.SetFocus;
      Abort;
   end;

   dmProgs.cdsEmpresaREP_PROD_EMP.Value := xRep_Prod;

   // informaçoes de clientes em vendas
   if chkCheqAberto.Checked then
      InfCliVenda := InfCliVenda + '1';

   if chkCheqAtraso.Checked then
      InfCliVenda := InfCliVenda + '2';

   if chkConRecAberto.Checked then
      InfCliVenda := InfCliVenda + '3';

   if chkConRecAtraso.Checked then
      InfCliVenda := InfCliVenda + '4';

   if chkObsCadastro.Checked then
      InfCliVenda := InfCliVenda + '5';

   // itens do encerramento diário
   if chkVencVendas.Checked   then
      ItEnDiario := ItEnDiario + '1';

   if chkNumeroNF.Checked then
      ItEnDiario := ItEnDiario + '2';

   if chkItensVenda.Checked then
      ItEnDiario := ItEnDiario + '3';

   if chkGradeProduto.Checked then
      ItEnDiario := ItEnDiario + '4';

   if chkBloqCliente.Checked then
      ItEnDiario := ItEnDiario + '5';

   if  chkBackupDiario.Checked then
      ItEnDiario := ItEnDiario + '6';

   // lembretes da entrada do sistema
   if chkContasPagar.Checked then
      LembEnt := LembEnt + '1';

   if chkContasReceber.Checked then
      LembEnt := LembEnt + '2';

   if chkReindexa.Checked then
      LembEnt := LembEnt + '3';

   if chkLeituraX.Checked then
      LembEnt := LembEnt + '4';

   if chkCheqEmit.Checked then
      LembEnt := LembEnt + '5';

   if chkCheqClie.Checked then
      LembEnt := LembEnt + '6';

   if chkInfoPerso.Checked then
      LembEnt := LembEnt + '7';

   // rotinas que poderao repetir produtos

   if chkRep_Orc.Checked = True then
      RepeteProd := RepeteProd + 'O';

   if chkRep_Ven.Checked = True then
      RepeteProd := RepeteProd + 'V';

   if chkRep_Ent.Checked = True then
      RepeteProd := RepeteProd + 'E';

   if chkRep_Ped.Checked = True then
      RepeteProd := RepeteProd + 'P';
     

   dmProgs.cdsEmpresaREP_PROD_EMP.Value  := RepeteProd;
   dmProgs.cdsEmpresaCLI_VENDA_EMP.Value := InfCliVenda;
   dmProgs.cdsEmpresaENCERRAM_EMP.Value  := ItEnDiario;
   dmProgs.cdsEmpresaLEMB_ENT_EMP.Value  := LembEnt;

   dmProgs.cdsEmpresaDECIMAL_EMP.Value := speDecimal.Value;
   dmProgs.cdsEmpresaDEC_COM_EMP.Value := speDec_com.Value;

   edtVALOR_FATExit(Sender);
   cmbCONTA_RECExit(Sender);
   edtDias_BloqExit(Sender);

   // grava os dados
   dmProgs.cdsEmpresa.Post;

   if chkMulti_Bal.Checked then
      Grava_Bal(); // grava dados da balanca

   if chkVarios_Ecf.Checked then
      Grava_Ecf();

   GravaSerie();

   // fecha o formulario
   frmParametros.Close;
end;

procedure TfrmParametros.BitBtn2Click(Sender: TObject);
begin
   if Application.MessageBox('Deseja sair sem gravar?','Confirmação',MB_ICONQUESTION + MB_YESNO) = idYes then
   begin
      dmProgs.cdsEmpresa.Cancel;
      dmProgs.cdsEmpresa.Refresh;

      frmParametros.Close;
   end;
end;

procedure TfrmParametros.GroupBox5Exit(Sender: TObject);
begin
   if (chkRep_Orc.Checked = True) and (chkRep_Ven.Checked = True) and (chkRep_Ent.Checked = True) and (chkRep_Ped.Checked = True) then
      xRep_Prod := 'T'
   else if (chkRep_Orc.Checked = False) and (chkRep_Ven.Checked = False) and (chkRep_Ent.Checked = False) and (chkRep_Ped.Checked = False) then
      xRep_Prod := 'N'
   else
   begin
     if chkRep_Orc.Checked = True then
        xRep_Prod := xRep_Prod + 'O';

     if chkRep_Ent.Checked = True then
        xRep_Prod := xRep_Prod + 'E';

     if chkRep_Ven.Checked = True then
        xRep_Prod := xRep_Prod + 'V';

     if chkRep_Ped.Checked = True then
        xRep_Prod := xRep_Prod + 'P';
   end;
end;

procedure TfrmParametros.edtPalav_CustEnter(Sender: TObject);
begin
   if chkSug_Cod_Ba.Checked = False then
      Abort;
end;

procedure TfrmParametros.chkEstoqDecimalClick(Sender: TObject);
begin
   if not chkEstoqDecimal.Checked then
   begin
      speDecimal.Value := 2;
      speDec_Com.Value := 2;
      dmProgs.cdsEmpresaFORMATO_EMP.Text := 'N';
   end
   else
   begin
      speDecimal.Value := dmProgs.cdsEmpresaDECIMAL_EMP.Value;
      speDec_Com.Value := dmProgs.cdsEmpresaDEC_COM_EMP.Value;
      dmProgs.cdsEmpresaFORMATO_EMP.Text := 'S';
   end;

   speDecimal.Enabled := chkEstoqDecimal.Checked;
   speDec_Com.Enabled := chkEstoqDecimal.Checked;
end;

procedure TfrmParametros.chkInfoPersoClick(Sender: TObject);
begin
   pnlInfPerso.Enabled := chkInfoPerso.Checked;
end;

procedure TfrmParametros.chkFATOR_SRVClick(Sender: TObject);
begin
   pnlFator.Enabled := chkFATOR_SRV.Checked; 
end;

procedure TfrmParametros.edtVALOR_FATExit(Sender: TObject);
begin
   if StringToInt(EdtValor_Fat.Text) > 999 then
   begin
      Application.MessageBox('Valor Inválido!' + #13 +
        'Valor deve estar entre 0 a 999','Atenção',MB_ICONERROR);

      edtValor_Fat.SetFocus;
      Abort;
   end;

end;

procedure TfrmParametros.cmbCONTA_RECExit(Sender: TObject);
begin
   if not Empty(cmbConta_Rec.Text) then
   begin
      if dmParametros.cdsContaTIPO_CONTA.Value <> 'R' then
      begin
         Application.MessageBox('Conta não é de Receita!','Atenção',mb_ICONwarning);
         cmbConta_Rec.SetFocus;
         Abort;
      end;
   end;
end;

procedure TfrmParametros.edtDias_BloqExit(Sender: TObject);
begin
   if not Empty(edtDias_Bloq.Text) then
   begin
      if StrToInt(edtDias_Bloq.Text) > 99 then
      begin
         Application.MessageBox('Valor Inválido!' + #13 + 'O Valor deve estar entre 0 a 99',
           'Atenção',MB_ICONWarning);
         edtDias_Bloq.SetFocus;
         Abort;
      end;
   end;
end;

procedure TfrmParametros.edtIMP_VENDAExit(Sender: TObject);
begin
   if StrToFloat(edtIMP_VENDA.Text) > 100 then
   begin
      Application.MessageBox('Valor Inválido!' + #13 +
        'Valor deve estar entre 0 a 100','Atenção',MB_ICONERROR);

      edtIMP_VENDA.SetFocus;
      Abort;
   end;
end;

procedure TfrmParametros.edtFIN_ADMExit(Sender: TObject);
begin
   if StrToFloat(edtFIN_ADM.Text) > 100 then
   begin
      Application.MessageBox('Valor Inválido!' + #13 +
        'Valor deve estar entre 0 a 100','Atenção',MB_ICONERROR);

      edtFIN_ADM.SetFocus;
      Abort;
   end;
end;

procedure TfrmParametros.edtCUSTO_FIXOExit(Sender: TObject);
begin
   if StrToFloat(edtCUSTO_FIXO.Text) > 100 then
   begin
      Application.MessageBox('Valor Inválido!' + #13 +
        'Valor deve estar entre 0 a 100','Atenção',MB_ICONERROR);

      edtCUSTO_FIXO.SetFocus;
      Abort;
   end;
end;

procedure TfrmParametros.edtLUCROExit(Sender: TObject);
begin
   if StrToFloat(edtLUCRO.Text) > 100 then
   begin
      Application.MessageBox('Valor Inválido!' + #13 +
        'Valor deve estar entre 0 a 100','Atenção',MB_ICONERROR);

      edtLUCRO.SetFocus;
      Abort;
   end;
end;

procedure TfrmParametros.edtICMSExit(Sender: TObject);
begin
   if StrToFloat(edtICMS.Text) > 100 then
   begin
      Application.MessageBox('Valor Inválido!' + #13 +
        'Valor deve estar entre 0 a 100','Atenção',MB_ICONERROR);

      edtICMS.SetFocus;
      Abort;
   end;
end;

procedure TfrmParametros.edtPISExit(Sender: TObject);
begin
   if StrToFloat(edtPIS.Text) > 100 then
   begin
      Application.MessageBox('Valor Inválido!' + #13 +
        'Valor deve estar entre 0 a 100','Atenção',MB_ICONERROR);

      edtPIS.SetFocus;
      Abort;
   end;
end;

procedure TfrmParametros.edtCOFINSExit(Sender: TObject);
begin
   if StrToFloat(edtCOFINS.Text) > 100 then
   begin
      Application.MessageBox('Valor Inválido!' + #13 +
        'Valor deve estar entre 0 a 100','Atenção',MB_ICONERROR);

      edtCOFINS.SetFocus;
      Abort;
   end;
end;

procedure TfrmParametros.edtCONT_SOCIAExit(Sender: TObject);
begin
   if StrToFloat(edtCONT_SOCIA.Text) > 100 then
   begin
      Application.MessageBox('Valor Inválido!' + #13 +
        'Valor deve estar entre 0 a 100','Atenção',MB_ICONERROR);

      edtCONT_SOCIA.SetFocus;
      Abort;
   end;
end;

procedure TfrmParametros.chkComiss_RecClick(Sender: TObject);
begin
   edtPorcen_Rec.Enabled := chkComiss_Rec.Checked;
end;

procedure TfrmParametros.chkCusto_LetrClick(Sender: TObject);
begin
  edtPalav_Cust.Enabled := chkCusto_Letr.Checked;
end;

procedure TfrmParametros.chkVarios_EcfClick(Sender: TObject);
begin
   pnlMultEcf.Enabled := chkVarios_Ecf.Checked;
end;

procedure TfrmParametros.Grava_Ecf();
var Serie1: String;
begin
   if not FileExists('c:\ecf.dbf') then
      Cria_Ecf();

   // atualiza arquivo c:\ecf
   with tblECF do
   begin
      Open;

      if RecNo = 0 then
         Insert
      else
         Edit;

      tblECFECF.Value    := IntToStr(speCod_Ecf.Value);
      tblECFSERIAL.Value := edtSERIAL_ECF.Text;

      Post;
      Close;
   end;

   Serie1 := 'E' + Trim(IntToStr(speCod_Ecf.Value));

   // atualiza arquivo serie
   if not dmParametros.cdsSerie.Locate('Serie_serie',Serie1,[loCaseInsensitive]) then
   begin
      dmParametros.CDSSerie.Insert;

      dmParametros.cdsSerieSERIE_SERIE.Value := Serie1;

      dmParametros.cdsSerie.Post;
   end;     
end;

procedure TfrmParametros.Cria_Ecf();
begin
   tblECF.Open;

   with tblECF do
   begin
      if CreateNew('c:\ecf',2,5) then
      begin
         CreateField('ECF'    ,'C',01,00);
         CreateField('TEF'    ,'C',01,00);
         CreateField('PORTA'  ,'C',01,00);
         CreateField('SERIAL' ,'C',20,00);
         CreateField('CAIXA'  ,'N',02,00);

         if not CreateExec then
         begin
            Application.MessageBox('Nao foi possível criar o arquivo "ECF.DBF"','Erro',MB_OK+MB_ICONSTOP);
         end;
      end;
   end;
end;

procedure TfrmParametros.cmbSer_PadExit(Sender: TObject);
begin
   if dmParametros.cdsSerie.Locate('SERIE_SERIE',cmbSer_Pad.Text,[]) then
      cmbImpressao.Text := dmParametros.cdsSerieIMPRESSAO.Text;
end;

procedure TfrmParametros.GravaSerie();
begin
// verifica se existe a serie nf, se nao, cria a mesma
   if not dmParametros.cdsSerie.Locate('Serie_serie','NF',[loCaseInsensitive]) then // FindKey(['NF']) then
   begin
      with dmParametros.cdsSerie do
      begin
         Insert;

         dmParametros.cdsSerieSERIE_SERIE.Value := 'NF';
         dmParametros.cdsSerieIMPRESSAO.Value   := cmbImp_NF.Text;

         Post;
         ApplyUpdates(0);
      end;
   end;

// verifica se existe a serie ci, se nao, cria a mesma

   with dmParametros.cdsSerie do
   begin
      First;

      if not Locate('Serie_serie','CI',[loCaseInsensitive]) then
         Insert
      else
         Edit;

      dmParametros.cdsSerieSERIE_SERIE.Value := 'CI';
      dmParametros.cdsSerieIMPRESSAO.Value   := cmbImpressao.Text;

      Post;
      ApplyUpdates(0);
   end;

   with dmParametros.cdsSerie do
   begin
      First;

      if not Locate('Serie_serie','OR',[loCaseInsensitive]) then
         Insert
      else
         Edit;

      dmParametros.cdsSerieSERIE_SERIE.Value := 'OR';
      dmParametros.cdsSerieIMPRESSAO.Value   := cmbOR.Text;

      Post;
      ApplyUpdates(0);
   end;
end;

procedure TfrmParametros.TabSheet4Show(Sender: TObject);
begin
   cmbDrive_Rem.Enabled := Copy(cmbDrive_Ecf.Text,1,1) = 'M';      
end;

procedure TfrmParametros.TabSheet8Show(Sender: TObject);
begin
   if (dmProgs.cdsEmpresaMODE_BALAN.Value = '') or (dmProgs.cdsEmpresaMODE_BALAN.Value = ' ') then
      rdgMode_Balan.ItemIndex := 0;     
end;

procedure TfrmParametros.TabSheet2Show(Sender: TObject);
begin
   PageControl2.TabIndex := 0;
end;

procedure TfrmParametros.edtCli_PadraoExit(Sender: TObject);
begin
   if (edtCli_Padrao.Text = '') or (StrToInt(edtCli_Padrao.Text) = 0)then
   begin
      if Trim(edtCli_Padrao.Text) = '0' then
         edtCli_Padrao.Text := '';

      edtCliente.Text := '';
      Exit;
   end;
     

   dmParametros.cdsCliente.IndexName := 'CODIGO_CLIENTE';

   if not dmParametros.cdsCliente.FindKey([edtCli_Padrao.Text]) then
   begin
      Application.MessageBox('Cliente não localizado','Atenção',MB_ICONERROR);
      edtCli_Padrao.SetFocus;
   end;
end;

procedure TfrmParametros.edtPgt_PadraoExit(Sender: TObject);
begin
   if (edtPgt_Padrao.Text = '') or (StrToInt(edtPgt_Padrao.Text) = 0) then
   begin
      if Trim(edtPgt_Padrao.Text) = '0' then
         edtPgt_Padrao.Text := '';

      edtPgtoDescricao.Text := '';
      Exit;
   end;

   dmParametros.cdsTipoPagamento.IndexName := 'CODIGO_CPAGAMENTO';

   if not dmParametros.cdsTipoPagamento.FindKey([edtPgt_Padrao.Text]) then
   begin
      Application.MessageBox('Forma de pagamento não cadastrado','Atenção',MB_ICONERROR);
      edtPgt_Padrao.SetFocus;
   end;
end;

procedure TfrmParametros.TabSheet9Show(Sender: TObject);
begin
   edtCli_PadraoExit(Sender);
   edtPgt_PadraoExit(Sender);
end;

procedure TfrmParametros.rdgMode_BalanClick(Sender: TObject);
begin
   if rdgMode_Balan.ItemIndex = 1 then
   begin
      if Application.MessageBox('Deseja configurar automaticamente este modelo de balança?','Configuração',MB_ICONQUESTION+MB_YESNO) = mrYes then
      begin
         rdgBaud_Bal   . Enabled := True;
         rdgPorta_Bal  . Enabled := True;
         rdgEscrit_Bal . Enabled := True;
         rdgBits_Bal   . Enabled := True;
         rdgParid_Bal  . Enabled := True;

         rdgPorta_Bal  . ItemIndex := 0;
         rdgBaud_Bal   . ItemIndex := 0;
         rdgBits_Bal   . ItemIndex := 1;
         rdgEscrit_Bal . ItemIndex := 1;
         rdgParid_Bal  . ItemIndex := 0;
         rdgEtiq_Balan . ItemIndex := 1;
      end;
   end;
end;

procedure TfrmParametros.rdgEscrit_BalClick(Sender: TObject);
begin
   if rdgEscrit_Bal.ItemIndex = 0 then
   begin
      Application.MessageBox('Esta opção não esta disponível     ','Atenção',MB_OK);
      rdgEscrit_Bal.ItemIndex := 1;
   end;
end;

procedure TfrmParametros.Grava_Bal();
begin
   // atualiza arquivo c:\ecf
   with tblECF do
   begin
      Open;

      if RecNo = 0 then
         Insert
      else
         Edit;

      tblECFBALANCA    . Value     := IntToStr(rdgMode_Balan.ItemIndex);
      tblECFPORTA_BAL  . Value     := rdgPorta_Bal  . ItemIndex + 1;
      tblECFBAUD_BAL   . Value     := rdgBaud_Bal   . ItemIndex;
      //tblECFBITS_BAL   . AsInteger := rdgBits_Bal   . ItemIndex;
      tblECFPARID_BAL  . AsInteger := rdgParid_Bal  . ItemIndex;
      tblECFESCRIT_BAL . AsInteger := rdgEscrit_Bal . ItemIndex;

      Post;
      Close;
   end;

end;

procedure TfrmParametros.Button1Click(Sender: TObject);
var
   Caminho: string;
begin
   dmImpNF := TdmImpNF.Create(Self);
   Caminho := ExtractFilePath(Application.ExeName);
      
   if FileExists(pchar(Caminho + 'nota_fiscal.rtm')) then
   begin
      dmImpNF.ppReport1.Template.FileName := Caminho + 'nota_fiscal.rtm';
      dmImpNF.ppReport1.Template.LoadFromFile;
   end;
   
   dmImpNF.ppDesigner1.ShowModal;

   if Application.MessageBox('Deseja salvar alteração feita na nota fiscal?','Configrmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
   begin
      dmImpNF.ppReport1.Template.FileName := Caminho + 'nota_fiscal.rtm';
      dmImpNF.ppReport1.Template.SaveToFile;
   end;

   FreeAndNil(dmImpNF);
end;

end.


