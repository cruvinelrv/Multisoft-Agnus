unit uRepositorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    btnFechar: TBitBtn;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnFecharClick(Sender: TObject);
begin
    Close; 
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);

   end ;

end;

end.
