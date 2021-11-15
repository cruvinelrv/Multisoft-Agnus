unit uUt08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ComCtrls, Buttons,
  ExtCtrls, JvExMask, JvToolEdit, JvDBLookup, JvExComCtrls, JvComCtrls,
  JvCheckTreeView, JvComponent, JvBaseDlg;

type
  TfrmUt08 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    dtsUsuario: TDataSource;
    btnNovoUsuario: TBitBtn;
    btnExcluirUsuario: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    btnGravarUsuario: TBitBtn;
    btnAlterarUsuario: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    btnExpandir: TButton;
    DBCheckBox1: TDBCheckBox;
    btnCopiar: TButton;
    ctvLiberacoes: TJvCheckTreeView;
    procedure BitBtn3Click(Sender: TObject);
    procedure btnNovoUsuarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarUsuarioClick(Sender: TObject);
    procedure btnExcluirUsuarioClick(Sender: TObject);
    procedure btnExpandirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure btnCopiarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Procedure ControleDoBotao;
  public
    { Public declarations }
    Procedure Carrega_permissao(Cod_usuario: String);
  end;

var
  frmUt08: TfrmUt08;
  Permissoes1: Integer;

implementation

uses uDmPrincipal, uGlobal, udmProgs, uUt08_1, uUt08_2;

{$R *.dfm}

procedure TfrmUt08.BitBtn3Click(Sender: TObject);
var I, Permissoes2 : Integer;
begin
   Permissoes2 := 0;

   // verifica se houve alterações
   for I := 0 to ctvLiberacoes.Items.Count - 1 do    // Iterate
   begin
      if ctvLiberacoes.Checked[ctvLiberacoes.items.Item[i]] then
         Permissoes2 := Permissoes2 + 1;
   end;    // for


   if Permissoes2 <> Permissoes1 then
   begin
      if Application.MessageBox('Deseja salvar as alterações?','Atenção',MB_ICONQUESTION+MB_YESNO) = mrYes then
      begin
           // grava alterações
           BitBtn2Click(Sender);
      end ;
   end;

   Close;
end;

procedure TfrmUt08.btnNovoUsuarioClick(Sender: TObject);
begin
   if Verifica_acesso(134) then
   begin
      dmProgs.cdsUsuario.Insert;
      frmUt08_1:=tfrmUt08_1.Create(Self);
      frmUt08_1.ShowModal;
      frmUt08_1.Release;
      frmUt08_1:=nil;
      ControleDoBotao;
   end;
end;


// Status dos Botões de acordo com o situacao da tabela
Procedure TfrmUt08.ControleDoBotao;
begin

    if dmProgs.cdsUsuario.Active then
        if dmProgs.cdsUsuario.Eof then
        begin
            btnNovoUsuario.Enabled:=True;
            btnAlterarUsuario.Enabled:=false;
            btnExcluirUsuario.Enabled:=False;

        end Else
        begin

            btnNovoUsuario.Enabled:=True;
            btnAlterarUsuario.Enabled:=true;
            btnExcluirUsuario.Enabled:=true;

        end;
        Dbgrid1.SetFocus;
end;

procedure TfrmUt08.FormCreate(Sender: TObject);
begin
    dmProgs.cdsUsuario.close;
    dmProgs.cdsUsuario.CommandText := 'SELECT * from USU_USUARIOS ORDER BY NOME_USUARIO';
    dmProgs.cdsUsuario.Open;
    
    dmProgs.cdsPermissoes.Open;
    PageControl1.ActivePageIndex := 0;
end;

procedure TfrmUt08.FormShow(Sender: TObject);
begin
    ControleDoBotao;
    Permissoes1 := 0;
end;

procedure TfrmUt08.btnAlterarUsuarioClick(Sender: TObject);
begin
   if Verifica_acesso(135) then
   begin
      dmProgs.cdsUsuario.Edit;
      frmUt08_1:=tfrmUt08_1.Create(Self);
      frmUt08_1.ShowModal;
      frmUt08_1.Release;
      frmUt08_1:=nil;
      ControleDoBotao;
   end;
end;

procedure TfrmUt08.btnExcluirUsuarioClick(Sender: TObject);
begin
   if Verifica_acesso(136) then
   begin
      if Application.MessageBox('Confirma a Exclusão desse Usuário','Confirmação',MB_YESNO+mb_iconQuestion+MB_DEFBUTTON2)=idYes then
      begin

        dmProgs.cdsUsuario.Delete;
        dbGrid1.SetFocus;

      end;
   end;
end;

procedure TfrmUt08.btnExpandirClick(Sender: TObject);
var
  I: Integer;
begin
   for I := 0 to ctvLiberacoes.Items.Count - 1 do    // Iterate
   begin
      if btnExpandir.Caption = '&Expandir' then
      begin
         ctvLiberacoes.Items.Item[I].Expanded := True;
         btnExpandir.Caption := '&Retrair';
      end
      else if btnExpandir.Caption = '&Retrair' then
      begin
         ctvLiberacoes.Items.Item[I].Expanded := False;
         btnExpandir.Caption := '&Expandir';
      end;
   end; //for
end;

procedure TfrmUt08.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmUt08.BitBtn2Click(Sender: TObject);
var
  I, Permissoes2: Integer;
begin
   if not Verifica_acesso(137) then
      exit;
// total de itens: NomeComponente.Items.Count
// verificar se o item esta marcado: NomeComponente.Checked[NomeComponente.Items.Item[I]]

   Permissoes2 := 0;

   dmPrincipal.sdsTemporario.CommandText := 'delete from USU_PERMISSOES where USUARIO = ' + dmProgs.cdsUsuarioIDUSUARIO.AsString;
   dmPrincipal.sdsTemporario.ExecSQL(True);
   dmProgs.cdsPermissoes.Open;

//   ExecutaSql(dmProgs.cdsPermissoes,'delete from USU_PERMISSOES where "Usuario" = ' + dmProgs.cdsUsuarioIDUSUARIO.AsString);

   for I := 0 to ctvLiberacoes.Items.Count - 1 do    // Iterate
   begin

      if ctvLiberacoes.Checked[ctvLiberacoes.items.Item[I]] then
      begin
         dmProgs.cdsPermissoes.Insert;

         dmProgs.cdsPermissoesUSUARIO.Value   := dmProgs.cdsUsuarioIDUSUARIO.AsInteger;
         dmProgs.cdsPermissoesEMPRESA.Value   := StrToInt(CodigoEmpresa1);
         dmProgs.cdsPermissoesPERMISSAO.Value := StrToInt(Copy(ctvLiberacoes.Items.Item[I].Text,1,4));

         Permissoes2 := Permissoes2 + 1;

         dmProgs.cdsPermissoes.Post;
         dmProgs.cdsPermissoes.ApplyUpdates(0);
      end;

   end;    // for

   dmProgs.cdsPermissoes.Close;

   Permissoes1 := Permissoes2;
end;

procedure TfrmUt08.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const IsChecked: array[Boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);

var DrawState: Integer;
    DrawRect: TRect;
begin
   if (gdFocused in State) then
   begin
      if (Column.Field.FieldName = DBCheckBox1.DataField) then
      begin
         DBCheckBox1.Left    := Rect.Left + DBGrid1.Left + 2;
         DBCheckBox1.Top     := Rect.Top  + DBGrid1.Top  + 2;
         DBCheckBox1.Width   := Rect.Right  - Rect.Left;
         DBCheckBox1.Height  := Rect.Bottom - Rect.Top;
         DBCheckBox1.Visible := True;
      end
   end
   else
   begin
      if (Column.Field.FieldName = DBCheckBox1.DataField) then
      begin
         DrawRect := Rect;
         InflateRect(DrawRect, -1, -1);
         DrawState := IsChecked[Column.Field.AsBoolean];
         DBGrid1.Canvas.FillRect(Rect);
         DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect, DFC_BUTTON, DrawState);
      end;
   end;
end;

procedure TfrmUt08.DBGrid1ColExit(Sender: TObject);
begin
   if DBGrid1.SelectedField.FieldName = DBCheckBox1.DataField then
      DBCheckBox1.Visible := False;     
end;

procedure TfrmUt08.PageControl1Change(Sender: TObject);
begin
   if PageControl1.TabIndex = 1 then
   begin
      // verifica se o usuário é master
      if dtsUsuario.DataSet.FieldByName('Adm_Usuario').AsBoolean = True then
      begin
         Application.MessageBox('Usuário Master sem restrição','Atenção',MB_ICONINFORMATION);
         PageControl1.TabIndex := 0;
      end
      else
         Carrega_permissao(dmProgs.cdsUsuarioIDUSUARIO.AsString);
   end ;
end;

procedure TfrmUt08.Carrega_permissao(Cod_usuario: String);
var I,X: Integer;
begin
   // limpa todos os campos
   for X := 0 to ctvLiberacoes.Items.Count - 1 do    // Iterate
   begin
      ctvLiberacoes.Checked[ctvLiberacoes.Items.Item[X]] := False;
   end;    // for

   // marcas os campos que estao com permissões
   ExecutaSql(dmProgs.cdsPermissoes, 'SELECT * FROM USU_PERMISSOES Where USU_PERMISSOES.USUARIO = ' + Cod_usuario + ' and USU_PERMISSOES.EMPRESA = ' + CodigoEmpresa1);

   dmProgs.cdsPermissoes.First;
   while not dmProgs.cdsPermissoes.Eof do
   begin
      for I := 0 to ctvLiberacoes.Items.Count - 1 do    // Iterate
      begin
         if StrToInt(Copy(ctvLiberacoes.Items.Item[I].Text,1,4)) = dmProgs.cdsPermissoesPermissao.Value then
         begin
            ctvLiberacoes.Checked[ctvLiberacoes.Items.Item[I]] := True;
            //ShowMessage(ctvLiberacoes.Items.Item[I].Text);
            Permissoes1 := Permissoes1 + 1;
         end;
      end;    // for
      dmProgs.cdsPermissoes.Next;
   end;    // while
end;

procedure TfrmUt08.btnCopiarClick(Sender: TObject);
begin
   frmUt08_2 := TfrmUt08_2.Create(Self);
   frmUt08_2.ShowModal;
   frmUt08_2.Release;
   frmUt08_2 := nil;
end;

procedure TfrmUt08.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
