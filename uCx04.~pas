unit uCx04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvDBCombobox, DBCtrls, ExtCtrls, Buttons;

type
  TfrmCx04 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    GroupBox2: TGroupBox;
    DBText2: TDBText;
    GroupBox3: TGroupBox;
    DBText3: TDBText;
    GroupBox4: TGroupBox;
    JvDBComboBox1: TJvDBComboBox;
    GroupBox5: TGroupBox;
    DBText4: TDBText;
    GroupBox7: TGroupBox;
    DBText6: TDBText;
    GroupBox8: TGroupBox;
    DBText7: TDBText;
    GroupBox9: TGroupBox;
    DBText8: TDBText;
    GroupBox6: TGroupBox;
    DBText5: TDBText;
    btnIncluir: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCx04: TfrmCx04;

implementation

uses uGlobal;

{$R *.dfm}

procedure TfrmCx04.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
