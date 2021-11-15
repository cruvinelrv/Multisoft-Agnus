unit uShiftF5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmShiftF5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    BitBtn4: TBitBtn;
    StatusBar1: TStatusBar;
    dsTipoPagamento: TDataSource;
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShiftF5: TfrmShiftF5;

implementation

uses udmShiftF5, uGlobal;

{$R *.dfm}

procedure TfrmShiftF5.BitBtn4Click(Sender: TObject);
begin
    close;

end;

procedure TfrmShiftF5.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 121 then
   begin
      dbgrid1.Height      := 350;
      edtPesquisa.Top     := DBGrid1.Height + 10;
      edtPesquisa.Visible := True;
      edtPesquisa.SetFocus;
   end ;
end;
procedure TfrmShiftF5.edtPesquisaExit(Sender: TObject);
begin
    dbgrid1.Height      := 383;
    edtPesquisa.Top     := dbgrid1.Height+10;
    edtPesquisa.Visible := false;

end;

procedure TfrmShiftF5.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        dmShiftF5.cdsTipoPagamento.IndexFieldNames := 'DESCRICAO_TIPODOCUMENTO';
        dmShiftF5.cdsTipoPagamento.FindNearest([edtPesquisa.Text ]);
        dbgrid1.SetFocus ;
    end ;
end;

procedure TfrmShiftF5.FormCreate(Sender: TObject);
begin
   dmShiftF5 := TdmShiftF5.Create(Self);

   dmShiftF5.cdsTabela02.Open;
end;

procedure TfrmShiftF5.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
