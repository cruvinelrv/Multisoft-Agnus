unit uWin0306_P;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ComCtrls,
  JvDBGridFooter, ExtCtrls, DB, StdCtrls, Buttons;

type
  TForm3 = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StatusBar1: TStatusBar;
    edtPesquisa: TEdit;
    Label1: TLabel;
    rdgTipo: TRadioGroup;
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure rdgTipoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    //Pesquisa
    Procedure Pesquisa;

  public
    { Public declarations }
  end;

var
Form3: TForm3;

implementation

uses uDmPrincipal;

{$R *.dfm}




//Pesquisa
Procedure TForm3.Pesquisa;
var

mSQL: String;

begin
    Try
    With dmPrincipal do
    begin
        if rdgTipo.ItemIndex=0 then mSQL:='SELECT IDCODIGO_CLIENTE,RAZAO_CLIENTE,CNPJ_CLIENTE,FANTASIA_CLIENTE  FROM CLIENTES WHERE RAZAO_CLIENTE LIKE '+#39+edtPesquisa.Text+'%'+#39+ ' ORDER BY RAZAO_CLIENTE';
        if rdgTipo.ItemIndex=1 then mSQL:='SELECT IDCODIGO_CLIENTE,RAZAO_CLIENTE,CNPJ_CLIENTE,FANTASIA_CLIENTE  FROM CLIENTES WHERE FANTASIA_CLIENTE LIKE '+#39+edtPesquisa.Text+'%'+#39+ 'ORDER BY FANTASIA_CLIENTE';
        cdsClien.Close;
        qryClien.Close;
        qryClien.SQL.Clear;
        qryClien.SQL.Add(mSQL);
        qryClien.Open;
        cdsClien.Open;

    end;
except
    Application.MessageBox('Falha na pesquisa','Informação',mb_ok+MB_ICONERROR);

end;
end;

procedure TForm3.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin

    if key=#13 then
    begin
        Pesquisa;

    end;

end;

procedure TForm3.rdgTipoClick(Sender: TObject);
begin

     Pesquisa;

end;
procedure TForm3.BitBtn2Click(Sender: TObject);
begin
    with dmPrincipal do
    begin
        qryClien.Close;
        cdsClien.Close;

    end;

    Close;

end;

end.
