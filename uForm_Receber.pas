unit uForm_Receber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExControls, JvComponent,
  JvNavigationPane, JvExStdCtrls, JvEdit, JvValidateEdit, JvGIF;

type
  TfrmReceber = class(TForm)
    Panel1: TPanel;
    btnConfirma: TBitBtn;
    btnFechar: TBitBtn;
    cmbBandeira: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    edtValor: TJvValidateEdit;
    pnlImprimindo: TPanel;
    Image1: TImage;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceber: TfrmReceber;

implementation

uses unFuncoesTEF, uBandeiras, uEcf, uDaruma,
  uGlobal;

{$R *.dfm}

procedure TfrmReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmReceber.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmReceber.btnConfirmaClick(Sender: TObject);
var NumCupom2, ArqRet1, Valor01, Forma_Pgto1: String;
    iConta: Word;
begin
   if edtValor.Value <= 0 then
   begin
      Application.MessageBox('O valor precisa ser maior que zero.','Aten��o', MB_OK + MB_ICONWARNING);
      edtValor.SetFocus;
      exit;      
   end;

   if cmbBandeira.ItemIndex = 0 then // tecban
   begin
      iTEFTecban := 0;
      ArqRet1    := 'C:\TEF_DIAL\resp\IntPos.001';
   end
   else // outras bandeiras
   begin
      iTEFTecban := 1;
      ArqRet1    := 'C:\TEF_DISC\resp\IntPos.001';
   end;

   TEFLimpaVariaveis;

   sTEFDoctoVinculado := '000000'; // nr do cupom fiscal
   sTEFValorTotal     := FloatToStr(edtValor.Value * 100);
   sTEFMoeda          := '0';

   TEFVendaCartao;

   Daruma_TEF_SetFocus('.:. Receber no Cart�o .:.');
   Application.ProcessMessages;

   if sTEFRetorno <> '0' then
   begin
      if FileExists(ArqRet1) then
      begin
         if Application.MessageBox('Confirma a impress�o do recibo?','Confirma��o',MB_ICONQUESTION + MB_YESNO) = mrNo then
         begin
            TEFNaoConfirmaOperacao;
            Abort;
         end
         else
         begin
            sTEFRetorno := '0';

            // passa os dados do arquivo intpos.001 para c:\mstef\tef.imp
            TEFConfirmaOperacao;

            if sTEFRetorno = '1' then
            begin
               Application.MessageBox('N�o foi poss�vel gerar o arquivo de impress�o','Aten��o',MB_ICONERROR);
               Abort;
            end;
         end;
      end
      else
      begin
         TEFNaoConfirmaOperacao;
         Abort;
      end;
   end;


   pnlImprimindo.Visible := True;
   Application.ProcessMessages;

//   Bematech_FI_RecebimentoNaoFiscal(PChar('01'),PChar(edtValor.Text),Pchar('Cartao'));

   Valor01     := RemoveChar(edtValor.Text);
   Forma_Pgto1 := 'CartaoC';

///   Bematech_FI_RecebimentoNaoFiscal('05',Valor01,Forma_Pgto1);
   for iConta := 1 to 6 do NumCupom2 := NumCupom2 + ' ';
   Bematech_FI_NumeroCupom( NumCupom2 );

   //frmVendaSuper.edtDescPgto.Text := 'CARTAO';
   frmBandeiras := TfrmBandeiras.Create(Self);
   frmBandeiras.ImpReciboCupom(FormatFloat('0.00',edtValor.Value),'R','','CARTAO');
   frmBandeiras.Release;
   frmBandeiras := nil;


   pnlImprimindo.Visible := False;
   frmReceber.Refresh;

   btnFechar.SetFocus;
end;

procedure TfrmReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
