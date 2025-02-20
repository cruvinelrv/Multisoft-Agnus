unit uUt0302;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, Shellapi, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppVar, ppCtrls, ppPrnabl, ppBands,
  ppCache, ppStrtch, ppRichTx, myChkBox, Mask, JvExMask, JvToolEdit;

type
  TfrmUt0302 = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtEmpresa: TEdit;
    edtSolicitante: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    rceDescricao: TRichEdit;
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
    lblDescricaoServico: TppLabel;
    ppLine2: TppLine;
    rctDescricao: TppRichText;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    edtServicoSolicitado: TEdit;
    edtTecnico: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edtData: TJvDateEdit;
    edtHoraChegada: TEdit;
    edtHoraSaida: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblServicoSolicitado: TppLabel;
    ppLine25: TppLine;
    ppLabel6: TppLabel;
    ppLabel25: TppLabel;
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
  frmUt0302: TfrmUt0302;

implementation

uses uGlobal;

{$R *.dfm}

procedure TfrmUt0302.FormShow(Sender: TObject);
begin
   edtEmpresa.Text     := Empresa1;
   edtSolicitante.Text := Usuario1;
   edtData.Text        := DateToStr(Date);
   edtHoraChegada.Text := TimeToStr(Time);
   edtHoraSaida.Text   := TimeToStr(Time);

   edtEmpresa.SetFocus;
end;

procedure TfrmUt0302.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmUt0302.BitBtn2Click(Sender: TObject);
var Mail1: String;
begin
   Mail1 := 'mailto:suporte@multisoftnet.com.br';
   ShellExecute(GetDesktopWindow,'open',pchar(Mail1),nil,nil,sw_ShowNormal);
end;

procedure TfrmUt0302.BitBtn3Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmUt0302.BitBtn1Click(Sender: TObject);
begin
   if Application.MessageBox('Confirma a impress�o?','Confirma��o',MB_ICONQUESTION+MB_YESNO) = mrNo then
      Abort;

   lblDescricaoServico.Text := 'Eu, ' + Trim(edtSolicitante.Text) + ', declaro que o tecnico ' + Trim(edtTecnico.Text) +
                               ' da empresa MultiSoft Sistemas esteve nesta empresa prestando servi�os t�cnicos no' +
                               ' software MultiSoft Agnus no dia ' + edtData.Text + ' no periodo das ' +
                               Trim(edtHoraChegada.Text) + ' as ' + Trim(edtHoraSaida.Text) + ', conforme descrito abaixo.';

   lblData.Caption := DateToStr(DataSystem1);

   rctDescricao.RichText := rceDescricao.Lines.Text;

   ppReport1.Print;
end;

procedure TfrmUt0302.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if not (ActiveControl is TRichEdit) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TfrmUt0302.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
