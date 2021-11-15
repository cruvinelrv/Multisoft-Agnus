unit uVd1101_4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmVd1101_4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVd1101_4: TfrmVd1101_4;

implementation

uses uVd1101, uGlobal;

{$R *.dfm}

procedure TfrmVd1101_4.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmVd1101_4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
      close
   else
   begin
      if key = 13 then
         Perform(WM_NEXTDLGCTL, 0, 0);
   end;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

procedure TfrmVd1101_4.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
   Key := Upcase(Key);
end;

end.
