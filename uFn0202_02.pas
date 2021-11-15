unit uFn0202_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, FMTBcd, DB, SqlExpr;

type
  TfrmFn0202_02 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtSenha: TEdit;
    sqqSenha: TSQLQuery;
    procedure edtSenhaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Acesso,
    Usuario : String;
    POSI : Integer;
  end;

var
  frmFn0202_02: TfrmFn0202_02;

implementation

uses uGlobal, uDmPrincipal;

{$R *.dfm}

procedure TfrmFn0202_02.edtSenhaExit(Sender: TObject);
begin
   Usuario := '';

   edtSenha.Text := RemoveString(edtSenha.Text);

   sqqSenha.Close;
   sqqSenha.SQL.Clear;
   sqqSenha.SQL.Add('SELECT * FROM USU_AUTORIZA WHERE ACESSO = ' + edtSenha.Text);
   sqqSenha.Open;

   if sqqSenha.IsEmpty then
   begin
      if Application.MessageBox('Não há senha para liberar venda.' + #13 + 'Tentar Novamento?', 'Informção', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         edtSenha.SetFocus;
         POSI := 0;
      end;
   end
   else
   begin
      Acesso := edtSenha.Text;
      Usuario := sqqSenha.FieldByName('USUARIO').AsString;

      if edtSenha.Text <> sqqSenha.FieldByName('ACESSO').AsString then
      begin
         ShowMessage('Senha não confere');
         Exit;
      end;
   end;


   if Usuario <> '' then
   begin
      sqqSenha.Close;
      sqqSenha.SQL.Clear;
      sqqSenha.SQL.Add('SELECT * FROM USU_USUARIOS WHERE USUARIO = ' + Usuario);
      sqqSenha.Open;

      if sqqSenha.IsEmpty then
      begin
         ShowMessage('Usuario não cadastrado');
         POSI := 0;
         Exit;
      end
      else
      begin
         if copy(Acesso, POSI, 1) <> 'S' then
         ShowMessage('Senha não autorizada para esta operação');
         Exit;
      end;
   end;
end;

procedure TfrmFn0202_02.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
   begin
      POSI := 0;
      Close;
   end;
end;

end.
