 {
  ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
  PROGRAMADOR          --> Jeter de O. Reis Júnior
  ==============================================================================
  SISTEMA              --> MultiSoft
  Formulario           --> dmF12
  UNIT                 --> uF12l
  DATA DE CONCEPCAO    -->  05/02/2007
  FINALIDADE           --> Consulta de produtos
  COMENTARIO           --> Tag = 1 >>> Não fecha a tabela no OnClose do form
                           Tag = 0 >>> Fecha a tabela no OnClose do form
  ==============================================================================
  }
unit uF4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList;

type
  TfrmF4 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    dsVendedor: TDataSource;
    StatusBar1: TStatusBar;
    edtPesquisa: TEdit;
    Label1: TLabel;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmF4: TfrmF4;

implementation

uses uDmPrincipal, udmF4, uGlobal;

{$R *.dfm}

procedure TfrmF4.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = 121 then
    begin
        dbgrid1.Height      := 350;
        edtPesquisa.Top     := DBGrid1.Height + 10;
        edtPesquisa.Visible := True;
        edtPesquisa.SetFocus;

    end ;
    
   if (Shift = [ssCtrl]) and (Key = 46) Then
   KEY := 0;

   if key = 13 then
   begin
      frmF4.Tag := 1;
      close;
   end;
end;
procedure TfrmF4.FormCreate(Sender: TObject);
begin
   dmF4 := TdmF4.Create(Self);

   dmF4.cdsVendedor.Open;
end;

procedure TfrmF4.BitBtn4Click(Sender: TObject);
begin
    close;

end;

procedure TfrmF4.edtPesquisaExit(Sender: TObject);
begin
    dbgrid1.Height:=383;
    edtPesquisa.Top:=dbgrid1.Height+10;
    edtPesquisa.Visible:=false;

end;

procedure TfrmF4.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        dmF4.cdsVendedor.IndexFieldNames:='NOME_VENDEDOR';
        dmF4.cdsVendedor.FindNearest([edtPesquisa.Text]);
        dbgrid1.SetFocus ;

    end ;

end;

procedure TfrmF4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmF4.Tag = 0 then
      dmF4.cdsVendedor.Close;
end;

procedure TfrmF4.DBGrid1DblClick(Sender: TObject);
begin
   frmF4.Tag := 1;
   close;
end;

procedure TfrmF4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
