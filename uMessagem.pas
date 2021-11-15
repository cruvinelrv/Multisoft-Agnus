unit uMessagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, DBCtrls;

type
  TfrmMessagem = class(TForm)
    Image1: TImage;
    BitBtn1: TBitBtn;
    rchTexto: TRichEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMessagem: TfrmMessagem;

implementation

{$R *.dfm}

procedure TfrmMessagem.FormKeyPress(Sender: TObject; var Key: Char);
begin
    key:=#0;
end;

procedure TfrmMessagem.BitBtn1Click(Sender: TObject);
begin
    Close;
end;

end.
