{
********************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> EST001
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> EVALDO BARCELOS PALMA
 DATA DE CONCEPÇÃO    --> 25/09/2006
 FINALIDADE           --> Relação de Itens.
 COMENTARIO           -->
********************************************************************************
 }
unit uGr04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, CheckLst, DBCtrls;

type
  TfrmGr04 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    dsProdutos: TDataSource;
    StatusBar1: TStatusBar;
    edtPesquisa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    BitBtn1: TBitBtn;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure rdgOpcaoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }

    // Status dos Botões de acordo com o situacao da tabela
    Procedure ControleDoBotao;
  public
    { Public declarations }
  end;

var
  frmGr04: TfrmGr04;

implementation

uses uDmPrincipal, uGlobal, uGr04_1, uGr04_2, uCd04_1, udmGr04;

{$R *.dfm}

procedure TfrmGr04.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmGr04.FormCreate(Sender: TObject);
begin
   dmGr04 := TdmGr04.Create(Self);
   With dmGr04 do
   begin
      cdsProdutos.Close;
      cdsProdutos.Params.ParamByName('CLASSE').AsInteger := 1;
      cdsProdutos.Params.ParamByName('EMPRESA').ASInteger := StrToInt(CodigoEmpresa1);
      cdsProdutos.Open;
   end;
end;

procedure TfrmGr04.BitBtn4Click(Sender: TObject);
begin
    close;
end;

procedure TfrmGr04.btnIncluirClick(Sender: TObject);
begin
   dmGr04.cdsProdutos.Insert;
   frmCd04_1:= tfrmCd04_1.Create(self);
   frmCd04_1.ShowModal;
   frmCd04_1.Release;
   frmCd04_1:=Nil;
   ControleDoBotao;
end;

procedure TfrmGr04.btnAlterarClick(Sender: TObject);
begin
   dmGr04.cdsProdutos.Edit;
   frmCd04_1:=tfrmCd04_1.Create(self);
   frmCd04_1.ShowModal;
   ControleDoBotao;
end;

procedure TfrmGr04.btnExcluirClick(Sender: TObject);
begin
   if Application.MessageBox('Confirma a Exclusão desse registro','Confirmação',mb_yesno+mb_iconQuestion)=idYes then
      dmGr04.cdsProdutos.Delete;

   ControleDoBotao;
end;

procedure TfrmGr04.edtPesquisaExit(Sender: TObject);
begin
   dbgrid1.Height  := 383;
   edtPesquisa.Top := dbgrid1.Height + 10;
   edtPesquisa.Visible := false;
end;

procedure TfrmGr04.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   begin
      dmGr04.cdsProdutos.FindNearest([edtPesquisa.Text]);
      dbgrid1.SetFocus;
   end;
end;

// Status dos Botões de acordo com o situacao da tabela
Procedure TfrmGr04.ControleDoBotao;
begin
   Dbgrid1.SetFocus;
end;

procedure TfrmGr04.FormShow(Sender: TObject);
begin
   ControleDoBotao;
end;
procedure TfrmGr04.rdgOpcaoClick(Sender: TObject);
begin
   dbgrid1.SetFocus;
end;

procedure TfrmGr04.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 Then
      Close;

   Teclas(key,Self);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;
procedure TfrmGr04.DBGrid1KeyPress(Sender: TObject; var Key: Char);
Var
  Controle1,
  Controle2 : Boolean;
begin
   Controle1 := False;
   Controle2 := False;

   if key=#13 then
   begin
      if dbgrid1.SelectedField.FieldName='CODIGO_PRODUTO' then
      begin
         dmGr04.cdsProdutos.Edit;
         frmGr04_1:=TfrmGr04_1.create(self);
         frmGr04_1.ShowModal;
         frmGr04_1.Release;
         frmGr04_1:=nil;
         Exit;
      end ;

      if dbgrid1.SelectedField.FieldName='UNIDADE_PRODUTO' then
         exit;

      if dbgrid1.SelectedField.FieldName='CODIGO_PRODUTO' then
         exit;

      if dbgrid1.SelectedField.FieldName='FABRICA_PRODUTO' then
         exit;

      dmGr04.cdsProdutos.Edit;

      if dbgrid1.SelectedField.FieldName='PRECOUNIT_PRODUTO' then
      begin
         frmGr04_1:=TfrmGr04_1.create(self);
         frmGr04_1.Panel1.Visible:=true;
         Controle1 := True;
      end;

      if dbgrid1.SelectedField.FieldName='PRECO_COMPRA_PRODUTO' then
      begin
         frmGr04_1:=TfrmGr04_1.create(self);
         frmGr04_1.Panel2.Visible:=true;
         Controle1 := True;
      end;


      if dbgrid1.SelectedField.FieldName='PROMOCAO_PRODUTO' then
      begin
         frmGr04_1:=TfrmGr04_1.create(self);
         frmGr04_1.Panel3.Visible:=true;
         Controle1 := True;
      end;

      if dbgrid1.SelectedField.FieldName='LOCAL_ESTOQUE_PRODUTO' then
      begin
         frmGr04_1:=TfrmGr04_1.create(self);
         frmGr04_1.Panel4.Visible:=true;
         Controle1 := True;
      end;

      if dbgrid1.SelectedField.FieldName='VLRATACADO_PRODUTO' then
      begin
         frmGr04_1:=TfrmGr04_1.create(self);
         frmGr04_1.Panel5.Visible:=true;
         Controle1 := True;
      end;

      if dbgrid1.SelectedField.FieldName='ESTOQUE_PRODUTO' then
      begin
         frmGr04_1:=TfrmGr04_1.create(self);
         frmGr04_1.Panel7.Visible:=true;
         Controle1 := True;
      end;

      if dbgrid1.SelectedField.FieldName='DESCRICAO_PRODUTO' then
      begin
         frmGr04_1:=TfrmGr04_1.create(self);
         frmGr04_1.Panel8.Visible:=true;
         Controle1 := True;
      end;

      if Controle1 = True then
      begin
         frmGr04_1.ShowModal;
         frmGr04_1.Release;
         frmGr04_1:=nil;
      end;

      if DBGrid1.SelectedField.FieldName = 'TRIB_DENTRO_PRODUTO' then
      begin
         frmGr04_2 := TfrmGr04_2.Create(Self);
         frmGr04_2.Panel1.Visible := True;
         Controle2 := True;
      end;

      if DBGrid1.SelectedField.FieldName = 'TRIB_FORA_PRODUTO' then
      begin
         frmGr04_2 := TfrmGr04_2.Create(Self);
         frmGr04_2.Panel1.Visible := True;
         Controle2 := True;
      end;

      if DBGrid1.SelectedField.FieldName = 'REDU_DENTR_PRODUTO' then
      begin
         frmGr04_2 := TfrmGr04_2.Create(Self);
         frmGr04_2.Panel3.Visible := True;
         Controle2 := True;
      end;

      if DBGrid1.SelectedField.FieldName = 'REDU_FORA_PRODUTO' then
      begin
         frmGr04_2 := TfrmGr04_2.Create(Self);
         frmGr04_2.Panel4.Visible := True;
         Controle2 := True;
      end;

      if Controle2 = True then
      begin
         frmGr04_2.ShowModal;
         frmGr04_2.Release;
         frmGr04_2 := nil;
      end;

   end;

end;

procedure TfrmGr04.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

end.
