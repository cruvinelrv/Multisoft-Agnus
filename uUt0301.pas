unit uUt0301;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, Shellapi, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppVar, ppCtrls, ppPrnabl, ppBands,
  ppCache, ppStrtch, ppRichTx, myChkBox;

type
  TfrmUt0301 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtEmpresa: TEdit;
    edtSolicitante: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    rceDescricao: TRichEdit;
    rdgServico: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    lblData: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    lblServico: TppLabel;
    ppLine2: TppLine;
    rctDescricao: TppRichText;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    ppLine6: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    myCheckBox1: TmyCheckBox;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    myCheckBox2: TmyCheckBox;
    myCheckBox3: TmyCheckBox;
    myCheckBox4: TmyCheckBox;
    myCheckBox5: TmyCheckBox;
    myCheckBox6: TmyCheckBox;
    myCheckBox7: TmyCheckBox;
    myCheckBox9: TmyCheckBox;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel23: TppLabel;
    ppLine23: TppLine;
    ppLabel24: TppLabel;
    ppLine24: TppLine;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUt0301: TfrmUt0301;

implementation

uses uGlobal;

{$R *.dfm}

procedure TfrmUt0301.FormShow(Sender: TObject);
begin
   Application.MessageBox('Utilize esta rotina para realizar chamados ' + #13 +
                          't�cnicos para a MULTISOFT.' + #13 +
                          'O intuito desta rotina � facilitar os' + #13 +
                          'atendimentos aos nossos clientes,' + #13 +
                          'por�m o mesmo dever� conter informa��es' + #13 +
                          'CLARAS E OBJETIVAS sobre o problema ocorrido' + #13 +
                          'ou as modifica��es desejadas.','Aviso Importante',MB_ICONINFORMATION) ;

   edtEmpresa.Text     := Empresa1;
   edtSolicitante.Text := Usuario1;

   edtEmpresa.SetFocus;
end;

procedure TfrmUt0301.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmUt0301.BitBtn2Click(Sender: TObject);
var Mail1: String;
begin
   Mail1 := 'mailto:suporte@multisoftnet.com.br';
   ShellExecute(GetDesktopWindow,'open',pchar(Mail1),nil,nil,sw_ShowNormal);
end;

procedure TfrmUt0301.BitBtn3Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmUt0301.BitBtn1Click(Sender: TObject);
begin
   if Application.MessageBox('Confirma a impress�o?','Confirma��o',MB_ICONQUESTION+MB_YESNO) = mrNo then
      Abort;

   lblData.Caption := DateToStr(DataSystem1);

   case rdgServico.ItemIndex of
     0: lblServico.Caption := 'Solicita��o';
     1: lblServico.Caption := 'Altera��o';
     2: lblServico.Caption := 'Erro'
   end;     

   rctDescricao.RichText := rceDescricao.Lines.Text;

   ppReport1.Print;
end;

procedure TfrmUt0301.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if not (ActiveControl is TRichEdit) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TfrmUt0301.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
