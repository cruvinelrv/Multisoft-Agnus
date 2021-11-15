unit uFn10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, Buttons;

type
  TfrmFn10 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    StatusBar1: TStatusBar;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtValorNominal: TJvValidateEdit;
    edtDataEmissao: TJvDateEdit;
    edtDataVencimento: TJvDateEdit;
    edtMora: TJvValidateEdit;
    edtTaxa: TJvValidateEdit;
    Label4: TLabel;
    edtDataPagamento: TJvDateEdit;
    edtValorCorrigido: TJvValidateEdit;
    edtJuroAtraso: TJvValidateEdit;
    edtValorTotal: TJvValidateEdit;
    Label7: TLabel;
    edtDiasAtraso: TJvValidateEdit;
    edtMoraDiaria: TJvValidateEdit;
    Label12: TLabel;
    StatusBar2: TStatusBar;
    btnCalcular: TBitBtn;
    btnLimpar: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtDataVencimentoExit(Sender: TObject);
    procedure edtDataPagamentoExit(Sender: TObject);
    procedure edtDiasAtrasoEnter(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    function Cheka(Campo : Integer) : Boolean;
  public
    { Public declarations }
    Dias_Atraso,
    Taxa_Juros : Double;
  end;

var
  frmFn10: TfrmFn10;

implementation

uses udmFn10, uGlobal;

{$R *.dfm}

procedure TfrmFn10.FormCreate(Sender: TObject);
begin
   dmFn10 := TdmFn10.Create(Self);   
end;

procedure TfrmFn10.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn10.FormShow(Sender: TObject);
begin
   edtValorNominal.SetFocus;

   Taxa_Juros := 0;

   Dias_Atraso := 0;
end;

procedure TfrmFn10.edtDataVencimentoExit(Sender: TObject);
begin
   if edtDataEmissao.Date > edtDataVencimento.Date then
   begin
      edtDataVencimento.SetFocus;
      Exit;
   end;
end;

procedure TfrmFn10.edtDataPagamentoExit(Sender: TObject);
begin
   if (edtDataVencimento.Text <> '') and (edtDataPagamento.Text <> '') then
   begin
      if edtDataPagamento.Date > edtDataVencimento.Date then
      begin
         Dias_Atraso := edtDataPagamento.Date - edtDataVencimento.Date;
      end
      else
      begin
         edtDataPagamento.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn10.edtDiasAtrasoEnter(Sender: TObject);
begin
   edtDiasAtraso.Value := ArredondarDecimal(Dias_Atraso, 0);
end;

function TfrmFn10.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin
         if edtValorNominal.Value = 0 then
         begin
            Application.MessageBox('Informe o valor nominal', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      02:
      begin
         if edtDataVencimento.Text = '' then
         begin
            Application.MessageBox('Informe a data do vencimento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      03:
      begin
         if (edtMora.Value = 0) and (edtTaxa.Value = 0) then
         begin
            Application.MessageBox('Informe o valor da mora, ou taxa de juros', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      04:
      begin
         if edtDataPagamento.Text = '' then
         begin
            Application.MessageBox('Informe a data do pagamento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;
   end;
end;

procedure TfrmFn10.btnCalcularClick(Sender: TObject);
begin
   if (not Cheka(01)) or
      (not Cheka(02)) or
      (not Cheka(03)) or
      (not Cheka(04)) then
      Abort;

   if (edtMora.Value > 0) and (edtTaxa.Value = 0) then
   begin
      edtMoraDiaria.Value := ArredondarDecimal((edtMora.Value * Dias_Atraso), 2);

      edtValorTotal.Value := ArredondarDecimal(edtValorNominal.Value + edtMoraDiaria.Value, 2);
   end;

   if (edtMora.Value = 0) and (edtTaxa.Value > 0) then
   begin
      edtJuroAtraso.Value     := ArredondarDecimal(Calcula_Juro_Simples(Dias_Atraso, edtValorNominal.Value, edtTaxa.Value), 2);

      edtValorCorrigido.Value := ArredondarDecimal(edtJuroAtraso.Value + edtValorNominal.Value, 2);

      edtValorTotal.Value     := edtValorCorrigido.Value;
   end;

   if (edtMora.Value > 0) and (edtTaxa.Value > 0) then
   begin
      edtMoraDiaria.Value := ArredondarDecimal((edtMora.Value * Dias_Atraso), 2);

      edtJuroAtraso.Value     := ArredondarDecimal(Calcula_Juro_Simples(Dias_Atraso, edtValorNominal.Value, edtTaxa.Value), 2);

      edtValorCorrigido.Value := ArredondarDecimal(edtJuroAtraso.Value + edtValorNominal.Value, 2);

      edtValorTotal.Value     := edtValorCorrigido.Value + edtMoraDiaria.Value;
   end;
end;

procedure TfrmFn10.btnLimparClick(Sender: TObject);
begin
   edtValorNominal.Value   := 0;

   edtMora.Value           := 0;

   edtMoraDiaria.Value     := 0;

   edtTaxa.Value           := 0;

   edtJuroAtraso.Value     := 0;

   edtValorCorrigido.Value := 0;

   edtValorTotal.Value     := 0;

   edtDiasAtraso.Value     := 0;

   edtDataEmissao.Clear;

   edtDataVencimento.Clear;

   edtDataPagamento.Clear;

   edtValorNominal.SetFocus;
end;

procedure TfrmFn10.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

end.
