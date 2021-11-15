unit uFn07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, JvExStdCtrls,
  JvEdit, JvValidateEdit, Buttons, Mask, JvExMask, JvToolEdit, DB;

type
  TfrmFn07 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    edtContaCorrente: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    edtDataConsultar: TJvDateEdit;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    btnSair: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtContaCorrenteExit(Sender: TObject);
    procedure edtDataConsultarExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDataConsultarEnter(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    function Rotorna_ContaCorrente(Codigo, Descricao : TCustomEdit) : Boolean;
  public
    { Public declarations }
    ContaCorrente1 : Integer;
    Debito1,
    Credito1,
    Saldo_Atual1,
    Saldo_Anterior1 : Double;
  end;

var
  frmFn07: TfrmFn07;

implementation

uses udmFn07, uGlobal, uConsulta;

{$R *.dfm}

procedure TfrmFn07.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then // enter com tab
      Perform(WM_NEXTDLGCTL, 0, 0);

   if Key = 27 then  // esc
      Close;

   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn07.edtContaCorrenteExit(Sender: TObject);
begin
   ContaCorrente1 := 0;

   if btnSair.Focused then
      Exit;
     
   if not Rotorna_ContaCorrente(edtContaCorrente, Edit1) then
   begin
      edtContaCorrente.SetFocus;
      Exit;
   end
   else
      ContaCorrente1 := edtContaCorrente.Value;
end;

procedure TfrmFn07.edtDataConsultarExit(Sender: TObject);
begin
   Debito1         := 0;
   Credito1        := 0;
   Saldo_Anterior1 := 0;
   Saldo_Atual1    := 0;

   if (edtDataConsultar.EditText <> '') and (ContaCorrente1 <> 0) then
   begin
      dmFn07.cdsResban.Close;
      dmFn07.cdsResban.Params.ParamByName('CHAVE').AsString   := edtDataConsultar.EditText + '-' + StrZero(edtContaCorrente.EditText, 3);
      dmFn07.cdsResban.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn07.cdsResban.Open;

      if dmFn07.cdsResban.IsEmpty then
      begin
         Application.MessageBox('Conta não possui movimento nesta data', 'Informação',MB_OK+MB_ICONEXCLAMATION);

         if (dmFn07.cdsConlan2.Active) and (dmFn07.cdsConlan2.RecordCount > 0) then
            dmFn07.cdsConlan2.EmptyDataSet;

         Edit2.Clear;
         Edit3.Clear;
         Edit4.Clear;
         Edit5.Clear;

         edtContaCorrente.SetFocus;
      end;

      dmFn07.cdsConlan2.Close;
      dmFn07.cdsConlan2.Params.ParamByName('CONTA_CORRENTE').AsInteger := ContaCorrente1;
      dmFn07.cdsConlan2.Params.ParamByName('DATA').AsDate              := edtDataConsultar.Date;
      dmFn07.cdsConlan2.Params.ParamByName('EMPRESA').AsString         := CodigoEmpresa1;
      dmFn07.cdsConlan2.Open;

      while not dmFn07.cdsConlan2.Eof do
      begin
         if dmFn07.cdsConlan2TIPO_CONLAN.AsString = 'D' then
            Debito1 := Debito1 + dmFn07.cdsConlan2VALOR_CONLAN.AsFloat
         else
            Credito1 := Credito1 + dmFn07.cdsConlan2VALOR_CONLAN.AsFloat;

         dmFn07.cdsConlan2.Next;
      end;

      dmFn07.cdsConlan2.First;

      dmFn07.cdsConlan.Close;
      dmFn07.cdsConlan.Params.ParamByName('CONTA_CORRENTE').AsInteger := ContaCorrente1;
      dmFn07.cdsConlan.Params.ParamByName('DATA').AsDate              := edtDataConsultar.Date;
      dmFn07.cdsConlan.Params.ParamByName('EMPRESA').AsString         := CodigoEmpresa1;
      dmFn07.cdsConlan.Open;

      while not dmFn07.cdsConlan.Eof do
      begin
         if dmFn07.cdsConlanTIPO_CONLAN.AsString = 'D' then
            Saldo_Anterior1 := Saldo_Anterior1 - dmFn07.cdsConlanVALOR_CONLAN.AsFloat
         else
            Saldo_Anterior1 := Saldo_Anterior1 + dmFn07.cdsConlanVALOR_CONLAN.AsFloat;
       

         dmFn07.cdsConlan.Next;
      end;

      Saldo_Atual1 := Saldo_Anterior1 + Credito1 - Debito1;

      Edit2.Text := FormatFloat('#,##0.00', ArredondarDecimal(Saldo_Anterior1, 2));

      Edit3.Text := FormatFloat('#,##0.00', ArredondarDecimal(Debito1, 2));

      Edit4.Text := FormatFloat('#,##0.00', ArredondarDecimal(Credito1, 2));

      Edit5.Text := FormatFloat('#,##0.00', ArredondarDecimal(Saldo_Atual1, 2));
   end;
end;

procedure TfrmFn07.SpeedButton1Click(Sender: TObject);
begin
   edtContaCorrente.SetFocus;

   ConsultaContaBanco(edtContaCorrente);
end;

function TfrmFn07.Rotorna_ContaCorrente(Codigo,
  Descricao: TCustomEdit): Boolean;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   if Codigo.Text = '999' then
   begin
      if Descricao is TEdit then
         Descricao.Text := 'Caixa faturamento';
      Exit;
   end;

   dmFn07.qryConsulta.Close;
   dmFn07.qryConsulta.SQL.Clear;
   dmFn07.qryConsulta.SQL.Add(' select b.codigo_banco, b.descricao_banco, b.cod_empresa ' +
                              ' from p_banco b ' +
                              ' where b.codigo_banco = ' + Codigo.Text +
                              ' and b.cod_empresa = ' + CodigoEmpresa1);

   dmFn07.qryConsulta.Open;

   if dmFn07.qryConsulta.IsEmpty then
   begin
   
      Application.MessageBox('Conta Corrente / Caixa não cadastrada', 'Informação', MB_OK+MB_ICONEXCLAMATION);

      if Descricao is TEdit then
      Descricao.Text := '';

      Result := False;
      Exit;
   end;

   if Descricao is TEdit then
      Descricao.Text := dmFn07.qryConsulta.FieldByname('descricao_banco').AsString;
      
end;

procedure TfrmFn07.FormShow(Sender: TObject);
begin
   edtContaCorrente.SetFocus;
end;

procedure TfrmFn07.FormCreate(Sender: TObject);
begin
   dmFn07 := TdmFn07.Create(Self);
end;

procedure TfrmFn07.edtDataConsultarEnter(Sender: TObject);
begin
   edtDataConsultar.Date := DataSystem1;
end;

procedure TfrmFn07.btnSairClick(Sender: TObject);
begin
   Close;
end;

end.
