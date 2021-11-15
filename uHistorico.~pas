unit uHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, ExtCtrls;

type
  TfrmHistorico = class(TForm)
    Panel1: TPanel;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistorico: TfrmHistorico;

implementation

uses uAltF5, udmAltF5, udmShiftF10, uGlobal;

{$R *.dfm}

procedure TfrmHistorico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;

   if Key = 13 then
      Close;

   if Key = 72 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
