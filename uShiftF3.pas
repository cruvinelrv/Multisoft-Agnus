unit uShiftF3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, FMTBcd, DBClient, Provider, SqlExpr;

type
  TfrmShiftF3 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    DsSecao: TDataSource;
    edtPesquisa: TEdit;
    Label1: TLabel;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmShiftF3: TfrmShiftF3;

implementation

uses uDmPrincipal, uGlobal, uDmShiftF3;

{$R *.dfm}

procedure TfrmShiftF3.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 121 then
   begin
      DBGrid1.Height  := 350;
      edtPesquisa.Top := DBGrid1.Height + 10;
      edtPesquisa.Visible := True;
      edtPesquisa.SetFocus;
   end
   else
   begin
      if key = 13 then
      begin
         frmShiftF3.Tag := 1;
         Close;
      end;
   end;

end;
procedure TfrmShiftF3.FormCreate(Sender: TObject);
begin
   dmShiftF3 := TdmShiftF3.Create(Self);

   dmShiftF3.qrySecao.ParamByName('CODIGO_EMP').AsString := CodigoEmpresa1;
   dmShiftF3.cdsSecao.Open;
end;

procedure TfrmShiftF3.BitBtn4Click(Sender: TObject);
begin
    close;
end;

procedure TfrmShiftF3.edtPesquisaExit(Sender: TObject);
begin
    dbgrid1.Height      := 383;
    edtPesquisa.Top     := DBGrid1.Height + 10;
    edtPesquisa.Visible := False;
end;

procedure TfrmShiftF3.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        dmShiftF3.cdsSecao.Locate('DESCRICAO_SECAO',edtPesquisa.Text,[loPartialKey]);
        dbgrid1.SetFocus ;
    end;
end;

procedure TfrmShiftF3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmShiftF3.Tag = 0 then
      dmShiftF3.cdsSecao.Close;
end;

procedure TfrmShiftF3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
