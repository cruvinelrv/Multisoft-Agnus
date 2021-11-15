unit uF3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Menus;

type
  TfrmF3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    grpPesquisa: TGroupBox;
    edtPesquisar: TEdit;
    rdbCodigo: TRadioButton;
    rdbDescricao: TRadioButton;
    StatusBar1: TStatusBar;
    DsGrupos: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure rdbCodigoClick(Sender: TObject);
    procedure rdbDescricaoClick(Sender: TObject);
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
  frmF3: TfrmF3;

implementation

uses uGlobal, uDmF3;

{$R *.dfm}

procedure TfrmF3.BitBtn1Click(Sender: TObject);
begin

    close;

end;


procedure TfrmF3.DBGrid1Enter(Sender: TObject);
begin

    dbgrid1.Height:=365;
    grpPesquisa.Visible:=false;
    grpPesquisa.top:=dbgrid1.Height+10;

end;
procedure TfrmF3.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 46) Then
   KEY := 0;

   if key = VK_F10 then
   begin
      dbgrid1.Height  := 319;
      grpPesquisa.top := DBGrid1.Height + 10;
      grpPesquisa.Visible := True;
      edtPesquisar.SetFocus;
   end
   else
   begin
      if key = 13 then
      begin
         frmF3.Tag := 1;
         Close;
      end;
   end;
end;
procedure TfrmF3.edtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Try

    if key=13 then
    begin

        if rdbDescricao.Checked then dmF3.cdsGrupoProduto.Locate('DESCRICAO_GRUPO',edtPesquisar.Text,[loPartialKey]);
        if rdbCodigo.Checked then dmF3.cdsGrupoProduto.Locate('CODIGO_GRUPO',edtPesquisar.Text,[loPartialKey]);
        dbGrid1.SetFocus;

    end ;

Finally

end;

end;

procedure TfrmF3.edtPesquisarKeyPress(Sender: TObject; var Key: Char);
begin
   if rdbCodigo.Checked then
   begin
      if not(key in ['0'..'9',#8]) then
         key:=#0;
   end;
end;

procedure TfrmF3.rdbCodigoClick(Sender: TObject);
begin
    edtPesquisar.SetFocus;
    edtPesquisar.Clear;
end;

procedure TfrmF3.rdbDescricaoClick(Sender: TObject);
begin
    edtPesquisar.SetFocus;
end;

procedure TfrmF3.FormCreate(Sender: TObject);
begin
    dmF3 := TdmF3.Create(Self);

    dmF3.qryGrupoProduto.Close;
    dmF3.cdsGrupoProduto.Close;
    dmF3.qryGrupoProduto.SQL.Clear;
    dmF3.qryGrupoProduto.SQL.Add('SELECT * FROM P_GRUPOS WHERE COD_EMPRESA='+CodigoEmpresa1);
    dmF3.qryGrupoProduto.Open;
    dmF3.cdsGrupoProduto.Open;

    DBGrid1.Height      := 395;
    grpPesquisa.Visible := False;
    grpPesquisa.top     := DBGrid1.Height + 10;
end;

procedure TfrmF3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmF3.Tag = 0 then
   begin
      dmF3.qryGrupoProduto.Close;
      dmF3.cdsGrupoProduto.Close;
   end;
end;

procedure TfrmF3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
