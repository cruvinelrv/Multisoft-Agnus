unit uShiftF8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Grids, DBGrids, ExtCtrls;

type
  TfrmShiftF8 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dsObservacao: TDataSource;
    BitBtn4: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
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
  frmShiftF8: TfrmShiftF8;

implementation

uses udmShiftF8, uGlobal;

{$R *.dfm}

procedure TfrmShiftF8.BitBtn4Click(Sender: TObject);
begin
   close;
end;

procedure TfrmShiftF8.FormCreate(Sender: TObject);
begin
   dmShiftF8 := TdmShiftF8.Create(Self);

   dmShiftF8.cdsObservacao.Open;
end;

procedure TfrmShiftF8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dmShiftF8 <> nil then
      FreeAndNil(dmShiftF8);
end;

procedure TfrmShiftF8.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
