{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FN0101 (FIN015)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Fl�vio Scariot
 DATA DE CONCEP��O    --> 09/02/2007
 FINALIDADE           --> Contas a Pagar
 COMENTARIO           --> Tag = 0 � No envento OnClose, quando o lan�amento n�o foi concluido
                                    apaga o novo registro criado no banco criado no evento OnCrete.
                                    
                          Tag = 1 � Quando o lan�amento foi concluido e assim
                                    quando fechar esta tela n�o apaga o novo
                                    registro criado no evento OnCreate
 *******************************************************************************}
unit uFn0101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, JvExMask, JvSpin, JvDBSpinEdit, StdCtrls, DBCtrls, DB,
  Mask, ExtCtrls, JvToolEdit, JvDBControls, ComCtrls, DBClient, SqlExpr,
  Math, JvComponentBase, JvBalloonHint, StrUtils;

type
  TfrmFn0101 = class(TForm)
    Panel1: TPanel;
    dsPagar: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    btnGravar: TBitBtn;
    StatusBar1: TStatusBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    JvBalloonHint1: TJvBalloonHint;
    JvSpinEdit1: TJvSpinEdit;
    cdsTemporario: TClientDataSet;
    cdsTemporarioDOCUMENTO_PAGAR: TStringField;
    cdsTemporarioNOTAFISCAL: TIntegerField;
    cdsTemporarioTIPO_PAGAR: TIntegerField;
    cdsTemporarioCENTRO_PAGAR: TStringField;
    cdsTemporarioPORTA_PAGAR: TStringField;
    cdsTemporarioCONTA_PAGAR: TStringField;
    cdsTemporarioCORRENTE_PAGAR: TStringField;
    cdsTemporarioFORNECEDOR_PAGAR: TStringField;
    cdsTemporarioENTRADA_PAGAR: TStringField;
    cdsTemporarioEMISSAO_PAGAR: TDateField;
    cdsTemporarioVENCIMENTO_PAGAR: TDateField;
    cdsTemporarioPREVISAO_PAGAR: TDateField;
    cdsTemporarioVALOR_PAGAR: TStringField;
    cdsTemporarioPARCIAL_PAGAR: TStringField;
    cdsTemporarioMORA_DIA_PAGAR: TStringField;
    cdsTemporarioVALORPAGO_PAGAR: TStringField;
    cdsTemporarioFORMAPAGTO_PAGAR: TStringField;
    cdsTemporarioCHAVE_PAGAR: TStringField;
    cdsTemporarioHISTORICO_PAGAR: TMemoField;
    cdsTemporarioTIPO_BAIXA_PAGAR: TStringField;
    cdsTemporarioMOVIMENTO_PAGAR: TStringField;
    cdsTemporarioCAIXA_PAGAR: TStringField;
    cdsTemporarioCOD_EMPRESA_PAGAR: TStringField;
    cdsTemporarioDATA_CADASTRO: TDateField;
    cdsTemporarioSALDO_PAGAR: TStringField;
    ClientDataSet1: TClientDataSet;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    DateField3: TDateField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    MemoField1: TMemoField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    DateField4: TDateField;
    StringField18: TStringField;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnConsulta: TBitBtn;
    btnSair: TBitBtn;
    DBEdit8: TDBEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    edtMulta: TDBEdit;
    Label16: TLabel;
    Label1: TLabel;
    edtCodigo: TEdit;
    Label15: TLabel;
    edtDataCadastro: TJvDBDateEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11Enter(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton2DblClick(Sender: TObject);
    procedure RadioButton3DblClick(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBDateEdit1Enter(Sender: TObject);
    procedure dsPagarDataChange(Sender: TObject; Field: TField);
    procedure JvDBDateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
    function Cheka(Campo : Integer) : Boolean;
    procedure CarregaParametro;
    procedure Controla_Botao(Incluir, Alterar, Excluir, Consultar, Gravar, Sair, Panel : Boolean);
  public
    { Public declarations }
    BeforePost1,
    BotaoConsultar,
    BotaoExcluir,
    Controla1,
    Incluir,
    Alterar,
    Excluir,
    Consultar : Boolean;
    Contador1 : Integer;
    Tipo_Operacao,
    Documento : String;
  end;

var
  frmFn0101: TfrmFn0101;

implementation

uses uCd07, uCd0901, uCd0906, uGlobal, uCd0904, uCd0902,
  uCd0905, uF6, uAltF8, uAltF6, uAltF9, uAltF10,
  uFn0101_01, uEST002, uDmPrincipal,
  udmFn0101, uConsulta, uProcess;

{$R *.dfm}

// habilita ou Desabilita radiobuton das op��es
procedure TfrmFn0101.FormShow(Sender: TObject);
begin
   Tipo_Operacao := '';

   // limpa e abre o dataSet setando os par�metros
   dmFn0101.cdsPagar.Close;
   dmFn0101.cdsPagar.Params.ParamByName('EMPRESA').AsInteger := 0;
   dmFn0101.cdsPagar.Params.ParamByName('DOCUMENTO').AsInteger := 0;
   dmFn0101.cdsPagar.Open;

   BotaoConsultar := False;
   BotaoExcluir := False;

   btnIncluir.SetFocus;

   Incluir := False; // vari�vel de controle de bot�o

   Alterar := False; // vari�vel de controle de bot�o

   Excluir := False; // vari�vel de controle de bot�o

   Consultar := False; // vari�vel de controle de bot�o

   edtDataCadastro.Visible := Incluir;
   Label15.Visible := Incluir;

   Controla_Botao(True, True, True, True, False, False, False);
end;

procedure TfrmFn0101.SpeedButton2Click(Sender: TObject);
begin
   if not Verifica_acesso(33) then
   exit;

   ConsultaFornecedor(DBEdit4); 
end;

procedure TfrmFn0101.SpeedButton1Click(Sender: TObject);
begin
   if not Verifica_acesso(40) then
   exit;

   ComsultaTipoDocumento(DBEdit3);

   DBEdit3.SetFocus;
end;

procedure TfrmFn0101.SpeedButton3Click(Sender: TObject);
begin
   if not Verifica_acesso(38) then
   exit;

   ConsultaPortador(DBEdit10);

   DBEdit10.SetFocus;
end;

procedure TfrmFn0101.SpeedButton4Click(Sender: TObject);
begin
   if not Verifica_acesso(37) then
   exit;

   ConsultaCentroCusto(DBEdit11);

   DBEdit11.SetFocus;
end;

procedure TfrmFn0101.SpeedButton5Click(Sender: TObject);
begin
   if not Verifica_acesso(41) then
   exit;

   ConsultaConta(DBEdit12);

   DBEdit12.SetFocus;

end;

procedure TfrmFn0101.btnGravarClick(Sender: TObject);
Var
  A : Integer;
  DataSet1 : Boolean;
begin
   if (not Cheka(08)) or
      (not Cheka(09)) or
      (not Cheka(10)) or
      (not Cheka(11)) or
      (not Cheka(12)) or
      (not Cheka(13)) or
      (not Cheka(14)) or
      (not Cheka(15)) or
      (not Cheka(16)) then
      Abort;

   DataSet1 := False;

   Contador1 := 0;

   Controla1 := False;

   if dmFn0101.cdsPagar.State = dsInsert then
   begin
      GravaLogUser(self, ' Grava Conta a pagar : ' + edtCodigo.Text);

      dmFn0101.cdsPagarDOCUMENTO_PAGAR.AsString := edtCodigo.Text;
      dmFn0101.cdsPagarCOD_EMPRESA_PAGAR.AsString := CodigoEmpresa1;

      DataSet1 := True;

      dmFn0101.cdsPagar.Post;
   end
   else
   begin
      GravaLogUser(self, ' Altera Conta a pagar : ' + edtCodigo.Text);

      dmFn0101.cdsPagarDOCUMENTO_PAGAR.AsString := edtCodigo.Text;
      dmFn0101.cdsPagarCOD_EMPRESA_PAGAR.AsString := CodigoEmpresa1;

      dmFn0101.cdsPagar.Post;
   end;

      
   if (JvSpinEdit1.AsInteger > 1) and (DataSet1 = True) then
   begin
      Controla1 := True;

      frmFn0101_01 := TfrmFn0101_01.Create(Self);
      frmFn0101_01.ShowModal;

      dmFn0101.cdsParcelas.First;

      dmFn0101.cdsTemporario.close;
      dmFn0101.cdsTemporario.CreateDataSet;

      if not dmFn0101.cdsTemporario.IsEmpty then
         dmFn0101.cdsTemporario.EmptyDataSet;

      if JvSpinEdit1.AsInteger > 1 then
      begin
         dsPagar.Enabled := False;

         frmProcess := TfrmProcess.Create(Self);
         frmProcess.JvgLabel1.Caption := 'Processando...';
         frmProcess.ProgressBar1.Max := JvSpinEdit1.AsInteger;
         frmProcess.Show;
         Application.ProcessMessages;

         for A := 1 to frmFn0101.JvSpinEdit1.AsInteger do
         begin
            frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
            frmProcess.Refresh;

            Contador1 := Contador1 + 1;

            dmFn0101.cdsTemporario.Append;

            if Contador1 = 1 then
            begin
               dmFn0101.cdsTemporarioDOCUMENTO_PAGAR.AsString   := dmFn0101.cdsPagarDOCUMENTO_PAGAR.AsString;

               Documento := edtCodigo.Text;
            end;

            dmFn0101.cdsTemporarioNOTAFISCAL.AsInteger       := dmFn0101.cdsPagarNOTAFISCAL.AsInteger;

            dmFn0101.cdsTemporarioTIPO_PAGAR.AsInteger       := dmFn0101.cdsPagarTIPO_PAGAR.AsInteger;

            dmFn0101.cdsTemporarioCENTRO_PAGAR.AsString      := dmFn0101.cdsPagarCENTRO_PAGAR.AsString;

            dmFn0101.cdsTemporarioPORTA_PAGAR.AsString       := dmFn0101.cdsPagarPORTADOR_PAGAR.AsString;

            dmFn0101.cdsTemporarioCONTA_PAGAR.AsString       := dmFn0101.cdsPagarCONTA_PAGAR.AsString;

            dmFn0101.cdsTemporarioCORRENTE_PAGAR.AsString    := dmFn0101.cdsPagarCORRENTE_PAGAR.AsString;

            dmFn0101.cdsTemporarioFORNECEDOR_PAGAR.AsString  := dmFn0101.cdsPagarFORNECEDOR_PAGAR.AsString;

            dmFn0101.cdsTemporarioENTRADA_PAGAR.AsString     := dmFn0101.cdsPagarENTRADA_PAGAR.AsString;

            dmFn0101.cdsTemporarioEMISSAO_PAGAR.AsDateTime   := dmFn0101.cdsPagarEMISSAO_PAGAR.AsDateTime;

            if (Contador1 > 1) and (Controla1 = True) and (not dmFn0101.cdsParcelas.Eof) then
            begin
               dmFn0101.cdsTemporarioDOCUMENTO_PAGAR.AsString := dmFn0101.cdsParcelasNUM_DOCUMENTO.AsString;

               dmFn0101.cdsTemporarioVENCIMENTO_PAGAR.AsDateTime := dmFn0101.cdsParcelasDATA_VENCIMENTO.AsDateTime;

               dmFn0101.cdsTemporarioHISTORICO_PAGAR.AsString    := dmFn0101.cdsParcelasMEMO.AsString;

               dmFn0101.cdsTemporarioPREVISAO_PAGAR.AsDateTime  := dmFn0101.cdsParcelasDATA_VENCIMENTO.AsDateTime;

               dmFn0101.cdsParcelas.Next;
            end
            else
            begin
               dmFn0101.cdsTemporarioVENCIMENTO_PAGAR.AsDateTime := dmFn0101.cdsPagarVENCIMENTO_PAGAR.AsDateTime;

               dmFn0101.cdsTemporarioHISTORICO_PAGAR.AsString    := dmFn0101.cdsPagarHISTORICO_PAGAR.AsString;

               dmFn0101.cdsTemporarioPREVISAO_PAGAR.AsDateTime  := dmFn0101.cdsPagarVENCIMENTO_PAGAR.AsDateTime;
            end;

            dmFn0101.cdsTemporarioVALOR_PAGAR.AsString       := dmFn0101.cdsPagarVALOR_PAGAR.AsString;

            dmFn0101.cdsTemporarioPARCIAL_PAGAR.AsString     := dmFn0101.cdsPagarPARCIAL_PAGAR.AsString;

            dmFn0101.cdsTemporarioMORA_DIA_PAGAR.AsString    := dmFn0101.cdsPagarMORA_DIA_PAGAR.AsString;

            dmFn0101.cdsTemporarioVALORPAGO_PAGAR.AsString   := dmFn0101.cdsPagarVALORPAGO_PAGAR.AsString;

            dmFn0101.cdsTemporarioFORMAPAGTO_PAGAR.AsString  := dmFn0101.cdsPagarFORMAPAGTO_PAGAR.AsString;

            dmFn0101.cdsTemporarioCHAVE_PAGAR.AsString       := dmFn0101.cdsPagarCHAVE_PAGAR.AsString;

            dmFn0101.cdsTemporarioTIPO_BAIXA_PAGAR.AsString  := dmFn0101.cdsPagarTIPO_BAIXA_PAGAR.AsString;

            dmFn0101.cdsTemporarioMOVIMENTO_PAGAR.AsString   := dmFn0101.cdsPagarMOVIMENTO_PAGAR.AsString;

            dmFn0101.cdsTemporarioCAIXA_PAGAR.AsString       := dmFn0101.cdsPagarCAIXA_PAGAR.AsString;

            dmFn0101.cdsTemporarioTIPODOCUMENTO_PAGAR.AsString := dmFn0101.cdsPagarTIPODOCUMENTO_PAGAR.AsString;

            dmFn0101.cdsTemporarioCOD_EMPRESA_PAGAR.AsString := CodigoEmpresa1;

            dmFn0101.cdsTemporarioSALDO_PAGAR.AsString       := dmFn0101.cdsPagarSALDO_PAGAR.AsString;

            dmFn0101.cdsTemporarioMULTA_PAGAR.AsString       := dmFn0101.cdsPagarMULTA_PAGAR.AsString;

            dmFn0101.cdsTemporario.Post;
          end;

         if JvSpinEdit1.AsInteger > 1 then
         begin
            if not dmFn0101.cdsPagar.IsEmpty then
               dmFn0101.cdsPagar.EmptyDataSet;

            Contador1 := 0;

            dmFn0101.cdsTemporario.First;
            while not dmFn0101.cdsTemporario.Eof do
            begin
               Contador1 := Contador1 + 1;

               dmFn0101.cdsPagar.Append;

               dmFn0101.cdsPagarDOCUMENTO_PAGAR.AsString    := dmFn0101.cdsTemporarioDOCUMENTO_PAGAR.AsString;

               dmFn0101.cdsPagarNOTAFISCAL.AsInteger        := dmFn0101.cdsTemporarioNOTAFISCAL.AsInteger;

               dmFn0101.cdsPagarTIPO_PAGAR.AsInteger        := dmFn0101.cdsTemporarioTIPO_PAGAR.AsInteger;

               dmFn0101.cdsPagarCENTRO_PAGAR.AsString       := dmFn0101.cdsTemporarioCENTRO_PAGAR.AsString;

               dmFn0101.cdsPagarPORTADOR_PAGAR.AsString     := dmFn0101.cdsTemporarioPORTA_PAGAR.AsString;

               dmFn0101.cdsPagarCONTA_PAGAR.AsString        := dmFn0101.cdsTemporarioCONTA_PAGAR.AsString;

               dmFn0101.cdsPagarCORRENTE_PAGAR.AsString     := dmFn0101.cdsTemporarioCORRENTE_PAGAR.AsString;

               dmFn0101.cdsPagarFORNECEDOR_PAGAR.AsString   := dmFn0101.cdsTemporarioFORNECEDOR_PAGAR.AsString;

               dmFn0101.cdsPagarENTRADA_PAGAR.AsString      := dmFn0101.cdsTemporarioENTRADA_PAGAR.AsString;

               dmFn0101.cdsPagarEMISSAO_PAGAR.AsDateTime    := dmFn0101.cdsTemporarioEMISSAO_PAGAR.AsDateTime;

               dmFn0101.cdsPagarVENCIMENTO_PAGAR.AsDateTime := dmFn0101.cdsTemporarioVENCIMENTO_PAGAR.AsDateTime;

               dmFn0101.cdsPagarPREVISAO_PAGAR.AsDateTime   := dmFn0101.cdsTemporarioPREVISAO_PAGAR.AsDateTime;

               dmFn0101.cdsPagarVALOR_PAGAR.AsString        := dmFn0101.cdsTemporarioVALOR_PAGAR.AsString;

               dmFn0101.cdsPagarPARCIAL_PAGAR.AsString      := dmFn0101.cdsTemporarioPARCIAL_PAGAR.AsString;

               dmFn0101.cdsPagarMORA_DIA_PAGAR.AsString     := dmFn0101.cdsTemporarioMORA_DIA_PAGAR.AsString;

               dmFn0101.cdsPagarVALORPAGO_PAGAR.AsString    := dmFn0101.cdsTemporarioVALORPAGO_PAGAR.AsString;

               dmFn0101.cdsPagarFORMAPAGTO_PAGAR.AsString   := dmFn0101.cdsTemporarioFORMAPAGTO_PAGAR.AsString;

               dmFn0101.cdsPagarCHAVE_PAGAR.AsString        := dmFn0101.cdsTemporarioCHAVE_PAGAR.AsString;

               dmFn0101.cdsPagarHISTORICO_PAGAR.AsString    := dmFn0101.cdsTemporarioHISTORICO_PAGAR.AsString;

               dmFn0101.cdsPagarTIPO_BAIXA_PAGAR.AsString   := dmFn0101.cdsTemporarioTIPO_BAIXA_PAGAR.AsString;

               dmFn0101.cdsPagarMOVIMENTO_PAGAR.AsString    := dmFn0101.cdsTemporarioMOVIMENTO_PAGAR.AsString;

               dmFn0101.cdsPagarCAIXA_PAGAR.AsString        := dmFn0101.cdsTemporarioCAIXA_PAGAR.AsString;

               dmFn0101.cdsPagarTIPODOCUMENTO_PAGAR.AsString := dmFn0101.cdsTemporarioTIPODOCUMENTO_PAGAR.AsString;

               dmFn0101.cdsPagarCOD_EMPRESA_PAGAR.AsString  := dmFn0101.cdsTemporarioCOD_EMPRESA_PAGAR.AsString;

               dmFn0101.cdsPagarSALDO_PAGAR.AsString        := dmFn0101.cdsTemporarioVALOR_PAGAR.AsString;

               dmFn0101.cdsPagarMULTA_PAGAR.AsString        := dmFn0101.cdsTemporarioMULTA_PAGAR.AsString;

               dmFn0101.cdsPagar.Post;

               dmFn0101.cdsTemporario.Next;
            end;
         end;
      end;

      frmFn0101_01.Release;
      frmFn0101_01 := nil;

      frmProcess.Release;
      frmProcess := nil;

      dsPagar.Enabled := True;
   end;

   dmFn0101.cdsPagar.ApplyUpdates(0);

   dmFn0101.cdsPagar.EmptyDataSet;

   edtCodigo.Text := '';

   JvSpinEdit1.Enabled := True;

   JvSpinEdit1.Value := 0;

   Application.MessageBox(pChar('Conta' + Tipo_Operacao + 'com sucesso'), 'Informa��o', MB_OK+MB_ICONEXCLAMATION);

   Controla_Botao(True, True, True, True, False, False, False);

   Incluir := False; // vari�vel de controle de bot�o

   edtDataCadastro.Visible := Incluir;
   Label15.Visible := Incluir;
end;

function TfrmFn0101.Cheka(Campo: Integer): Boolean;
Var
  Sql1 : String;
begin
   Result := True;

   case Campo of
     01:
     begin
        if not RetornaTipoDocumento(DBEdit3, DBText1) then
           Result := False;
     end;

     02:
     begin
        if not RetornaFornecedor(DBEdit4, DBText2) then
           Result := False;
     end;

     03:
     begin
        if (DBEdit8.Field.AsString = '') or (DBEdit8.Field.AsString = '0') then
        begin
           Result := False;
           DBEdit8.SetFocus;
           Exit;
        end;
     end;

     04:
     begin
         if edtCodigo.Text = '' then
         begin
            Application.MessageBox('Informe o n�mero do documento', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
            Result := False;
            edtCodigo.SetFocus;
            Exit;
         end;
     end;

     05:
     begin
        if not RetornaPortador(DBEdit10, DBText3) then
           Result := False;
     end;

     06:
     begin
        if not RetornaCentroCusto(DBEdit11, DBText4) then
           Result := False;
     end;

     07:
     begin
        if not RetornaConta(DBEdit12, DBText5) then
           Result := False;
     end;

     08:
     begin
        if edtCodigo.Text = '' then
        begin
           Application.MessageBox('Informe o n�mero do documento', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
     end;

     09:
     begin
        if DBEdit2.Field.AsString = '' then
        begin
           Application.MessageBox('Informe o n�mero da nota fiscal', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
     end;

     10:
     begin
        if DBEdit3.Field.AsString = '' then
        begin
           Application.MessageBox('Informe o tipo de documento', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
     end;

     11:
     begin
        if DBEdit4.Field.AsString = '' then
        begin
           Application.MessageBox('Informe o fornecedor', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
     end;

     12:
     begin
        if JvDBDateEdit1.Field.AsString = '' then
        begin
           Application.MessageBox('Informe a data da emiss�o', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
     end;

     13:
     begin
        if JvDBDateEdit2.Field.AsString = '' then
        begin
           Application.MessageBox('Informe a data do vencimento', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
     end;

     14:
     begin
        if JvDBDateEdit3.Field.AsString = '' then
        begin
           Application.MessageBox('Informe a data da previs�o', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
     end;

     15:
     begin
        if DBEdit8.Field.AsString = '' then
        begin
           Application.MessageBox('Informe o valor do documento', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
     end;

     16:
     begin
        if JvSpinEdit1.AsInteger = 0 then
        begin
           Application.MessageBox('Informe a quantidade de parcelas', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
     end;

   end;
end;

procedure TfrmFn0101.DBEdit8Exit(Sender: TObject);
begin
   StatusBar1.Panels[4].Text := '';

   if btnSair.Focused then
      Exit;

   Cheka(03);
end;

procedure TfrmFn0101.DBEdit1Exit(Sender: TObject);
begin
   if edtCodigo.Text <> '' then
      edtCodigo.Text := RemoveDecimal(edtCodigo.Text);

   if DBEdit2.Focused then
      Exit;

   if edtCodigo.Enabled = True then
      Cheka(04);
end;

procedure TfrmFn0101.DBEdit3Enter(Sender: TObject);
begin
   StatusBar1.Panels[4].Text := ' [Alt+F8] � Consulta Tipo de Documento ';
end;

procedure TfrmFn0101.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssAlt]) and (Key = 119) then
      SpeedButton1.Click;

   if Key = 13 then
   begin
      if not Cheka(01) then
      begin
         DBEdit3.SetFocus;
         Exit;
      end;

      StatusBar1.Panels[4].Text := '';
   end;
end;

procedure TfrmFn0101.DBEdit4Enter(Sender: TObject);
begin
   StatusBar1.Panels[4].Text := ' [F6] � Consulta Fornecedores ';
end;

procedure TfrmFn0101.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 117 then
      SpeedButton2.Click;

   if Key = 13 then
   begin
      if not Cheka(02) then
      begin
         DBEdit4.SetFocus;
         Exit;
      end;

      StatusBar1.Panels[4].Text := '';
   end;
end;

procedure TfrmFn0101.DBEdit10Enter(Sender: TObject);
begin
   StatusBar1.Panels[4].Text := ' [Alt+F6] � Consulta Portador ';
end;

procedure TfrmFn0101.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssAlt]) and (Key = 117) then
      SpeedButton3.Click;

   if Key = 13 then
   begin
      if DBEdit10.Text = '' then
      begin
         DBText3.Field.AsString := '';
         Exit;
      end
      else
      begin
         if not Cheka(05) then
            DBEdit10.SetFocus;
      end;

      StatusBar1.Panels[4].Text := '';
   end;
end;

procedure TfrmFn0101.DBEdit11Enter(Sender: TObject);
begin
   StatusBar1.Panels[4].Text := ' [Alt+F9] � Consulta Centro de Custo ';
end;

procedure TfrmFn0101.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssAlt]) and (Key = 120) then
      SpeedButton4.Click;

   if Key = 13 then
   begin
      if DBEdit11.Text = '' then
      begin
         DBText4.Field.AsString := '';
         Exit;
      end
      else
      begin
         if not Cheka(06) then
            DBEdit11.SetFocus;
      end;

      StatusBar1.Panels[4].Text := '';
   end;
end;

procedure TfrmFn0101.DBEdit12Enter(Sender: TObject);
begin
   StatusBar1.Panels[4].Text := ' [Alt+F10] � Consulta Conta ';
end;

procedure TfrmFn0101.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssAlt]) and (Key = 121) then
      SpeedButton5.Click;

   if Key = 13 then
   begin
      if DBEdit12.Text = '' then
      begin
         DBText5.Field.AsString := '';
         Exit;
      end
      else
      begin
         if not Cheka(07) then
            DBEdit12.SetFocus;
      end;

      StatusBar1.Panels[4].Text := '';
   end;
end;

procedure TfrmFn0101.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmFn0101.RadioButton2DblClick(Sender: TObject);
begin
   edtCodigo.SetFocus;
end;

procedure TfrmFn0101.RadioButton3DblClick(Sender: TObject);
begin
   edtCodigo.SetFocus;
end;

procedure TfrmFn0101.DBEdit1Enter(Sender: TObject);

begin
   if dmFn0101.cdsPagar.State = dsInsert then
   begin
      if edtCodigo.Text <> '' then
         Exit;

      if CodigoSugerido1 > 0 then
         edtCodigo.Text := IntToStr(CodigoSugerido1);

      DBEdit2.SetFocus;
   end;
end;


procedure TfrmFn0101.CarregaParametro;
Var
  Sql1       : String;
  Verifica1  : Boolean;
begin
   Verifica1 := False;

   if edtCodigo.Text <> '' then
      Exit;

   // se o par�metro SUGERE_TIT_EMP estiver habilitado na tabela
   // EMPRESA o sistema ir� sugerir um codigo ao usu�rio quando
   // for feiro o lan�amento  de um novo t�tulo
   if dmFn0101.cdsPagar.State = dsInsert then
      CodigoSugerido('P_PAGAR', 'DOCUMENTO_PAGAR');

   // atualiza o DataSet
   dmFn0101.cdsPagar.Close;
   dmFn0101.cdsPagar.Open;

   // Verifica se o DataSet est� vazio
   if not dmFn0101.cdsPagar.IsEmpty then
      dmFn0101.cdsPagar.EmptyDataSet; // Limpa o DataSet

   // O DataSet retorna ao estado anterior, antes de entrar na procedure
   if (not (dmFn0101.cdsPagar.State in [dsInsert])) then
      dmFn0101.cdsPagar.Append;
end;


procedure TfrmFn0101.edtCodigoExit(Sender: TObject);
begin
   if (btnSair.Focused) or
      (btnConsulta.Focused) or
      (btnExcluir.Focused) or
      (btnGravar.Focused) or
      (btnIncluir.Focused) or
      (btnAlterar.Focused) then
      Exit;

   if not Cheka(04) then
      Abort;

   if Alterar = True then // vari�veis de controle de bot�es
   begin
      if edtCodigo.Text <> '' then
      begin
         dmFn0101.cdsPagar.Close;
         dmFn0101.cdsPagar.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
         dmFn0101.cdsPagar.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
         dmFn0101.cdsPagar.Open;

         if dmFn0101.cdsPagar.IsEmpty then
         begin
            Application.MessageBox('Documento n�o cadastrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edtCodigo.SetFocus;
            Exit;
         end
         else
         dmFn0101.cdsPagar.Edit;

         if dmFn0101.cdsPagar.FieldByName('TIPO_BAIXA_PAGAR').AsString = 'T' then
         begin
            Application.MessageBox('Documento j� liquidado, n�o pode ser alterado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edtCodigo.SetFocus;
            Exit;
         end;
      end;
   end;

   if Excluir = True then
   begin
      if edtCodigo.Text <> '' then
      begin
         dmFn0101.cdsPagar.Close;
         dmFn0101.cdsPagar.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
         dmFn0101.cdsPagar.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
         dmFn0101.cdsPagar.Open;

         if dmFn0101.cdsPagar.IsEmpty then
         begin
            Application.MessageBox('Documento n�o cadastrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edtCodigo.SetFocus;
            Exit;
         end;

          if dmFn0101.cdsPagar.FieldByName('TIPO_BAIXA_PAGAR').AsString = 'T' then
          begin
             Application.MessageBox('Documento j� liquidado, n�o pode ser alterado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
             edtCodigo.SetFocus;
             Exit;
          end;

          if Application.MessageBox('Exclui registro?', 'Aten��o', MB_YESNO+MB_ICONQUESTION) = mrYes then
          begin
             GravaLogUser(self, ' Exclui Conta a pagar : ' + edtCodigo.Text);

             dmFn0101.cdsPagar.Delete;

             dmFn0101.cdsPagar.ApplyUpdates(0);

             Application.MessageBox('Conta exclu�da com sucesso', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);

             edtCodigo.Text := '';
          end;

         edtCodigo.SetFocus;
      end;
   end;

   if Consultar = True then
   begin
      if edtCodigo.Text <> '' then
      begin
         dmFn0101.cdsPagar.Close;
         dmFn0101.cdsPagar.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
         dmFn0101.cdsPagar.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
         dmFn0101.cdsPagar.Open;

         if dmFn0101.cdsPagar.IsEmpty then
         begin
            Application.MessageBox('Documento n�o cadastrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edtCodigo.SetFocus;
            Exit;
         end;

         edtCodigo.SetFocus;
      end;
   end;
end;

procedure TfrmFn0101.btnIncluirClick(Sender: TObject);
begin
//// verifica se e versao demo

   dmFN0101.qryPagarDemo.Close;
   dmFN0101.qryPagarDemo.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmFN0101.qryPagarDemo.Open;
   dmFN0101.cdsPagarDemo.Open;

   if Demo1 and (dmFN0101.cdsPagarDemoTOTALREG.AsInteger >= 10) then
   begin
      ShowMessage('Vers�o de demonstra��o' + #13 +
                  'Limite de t�tulos atingidos');

      dmFN0101.cdsPagarDemo.Close;

      Exit;
   end;

   dmFN0101.cdsPagarDemo.Close;

////////////////////////////////////////////////


   if not Verifica_acesso(270) then
      Exit;

   Tipo_Operacao := ' cadastrada ';

   Controla_Botao(False, False, False, False, True, True, True);

   // procedure global
   CodigoSugerido('P_PAGAR', 'DOCUMENTO_PAGAR');

   Incluir := True;  // vari�vel de controle de bot�o

   Alterar := False; // vari�vel de controle de bot�o

   Excluir := False; // vari�vel de controle de bot�o

   Consultar := False; // vari�vel de controle de bot�o

   edtDataCadastro.Visible := Incluir;
   Label15.Visible := Incluir;

   if edtCodigo.Text = '' then
   begin
      dmFn0101.cdsPagar.Append;

      dmFn0101.cdsPagarDATA_CADASTRO.AsDateTime := DataSystem1;

      edtCodigo.SetFocus;

      if (Sugere_Titulo_Rotina = 'A') or // Contas a pagar e receber
         (Sugere_Titulo_Rotina = 'P') then // apenas contas a pagar
      begin
         if CodigoSugerido1 > 0 then
            edtCodigo.Text := IntToStr(CodigoSugerido1);
      end;
   end
   else
   begin
      if not RetornaPagarDocumentoFn0101(edtCodigo) then // verifica se o documento j� existe
      begin
         edtCodigo.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn0101.btnAlterarClick(Sender: TObject);
begin
   if not Verifica_acesso(271) then
      Exit;

   Tipo_Operacao := ' alterada ';

   Controla_Botao(False, False, False, False, True, True, True);

   Alterar := True; // vari�vel de controle de bot�o

   Excluir := False; // vari�vel de controle de bot�o

   Consultar := False; // vari�vel de controle de bot�o

   Incluir := False; // vari�vel de controle de bot�o

   JvSpinEdit1.Enabled := False;

   JvSpinEdit1.Value := 1;

   edtDataCadastro.Visible := Incluir;
   Label15.Visible := Incluir;

   if edtCodigo.Text = '' then
   begin
      dmFn0101.cdsPagar.Edit;

      edtDataCadastro.Field.AsDateTime := DataSystem1;

      edtCodigo.SetFocus;
   end
   else
   begin
      dmFn0101.cdsPagar.Close;
      dmFn0101.cdsPagar.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0101.cdsPagar.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
      dmFn0101.cdsPagar.Open;

      if dmFn0101.cdsPagar.IsEmpty then
      begin
         Application.MessageBox('Documento n�o cadastrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end
      else
         dmFn0101.cdsPagar.Edit;

      if dmFn0101.cdsPagar.FieldByName('TIPO_BAIXA_PAGAR').AsString = 'T' then
      begin
         Application.MessageBox('Documento j� liquidado, n�o pode ser alterado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end;

      edtCodigo.SetFocus;
   end;
end;

procedure TfrmFn0101.btnExcluirClick(Sender: TObject);
begin
   if not Verifica_acesso(272) then
      Exit;

   Controla_Botao(False, False, False, False, True, True, True);

   Excluir := True; // vari�vel de controle de bot�o

   Alterar := False; // vari�vel de controle de bot�o

   Consultar := False; // vari�vel de controle de bot�o

   Incluir := False; // vari�vel de controle de bot�o

   edtDataCadastro.Visible := Incluir;
   Label15.Visible := Incluir;

   if edtCodigo.Text = '' then
   begin
      edtCodigo.SetFocus;
      Exit;
   end
   else
   begin
      dmFn0101.cdsPagar.Close;
      dmFn0101.cdsPagar.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0101.cdsPagar.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
      dmFn0101.cdsPagar.Open;

      if dmFn0101.cdsPagar.IsEmpty then
      begin
         Application.MessageBox('Documento n�o cadastrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end
      else
      begin
         if dmFn0101.cdsPagar.State = dsBrowse then
            dmFn0101.cdsPagar.Edit;
      end;

       if dmFn0101.cdsPagar.FieldByName('TIPO_BAIXA_PAGAR').AsString = 'T' then
       begin
          Application.MessageBox('Documento j� liquidado, n�o pode ser alterado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
          Exit;
       end;

       if Application.MessageBox('Exclui registro?', 'Aten��o', MB_YESNO+MB_ICONQUESTION) = mrYes then
       begin
          GravaLogUser(self, ' Exclui Conta a pagar : ' + edtCodigo.Text);

          dmFn0101.cdsPagar.Delete;

          dmFn0101.cdsPagar.ApplyUpdates(0);

          Application.MessageBox('Conta exclu�da com sucesso', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);

          edtCodigo.Text := '';
       end;

      edtCodigo.SetFocus;
   end;
end;

procedure TfrmFn0101.btnConsultaClick(Sender: TObject);
begin
   Controla_Botao(False, False, False, False, False, True, True);

   Consultar := True; // vari�vel de controle de bot�o

   Alterar := False; // vari�vel de controle de bot�o

   Excluir := False; // vari�vel de controle de bot�o

   Incluir := False; // vari�vel de controle de bot�o

   edtDataCadastro.Visible := Incluir;
   Label15.Visible := Incluir;

   if edtCodigo.Text = '' then
   begin
      edtCodigo.SetFocus;
      Exit;
   end
   else
   begin
      dmFn0101.cdsPagar.Close;
      dmFn0101.cdsPagar.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0101.cdsPagar.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
      dmFn0101.cdsPagar.Open;

      if dmFn0101.cdsPagar.IsEmpty then
      begin
         Application.MessageBox('Documento n�o cadastrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end
      else
      begin
         if dmFn0101.cdsPagar.State = dsBrowse then
            dmFn0101.cdsPagar.Edit;
      end;

      edtCodigo.SetFocus;
   end;
end;

procedure TfrmFn0101.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn0101.btnSairClick(Sender: TObject);
begin
   if btnSair.Caption = '&Cancelar' then
   begin
      dmFn0101.cdsPagar.Cancel;

      edtCodigo.Text := '';

      JvSpinEdit1.Enabled := True;

      Controla_Botao(True, True, True, True, False, False, False);

      Incluir := False; // vari�vel de controle de bot�o

      edtDataCadastro.Visible := Incluir;
      Label15.Visible := Incluir;

      if dmFn0101.cdsPagar.RecordCount > 0 then
         dmFn0101.cdsPagar.EmptyDataSet;
   end
   else
   begin
      Close;
   end;
end;

procedure TfrmFn0101.Controla_Botao(Incluir, Alterar, Excluir,
  Consultar, Gravar, Sair, Panel : Boolean);
begin
   btnIncluir.Enabled := Incluir;
   btnAlterar.Enabled := Alterar;
   btnExcluir.Enabled := Excluir;
   btnConsulta.Enabled := Consultar;
   btnGravar.Enabled := Gravar;
   Panel1.Enabled := Panel;
   btnSair.Caption := IfThen(Sair, '&Cancelar', '&Sair');
end;

procedure TfrmFn0101.FormCreate(Sender: TObject);
begin
   dmFn0101 := TdmFn0101.Create(Self);
end;

procedure TfrmFn0101.JvDBDateEdit1Enter(Sender: TObject);
begin
   JvDBDateEdit1.Date := DataSystem1;
   JvDBDateEdit2.Date := DataSystem1;
   JvDBDateEdit3.Date := DataSystem1;
end;

procedure TfrmFn0101.dsPagarDataChange(Sender: TObject; Field: TField);
begin
   Panel1.Enabled := (dmFn0101.cdsPagar.Active) and
                     (dmFn0101.cdsPagar.State in [dsInsert, dsEdit]);
end;

procedure TfrmFn0101.JvDBDateEdit2Exit(Sender: TObject);
begin
   JvDBDateEdit3.Date := JvDBDateEdit2.Date;
end;

end.
