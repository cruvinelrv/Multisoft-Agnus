{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FIN014 (FIN014)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 28/03/2007
 FINALIDADE           --> Cadastra Contas a Receber
 COMENTARIO           -->

 *******************************************************************************}

unit uFn0201;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvDBControls, DB, JvSpin, Math, StrUtils, DBClient, FMTBcd,
  SqlExpr, Grids, DBGrids;

type
  TfrmFn0201 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnConsulta: TBitBtn;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    DataSource1: TDataSource;
    DBEdit13: TJvDBDateEdit;
    Edit1: TEdit;
    edtParcelas: TJvSpinEdit;
    btnAlteraPor: TBitBtn;
    btnReabreTit: TBitBtn;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label1: TLabel;
    edtCodigo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoExit(Sender: TObject);
    procedure btnAlteraPorClick(Sender: TObject);
    procedure btnReabreTitClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBDateEdit1Enter(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtParcelasExit(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoEnter(Sender: TObject);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDBDateEdit2Enter(Sender: TObject);
    procedure JvDBDateEdit3Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Controla_Botoes(AlteraPor, ReabreTit, Incluir, Alterar, Excluir, Consultar, Gravar, Sair : Boolean);
    function Cheka(Campo : Integer) : Boolean;
    procedure LimpaStatusBar;
    procedure Habilita_Painel;
  public
    { Public declarations }
    AlteraPor,
    ReabreTit,
    Incluir,
    Controla1,
    Alterar,
    Excluir,
    Consultar : Boolean;
    Contador1 : Integer;
    Tipo_Operacao,
    Documento : String;
  end;

var
  frmFn0201: TfrmFn0201;

implementation

uses uGlobal, uAltF8, uCd01_2, uAltF6,
  uAltF9, uAltF10, uF4, uFn0201_01, uFn0101_01, uCd06, uDmPrincipal,
  udmFn0201, uConsulta, uProcess;

{$R *.dfm}

{ TfrmFn0201 }

procedure TfrmFn0201.Controla_Botoes(AlteraPor, ReabreTit, Incluir, Alterar, Excluir, Consultar,
  Gravar, Sair: Boolean);
begin
   btnAlteraPor.Enabled := AlteraPor;
   btnReabreTit.Enabled := ReabreTit;
   btnIncluir.Enabled := Incluir;
   btnAlterar.Enabled := Alterar;
   btnExcluir.Enabled := Excluir;
   btnConsulta.Enabled := Consultar;
   btnGravar.Enabled := Gravar;
   btnSair.Caption := IfThen(Sair, '&Cancelar', '&Sair');
end;

procedure TfrmFn0201.FormShow(Sender: TObject);
begin
   Tipo_Operacao := '';

   dmFn0201.cdsReceber.Close;
   dmFn0201.cdsReceber.Params.ParamByName('DUPLICATA').AsInteger := 0;
   dmFn0201.cdsReceber.Params.ParamByName('EMPRESA').AsInteger := 0;
   dmFn0201.cdsReceber.Open;

   Controla_Botoes(True, True, True, True, True, True, False, False);

   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [F2] » Geral ';
   StatusBar1.Panels[1].Width := 100;

   StatusBar1.Panels[2].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[2].Width := 1000;

   btnIncluir.SetFocus;
end;

procedure TfrmFn0201.btnIncluirClick(Sender: TObject);
begin
//// verifica se e versao demo

   dmFN0201.qryReceberDemo.Close;
   dmFN0201.qryReceberDemo.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmFN0201.qryReceberDemo.Open;
   dmFN0201.cdsReceberDemo.Open;

   if Demo1 and (dmFN0201.cdsReceberDemo.FieldByName('TOTALREG').AsInteger >= 10) then
   begin
      ShowMessage('Versão de demonstração' + #13 +
                  'Limite de títulos atingidos');

      dmFN0201.cdsReceberDemo.Close;

      Exit;
   end;

   dmFN0201.cdsReceberDemo.Close;

////////////////////////////////////////////////


   if not Verifica_acesso(273) then
      Exit;

   Tipo_Operacao := ' Documento foi cadastrado ';

   Controla_Botoes(False, False, False, False, False, False, True, True);

   AlteraPor := False; // Variáveis de controle dos botões
   ReabreTit := False;
   Incluir := True;
   Alterar := False;
   Excluir := False;
   Consultar := False;

   DBEdit10.ReadOnly := True;
   DBEdit11.ReadOnly := True;
   DBEdit12.ReadOnly := True;
   DBEdit13.ReadOnly := True;
   Edit1.ReadOnly := True;
   DBEdit10.TabStop := False;
   DBEdit11.TabStop := False;
   DBEdit12.TabStop := False;
   DBEdit13.TabStop := False;
   Edit1.TabStop := False;

   // procedure sugere codigo para o titulo
   CodigoSugerido('P_RECEBER', 'DUPLICATA_RECEBER');

   if (Sugere_Titulo_Rotina = 'A') or // contas a pagar e receber
      (Sugere_Titulo_Rotina = 'R') then // apenas contas a receber
   begin
      if CodigoSugerido1 > 0 then
         edtCodigo.Text := IntToStr(CodigoSugerido1);
   end;

   edtCodigo.SetFocus;
end;

procedure TfrmFn0201.btnAlterarClick(Sender: TObject);
begin
   if not Verifica_acesso(274) then
      Exit;

   Tipo_Operacao := ' Documento foi alterado ';

   Controla_Botoes(False, False, False, False, False, False, True, True);

   AlteraPor := False; // Variáveis de controle dos botões
   ReabreTit := False;
   Incluir := False;
   Alterar := True;
   Excluir := False;
   Consultar := False;

   if edtCodigo.Text = '' then
   begin
      dmFn0201.cdsReceber.Append;

      edtCodigo.SetFocus;
   end
   else
   begin
      dmFn0201.cdsReceber.Close;
      dmFn0201.cdsReceber.Params.ParamByName('DUPLICATA').AsString := edtCodigo.Text;
      dmFn0201.cdsReceber.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0201.cdsReceber.Open;

      if dmFn0201.cdsReceber.IsEmpty then
      begin
         Application.MessageBox('Nenhum registro encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end
      else
      begin
         dmFn0201.cdsReceber.Edit;
         Habilita_Painel;
      end;
   end;
end;

procedure TfrmFn0201.btnExcluirClick(Sender: TObject);
begin
   if not Verifica_acesso(277) then
      Exit;

   Controla_Botoes(False, False, False, False, False, False, False, True);

   AlteraPor := False; // Variáveis de controle dos botões
   ReabreTit := False;
   Incluir := False;
   Alterar := False;
   Excluir := True;
   Consultar := False;

   if edtCodigo.Text = '' then
   begin
      edtCodigo.SetFocus;
      Exit;
   end
   else
   begin
      dmFn0201.cdsReceber.Close;
      dmFn0201.cdsReceber.Params.ParamByName('DUPLICATA').AsString := edtCodigo.Text;
      dmFn0201.cdsReceber.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0201.cdsReceber.Open;

      if dmFn0201.cdsReceber.IsEmpty then
      begin
         Application.MessageBox('Documento não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end
      else
      begin
         if dmFn0201.cdsReceber.State = dsBrowse then
         begin
            dmFn0201.cdsReceber.Edit;
            Habilita_Painel;
         end;
      end;

      if dmFn0201.cdsReceber.FieldByName('TIPO_BAIXA_RECEBER').AsString = 'T' then
       begin
          Application.MessageBox('Documento já liquidado, não pode ser alterado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
          Exit;
       end;

      if Application.MessageBox('Exclui Registro?', 'Questionamento', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         GravaLogUser(self, ' Exclui conta a receber : ' + edtCodigo.Text);

         dmFn0201.cdsReceber.Delete;

         dmFn0201.cdsReceber.ApplyUpdates(0);

         Application.MessageBox('Documento excluído com sucesso', 'Informação', MB_OK+MB_ICONEXCLAMATION);

         edtCodigo.Text := '';
      end;
   end;
end;

procedure TfrmFn0201.btnConsultaClick(Sender: TObject);
begin
   Controla_Botoes(False, False, False, False, False, False, False, True);

   AlteraPor := False; // Variáveis de controle dos botões
   ReabreTit := False;
   Incluir := False;
   Alterar := False;
   Excluir := False;
   Consultar := True;

   if edtCodigo.Text = '' then
   begin
      edtCodigo.SetFocus;
   end
   else
   begin
      dmFn0201.cdsReceber.Close;
      dmFn0201.cdsReceber.Params.ParamByName('DUPLICATA').AsString := edtCodigo.Text;
      dmFn0201.cdsReceber.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0201.cdsReceber.Open;

      if dmFn0201.cdsReceber.IsEmpty then
      begin
         Application.MessageBox('Nenhum registro encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end
      else
      begin
         if dmFn0201.cdsReceber.State = dsBrowse then
         begin
            dmFn0201.cdsReceber.Edit;
            Habilita_Painel;
         end;
      end;
   end;

end;

procedure TfrmFn0201.btnSairClick(Sender: TObject);
begin
   if btnSair.Caption = '&Cancelar' then
   begin
      dmFn0201.cdsReceber.Cancel;
      Habilita_Painel;

      Controla_Botoes(True, True, True, True, True, True, False, False);

      DBEdit10.ReadOnly := True;
      DBEdit11.ReadOnly := False;
      DBEdit12.ReadOnly := False;
      DBEdit13.ReadOnly := False;
      Edit1.ReadOnly := False;
      DBEdit10.TabStop := False;
      DBEdit11.TabStop := False;
      DBEdit12.TabStop := False;
      DBEdit13.TabStop := False;
      Edit1.TabStop := False;

      if (not(dmFn0201.cdsReceber.IsEmpty)) then
         dmFn0201.cdsReceber.EmptyDataSet;

      edtCodigo.Text := '';
   end
   else
      Close;
end;

procedure TfrmFn0201.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if edtCodigo.Text = '' then
      Exit;

   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn0201.edtCodigoExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if Incluir = True then
   begin
      if edtCodigo.Text <> '' then
      begin
         dmFn0201.cdsReceber.Close;
         dmFn0201.cdsReceber.Params.ParamByName('DUPLICATA').AsString := edtCodigo.Text;
         dmFn0201.cdsReceber.Params.ParamByName('EMPRESA').AsString   := CodigoEmpresa1;
         dmFn0201.cdsReceber.Open;

         if not dmFn0201.cdsReceber.IsEmpty then
         begin
            Application.MessageBox('Documento já está Cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            edtCodigo.SetFocus;
            Abort;
         end
         else
         begin
            dmFn0201.cdsReceber.Append;
            Habilita_Painel;
         end;
      end;
   end;

   if AlteraPor = True then
      btnAlteraPor.Click;

   if Alterar = True then
      btnAlterar.Click;

   if Excluir = True then
      btnExcluir.Click;

   if Consultar = True then
      btnConsulta.Click;

   if ReabreTit = True then
      btnReabreTit.Click;

end;

function TfrmFn0201.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin
         if not RetornaTipoDocumento(DBEdit1, DBText1) then
            Result := False;
      end;

      02:
      begin
         if not RetornaCliente(DBEdit2, DBText2) then
            Result := False;
      end;

      03:
      begin
         if not RetornaPortador(DBEdit5, DBText3) then
            Result := False;
      end;

      04:
      begin
         if not RetornaCentroCusto(DBEdit6, DBText4) then
            Result := False;
      end;

      05:
      begin
         if not RetornaConta(DBEdit7, DBText5) then
            Result := False;
      end;

      06:
      begin
         if not RetornaVendedor(DBEdit8, DBText6) then
            Result := False;
      end;

      07:
      begin
         if edtCodigo.Text = '' then
         begin
            Application.MessageBox('Informe o Número do documento', 'Informção', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
            edtCodigo.SetFocus;
         end;
      end;

      08:
      begin
         if DBEdit1.Field.AsString = '' then
         begin
            Application.MessageBox('Informe o código do tipo de documento', 'Informção', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      09:
      begin
         if DBEdit2.Field.AsString = '' then
         begin
            Application.MessageBox('Informe o Código do cliente', 'Informção', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      10:
      begin
         if JvDBDateEdit1.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a data da Emissão', 'Informção', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      11:
      begin
         if JvDBDateEdit1.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a data do Vencimento', 'Informção', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      12:
      begin
         if JvDBDateEdit1.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a data da Previsão', 'Informção', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;
   end;
end;

procedure TfrmFn0201.btnAlteraPorClick(Sender: TObject);
begin
   if not Verifica_acesso(278) then
      Exit;

   Tipo_Operacao := ' Portador foi alterado ';

   Controla_Botoes(False, False, False, False, False, False, True, True);

   AlteraPor := True; // Variáveis de controle dos botões
   ReabreTit := False;
   Incluir := False;
   Alterar := False;
   Excluir := False;
   Consultar := False;

   if edtCodigo.Text = '' then
   begin
      edtCodigo.SetFocus;
      Exit;
   end
   else
   begin
      dmFn0201.cdsReceber.Close;
      dmFn0201.cdsReceber.Params.ParamByName('DUPLICATA').AsString := edtCodigo.Text;
      dmFn0201.cdsReceber.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0201.cdsReceber.Open;

      if dmFn0201.cdsReceber.IsEmpty then
      begin
         Application.MessageBox('Documento não cadastrado', 'Informção', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end
      else
         dmFn0201.cdsReceber.Edit;

      DBEdit5.SetFocus;
   end;
end;

procedure TfrmFn0201.btnReabreTitClick(Sender: TObject);
begin
   if not Verifica_acesso(279) then
      Exit;

   Controla_Botoes(False, False, False, False, False, False, True, True);

   AlteraPor := False; // Variáveis de controle dos botões
   ReabreTit := True;
   Incluir := False;
   Alterar := False;
   Excluir := False;
   Consultar := False;

   if edtCodigo.Text = '' then
   begin
      edtCodigo.SetFocus;
      Exit;
   end
   else
   begin
      dmFn0201.sqqReabreTit.Close;
      dmFn0201.sqqReabreTit.SQL.Clear;
      dmFn0201.sqqReabreTit.SQL.Add('SELECT * FROM P_CONLAN WHERE DOCUMENTO_CONLAN = ' + QuotedStr(edtCodigo.Text));
      dmFn0201.sqqReabreTit.Open;

      if not dmFn0201.sqqReabreTit.IsEmpty then
      begin
         Application.MessageBox('Existe lançamento financeiro. Use processo padrão.' + #13 + 'Financeiro/6 - Lançamento Financeiro', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end
      else
      begin
         Application.MessageBox('Documento não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end;

      dmFn0201.cdsReceber.Close;
      dmFn0201.cdsReceber.Params.ParamByName('DUPLICATA').AsString := edtCodigo.Text;
      dmFn0201.cdsReceber.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0201.cdsReceber.Open;

      if not dmFn0201.cdsReceber.IsEmpty then
      begin
         if dmFn0201.cdsReceberTIPO_BAIXA_RECEBER.AsString <> 'T' then
         begin
            Application.MessageBox('Documento não esta quitado', 'Informção', MB_OK+MB_ICONEXCLAMATION);
            Exit;
         end;
      end;

      if Application.MessageBox('Reabre documento?', 'Reabertura', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         if Application.MessageBox('Tem certeza realmente?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
         begin
            if not dmFn0201.cdsReceber.IsEmpty then
            begin
               dmFn0201.cdsReceber.Edit;

               dmFn0201.cdsReceberTIPO_BAIXA_RECEBER.AsString := '';

               dmFn0201.cdsReceberMOVIMENTO_RECEBER.AsString := '';

               dmFn0201.cdsReceberVALORPAGO_RECEBER.AsFloat := 0;

               dmFn0201.cdsReceber.Post;

               dmFn0201.cdsReceber.ApplyUpdates(0);

               Application.MessageBox('Título reaberto com sucesso', 'Informação', MB_OK+MB_ICONEXCLAMATION);

               GravaLogUser(Self, 'Reabriu o documento ' + edtCodigo.Text);
            end;
         end;
      end;
   end;
end;

procedure TfrmFn0201.DBEdit3Exit(Sender: TObject);
begin
   if (DBEdit3.Field.AsString = '') or (DBEdit3.Field.AsString = '0') then
   begin
      DBEdit3.SetFocus;
      Exit;
   end;
end;

procedure TfrmFn0201.LimpaStatusBar;
begin
   if StatusBar1.Panels[0].Text <> '' then
      StatusBar1.Panels[0].Text := '';

   if StatusBar1.Panels[1].Text <> '' then
      StatusBar1.Panels[1].Text := '';

   if StatusBar1.Panels[2].Text <> '' then
      StatusBar1.Panels[2].Text := '';

   if StatusBar1.Panels[3].Text <> '' then
      StatusBar1.Panels[3].Text := '';
end;

procedure TfrmFn0201.DBEdit1Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Tipo de Documento ';
   StatusBar1.Panels[0].Width := 200;

   StatusBar1.Panels[1].Text := ' [Alt+F8] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0201.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if edtCodigo.Text = '' then
      Exit;

   // Consulta Tipo de documento
   if (Shift = [ssAlt]) and (Key = 119) then
      SpeedButton1.Click;

   if Key = 13 then
   begin
      if not Cheka(01) then
      begin
         DBEdit1.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn0201.DBEdit2Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Cliente ';
   StatusBar1.Panels[0].Width := 200;

   StatusBar1.Panels[1].Text := ' [F7] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0201.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if edtCodigo.Text = '' then
      Exit;

   // chama consulta de cliente
   if Key = 118 then
      SpeedButton2.Click;

   if Key = 13 then
   begin
      if not Cheka(02) then
     begin
        DBEdit2.SetFocus;
        Exit;
     end;
   end;
end;

procedure TfrmFn0201.JvDBDateEdit1Enter(Sender: TObject);
begin
   JvDBDateEdit1.Date := DataSystem1;
   JvDBDateEdit2.Date := DataSystem1;
   JvDBDateEdit3.Date := DataSystem1;

   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [F2] » Geral ';
   StatusBar1.Panels[1].Width := 100;

   StatusBar1.Panels[2].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn0201.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if edtCodigo.Text = '' then
      Exit;

    // chama consulta de portador
   if (Shift = [ssAlt]) and (Key = 117) then
      SpeedButton3.Click;

   if Key = 13 then
   begin
      if DBEdit5.Text = '' then
      begin
         DBText3.Field.AsString := '';
         Exit;
      end
      else
      begin
        if not Cheka(03) then
           DBEdit5.SetFocus;
      end;

      if dmFn0201.cdsReceber.State = dsEdit then
      begin
         if btnSair.Focused then
            Exit;

         if btnGravar.Focused then
            Exit;

         DBEdit5.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn0201.DBEdit5Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Portador ';
   StatusBar1.Panels[0].Width := 200;

   StatusBar1.Panels[1].Text := ' [Alt+F6] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0201.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if edtCodigo.Text = '' then
      Exit;

   // chama consulta de centro de custo
   if (Shift = [ssAlt]) and (Key = 120) then
      SpeedButton4.Click;

   if Key = 13 then
   begin
      if btnSair.Focused then
      Exit;

      if DBEdit6.Text = '' then
      begin
         DBText4.Field.AsString := '';
         Exit;
      end
      else
      begin
        if not Cheka(04) then
           DBEdit6.SetFocus;
      end;
   end;
end;

procedure TfrmFn0201.DBEdit6Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Centro de Custo ';
   StatusBar1.Panels[0].Width := 200;

   StatusBar1.Panels[1].Text := ' [Alt+F9] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0201.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if edtCodigo.Text = '' then
      Exit;

   // chama consulta de Conta
   if (Shift = [ssAlt]) and (Key = 121) then
      SpeedButton5.Click;

   if Key = 13 then
   begin
      if btnSair.Focused then
      Exit;

      if DBEdit7.Text = '' then
      begin
         DBText5.Field.AsString := '';
         Exit;
      end
      else
      begin
        if not Cheka(05) then
           DBEdit7.SetFocus;
      end;
   end;
end;

procedure TfrmFn0201.DBEdit7Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código da Conta ';
   StatusBar1.Panels[0].Width := 160;

   StatusBar1.Panels[1].Text := ' [AltF+10] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0201.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if edtCodigo.Text = '' then
      Exit;

   // Chama consulta de vendedor
   if Key = 115 then
      SpeedButton6.Click;

   if Key = 13 then
   begin
      if btnSair.Focused then
      Exit;

      if DBEdit8.Text = '' then
      begin
         DBText6.Field.AsString := '';
         Exit;
      end
      else
      begin
        if not Cheka(06) then
           DBEdit8.SetFocus;
      end;
   end;
end;

procedure TfrmFn0201.DBEdit8Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Vendedor ';
   StatusBar1.Panels[0].Width := 160;

   StatusBar1.Panels[1].Text := ' [AltF+10] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0201.SpeedButton1Click(Sender: TObject);
begin
   if not Verifica_acesso(40) then
   exit;

   DBEdit1.SetFocus;

   ComsultaTipoDocumento(DBEdit1);
end;

procedure TfrmFn0201.SpeedButton2Click(Sender: TObject);
begin
   DBEdit2.SetFocus;

   ConsultaCliente(DBEdit2);
end;

procedure TfrmFn0201.SpeedButton3Click(Sender: TObject);
begin
   if not Verifica_acesso(38) then
      exit;

   DBEdit5.SetFocus;

   ConsultaPortador(DBEdit5);
end;

procedure TfrmFn0201.SpeedButton4Click(Sender: TObject);
begin
   if not Verifica_acesso(37) then
   exit;

   DBEdit6.SetFocus;

  ConsultaCentroCusto(DBEdit6);
end;

procedure TfrmFn0201.SpeedButton5Click(Sender: TObject);
begin
   if not Verifica_acesso(41) then
      exit;

   DBEdit7.SetFocus;

   ConsultaConta(DBEdit7);
end;

procedure TfrmFn0201.SpeedButton6Click(Sender: TObject);
begin
   DBEdit8.SetFocus;

   ConsultaVendedor(DBEdit8);
end;

procedure TfrmFn0201.btnGravarClick(Sender: TObject);
Var A : Integer;
begin
   if (not Cheka(07)) or
      (not Cheka(08)) or
      (not Cheka(09)) or
      (not Cheka(10)) or
      (not Cheka(11)) or
      (not Cheka(12)) then
      Abort;

   Contador1 := 0;

   Controla1 := False;

   if dmFn0201.cdsReceber.State = dsInsert then
   begin
      GravaLogUser(self, ' Grava Conta a receber : ' + edtCodigo.Text);

      dmFn0201.cdsReceberDUPLICATA_RECEBER.AsString := edtCodigo.Text;
      dmFn0201.cdsReceberCOD_EMPRESA.AsString := CodigoEmpresa1;
   end
   else
   begin
      dmFn0201.cdsReceberDUPLICATA_RECEBER.AsString := edtCodigo.Text;
      dmFn0201.cdsReceberCOD_EMPRESA.AsString := CodigoEmpresa1;

      GravaLogUser(self, ' Altera Conta a receber : ' + edtCodigo.Text);
   end;

   if (edtParcelas.AsInteger > 1) and (AlteraPor = False) then
   begin
      Controla1 := True;

      frmFn0201_01 := TfrmFn0201_01.Create(Self);
      frmFn0201_01.ShowModal;

      dmFn0201.cdsTemporario.Close;
      dmFn0201.cdsTemporario.CreateDataSet;

      dmFn0201.cdsParcelas.First;

      DataSource1.Enabled := False;

      frmProcess := TfrmProcess.Create(Self);
      frmProcess.JvgLabel1.Caption := 'Processando...';
      frmProcess.ProgressBar1.Max := edtParcelas.AsInteger;
      frmProcess.Show;
      Application.ProcessMessages;

      for A := 1 to edtParcelas.AsInteger do
      begin
         frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
         frmProcess.Refresh;

         Contador1 := Contador1 + 1;

         dmFn0201.cdsTemporario.Append;

         if Contador1 = 1 then
         begin
            dmFn0201.cdsTemporarioDUPLICATA_RECEBER.AsString   := dmFn0201.cdsReceberDUPLICATA_RECEBER.AsString;

            Documento := edtCodigo.Text;
         end;

         dmFn0201.cdsTemporarioTIPO_DOCUMENTO_RECEBER.AsString := dmFn0201.cdsReceberTIPO_DOCUMENTO_RECEBER.AsString;

         dmFn0201.cdsTemporarioCODIGO_CLIENTE_RECEBER.AsInteger := dmFn0201.cdsReceberCODIGO_CLIENTE_RECEBER.AsInteger;

         dmFn0201.cdsTemporarioEMISSAO_RECEBER.AsDateTime := dmFn0201.cdsReceberEMISSAO_RECEBER.AsDateTime;

         if (Contador1 > 1) and (Controla1 = True) and (not dmFn0201.cdsParcelas.Eof) then
         begin
            dmFn0201.cdsTemporarioDUPLICATA_RECEBER.AsString := dmFn0201.cdsParcelasNUM_DOCUMENTO.AsString;

            dmFn0201.cdsTemporarioVENCIMENTO_RECEBER.AsDateTime := dmFn0201.cdsParcelasDATA_VENCIMENTO.AsDateTime;

            dmFn0201.cdsTemporarioPREVISAO_RECEBER.AsDateTime  := dmFn0201.cdsParcelasDATA_VENCIMENTO.AsDateTime;

            dmFn0201.cdsParcelas.Next;
         end
         else
         begin
            dmFn0201.cdsTemporarioVENCIMENTO_RECEBER.AsDateTime := dmFn0201.cdsReceberVENCIMENTO_RECEBER.AsDateTime;

            dmFn0201.cdsTemporarioPREVISAO_RECEBER.AsDateTime  := dmFn0201.cdsReceberPREVISAO_RECEBER.AsDateTime;
         end;

         dmFn0201.cdsTemporarioALTERACAO_REBER.AsString := dmFn0201.cdsReceberALTERACAO_RECEBER.AsString;

         dmFn0201.cdsTemporarioVALOR_RECEBER.AsString := dmFn0201.cdsReceberVALOR_RECEBER.AsString;

         dmFn0201.cdsTemporarioPARCIAL_RECEBER.AsString := dmFn0201.cdsReceberPARCIAL_RECEBER.AsString;

         dmFn0201.cdsTemporarioVALORPAGO_RECEBER.AsString := dmFn0201.cdsReceberVALORPAGO_RECEBER.AsString;

         dmFn0201.cdsTemporarioDESCJUROS_REBER.AsString := dmFn0201.cdsReceberDESCJUROS_RECEBER.AsString;

         dmFn0201.cdsTemporarioCOMISSA_RECEBER.AsString := dmFn0201.cdsReceberCOMISSAO_RECEBER.AsString;

         dmFn0201.cdsTemporarioCODIGO_PORTADOR_RECEBER.AsInteger := dmFn0201.cdsReceberCODIGO_PORTADOR_RECEBER.AsInteger;

         dmFn0201.cdsTemporarioCODIGO_CENTRO_REBER.AsInteger := dmFn0201.cdsReceberCODIGO_CENTRO_RECEBER.AsInteger;

         dmFn0201.cdsTemporarioCODIGO_CONTA_RECEBER.AsString := dmFn0201.cdsReceberCODIGO_CONTA_RECEBER.AsString;

         dmFn0201.cdsTemporarioCODIGO_CORRENTE_RECEBER.AsInteger := dmFn0201.cdsReceberCODIGO_CORRENTE_RECEBER.AsInteger;

         dmFn0201.cdsTemporarioCODIGO_VENDEDOR_RECEBER.AsInteger := dmFn0201.cdsReceberCODIGO_VENDEDOR_RECEBER.AsInteger;

         dmFn0201.cdsTemporarioCODIGO_PARCEIRO_RECEBER.AsInteger := dmFn0201.cdsReceberCODIGO_PARCEIRO_RECEBER.AsInteger;

         dmFn0201.cdsTemporarioCODIGO_BANCO_RECEBER.AsInteger := dmFn0201.cdsReceberCODIGO_BANCO_RECEBER.AsInteger;

         dmFn0201.cdsTemporarioBLOQUETE_RECEBER.AsString := dmFn0201.cdsReceberBLOQUETE_RECEBER.AsString;

         dmFn0201.cdsTemporarioEMIS_BLOQ_RECEBER.AsDateTime := dmFn0201.cdsReceberEMIS_BLOQ_RECEBER.AsDateTime;

         dmFn0201.cdsTemporarioVENC_BLOQ_RECEBER.AsDateTime := dmFn0201.cdsReceberVENC_BLOQ_RECEBER.AsDateTime;

         dmFn0201.cdsTemporarioREMESSA_RECEBER.AsInteger := dmFn0201.cdsReceberREMESSA_RECEBER.AsInteger;

         dmFn0201.cdsTemporarioMORA_DIA_RECEBER.AsString := dmFn0201.cdsReceberMORA_DIA_RECEBER.AsString;

         dmFn0201.cdsTemporarioINSTRUCAO_RECEBER.AsString := dmFn0201.cdsReceberINSTRUCAO_RECEBER.AsString;

         dmFn0201.cdsTemporarioDESCONTO_RECEBER.AsString := dmFn0201.cdsReceberDESCONTO_RECEBER.AsString;

         dmFn0201.cdsTemporarioDESC_ATE_RECEBER.AsDateTime := dmFn0201.cdsReceberDESC_ATE_RECEBER.AsDateTime;

         dmFn0201.cdsTemporarioCONDICOES_RECEBER.AsString := dmFn0201.cdsReceberCONDICOES_RECEBER.AsString;

         dmFn0201.cdsTemporarioTIPO_BAIXA_RECEBER.AsString := dmFn0201.cdsReceberTIPO_BAIXA_RECEBER.AsString;

         dmFn0201.cdsTemporarioTIPO_DUP_RECEBER.AsString := dmFn0201.cdsReceberTIPO_DUP_RECEBER.AsString;

         dmFn0201.cdsTemporarioMOVIMENTO_RECEBER.AsDateTime := dmFn0201.cdsReceberMOVIMENTO_RECEBER.AsDateTime;

         dmFn0201.cdsTemporarioCODIGO_CAIXA_RECEBER.AsInteger := dmFn0201.cdsReceberCODIGO_CAIXA_RECEBER.AsInteger;

         dmFn0201.cdsTemporarioS_RECEBER.AsString := dmFn0201.cdsReceberS_RECEBER.AsString;

         dmFn0201.cdsTemporarioFORMAPAGTO_RECEBER.AsString := dmFn0201.cdsReceberFORMAPAGTO_RECEBER.AsString;

         dmFn0201.cdsTemporarioTIT_PRINC_RECEBER.AsString := dmFn0201.cdsReceberTIT_PRINC_RECEBER.AsString;

         dmFn0201.cdsTemporario.Post;
      end;

      if not dmFn0201.cdsReceber.IsEmpty then
         dmFn0201.cdsReceber.EmptyDataSet;

      Contador1 := 0;

      dmFn0201.cdsTemporario.First;
      while not dmFn0201.cdsTemporario.Eof do
      begin
         Contador1 := Contador + 1;

         dmFn0201.cdsReceber.Append;
         Habilita_Painel;

         dmFn0201.cdsReceberDUPLICATA_RECEBER.AsString := dmFn0201.cdsTemporarioDUPLICATA_RECEBER.AsString;

         dmFn0201.cdsReceberTIPO_DOCUMENTO_RECEBER.AsString := dmFn0201.cdsTemporarioTIPO_DOCUMENTO_RECEBER.AsString;

         dmFn0201.cdsReceberCODIGO_CLIENTE_RECEBER.AsInteger := dmFn0201.cdsTemporarioCODIGO_CLIENTE_RECEBER.AsInteger;

         dmFn0201.cdsReceberEMISSAO_RECEBER.AsDateTime := dmFn0201.cdsTemporarioEMISSAO_RECEBER.AsDateTime;

         dmFn0201.cdsReceberVENCIMENTO_RECEBER.AsDateTime := dmFn0201.cdsTemporarioVENCIMENTO_RECEBER.AsDateTime;

         dmFn0201.cdsReceberPREVISAO_RECEBER.AsDateTime := dmFn0201.cdsTemporarioPREVISAO_RECEBER.AsDateTime;

         dmFn0201.cdsReceberALTERACAO_RECEBER.AsString := dmFn0201.cdsTemporarioALTERACAO_REBER.AsString;

         dmFn0201.cdsReceberVALOR_RECEBER.AsString := dmFn0201.cdsTemporarioVALOR_RECEBER.AsString;

         dmFn0201.cdsReceberPARCIAL_RECEBER.AsString := dmFn0201.cdsTemporarioPARCIAL_RECEBER.AsString;

         dmFn0201.cdsReceberDESCJUROS_RECEBER.AsString := dmFn0201.cdsTemporarioDESCJUROS_REBER.AsString;

         dmFn0201.cdsReceberCOMISSAO_RECEBER.AsString := dmFn0201.cdsTemporarioCOMISSA_RECEBER.AsString;

         dmFn0201.cdsReceberCODIGO_PORTADOR_RECEBER.AsInteger := dmFn0201.cdsTemporarioCODIGO_PORTADOR_RECEBER.AsInteger;

         dmFn0201.cdsReceberCODIGO_CENTRO_RECEBER.AsInteger := dmFn0201.cdsTemporarioCODIGO_CENTRO_REBER.AsInteger;

         dmFn0201.cdsReceberCODIGO_CONTA_RECEBER.AsString := dmFn0201.cdsTemporarioCODIGO_CONTA_RECEBER.AsString;

         dmFn0201.cdsReceberCODIGO_CORRENTE_RECEBER.AsInteger := dmFn0201.cdsTemporarioCODIGO_CORRENTE_RECEBER.AsInteger;

         dmFn0201.cdsReceberCODIGO_VENDEDOR_RECEBER.AsInteger := dmFn0201.cdsTemporarioCODIGO_VENDEDOR_RECEBER.AsInteger;

         dmFn0201.cdsReceberCODIGO_PARCEIRO_RECEBER.AsInteger := dmFn0201.cdsTemporarioCODIGO_PARCEIRO_RECEBER.AsInteger;

         dmFn0201.cdsReceberCODIGO_BANCO_RECEBER.AsInteger := dmFn0201.cdsTemporarioCODIGO_BANCO_RECEBER.AsInteger;

         dmFn0201.cdsReceberBLOQUETE_RECEBER.AsString := dmFn0201.cdsTemporarioBLOQUETE_RECEBER.AsString;

         dmFn0201.cdsReceberEMIS_BLOQ_RECEBER.AsDateTime := dmFn0201.cdsTemporarioEMIS_BLOQ_RECEBER.AsDateTime;

         dmFn0201.cdsReceberVENC_BLOQ_RECEBER.AsDateTime := dmFn0201.cdsTemporarioVENC_BLOQ_RECEBER.AsDateTime;

         dmFn0201.cdsReceberREMESSA_RECEBER.AsInteger := dmFn0201.cdsTemporarioREMESSA_RECEBER.AsInteger;

         dmFn0201.cdsReceberMORA_DIA_RECEBER.AsString := dmFn0201.cdsTemporarioMORA_DIA_RECEBER.AsString;

         dmFn0201.cdsReceberINSTRUCAO_RECEBER.AsString := dmFn0201.cdsTemporarioINSTRUCAO_RECEBER.AsString;

         dmFn0201.cdsReceberDESCONTO_RECEBER.AsString := dmFn0201.cdsTemporarioDESCONTO_RECEBER.AsString;

         dmFn0201.cdsReceberDESC_ATE_RECEBER.AsDateTime := dmFn0201.cdsTemporarioDESC_ATE_RECEBER.AsDateTime;

         dmFn0201.cdsReceberCONDICOES_RECEBER.AsString := dmFn0201.cdsTemporarioCONDICOES_RECEBER.AsString;

         dmFn0201.cdsReceberTIPO_BAIXA_RECEBER.AsString := dmFn0201.cdsTemporarioTIPO_BAIXA_RECEBER.AsString;

         dmFn0201.cdsReceberTIPO_DUP_RECEBER.AsString := dmFn0201.cdsTemporarioTIPO_DUP_RECEBER.AsString;

         dmFn0201.cdsReceberMOVIMENTO_RECEBER.AsDateTime := dmFn0201.cdsTemporarioMOVIMENTO_RECEBER.AsDateTime;

         dmFn0201.cdsReceberCODIGO_CAIXA_RECEBER.AsInteger := dmFn0201.cdsTemporarioCODIGO_CAIXA_RECEBER.AsInteger;

         dmFn0201.cdsReceberS_RECEBER.AsString := dmFn0201.cdsTemporarioS_RECEBER.AsString;

         dmFn0201.cdsReceberFORMAPAGTO_RECEBER.AsString := dmFn0201.cdsTemporarioFORMAPAGTO_RECEBER.AsString;

         dmFn0201.cdsReceberTIT_PRINC_RECEBER.AsString := dmFn0201.cdsTemporarioTIT_PRINC_RECEBER.AsString;

         dmFn0201.cdsReceberCOD_EMPRESA.AsString := CodigoEmpresa1;

         dmFn0201.cdsReceber.Post;

         dmFn0201.cdsTemporario.Next;
      end;

      frmFn0201_01.Release;
      frmFn0201_01 := nil;

      frmProcess.Release;
      frmProcess := nil;

      DataSource1.Enabled := True;
   end;

   dmFn0201.cdsReceber.ApplyUpdates(0);
   dmFn0201.cdsReceber.Refresh;

   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [F2] » Geral ';
   StatusBar1.Panels[1].Width := 100;

   StatusBar1.Panels[2].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[2].Width := 1000;

   dmFn0201.cdsReceber.EmptyDataSet;

   edtParcelas.Value := 1;

   edtCodigo.Text := '';

   Application.MessageBox(pChar(Tipo_Operacao + 'com sucesso'), 'Informação', MB_OK+MB_ICONEXCLAMATION);

   Controla_Botoes(True, True, True, True, True, True, False, False);

   btnIncluir.SetFocus;
end;

procedure TfrmFn0201.FormCreate(Sender: TObject);
begin
   dmFn0201 := TdmFn0201.Create(Self);
end;

procedure TfrmFn0201.edtParcelasExit(Sender: TObject);
begin
   if dmFn0201.cdsReceber.State = dsInsert then
   begin
      if edtParcelas.Value > 0 then
      begin
         if Application.MessageBox('Confirma Gravação dos dados?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
            btnGravar.Click;
      end;
   end;
end;

procedure TfrmFn0201.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // consulta vencimentos
   if (Shift = [ssAlt]) and (Key = 116) then
   begin
      ConsultaContasReceber(edtCodigo);

      edtCodigo.SetFocus;
   end;
end;

procedure TfrmFn0201.edtCodigoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [Alt+F5] » Consulta ';
   StatusBar1.Panels[0].Width := 1000;
end;

procedure TfrmFn0201.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      DBMemo1.SelStart := 0;
end;

procedure TfrmFn0201.JvDBDateEdit2Enter(Sender: TObject);
begin
   //JvDBDateEdit2.Date := IncMonth(DataSystem1, 1);  // a data atual acrescida de um mês
end;

procedure TfrmFn0201.JvDBDateEdit3Enter(Sender: TObject);
begin
   JvDBDateEdit3.Date := JvDBDateEdit2.Date;
end;

procedure TfrmFn0201.Habilita_Painel;
begin
   Panel1.Enabled := (dmFn0201.cdsReceber.Active) and
                     (dmFn0201.cdsReceber.State in [dsInsert, dsEdit]);
end;

procedure TfrmFn0201.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;

   if Key = #27 then
      Close;
end;

end.
