{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN018)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 28/03/2007
 FINALIDADE           --> Baixar Contas a Receber
 COMENTARIO           --> a procedure Baxa_titulos realiza a baixa de vários titulos
                          simultaneamente, uma inovação em relação ao sistema em Clipper

 *******************************************************************************}

unit uFn0202;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Mask, JvExMask,
  JvToolEdit, JvDBControls, JvExStdCtrls, JvDBCombobox, DBCtrls, DB,
  Math, StrUtils, SqlExpr, FMTBcd, JvEdit, JvValidateEdit, DBClient,
  Provider, Grids, DBGrids;

type
  TfrmFn0202 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
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
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edtDataEmissao: TJvDBDateEdit;
    edtDataVencimento: TJvDBDateEdit;
    edtDataPrevisao: TJvDBDateEdit;
    edtValorSaldo: TDBEdit;
    edtCliente: TDBEdit;
    edtPortador: TDBEdit;
    edtConta: TDBEdit;
    edtCentro: TDBEdit;
    edtContaCorrente: TDBEdit;
    edtDataRecebimento: TJvDBDateEdit;
    Label19: TLabel;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DataSource1: TDataSource;
    Label20: TLabel;
    cbxTipoBaixa: TComboBox;
    edtTaxaDeJuro: TJvValidateEdit;
    edtPrincipal1: TJvValidateEdit;
    edtJuro: TJvValidateEdit;
    edtDifDia: TJvValidateEdit;
    edtValorPago: TJvValidateEdit;
    edtJurosDesconto: TJvValidateEdit;
    DBMemo1: TMemo;
    edtDataBase: TJvDBDateEdit;
    Label22: TLabel;
    cbxFormaPgto: TComboBox;
    Label21: TLabel;
    edtDataFluxoCaixa: TJvDateEdit;
    Label1: TLabel;
    edtCodigo: TEdit;
    DBText6: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label25: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure edtClienteEnter(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPortadorEnter(Sender: TObject);
    procedure edtPortadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo1Enter(Sender: TObject);
    procedure edtContaEnter(Sender: TObject);
    procedure edtContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCentroEnter(Sender: TObject);
    procedure edtCentroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtContaCorrenteEnter(Sender: TObject);
    procedure edtContaCorrenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDataRecebimentoEnter(Sender: TObject);
    procedure edtValorPagoExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtPrincipal1Exit(Sender: TObject);
    procedure edtPrincipal1Enter(Sender: TObject);
    procedure edtTaxaDeJuroExit(Sender: TObject);
    procedure edtDifDiaEnter(Sender: TObject);
    procedure cbxTipoBaixaExit(Sender: TObject);
    procedure edtDataFluxoCaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDataFluxoCaixaExit(Sender: TObject);
    procedure edtDataFluxoCaixaEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtValorPagoEnter(Sender: TObject);
    procedure edtDataBaseEnter(Sender: TObject);
    procedure cbxFormaPgtoEnter(Sender: TObject);
    procedure cbxFormaPgtoExit(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataBaseExit(Sender: TObject);
    procedure edtContaCorrenteExit(Sender: TObject);
  private
    { Private declarations }
    function Cheka(Campo : Integer) : Boolean;
    procedure LimpaStatusBar;
    procedure ProcessoGravar;
    function Subtracao_Variaveis(Variavel1 , Variavel2 : Double) : Double;
    procedure Baixa_Titulos;
    procedure Desabilita_Tela;
    procedure Habilita_Tela;
  public
    { Public declarations }
    Comissao,
    Percentual_de_Comissao,
    Taxa_de_Juros,
    Juros_Minimo,
    Confere_Juro_Minimo,
    Tipo_de_Juro,
    Total_Cheque,
    Bloqueia_Cliente_Auto,
    Caixa_Rel,
    Recibo,
    Historico1,
    Portador, Conta, Centro,
    ContaCorrente,
    ContaCorrente_P_Relat,
    DiasPara_Bloqueio_Auto : String;
    Juros1,
    Dias_em_Atrazo,
    Valor_Parcial1,
    Pago_Parcial,
    Juros_Parcial1,
    Saldo_mais_Juros,
    Valor_Pago_Inicio,
    Parcial_Inicio,
    Valor_Pago,
    ValorPago_na_Baixa_de_Titulos,
    Perce_Desc_na_Baixa_de_Titulos,
    Desconto,
    Dif_ValorPago,
    Dif_ValorPago_P_Relat,
    Valor_Recibo_Relat,
    Valor_Pago_Relat,
    Valor_Pago_Ini_Relat,
    Juros_Parcial_P_Relat,
    Tolerancia_dias_Juros,
    Principal_Enter,
    Valor_Pago_Enter,
    Valor_Pago_Fim : Double;
    Focu1 : Integer;
    Baixa_Varios_Titulos : Boolean;
    Data_Fluxo_Caixa : TDateTime;
    Historico_P_Relatorio3,
    Historico_P_Relatorio : AnsiString;
  end;

var
  frmFn0202: TfrmFn0202;

implementation

uses uGlobal, uFn0201_01, uCd06, uAltF6,
  uAltF10, uAltF9, uAltF7, uFn0202_01, uAltF5, uDmPrincipal, uFn0202_02,
  uFn15_4, udmFn0202, uConsulta, uProcess;

{$R *.dfm}

procedure TfrmFn0202.FormShow(Sender: TObject);
Var
  FSQLQUERY : TSQLQUERY;
  Sql1 : AnsiString;
begin
   Desconto               := 0;
   Portador               := '';
   Conta                  := '';
   Centro                 := '';
   ContaCorrente          := '';
   Percentual_de_Comissao := ''; // parâmetros da rotina de baixa de contas a receber
   Comissao               := '';
   Taxa_de_Juros          := '';
   Juros_Minimo           := '';
   Confere_Juro_Minimo    := '';
   Tolerancia_dias_Juros  := 0;
   Tipo_de_Juro           := '';
   Total_Cheque           := '';
   Bloqueia_Cliente_Auto  := '';
   Caixa_Rel              := '';
   Recibo                 := '';
   DiasPara_Bloqueio_Auto := '';
   Historico1             := '';
   Dias_em_Atrazo         := 0;
   Valor_Pago             := 0;
   Focu1                  := 0;
   Baixa_Varios_Titulos   := False;

   {if not Verifica_acesso(283) then
      edtDataFluxo.ReadOnly := True
   else
      edtDataFluxo.ReadOnly := False; }

   // Carrega parâmetros

   FSQLQUERY := TSQLQuery.Create(Application);
   try
    FSQLQUERY.SQLConnection := DmPrincipal.DbConexao;
    FSQLQUERY.Close;
    FSQLQUERY.SQL.Clear;
    FSQLQUERY.SQL.Add('SELECT * FROM EMPRESA WHERE CODIGO_EMP = ' + CodigoEmpresa1);
    FSQLQUERY.Open;

    if not FSQLQUERY.IsEmpty then
    begin
       //Comissao               := FSQLQUERY.FieldByName('COMISS_REC_EMP').AsString;

       //Percentual_de_Comissao := FSQLQUERY.FieldByName('PORCEN_REC_EMP').AsString;

       // Bloqueia_Cliente_Auto  := FSQLQUERY.FieldByName('BLOQ_CLI_EMP').AsString;

       Taxa_de_Juros          := FSQLQUERY.FieldByName('JUROS_EMP').AsString;

       Juros_Minimo           := FSQLQUERY.FieldByName('JURO_MIN_EMP').AsString;

       Tolerancia_dias_Juros  := FSQLQUERY.FieldByName('DIAS_BLOQ_EMP').AsFloat;

       Tipo_de_Juro           := FSQLQUERY.FieldByName('TIPO_JUR_EMP').AsString;

       DiasPara_Bloqueio_Auto := FSQLQUERY.FieldByName('BLOQUEIO_EMP').AsString;

       Total_Cheque           := FSQLQUERY.FieldByName('TOT_CHEQ_EMP').AsString;

       Caixa_Rel              := FSQLQUERY.FieldByName('REL_CAIXA_EMP').AsString;

       Recibo                 := FSQLQUERY.FieldByName('RECIBO_REC_EMP').AsString;
    end;

    finally
     FreeAndNil(FSQLQUERY);
   end;


   dmFn0202.cdsReceber.Close;
   dmFn0202.cdsReceber.Params.ParamByName('DUPLICATA').AsInteger := 0;
   dmFn0202.cdsReceber.Params.ParamByName('EMPRESA').AsInteger := 0;
   dmFn0202.cdsReceber.Open;

   if (not(dmFn0202.cdsReceber.State = dsInsert)) then
      dmFn0202.cdsReceber.Append;

   edtDataFluxoCaixa.Text := DateToStr(DataSystem1);

   edtDataFluxoCaixa.SetFocus;
end;

procedure TfrmFn0202.DataSource1DataChange(Sender: TObject; Field: TField);
Var Sair_Cancelar : Boolean;
begin
   Sair_Cancelar := False;

   if (dmFn0202.cdsReceber.Active) and (dmFn0202.cdsReceber.RecordCount > 0) then
      Sair_Cancelar := True
   else
      Sair_Cancelar := False;

   btnGravar.Enabled := (dmFn0202.cdsReceber.Active) and
                        (dmFn0202.cdsReceber.State in [dsInsert, dsEdit]);

   edtCodigo.ReadOnly := (dmFn0202.cdsReceber.Active) and
                         (dmFn0202.cdsReceber.State in [dsEdit]);

   edtDataEmissao.ReadOnly := edtCodigo.ReadOnly;

   edtDataVencimento.ReadOnly := edtCodigo.ReadOnly;

   edtDataPrevisao.ReadOnly := edtCodigo.ReadOnly;

   edtValorSaldo.ReadOnly := edtCodigo.ReadOnly;

   edtCliente.ReadOnly := edtCodigo.ReadOnly;

   btnSair.Caption := IfThen(Sair_Cancelar, '&Cancelar', '&Sair');
end;

function TfrmFn0202.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   if dmFn0202.cdsReceber.State in [dsInsert, dsEdit] then
   begin
      Case Campo of
         01:
         begin
            if not RetornaCliente(edtCliente, DBText1) then
               Result := False;
         end;

         02:
         begin
            if not RetornaPortador(edtPortador, DBText2) then
               Result := False;
         end;

         03:
         begin
            if not RetornaContaReceber(edtConta, DBText3) then
               Result := False;
         end;

         04:
         begin
            if not RetornaCentroCusto(edtCentro, DBText4) then
               Result := False;
         end;

         05:
         begin
            if not RetornaContaCorrenteCaixa(edtContaCorrente, DBText5) then
               Result := False;
         end;

         06:
         begin
            if not RetornaReceber(edtCliente, DBText1) then
               Result := False;
         end;

         07:
         begin
            if Tolerancia_dias_Juros <> 0 then
            begin
               if Taxa_de_Juros <> '' then
               begin
                  if Juros_Minimo <> '' then
                  begin
                     if Juros1 < StrToFloat(Juros_Minimo) then
                     begin
                        if (Data_Fluxo_Caixa - dmFn0202.cdsReciboVENCIMENTO_RECIBO.AsDateTime) > Tolerancia_dias_Juros then
                        begin
                           if not Verifica_acesso(307) then
                           begin
                              Application.MessageBox('Recebimento com juros inferior', 'Informação', MB_OK+MB_ICONEXCLAMATION);
                              Result := False;
                           end;
                        end;
                     end;
                  end;
               end;
            end;
         end;
         
         08:
         begin
            if edtCodigo.Text = '' then
            begin
               Application.MessageBox('Informe o Número do documento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
               Result := False;
            end;
         end;

         09:
         begin
            if edtCliente.Text = '' then
            begin
               Application.MessageBox('Informe o Código da conta corrente', 'Informação', MB_OK+MB_ICONEXCLAMATION);
               Result := False;
            end;
         end;
      end;
   end;
end;

procedure TfrmFn0202.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;

   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);
      
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn0202.btnSairClick(Sender: TObject);
begin
   if btnSair.Caption = '&Cancelar' then
   begin
      dmFn0202.cdsReceber.Cancel;

      edtTaxaDeJuro.ReadOnly := False;

      edtTaxaDeJuro.EditText := '';

      edtDifDia.EditText := '';

      cbxTipoBaixa.ItemIndex := -1;

      edtPrincipal1.EditText := '';

      edtJuro.EditText := '';

      edtJurosDesconto.EditText := '';

      edtValorPago.EditText := '';

      DBMemo1.Clear;

      cbxFormaPgto.ItemIndex := -1;

      edtTaxaDeJuro.Enabled    := True;
      edtDifDia.Enabled        := True;
      edtJurosDesconto.Enabled := True;
      edtValorPago.Enabled     := True;
      edtPrincipal1.Enabled    := True;
      cbxTipoBaixa.Enabled     := True;

      edtCodigo.Clear;

      if dmFn0202.cdsReceber.RecordCount > 0 then
      begin
         dmFn0202.cdsReceber.EmptyDataSet;

         edtCliente.SetFocus;
      end;
   end
   else
   begin
      Close;
   end;
end;

procedure TfrmFn0202.SpeedButton1Click(Sender: TObject);
begin
   edtCliente.SetFocus;

   ConsultaCliente(edtCliente);
end;

procedure TfrmFn0202.SpeedButton2Click(Sender: TObject);
begin
   if not Verifica_acesso(38) then
   exit;

   edtPortador.SetFocus;

   ConsultaPortador(edtPortador);
end;

procedure TfrmFn0202.SpeedButton3Click(Sender: TObject);
begin
   if not Verifica_acesso(41) then
   exit;

   edtConta.SetFocus;

   ConsultaConta(edtConta);
end;

procedure TfrmFn0202.SpeedButton4Click(Sender: TObject);
begin
   if not Verifica_acesso(37) then
   exit;

   edtCentro.SetFocus;

   ConsultaCentroCusto(edtCentro);
end;

procedure TfrmFn0202.SpeedButton5Click(Sender: TObject);
begin
   if not Verifica_acesso(42) then
   exit;

   edtContaCorrente.SetFocus;

   ConsultaContaBanco(edtContaCorrente);
end;

procedure TfrmFn0202.LimpaStatusBar;
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

procedure TfrmFn0202.edtClienteEnter(Sender: TObject);
begin
   if (not (dmFn0202.cdsReceber.State in [dsInsert, dsEdit])) then
      dmFn0202.cdsReceber.Append;

   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Cliente ';
   StatusBar1.Panels[0].Width := 200;

   StatusBar1.Panels[1].Text := ' [F7] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0202.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de cliente
   if Key = 118 then
      SpeedButton1.Click;

   if Key = 13 then
   begin
      if edtCliente.Text = '' then
      begin
         edtCodigo.SetFocus;
         Exit;
      end
      else
      begin
         if not Cheka(01) then // verifica se o cliente está cadastrado
         begin
            edtCliente.SetFocus;
            Exit;
         end
         else
           if not Cheka(06) then // verifica se há lançamento para este cliente
           begin
              edtCliente.SetFocus;
              Exit;
           end
           else
           begin
              // chama a tela de consulta de Títulos a Receber
              frmFn0202_01 := TfrmFn0202_01.Create(Application);
              frmFn0202_01.ShowModal;

              Baixa_Varios_Titulos := frmFn0202_01.BaixaTitulos;

              if not frmFn0202_01.BaixaTitulos then
                 edtCodigo.Text := dmFn0202.cdsGridDUPLICATA.AsString;

              //dmFn0202.cdsGrid.Close;

              frmFn0202_01.Release;
              frmFn0202_01 := nil;

              edtCodigo.SetFocus;
           end;
      end;
   end;
end;

procedure TfrmFn0202.edtCodigoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Nº do Título ou do Bloquete Bancário ';
   StatusBar1.Panels[0].Width := 230;

   StatusBar1.Panels[1].Text := ' [Alt+F5] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0202.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // consulta vencimentos
   if (Shift = [ssAlt]) and (Key = 116) then
   begin
      ConsultaContasReceber(edtCodigo);

      edtCodigo.SetFocus;
   end;
end;

procedure TfrmFn0202.edtPortadorEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Portador ';
   StatusBar1.Panels[0].Width := 200;

   StatusBar1.Panels[1].Text := ' [Alt+F6] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0202.edtPortadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de portador
   if (Shift = [ssAlt]) and (Key = 117) then
      SpeedButton2.Click;

   if Key = 13 then
   begin
      Portador := '';
      
      if dmFn0202.cdsReceber.State in [dsInsert, dsEdit] then
      begin
         if edtPortador.Text = '' then
         begin
            DBText2.Field.AsString := '';
            Exit;
         end
         else
         begin
            if not Cheka(02) then
               edtCentro.SetFocus;
         end;
      end;

      if Baixa_Varios_Titulos = True then
         Portador := edtPortador.Text;
   end;
end;

procedure TfrmFn0202.DBMemo1Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [F2] » Geral ';
   StatusBar1.Panels[1].Width := 100;

   StatusBar1.Panels[2].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn0202.edtContaEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código da Conta ';
   StatusBar1.Panels[0].Width := 160;

   StatusBar1.Panels[1].Text := ' [AltF+10] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0202.edtContaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de Conta
   if (Shift = [ssAlt]) and (Key = 121) then
      SpeedButton3.Click;

   if Key = 13 then
   begin
      Conta := '';

      if edtConta.Text = '' then
      begin
         DBText3.Field.AsString := '';
         Exit;
      end
      else
      begin
         if not Cheka(03) then
            edtConta.SetFocus;
      end;

      if Baixa_Varios_Titulos = True then
         Conta := edtConta.Text;
   end;
end;

procedure TfrmFn0202.edtCentroEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Centro de Custo ';
   StatusBar1.Panels[0].Width := 200;

   StatusBar1.Panels[1].Text := ' [Alt+F9] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0202.edtCentroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    // chama consulta de centro de custo
   if (Shift = [ssAlt]) and (Key = 120) then
      SpeedButton4.Click;

   if Key = 13 then
   begin
      Centro := '';

      if edtCentro.Text = '' then
      begin
         DBText4.Field.AsString := '';
         Exit;
      end
      else
      begin
         if not Cheka(04) then
            edtCentro.SetFocus;
      end;

      if Baixa_Varios_Titulos = True then
         Centro := edtCentro.Text;
   end;
end;

procedure TfrmFn0202.edtContaCorrenteEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código da C\C\ Caixa ';
   StatusBar1.Panels[0].Width := 175;

   StatusBar1.Panels[1].Text := ' [Alt+F7] » Consulta ';
   StatusBar1.Panels[1].Width := 120;

   StatusBar1.Panels[2].Text := ' [999] » Caixa Faturamento ';
   StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn0202.edtContaCorrenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de conta corrente\ caixa
   if (Shift = [ssAlt]) and (Key = 118) then
      SpeedButton5.Click;

   if Key = 13 then
   begin
      ContaCorrente         := '';
      ContaCorrente_P_Relat := '';

      if btnSair.Focused then
         Exit;

      if not Cheka(05) then
      begin
         edtContaCorrente.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn0202.edtDataRecebimentoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [F2] » Geral ';
   StatusBar1.Panels[1].Width := 100;

   StatusBar1.Panels[2].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn0202.edtValorPagoExit(Sender: TObject);
begin
   Dif_ValorPago                  := 0;
   Perce_Desc_na_Baixa_de_Titulos := 0;
   Dif_ValorPago_P_Relat          := 0;

   if Baixa_Varios_Titulos = True then
   begin
      if edtValorPago.Value < ValorPago_na_Baixa_de_Titulos then
      begin
         if edtValorPago.Value < (ValorPago_na_Baixa_de_Titulos - edtJurosDesconto.Value) then
         begin
            Dif_ValorPago_P_Relat := (edtValorPago.Value - (ValorPago_na_Baixa_de_Titulos - edtJurosDesconto.Value));

            if Dif_ValorPago_P_Relat < 0 then
               Dif_ValorPago_P_Relat := (-1 * Dif_ValorPago_P_Relat);
         end;

         Dif_ValorPago := ValorPago_na_Baixa_de_Titulos - edtValorPago.Value;

         if edtJurosDesconto.Value > 0 then
            edtJurosDesconto.Value := edtJurosDesconto.Value - Dif_ValorPago;

         if edtJurosDesconto.Value = 0 then
         begin
            edtJurosDesconto.Value := edtValorPago.Value - ValorPago_na_Baixa_de_Titulos;
         end;

         if Dif_ValorPago > 0 then
            Perce_Desc_na_Baixa_de_Titulos := ArredondarDecimal(((Dif_ValorPago / edtValorPago.Value) * 100), 0);// achando o percentual de desconto
      end;

      if edtValorPago.Value > ValorPago_na_Baixa_de_Titulos then
      begin
         Application.MessageBox('Valor informado é maior que o valor do documento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end;
   end;

   if edtValorPago.Value < Valor_Pago_Inicio then
      edtJurosDesconto.Value := (edtValorPago.Value - Valor_Pago_Inicio);

   if Valor_Pago_Enter = edtValorPago.Value then
   begin
      cbxTipoBaixa.Enabled := False;
      btnGravar.SetFocus;
   end
   else
      cbxTipoBaixa.Enabled := True;
end;


procedure TfrmFn0202.ProcessoGravar;
Var
  Sql1,
  Utilizado1,
  Conlan1,
  DataSystem2,
  Historico : String;
  Entradas_Caixa,
  Credito_Resban1 : Variant;
begin
   Entradas_Caixa  := 0;
   Credito_Resban1 := 0;
   Utilizado1      := '';
   Conlan1         := '';
   Historico       := '';
   DataSystem2     := (FormatDateTime('mm/dd/yyyy', Data_Fluxo_Caixa));

   if (NumeroCaixa1 = '') and (edtContaCorrente.Text = '999') then
   begin
      Application.MessageBox('Nenhum caixa foi encontrado', 'Informação',MB_OK+MB_ICONEXCLAMATION);
      edtContaCorrente.SetFocus;
      Abort;
   end;

   Cheka(01); // chama cheka(01) para atualizar o valor do utilizado do cliente

   if cbxTipoBaixa.ItemIndex = 1 then // baixa parcial
   begin
      Historico := 'Baixa Parcial';

      if Juros_Parcial1 <> 0 then
         Historico := Historico + ' - Inclusive juros';
   end
   else
   begin
      Historico := Historico + ' - Baixa Total';

      if Juros1 <> 0 then // baixa total
         Historico := Historico + ' - Inclusive juros';

      if (Juros1 = 0) and (Valor_Pago_Fim < Valor_Pago_Inicio) then
         Historico := Historico + ' - Inclusive desconto';

      Historico := Historico + ' - Liquidação final';
   end;

   Historico := Historico + ' - ' + edtCliente.Field.AsString + '-' + DBText1.Field.AsString;

   // atualiza limite de credito do cliente

   with dmFn0202 do
   begin
      if Utilizado > 0 then // limite de credito utilizado pelo cliente
      begin
         if cbxTipoBaixa.ItemIndex = 0 then // baixa total
         begin
            Utilizado1 := FloatToStr(Subtracao_Variaveis(Valor_Pago_Inicio, Parcial_Inicio));
            Utilizado1 := FloatToStr(Subtracao_Variaveis(Utilizado, StrToFloat(Utilizado1)));
         end
         else
            Utilizado1 := FloatToStr(Subtracao_Variaveis(Utilizado, Pago_Parcial));// Pago_Parcial = na baixa parcial o valor pago antes do juro

         cdsCliente.Close;
         cdsCliente.Params.ParamByName('CLIENTE').AsInteger := edtCliente.Field.AsInteger;
         cdsCliente.Open;

         if not dmFn0202.cdsCliente.IsEmpty then
         begin
            cdsCliente.Edit;

            cdsClienteUTILIZADO_CLIENTE.AsString := Utilizado1;

            cdsCliente.Post;

            cdsCliente.ApplyUpdates(0);
         end;
      end;

      // verifica se cliente esta bloqueado

      if ClienteBloqueado <> '' then // variável alimentada na função Global RetornaCliente
      begin
         if Application.MessageBox('Deseja Desbloquear este Cliente?', 'Desbloqueio', MB_YESNO+MB_ICONQUESTION) = mrYes then
         begin
            // atualiza tabela de SPC

            cdsSPC.Close;
            cdsSPC.Params.ParamByName('CLIENTE').AsString := edtCliente.Text;
            cdsSPC.Params.ParamByName('TITULO').AsString  := edtCodigo.Text;
            cdsSPC.Open;

            if not cdsSPC.IsEmpty then
            begin
               cdsSPC.Edit;

               cdsSPCNEGATIVAC_SPC.AsString   := '';
               cdsSPCDESBLOQ_SPC.AsDateTime   := DataSystem1;

               cdsSPC.Post;
               cdsSPC.ApplyUpdates(0);
            end;

            // desbloqueia o cliente

            cdsCliente.Close;
            cdsCliente.Params.ParamByName('CLIENTE').AsString := edtCliente.Text;
            cdsCliente.Open;

            if not cdsCliente.IsEmpty then
            begin
               cdsCliente.Edit;

               cdsClienteDATABLOQUEIO_CLIENTE.AsString := '';

               cdsCliente.Post;
               cdsCliente.ApplyUpdates(0);
            end;

            Historico_P_Relatorio := 'Desbloqueou o Cliente ' + edtCliente.Field.AsString;

            GravaLogUser(Self, Historico_P_Relatorio);
         end;
      end;

      // atualiza tabela de conta corrente / caixa

      cdsContaCorrente.Close;
      cdsContaCorrente.Params.ParamByName('CHAVE').AsString := ((edtDataFluxoCaixa.Text) + '-' + StrZero(edtContaCorrente.Text, 3));
      cdsContaCorrente.Open;

      if cdsContaCorrente.IsEmpty then
      begin
         cdsContaCorrente.Append;

         cdsContaCorrenteBANCO_RESBAN.AsString  := edtContaCorrente.Field.AsString;
         cdsContaCorrenteCHAVE_RESBAN.AsString  := ((edtDataFluxoCaixa.Text) + '-' + StrZero(edtContaCorrente.Text, 3));
         cdsContaCorrenteCREDITO_RESBAN.AsFloat := edtValorPago.Value;
         cdsContaCorrenteCOD_EMPRESA.AsString   := CodigoEmpresa1;

         cdsContaCorrente.Post;
      end
      else
      begin
         Credito_Resban1 := (edtValorPago.Value + cdsContaCorrenteCREDITO_RESBAN.AsFloat);

         cdsContaCorrente.Edit;

         cdsContaCorrenteCREDITO_RESBAN.AsFloat := Credito_Resban1;

         cdsContaCorrente.Post;
      end;

      cdsContaCorrente.ApplyUpdates(0);

      // atualiza tabela de lançamento

      Conlan1 := IntToStr(Busca_Proximo('P_CONLAN', 'CODIGO_CONLAN'));

      cdsLancamento.Open;

      cdsLancamento.Append;

      cdsLancamentoCODIGO_CONLAN.AsString      := Conlan1;
      cdsLancamentoCORRENTE_CONLAN.AsString    := edtContaCorrente.Text;
      cdsLancamentoCONTA_CONLAN.AsString       := edtConta.Text;
      cdsLancamentoCENTRO_CONLAN.AsString      := edtCentro.Text;
      cdsLancamentoCLI_FOR_CONLAN.AsString     := edtCliente.Text;
      cdsLancamentoTIPO_C_F_CONLAN.AsString    := 'C';
      cdsLancamentoDOCUMENTO_CONLAN.AsString   := edtCodigo.Text;
      cdsLancamentoDATA_CONLAN.AsDateTime      := Data_Fluxo_Caixa;
      cdsLancamentoMOVIMENTO_CONLAN.AsDateTime := Data_Fluxo_Caixa;
      cdsLancamentoHISTORICO_CONLAN.AsString   := Historico;
      cdsLancamentoVALOR_CONLAN.AsFloat        := edtValorPago.Value;
      cdsLancamentoTIPO_CONLAN.AsString        := 'C';
      cdsLancamentoORIGEM_CONLAN.AsString      := 'R';
      cdsLancamentoCOD_EMPRESA.AsString        := CodigoEmpresa1;

      cdsLancamento.Post;

      cdsLancamento.ApplyUpdates(0);

      // atualiza tabela de movimentacao de caixa

      if edtContaCorrente.Text = '999' then
      begin
         if Historico1 = '' then
            Historico1 := Historico1 + 'Recebimento do Titulo: ' + edtCodigo.Text;

         // busca a chave do caixa


         sqqConsulta.Close;
         sqqConsulta.SQL.Clear;
         sqqConsulta.SQL.Add(' SELECT * FROM P_CAIXA WHERE SUBSTRING(chave_caixa from 12 for 10) = '''' ' +
                             ' AND CODIGO_CAIXA = ' + NumeroCaixa1);

         sqqConsulta.Open;

         if sqqConsulta.IsEmpty then
            Application.MessageBox(pChar('Caixa: ' + StrZero(NumeroCaixa1, 2) + ' não foi localizado'), 'Informação', MB_OK+MB_ICONEXCLAMATION);


         cdsCai_Mov.Open;

         cdsCai_Mov.Append;

         cdsCai_MovCOD_EMPRESA.AsString         := CodigoEmpresa1;
         cdsCai_MovDATA_CAIXAMOV.AsDateTime     := Data_Fluxo_Caixa;
         cdsCai_MovVALOR_CAIXAMOV.AsFloat       := edtValorPago.Value;
         cdsCai_MovHORA_CAIXAMOV.AsString       := TimeToStr(Time);
         cdsCai_MovOBSERVACAO_CAIXAMOV.AsString := Historico1;
         cdsCai_MovCHAVE_CAIXAMOV.AsString      := copy(sqqConsulta.FieldByName('CHAVE_CAIXA').AsString, 1, 10);
         cdsCai_MovCAIXA_CAIXAMOV.AsString      := NumeroCaixa1;
         cdsCai_MovUSUARIO_CAIXAMOV.AsString    := Usuario1;
         cdsCai_MovTIPO_CAIXAMOV.AsString       := 'E';
         Case cbxFormaPgto.ItemIndex of
            0: cdsCai_MovTIPO_PAG_CAIXAMOV.AsString   := 'D';
            1: cdsCai_MovTIPO_PAG_CAIXAMOV.AsString   := 'C';
            2: cdsCai_MovTIPO_PAG_CAIXAMOV.AsString   := 'O';
         end;
         cdsCai_MovTITULO_CAIXAMOV.AsString     := edtCodigo.Text;

         cdsCai_Mov.Post;

         cdsCai_Mov.ApplyUpdates(0);

         // atualiza tabela de caixa

         // se estiver parametrizado para os cheques totalizarem no caixa e
         // se for uma retirada em cheque, entao a operacao e abortada para
         // que nao seja gravado no totalizador e depois acabe influenciado no
         // total em cash
         if (Total_Cheque = 'S') and (cbxFormaPgto.ItemIndex = 1) then // cheque then
            Exit;

         if Caixa_Rel = '1' then
         begin
            cdsCaixa.Close;
            cdsCaixa.Params.ParamByName('CAIXA').AsString := NumeroCaixa1;
            cdsCaixa.Open;

            if cdsCaixa.IsEmpty then
            begin
               Application.MessageBox(pChar('Caixa: ' + StrZero(NumeroCaixa1, 2) + ' não foi localizado'), 'Informação', MB_OK+MB_ICONEXCLAMATION);
            end
            else
            begin
               Entradas_Caixa := (cdsCaixaENTRADAS_CAIXA.AsFloat + edtValorPago.Value);

               cdsCaixa.Edit;

               cdsCaixaENTRADAS_CAIXA.AsFloat := Entradas_Caixa;

               cdsCaixa.Post;

               cdsCaixa.ApplyUpdates(0);
            end;
         end;
      end;

      // atualiza tabela de baixa parcial

      if cbxTipoBaixa.ItemIndex = 1 then // baixa parcial
      begin
         cdsParcial.Close;
         cdsParcial.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
         cdsParcial.Open;

         cdsParcial.Append;

         cdsParcialCODIGO_PARCIAL.AsString    := Conlan1;
         cdsParcialDUPLICATA_PARCIAL.AsString := edtCodigo.Text;
         cdsParcialVALOR_PARCIAL.AsFloat      := edtPrincipal1.Value;// Pago_Parcial;
         cdsParcialJUROS_PARCIAL.AsFloat      := Juros1;
         cdsParcialDATA_PARCIAL.AsDateTime    := Data_Fluxo_Caixa;
         cdsParcialTIPO_PARCIAL.AsString      := 'R';

         cdsParcial.Post;

         cdsParcial.ApplyUpdates(0);
      end
      else
      begin
         cdsParcial.Close; // quitação final do titulo
         cdsParcial.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
         cdsParcial.Open;

         if not cdsParcial.IsEmpty then // se houver baixa parcial anterior, chama o ultimo titulo
         begin
            cdsParcial.Append;

            cdsParcialCODIGO_PARCIAL.AsString    := Conlan1;
            cdsParcialDUPLICATA_PARCIAL.AsString := edtCodigo.Text;

            if (edtJurosDesconto.Value < 0) and ((Parcial_Inicio + cdsReceberVALORPAGO_RECEBER.AsFloat) <= cdsReceberVALOR_RECEBER.AsFloat) then // baixa total com desconto
               cdsParcialVALOR_PARCIAL.AsFloat   := edtValorPago.Value + Parcial_Inicio
            else
            begin
               if Parcial_Inicio > 0 then // quitção final do título
                  cdsParcialVALOR_PARCIAL.AsFloat   := cdsReceberVALOR_RECEBER.AsFloat; // Valor_Pago_Inicio;
            end;

            cdsParcialJUROS_PARCIAL.AsFloat      := Juros1;
            cdsParcialDATA_PARCIAL.AsDateTime    := Data_Fluxo_Caixa;
            cdsParcialTIPO_PARCIAL.AsString      := 'R';

            cdsParcial.Post;

            cdsParcial.ApplyUpdates(0);
         end;
      end;
   end;
end;

procedure TfrmFn0202.btnGravarClick(Sender: TObject);
begin
   with dmFn0202 do
   begin
      if Baixa_Varios_Titulos = True then
      begin
         Baixa_Titulos;
         Exit;
      end;

      if not Cheka(08) then
         Abort;

      if not Cheka(09) then
         Abort;

      edtTaxaDeJuro.ReadOnly := False;

      Valor_Pago_Fim := edtValorPago.Value;

      if cdsReceber.State in [dsInsert, dsEdit] then
      begin
         ProcessoGravar; // Procedure

         edtTaxaDeJuro.Enabled    := True;
         edtDifDia.Enabled        := True;
         edtJurosDesconto.Enabled := True;
         edtValorPago.Enabled     := True;
         edtPrincipal1.Enabled    := True;
         cbxTipoBaixa.Enabled     := True;

         Historico_P_Relatorio := ' Baixou contas a receber, com o documento Nº ' + edtCodigo.Text + ', ' + // esta variável está alimentando um campo
                                  ' Tipo de baixa, '+ cbxTipoBaixa.Text + ', ' + 'Val: ' + edtValorPago.Text; // do relatório de recibo

         GravaLogUser(Self, Historico_P_Relatorio);

         cdsReceberDUPLICATA_RECEBER.AsString := edtCodigo.Text;
         cdsReceberCOD_EMPRESA.AsInteger := StrToInt(CodigoEmpresa1);
         cdsReceberVALORPAGO_RECEBER.AsFloat := edtValorPago.Value + Valor_Pago;

         if cbxTipoBaixa.ItemIndex = 1 then // baixa parcial
            cdsReceberPARCIAL_RECEBER.AsFloat := edtPrincipal1.Value + Parcial_Inicio; // Pago_Parcial + Parcial_Inicio;

         if (cbxTipoBaixa.ItemIndex = 0) or (cdsReceberPARCIAL_RECEBER.AsFloat >= cdsReceberVALOR_RECEBER.AsFloat) then // baixa parcial
         begin
            if cdsReceberPARCIAL_RECEBER.AsFloat > 0 then
            begin
               cdsReceberPARCIAL_RECEBER.AsFloat := cdsReceberVALOR_RECEBER.AsFloat; // quita e fecha o valor parcial

               if (edtJurosDesconto.Value < 0) and ((Parcial_Inicio + dmFn0202.cdsReceberVALORPAGO_RECEBER.AsFloat) <= dmFn0202.cdsReceberVALOR_RECEBER.AsFloat) then // baixa total com desconto
                  cdsReceberPARCIAL_RECEBER.AsFloat :=  edtValorPago.Value + Parcial_Inicio; 
            end;

            cdsReceberTIPO_BAIXA_RECEBER.AsString := 'T';
         end
         else
            cdsReceberTIPO_BAIXA_RECEBER.AsString := 'P';

         cdsReceberDESCJUROS_RECEBER.AsString := edtJurosDesconto.Value;

         if edtJurosDesconto.Value < 0 then
            cdsReceberDESCONTO_RECEBER.AsFloat := - + edtJurosDesconto.Value;

         cdsReceberHISTORICO_RECEBER.AsString := DBMemo1.Text;

         cdsReceber.Post;

         cdsReceber.ApplyUpdates(0);

         Application.MessageBox('Documento baixado com sucesso', 'Informação', MB_OK+MB_ICONEXCLAMATION);

         if Recibo = 'S' then // parâmetro do sistema
         begin
            if Application.MessageBox('Deseja Imprimir Recibo?', 'Recibo', MB_YESNO+MB_ICONQUESTION) = mrYes then
            begin
               frmFn15_4 := TfrmFn15_4.Create(Self); // chama tela de recibo
               frmFn15_4.ShowModal;
               frmFn15_4.Release;
               frmFn15_4 := nil;
            end;
         end;
      end;

      edtTaxaDeJuro.ReadOnly := False;

      if not cdsReceber.IsEmpty then
         cdsReceber.EmptyDataSet;

      edtTaxaDeJuro.EditText := '';

      edtDifDia.EditText := '';

      cbxTipoBaixa.ItemIndex := -1;

      edtPrincipal1.EditText := '';

      edtJuro.EditText := '';

      edtJurosDesconto.EditText := '';

      DBMemo1.Clear;

      edtCodigo.Clear;

      edtValorPago.EditText := '';

      cbxFormaPgto.ItemIndex := -1;

      edtCliente.SetFocus;
   end;
end;

procedure TfrmFn0202.edtPrincipal1Exit(Sender: TObject);
Var
  Valor_Pago2 : Double;
begin
   Valor_Pago2 := 0;

   Valor_Pago2 := edtValorPago.Value;

   if edtPrincipal1.Value > edtValorPago.Value then
   begin
      Application.MessageBox('Principal não pode ser maior que valor Pago', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtPrincipal1.Value := Valor_Pago2;
      Exit;
   end;

   if Principal_Enter > edtPrincipal1.Value then
      edtJuro.Value := edtJuro.Value + (Principal_Enter - edtPrincipal1.Value);

   edtPrincipal1.Enabled := False;
end;

function TfrmFn0202.Subtracao_Variaveis(Variavel1,
  Variavel2: Double): Double;
Var
  Total : Double;
begin
   Total := 0;

   if Variavel1 > Variavel2 then
      Total := (Variavel1 - Variavel2)
   else
      Total := (Variavel2 - Variavel1);

   Result := Total;
end;

procedure TfrmFn0202.edtPrincipal1Enter(Sender: TObject);
begin
   edtTaxaDeJuro.Enabled    := False;
   edtDifDia.Enabled        := False;
   edtJurosDesconto.Enabled := False;
   edtValorPago.Enabled     := False;

   Valor_Parcial1         := 0;
   Juros_Parcial1         := 0;

   if cbxTipoBaixa.ItemIndex = 1 then // se for baixa parcial
   begin
      edtPrincipal1.Value := edtValorPago.Value; // recebe valor parcial

      if Juros1 <> 0 then // verifica se a baixa é com juros
      begin
         if Tolerancia_dias_Juros > 0 then // Parametro do sistema
            Dias_em_Atrazo := Dias_em_Atrazo - Tolerancia_dias_Juros;

         if Dias_em_Atrazo > 0 then
         begin
            Valor_Parcial1 := edtValorPago.Value; // valor parcial

            if Taxa_de_Juros = 'C' then // parametro
               Juros_Parcial1 := Calcula_Juro_Composto(Dias_em_Atrazo, edtValorPago.Value, edtTaxaDeJuro.Value)
            else
               Juros_Parcial1 := Calcula_Juro_Simples(Dias_em_Atrazo, edtValorPago.Value, edtTaxaDeJuro.Value);

            edtPrincipal1.Value := (edtValorPago.Value - Juros_Parcial1); // valor total menos o juro
                                                                                          // (Rateio)
            edtJuro.Value := Juros_Parcial1; // só o juro
         end;
      end
      else
         edtJuro.Value := 0;
   end;

   Principal_Enter := edtPrincipal1.Value;
end;

procedure TfrmFn0202.edtTaxaDeJuroExit(Sender: TObject);
begin
   Juros1           := 0;
   Valor_Pago_Enter := 0;


   if Baixa_Varios_Titulos = True then
      Exit;

   {a base de cálculo dos juros tem que ser baseado no (valor pago)
   porque no evento on exit do edtCodigo o (valor pago) recebe o valor
   da subtração (VALOR_RECEBER - PARCIAL_RECEBER)}

   if edtTaxaDeJuro.Value <> 0 then
   begin
      if Data_Fluxo_Caixa > dmFn0202.cdsReceberVENCIMENTO_RECEBER.AsDateTime then // documento em atrazo
      begin
         edtDifDia.Value := Dias_em_Atrazo;

         if Tolerancia_dias_Juros > 0 then // Parametro do sistema
         begin
            Dias_em_Atrazo := Subtracao_Variaveis(Tolerancia_dias_Juros, Dias_em_Atrazo); // coloca as variáveis na ordem correta para subtração

            edtDifDia.Value := Dias_em_Atrazo;

            if Dias_em_Atrazo > 0 then
            begin
               if Tipo_de_Juro = 'C' then // Parametro do sistema // se Juro é simples ou composto
               begin
                  edtJurosDesconto.Value := Calcula_Juro_Composto(Dias_em_Atrazo, edtValorPago.Value, edtTaxaDeJuro.Value); // Juro calculado baseado no valor total do documento

                  Juros1 := Calcula_Juro_Composto(Dias_em_Atrazo, edtValorPago.Value, edtTaxaDeJuro.Value);

                  edtValorPago.Value := edtValorPago.Value + Juros1;

                  if Juros_Minimo <> '' then
                     Confere_Juro_Minimo := FloatToStr(Calcula_Juro_Composto(Dias_em_Atrazo, Valor_Pago_Inicio, StrToFloat(Juros_Minimo))); // Juro minimo calculado baseado no valor total do documento

               end
               else
               begin
                  edtJurosDesconto.Value := Calcula_Juro_Simples(Dias_em_Atrazo, edtValorPago.Value, edtTaxaDeJuro.Value); // Juro calculado baseado no valor total do documento

                  Juros1 := Calcula_Juro_Simples(Dias_em_Atrazo, edtValorPago.Value, edtTaxaDeJuro.Value);

                  edtValorPago.Value := edtValorPago.Value + Juros1;

                  if Juros_Minimo <> '' then
                     Confere_Juro_Minimo := FloatToStr(Calcula_Juro_Simples(Dias_em_Atrazo, edtValorPago.Value, StrToFloat(Juros_Minimo))); // Juro minimo calculado baseado no valor total do documento
               end;

               edtValorPago.SetFocus;
            end;
         end;
      end;
   end;

   Valor_Pago_Enter         := edtValorPago.Value; 
   edtTaxaDeJuro.Enabled    := False;
   edtDifDia.Enabled        := False;
   edtJurosDesconto.Enabled := False;
   edtValorPago.SetFocus;
end;

procedure TfrmFn0202.edtDifDiaEnter(Sender: TObject);
begin
   if Baixa_Varios_Titulos = True then
      Exit;

   if Data_Fluxo_Caixa > dmFn0202.cdsReceberVENCIMENTO_RECEBER.AsDateTime then
      edtDifDia.Value := (Data_Fluxo_Caixa - dmFn0202.cdsReceberVENCIMENTO_RECEBER.AsDateTime);
end;

procedure TfrmFn0202.cbxTipoBaixaExit(Sender: TObject);
begin
   Juros_Parcial_P_Relat := 0;

   if cbxTipoBaixa.ItemIndex = 1 then // baixa parcial
   begin
      if Juros1 <> 0 then
      begin
         Pago_Parcial := (edtValorPago.Value - Juros1); // menos o juro p/ alimentar o campo PARCIAL_RECEBER

         if Pago_Parcial < 0 then
            Juros_Parcial_P_Relat := (-1 * Pago_Parcial)
         else
            Juros_Parcial_P_Relat := Juros1;
      end
      else
         Pago_Parcial := edtValorPago.Value;

      edtJurosDesconto.Value := 0;
   end;
end;

procedure TfrmFn0202.edtDataFluxoCaixaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   {if Baixa_Varios_Titulos = True then
      Exit;

   if Key = 13 then
   begin
      if Application.MessageBox('Confirma baixa?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
         btnGravar.Click;
   end;}
end;

procedure TfrmFn0202.edtDataFluxoCaixaExit(Sender: TObject);
begin
   Data_Fluxo_Caixa := edtDataFluxoCaixa.Date;

   edtCliente.SetFocus;
end;

procedure TfrmFn0202.edtDataFluxoCaixaEnter(Sender: TObject);
begin
   if not Verifica_acesso(281) then // Parametro do sistema, altera fluxo de caixa
      edtDataFluxoCaixa.ReadOnly := True
   else
      edtDataFluxoCaixa.ReadOnly := False;
end;

procedure TfrmFn0202.FormCreate(Sender: TObject);
begin
   dmFn0202 := TdmFn0202.Create(Self);
end;


procedure TfrmFn0202.Baixa_Titulos;
Var
  Historico_P_Relatorio2,
  Utilizado1,
  Conlan1,
  Historico1,
  Historico : String;
  Quanti_Titulos,
  Credito_Resban1,
  Juros_Titulos,
  Desc_Maior_que_Juros,
  Entradas_Caixa,
  Valor_Titulo_c_Desc,
  Valor_Titulos,
  Dias_Atraso : Double;
  Contador    : Integer;
begin
   Valor_Titulo_c_Desc    := 0;
   Entradas_Caixa         := 0;
   Desc_Maior_que_Juros   := 0;
   Juros_Titulos          := 0;
   Historico1             := '';
   Credito_Resban1        := 0;
   Conlan1                := '';
   Valor_Pago_Inicio      := 0;
   Parcial_Inicio         := 0;
   Quanti_Titulos         := 0;
   Dias_Atraso            := 0;
   Historico_P_Relatorio2 := '';
   Historico              := '';
   Historico_P_Relatorio3 := '';
   Valor_Recibo_Relat     := 0;
   Valor_Pago_Relat       := 0;
   Valor_Pago_Ini_Relat   := 0;
   Valor_Titulos          := 0;
   Contador               := 0;


   Desabilita_Tela; // procedure

   Cheka(01); // chama cheka(01) para atualizar o valor do limite utilizado pelo cliente

   with dmFn0202 do
   begin
      if not cdsBaixaTitulos.IsEmpty then
      begin
         if not btnGravar.Focused then
         begin
            cdsBaixaTitulos.First;

            Historico := 'Baixa Total - ';

            Historico := Historico + cdsBaixaTitulosNOME_CLIENTE.AsString;

            while not cdsBaixaTitulos.Eof do
            begin
               Quanti_Titulos := Quanti_Titulos + 1;

               if cdsBaixaTitulosJUROS.AsFloat > 0 then
                  edtJurosDesconto.Value := edtJurosDesconto.Value + cdsBaixaTitulosJUROS.AsFloat;

               if cdsBaixaTitulosDIAS_ATRASO.AsFloat > 0 then
                  Dias_Atraso := Dias_Atraso + cdsBaixaTitulosDIAS_ATRASO.AsFloat;

               edtValorPago.Value := edtValorPago.Value + cdsBaixaTitulosVALOR.AsFloat;

               cdsBaixaTitulos.Next;
            end;

            if Dias_Atraso > 0 then
               edtDifDia.Value := ArredondarDecimal((Dias_Atraso / Quanti_Titulos),0);

            if edtJurosDesconto.Value > 0 then
               edtValorPago.Value := ArredondarDecimal((edtValorPago.Value + edtJurosDesconto.Value),2);

            if cdsReceber.State in [dsInsert, dsEdit] then
            begin
               edtDataRecebimento.Field.AsDateTime := Data_Fluxo_Caixa;
            end;

            edtPortador.SetFocus;
            Exit;
         end
         else
         begin
            // Processo de gravação

            Historico_P_Relatorio3 := 'Baixou contas a receber, com os documentos Nº ';

            Valor_Pago_Relat := edtValorPago.Value;// valor pago para lançar no relatório

            cdsBaixaTitulos.First;

            DataSource1.Enabled := False;

            frmProcess := TfrmProcess.Create(Self);
            frmProcess.JvgLabel1.Caption := 'Processando...';
            frmProcess.ProgressBar1.Max := cdsBaixaTitulos.RecordCount;
            frmProcess.Show;
            Application.ProcessMessages;

            while not cdsBaixaTitulos.Eof do
            begin
               frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
               frmProcess.Refresh;

               cdsReceber.Close;
               cdsReceber.Params.ParamByName('DUPLICATA').AsString := cdsBaixaTitulosDUPLICATA.AsString;
               cdsReceber.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
               cdsReceber.Open;

               cdsRelatorio.Open;

               if not cdsReceber.IsEmpty then
               begin
                  Valor_Pago_Inicio := (cdsReceberVALOR_RECEBER.AsFloat - cdsReceberPARCIAL_RECEBER.AsFloat);

                  Valor_Pago_Ini_Relat := Valor_Pago_Ini_Relat + Valor_Pago_Inicio;

                  Parcial_Inicio := cdsReceberPARCIAL_RECEBER.AsFloat;

                  cdsReceber.Edit;

                  cdsRelatorio.Append;

                  Historico_P_Relatorio2:= ' Baixou contas a receber, com o documento Nº ' + cdsBaixaTitulosDUPLICATA.AsString + ', ' + // esta variável está alimentando um campo
                                           ' Tipo de baixa, '+ cbxTipoBaixa.Text + ', ' + 'Val: ' + edtValorPago.Text;                           // do relatório de recibo

                  GravaLogUser(Self, Historico_P_Relatorio2);

                  Historico_P_Relatorio3 := Historico_P_Relatorio3 + ', ' + cdsBaixaTitulosDUPLICATA.AsString;

                  cdsReceberALTERACAO_RECEBER.AsDateTime     := Data_Fluxo_Caixa;

                  cdsReceberMOVIMENTO_RECEBER.AsDateTime     := Data_Fluxo_Caixa;

                  cdsReceberDUPLICATA_RECEBER.AsString       := cdsBaixaTitulosDUPLICATA.AsString;

                  cdsRelatorioNUM_DOCUMENTO.AsString         := cdsReceberDUPLICATA_RECEBER.AsString; // cdsRelatorio

                  cdsReceberCODIGO_CLIENTE_RECEBER.AsInteger := cdsBaixaTitulosCODIGO_CLIENTE.AsInteger;

                  cdsRelatorioCODIGO_CLIENTE.AsInteger       := cdsReceberCODIGO_CLIENTE_RECEBER.AsInteger; // cdsRelatorio

                  cdsReceberEMISSAO_RECEBER.AsDateTime       := cdsBaixaTitulosEMISSAO.AsDateTime;

                  cdsRelatorioEMISSAO.AsDateTime             := cdsReceberEMISSAO_RECEBER.AsDateTime; // cdsRelatorio

                  cdsReceberVENCIMENTO_RECEBER.AsDateTime    := cdsBaixaTitulosVENCIMENTO.AsDateTime;

                  cdsRelatorioVENCIMENTO.AsDateTime          := cdsReceberVENCIMENTO_RECEBER.AsDateTime; // cdsRelatorio

                  cdsReceberPREVISAO_RECEBER.AsDateTime      := cdsBaixaTitulosPREVISAO.AsDateTime;

                  cdsReceberVALOR_RECEBER.AsFloat            := cdsBaixaTitulosVALOR.AsFloat;

                  cdsRelatorioNOME_CLIENTE.AsString          := cdsBaixaTitulosNOME_CLIENTE.AsString; // cdsRelatorio

                  if Perce_Desc_na_Baixa_de_Titulos > 0 then
                  begin
                     if cdsBaixaTitulosJUROS.AsFloat > 0 then
                     begin
                        Juros_Titulos                                   := (cdsBaixaTitulosJUROS.AsFloat - ArredondarDecimal(((cdsBaixaTitulosJUROS.AsFloat + cdsBaixaTitulosVALOR.AsFloat) * (Perce_Desc_na_Baixa_de_Titulos / 100)) ,2));

                        if Juros_Titulos < 0 then
                        begin
                           Desc_Maior_que_Juros                         := ArredondarDecimal(cdsBaixaTitulosVALOR.AsFloat, 2);
                           cdsReceberVALOR_RECEBER.AsFloat     := cdsBaixaTitulosVALOR.AsFloat - Juros_Titulos;
                           Desc_Maior_que_Juros                         := ArredondarDecimal((Desc_Maior_que_Juros - cdsBaixaTitulosVALOR.AsFloat),2);
                           cdsReceberDESCONTO_RECEBER.AsFloat  := Desc_Maior_que_Juros;

                           if Desc_Maior_que_Juros > 0 then
                              cdsReceberDESCJUROS_RECEBER.AsFloat := (-1 * Desc_Maior_que_Juros);
                        end
                        else
                           cdsReceberDESCJUROS_RECEBER.AsFloat := Juros_Titulos;
                     end;

                     if cdsBaixaTitulosJUROS.AsFloat = 0 then
                     begin
                        // encontra o razão do desconto em percentual para a parcela e aplica
                        Valor_Titulo_c_Desc                         := (cdsBaixaTitulosVALOR.AsFloat -  ArredondarDecimal((cdsBaixaTitulosVALOR.AsFloat * (Perce_Desc_na_Baixa_de_Titulos / 100)) ,2));
                        cdsReceberDESCONTO_RECEBER.AsFloat := ArredondarDecimal((cdsBaixaTitulosVALOR.AsFloat - Valor_Titulo_c_Desc), 2);

                        if cdsReceberDESCONTO_RECEBER.AsFloat > 0 then
                           cdsReceberDESCJUROS_RECEBER.AsFloat := (-1 * cdsReceberDESCONTO_RECEBER.AsFloat);
                     end;

                     if Juros_Titulos > 0 then
                        Historico := Historico + 'Inclusive Juros - '
                     else
                        Historico := Historico + 'Liquidado com Desconto - ';
                  end
                  else
                  begin
                     if cdsBaixaTitulosJUROS.AsFloat > 0 then
                        cdsReceberDESCJUROS_RECEBER.AsFloat   := cdsBaixaTitulosJUROS.AsFloat;
                  end;

                  cdsRelatorioVALOR.AsFloat                  := cdsReceberVALOR_RECEBER.AsFloat; // cdsRelatorio

                  cdsRelatorioJUROS_DESCONTO.AsFloat         := cdsReceberDESCJUROS_RECEBER.AsFloat; // cdsRelatorio

                  cdsReceberCODIGO_PORTADOR_RECEBER.AsString := edtPortador.Text;

                  cdsReceberCODIGO_CENTRO_RECEBER.AsString   := edtCentro.Text;

                  cdsReceberCODIGO_CONTA_RECEBER.AsString    := edtConta.Text;

                  cdsReceberCODIGO_CORRENTE_RECEBER.AsString := edtContaCorrente.Text;

                  cdsReceberTIPO_BAIXA_RECEBER.AsString      := 'Total';

                  cdsReceberMOVIMENTO_RECEBER.AsDateTime     := Data_Fluxo_Caixa;

                  if Juros_Titulos > 0 then
                     cdsReceberVALORPAGO_RECEBER.AsFloat     := ArredondarDecimal(cdsBaixaTitulosVALOR.AsFloat + Juros_Titulos, 2)
                  else
                     cdsReceberVALORPAGO_RECEBER.AsFloat     := ArredondarDecimal(cdsBaixaTitulosVALOR.AsFloat, 2);

                  if Valor_Titulo_c_Desc > 0 then
                     cdsReceberVALORPAGO_RECEBER.AsFloat     := ArredondarDecimal(Valor_Titulo_c_Desc, 2);

                  cdsRelatorioVALOR_PAGO.AsFloat             := cdsReceberVALORPAGO_RECEBER.AsFloat; // cdsRelatorio

                  cdsReceberHISTORICO_RECEBER.AsVariant      := DBMemo1.Text;

                  Valor_Recibo_Relat                                  := Valor_Recibo_Relat + cdsReceberVALOR_RECEBER.AsFloat;

                  //Valor_Pago_Relat                                    := Valor_Pago_Relat + cdsReceberVALORPAGO_RECEBER.AsFloat;

                  cdsReceber.Post;

                  cdsRelatorio.Post; // cdsRelatorio

                  cdsReceber.ApplyUpdates(0);

                  // Atualiza limite de crédito do cliente

                  if Utilizado > 0 then // limite de credito utilizado pelo cliente
                  begin
                     Utilizado1 := FloatToStr(Subtracao_Variaveis(Valor_Pago_Inicio, Parcial_Inicio));
                     Utilizado1 := FloatToStr(Subtracao_Variaveis(Utilizado, StrToFloat(Utilizado1)));

                     cdsCliente.Close;
                     cdsCliente.Params.ParamByName('CLIENTE').AsInteger := cdsBaixaTitulosCODIGO_CLIENTE.AsInteger;
                     cdsCliente.Open;

                     if not cdsCliente.IsEmpty then
                     begin
                        cdsCliente.Edit;

                        cdsClienteUTILIZADO_CLIENTE.AsString := Utilizado1;

                        cdsCliente.Post;
                     end;

                     cdsCliente.ApplyUpdates(0);
                  end;

                  // atualiza tabela de conta corrente / caixa

                  cdsContaCorrente.Close;
                  cdsContaCorrente.Params.ParamByName('CHAVE').AsString := ((DateToStr(Data_Fluxo_Caixa)) + '-' + StrZero(ContaCorrente, 3));
                  cdsContaCorrente.Open;

                  if cdsContaCorrente.IsEmpty then
                  begin
                     cdsContaCorrente.Append;

                     cdsContaCorrenteBANCO_RESBAN.AsString  := ContaCorrente;
                     cdsContaCorrenteCHAVE_RESBAN.AsString  := (((DateToStr(Data_Fluxo_Caixa)) + '-' + StrZero(ContaCorrente , 3)));
                     cdsContaCorrenteCREDITO_RESBAN.AsFloat := (edtValorPago.Value div cdsBaixaTitulos.RecordCount);
                     cdsContaCorrenteCOD_EMPRESA.AsString   := CodigoEmpresa1;

                     cdsContaCorrente.Post;
                  end
                  else
                  begin
                     Credito_Resban1 := ((edtValorPago.Value div cdsBaixaTitulos.RecordCount) + cdsContaCorrenteCREDITO_RESBAN.AsFloat);

                     cdsContaCorrente.Edit;

                     cdsContaCorrenteCREDITO_RESBAN.AsFloat := Credito_Resban1;

                     cdsContaCorrente.Post;
                  end;

                  cdsContaCorrente.ApplyUpdates(0);

                  // atualiza tabela de lançamento

                  Conlan1 := IntToStr(Busca_Proximo('P_CONLAN', 'CODIGO_CONLAN'));

                  cdsLancamento.Open;

                  cdsLancamento.Append;

                  cdsLancamentoCODIGO_CONLAN.AsString      := Conlan1;
                  cdsLancamentoCORRENTE_CONLAN.AsString    := ContaCorrente;
                  cdsLancamentoCONTA_CONLAN.AsString       := Conta;
                  cdsLancamentoCENTRO_CONLAN.AsString      := Centro;
                  cdsLancamentoCLI_FOR_CONLAN.AsString     := cdsBaixaTitulosCODIGO_CLIENTE.AsString;
                  cdsLancamentoTIPO_C_F_CONLAN.AsString    := 'C';
                  cdsLancamentoDOCUMENTO_CONLAN.AsString   := cdsBaixaTitulosDUPLICATA.AsString;
                  cdsLancamentoDATA_CONLAN.AsDateTime      := Data_Fluxo_Caixa;
                  cdsLancamentoMOVIMENTO_CONLAN.AsDateTime := Data_Fluxo_Caixa;
                  cdsLancamentoHISTORICO_CONLAN.AsString   := Historico;
                  cdsLancamentoVALOR_CONLAN.AsFloat        := edtValorPago.Value;
                  cdsLancamentoTIPO_CONLAN.AsString        := 'C';
                  cdsLancamentoORIGEM_CONLAN.AsString      := 'R';
                  cdsLancamentoCOD_EMPRESA.AsString        := CodigoEmpresa1;

                  cdsLancamento.Post;

                  cdsLancamento.ApplyUpdates(0);

                  // atualiza tabela de movimentacao de caixa

                  if Historico1 = '' then
                     Historico1 := Historico1 + 'Recebimento do Titulo: ' + cdsBaixaTitulosDUPLICATA.AsString;

                  NumeroCaixa1 := '1';

                  // busca a chave do caixa

                  if ContaCorrente = '999' then
                  begin
                      sqqConsulta.Close;
                      sqqConsulta.SQL.Clear;
                      sqqConsulta.SQL.Add(' SELECT * FROM P_CAIXA WHERE COD_EMPRESA = ' + CodigoEmpresa1 +
                                                    ' AND CODIGO_CAIXA = ' + NumeroCaixa1);

                      sqqConsulta.Open;

                      if sqqConsulta.IsEmpty then
                      begin
                         Application.MessageBox('Caixa não foi localizado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
                         Exit;
                      end;

                      cdsCai_Mov.Open;

                      cdsCai_Mov.Append;

                      Contador      := Contador + 1;
                      Valor_Titulos := (edtValorPago.Value div cdsBaixaTitulos.RecordCount);

                      cdsCai_MovCOD_EMPRESA.AsString         := CodigoEmpresa1;
                      cdsCai_MovDATA_CAIXAMOV.AsDateTime     := Data_Fluxo_Caixa;
                      cdsCai_MovVALOR_CAIXAMOV.AsFloat       := Valor_Titulos;
                      cdsCai_MovHORA_CAIXAMOV.AsString       := TimeToStr(Time);
                      cdsCai_MovOBSERVACAO_CAIXAMOV.AsString := 'Recebimento do Titulo: ' + cdsBaixaTitulosDUPLICATA.AsString + ' (' + IntToStr(Contador) + ' de ' + IntToStr(cdsBaixaTitulos.RecordCount) + ')';
                      cdsCai_MovCHAVE_CAIXAMOV.AsString      := sqqConsulta.FieldByName('CHAVE_CAIXA').AsString;
                      cdsCai_MovCAIXA_CAIXAMOV.AsString      := NumeroCaixa1;
                      cdsCai_MovUSUARIO_CAIXAMOV.AsString    := Usuario1;
                      cdsCai_MovTIPO_CAIXAMOV.AsString       := 'E';
                      cdsCai_MovTIPO_PAG_CAIXAMOV.AsString   := cbxFormaPgto.Text;
                      cdsCai_MovTITULO_CAIXAMOV.AsString     := cdsBaixaTitulosDUPLICATA.AsString;

                      cdsCai_Mov.Post;

                      cdsCai_Mov.ApplyUpdates(0);

                      // atualiza tabela de caixa

                      // se estiver parametrizado para os cheques totalizarem no caixa e
                      // se for uma retirada em cheque, entao a operacao e abortada para
                      // que nao seja gravado no totalizador e depois acabe influenciado no
                      // total em cash
                      if (Total_Cheque = 'S') and (cbxFormaPgto.ItemIndex = 1) then
                         Exit;

                      if Caixa_Rel = '1' then
                      begin
                         cdsCaixa.Close;
                         cdsCaixa.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
                         cdsCaixa.Params.ParamByName('CAIXA').AsString   := NumeroCaixa1;
                         cdsCaixa.Open;

                         if cdsCaixa.IsEmpty then
                         begin
                            Application.MessageBox('Caixa não foi localizado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
                            Exit;
                         end
                         else
                         begin
                            Entradas_Caixa := (cdsCaixaENTRADAS_CAIXA.AsFloat + edtValorPago.Value);

                            cdsCaixa.Edit;

                            cdsCaixaENTRADAS_CAIXA.AsFloat := Entradas_Caixa;

                            cdsCaixa.Post;

                            cdsCaixa.ApplyUpdates(0);
                         end;
                      end;
                  end;
                  // atualiza tabela de baixa parcial

                  cdsParcial.Close; // quitação final do titulo
                  cdsParcial.Params.ParamByName('DOCUMENTO').AsString := edtCodigo.Text;
                  cdsParcial.Open;

                  if not cdsParcial.IsEmpty then // se houver baixa parcial anterior, chama o ultimo titulo
                  begin
                     cdsParcial.Append;

                     cdsParcialCODIGO_PARCIAL.AsString    := Conlan1;
                     cdsParcialDUPLICATA_PARCIAL.AsString := cdsBaixaTitulosDUPLICATA.AsString;
                     cdsParcialVALOR_PARCIAL.AsFloat      := Valor_Pago_Inicio;

                     if Juros_Titulos > 0 then
                        cdsParcialJUROS_PARCIAL.AsFloat      := cdsBaixaTitulosJUROS.AsFloat;

                     cdsParcialDATA_PARCIAL.AsDateTime    := Data_Fluxo_Caixa;
                     cdsParcialTIPO_PARCIAL.AsString      := 'R';

                     cdsParcial.Post;
                  end;

                  cdsParcial.ApplyUpdates(0);

                  cdsBaixaTitulos.Next;
                end;
            end;

            frmProcess.Release;
            frmProcess := nil;

            DataSource1.Enabled := True;

            if Recibo = 'S' then // parâmetro do sistema
            begin
               if Application.MessageBox('Deseja Imprimir Recibo?', 'Recibo', MB_YESNO+MB_ICONQUESTION) = mrYes then
               begin
                  frmFn15_4 := TfrmFn15_4.Create(Self); // chama tela de recibo
                  frmFn15_4.ShowModal;
                  frmFn15_4.Release;
                  frmFn15_4 := nil;
               end;
            end;

            edtTaxaDeJuro.ReadOnly := False;

           if not cdsReceber.IsEmpty then
              cdsReceber.EmptyDataSet;

           edtTaxaDeJuro.EditText := '';

           edtDifDia.EditText := '';

           cbxTipoBaixa.ItemIndex := -1;

           edtPrincipal1.EditText := '';

           edtJuro.EditText := '';

           edtValorPago.EditText := '';

           edtJurosDesconto.EditText := '';

           DBMemo1.Clear;

           cbxFormaPgto.ItemIndex := -1;

           edtCodigo.Clear;

           edtCliente.SetFocus;
         end;
      end;
   end;
end;

procedure TfrmFn0202.Desabilita_Tela;
begin
   edtCodigo.ReadOnly         := True;
   edtDataEmissao.ReadOnly    := True;
   edtDataVencimento.ReadOnly := True;
   edtDataPrevisao.ReadOnly   := True;
   edtValorSaldo.ReadOnly     := True;
   edtCliente.ReadOnly        := True;
   edtTaxaDeJuro.ReadOnly     := True;
   edtDifDia.ReadOnly         := True;
   edtJurosDesconto.ReadOnly  := True;
   cbxTipoBaixa.ItemIndex     := 0;
end;

procedure TfrmFn0202.Habilita_Tela;
begin
   edtCodigo.ReadOnly         := False;
   edtDataEmissao.ReadOnly    := False;
   edtDataVencimento.ReadOnly := False;
   edtDataPrevisao.ReadOnly   := False;
   edtValorSaldo.ReadOnly     := False;
   edtCliente.ReadOnly        := False;
   edtTaxaDeJuro.ReadOnly     := False;
   edtDifDia.ReadOnly         := False;
   edtJurosDesconto.ReadOnly  := False;
end;

procedure TfrmFn0202.edtValorPagoEnter(Sender: TObject);
begin
   if Baixa_Varios_Titulos = True then
   begin
      ValorPago_na_Baixa_de_Titulos := 0;

      ValorPago_na_Baixa_de_Titulos := edtValorPago.Value;
   end;
end;

procedure TfrmFn0202.edtDataBaseEnter(Sender: TObject);
begin
   if not Verifica_acesso(308) then // Parametro do sistema, altera data base
      edtDataBase.ReadOnly := True
   else
      edtDataBase.ReadOnly := False;

   edtDataBase.Field.AsDateTime := edtDataVencimento.Field.AsDateTime;
end;

procedure TfrmFn0202.cbxFormaPgtoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [D] » Dinheiro ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [C] » Cheque ';
   StatusBar1.Panels[1].Width := 100;

   StatusBar1.Panels[2].Text := ' [T] » Cartão ';
   StatusBar1.Panels[2].Width := 100;

   StatusBar1.Panels[2].Text := ' [O] » Outra ';
   StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn0202.cbxFormaPgtoExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if cbxFormaPgto.ItemIndex = -1 then
   begin
      cbxFormaPgto.Text := '';

      Application.MessageBox('Informe a forma de recebimento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      cbxFormaPgto.SetFocus;
      Exit;
   end;
end;

procedure TfrmFn0202.edtCodigoExit(Sender: TObject);
begin
   if Baixa_Varios_Titulos = True then
   begin
      Data_Fluxo_Caixa := DataSystem1;

      Baixa_Titulos; // procedure
      Exit;
   end
   else
      Habilita_Tela; // procedure

   Valor_Pago_Inicio := 0;
   Valor_Pago        := 0;
   Principal_Enter   := 0;

   if btnSair.Focused then
      Exit;

   if Focu1 = 2 then
      Focu1 := 0;

   if edtCodigo.Text = '' then
   begin
      Focu1 := Focu1 + 1;

      if Focu1 = 2 then
         edtCliente.SetFocus
      else
         edtCodigo.SetFocus;

      Exit;
   end
   else
   begin
      dmFn0202.cdsReceber.Close;
      dmFn0202.cdsReceber.Params.ParamByName('DUPLICATA').AsString := edtCodigo.Text;
      dmFn0202.cdsReceber.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0202.cdsReceber.Open;

      if dmFn0202.cdsReceber.IsEmpty then
      begin
         Application.MessageBox('Documento não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtCodigo.SetFocus;
         Exit;
      end
      else
      begin
         if dmFn0202.cdsReceberTIPO_BAIXA_RECEBER.AsString = 'T' then
         begin
            Application.MessageBox('Documento já liquidado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            dmFn0202.cdsReceber.EmptyDataSet;
            edtCodigo.Text := '';
            edtCliente.SetFocus;
            Exit;
         end
         else
            dmFn0202.cdsReceber.Edit;

            edtDataRecebimento.Field.AsDateTime := Data_Fluxo_Caixa;

            DBMemo1.Clear;

            DBMemo1.SelText := dmFn0202.cdsReceberHISTORICO_RECEBER.AsString;

            cbxTipoBaixa.ItemIndex := 0;
      end;

         if Taxa_de_Juros <> '' then // alimenta parametro
            edtTaxaDeJuro.Value := Taxa_de_Juros
         else
            edtTaxaDeJuro.Value := 0;

         Parcial_Inicio := dmFn0202.cdsReceberPARCIAL_RECEBER.AsFloat;

         if Parcial_Inicio > 0 then
         begin
            if Data_Fluxo_Caixa > dmFn0202.cdsReceberVENCIMENTO_RECEBER.AsDateTime then // alimenta parametro
               Dias_em_Atrazo := (Data_Fluxo_Caixa - dmFn0202.cdsReceberDATA_BASE_RECEBER.AsDateTime);
         end
         else
         begin
            if Data_Fluxo_Caixa > dmFn0202.cdsReceberVENCIMENTO_RECEBER.AsDateTime then // alimenta parametro
               Dias_em_Atrazo := (Data_Fluxo_Caixa - dmFn0202.cdsReceberVENCIMENTO_RECEBER.AsDateTime);
               dmFn0202.cdsReceberDATA_BASE_RECEBER.AsDateTime := dmFn0202.cdsReceberVENCIMENTO_RECEBER.AsDateTime;
         end;

         if DiasPara_Bloqueio_Auto <> '' then // Parâmetro do sistema
         begin
            if Dias_em_Atrazo > StrToFloat(DiasPara_Bloqueio_Auto) then
            begin
               if (Master1 <> 'S') and (not Verifica_acesso(282)) then
               begin
                  if Application.MessageBox('Titulo com Nº de dias em Atraso Superior', 'Desbloquear?', MB_YESNO+MB_ICONQUESTION) = mrYes then
                  begin
                     frmFn0202_02 := TfrmFn0202_02.Create(Self);
                     frmFn0202_02.ShowModal;
                     frmFn0202_02.Release;
                     frmFn0202_02 := nil;
                  end;
               end;
            end
         end;

         Valor_Pago := dmFn0202.cdsReceberVALORPAGO_RECEBER.AsFloat;

         edtValorPago.Value := (dmFn0202.cdsReceberVALOR_RECEBER.AsFloat - dmFn0202.cdsReceberPARCIAL_RECEBER.AsFloat);

         Valor_Pago_Inicio := edtValorPago.Value;

         Historico1 := dmFn0202.cdsReceberHISTORICO_RECEBER.AsString;

         edtPortador.SetFocus;
   end;
end;

procedure TfrmFn0202.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmFn0202.edtDataBaseExit(Sender: TObject);
begin
    edtPortador.SetFocus;
end;

procedure TfrmFn0202.edtContaCorrenteExit(Sender: TObject);
begin
   if Baixa_Varios_Titulos = True then
      ContaCorrente         := edtContaCorrente.Text;

   ContaCorrente_P_Relat := UpperCase((StrZero(edtContaCorrente.Text, 3) + '-' + DBText5.Field.AsString));
end;

end.


