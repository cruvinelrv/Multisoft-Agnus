unit uProcess;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, JvExControls, JvgLabel, ExtCtrls;

type
  TfrmProcess = class(TForm)
    Panel7: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    JvgLabel1: TJvgLabel;
    ProgressBar1: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcess: TfrmProcess;

implementation

{$R *.dfm}

end.
