unit uVd1101_9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, UEcf, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmVd1101_9 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    edtCodigo: TJvValidateEdit;
    Label1: TLabel;
    edtDescricao: TEdit;
    Label2: TLabel;
    edtQtd: TJvValidateEdit;
    Label3: TLabel;
    edtVlr_unit: TJvValidateEdit;
    Label4: TLabel;
    edtAliquota: TJvValidateEdit;
    Label5: TLabel;
    cbxCST: TComboBox;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbxCSTChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ECF: TECF;
  public
    { Public declarations }
  end;

var
  frmVd1101_9: TfrmVd1101_9;

implementation

uses uVd1101, DB, uGlobal;

{$R *.dfm}

procedure TfrmVd1101_9.FormCreate(Sender: TObject);
begin
   ECF := TECF.Create;   
end;

procedure TfrmVd1101_9.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FreeAndNil(ECF);
end;

procedure TfrmVd1101_9.Button1Click(Sender: TObject);
var
   ValorTotal: Real;
begin
   if cbxCST.ItemIndex < 0 then
   begin
      Application.MessageBox('Escolha o CST.','Aten��o', MB_OK + MB_ICONASTERISK);
      cbxCST.SetFocus;
      exit;
   end;

   if (Copy(cbxCST.Text,1,3) = '000') or (Copy(cbxCST.Text,1,3) = '020') then
      if edtAliquota.Value <= 0 then
      begin
         Application.MessageBox('A al�quota deve ser maior que zero!','Aten��o', MB_OK + MB_ICONASTERISK);
         edtAliquota.SetFocus;
         Exit;
      end;

   if edtQtd.Value <= 0 then
   begin
      Application.MessageBox('A quantidade deve ser maior que zero!','Aten��o', MB_OK + MB_ICONASTERISK);
      edtQtd.SetFocus;
      exit;
   end;

   if edtVlr_unit.Value <= 0 then
   begin
      Application.MessageBox('O valor deve ser maior que zero!','Aten��o', MB_OK + MB_ICONASTERISK);
      edtVlr_unit.SetFocus;
      exit
   end;

   if edtCodigo.Value = '' then
   begin
      Application.MessageBox('O c�digo deve ser digitado','Aten��o', MB_OK + MB_ICONASTERISK);
      edtCodigo.SetFocus;
      exit;
   end;

   if frmVd1101_9.Tag = 0 then
      ECF.Vende_item(edtCodigo.Text, edtDescricao.Text, '1', edtQtd.Value, edtVlr_unit.Value,0,True);

   with frmVd1101 do
   begin
      //Adiciona item na lista
      frmVd1101.edPesquisa.Text := ''; //edtDescricao.Text;

      cdsVendasItem.Append;

      cdsVendasItemQTDE_VENDAS        .AsFloat   := cdsVendasItem.RecordCount + 1;
      cdsVendasItemCOD_EMPRESA        .AsString  := CodigoEmpresa1;
      cdsVendasItemDESCRICAO_IVENDAS  .Value     := edtDescricao.Text;
      cdsVendasItemPRODUTO_IVENDA     .AsInteger := 999999;
      cdsVendasItemFABRICANTE_PRODUTO .AsString  := edtCodigo.Text;
      cdsVendasItemVALORBRUTO_IVENDAS .AsFloat   := edtVlr_unit.Value;
      cdsVendasItemVALORTOTAL         .AsFloat   := edtVlr_unit.Value * edtQtd.Value;
      cdsVendasItemQUANTIDADE_IVENDAS .AsFloat   := edtQtd.Value;
      cdsVendasItemDESCONTO_IVENDAS   .AsFloat   := 0;
      cdsVendasItemSERIE_IVENDAS      .AsString  := Serie1;
      cdsVendasItemTRIBUTACAO_IVENDAS .AsString  := Copy(cbxCST.Text,1,3);

      cdsVendasItem.Post;

      //Pega valores do ultimo item
      ValorTotal := cdsVendasItemQUANTIDADE_IVENDAS.AsFloat * cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;

      if Length(cdsVendasItemDESCRICAO_IVENDAS.Value) <= 30 then
         Label1.Caption := copy(cdsVendasItemDESCRICAO_IVENDAS.Value,1,30)
      else
         Label1.Caption := copy(cdsVendasItemDESCRICAO_IVENDAS.Value,1,30) + '...';

      Label5.Caption  := FloatToStrF(cdsVendasItemQUANTIDADE_IVENDAS.AsFloat,ffFixed,18,2) + ' x ' + FloatToStrF(cdsVendasItemVALORBRUTO_IVENDAS.AsFloat,Fffixed,18,2) + ' = ' + FloatToStrF(ValorTotal,Fffixed,18,2);

      //Mostra valores na tela
      Valor_Bruto     := Valor_Bruto + ValorTotal;

      Desconto1       := Valor_Bruto * Desc_Porcento / 100;

      Label11.Caption := FloatToStrF(Desconto1   , Fffixed,18,2);
      Label6.Caption  := FloatToStrF(Valor_Bruto , Fffixed,18,2);
      Label7.Caption  := FloatToStrF(Valor_Bruto - Desconto1,Fffixed,18,2);
   end;

   Close;
end;

procedure TfrmVd1101_9.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmVd1101_9.cbxCSTChange(Sender: TObject);
begin
   if (Copy(cbxCST.Text,1,3) = '000') or (Copy(cbxCST.Text,1,3) = '020') then
   begin
      edtAliquota .Enabled := True;
      edtAliquota .Color   := clWindow;
      Label5      .Enabled := True;
   end
   else
   begin
      edtAliquota .Enabled := False;
      edtAliquota .Color   := clBtnFace;
      Label5      .Enabled := False;
   end;
end;

procedure TfrmVd1101_9.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmVd1101_9.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
