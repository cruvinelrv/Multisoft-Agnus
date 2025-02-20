{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FN0101 (FIN016)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Fl�vio Scariot
 DATA DE CONCEP��O    --> 09/02/2007
 FINALIDADE           --> Baixar Contas a Pagar
 COMENTARIO           -->

 *******************************************************************************}

unit uFn0102;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, JvToolEdit, JvDBControls, JvExMask,
  JvSpin, JvDBSpinEdit, DBCtrls, Mask, ExtCtrls, DB, FMTBcd, DBClient,
  Provider, SqlExpr, JvExStdCtrls, JvDBCombobox, JvEdit, JvValidateEdit,
  JvMemo, Grids, DBGrids;

type
  TfrmFn0102 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    edtNotaFiscal: TDBEdit;
    edtFornecedor: TDBEdit;
    edtCorrenteCaixa: TDBEdit;
    edtPortador: TDBEdit;
    edtCentroCusto: TDBEdit;
    edtConta: TDBEdit;
    edtEmissao: TJvDBDateEdit;
    edtVencimento: TJvDBDateEdit;
    edtPrevisao: TJvDBDateEdit;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    edtDataPagamento: TJvDBDateEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBText1: TDBText;
    SpeedButton5: TSpeedButton;
    ComboBox1: TComboBox;
    edtDataFluxoCaixa: TJvDBDateEdit;
    edtJurosDesconto: TJvValidateEdit;
    Label21: TLabel;
    Label22: TLabel;
    edtValorPrincipal: TJvValidateEdit;
    edtValorTotal: TJvValidateEdit;
    Label23: TLabel;
    Label24: TLabel;
    edtMoraDiaria: TJvValidateEdit;
    edtMulta: TJvValidateEdit;
    edtPrincipal: TJvValidateEdit;
    edtJuros: TJvValidateEdit;
    edtValorSaldo: TDBEdit;
    edtValorPago: TJvValidateEdit;
    DBMemo1: TDBMemo;
    cbxFormaPgto: TComboBox;
    Label1: TLabel;
    edtCodigo: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnSairClick(Sender: TObject);
    procedure edtContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure edtCentroCustoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCorrenteCaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtContaEnter(Sender: TObject);
    procedure edtCentroCustoEnter(Sender: TObject);
    procedure edtPortadorEnter(Sender: TObject);
    procedure edtCorrenteCaixaEnter(Sender: TObject);
    procedure edtDataPagamentoEnter(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoDblClick(Sender: TObject);
    procedure edtContaDblClick(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure edtDataFluxoCaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1Exit(Sender: TObject);
    procedure edtMultaExit(Sender: TObject);
    procedure edtMoraDiariaExit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure edtPrincipalExit(Sender: TObject);
    procedure edtMultaEnter(Sender: TObject);
    procedure edtDataPagamentoExit(Sender: TObject);
    procedure edtValorPagoExit(Sender: TObject);
    procedure edtDataFluxoCaixaEnter(Sender: TObject);
    procedure edtDataFluxoCaixaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtFornecedorEnter(Sender: TObject);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxFormaPgtoEnter(Sender: TObject);
    procedure cbxFormaPgtoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function Cheka(Campo : Integer) : Boolean;
    function Trata_edtCodigo(Const Texto : String) : String;// Retira acentua��o e pontua��o
    function RemoveInteiro(Const Texto : String) : String;
    procedure LimpaStatusBar;
    procedure ProcessoGravar;
    procedure RetornaBaixa;
    procedure LimpaDataSet;
  public
    { Public declarations }
    ValorPrincipal,
    Vencimento_Pagar,
    ValorPago,
    Multa,
    Juros1,
    Mora_Diaria,
    Dias_Atrazo,
    Confere_ValorPago,
    Testa_ValorPago,
    ValorPagoRelatorio : Real;
    HIS1, HIS2,
    Tipo_Operacao,
    Cheque_Pagar : String;
    Tipo_De_Baixa,
    Memo1,
    cheka_Multa_Mora : Boolean;
  end;

var
  frmFn0102: TfrmFn0102;

implementation

uses uCtrlF11, uGlobal, StrUtils,
  uDmPrincipal, uF6, uAltF10, uAltF9, uAltF6, uAltF7, MaskUtils, uEST002,
  uFn15_2, uConsulta, udmFn0102, uProcess;

{$R *.dfm}

procedure TfrmFn0102.BitBtn1Click(Sender: TObject);
begin
   frmCtrlF11 := TfrmCtrlF11.Create(Self);
   frmCtrlF11.ShowModal;
   frmCtrlF11.Release;
   frmCtrlF11 := nil;
end;

procedure TfrmFn0102.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
   begin
      Close;
   end;

   // chama consulta de contas a pagar
   if (Shift = [ssShift]) and (Key = 121) then
   begin
      ConsultaContasPagar(edtCodigo);

      edtCodigo.SetFocus;
   end;

   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);
end;

procedure TfrmFn0102.FormShow(Sender: TObject);
begin
   HIS1          := '';
   HIS2          := '';
   Tipo_Operacao := '';

   edtFornecedor.Enabled := True;
   Cheque_Pagar := '';

   dmFn0102.sqqConsulta.Close;
   dmFn0102.sqqConsulta.SQL.Clear;
   dmFn0102.sqqConsulta.SQL.Add('SELECT * FROM EMPRESA WHERE CODIGO_EMP = ' + CodigoEmpresa1);
   dmFn0102.sqqConsulta.Open;

   if not dmFn0102.sqqConsulta.IsEmpty then
      Cheque_Pagar := dmFn0102.sqqConsulta.FieldByName('CHEQ_PAGAR_EMP').AsString;

   ValorPago    := 0;
   ValorParcial := 0;

   dmFn0102.cdsPagar.Close;
   dmFn0102.cdsPagar.Params.ParamByName('EMPRESA').AsInteger := 0;
   dmFn0102.cdsPagar.Params.ParamByName('DOCUMENTO').AsInteger := 0;
   dmFn0102.cdsPagar.Open;

   if (not(dmFn0102.cdsPagar.State = dsInsert)) then
      dmFn0102.cdsPagar.Append;

   edtDataFluxoCaixa.Field.AsString := DateToStr(DataSystem1);

   edtFornecedor.SetFocus;
end;

function TfrmFn0102.Cheka(Campo: Integer): Boolean;
Var
  Sql1 : String;
begin
   Result := True;

   case Campo of
      01:
      begin
         // retorna nome do fornecedor
         if not RetornaFornecedor(edtFornecedor, DBText2) then
            Result := False;
      end;

      02:
      begin
         // retorna se h� algum documento cadastrado para o
         // fornecedor informado
         if not RetornaPagar(edtFornecedor, DBText2) then
            Result := False;
      end;

      03:
      begin
         // retorna se o documento est� cadastrado
         // ou foi liquidado
         if not RetornaPagarDocumento(edtCodigo) then
            Result := False;
      end;

      04:
      begin
         // retorna descri��o da conta se
         // estiver cadastrada
         if not RetornaConta(edtConta, DBText5) then
            Result := False;
      end;

      05:
      begin
         // retorna descri��o do centro de custo se
         // estiver cadastrado
         if not RetornaCentroCusto(edtCentroCusto, DBText4) then
            Result := False;
      end;

      06:
      begin
         // retorna descri��o do portador se
         // estiver cadastrado
         if not RetornaPortador(edtPortador, DBText3) then
            Result := False;
      end;

      07:
      begin
         if not RetornaContaCorrenteCaixa(edtCorrenteCaixa, DBText1) then
            Result := False;
      end;

      08:
      begin
         if cbxFormaPgto.ItemIndex = -1 then
         begin
            Application.MessageBox('Informe a forma de pagamento', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      09:
      begin
         if ComboBox1.Text = '' then
         begin
            Application.MessageBox('Informe o tipo de baixa', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      10:
      begin
         if edtCodigo.Text = '' then
         begin
            Application.MessageBox('Informe o documento', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end
      end;
      
      11:
      begin
         if edtNotaFiscal.Field.AsString = '' then
         begin
            Application.MessageBox('Informe o N� da nota fiscal', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      12:
      begin
         if edtEmissao.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a data da emiss�o', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      13:
      begin
         if edtVencimento.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a data do vencimento', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      14:
      begin
         if edtPrevisao.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a data da previs�o', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      15:
      begin
         if DBText3.Field.AsString = '' then
         begin
            Application.MessageBox('Informe o valor do documento', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      16:
      begin
         if DBText4.Field.AsString  = '' then
         begin
            Application.MessageBox('Informe o Fornecedor', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      17:
      begin
         if edtConta.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a conta', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      18:
      begin
         if edtCentroCusto.Field.AsString = '' then
         begin
            Application.MessageBox('Informe o centro de custo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      19:
      begin
         if edtPortador.Field.AsString = '' then
         begin
            Application.MessageBox('Informe o Portador', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      20:
      begin
         if edtCorrenteCaixa.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a conta corrente', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      22:
      begin
         if edtDataPagamento.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a data do Pagamento', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;
   end;
end;

procedure TfrmFn0102.DataSource1DataChange(Sender: TObject; Field: TField);
Var Sair_Cancelar : Boolean;
begin
   Panel1.Enabled := (dmFn0102.cdsPagar.Active) and
                     (dmFn0102.cdsPagar.State in [dsInsert, dsEdit]);

   Sair_Cancelar := False;

   if (dmFn0102.cdsPagar.Active) and (dmFn0102.cdsPagar.RecordCount > 0) then
      Sair_Cancelar := True
   else
      Sair_Cancelar := False;

   btnGravar.Enabled := (dmFn0102.cdsPagar.Active) and
                        (dmFn0102.cdsPagar.State in [dsInsert, dsEdit]);

   edtCodigo.ReadOnly := (dmFn0102.cdsPagar.Active) and
                         (dmFn0102.cdsPagar.State in [dsEdit]);

   edtNotaFiscal.ReadOnly := edtCodigo.ReadOnly;

   edtEmissao.ReadOnly := edtCodigo.ReadOnly;

   edtVencimento.ReadOnly := edtCodigo.ReadOnly;

   edtPrevisao.ReadOnly := edtCodigo.ReadOnly;

   edtValorSaldo.ReadOnly := edtCodigo.ReadOnly;

   edtFornecedor.ReadOnly := edtCodigo.ReadOnly;

   btnSair.Caption := IfThen(Sair_Cancelar, '&Cancelar', '&Sair');
end;

procedure TfrmFn0102.btnSairClick(Sender: TObject);
begin
   if btnSair.Caption = '&Cancelar' then
   begin
      LimpaDataSet;

      edtFornecedor.SetFocus;
   end
   else
   begin
      Close;
   end;
end;

procedure TfrmFn0102.edtContaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de Conta
   if (Shift = [ssAlt]) and (Key = 121) then
      SpeedButton2.Click;

   if Key = 13 then
   begin
      if edtConta.Text = '' then
      begin
         DBText5.Field.AsString := '';
         Exit;
      end
      else
      begin
         if not Cheka(04) then
            edtConta.SetFocus;
      end;
   end;
end;

procedure TfrmFn0102.SpeedButton1Click(Sender: TObject);
begin
   if not Verifica_acesso(33) then
      Exit;

   edtFornecedor.SetFocus;

   ConsultaFornecedor(edtFornecedor);
end;

procedure TfrmFn0102.SpeedButton2Click(Sender: TObject);
begin
   if not Verifica_acesso(41) then
      Exit;

   edtConta.SetFocus;

   ConsultaConta(edtConta);
end;

procedure TfrmFn0102.SpeedButton3Click(Sender: TObject);
begin
   if not Verifica_acesso(37) then
      Exit;

   edtCentroCusto.SetFocus;

   ConsultaCentroCusto(edtCentroCusto);
end;

procedure TfrmFn0102.SpeedButton4Click(Sender: TObject);
begin
   if not Verifica_acesso(38) then
      Exit;

   edtPortador.SetFocus;

   ConsultaPortador(edtPortador);
end;

procedure TfrmFn0102.SpeedButton5Click(Sender: TObject);
begin
   if not Verifica_acesso(42) then
      Exit;

   edtCorrenteCaixa.SetFocus;

   ConsultaContaBanco(edtCorrenteCaixa); // consulta conta corrente caixa
end;

procedure TfrmFn0102.edtCentroCustoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de centro de custo
   if (Shift = [ssAlt]) and (Key = 120) then
      SpeedButton3.Click;

   if Key = 13 then
   begin
      if edtCentroCusto.Text = '' then
      begin
         DBText4.Field.AsString := '';
         Exit;
      end
      else
      begin
         if not Cheka(05) then
            edtCentroCusto.SetFocus;
      end;
   end;
end;

procedure TfrmFn0102.edtPortadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de portador
   if (Shift = [ssAlt]) and (Key = 117) then
      SpeedButton4.Click;

   if Key = 13 then
   begin
      if edtPortador.Field.Text = '' then
      begin
         DBText3.Field.AsString := '';
         Exit;
      end
      else
      begin
          if not Cheka(06) then
             edtPortador.SetFocus;
      end;
   end;
end;

procedure TfrmFn0102.edtCorrenteCaixaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de conta corrente\ caixa
   if (Shift = [ssAlt]) and (Key = 118) then
      SpeedButton5.Click;

   if Key = 13 then
   begin
      Memo1 := False;

      if not Cheka(07) then
      begin
         edtCorrenteCaixa.SetFocus;
         Abort;
      end
      else
      begin
          if DBMemo1.Field.IsNull  then // se DBMemo estiver vazio
          begin
             HIS1 := 'Pagamento do Titulo: ' + edtCodigo.Text;
             Memo1 := True;
          end;
      end;
   end;
end;

procedure TfrmFn0102.edtCodigoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] � Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [ShF1] � Calculadora ';
   StatusBar1.Panels[1].Width := 120;

   StatusBar1.Panels[1].Text := ' [ShF10] � Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0102.edtContaEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o C�digo da Conta ';
   StatusBar1.Panels[0].Width := 160;

   StatusBar1.Panels[1].Text := ' [Alt+F10] � Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0102.edtCentroCustoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o C�digo do Centro de Custo ';
   StatusBar1.Panels[0].Width := 200;

   StatusBar1.Panels[1].Text := ' [Alt+F9] � Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0102.edtPortadorEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o C�digo Portador ';
   StatusBar1.Panels[0].Width := 165;

   StatusBar1.Panels[1].Text := ' [Alt+F6] � Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0102.edtCorrenteCaixaEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o C�digo da C\C\ Caixa ';
   StatusBar1.Panels[0].Width := 175;

   StatusBar1.Panels[1].Text := ' [Alt+F7] � Consulta ';
   StatusBar1.Panels[1].Width := 120;

   StatusBar1.Panels[2].Text := ' [999] � Caixa Faturamento ';
   StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn0102.edtDataPagamentoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] � Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [F2] � Geral ';
   StatusBar1.Panels[1].Width := 100;

   StatusBar1.Panels[2].Text := ' [ShF1] � Calculadora ';
   StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn0102.ComboBox1Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [P] � Parcial ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [T] � Total ';
   StatusBar1.Panels[1].Width := 1000;
end;


// func�o que filtra as apenas as letras da condi��o de pagamento
// se qualquer outra letra for digitada ser� apagada
function TfrmFn0102.RemoveInteiro(const Texto: String): String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['D', 'C', 'T', 'O']) then
      begin
         S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;

end;

procedure TfrmFn0102.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmFn0102.edtCodigoDblClick(Sender: TObject);
begin
   if not Cheka(03) then
      Abort;
end;

procedure TfrmFn0102.edtContaDblClick(Sender: TObject);
begin
   Cheka(03);
end;

procedure TfrmFn0102.LimpaStatusBar;
begin
   if StatusBar1.Panels[0].Text <> '' then
      StatusBar1.Panels[0].Text := '';

   if StatusBar1.Panels[1].Text <> '' then
      StatusBar1.Panels[1].Text := '';

   if StatusBar1.Panels[2].Text <> '' then
      StatusBar1.Panels[2].Text := '';

   if StatusBar1.Panels[3].Text <> '' then
      StatusBar1.Panels[3].Text := '';
end;

procedure TfrmFn0102.ComboBox1Exit(Sender: TObject);
Var
  Dias : Double;
  Juros : Double;
begin
   Confere_ValorPago := 0;

   if btnSair.Focused then
      Exit;

   if edtCodigo.Focused then
      Exit;

   if not Cheka(09) then
      Abort;

   if ComboBox1.ItemIndex = 1 then  // baixa parcial
   begin
      Tipo_Operacao := 'Baixa parcial efetuada ';

      edtPrincipal.ReadOnly := False;

      edtJuros.ReadOnly := False;

      edtPrincipal.Value := edtValorPago.Value;

      Confere_ValorPago := edtValorPago.Value;

      edtJuros.Value := 0;

      edtJurosDesconto.Value := 0;
   end
   else
   begin
      Tipo_Operacao := 'Conta baixada ';

      edtPrincipal.ReadOnly := True;

      edtJuros.ReadOnly := True;

      edtPrincipal.Value := 0;

      edtJuros.Value := 0; 
   end;
end;


procedure TfrmFn0102.btnGravarClick(Sender: TObject);
begin
   if (not Cheka(10)) or
      (not Cheka(11)) or
      (not Cheka(12)) or
      (not Cheka(13)) or
      (not Cheka(14)) or
      (not Cheka(15)) or
      (not Cheka(16)) or
      (not Cheka(20)) or
      (not Cheka(21)) or
      (not Cheka(22)) then
      Abort;

   if dmFn0102.cdsPagar.State in [dsInsert, dsEdit] then
   begin
      ProcessoGravar;

      edtValorPago.Enabled     := True;
      edtJurosDesconto.Enabled := True;

      dmFn0102.cdsPagarDOCUMENTO_PAGAR.AsString := edtCodigo.Text;
      dmFn0102.cdsPagarCOD_EMPRESA_PAGAR.AsString := CodigoEmpresa1;

      ValorPagoRelatorio := edtValorPago.Value; // alimenta relat�rio de recibo

      if ValorPago > 0 then // se valorpago for maior que zero j� ocorreu um pagamento parcial
         dmFn0102.cdsPagarVALORPAGO_PAGAR.AsFloat := (edtValorPago.Value + ValorPago)
      else
         dmFn0102.cdsPagarVALORPAGO_PAGAR.AsFloat := edtValorPago.Value;

      if ComboBox1.ItemIndex = 1 then // baixa parcial
         dmFn0102.cdsPagarPARCIAL_PAGAR.AsFloat := (edtPrincipal.Value + ValorParcial);

      if (ComboBox1.ItemIndex = 0) or (Tipo_De_Baixa = True) then
         dmFn0102.cdsPagarTIPO_BAIXA_PAGAR.AsString := 'T'
      else
         dmFn0102.cdsPagarTIPO_BAIXA_PAGAR.AsString := 'P';

      dmFn0102.cdsPagarHISTORICO_PAGAR.AsString := DBMemo1.Text;

      dmFn0102.cdsPagar.Post;

      dmFn0102.cdsPagar.ApplyUpdates(0);

      Application.MessageBox(pChar(Tipo_Operacao + 'com sucesso'), 'Informa��o', MB_OK+MB_ICONEXCLAMATION);

      // chama o form de recibo
      if Application.MessageBox('Deseja Imprimir Recibo?', 'Recibo', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         frmFn15_2 := TfrmFn15_2.Create(Self);
         frmFn15_2.ShowModal;
         frmFn15_2.Release;
         frmFn15_2 := nil;
      end;
   end;

   if Cheque_Pagar = 'S' then
   begin
      if Application.MessageBox('Deseja Imprimir Cheque ?', 'Cheque', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         //
      end;
   end;

   LimpaDataSet; // procedure

   edtFornecedor.SetFocus;
end;

procedure TfrmFn0102.ProcessoGravar;
Var
  ConLan1,
  CodPar1,
  Principal,
  Juros,
  Juros_Desconto,
  DataSystem2,
  Sql1: String;
  Debito_Resban,
  Retiradas_Caixa : Double;

begin
   Debito_Resban   := 0;
   Retiradas_Caixa := 0;
   ConLan1         := '';
   CodPar1         := '';
   Principal       := '';
   Juros           := '';
   Juros_Desconto  := '';
   Sql1            := '';
   DataSystem2     := DateToStr(DataSystem1);

   if (NumeroCaixa1 = '') and (edtCorrenteCaixa.Text = '999') then
   begin
      Application.MessageBox('Nenhum caixa foi encontrado', 'Informa��o',MB_OK+MB_ICONEXCLAMATION);
      edtCorrenteCaixa.SetFocus;
      Abort;
   end;

   with dmFn0102 do
   begin
      if cdsPagar.State in [dsInsert, dsEdit] then
      begin
         cdsPagarDOCUMENTO_PAGAR.AsString := edtCodigo.Text;

         cdsPagarTIPO_PAGAR.AsInteger := 1;

         if edtPrincipal.Value <> 0 then
            cdsPagarVALORPAGO_PAGAR.AsString := edtPrincipal.Value;

         GravaLogUser(Self,'Baixou contas a pagar, com o documento N� '+ edtCodigo.Text +
                     'Tipo de baixa '+ ComboBox1.Text);

         if ComboBox1.ItemIndex = 1 then
            HIS2 := 'Baixa parcial'
         else
            HIS2 := 'Baixa total';

         if edtValorPago.Value > ValorPrincipal then
            HIS2 := HIS2 + ' - inclusive juros';

         if (ComboBox1.ItemIndex = 0) and (edtValorPago.Value < ValorPrincipal) then
            HIS2 := HIS2 + ' - liquidado com desconto';

         if edtValorPago.Value >= ValorPrincipal then
         begin
             HIS2 := HIS2 + ' - liquida��o final';
             Tipo_De_Baixa := True;
         end;

         HIS2 := HIS2 + ' - ' + DBText2.Field.AsString;

         ConLan1 := IntToStr(Busca_Proximo('P_CONLAN', 'CODIGO_CONLAN'));

         // atualiza tabela de conta corrente / caixa

         cdsContaCorrente.Close;
         cdsContaCorrente.Params.ParamByName('CHAVE').AsString := (edtDataFluxoCaixa.Field.AsString + '-' + StrZero(edtCorrenteCaixa.Text, 3));
         cdsContaCorrente.Open;

         if cdsContaCorrente.IsEmpty then
         begin
            cdsContaCorrente.Append;

            cdsContaCorrenteBANCO_RESBAN.AsString  := edtCorrenteCaixa.Text;
            cdsContaCorrenteCHAVE_RESBAN.AsString  := (edtDataFluxoCaixa.Field.AsString + '-' + StrZero(edtCorrenteCaixa.Text, 3));
            cdsContaCorrenteDEBITO_RESBAN.AsString := edtValorPago.Value;
            cdsContaCorrenteCOD_EMPRESA.AsString   := CodigoEmpresa1;

            cdsContaCorrente.Post;
         end
         else
         begin
            Debito_Resban := (edtValorPago.Value + cdsContaCorrenteDEBITO_RESBAN.AsFloat);

            cdsContaCorrente.Edit;

            cdsContaCorrenteDEBITO_RESBAN.AsFloat := Debito_Resban;

            cdsContaCorrente.Post;
         end;

         cdsContaCorrente.ApplyUpdates(0);

         // atualiza tabela de lan�amento

         cdsLancamento.Open;

         cdsLancamento.Append;

         cdsLancamentoCODIGO_CONLAN.AsString      := ConLan1;
         cdsLancamentoCORRENTE_CONLAN.AsString    := edtCorrenteCaixa.Field.AsString;
         cdsLancamentoCONTA_CONLAN.AsString       := edtConta.Field.AsString;
         cdsLancamentoCENTRO_CONLAN.AsString      := edtCentroCusto.Field.AsString;
         cdsLancamentoCLI_FOR_CONLAN.AsString     := edtFornecedor.Field.AsString;
         cdsLancamentoTIPO_C_F_CONLAN.AsString    := 'F';
         cdsLancamentoDOCUMENTO_CONLAN.AsString   := edtCodigo.Text;
         cdsLancamentoDATA_CONLAN.AsDateTime      := edtDataFluxoCaixa.Field.AsDateTime;
         cdsLancamentoMOVIMENTO_CONLAN.AsDateTime := edtDataFluxoCaixa.Field.AsDateTime;
         cdsLancamentoHISTORICO_CONLAN.AsString   := DBMemo1.Field.AsVariant;
         cdsLancamentoHISTORIC2_CONLAN.AsString   := HIS2;
         cdsLancamentoVALOR_CONLAN.AsFloat        := edtValorPago.Value;
         cdsLancamentoTIPO_CONLAN.AsString        := 'D';
         cdsLancamentoORIGEM_CONLAN.AsString      := 'P';
         cdsLancamentoCOD_EMPRESA.AsString        := CodigoEmpresa1;

         cdsLancamento.Post;

         cdsLancamento.ApplyUpdates(0);


         if edtCorrenteCaixa.Text = '999' then
         begin
            // atualiza tabela de movimentacao de caixa

            // busca a chave do caixa

            sqqConsulta.Close;
            sqqConsulta.SQL.Clear;
            sqqConsulta.SQL.Add(' SELECT * FROM P_CAIXA WHERE SUBSTRING(chave_caixa from 12 for 10) = '''' ' +
                                ' AND CODIGO_CAIXA = ' + NumeroCaixa1);

            sqqConsulta.Open;

            if sqqConsulta.IsEmpty then
               Application.MessageBox(pChar('Caixa: ' + StrZero(NumeroCaixa1, 2) + ' n�o foi localizado'), 'Informa��o', MB_OK+MB_ICONEXCLAMATION);

            cdsCai_Mov.Open;

            cdsCai_Mov.Append;

            cdsCai_MovCOD_EMPRESA.AsString         := CodigoEmpresa1;
            cdsCai_MovDATA_CAIXAMOV.AsDateTime     := edtDataFluxoCaixa.Field.AsDateTime;
            cdsCai_MovVALOR_CAIXAMOV.AsFloat       := edtValorPago.Value;
            cdsCai_MovHORA_CAIXAMOV.AsString       := TimeToStr(Time);
            cdsCai_MovOBSERVACAO_CAIXAMOV.AsString := DBMemo1.Field.AsVariant;
            cdsCai_MovCHAVE_CAIXAMOV.AsString      := copy(sqqConsulta.FieldByName('CHAVE_CAIXA').AsString, 1, 10); // (edtDataFluxoCaixa.Field.AsString + '-' + NumeroCaixa1);
            cdsCai_MovCAIXA_CAIXAMOV.AsString      := NumeroCaixa1;
            cdsCai_MovUSUARIO_CAIXAMOV.AsString    := xUsuario;
            cdsCai_MovTIPO_CAIXAMOV.AsString       := 'R';
            cdsCai_MovORIGEM_CAIXAMOV.AsString     := 'O';
            Case cbxFormaPgto.ItemIndex of
               0: cdsCai_MovTIPO_PAG_CAIXAMOV.AsString   := 'D';
               1: cdsCai_MovTIPO_PAG_CAIXAMOV.AsString   := 'C';
               2: cdsCai_MovTIPO_PAG_CAIXAMOV.AsString   := 'O';
            end;
            cdsCai_MovTITULO_CAIXAMOV.AsString     := edtCodigo.Text;

            cdsCai_Mov.Post;

            cdsCai_Mov.ApplyUpdates(0);


            // atualiza tabela de caixa

            cdsCaixa.Close;
            cdsCaixa.Params.ParamByName('CAIXA').AsString := NumeroCaixa1;
            cdsCaixa.Open;

            if cdsCaixa.IsEmpty then
            begin
               Application.MessageBox(pChar('Caixa: ' + StrZero(NumeroCaixa1, 2) + ' n�o foi localizado'), 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            end
            else
            begin
               Retiradas_Caixa := cdsCaixaRETIRADAS_CAIXA.AsFloat;

               cdsCaixa.Edit;

               cdsCaixaRETIRADAS_CAIXA.AsFloat := edtValorPago.Value + Retiradas_Caixa;

               cdsCaixa.Post;

               cdsCaixa.ApplyUpdates(0);
            end;
         end;

         CodPar1 := IntToStr(Busca_Proximo( 'P_PARCIAL', 'CODIGO_PARCIAL'));

         if ComboBox1.ItemIndex = 0 then // baixa Total
         begin
            // quita��o do ultimo valor parcial caso aja algum

            cdsParcial.Close;
            cdsParcial.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
            cdsParcial.Open;

            if not cdsParcial.IsEmpty then
            begin
               cdsParcial.Append;

               cdsParcialCODIGO_PARCIAL.AsString    := CodPar1;
               cdsParcialDUPLICATA_PARCIAL.AsString := edtCodigo.Text;

               if (ValorParcial + edtValorPago.Value) <= cdsPagarVALOR_PAGAR.AsFloat then
                  cdsParcialVALOR_PARCIAL.AsFloat   := (ValorParcial + edtValorPago.Value)
               else
                  cdsParcialVALOR_PARCIAL.AsFloat   := cdsPagarVALOR_PAGAR.AsFloat; //ValorPrincipal; // valor do d�bito antes do juro

               cdsParcialJUROS_PARCIAL.AsFloat      := edtJurosDesconto.Value;
               cdsParcialDATA_PARCIAL.AsDateTime    := edtDataFluxoCaixa.Field.AsDateTime;
               cdsParcialTIPO_PARCIAL.AsString      := 'P';

               cdsParcial.Post;

               cdsParcial.ApplyUpdates(0);
            end;
         end
         else
         begin
            // atualiza tabela de baixa parcial

            cdsParcial.Close;
            cdsParcial.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
            cdsParcial.Open;

            cdsParcial.Append;

            cdsParcialCODIGO_PARCIAL.AsString    := CodPar1;
            cdsParcialDUPLICATA_PARCIAL.AsString := edtCodigo.Text;
            cdsParcialVALOR_PARCIAL.AsFloat      := edtPrincipal.Value;
            cdsParcialJUROS_PARCIAL.AsFloat      := edtJuros.Value;
            cdsParcialDATA_PARCIAL.AsDateTime    := edtDataFluxoCaixa.Field.AsDateTime;
            cdsParcialTIPO_PARCIAL.AsString      := 'P';

            cdsParcial.Post;

            cdsParcial.ApplyUpdates(0);
         end;
      end;
   end;
end;


function TfrmFn0102.Trata_edtCodigo(const Texto: String): String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['A'..'Z', 'a'..'z', '0'..'9', '-']) then
      begin
         S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;

end;

procedure TfrmFn0102.edtCodigoExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtFornecedor.Focused then
      Exit;
      
   // remove acentua��o e pontua��o
   edtCodigo.Text := Trata_edtCodigo(edtCodigo.Text);

   if not Cheka(03) then
   begin
      edtCodigo.SetFocus; // joga o foco no codigo do fornecedor
      Abort;
   end
   else
      RetornaBaixa; // procedure
      
end;

procedure TfrmFn0102.RetornaBaixa;
begin
   Juros1           := 0;
   Dias_Atrazo      := 0;
   ValorPrincipal   := 0;
   ValorPago        := 0;
   Mora_Diaria      := 0;
   Multa            := 0;
   Vencimento_Pagar := 0;
   Testa_ValorPago  := 0;
   cheka_Multa_Mora := False;
   Tipo_De_Baixa    := False;

   // se existir o resgistro passado como parametro no caso o DOCUMENTO e
   // EMPRESA o dataset retorna os valores que est�o setados
   if edtCodigo.Text <> '' then
   begin
      dmFn0102.cdsPagar.Close;
      dmFn0102.cdsPagar.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
      dmFn0102.cdsPagar.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0102.cdsPagar.Open;

      if dmFn0102.cdsPagar.RecordCount > 0 then
         dmFn0102.cdsPagar.Edit;

      edtDataFluxoCaixa.Field.AsString := DateToStr(DataSystem1);

      ValorPago := dmFn0102.cdsPagarVALORPAGO_PAGAR.AsFloat;

      edtValorPago.Value := (dmFn0102.cdsPagarVALOR_PAGAR.AsFloat - ValorParcial);

      ValorPrincipal := (dmFn0102.cdsPagarVALOR_PAGAR.AsFloat - ValorParcial);

      edtValorPrincipal.Value := ValorPrincipal;

      Mora_Diaria := dmFn0102.cdsPagarMORA_DIA_PAGAR.AsFloat;

      if dmFn0102.cdsPagarHISTORICO_PAGAR.AsString = '' then
         dmFn0102.cdsPagarHISTORICO_PAGAR.AsString := 'Pagamento do t�tulo: ' + edtCodigo.Text;

      edtMoraDiaria.Value := Mora_Diaria;

      Multa :=  dmFn0102.cdsPagarMULTA_PAGAR.AsFloat;

      edtMulta.Value := Multa;

      edtValorTotal.Value := ValorPrincipal;

      if (Multa <> 0) or (Mora_Diaria <> 0) then
         cheka_Multa_Mora := True;

      Vencimento_Pagar := dmFn0102.cdsPagarVENCIMENTO_PAGAR.AsDateTime;

      // Calcula multa e mora di�ria

      if DataSystem1 > Vencimento_Pagar then
      begin
         Dias_Atrazo := (DataSystem1 - Vencimento_Pagar);

         if Multa <> 0 then
         begin
            Juros1 := ArredondarDecimal((ValorPrincipal * Multa) / 100, 2);

            edtValorTotal.Value := (ValorPrincipal + Juros1);
         end;

         if Mora_Diaria <> 0 then
            edtValorTotal.Value := ((edtValorTotal.Value) + (Dias_Atrazo * Mora_Diaria));

      end;

      edtValorPago.Value := edtValorTotal.Value;

      Testa_ValorPago := edtValorTotal.Value;

      ComboBox1.ItemIndex := 0;

      edtConta.SetFocus;
   end;
end;


procedure TfrmFn0102.LimpaDataSet;
begin
   edtCodigo.Text := '';

   cbxFormaPgto.ItemIndex := -1;

   ComboBox1.ItemIndex := -1;

   edtPrincipal.EditText := '';

   edtJuros.EditText := '';

   edtMoraDiaria.EditText := '';

   edtMulta.EditText := '';

   edtValorPrincipal.EditText := '';

   edtValorTotal.EditText := '';

   edtValorPago.EditText := '';

   edtFornecedor.Enabled := True;

   if dmFn0102.cdsPagar.RecordCount > 0 then
   begin
      dmFn0102.cdsPagar.EmptyDataSet;
      dmFn0102.cdsPagar.Append;
   end;

end;

procedure TfrmFn0102.edtDataFluxoCaixaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if Application.MessageBox('Confirma baixa?', 'Confirma��o', MB_YESNO+MB_ICONQUESTION) = mrYes then
         btnGravar.Click;
   end;
end;

procedure TfrmFn0102.DBMemo1Exit(Sender: TObject);
begin
   HIS1 := DBMemo1.Text;
end;

procedure TfrmFn0102.edtMultaExit(Sender: TObject);
begin
   if cheka_Multa_Mora = True then
   begin
      edtMoraDiaria.ReadOnly     := True;
      edtMulta.ReadOnly          := True;
      edtValorPrincipal.ReadOnly := True;
      edtValorTotal.ReadOnly     := True;
      Exit;
   end
   else
   begin
      edtMoraDiaria.ReadOnly     := False;
      edtMulta.ReadOnly          := False;
      edtValorPrincipal.ReadOnly := False;
      edtValorTotal.ReadOnly     := False;
   end;

   // Calcula multa

   Multa := edtMulta.Value;

   if DataSystem1 > Vencimento_Pagar then
   begin
      if Multa <> 0 then
         edtValorTotal.Value := ((ValorPrincipal * Multa)/ 100);
   end;
end;

procedure TfrmFn0102.edtMoraDiariaExit(Sender: TObject);
begin
  if cheka_Multa_Mora = True then
   begin
      edtMoraDiaria.ReadOnly     := True;
      edtMulta.ReadOnly          := True;
      edtValorPrincipal.ReadOnly := True;
      edtValorTotal.ReadOnly     := True;
      Exit;
   end
   else
   begin
      edtMoraDiaria.ReadOnly     := False;
      edtMulta.ReadOnly          := False;
      edtValorPrincipal.ReadOnly := False;
      edtValorTotal.ReadOnly     := False;
   end;

   // calcula mora di�ria

   Mora_Diaria := edtMoraDiaria.Value;

   if DataSystem1 > Vencimento_Pagar then
   begin
      if Mora_Diaria <> 0 then
         edtValorTotal.Value := ((edtValorTotal.Value) + (Dias_Atrazo * Mora_Diaria));
   end;
end;

procedure TfrmFn0102.DBEdit10Exit(Sender: TObject);
begin
  if edtValorPago.Value < ValorPrincipal then
     ComboBox1.ItemIndex := 1; // baixa parcial
end;

procedure TfrmFn0102.edtPrincipalExit(Sender: TObject);
Var
  Valor_Pago2 : Real;
begin
   Valor_Pago2 := 0;

   Valor_Pago2 := edtValorPago.Value;

   // se a baixa for parcial
   if edtPrincipal.Value > edtValorPago.Value then
   begin
      Application.MessageBox('Principal n�o pode ser maior que valor pago', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtPrincipal.Value := Valor_Pago2;
      Exit;
   end;

   if edtPrincipal.Value < Confere_ValorPago then
      edtJuros.Value := (Confere_ValorPago - edtPrincipal.Value);

   if edtJuros.Value < 0 then
   begin
      Application.MessageBox('Valor incorreto', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      Abort;
   end;
end;

procedure TfrmFn0102.edtMultaEnter(Sender: TObject);
begin
   if cheka_Multa_Mora = True then
   begin
      edtMoraDiaria.ReadOnly     := True;
      edtMulta.ReadOnly          := True;
      edtValorPrincipal.ReadOnly := True;
      edtValorTotal.ReadOnly     := True;
      Exit;
   end
   else
   begin
      edtMoraDiaria.ReadOnly     := False;
      edtMulta.ReadOnly          := False;
      edtValorPrincipal.ReadOnly := False;
      edtValorTotal.ReadOnly     := False;
   end;
end;

procedure TfrmFn0102.edtDataPagamentoExit(Sender: TObject);
begin
   Cheka(22);
end;

procedure TfrmFn0102.edtValorPagoExit(Sender: TObject);
begin
   if edtValorPago.Value > Testa_ValorPago then
   begin
      Application.MessageBox('Valor inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtValorPago.SetFocus;
      Exit;    
   end;

   if (cheka_Multa_Mora = True) and (Dias_Atrazo > 0) then
   begin
      if edtValorPago.Value <= Testa_ValorPago then
      begin
         if not Verifica_acesso(307) then
         begin
            Application.MessageBox('Usu�rio n�o tem permiss�o de pagar'+ #13 + 't�tulo em atrazo com desconto', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edtValorPago.Value := Testa_ValorPago;
            Exit;
         end
         else
            edtJurosDesconto.Value := (edtValorPago.Value - Testa_ValorPago);
      end;
   end
   else
   begin
      if edtValorPago.Value <= Testa_ValorPago then
      begin
         edtJurosDesconto.Value := (edtValorPago.Value - Testa_ValorPago);
      end;
   end;

   edtValorPago.Enabled     := False;
   edtJurosDesconto.Enabled := False;
   ComboBox1.SetFocus;
end;

procedure TfrmFn0102.edtDataFluxoCaixaEnter(Sender: TObject);
begin
   if not Verifica_acesso(281) then // Parametro do sistema
      edtDataFluxoCaixa.ReadOnly := True
   else
      edtDataFluxoCaixa.ReadOnly := False;
end;

procedure TfrmFn0102.edtDataFluxoCaixaExit(Sender: TObject);
begin
   if not btnGravar.Focused then
      btnGravar.SetFocus;
end;

procedure TfrmFn0102.FormCreate(Sender: TObject);
begin
   dmFn0102 := TdmFn0102.Create(Self);
end;

procedure TfrmFn0102.edtFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 117 then
      SpeedButton1.Click;

   if Key = 13 then
   begin
      if edtFornecedor.Text <> '' then
      begin
         if Cheka(01) then
         begin
            if not Cheka(02) then
            begin
               edtFornecedor.SetFocus;
               Exit;
            end;
         end
         else
         begin
            edtFornecedor.SetFocus;
            Exit;
         end;

         frmCtrlF11 := TfrmCtrlF11.Create(Self); // Chama consulta de t�tulos de fornecedores
         frmCtrlF11.ShowModal;

         edtCodigo.Text := dmFn0102.cdsGridDOCUMENTO_PAGAR.AsString;

         dmFn0102.cdsPesquisa1.Close;

         edtCodigo.SetFocus;

         frmCtrlF11.Release;
         frmCtrlF11 := nil;
      end
      else
         edtCodigo.SetFocus;
   end;
end;

procedure TfrmFn0102.edtFornecedorEnter(Sender: TObject);
Var A : String;
begin
   if btnSair.Focused then
      Exit;
end;

procedure TfrmFn0102.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      DBMemo1.SelStart := 0;
end;

procedure TfrmFn0102.cbxFormaPgtoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [D] � Dinheiro ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [C] � Cheque ';
   StatusBar1.Panels[1].Width := 100;

   StatusBar1.Panels[2].Text := ' [T] � Cart�o ';
   StatusBar1.Panels[2].Width := 100;

   StatusBar1.Panels[3].Text := ' [O] � Outra ';
   StatusBar1.Panels[3].Width := 1000;
end;

procedure TfrmFn0102.cbxFormaPgtoExit(Sender: TObject);
begin
   if edtCodigo.Focused then
      Exit;

   if btnSair.Focused then
      Exit;

   if cbxFormaPgto.ItemIndex = -1 then
      cbxFormaPgto.Text := '';

   if not Cheka(08) then
   begin
      cbxFormaPgto.SetFocus;
      Abort;
   end;
end;

procedure TfrmFn0102.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
