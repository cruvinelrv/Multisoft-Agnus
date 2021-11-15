unit uVd1101_6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, ExtCtrls,
  Buttons;

type
  TfrmVd1101_6 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    edtAltura: TJvValidateEdit;
    GroupBox2: TGroupBox;
    edtLargura: TJvValidateEdit;
    GroupBox3: TGroupBox;
    edtComprimento: TJvValidateEdit;
    GroupBox4: TGroupBox;
    edtQuantidade: TJvValidateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVd1101_6: TfrmVd1101_6;

implementation

uses uVd1101, udmvd1101, uGlobal, DB;

{$R *.dfm}

procedure TfrmVd1101_6.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
      close;

   if key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

procedure TfrmVd1101_6.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmVd1101_6.BitBtn1Click(Sender: TObject);
var
   erro, num: Integer;
begin
   if edtComprimento.Value = 0 then
   begin
      ShowMessage('Infome o comprimento.');
      edtComprimento.SetFocus;
      exit;
   end
   else
   begin
      if edtQuantidade.Value = 0 then
      begin
         ShowMessage('Infome a quantidade.');
         edtQuantidade.SetFocus;
         exit;
      end;
   end;
   
   dmvd1101.cdsPrecos.Close;
   dmvd1101.cdsPrecos.CommandText := 'SELECT * FROM P_PRECOS WHERE PRODUTO_PRECOS=:PRODUTO';
   dmvd1101.cdsPrecos.Params.ParamByName('PRODUTO').AsInteger := dmvd1101.cdsProdutosCODIGO_PRODUTO.Value;
   dmvd1101.cdsPrecos.Open;

   Num := 1;
   repeat
      erro := 0;

      if dmvd1101.cdsPrecos.FieldByName('ALTURA' + StrZero(IntToStr(num),2)).AsFloat = edtAltura.Value then
      begin
         if dmvd1101.cdsPrecos.FieldByName('LARGURA' + StrZero(IntToStr(num),2)).AsFloat = edtLargura.Value then
         begin
            frmVd1101.edQtd.EditText := FloatToStr(edtComprimento.Value * edtQuantidade.Value);
            frmVd1101.ValorCubico1 := dmvd1101.cdsPrecos.FieldByName('PRECO' + StrZero(IntToStr(num),2)).AsFloat;
            frmVd1101.edValorUni.EditText := FloatToStr(frmVd1101.ValorCubico1);
            frmVd1101.Serie1 := FloatToStrF(dmvd1101.cdsPrecos.FieldByName('ALTURA' + StrZero(IntToStr(num),2)).AsFloat,ffFixed,18,2) +
                             'X' + FloatToStrF(dmvd1101.cdsPrecos.FieldByName('LARGURA' + StrZero(IntToStr(num),2)).AsFloat,ffFixed,18,2) +
                             ' / TAMANHO: ' + FloatToStrF(edtComprimento.Value,ffFixed,18,2) + 'M' +
                             ' / QUANTIDADE: ' +  FloatToStrF(edtQuantidade.Value,ffFixed,18,2);

            frmVd1101.Altura1  := dmvd1101.cdsPrecos.FieldByName('ALTURA' + StrZero(IntToStr(num),2)).AsFloat;
            frmVd1101.Largura1 := dmvd1101.cdsPrecos.FieldByName('LARGURA' + StrZero(IntToStr(num),2)).AsFloat;
            Break;
         end
         else
            inc(erro);
      end
      else
         inc(erro);
         
      inc(num);
   until num = 28;

   if erro > 0 then
   begin
      Application.MessageBox('Tamanho sem preço cadastrado.','Atenção', MB_OK + MB_ICONINFORMATION);
      edtAltura.SetFocus;
   end
   else
      close;
end;

end.
