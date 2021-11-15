{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> Loja0406
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> EVALDO BARCELOS PALMA
 DATA DE CONCEPÇÃO    --> 05/05/2006
 FINALIDADE           --> Aumento Futuro de Preços do produto
 COMENTARIO           -->
 *******************************************************************************}
unit uGr05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, ToolWin, ImgList;

type
  TfrmGr05 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    BitBtn4: TBitBtn;
    DsSecao: TDataSource;
    StatusBar1: TStatusBar;
    ImageList1: TImageList;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
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
  frmGr05: TfrmGr05;

implementation

uses uDmPrincipal, uGlobal, uGr05_1, udmGr05;

{$R *.dfm}

procedure TfrmGr05.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

    if key=45 then
    begin
        btnIncluirClick(Sender);

    end ;

    if Not (dmGr05.cdsFuturo.Eof) then
    begin

       if key=46 then // Excluir
       begin

          btnExcluirClick(Sender);

       end ;

       if KEY=VK_RETURN then  // Alterar
       begin

          btnAlterarClick(Sender);

        end ;

    end;

end;
procedure TfrmGr05.FormCreate(Sender: TObject);
begin
   dmGr05 := TdmGr05.Create(Self);

   dmGr05.cdsFuturo.Open;
end;

procedure TfrmGr05.BitBtn4Click(Sender: TObject);
begin
   close;

end;

procedure TfrmGr05.btnIncluirClick(Sender: TObject);
begin
   dmGr05.cdsFuturo.Insert;
   frmGr05_1:= tfrmGr05_1.Create(self);
   frmGr05_1.ShowModal;
   frmGr05_1.Release;
   frmGr05_1:=Nil;
   ControleDoBotao;

end;

procedure TfrmGr05.btnAlterarClick(Sender: TObject);
begin
   dmGr05.cdsFuturo.Edit;
   frmGr05_1:= tfrmGr05_1.Create(self);
   frmGr05_1.ShowModal;
   frmGr05_1.Release;
   frmGr05_1:=Nil;
   ControleDoBotao;

end;
procedure TfrmGr05.btnExcluirClick(Sender: TObject);
begin
   if Application.MessageBox('Confirma a Exclusão desse registro','Confirmação',mb_yesno+mb_iconQuestion)=idYes then
   begin
      dmGr05.cdsFuturo.Delete;

      dmGr05.cdsFuturo.ApplyUpdates(0);
   end;

   ControleDoBotao;

end;

procedure TfrmGr05.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin

end;

// Status dos Botões de acordo com o situacao da tabela
Procedure TfrmGr05.ControleDoBotao;
begin
   if dmGr05.cdsFuturo.Eof then
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

procedure TfrmGr05.FormShow(Sender: TObject);
begin
    ControleDoBotao;

end;
procedure TfrmGr05.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Teclas(key,Self);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;
end.
