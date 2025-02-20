unit uEST002_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, StrUtils, IniFiles;

type
  TfrmEst002_1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtSerial: TEdit;
    edtSenha: TEdit;
    edtContraSenha: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    function ContraSenha: String;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEst002_1: TfrmEst002_1;

implementation

uses uEST002, uGlobal;

{$R *.dfm}

procedure TfrmEst002_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmEst002_1.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmEst002_1.FormShow(Sender: TObject);
var Senha1, Senha2, Serial1: String;
    Senha11, Senha12, Senha13: Double;
    I: Integer;
begin
   edtSerial.Text := frmEst002.MachineID1.GetMachineID;

   Serial1 := RemoveTracos(edtSerial.Text);

   Senha1 := '';
   Senha2 := '';

   I := 1;

   while I <= Length(Serial1) do
   begin
      Senha2 := IntToStr( Ord(Serial1[I]) + Ord(Serial1[I+1]) );
      Senha1 := Senha1 + Senha2;
      I := I + 2;
   end;    // while

   Senha11 := StrToFloat( LeftStr(Senha1,12) );
   Senha12 := StrToFloat( RightStr(Senha1,12) );

   Senha13 := Senha11 + Senha12;

   edtSenha.Text := FloatToStr(Senha13);
end;

function TfrmEst002_1.ContraSenha: String;
var Total1, ContraSenha1, Valor1, Valor2: Integer;
begin
   if edtSenha.Text = '' then
      Exit;

   Total1 := Length(edtSenha.Text);
   Total1 := Round(Total1 / 2);

   Valor1 := StrToInt( LeftStr(edtSenha.Text, Total1) );

   Valor2 := StrToInt( RightStr(edtSenha.Text, Total1) );

   ContraSenha1 := Valor1 + Valor2 ;

   Total1 := StrToInt( LeftStr(IntToStr(ContraSenha1),2) );

   ContraSenha1 := ContraSenha1 * Total1;

   Result := IntToStr(Abs(ContraSenha1));
end;

procedure TfrmEst002_1.BitBtn1Click(Sender: TObject);
var Arq1: TIniFile;
    Arq2, Serial: String;
begin
   if edtContraSenha.Text = '' then
      Exit;

   if edtContraSenha.Text <> ContraSenha then
   begin
      Application.MessageBox('Contra-senha inv�lida','Erro',MB_ICONERROR);
      Exit;
   end;

   // gera liberacao

   Arq2 := PegaSysDir + '\msprot.ini';
   Arq1 := TIniFile.Create(Arq2);
   Serial := Encripta(frmEst002.MachineID1.GetMachineID);

   try
      Arq1.WriteString('Prot','Serial',Serial);
   finally // wrap up
      Arq1.Free;
   end;    // tryqfinally

   Application.MessageBox('Libera��o efetuada com sucesso' + #13 + #13 +
                          'Obrigado por escolher a MultiSoft',';-)',MB_ICONINFORMATION);

   frmEst002.pnlDemo.Visible := False;
   Demo1 := False;
end;

procedure TfrmEst002_1.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

end.
