unit uF8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmF8 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtPesquisa: TEdit;
    BitBtn4: TBitBtn;
    StatusBar1: TStatusBar;
    dsTipoPagamento: TDataSource;
    procedure BitBtn4Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click2(Sender: TObject);
    procedure DBGrid1KeyDown2(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtPesquisaExit2(Sender: TObject);
    procedure edtPesquisaKeyPress2(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    // Status dos Botões de acordo com o situacao da tabela
    Procedure ControleDoBotao;
  public
    { Public declarations }
  end;

var
  frmF8: TfrmF8;

implementation

uses uGlobal, uDmF8;

{$R *.dfm}

// Status dos Botões de acordo com o situacao da tabela
Procedure TfrmF8.ControleDoBotao;
begin
   ControleDeBotao(self,dmF8.cdsTipoPagamento.Eof);

end;

procedure TfrmF8.BitBtn4Click(Sender: TObject);
begin
    close;

end;

procedure TfrmF8.btnExcluirClick(Sender: TObject);
begin
   if Application.MessageBox('Confirma a Exclusão desse registro','Confirmação',mb_yesno+mb_iconQuestion)=idYes then
   begin
      dmF8.cdsTipoPagamento.Delete;

      dmF8.cdsTipoPagamento.ApplyUpdates(0);
   end;
   
   ControleDoBotao;

end;

procedure TfrmF8.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

        if key=121 then
        begin
            dbgrid1.Height:=350;
            edtPesquisa.Top:=dbgrid1.Height+10;
            edtPesquisa.Visible:=true;
            edtPesquisa.SetFocus;

        end ;

end;
procedure TfrmF8.edtPesquisaExit(Sender: TObject);
begin
    dbgrid1.Height     :=383;
    edtPesquisa.Top    :=dbgrid1.Height+10;
    edtPesquisa.Visible:=false;

end;

procedure TfrmF8.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        dmF8.cdsTipoPagamento.IndexFieldNames:='DESCRICAO_TIPODOCUMENTO';
        dmF8.cdsTipoPagamento.FindNearest([edtPesquisa.Text ]);
        dbgrid1.SetFocus ;

    end ;

end;

procedure TfrmF8.BitBtn4Click2(Sender: TObject);
begin
    close;

end;

procedure TfrmF8.DBGrid1KeyDown2(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if key = 121 then
   begin
      DBGrid1.Height      := 350;
      edtPesquisa.Top     := DBGrid1.Height + 10;
      edtPesquisa.Visible := True;
      edtPesquisa.SetFocus;
   end;

   if key = 13 then
   begin
      frmF8.Tag := 1;
      Close;
   end;

end;
procedure TfrmF8.edtPesquisaExit2(Sender: TObject);
begin
    dbgrid1.Height      := 383;
    edtPesquisa.Top     := DBGrid1.Height + 10;
    edtPesquisa.Visible := False;

end;

procedure TfrmF8.edtPesquisaKeyPress2(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        dmF8.cdsTipoPagamento.IndexFieldNames:='DESCRICAO_TIPODOCUMENTO';
        dmF8.cdsTipoPagamento.FindNearest([edtPesquisa.Text ]);
        dbgrid1.SetFocus ;

    end ;

end;

procedure TfrmF8.FormCreate(Sender: TObject);
begin
   dmf8 := tdmf8.Create(Self);
   With dmF8 do
   begin
     qryTipoPagamento.Close;
     cdsTipoPagamento.Close;
     qryTipoPagamento.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
     qryTipopagamento.Open;
     cdsTipoPagamento.Open;
   end;
end;

procedure TfrmF8.FormShow(Sender: TObject);
begin
   ControleDoBotao;
end;

procedure TfrmF8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmF8.Tag = 0 then
      dmF8.cdsTipoPagamento.Close;
end;

procedure TfrmF8.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
