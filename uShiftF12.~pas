unit uShiftF12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, Grids, DBGrids, ExtCtrls;

type
  TfrmShiftF12 = class(TForm)
    Panel1: TPanel;              
    DBGrid1: TDBGrid;
    dsTroca: TDataSource;
    BitBtn4: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShiftF12: TfrmShiftF12;

implementation

uses udmShiftF12, uGlobal;

{$R *.dfm}

procedure TfrmShiftF12.BitBtn4Click(Sender: TObject);
begin
   close
end;

procedure TfrmShiftF12.FormCreate(Sender: TObject);
begin
   dmShiftF12 := TdmShiftF12.Create(Self);

   dmShiftF12.cdsTroca.Open;
end;

procedure TfrmShiftF12.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
