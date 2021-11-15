unit uUt08_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TfrmUt08_2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    dsUsuarios: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUt08_2: TfrmUt08_2;

implementation

uses udmProgs, uUt08, uGlobal;

{$R *.dfm}

procedure TfrmUt08_2.Button1Click(Sender: TObject);
begin
   if not dmProgs.cdsPesqUsuarioADM_USUARIO.AsBoolean then
   begin
      frmUt08.Carrega_permissao(dmProgs.cdsPesqUsuarioIDUSUARIO.AsString);
      close;
   end
   else
      Application.MessageBox('Usuário Master sem restrição','Atenção',MB_ICONINFORMATION);
end;

procedure TfrmUt08_2.FormCreate(Sender: TObject);
begin
   dmProgs.cdsPesqUsuario.Open;
end;

procedure TfrmUt08_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dmProgs.cdsPesqUsuario.Close;
end;

procedure TfrmUt08_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
