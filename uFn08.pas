unit uFn08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppCtrls, ppPrnabl, ppClass,
  ppBands, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmFn08 = class(TForm)
    Panel1: TPanel;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtContaOrigem: TJvValidateEdit;
    Edit1: TEdit;
    edtContaDestino: TJvValidateEdit;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox3: TGroupBox;
    edtDataFluxo: TJvDateEdit;
    GroupBox4: TGroupBox;
    edtDocumento: TEdit;
    GroupBox5: TGroupBox;
    edtValor: TJvValidateEdit;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    MemoOrigem: TMemo;
    MemoDestino: TMemo;
    btnTransferir: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ppLine5: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtContaOrigemExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtContaDestinoExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    function Rotorna_ContaCorrente(Codigo, Descricao : TCustomEdit) : Boolean;
    procedure Controla_Botoes(Transferir, Gravar, Sair : Boolean);
    procedure Calcula_Saldo;
    function Cheka(Campo : Integer) : Boolean;
  public
    { Public declarations }
    Saldo_Atual1 : Double;
    Nome_cidade,
    Nome_Empresa : String;
  end;

var
  frmFn08: TfrmFn08;

implementation

uses udmFn08, uConsulta, uGlobal, StrUtils;

{$R *.dfm}

procedure TfrmFn08.FormCreate(Sender: TObject);
begin
   dmFn08 := TdmFn08.Create(Self);
end;

procedure TfrmFn08.FormShow(Sender: TObject);
begin
   Nome_cidade  := '';

   Nome_Empresa := '';

   btnTransferir.SetFocus;

   edtDataFluxo.Date := DataSystem1;

   dmFn08.qryConsulta.Close;
   dmFn08.qryConsulta.SQL.Clear;
   dmFn08.qryConsulta.SQL.Add('select * from empresa where codigo_emp = '+ CodigoEmpresa1);

   dmFn08.qryConsulta.Open;

   if not dmFn08.qryConsulta.IsEmpty then
   begin
      Nome_Empresa := dmFn08.qryConsulta.FieldByName('EMPRESA').AsString;

      Nome_cidade  := dmFn08.qryConsulta.FieldByName('CIDADE_EMP').AsString;
   end;

   Controla_Botoes(True, False, False);
end;

function TfrmFn08.Rotorna_ContaCorrente(Codigo,
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

   dmFn08.qryConsulta.Close;
   dmFn08.qryConsulta.SQL.Clear;
   dmFn08.qryConsulta.SQL.Add(' select b.codigo_banco, b.descricao_banco, b.cod_empresa ' +
                              ' from p_banco b ' +
                              ' where b.codigo_banco = ' + Codigo.Text +
                              ' and b.cod_empresa = ' + CodigoEmpresa1);

   dmFn08.qryConsulta.Open;

   if dmFn08.qryConsulta.IsEmpty then
   begin
   
      Application.MessageBox('Conta Corrente / Caixa não cadastrada', 'Informação', MB_OK+MB_ICONEXCLAMATION);

      if Descricao is TEdit then
      Descricao.Text := '';

      Result := False;
      Exit;
   end;

   if Descricao is TEdit then
      Descricao.Text := dmFn08.qryConsulta.FieldByname('descricao_banco').AsString;
end;

procedure TfrmFn08.edtContaOrigemExit(Sender: TObject);
begin
   if btnTransferir.Focused then
      Exit;

   Saldo_Atual1 := 0;

   if edtContaOrigem.Value > 0 then
   begin
      dmFn08.cdsBanco.Close;
      dmFn08.cdsBanco.Params.ParamByName('CODIGO_BANCO').AsInteger := edtContaOrigem.Value;
      dmFn08.cdsBanco.Params.ParamByName('EMPRESA').AsString     := CodigoEmpresa1;
      dmFn08.cdsBanco.Open;

      if not dmFn08.cdsBanco.IsEmpty then
      begin
         if dmFn08.cdsBancoLIMITE_BANCO.AsFloat > 0 then
         begin
            if Application.MessageBox('Deseja usar o limite da conta de Origem ?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
               Saldo_Atual1 := dmFn08.cdsBancoLIMITE_BANCO.AsFloat;
         end;
      end;

      Calcula_Saldo; // recalcular o saldo da conta

      //  pesquisa o resumo da conta

      dmFn08.cdsResban.Close;
      dmFn08.cdsResban.Params.ParamByName('CHAVE').AsString   := edtDataFluxo.EditText + '-' + StrZero(edtContaOrigem.EditText, 3);
      dmFn08.cdsResban.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn08.cdsResban.Open;

      if not dmFn08.cdsResban.IsEmpty then
      begin
         if Saldo_Atual1 <= 0 then
         begin
            Saldo_Atual1 := 0;
            Application.MessageBox(pChar('Conta não possui saldo para transferir, Saldo atual: ' + FloatToStr(Saldo_Atual1)), 'Informação', MB_OK+MB_ICONEXCLAMATION);
            edtContaOrigem.SetFocus;
            Exit;
         end;
      end
      else
      begin
         if Application.MessageBox('Movimento conta origem inexistente, deseja continuar', 'Atenção', MB_YESNO+MB_ICONEXCLAMATION) = mrNo then
            Exit;
      end;

      if not Rotorna_ContaCorrente(edtContaOrigem, Edit1) then
      begin
         edtContaOrigem.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn08.SpeedButton1Click(Sender: TObject);
begin
   edtContaOrigem.SetFocus;

   ConsultaContaBanco(edtContaOrigem);
end;

procedure TfrmFn08.edtContaDestinoExit(Sender: TObject);
begin
   if edtContaDestino.Value = edtContaOrigem.Value then
   begin
      edtContaDestino.SetFocus;
      Exit;
   end;

   if not Rotorna_ContaCorrente(edtContaDestino, Edit2) then
   begin
      edtContaDestino.SetFocus;
      Exit;
   end;
end;

procedure TfrmFn08.SpeedButton2Click(Sender: TObject);
begin
   edtContaDestino.SetFocus;

   ConsultaContaBanco(edtContaDestino);
end;

procedure TfrmFn08.Controla_Botoes(Transferir, Gravar, Sair: Boolean);
begin
   btnTransferir.Enabled := Transferir;
   btnGravar.Enabled     := Gravar;
   btnSair.Caption       := IfThen(Sair, '&Cancelar', '&Sair');
end;

procedure TfrmFn08.btnTransferirClick(Sender: TObject);
begin
   edtContaOrigem.SetFocus;

   Controla_Botoes(False, True, True);
end;

procedure TfrmFn08.btnSairClick(Sender: TObject);
begin
   if btnSair.Caption = '&Cancelar' then
   begin
      edtContaOrigem.Clear;

      Edit1.Clear;

      Edit2.Clear;

      edtContaDestino.Clear;

      edtDataFluxo.Date := DataSystem1;

      edtDocumento.Clear;

      edtValor.EditText := '';

      MemoOrigem.Clear;

      MemoDestino.Clear;

      Controla_Botoes(True, False, False);

      btnTransferir.SetFocus;
   end
   else
      Close;
end;

procedure TfrmFn08.edtValorExit(Sender: TObject);
begin
   if Saldo_Atual1 < edtValor.Value then
   begin
      if Application.MessageBox(pChar('O Saldo atual é: ' + FloatToStr(Saldo_Atual1) + ', Deseja continuar?'), 'Confirmação', MB_YESNO+MB_ICONEXCLAMATION) = mrNo then
      Exit;
   end;

   // forma historico padrao

   if edtValor.Value > 0 then
   begin
      MemoOrigem.Lines.Text  := UpperCase('Valor transferido para a conta ' + StrZero(edtContaDestino.EditText, 3));

      MemoDestino.Lines.Text := UpperCase('Valor recebido da conta ' + StrZero(edtContaOrigem.EditText, 3));
   end;
end;

procedure TfrmFn08.Calcula_Saldo;
Var
  Saldo_Anterior1,
  Credito1,
  Debito1 : Double;
begin
   Saldo_Anterior1 := 0;
   Credito1        := 0;
   Debito1         := 0;
   Saldo_Atual1    := 0;

   // calcula saldo atual da conta

   dmFn08.cdsConlan3.Close;
   dmFn08.cdsConlan3.Params.ParamByName('CONTA_CORRENTE').AsInteger := edtContaOrigem.Value;
   dmFn08.cdsConlan3.Params.ParamByName('DATA').AsDate              := edtDataFluxo.Date;
   dmFn08.cdsConlan3.Params.ParamByName('EMPRESA').AsString         := CodigoEmpresa1;
   dmFn08.cdsConlan3.Open;

   if not dmFn08.cdsConlan3.IsEmpty then
   begin
      while not dmFn08.cdsConlan3.Eof do
      begin
         if dmFn08.cdsConlan3TIPO_CONLAN.AsString = 'D' then
            Saldo_Anterior1 := Saldo_Anterior1 - dmFn08.cdsConlan3VALOR_CONLAN.AsFloat
         else
            Saldo_Anterior1 := Saldo_Anterior1 + dmFn08.cdsConlan3VALOR_CONLAN.AsFloat;

         dmFn08.cdsConlan3.Next;
      end;
   end;


   // calcula movimento do dia

   dmFn08.cdsConlan4.Close;
   dmFn08.cdsConlan4.Params.ParamByName('CONTA_CORRENTE').AsInteger := edtContaOrigem.Value;
   dmFn08.cdsConlan4.Params.ParamByName('DATA').AsDate              := edtDataFluxo.Date;
   dmFn08.cdsConlan4.Params.ParamByName('EMPRESA').AsString         := CodigoEmpresa1;
   dmFn08.cdsConlan4.Open;

   if not dmFn08.cdsConlan4.IsEmpty then
   begin
      while not dmFn08.cdsConlan4.Eof do
      begin
         if dmFn08.cdsConlan4TIPO_CONLAN.AsString = 'D' then
            Debito1 := Debito1 + dmFn08.cdsConlan4VALOR_CONLAN.AsFloat
         else
            Credito1 := Credito1 + dmFn08.cdsConlan4VALOR_CONLAN.AsFloat;

         dmFn08.cdsConlan4.Next;
      end;
   end;

   // pesquisa o resumo da conta, se encontrar grava os valores

   dmFn08.cdsResban.Close;
   dmFn08.cdsResban.Params.ParamByName('CHAVE').AsString   := edtDataFluxo.EditText + '-' + StrZero(edtContaOrigem.EditText, 3);
   dmFn08.cdsResban.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmFn08.cdsResban.Open;

   if not dmFn08.cdsResban.IsEmpty then
   begin
      dmFn08.cdsResban.Edit;

      dmFn08.cdsResbanANTERIOR_RESBAN.AsFloat := Saldo_Anterior1;
      dmFn08.cdsResbanDEBITO_RESBAN.AsFloat   := Debito1;
      dmFn08.cdsResbanCREDITO_RESBAN.AsFloat  := Credito1;

      dmFn08.cdsResban.Post;

      dmFn08.cdsResban.ApplyUpdates(0);
   end;

   Saldo_Atual1 := Saldo_Atual1 + Saldo_Anterior1 + Credito1 - Debito1;
end;

procedure TfrmFn08.btnGravarClick(Sender: TObject);
Var
  Historico1 : String;
begin
   if (not Cheka(01)) or
      (not Cheka(02)) or
      (not Cheka(03)) or
      (not Cheka(04)) or
      (not Cheka(05)) then
      Abort;

   Historico1 := '';

   if Application.MessageBox('Confirma transferência?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
   begin
      // atualiza tabela de resumo bancário

      dmFn08.cdsResban.Close;
      dmFn08.cdsResban.Params.ParamByName('CHAVE').AsString   := edtDataFluxo.EditText + '-' + StrZero(edtContaOrigem.EditText, 3);
      dmFn08.cdsResban.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn08.cdsResban.Open;

      if dmFn08.cdsResban.IsEmpty then
      begin
         dmFn08.cdsResban.Append;

         dmFn08.cdsResbanBANCO_RESBAN.AsInteger := edtContaOrigem.Value; 
         dmFn08.cdsResbanCHAVE_RESBAN.AsString  := edtDataFluxo.EditText + '-' + StrZero(edtContaOrigem.EditText, 3);
         dmFn08.cdsResbanDEBITO_RESBAN.AsFloat  := dmFn08.cdsResbanDEBITO_RESBAN.AsFloat + edtValor.Value;
         dmFn08.cdsResbanCOD_EMPRESA.AsString   := CodigoEmpresa1;
      end
      else
      begin
         dmFn08.cdsResban.Edit;

         dmFn08.cdsResbanDEBITO_RESBAN.AsFloat  := dmFn08.cdsResbanDEBITO_RESBAN.AsFloat + edtValor.Value;
         dmFn08.cdsResbanCOD_EMPRESA.AsString   := CodigoEmpresa1;
      end;

      dmFn08.cdsResban.Post;

      dmFn08.cdsResban.ApplyUpdates(0);


      dmFn08.cdsResban2.Close;
      dmFn08.cdsResban2.Params.ParamByName('CHAVE').AsString   := edtDataFluxo.EditText + '-' + StrZero(edtContaDestino.EditText, 3);
      dmFn08.cdsResban2.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn08.cdsResban2.Open;

      if dmFn08.cdsResban2.IsEmpty then
      begin
         dmFn08.cdsResban2.Append;

         dmFn08.cdsResban2BANCO_RESBAN.AsInteger := edtContaDestino.Value;
         dmFn08.cdsResban2CHAVE_RESBAN.AsString := edtDataFluxo.EditText + '-' + StrZero(edtContaDestino.EditText, 3);
         dmFn08.cdsResban2CREDITO_RESBAN.AsFloat := dmFn08.cdsResban2CREDITO_RESBAN.AsFloat + edtValor.Value;
         dmFn08.cdsResban2COD_EMPRESA.AsString  := CodigoEmpresa1;
      end
      else
      begin
         dmFn08.cdsResban2.Edit;

         dmFn08.cdsResban2CREDITO_RESBAN.AsFloat := dmFn08.cdsResban2CREDITO_RESBAN.AsFloat + edtValor.Value;
         dmFn08.cdsResban2COD_EMPRESA.AsString  := CodigoEmpresa1;
      end;

      dmFn08.cdsResban2.Post;

      dmFn08.cdsResban2.ApplyUpdates(0);

      // atualiza tabela de lancamento

      // conta de origem

      dmFn08.cdsConlan.Open;

      dmFn08.cdsConlan.Append;

      dmFn08.cdsConlanCODIGO_CONLAN.AsInteger     := Busca_Proximo('P_CONLAN', 'CODIGO_CONLAN');
      dmFn08.cdsConlanCORRENTE_CONLAN.AsInteger   := edtContaOrigem.Value;
      dmFn08.cdsConlanDATA_CONLAN.AsDateTime      := edtDataFluxo.Date;
      dmFn08.cdsConlanMOVIMENTO_CONLAN.AsDateTime := edtDataFluxo.Date;
      dmFn08.cdsConlanVALOR_CONLAN.AsFloat        := edtValor.Value;
      dmFn08.cdsConlanTIPO_CONLAN.AsString        := 'D';
      dmFn08.cdsConlanHISTORICO_CONLAN.AsString   := MemoOrigem.Lines.Text;
      dmFn08.cdsConlanDOCUMENTO_CONLAN.AsString   := edtDocumento.Text;
      dmFn08.cdsConlanORIGEM_CONLAN.AsString      := 'T';
      dmFn08.cdsConlanCOD_EMPRESA.AsString        := CodigoEmpresa1;

      dmFn08.cdsConlan.Post;

      dmFn08.cdsConlan.ApplyUpdates(0);

      Historico1 := 'Transferiu da Conta-' + Edit1.Text + ' - p/Conta - ' + Edit2.Text + ' Valor - ' + edtValor.EditText;

      GravaLogUser(Self, Historico1);


      // conta de destino

      dmFn08.cdsConlan2.Open;

      dmFn08.cdsConlan2.Append;

      dmFn08.cdsConlan2CODIGO_CONLAN.AsInteger     := Busca_Proximo('P_CONLAN', 'CODIGO_CONLAN');
      dmFn08.cdsConlan2CORRENTE_CONLAN.AsInteger   := edtContaDestino.Value;
      dmFn08.cdsConlan2DATA_CONLAN.AsDateTime      := edtDataFluxo.Date;
      dmFn08.cdsConlan2MOVIMENTO_CONLAN.AsDateTime := edtDataFluxo.Date;
      dmFn08.cdsConlan2VALOR_CONLAN.AsFloat        := edtValor.Value;
      dmFn08.cdsConlan2TIPO_CONLAN.AsString        := 'C';
      dmFn08.cdsConlan2HISTORICO_CONLAN.AsString   := MemoDestino.Lines.Text;
      dmFn08.cdsConlan2DOCUMENTO_CONLAN.AsString   := edtDocumento.Text;
      dmFn08.cdsConlan2ORIGEM_CONLAN.AsString      := 'T';
      dmFn08.cdsConlan2COD_EMPRESA.AsString        := CodigoEmpresa1;

      dmFn08.cdsConlan2.Post;

      dmFn08.cdsConlan2.ApplyUpdates(0);

      Controla_Botoes(True, False, False);

      if Application.MessageBox('Imprime a Transferência?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
         ppReport1.Print;
         

      edtContaOrigem.Clear;

      Edit1.Clear;

      Edit2.Clear;

      edtContaDestino.Clear;

      edtDataFluxo.Date := DataSystem1;

      edtDocumento.Clear;

      edtValor.EditText := '';

      MemoOrigem.Clear;

      MemoDestino.Clear;

      Controla_Botoes(True, False, False);

      btnTransferir.SetFocus;
   end;
end;

function TfrmFn08.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin
         if edtContaOrigem.Value = 0 then
         begin
            Application.MessageBox('Informe a conta de origem', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      02:
      begin
         if edtContaDestino.Value = 0 then
         begin
            Application.MessageBox('Informe a conta de destino', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      03:
      begin
         if edtDataFluxo.EditText = '' then
         begin
            Application.MessageBox('Informe a data de fluxo de caixa', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      04:
      begin
         if edtDocumento.Text = '' then
         begin
            Application.MessageBox('Informe o número do documento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      05:
      begin
         if edtValor.Value = 0 then
         begin
            Application.MessageBox('Informe o valor da transferência', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;
   end;
end;

procedure TfrmFn08.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := Nome_Empresa;
end;

procedure TfrmFn08.ppLabel3GetText(Sender: TObject; var Text: String);
begin
   Text := edtDocumento.Text;
end;

procedure TfrmFn08.ppLabel5GetText(Sender: TObject; var Text: String);
begin
   Text := edtContaOrigem.EditText + '  ' + Edit1.Text;
end;

procedure TfrmFn08.ppLabel7GetText(Sender: TObject; var Text: String);
begin
   Text := edtContaDestino.EditText + '  ' + Edit2.Text;
end;

procedure TfrmFn08.ppLabel9GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00', edtValor.Value);
end;

procedure TfrmFn08.ppLabel10GetText(Sender: TObject; var Text: String);
begin
   Text := 'Recebemos da Conta Origem a importância acima,';

end;

procedure TfrmFn08.ppLabel11GetText(Sender: TObject; var Text: String);
begin
   Text := UpperCase(Nome_cidade) + ', ' + DataExtenso(edtDataFluxo.Date);
end;

procedure TfrmFn08.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn08.ppLabel14GetText(Sender: TObject; var Text: String);
begin
   Text := 'conforme documento de transferência número ' + edtDocumento.Text;
end;

end.
