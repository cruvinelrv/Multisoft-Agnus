unit unMensagem;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, ExtCtrls;

type
  TfrmMensagem = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    lblLinha1: TLabel;
    lblLinha2: TLabel;
    lblLinha3: TLabel;
    lblLinha4: TLabel;
    btnOk: TButton;
    procedure btnOkClick(Sender: TObject);
  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.DFM}

procedure TfrmMensagem.btnOkClick(Sender: TObject);
begin
   Close;
end;

end.
