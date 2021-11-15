unit uVd1101_10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB;

type
  TfrmVd1101_10 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    DataSource1: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVd1101_10: TfrmVd1101_10;

implementation

uses udmVd0701, uDmVd1101;

{$R *.dfm}

procedure TfrmVd1101_10.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmVd1101_10.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      Close;
end;

end.
