unit uProcesso2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExControls, JvgLabel, ExtCtrls, JvSpecialProgress,
  StdCtrls, JvWaitingGradient, WinSkinData, ImgList;

type
  TfrmProcesso2 = class(TForm)
    Panel7: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    ImageList1: TImageList;
    Animate1: TAnimate;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcesso2: TfrmProcesso2;

implementation

{$R *.dfm}

procedure TfrmProcesso2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Animate1.Active := False;

   Action := caFree;
end;

procedure TfrmProcesso2.FormShow(Sender: TObject);
begin
   Animate1.Active := True;
end;

end.
