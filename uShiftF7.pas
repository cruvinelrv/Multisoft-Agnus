unit uShiftF7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmShiftF7 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    BitBtn4: TBitBtn;
    StatusBar1: TStatusBar;
    DsPesqServico: TDataSource;
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1KeyDown2(Sender: TObject; var Key: Word;
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
  frmShiftF7: TfrmShiftF7;

implementation

uses udmShiftF7, uShiftF7_1, uGlobal;

{$R *.dfm}


procedure TfrmShiftF7.BitBtn4Click(Sender: TObject);
begin
    close;
end;

procedure TfrmShiftF7.DBGrid1KeyDown2(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=121 then
   begin
      dbgrid1.Height:=350;
      edtPesquisa.Top:=dbgrid1.Height+10;
      edtPesquisa.Visible:=true;
      edtPesquisa.SetFocus;
   end ;

   if key = 13 then
   begin
      frmShiftF7_1 := TfrmShiftF7_1.Create(self);
      frmShiftF7_1.ShowModal;
      frmShiftF7_1.Release;
      frmShiftF7_1 := nil;
   end;
end;
procedure TfrmShiftF7.edtPesquisaExit(Sender: TObject);
begin
    dbgrid1.Height      := 383;
    edtPesquisa.Top     := dbgrid1.Height+10;
    edtPesquisa.Visible := false;

end;

procedure TfrmShiftF7.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        dmShiftF7.cdsServicos.IndexFieldNames:='NOME_CLIENTE';
        dmShiftF7.cdsServicos.FindNearest([edtPesquisa.Text ]);
        dbgrid1.SetFocus ;
    end ;
end;

procedure TfrmShiftF7.FormCreate(Sender: TObject);
begin
   dmShiftF7 := TdmShiftF7.Create(Self);

   dmShiftF7.cdsPesqServico.Close;
   dmShiftF7.cdsPesqServico.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmShiftF7.cdsPesqServico.Open;
end;

procedure TfrmShiftF7.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
