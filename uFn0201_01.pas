unit uFn0201_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, Mask, StdCtrls,
  DB, DBClient, ComCtrls;

type
  TfrmFn0201_01 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtDoc: TEdit;
    Label4: TLabel;
    edtVenc: TMaskEdit;
    Label5: TLabel;
    edtVal: TJvValidateEdit;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDocExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     procedure CarregaDataSet;
     function Remove(Const Texto : String) : String;
     function Gera_Proximo(Documento : String) : String;
  public
    { Public declarations }
    Sql1,
    Valida    : String;
    Verifica1,
    Verifica2 : Boolean;
    Incrementa, Contador : Integer;
    Caucula1,
    Caucula2  : Double;
  end;

var
  frmFn0201_01: TfrmFn0201_01;

implementation

uses uFn0201, uGlobal, udmFn0201, DBCtrls;

{$R *.dfm}

procedure TfrmFn0201_01.FormShow(Sender: TObject);
begin
   Incrementa := 1;
   Valida := '';
   Verifica1 := False;
   Verifica2 := False;
   Contador  := 0;

   dmFn0201.cdsParcelas.Close;
   dmFn0201.cdsParcelas.CreateDataSet;

   // recebe o codigo do t�tulo
   edtDoc.Text := frmFn0201.edtCodigo.Text;

   // recebe a data de vencimento e incrementa trinta dias
   edtVenc.Text := DateToStr(IncMonth(StrToDate(frmFn0201.JvDBDateEdit2.Field.AsString)));

   // recebe a o valor e divide pelas parcelas
   Valida := IntToStr(frmFn0201.edtParcelas.AsInteger);

   Caucula1 :=  frmFn0201.DBEdit3.Field.AsFloat;

   edtVal.Text := FloatToStr(ArredondarDecimal(Caucula1,2));

   Sql1 := ' SELECT * FROM EMPRESA WHERE CODIGO_EMP = ' + CodigoEmpresa1;

   ExecutaDataSet(dmFn0201.cdsParcelas2, Sql1);

   if (dmFn0201.cdsParcelas2.FieldByName('SUGERE_TIT_EMP').AsString = 'P') or
      (dmFn0201.cdsParcelas2.FieldByName('SUGERE_TIT_EMP').AsString = 'A') then
      Verifica1 := True;

   if Verifica1 = True then
      edtDoc.Text := Gera_Proximo(edtDoc.Text);

   // Informa o n�mero da parcela
   Incrementa := Incrementa + 1;

   Label2.Caption := '0' + IntToStr(Incrementa);
end;

procedure TfrmFn0201_01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if frmFn0201_01.Tag = 0 then
      Abort;
end;

procedure TfrmFn0201_01.edtDocExit(Sender: TObject);
begin
   edtDoc.Text := Remove(edtDoc.Text);
end;

procedure TfrmFn0201_01.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      
      Key := #0;
   end;

   if Key = #27 then
   begin
      edtDoc.Text := Gera_Proximo(edtDoc.Text);

      if not dmFn0201.cdsParcelas.IsEmpty then
      begin
         dmFn0201.cdsParcelas.Last;

         //dmFn0201.cdsParcelas.Prior;

         if edtDoc.Text = dmFn0201.cdsParcelasNUM_DOCUMENTO.AsString then
         begin
            Application.MessageBox('Documento j� cadastrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edtDoc.SetFocus;
            Exit;
         end;
      end
      else
      begin
         if edtDoc.Text = frmFn0201.edtCodigo.Text then
         begin
            Application.MessageBox('Documento j� cadastrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edtDoc.SetFocus;
            Exit;
         end;
      end;
       // no evento onshow do formulario os valores s�o carregados menos o memo1
      // est�o caregado o valor do memo1 antes de lan�ar a nova parcela
      if Verifica2 = False then
         CarregaDataSet;

      // recebe a data de vencimento e incrementa trinta dias
      if Verifica2 = True then
         edtVenc.Text := DateToStr(IncMonth(StrToDate(edtVenc.Text)));

      // recebe a o valor e divide pelas parcelas
      edtVal.Text := FloatToStr(ArredondarDecimal(Caucula1,2));

      // procedure que cont�m o DataSet tempor�rio
      if Verifica2 = True then
         CarregaDataSet;

      if Incrementa = frmFn0201.edtParcelas.AsInteger then
      begin
         frmFn0201_01.Tag := 1;
         Close;
         Exit;
      end;

      // Informa o n�mero da parcela
      Incrementa := Incrementa + 1;

      if Incrementa < 10 then
         Label2.Caption := '0' + IntToStr(Incrementa)
      else
         Label2.Caption := IntToStr(Incrementa);

      edtDoc.SetFocus;

      Verifica2 := True;
   end;
end;

procedure TfrmFn0201_01.CarregaDataSet;
begin
   // DataSet Tempor�rio
   dmFn0201.cdsParcelas.Append;
                                        // remove (,) (.) e outros
   dmFn0201.cdsParcelasNUM_DOCUMENTO.AsString := Remove(edtDoc.Text);

   dmFn0201.cdsParcelasDATA_VENCIMENTO.AsDateTime := StrToDate(edtVenc.Text);

   dmFn0201.cdsParcelas.Post;
end;

function TfrmFn0201_01.Gera_Proximo(Documento: String): String;
Var
  Doc : String;
begin
   if Documento <> '' then
   begin
      Contador := Contador + 1; // vari�vel p�blica
      Doc := frmFn0201.edtCodigo.Text;
      Documento := Doc + '-' + IntToStr(Contador);
   end;

   Result := Documento;
end;

function TfrmFn0201_01.Remove(const Texto: String): String;
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

procedure TfrmFn0201_01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
