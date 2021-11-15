unit uFn0101_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, JvBaseEdits, JvDBControls,
  JvExMask, JvToolEdit, Mask, JvComponentBase, JvBalloonHint, Buttons, DB,
  DBClient, JvSpin, JvExStdCtrls, JvEdit, JvValidateEdit, ComCtrls;

type
  TfrmFn0101_01 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtDoc: TEdit;
    edtVenc: TJvDateEdit;
    Memo1: TMemo;
    JvBalloonHint1: TJvBalloonHint;
    edtVal: TJvValidateEdit;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDocExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Memo1Enter(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaDataSet;
    function Gera_Proximo(Documento : String) : String;
    function Remove(Const Texto : String) : String;
  public
    { Public declarations }
    Sql1,
    Valida    : String;
    Verifica1,
    Verifica2 : Boolean;
    Incrementa,
    Contador : Integer;
    Caucula1,
    Caucula2  : Double;
  end;

var
  frmFn0101_01: TfrmFn0101_01;

implementation

uses uFn0101, uGlobal, MaskUtils, udmFn0101;

{$R *.dfm}

procedure TfrmFn0101_01.FormShow(Sender: TObject);
begin
   Incrementa := 1;
   Contador   := 0;
   Valida     := '';
   Verifica1  := False;
   Verifica2  := False;

   dmFn0101.cdsParcelas.Close;
   dmFn0101.cdsParcelas.CreateDataSet;

   // recebe o codigo do título
   edtDoc.Text := frmFn0101.edtCodigo.Text;

   // recebe a data de vencimento e incrementa trinta dias
   edtVenc.Text := DateToStr(IncMonth(StrToDate(frmFn0101.JvDBDateEdit2.Field.AsString)));

   // recebe a o valor e divide pelas parcelas
   Valida := IntToStr(frmFn0101.JvSpinEdit1.AsInteger);

   Caucula1 :=  frmFn0101.DBEdit8.Field.AsFloat;

   edtVal.Text := FloatToStr(ArredondarDecimal(Caucula1,2));

   Sql1 := ' SELECT * FROM EMPRESA WHERE CODIGO_EMP = ' + CodigoEmpresa1;

   ExecutaDataSet(dmFn0101.cdsParcelas2, Sql1);

   if (dmFn0101.cdsParcelas2.FieldByName('SUGERE_TIT_EMP').AsString = 'P') or
      (dmFn0101.cdsParcelas2.FieldByName('SUGERE_TIT_EMP').AsString = 'A') then
      Verifica1 := True;

   if Verifica1 = True then
      edtDoc.Text := Gera_Proximo(edtDoc.Text); //IntToStr(Busca_Proximo('P_PAGAR', 'DOCUMENTO_PAGAR'));

   // Informa o número da parcela
   Incrementa := Incrementa + 1;

   Label1.Caption := '0' + IntToStr(Incrementa);
end;

procedure TfrmFn0101_01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
   begin
      edtDoc.Text := Gera_Proximo(edtDoc.Text);

      if not dmFn0101.cdsParcelas.IsEmpty then
      begin
         dmFn0101.cdsParcelas.Last;

         //dmFn0201.cdsParcelas.Prior;

         if edtDoc.Text = dmFn0101.cdsParcelasNUM_DOCUMENTO.AsString then
         begin
            Application.MessageBox('Documento já cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            edtDoc.SetFocus;
            Exit;
         end;
      end
      else
      begin
         if edtDoc.Text = frmFn0101.edtCodigo.Text then
         begin
            Application.MessageBox('Documento já cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            edtDoc.SetFocus;
            Exit;
         end;
      end;

       // no evento onshow do formulario os valores são carregados menos o memo1
      // estão caregado o valor do memo1 antes de lançar a nova parcela
      if Verifica2 = False then
         CarregaDataSet;

      {if (Verifica1 = True) and (Verifica2 = True) then
         edtDoc.Text := IntToStr(Busca_Proximo('P_PAGAR', 'DOCUMENTO_PAGAR'));}

      // recebe a data de vencimento e incrementa trinta dias
      if Verifica2 = True then
         edtVenc.Text := DateToStr(IncMonth(StrToDate(edtVenc.Text)));

      // recebe a o valor e divide pelas parcelas
      edtVal.Text := FormatMaskText('0000,00', FloatToStr(ArredondarDecimal(Caucula1,2)));

      // procedure que contém o DataSet temporário
      if Verifica2 = True then
         CarregaDataSet;

      if Memo1.Text <> '' then
      begin
         Memo1.Color := clBtnFace;
         Memo1.Clear;
      end;

      if Incrementa = frmFn0101.JvSpinEdit1.AsInteger then
      begin
         frmFn0101_01.Tag := 1;
         Memo1.Color := clBtnFace;
         Close;
         Exit;
      end;

      // Informa o número da parcela
      Incrementa := Incrementa + 1;

      if Incrementa < 10 then
         Label1.Caption := '0' + IntToStr(Incrementa)
      else
         Label1.Caption := IntToStr(Incrementa);

      edtDoc.SetFocus;

      Verifica2 := True;
   end;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn0101_01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if frmFn0101_01.Tag = 0 then
      Abort;
end;

procedure TfrmFn0101_01.edtDocExit(Sender: TObject);
begin
   edtDoc.Text := Remove(edtDoc.Text);
end;

procedure TfrmFn0101_01.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmFn0101_01.Memo1Enter(Sender: TObject);
begin
   Memo1.Color := clWhite;
end;

procedure TfrmFn0101_01.CarregaDataSet;
begin
   // DataSet Temporário
   dmFn0101.cdsParcelas.Append;
                                        // remove (,) (.) e outros
   dmFn0101.cdsParcelasNUM_DOCUMENTO.AsString := Remove(edtDoc.Text);

   dmFn0101.cdsParcelasDATA_VENCIMENTO.AsDateTime := StrToDate(edtVenc.Text);

   if Memo1.Text <> '' then
      dmFn0101.cdsParcelasMEMO.AsString := Memo1.Text;

   dmFn0101.cdsParcelas.Post;
end;

function TfrmFn0101_01.Remove(const Texto: String): String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['A'..'Z', 'a'..'z', '0'..'9', '-']) then
      begin
         S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;

end;

function TfrmFn0101_01.Gera_Proximo(Documento: String) : String;
Var
  Doc : String;
begin
   if Documento <> '' then
   begin
      Contador := Contador + 1; // variável pública
      Doc := frmFn0101.edtCodigo.Text;
      Documento := Doc + '-' + IntToStr(Contador);
   end;

   Result := Documento;
end;

end.
