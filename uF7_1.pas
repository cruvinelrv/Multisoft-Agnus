{
   SISTEMA              --> MultWin
   PROGRAMA             --> EST0306_2
   ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
   PROGRAMADOR          --> EVALDO BARCELOS PALMA
   DATA DE CONCEPÇÃO    --> 02/01/2006
   FINALIDADE           --> Propriedades
   COMENTARIO           -->
}
unit uF7_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, Mask, DBCtrls;

type
  TfrmF7_1 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    StatusBar1: TStatusBar;
    edtPesquisa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsPropriedade: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    dsCliente: TDataSource;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
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
  frmF7_1: TfrmF7_1;

implementation

uses uDmPrincipal, uF7_1_1, udmF7, uGlobal;

{$R *.dfm}

procedure TfrmF7_1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=45 then
    begin
        btnIncluirClick(Sender);

    end ;

    With dmF7 do
    begin
        if Not cdsPropriedade.Eof then
        begin
            if (key=46) and (btnExcluir.Visible=true) then // Excluir
            begin
                btnExcluirClick(Sender);

            end ;

            if (KEY=VK_RETURN) and (btnAlterar.Visible=true) then  // Alterar
            begin
               btnAlterarClick(Sender);

            end ;

            if (key=121) then
            begin
                dbgrid1.Height:=220;
                edtPesquisa.Top:=dbgrid1.Height+50;
                edtPesquisa.Visible:=true;
                edtPesquisa.SetFocus;

            end ;

        end;

    end;

end;

procedure TfrmF7_1.btnFecharClick(Sender: TObject);
begin
    close;

end;

procedure TfrmF7_1.btnIncluirClick(Sender: TObject);
begin
   if btnIncluir.Visible then
   begin
      dmF7.cdsPropriedade.Insert;
      frmF7_1_1:=tfrmF7_1_1.Create(self);
      frmF7_1_1.ShowModal;
      frmF7_1_1.Release;
      frmF7_1_1:=Nil;
      ControleDoBotao;
   end;
end;

procedure TfrmF7_1.btnAlterarClick(Sender: TObject);
begin
    dmF7.cdsPropriedade.Edit;
    frmF7_1_1:=tfrmF7_1_1.Create(self);
    frmF7_1_1.ShowModal;
    frmF7_1_1.Release;
    frmF7_1_1:=Nil;
    ControleDoBotao;

end;
procedure TfrmF7_1.btnExcluirClick(Sender: TObject);
begin
   if Application.MessageBox('Confirma a Exclusão desse registro','Confirmação',mb_yesno+mb_iconQuestion)=idYes then
   begin
      dmF7.cdsPropriedade.Delete;

   end;
   ControleDoBotao;

end;

procedure TfrmF7_1.edtPesquisaExit(Sender: TObject);
begin
    dbgrid1.Height:=252;
    edtPesquisa.Top:=dbgrid1.Height+10;
    edtPesquisa.Visible:=false;

end;

procedure TfrmF7_1.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin

        dmF7.cdsPropriedade.Locate('DESCRICAO_PRO',edtPesquisa.Text,[loPartialKey]);
        dbgrid1.SetFocus ;

    end ;

end;

// Status dos Botões de acordo com o situacao da tabela
Procedure TfrmF7_1.ControleDoBotao;
begin
    if dmF7.cdsPropriedade.Eof then
    begin
        btnAlterar.Enabled:=false;
        btnExcluir.Enabled:=False;

    end Else
    begin
        btnAlterar.Enabled:=true;
        btnExcluir.Enabled:=true;

    end;
    Dbgrid1.SetFocus;

end;

procedure TfrmF7_1.FormShow(Sender: TObject);
begin
    With dmF7 do
    begin
       if dbText1.Caption<>'' then
       begin
          cdsPropriedade.close;
          qryPropriedade.close;
          qryPropriedade.ParamByName('cliente').AsInteger:=StrToInt(dbText1.Caption);
          qryPropriedade.Open;
          cdsPropriedade.Open;
          
       end;
    end;
    ControleDoBotao;

end;
procedure TfrmF7_1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
