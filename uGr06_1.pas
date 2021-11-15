unit uGr06_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmGr06_1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    edDescricao: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    edQuantidade: TJvValidateEdit;
    Label3: TLabel;
    edPrecoUnitario: TJvValidateEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGr06_1: TfrmGr06_1;

implementation

uses uDmGr06, uGr06;

{$R *.dfm}

procedure TfrmGr06_1.Button1Click(Sender: TObject);
begin
   if edDescricao.Text = '' then
   begin
      Application.MessageBox('É preciso digitar a descrição.','Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
   end;

   if edQuantidade.Value <= 0 then
   begin
      Application.MessageBox('Quantidade é preciso ser maior que zero.','Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
   end;

   if edPrecoUnitario.Value <= 0 then
   begin
      Application.MessageBox('O preço precisa ser maior que zero.','Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
   end;

   frmGr06.cdsProdutos.Append;
   frmGr06.cdsProdutosDescProduto.AsString     := edDescricao.Text;
   frmGr06.cdsProdutosQuantidade.AsCurrency    := edQuantidade.Value;
   frmGr06.cdsProdutosValorUnitario.AsCurrency := edPrecoUnitario.Value;
   frmGr06.cdsProdutosSomaTotal.AsCurrency     := edPrecoUnitario.Value * edQuantidade.Value;
   frmGr06.cdsProdutos.Post;

   frmGr06.edtTotalProdutos.Value := (frmGr06.edtTotalProdutos.Value + (edQuantidade.Value * edPrecoUnitario.Value));

   Close;
end;

procedure TfrmGr06_1.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmGr06_1.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

end.
