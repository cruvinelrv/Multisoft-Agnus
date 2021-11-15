unit uVd1101_5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmVd1101_5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVd1101_5: TfrmVd1101_5;

implementation

uses uCtrlF8, udmProgs;

{$R *.dfm}

procedure TfrmVd1101_5.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then
   begin
      frmCtrlF8 := TfrmCtrlF8.Create(Self);
      frmCtrlF8.ShowModal;
      frmCtrlF8.Release;
      frmCtrlF8 := nil;
   end;

   if key = 13 then
   begin
      dmProgs.cdsAutoriza.Open;

      if length(dmProgs.cdsAutorizaACESSO.Value) <> 0 then
      begin
         if dmProgs.cdsAutorizaACESSO.Value = Edit1.Text then
         begin
            frmVd1101_5.Tag := 1; // Diz que a senha esta correta
            dmProgs.cdsAutoriza.Delete;
            Close;
         end
         else
            Application.MessageBox('Senha incorreta.','Atenção', MB_OK + MB_ICONWARNING);
      end
      else
         Application.MessageBox('Senha não gerada.','Atenção', MB_OK + MB_ICONWARNING);

      dmProgs.cdsAutoriza.Close;
   end;
end;

procedure TfrmVd1101_5.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
      Close;
end;

end.
