unit uVd1101_7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ExtCtrls;

type        
  TfrmVd1101_7 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    dsPropriedade: TDataSource;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVd1101_7: TfrmVd1101_7;

implementation

uses udmvd1101, uVd1101, uGlobal;

{$R *.dfm}

procedure TfrmVd1101_7.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
   begin
      if (dmVd1101.cdsPropriedadeINSCEST_PRO.AsString <> '') and (dmVd1101.cdsPropriedadeDINS_PRO.AsDateTime < DataSystem1) then
      begin
         Application.MessageBox('Inscri��o estadual vencida.','Aten��o', MB_OK + MB_ICONSTOP);
         Exit;
      end;

      frmVd1101.lbNome_Cli.Caption := Copy(frmVd1101.lbNome_Cli.Caption,1,10) + ' | ' + dmvd1101.cdsPropriedadeDESCRICAO_PRO.Value;
      frmVd1101.Propriedade := True;
      Close;
   end;
end;

procedure TfrmVd1101_7.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
   begin
      frmVd1101.Propriedade := False;
      close;
   end
   else
   begin
      if key = 115 then
         key := 0;
   end;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
