{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN003)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> Fl�vio Scariot
 DATA DE CONCEP��O    --> 15/05/2007
 FINALIDADE           --> Cadastro de Cheques de Clientes
 COMENTARIO           --> Foi adicionado um campo na tabela P_PREDATAD, CAMPO_BUSCA
                          se CAMPO_BUSCA = 'A' o cheque est� aberto se CAMPO_BUSCA = 'F'
                          o cheque foi baixado
 *******************************************************************************}

unit uFn0301_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit, DBClient,
  JvValidateEdit, Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls, DB;

type
  TfrmFn0301_01 = class(TForm)
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtEmitente: TDBEdit;
    Label8: TLabel;
    edtCheque: TDBEdit;
    Label9: TLabel;
    edtValor: TDBEdit;
    edtEmissao: TJvDBDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    edtBomPara: TJvDBDateEdit;
    edtDevolucao1: TJvDBDateEdit;
    edtDevolucao2: TJvDBDateEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtLiquidacao: TJvDBDateEdit;
    edtFornecedor: TDBEdit;
    edtObservacao: TDBEdit;
    edtNVenda: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DataSource1: TDataSource;
    edtAlinea: TEdit;
    Label18: TLabel;
    cbxTipoPessoa: TComboBox;
    edtCliente: TDBEdit;
    edtBanco: TDBEdit;
    edtCPF: TDBEdit;
    edtFone: TDBEdit;
    edtAgencia: TDBEdit;
    edtConta: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure edtCPFEnter(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxTipoPessoaExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure edtEmitenteEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtChequeExit(Sender: TObject);
  private
    { Private declarations }
    function Cheka(Campo : Integer) : Boolean;
  public
    { Public declarations }
    Gravar1 : Boolean;
  end;

var
  frmFn0301_01: TfrmFn0301_01;

implementation

uses udmFn0301, uConsulta, uGlobal, uFn0301, StrUtils;

{$R *.dfm}

function TfrmFn0301_01.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin
         if not RetornaCliente(edtCliente, DBText1) then
            Result := False;
      end;

      02:
      begin
         if edtBanco.Field.AsInteger = 0 then
         begin
            Application.MessageBox('Informe o Banco', 'Inform��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      03:
      begin
         if edtAgencia.Field.AsString = '' then
         begin
            Application.MessageBox('Informe o n�mero da Ag�ncia', 'Inform��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      04:
      begin
         if edtConta.Field.AsString = '' then
         begin
            Application.MessageBox('Informe o n�mero da Conta', 'Inform��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      05:
      begin
         if edtCheque.Field.AsString = '' then
         begin
            Application.MessageBox('Informe o n�mero do Cheque', 'Inform��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      06:
      begin
         if edtValor.Field.AsFloat = 0 then
         begin
            Application.MessageBox('Informe o valor', 'Inform��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      07:
      begin
         if edtEmissao.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a data da emiss�o', 'Inform��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;


      08:
      begin
         if edtBomPara.Field.AsString = '' then
         begin
            Application.MessageBox('Informe quando o cheque poder� ser descontado', 'Inform��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;
   end;
end;

procedure TfrmFn0301_01.FormShow(Sender: TObject);
begin
   if dmFn0301.cdsGridCGC.AsString <> '' then
   begin
      if Length(dmFn0301.cdsGridCGC.AsString) <= 15 then
         cbxTipoPessoa.ItemIndex := 0
      else
         cbxTipoPessoa.ItemIndex := 1;
   end;

   Gravar1 := False;

   if not frmFn0301.Consultar1 then
      edtCliente.SetFocus;
end;

procedure TfrmFn0301_01.SpeedButton1Click(Sender: TObject);
begin
   edtCliente.SetFocus;

   ConsultaCliente(edtCliente);
end;

procedure TfrmFn0301_01.edtClienteExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtCliente.Field.AsString = '' then
      edtCliente.Field.AsInteger := 0;

   if edtCliente.Field.AsInteger > 0 then
   begin
      if not Cheka(01) then // se cliente n�o estiver cadastrado
      begin
         edtCliente.Field.AsInteger := 0;
         edtCPF.SetFocus;
      end
      else
      begin
         // verifica se o cliente est� cadastrado na tabela de cheques (P_PREDATAD)
         dmFn0301.cdsConsultaCliente.Close;
         dmFn0301.cdsConsultaCliente.Params.ParamByName('CLIENTE').AsInteger := edtCliente.Field.AsInteger;
         dmFn0301.cdsConsultaCliente.Open;

         if not dmFn0301.cdsConsultaCliente.IsEmpty then
         begin
            edtCPF.Field.AsString     := dmFn0301.cdsConsultaClienteCGC.AsString;

            edtFone.Field.AsString    := dmFn0301.cdsConsultaClienteTELEFONE.AsString;

            edtBanco.Field.AsInteger  := dmFn0301.cdsConsultaClienteBANCO.AsInteger;

            edtAgencia.Field.AsString := dmFn0301.cdsConsultaClienteAGENCIA.AsString;

            edtConta.Field.AsString   := dmFn0301.cdsConsultaClienteCONTA.AsString;

            edtEmitente.SetFocus;
         end;
      end;
   end;
end;

procedure TfrmFn0301_01.edtCPFExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtCPF.Field.AsString <> '' then
   begin
      // se o dono do cheque n�o for cliente cadastrado, verifica pelo n�mero do
      // CPF ou CGC caso seja empresa, se h� algum cheque lan�ado na tabela de cheques (P_PREDATAD)
      // que coincida com esse n�mero de documento
      dmFn0301.cdsConsultaCPF.Close;
      dmFn0301.cdsConsultaCPF.Params.ParamByName('CPF').AsString := edtCPF.Field.AsString;
      dmFn0301.cdsConsultaCPF.Open;

      if not dmFn0301.cdsConsultaCPF.IsEmpty then
      begin
         edtFone.Field.AsString    := dmFn0301.cdsConsultaCPFTELEFONE.AsString;

         edtBanco.Field.AsInteger  := dmFn0301.cdsConsultaCPFBANCO.AsInteger;

         edtAgencia.Field.AsString := dmFn0301.cdsConsultaCPFAGENCIA.AsString;

         edtConta.Field.AsString   := dmFn0301.cdsConsultaCPFCONTA.AsString;

         edtEmitente.Field.AsString := dmFn0301.cdsConsultaCPFEMITENTE.AsString;
      end;

      edtEmitente.SetFocus;
   end;
end;

procedure TfrmFn0301_01.edtCPFEnter(Sender: TObject);
begin
   if cbxTipoPessoa.ItemIndex = 0 then // Pessoa F�sica
   begin
      if (dmFn0301.cdsGrid.Active) and (dmFn0301.cdsGrid.State = dsInsert) then
         dmFn0301.cdsGridCGC.EditMask := '999\.999\.999\-99;1; ';
   end;

   if cbxTipoPessoa.ItemIndex = 1 then // Pessoa Jur�dica
   begin
      if (dmFn0301.cdsGrid.Active) and (dmFn0301.cdsGrid.State = dsInsert) then
         dmFn0301.cdsGridCGC.EditMask := '99\.999\.999\/9999\-99;1; ';
   end;
end;

procedure TfrmFn0301_01.btnGravarClick(Sender: TObject);
Var Cheque1 : String;
begin
   if (not Cheka(02)) or
      (not Cheka(03)) or
      (not Cheka(04)) or
      (not Cheka(05)) or
      (not Cheka(06)) or
      (not Cheka(07)) or
      (not Cheka(08)) then
      Abort;

   if (dmFn0301.cdsGrid.Active) and (dmFn0301.cdsGrid.State in [dsInsert]) then
   begin
      Gravar1 := True;

      dmFn0301.cdsGridCODIGO_PREDATAD.AsInteger := Busca_Proximo('P_PREDATAD', 'CODIGO_PREDATAD');

      if dmFn0301.cdsGrid.State = dsInsert then
         Cheque1 := 'Incluiu Cheque Predatado, N� ' + dmFn0301.cdsGridCHEQUE.AsString + ' - Banco ' + dmFn0301.cdsGridBANCO.AsString + ' - Emitente - ' + dmFn0301.cdsGridEMITENTE.AsString;

      GravaLogUser(Self, Cheque1);

      dmFn0301.cdsGrid.Post;

      dmFn0301.cdsGrid.ApplyUpdates(0);

      Application.MessageBox('Cheque cadastrado com sucesso', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
   end;

   if (dmFn0301.cdsGrid.Active) and (dmFn0301.cdsGrid.State in [dsEdit]) then
   begin
      Gravar1 := True;

      Cheque1 := 'Alterou Cheque Predatado, N� ' + dmFn0301.cdsGridCHEQUE.AsString + ' - Banco ' + dmFn0301.cdsGridBANCO.AsString + ' - Emitente - ' + dmFn0301.cdsGridEMITENTE.AsString;

      GravaLogUser(Self, Cheque1);

      dmFn0301.cdsGrid.Post;

      dmFn0301.cdsGrid.ApplyUpdates(0);

      Application.MessageBox('Cheque Alterado com sucesso', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
   end;

   Close;
end;

procedure TfrmFn0301_01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn0301_01.cbxTipoPessoaExit(Sender: TObject);
begin
   if cbxTipoPessoa.ItemIndex = -1 then
   begin
      cbxTipoPessoa.SetFocus;
      Exit;
   end;
end;

procedure TfrmFn0301_01.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn0301_01.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
   btnGravar.Enabled := (dmFn0301.cdsGrid.Active) and
                        (dmFn0301.cdsGrid.State in [dsInsert, dsEdit]);
end;

procedure TfrmFn0301_01.edtEmitenteEnter(Sender: TObject);
begin
   if dmFn0301.cdsGridNOME_CLIENTE.AsString <> '' then
      dmFn0301.cdsGridEMITENTE.AsString := dmFn0301.cdsGridNOME_CLIENTE.AsString;
end;

procedure TfrmFn0301_01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if dmFn0301.cdsGrid.State = dsInsert then
   begin
      if Gravar1 = False then
         dmFn0301.cdsGrid.Delete;
   end;
end;

procedure TfrmFn0301_01.edtChequeExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if dmFn0301.cdsGrid.State = dsInsert then
   begin
      if edtCheque.Field.AsString <> '' then
      begin
         dmFn0301.cdsConsultaCheque.Close;
         dmFn0301.cdsConsultaCheque.Params.ParamByName('CHEQUE').AsString := edtCheque.Field.AsString;
         dmFn0301.cdsConsultaCheque.Open;

         if not dmFn0301.cdsConsultaCheque.IsEmpty then
         begin
            Application.MessageBox('Este cheque j� est� cadastrado', 'Inform��o', MB_OK+MB_ICONEXCLAMATION);
            edtCheque.SetFocus;
            Exit;
         end;
      end;
   end;
end;

end.
