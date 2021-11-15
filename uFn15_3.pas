{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FIN014 (FIN033)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA 
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 28/03/2007
 FINALIDADE           --> Emissão de Recibos
 COMENTARIO           -->

 *******************************************************************************}

unit uFn15_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, DB, JvExMask, JvToolEdit,
  JvDBControls, Buttons, JvBaseEdits;

type
  TfrmFn15_3 = class(TForm)
    Panel1: TPanel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DataSource1: TDataSource;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    SpeedButton1: TSpeedButton;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit8: TJvCalcEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btnSair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function TipoDocumento(Const Texto : String) : String;
    function Cheka(Campo : Integer) : Boolean;
  public
    { Public declarations }
  end;

var
  frmFn15_3: TfrmFn15_3;

implementation

uses uGlobal, uF6, uFn15_1,
  MaskUtils, uF7, udmFn15_1, uConsulta;

{$R *.dfm}

procedure TfrmFn15_3.FormShow(Sender: TObject);
begin
   if dmFn15_1.cdsRecibo.State = dsInsert then
      DBEdit2.SetFocus;
end;

procedure TfrmFn15_3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   frmFn15_1.StatusBar1.Panels[0].Text := '[C] » Consulta';
   frmFn15_1.StatusBar1.Panels[0].Width := 85;

   frmFn15_1.StatusBar1.Panels[1].Text := '[A] » Altera';
   frmFn15_1.StatusBar1.Panels[1].Width := 83;

   frmFn15_1.StatusBar1.Panels[2].Text := '[Ins] » Inclui';
   frmFn15_1.StatusBar1.Panels[2].Width := 85;

   frmFn15_1.StatusBar1.Panels[3].Text := '[Del] » Exclui';
   frmFn15_1.StatusBar1.Panels[3].Width := 85;

   frmFn15_1.StatusBar1.Panels[4].Text := '[F10] » Procura';
   frmFn15_1.StatusBar1.Panels[4].Width := 85;

   frmFn15_1.StatusBar1.Panels[5].Text := '[R] » Reimprime';
   frmFn15_1.StatusBar1.Panels[5].Width := 1000;

   frmFn15_3.Release;
   frmFn15_3 := nil;
end;

procedure TfrmFn15_3.SpeedButton1Click(Sender: TObject);
begin
   if not Verifica_acesso(33) then
   exit;
   // função remove todas as letras deixando apenas P ou R
   DBEdit9.Text := TipoDocumento(DBEdit9.Text);

   if DBEdit9.Text = 'P' then
   begin
      // Consulta fornecedor

      ConsultaFornecedor(DBEdit3);
   end;

   if DBEdit9.Text = 'R' then
   begin
      // Consulta Cliente

      ConsultaCliente2(DBEdit3);
   end;
end;

procedure TfrmFn15_3.DBEdit3Exit(Sender: TObject);
Var
  Sql1 : String;
begin
    // função remove todas as letras deixando apenas P ou R
   DBEdit9.Text := TipoDocumento(DBEdit9.Text);

   if (DBEdit3.Text <> '') and (DBEdit9.Text = 'P') then
      Cheka(01);

   if (DBEdit3.Text <> '') and (DBEdit9.Text = 'R') then
      Cheka(02);
end;

function TfrmFn15_3.TipoDocumento(const Texto: String): String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['P', 'R']) then
      begin
         S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;
end;

procedure TfrmFn15_3.DBEdit9Exit(Sender: TObject);
begin
   if DBEdit9.Text <> '' then
   begin
      DBEdit9.Text := TipoDocumento(DBEdit9.Text);

      if DBEdit9.Text = 'R' then
         DBEdit9.Text := 'RECEBIMENTO';

      if DBEdit9.Text = 'P' then
         DBEdit9.Text := 'PAGAMENTO';
   end
   else
   begin
      DBEdit9.SetFocus;
      Abort;
   end;
end;

function TfrmFn15_3.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin
         if RetornaFornecedorFn15_3(DBEdit3, DBEdit7) then
            Result := False;
      end;

      02:
      begin
         if RetornaClienteFn15_3(DBEdit3, DBEdit7) then
            Result := False;
      end;
   end;
end;

procedure TfrmFn15_3.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if Application.MessageBox('Confirma os Dados?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
         frmFn15_1.btnGravar.Click;
   end;
end;

procedure TfrmFn15_3.DBEdit6Exit(Sender: TObject);
begin
   // caucula juros do desconto
   if DBEdit6.Field.AsFloat > 0 then
   begin
      DBEdit8.Text := FloatToStr(ArredondarDecimal(StrToFloat(DBEdit6.Text) * StrToFloat(DBEdit5.Text) / 100, 2));

      if DBEdit8.Value > 0 then
         DBEdit8.Text := FloatToStr(ArredondarDecimal(StrToFloat(DBEdit5.Text) + StrToFloat(DBEdit8.Text), 2));
   end
   else
      DBEdit8.Text := DBEdit5.Text;
end;

procedure TfrmFn15_3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // controla cursor para cima
   if Key = 38 then
      Perform(WM_NEXTDLGCTL, 0, -1);

   if Key = 27 then
      Close;

   // chama a calculadora do windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn15_3.DBEdit6Enter(Sender: TObject);
begin
   frmFn15_1.StatusBar1.Panels[0].Text := '[ESC] » Retorno';
   frmFn15_1.StatusBar1.Panels[0].Width := 83;

   frmFn15_1.StatusBar1.Panels[1].Text := '[F2] » Geral';
   frmFn15_1.StatusBar1.Panels[1].Width := 70;

   frmFn15_1.StatusBar1.Panels[2].Text := '[ShF1] » Calculadora';
   frmFn15_1.StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn15_3.DBEdit9Enter(Sender: TObject);
begin
   frmFn15_1.StatusBar1.Panels[0].Text := '[P] » Pagamento';
   frmFn15_1.StatusBar1.Panels[0].Width := 85;

   frmFn15_1.StatusBar1.Panels[1].Text := '[R] » Recebimento';
   frmFn15_1.StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn15_3.DBEdit7Enter(Sender: TObject);
begin
   frmFn15_1.StatusBar1.Panels[0].Text := '[ESC] » Retorno';
   frmFn15_1.StatusBar1.Panels[0].Width := 83;

   frmFn15_1.StatusBar1.Panels[1].Text := '[F2] » Geral';
   frmFn15_1.StatusBar1.Panels[1].Width := 70;

   frmFn15_1.StatusBar1.Panels[2].Text := '[ShF1] » Calculadora';
   frmFn15_1.StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn15_3.btnSairClick(Sender: TObject);
begin
   if dmFn15_1.cdsRecibo.State = dsInsert then
   begin
      if Application.MessageBox('Deseja sair sem Confirmar os Dados?', 'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes then
         Close
      else
         frmFn15_1.btnGravar.Click;
   end;
end;

procedure TfrmFn15_3.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

end.
