unit uF6_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, DBCtrls;

type
  TfrmF6_3 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    dsVeiculoCliente: TDataSource;
    StatusBar1: TStatusBar;
    edtPesquisa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dsCliente: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  frmF6_3: TfrmF6_3;

implementation

uses uDmPrincipal, uF6_3_1, udmF6, uGlobal;

{$R *.dfm}

procedure TfrmF6_3.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=45) and (btnIncluir.Visible=true) then
    begin
        btnIncluirClick(Sender);

    end ;

    if Not (dmF6.cdsVeiculoCliente.Eof) then
    begin
        if key=46 then // Excluir
        begin
            btnExcluirClick(Sender);

        end ;

        if (KEY=VK_RETURN) and (btnAlterar.Visible=true) then  // Alterar
        begin
           btnAlterarClick(Sender);

        end ;
        if key=121 then
        begin
            dbgrid1.Height:=239;
            edtPesquisa.Visible:=true;
            edtPesquisa.SetFocus;

        end ;

    End;

end;
procedure TfrmF6_3.btnFecharClick(Sender: TObject);
begin

    close;

end;

procedure TfrmF6_3.btnIncluirClick(Sender: TObject);
begin
    dmF6.cdsVeiculoCliente.Insert;
    frmF6_3_1:= tfrmF6_3_1.Create(self);
    frmF6_3_1.ShowModal;
    frmF6_3_1.Release;
    frmF6_3_1:=Nil;
    ControleDoBotao;

end;

procedure TfrmF6_3.btnAlterarClick(Sender: TObject);
begin
    dmF6.cdsVeiculoCliente.Edit;
    frmF6_3_1:= tfrmF6_3_1.Create(self);
    frmF6_3_1.ShowModal;
    frmF6_3_1.Release;
    frmF6_3_1:=Nil;
    ControleDoBotao;

end;
procedure TfrmF6_3.btnExcluirClick(Sender: TObject);
begin
   if Application.MessageBox('Confirma a Exclusão desse registro','Confirmação',mb_yesno+mb_iconQuestion)=idYes then
   begin

       dmF6.cdsVeiculoCliente.Delete;

   end;
   ControleDoBotao;

end;

procedure TfrmF6_3.edtPesquisaExit(Sender: TObject);
begin
    dbgrid1.Height:=264;
    edtPesquisa.Visible:=false;

end;

procedure TfrmF6_3.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        dmF6.cdsVeiculoCliente.IndexFieldNames:='DESCRICAO_VEICULO';
        dmF6.cdsVeiculoCliente.FindNearest([edtPesquisa.Text]);
        dbgrid1.SetFocus ;

    end ;

end;

// Status dos Botões de acordo com o situacao da tabela
Procedure TfrmF6_3.ControleDoBotao;
begin
    if dmF6.cdsVeiculoCliente.Eof then
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

procedure TfrmF6_3.FormShow(Sender: TObject);
begin
    With dmF6 do
    begin
        cdsVeiculoCliente.close;
        cdsVeiculoCliente.Params.ParamByName('CLIENTE').AsInteger:=StrToint(DBText1.Caption); // dmF6Pesquisa.cdsPesqClienteCODIGO_CLIENTE.AsInteger;
        cdsVeiculoCliente.Open;
    end;
    ControleDoBotao;
end;

procedure TfrmF6_3.FormCreate(Sender: TObject);
begin
   dmF6 := TdmF6.Create(Self);
end;

procedure TfrmF6_3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
