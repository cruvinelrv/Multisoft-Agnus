unit uEST002_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvGradientHeaderPanel, StdCtrls, Buttons, DateUtils,
  JvExStdCtrls, JvEdit, JvValidateEdit, IniFiles, jpeg, ExtCtrls, StrUtils;

type
  TfrmEst002_2 = class(TForm)
    JvGradientHeaderPanel1: TJvGradientHeaderPanel;
    Label5: TLabel;
    Label6: TLabel;
    lblSenha: TLabel;
    Label4: TLabel;
    edtContraSenha: TJvValidateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lblVctoAtual: TLabel;
    lblProxVcto: TLabel;
    lblSenha1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    Retorno1: Boolean;
    Lib_Temp1: String;
    Codigo1: Byte; // variavel que recebera o codigo do erro que gerou a abertura deste formulario
  end;

var
  frmEst002_2: TfrmEst002_2;

implementation

uses uGlobal, udmProgs;

{$R *.dfm}

procedure TfrmEst002_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmEst002_2.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TfrmEst002_2.BitBtn2Click(Sender: TObject);
begin
   if Codigo1 = 11 then
      Retorno1 := True
   else
      Retorno1 := False;

   Close;
end;

procedure TfrmEst002_2.BitBtn1Click(Sender: TObject);
var Mensal1, Umdia1, DoisDias1, TresDias1: Integer;
    Arq2, Controle1: String;
    Senha1, ContraSenha1: Real;
begin
   Retorno1 := False;

   Senha1   := StrToFloat(lblSenha1.Caption);

   if edtContraSenha.Value = 0 then
   begin
      Close;
      Exit;
   end;

   Umdia1 := StrToInt( LeftStr( FloatToStr( StrToFloat(lblSenha1.Caption) * 111 ),6) );

   Doisdias1 := StrToInt( LeftStr( FloatToStr( StrToFloat(lblSenha1.Caption) * 22 ),6) );

   Tresdias1 := StrToInt( LeftStr( FloatToStr( StrToFloat(lblSenha1.Caption) * 30 ),6) );

   Mensal1 := StrToInt(LeftStr(lblSenha1.Caption,3)) * StrToInt(RightStr(lblSenha1.Caption,3)) ;


   // liberacao de 1 dia

   if edtContraSenha.Value = Umdia1 then
   begin
      if Lib_Temp1 <> '' then
      begin
         Application.MessageBox('J� existe uma libera��o tempor�ria' + #13 +
                                'outra libera��o n�o � permitida','Libera��o',MB_ICONERROR);
         Retorno1 := False;

         Close;
      end
      else
      begin
         dmProgs.cdsProtecao.Open;
         dmProgs.cdsProtecao.Edit;
         dmProgs.cdsProtecaoTEMP.AsString := Encripta(DateToStr(Date + 1));
         dmProgs.cdsProtecao.Post;
         dmProgs.cdsProtecao.ApplyUpdates(0);

         Application.MessageBox('Libera��o efetuada para 1 dia','Libera��o',MB_ICONINFORMATION);

         Retorno1 := True;

         Close;
      end;
   end;

   // liberacao de 2 dias

   if edtContraSenha.Value = DoisDias1 then
   begin
      if Lib_Temp1 <> '' then
      begin
         Application.MessageBox('J� existe uma libera��o tempor�ria' + #13 +
                                'outra libera��o n�o � permitida','Libera��o',MB_ICONERROR);

         Retorno1 := False;

         Close;
      end
      else
      begin
         dmProgs.cdsProtecao.Open;
         dmProgs.cdsProtecao.Edit;
         dmProgs.cdsProtecaoTEMP.AsString := Encripta(DateToStr(Date + 2));
         dmProgs.cdsProtecao.Post;
         dmProgs.cdsProtecao.ApplyUpdates(0);

         Application.MessageBox('Libera��o efetuada para 2 dias','Libera��o',MB_ICONINFORMATION);

         Retorno1 := True;

         Close;
      end;
   end;


   // liberacao de 3 dias

   if edtContraSenha.Value = TresDias1 then
   begin
      if Lib_Temp1 <> '' then
      begin
         Application.MessageBox('J� existe uma libera��o tempor�ria' + #13 +
                                'outra libera��o n�o � permitida','Libera��o',MB_ICONERROR);
         Retorno1 := False;

         Close;
      end
      else
      begin
         dmProgs.cdsProtecao.Open;
         dmProgs.cdsProtecao.Edit;
         dmProgs.cdsProtecaoTEMP.AsString := Encripta(DateToStr(Date + 3));
         dmProgs.cdsProtecao.Post;
         dmProgs.cdsProtecao.ApplyUpdates(0);

         Application.MessageBox('Libera��o efetuada para 3 dias','Libera��o',MB_ICONINFORMATION);

         Retorno1 := True;

         Close;
      end;
   end;


   // libera��o mensal

   if edtContraSenha.Value = Mensal1 then
   begin
      Controle1 := FormatDateTime('dd/mm/yyyy',Date) + '_';
      Controle1 := Controle1 + lblProxVcto.Caption;
      Controle1 := Encripta(Controle1);
      Controle1 := Controle1;

      dmProgs.cdsProtecao.Open;
      dmProgs.cdsProtecao.Edit;
      dmProgs.cdsProtecaoALUGUEL.AsString := Controle1;
      dmProgs.cdsProtecaoTEMP.AsString    := '';
      dmProgs.cdsProtecao.Post;
      dmProgs.cdsProtecao.ApplyUpdates(0);

      Application.MessageBox('Libera��o menssal efetuada','Libera��o',MB_ICONINFORMATION);

      Retorno1 := True;

      Close;
   end;

   Close;
end;

end.
