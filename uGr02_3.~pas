unit uGr02_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit;

type
  TfrmGr02_3 = class(TForm)
    Panel1: TPanel;
    btnSair: TBitBtn;
    edtTipoDoc: TJvValidateEdit;
    edtPortador: TJvValidateEdit;
    edtCentro: TJvValidateEdit;
    edtConta: TJvValidateEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtTipoDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCentroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGr02_3: TfrmGr02_3;

implementation

uses uGlobal, uConsulta, uDmPrincipal;

{$R *.dfm}

procedure TfrmGr02_3.SpeedButton4Click(Sender: TObject);
begin
   edtTipoDoc.SetFocus;

   ComsultaTipoDocumento(edtTipoDoc);
end;

procedure TfrmGr02_3.SpeedButton1Click(Sender: TObject);
begin
   edtPortador.SetFocus;

   ConsultaPortador(edtPortador);
end;

procedure TfrmGr02_3.SpeedButton2Click(Sender: TObject);
begin
   edtCentro.SetFocus;

   ConsultaCentroCusto(edtCentro);
end;

procedure TfrmGr02_3.SpeedButton3Click(Sender: TObject);
begin
   edtConta.SetFocus;

   ConsultaConta(edtConta);
end;

procedure TfrmGr02_3.edtTipoDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtTipoDoc, Edit1, 'E_TIPODOCUMENTO', 'CODIGO_TIPODOCUMENTO', 'DESCRICAO_TIPODOCUMENTO') then
      begin
         edtTipoDoc.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmGr02_3.edtPortadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtPortador, Edit2, 'E_PORTADOR', 'CODIGO_PORTADOR', 'DESCRICAO_PORTADOR') then
      begin
         edtPortador.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmGr02_3.edtCentroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtCentro, Edit3, 'E_CENTRO', 'CODIGO_CENTRO', 'DESCRICAO_CENTRO') then
      begin
         edtCentro.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmGr02_3.edtContaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtConta, Edit4, 'E_CONTA', 'CODIGO_CONTA', 'DESCRICAO_CONTA') then
      begin
         edtConta.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmGr02_3.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      key := #0;
   end;

   if Key = #27 then
      Close;
end;

procedure TfrmGr02_3.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmGr02_3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   with DmPrincipal do
   begin
      cdsFinanceiro.Edit;
      cdsFinanceirotipo_documento.AsInteger := edtTipoDoc.AsInteger;
      cdsFinanceiroPortador.AsInteger       := edtPortador.AsInteger;
      cdsFinanceirocentro_custo.AsInteger   := edtCentro.AsInteger;
      cdsFinanceiroconta.AsString           := edtConta.Value;
      cdsFinanceiro.Post;
   end;
end;

end.
