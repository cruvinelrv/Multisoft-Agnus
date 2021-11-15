unit uUt06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, DateUtils, VCLUnZip,
  VCLZip;

type
  TfrmUt06 = class(TForm)
    Panel1: TPanel;
    chkCompleto: TCheckBox;
    chkBancoDados: TCheckBox;
    chkExecutavel: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    Label3: TLabel;
    Label4: TLabel;
    ProgressBar2: TProgressBar;
    Label5: TLabel;
    edtArquivo: TEdit;
    VCLZip1: TVCLZip;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure chkCompletoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VCLZip1FilePercentDone(Sender: TObject; Percent: Integer);
    procedure VCLZip1TotalPercentDone(Sender: TObject; Percent: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUt06: TfrmUt06;

implementation

{$R *.dfm}

procedure TfrmUt06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmUt06.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TfrmUt06.chkCompletoClick(Sender: TObject);
begin
   chkBancoDados.Checked := chkCompleto.Checked;
   chkExecutavel.Checked := chkCompleto.Checked;
end;

procedure TfrmUt06.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmUt06.BitBtn1Click(Sender: TObject);
var Caminho1: String;
    NumeroDeArquivos1: Integer;
begin
   if edtArquivo.Text = '' then
   begin
      Application.MessageBox('Informe o nome arquivo a ser gerado','Atenção',MB_ICONEXCLAMATION);
      edtArquivo.SetFocus;
      Exit;
   end;


   if Application.MessageBox('Confirma a operação?','Confirmação',MB_ICONQUESTION + MB_YESNO) = mrNo then
      Exit;


   Caminho1 := ExtractFilePath(Application.ExeName);

   With VCLZip1 do
   begin
      if chkCompleto.Checked then
         FilesList.Add(Caminho1 + '*.*')
      else
      begin
         if chkBancoDados.Checked then
            FilesList.Add(Caminho1 + 'dbmulti.fdb');

         if chkExecutavel.Checked then
            FilesList.Add(Caminho1 + 'MultiWin.exe');
      end;

      ZipName           := edtArquivo.Text;
      Recurse           := True;	// Utiliza diretorios
      StorePaths        := True;	// mantem informacao do caminho
      PackLevel         := 9;	   // alto nivel de compactacao
      NumeroDeArquivos1 := Zip;	// retorna a quantidade de arquivos que foram incluidos
   end;

   ProgressBar1.Position := 0;
   ProgressBar2.Position := 0;
   Label2.Caption        := '%';
   Label4.Caption        := '%';

   Application.MessageBox('Concluído','',MB_ICONINFORMATION);
end;

procedure TfrmUt06.FormShow(Sender: TObject);
var Caminho1: String;
begin
   Caminho1 := ExtractFilePath(Application.ExeName) + 'Backup\';

   if not DirectoryExists(Caminho1) then
      CreateDir(Caminho1);

   Caminho1 :=  Caminho1 + FormatDateTime('ddmmyyyy',Date) + '.zip';

   edtArquivo.Text := Caminho1;
end;

procedure TfrmUt06.VCLZip1FilePercentDone(Sender: TObject;
  Percent: Integer);
begin
   Label2.Caption := IntToStr(Percent) + '%';
   ProgressBar1.Position := Percent;
   frmUt06.Refresh;
end;

procedure TfrmUt06.VCLZip1TotalPercentDone(Sender: TObject;
  Percent: Integer);
begin
   Label4.Caption := IntToStr(Percent) + '%';
   ProgressBar2.Position := Percent;
end;

end.
