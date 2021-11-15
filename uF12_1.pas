unit uF12_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvgLabel, StdCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, ExtCtrls, Buttons;

type
  TfrmF12_1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    JvValidateEdit1: TJvValidateEdit;
    JvValidateEdit2: TJvValidateEdit;
    JvValidateEdit3: TJvValidateEdit;
    JvValidateEdit4: TJvValidateEdit;
    JvgLabel1: TJvgLabel;
    JvgLabel2: TJvgLabel;
    JvgLabel3: TJvgLabel;
    JvgLabel4: TJvgLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure JvValidateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvValidateEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvValidateEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmF12_1: TfrmF12_1;

implementation

uses udmF12, DB, uGlobal;

{$R *.dfm}

procedure TfrmF12_1.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmF12_1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
      BitBtn1.Click;

   if key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmF12_1.FormCreate(Sender: TObject);
begin
   Label3.Caption := dmF12.cdsPesqProdutosCODIGO_PRODUTO.AsString + ' ' + dmF12.cdsPesqProdutosDESCRICAO_PRODUTO.Value;
   Label4.Caption := dmF12.cdsPesqProdutosUNIDADE_PRODUTO.Value;
   Label5.Caption := FloatToStrF(dmF12.cdsPesqProdutosPRECOUNIT_PRODUTO.AsFloat,ffFixed,18,2);
   Label6.Caption := FloatToStrF(dmF12.cdsPesqProdutosESTOQUE_PRODUTO.AsFloat,ffFixed,18,2);

   Label12.Caption := dmF12.cdsPesqProdutosCODIGO_FABRICANTE.AsString + ' ' + dmF12.cdsPesqProdutosNOME_FABRICANTE.Value;
   Label13.Caption := dmF12.cdsPesqProdutosFABRICA_PRODUTO.AsString;
   Label14.Caption := '';
   Label15.Caption := dmF12.cdsPesqProdutosNOME_GRUPO.Value;
   Label16.Caption := '';
   JvValidateEdit2.EditText := dmF12.cdsPesqProdutosPRECOUNIT_PRODUTO.AsString;
end;

procedure TfrmF12_1.JvValidateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      JvValidateEdit2.EditText := dmF12.cdsPesqProdutosPRECOUNIT_PRODUTO.AsString * JvValidateEdit1.Value;
end;

procedure TfrmF12_1.JvValidateEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      JvValidateEdit4.EditText := JvValidateEdit2.Value - (JvValidateEdit2.Value * JvValidateEdit3.Value / 100);
end;

procedure TfrmF12_1.JvValidateEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
   begin
      JvValidateEdit1.EditText := '0';
      JvValidateEdit3.EditText := '0';
      JvValidateEdit4.EditText := '0';
   end;
end;

end.
