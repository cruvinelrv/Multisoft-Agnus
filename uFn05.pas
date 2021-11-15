{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN026)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 16/05/2007
 FINALIDADE           --> Débitos e créditos a vista
 COMENTARIO           -->
 *******************************************************************************}


unit uFn05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, JvExMask,
  JvToolEdit, JvDBControls, DB, JvExStdCtrls, JvDBCombobox, ComCtrls;

type
  TfrmFn05 = class(TForm)
    Panel1: TPanel;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    edtDataFluxo: TJvDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtContaCorrente: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    DataSource1: TDataSource;
    Label3: TLabel;
    edtCentroCusto: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBText2: TDBText;
    Label4: TLabel;
    edtConta: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBText3: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtValor: TDBEdit;
    edtDataLan: TJvDBDateEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    cbxTipo: TComboBox;
    edtDocumento: TEdit;
    StatusBar1: TStatusBar;
    btnIncluir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtDocumentoExit(Sender: TObject);
    procedure edtDataFluxoEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtContaCorrenteEnter(Sender: TObject);
    procedure edtContaCorrenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCentroCustoEnter(Sender: TObject);
    procedure edtCentroCustoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtContaEnter(Sender: TObject);
    procedure edtContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDocumentoEnter(Sender: TObject);
    procedure cbxTipoEnter(Sender: TObject);
    procedure edtValorEnter(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtDataLanEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function Cheka(Campo : Integer) : Boolean;
    function Retorna_Conta(Codigo : TCustomEdit; Descricao : TCustomLabel) : Boolean;
    procedure LimpaStatusBar;
  public
    { Public declarations }
    Historico1 : String;
  end;

var
  frmFn05: TfrmFn05;

implementation

uses udmFn05, uGlobal, StrUtils, uConsulta, DBClient;

{$R *.dfm}

procedure TfrmFn05.FormCreate(Sender: TObject);
begin
   dmFn05 := TdmFn05.Create(Self);   
end;

procedure TfrmFn05.DataSource1DataChange(Sender: TObject; Field: TField);
begin
   btnGravar.Enabled := (dmFn05.cdsConlan.Active) and
                        (dmFn05.cdsConlan.State in [dsInsert, dsEdit]);

   btnIncluir.Enabled := (dmFn05.cdsConlan.Active) and
                         (not(dmFn05.cdsConlan.State in [dsInsert, dsEdit]));

   Panel1.Enabled := btnGravar.Enabled;

   btnSair.Caption := IfThen(btnGravar.Enabled, '&Cancelar', '&Sair');
end;

function TfrmFn05.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin

         if not RetornaContaCorrenteCaixa(edtContaCorrente, DBText1) then
            Result := False;
      end;

      02:
      begin
         if not RetornaCentroCusto(edtCentroCusto, DBText2) then
            Result := False;
      end;

      03:
      begin
         if not Retorna_Conta(edtConta, DBText3) then
            Result := False;
      end;

      04:
      begin
         if edtDataFluxo.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a data de fluxo de caixa', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      05:
      begin
        if edtContaCorrente.Field.AsString = '' then
        begin
           Application.MessageBox('Informe a conta corrente', 'Informação', MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
      end;

      06:
      begin
        if edtCentroCusto.Field.AsString = '' then
        begin
           Application.MessageBox('Informe o centro de custo', 'Informação', MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
      end;

      07:
      begin
        if edtConta.Field.AsString = '' then
        begin
           Application.MessageBox('Informe a conta', 'Informação', MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
      end;

      08:
      begin
        if edtDocumento.Text = '' then
        begin
           Application.MessageBox('Informe o Nº do Documento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
      end;

      09:
      begin
        if cbxTipo.ItemIndex = -1 then
        begin
           Application.MessageBox('Informe se é débito ou crédito', 'Informação', MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
      end;

      10:
      begin
        if edtValor.Field.AsFloat = 0 then
        begin
           Application.MessageBox('Informe o Valor', 'Informação', MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
      end;

      11:
      begin
        if edtDataLan.Field.AsString = '' then
        begin
           Application.MessageBox('Informe a data de lançamento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
           Result := False;
        end;
      end;
   end;
end;

procedure TfrmFn05.SpeedButton1Click(Sender: TObject);
begin
   edtContaCorrente.SetFocus;

   ConsultaContaBanco(edtContaCorrente);
end;

procedure TfrmFn05.SpeedButton2Click(Sender: TObject);
begin
   edtCentroCusto.SetFocus;

   ConsultaCentroCusto(edtCentroCusto);
end;

procedure TfrmFn05.SpeedButton3Click(Sender: TObject);
begin
   edtConta.SetFocus;

   ConsultaConta(edtConta);
end;

procedure TfrmFn05.btnGravarClick(Sender: TObject);
Var
 Data_Fluxo : String;
 Valor      : Double;
begin
   if (not Cheka(03)) or
      (not Cheka(04)) or
      (not Cheka(05)) or
      (not Cheka(06)) or
      (not Cheka(07)) or
      (not Cheka(08)) or
      (not Cheka(09)) or
      (not Cheka(10)) or
      (not Cheka(11)) then
      Abort;

   Historico1 := '';
   Data_Fluxo := '';
   Valor      := 0;

   if dmFn05.cdsConlan.State = dsInsert then
   begin
      dmFn05.cdsConlanCODIGO_CONLAN.AsInteger   := Busca_Proximo('P_CONLAN', 'CODIGO_CONLAN');
      dmFn05.cdsConlanCOD_EMPRESA.AsString      := CodigoEmpresa1;
      dmFn05.cdsConlanDOCUMENTO_CONLAN.AsString := edtDocumento.Text;

      Data_Fluxo := edtDataFluxo.Field.AsString;

      if cbxTipo.ItemIndex = 0 then
      begin
         dmFn05.cdsConlanTIPO_CONLAN.AsString := 'C';
         Historico1 := 'Incluiu Credito - ' + edtValor.Text + '- Movimento -' + edtDataFluxo.Field.AsString;
      end
      else
      begin
         dmFn05.cdsConlanTIPO_CONLAN.AsString := 'D';
         Historico1 := 'Incluiu Debito - ' + edtValor.Text + '- Movimento -' + edtDataFluxo.Field.AsString;
      end;

      dmFn05.cdsConlanORIGEM_CONLAN.AsString := 'V';

      GravaLogUser(Self, Historico1);
   end;

   dmFn05.cdsConlan.Post;

   dmFn05.cdsConlan.ApplyUpdates(0);

   dmFn05.cdsResban.Close;
   dmFn05.cdsResban.Params.ParamByName('CHAVE').AsString   := Data_Fluxo + '-' + StrZero(edtContaCorrente.Text, 3); // Chave
   dmFn05.cdsResban.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmFn05.cdsResban.Open;

   if dmFn05.cdsResban.IsEmpty then
   begin
      dmFn05.cdsResban.Append;

      dmFn05.cdsResbanCHAVE_RESBAN.AsString := Data_Fluxo + '-' + StrZero(edtContaCorrente.Field.AsString, 3);

      if cbxTipo.ItemIndex = 0 then
         dmFn05.cdsResbanCREDITO_RESBAN.AsFloat := edtValor.Field.AsFloat
      else
         dmFn05.cdsResbanDEBITO_RESBAN.AsFloat  := edtValor.Field.AsFloat;

      dmFn05.cdsResbanCOD_EMPRESA.AsString := CodigoEmpresa1;

      dmFn05.cdsResban.Post;
   end
   else
   begin
      if cbxTipo.ItemIndex = 0 then
         Valor := dmFn05.cdsResbanCREDITO_RESBAN.AsFloat
      else
         Valor := dmFn05.cdsResbanDEBITO_RESBAN.AsFloat;

      dmFn05.cdsResban.Edit;

      if cbxTipo.ItemIndex = 0 then
         dmFn05.cdsResbanCREDITO_RESBAN.AsFloat := Valor + edtValor.Field.AsFloat
      else
         dmFn05.cdsResbanDEBITO_RESBAN.AsFloat  := Valor + edtValor.Field.AsFloat;

      dmFn05.cdsResban.Post;
   end;

   dmFn05.cdsResban.ApplyUpdates(0);

   Application.MessageBox('Transação efetuada com sucesso', 'Informção', MB_OK+MB_ICONEXCLAMATION);
end;

procedure TfrmFn05.btnSairClick(Sender: TObject);
begin
   if btnSair.Caption = '&Cancelar' then
   begin
      dmFn05.cdsConlan.Close;
      dmFn05.cdsConlan.Params.ParamByName('EMPRESA').AsInteger := 0;
      dmFn05.cdsConlan.Open;

      edtDocumento.Clear;
   end
   else
      Close;
end;

procedure TfrmFn05.edtDocumentoExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtDocumento.Text <> '' then
   begin
      dmFn05.cdsConlan2.Close;
      dmFn05.cdsConlan2.Params.ParamByName('DOCUMENTO').AsString := edtDocumento.Text;
      dmFn05.cdsConlan2.Params.ParamByName('EMPRESA').AsString   := CodigoEmpresa1;
      dmFn05.cdsConlan2.Open;

      if dmFn05.cdsConlan2.RecordCount > 0 then
      begin
         Application.MessageBox('Já foi informado um documento com este mesmo número', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtDocumento.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn05.LimpaStatusBar;
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

procedure TfrmFn05.edtDataFluxoEnter(Sender: TObject);
begin
   if (not(dmFn05.cdsConlan.State in [dsInsert, dsEdit])) then
   begin
      dmFn05.cdsConlan.Close;
      dmFn05.cdsConlan.Params.ParamByName('EMPRESA').AsInteger := 0;
      dmFn05.cdsConlan.Open;

      dmFn05.cdsConlan.Append;
   end;

   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn05.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn05.edtContaCorrenteEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código da Conta Corrente \ Caixa ';
   StatusBar1.Panels[0].Width := 230;

   StatusBar1.Panels[1].Text := ' [Alt+F7] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn05.edtContaCorrenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de conta corrente\ caixa
   if (Shift = [ssAlt]) and (Key = 118) then
      SpeedButton1.Click;

   if Key = 13 then
   begin
      if dmFn05.cdsConlan.State in [dsInsert, dsEdit] then
      begin
         if edtContaCorrente.Text = '' then
         begin
            DBText1.Field.AsString := '';
            Exit;
         end
         else
         begin
            if not Cheka(01) then
               edtContaCorrente.SetFocus;
         end;
      end;
   end;
end;

procedure TfrmFn05.edtCentroCustoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Centro de Custo ';
   StatusBar1.Panels[0].Width := 200;

   StatusBar1.Panels[1].Text := ' [Alt+F9] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn05.edtCentroCustoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de centro de custo
   if (Shift = [ssAlt]) and (Key = 120) then
      SpeedButton2.Click;

   if Key = 13 then
   begin
      if dmFn05.cdsConlan.State in [dsInsert, dsEdit] then
      begin
         if edtCentroCusto.Text = '' then
         begin
            DBText2.Field.AsString := '';
            Exit;
         end
         else
         begin
            if not Cheka(02) then
               edtCentroCusto.SetFocus;
         end;
      end;
   end;
end;

procedure TfrmFn05.edtContaEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código da Conta ';
   StatusBar1.Panels[0].Width := 160;

   StatusBar1.Panels[1].Text := ' [Alt+F10] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn05.edtContaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // chama consulta de Conta
   if (Shift = [ssAlt]) and (Key = 121) then
      SpeedButton3.Click;

   if Key = 13 then
   begin
      if dmFn05.cdsConlan.State in [dsInsert, dsEdit] then
      begin
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
      end;
   end;
end;

procedure TfrmFn05.edtDocumentoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn05.cbxTipoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [D] » Débito ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [C] » Crédito ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn05.edtValorEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn05.btnIncluirClick(Sender: TObject);
begin
   dmFn05.cdsConlan.Append;

   edtDocumento.Clear;

   edtDataFluxo.Field.AsDateTime := DataSystem1;

   edtDataFluxo.SetFocus;
end;

procedure TfrmFn05.FormShow(Sender: TObject);
begin
   dmFn05.cdsConlan.Close;
   dmFn05.cdsConlan.Params.ParamByName('EMPRESA').AsInteger := 0;
   dmFn05.cdsConlan.Open;
end;

procedure TfrmFn05.edtDataLanEnter(Sender: TObject);
begin
   edtDataLan.Field.AsDateTime := DataSystem1;
end;

function TfrmFn05.Retorna_Conta(Codigo : TCustomEdit; Descricao : TCustomLabel): Boolean;
Var Sql1 : String;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   Sql1 := ' select c.codigo_conta, c.descricao_conta, c.tipo_conta ' +
           ' from e_conta c ' +
           ' where c.codigo_conta = ' + QuotedStr(Codigo.Text);

   dmFn05.qryConsulta.Close;
   dmFn05.qryConsulta.SQL.Clear;
   dmFn05.qryConsulta.SQL.Add(Sql1);

   dmFn05.qryConsulta.Open;

   if dmFn05.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Conta não cadastrada', 'Informação', MB_OK+MB_ICONEXCLAMATION);

      if Descricao is TDBText then
         TDBText(Descricao).Field.AsString := '';      Result := False;
      Exit;
   end;

   if dmFn05.qryConsulta.FieldByName('tipo_conta').AsString = 'T' then
   begin
      Application.MessageBox(' Conta Título não pode ter lançamento','Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;

   if (dmFn05.qryConsulta.FieldByName('tipo_conta').AsString = 'R') and (cbxTipo.ItemIndex = 1) then
   begin
      Application.MessageBox(' Conta é Crédito','Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;

   if (dmFn05.qryConsulta.FieldByName('tipo_conta').AsString = 'D') and (cbxTipo.ItemIndex = 0) then
   begin
      Application.MessageBox(' Conta é Débito','Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;

   if Descricao is TDBText then
      TDBText(Descricao).Field.AsString := dmFn05.qryConsulta.FieldByname('descricao_conta').AsString;
end;

procedure TfrmFn05.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

end.
