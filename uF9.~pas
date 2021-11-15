unit uF9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmF9 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    grpPesquisa: TGroupBox;
    edtPesquisar: TEdit;
    StatusBar1: TStatusBar;
    DsPedidoCompra: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
    procedure rdbCodigoClick(Sender: TObject);
    procedure rdbDescricaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmF9: TfrmF9;

implementation

uses udmF9, uGlobal;


{$R *.dfm}

procedure TfrmF9.BitBtn1Click(Sender: TObject);
begin

    close;

end;

procedure TfrmF9.DBGrid1Enter(Sender: TObject);
begin

    dbgrid1.Height:=365;
    grpPesquisa.Visible:=false;
    grpPesquisa.top:=dbgrid1.Height+10;

end;
procedure TfrmF9.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    if key=VK_F10 then
    begin

       dbgrid1.Height:=319;
       grpPesquisa.top:=dbgrid1.Height+10;
       grpPesquisa.Visible:=True;
       edtPesquisar.SetFocus;

    end ;


end;
procedure TfrmF9.edtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{Try

    if key=13 then
    begin

        if rdbDescricao.Checked then dmF5.cdsGrupoProduto.Locate('DESCRICAO_GRUPO',edtPesquisar.Text,[loPartialKey]);
        if rdbCodigo.Checked then dmF5.cdsGrupoProduto.Locate('CODIGO_GRUPO',edtPesquisar.Text,[loPartialKey]);
        dbGrid1.SetFocus;

    end ;

Finally

end; }

end;

procedure TfrmF9.rdbCodigoClick(Sender: TObject);
begin

    edtPesquisar.SetFocus;
    edtPesquisar.Clear;

end;

procedure TfrmF9.rdbDescricaoClick(Sender: TObject);
begin

    edtPesquisar.SetFocus;

end;

procedure TfrmF9.FormCreate(Sender: TObject);
begin
   dmF9 := TdmF9.Create(Self);

   dmF9.cdsPedidoCompra.Open;
end;

procedure TfrmF9.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
