unit uVd1102;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, JvExStdCtrls, JvEdit,
  JvValidateEdit, jpeg, ExtCtrls, Grids, DBGrids, DB, StrUtils;

type
  TfrmVd1102 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel9: TPanel;
    Image7: TImage;
    GroupBox10: TGroupBox;
    lblDataCaixa: TLabel;
    GroupBox11: TGroupBox;
    lblTurnoCaixa: TLabel;
    GroupBox12: TGroupBox;
    edtECF: TJvValidateEdit;
    GroupBox13: TGroupBox;
    SpeedButton4: TSpeedButton;
    cmbOperador: TDBLookupComboBox;
    edtNomeOperador: TEdit;
    edtCodOperador: TJvValidateEdit;
    grdVendas: TDBGrid;
    Panel10: TPanel;
    btnConcluir: TBitBtn;
    btnLocalizar2: TBitBtn;
    btnExcluir2: TBitBtn;
    btnAtualizar: TBitBtn;
    btnSair2: TBitBtn;
    edtLocalizar: TEdit;
    btnLocalizar: TBitBtn;
    dsBalcao: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure edtCodOperadorExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnConcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSair2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnLocalizar2Click(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    function IsNumber2(Texto: String): Boolean;
    function IsString2(Texto: String): Boolean;
    procedure btnExcluir2Click(Sender: TObject);
    procedure Botoes(pStatus1: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVd1102: TfrmVd1102;

implementation

uses udmVd1102, uGlobal, uConcluiVendaBalcao, uDmVd1101, uProcess;

{$R *.dfm}

procedure TfrmVd1102.FormShow(Sender: TObject);
begin
   dmVd1102.cdsCaixa.Close;
   dmVd1102.cdsCaixa.Params.ParamByName('CAIXA')   .AsString := NumeroCaixa1;
   dmVd1102.cdsCaixa.Params.ParamByName('EMPRESA') .AsString := CodigoEmpresa1;
   dmVd1102.cdsCaixa.Open;

   lblDataCaixa.Caption  := Copy(dmVd1102.cdsCaixaCHAVE_CAIXA.Value,1,8);
   lblTurnoCaixa.Caption := Copy(dmVd1102.cdsCaixaCHAVE_CAIXA.Value,10,1);

   if edtECF.Value = 0 then
      edtECF.Value := 1;

   dmVd1102.cdsBalcao.Open;
end;

procedure TfrmVd1102.edtCodOperadorExit(Sender: TObject);
begin
   if edtCodOperador.Text <> '' then
   begin
      dmVd1102.cdsVendedor.Close;
      dmVd1102.cdsVendedor.Params.ParamByName('CODVEN').AsInteger := edtCodOperador.Value;
      dmVd1102.cdsVendedor.Open;

      if not dmVd1102.cdsVendedor.IsEmpty then
         edtNomeOperador.Text := dmVd1102.cdsVendedorNOME_VENDEDOR.Value
      else
      begin
         Application.MessageBox('Operador não cadastrado','Atenção',MB_ICONERROR);
         edtCodOperador.SetFocus;
         Abort;
      end;

      btnConcluir.Enabled   := True;
      btnLocalizar2.Enabled := True;
      btnExcluir2.Enabled   := True;
      btnAtualizar.Enabled  := True;
      grdVendas.Visible     := True;

      grdVendas.SetFocus;
   end;
end;

procedure TfrmVd1102.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if Key = #13 then
   begin
      key:=#0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfrmVd1102.btnConcluirClick(Sender: TObject);
begin
   if not dmVd1102.cdsBalcao.IsEmpty then
   begin
      dmVd1102.cdsBalcaoItens.Close;
      dmVd1102.cdsBalcaoItens.Params.ParamByName( 'CODVEN' ).AsInteger := dmVd1102.cdsBalcaoCODIGO_BALCAO.AsInteger;
      dmVd1102.cdsBalcaoItens.Open;

      frmConcluiVendaBalcao := TfrmConcluiVendaBalcao.Create ( Self );
      frmConcluiVendaBalcao.ShowModal;

      grdVendas.SetFocus;
   end
   else
      Application.MessageBox('Não existe venda pendentes para ser concluída.','Atenção', MB_OK + MB_ICONEXCLAMATION);
end;

procedure TfrmVd1102.FormCreate(Sender: TObject);
begin
   dmVd1102 := tdmVd1102.Create( Self );
end;

procedure TfrmVd1102.btnSair2Click(Sender: TObject);
begin
   Close
end;

procedure TfrmVd1102.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if Application.MessageBox('Confirma a saída?','Saída',MB_YESNO+MB_ICONQUESTION) = id_no then
         abort
      else
      begin
         if dmVd1102 <> nil then
            FreeAndNil(dmVd1102);
      end;
end;

procedure TfrmVd1102.btnAtualizarClick(Sender: TObject);
begin
   dmVd1102.cdsBalcao.Refresh;
end;

procedure TfrmVd1102.btnLocalizar2Click(Sender: TObject);
begin
   if dmVd1102.cdsBalcao.IsEmpty then
   begin
      Application.MessageBox('Não exsite nenhuma venda pendente.','Atenção', MB_OK + MB_ICONEXCLAMATION);
      exit;
   end;

   edtLocalizar.Visible := True;
   btnLocalizar.Visible := True;

   edtLocalizar.Text := '';
   edtLocalizar.SetFocus;
end;

procedure TfrmVd1102.btnLocalizarClick(Sender: TObject);
var
   Campo: String;
begin
   if edtLocalizar.Text <> '' then
   begin
      if IsNumber2( LeftStr(Trim(edtLocalizar.Text),1) ) then
         Campo := 'VENDEDOR_BALCAO'
      else if IsString2( LeftStr(Trim(edtLocalizar.Text),1) ) then
         Campo := 'NOMECLIENTE_BALCAO';

      if not dmVd1102.cdsBalcao.Locate(Campo,edtLocalizar.Text,[loCaseInsensitive,loPartialKey]) then
         Application.MessageBox('Não Localizado','');
   end;

   btnLocalizar2.SetFocus;

   edtLocalizar.Visible := False;
   btnLocalizar.Visible := False;
end;

function TfrmVd1102.IsString2(Texto: String): Boolean;
var Caracter1: Char;
begin
   Result := False;

   if Texto = '' then
      Abort
   else
      Texto := Trim(Texto);

   Caracter1 := Texto[1];

   if (Caracter1 in ['A'..'Z','a'..'z', '-']) then
      Result := True;
end;

function TfrmVd1102.IsNumber2(Texto: String): Boolean;
var Caracter1: Char;
begin
   Result := False;

   if Texto = '' then
      Abort
   else
      Texto := Trim(Texto);

   Caracter1 := Texto[1];

   if (Caracter1 in ['0'..'9']) then
      Result := True;
end;

procedure TfrmVd1102.Botoes(pStatus1: Boolean);
begin
   btnConcluir.Enabled  := pStatus1;
   btnLocalizar.Enabled := pStatus1;
   btnExcluir2.Enabled  := pStatus1;
   btnAtualizar.Enabled := pStatus1;
   btnSair2.Enabled     := pStatus1;
end;

procedure TfrmVd1102.btnExcluir2Click(Sender: TObject);
begin
   if dmVd1102.cdsBalcao.IsEmpty then
   begin
      Application.MessageBox('Não exsite venda pendente para ser excluida.','Atenção', MB_OK + MB_ICONEXCLAMATION);
      exit;
   end;

   // Verifica se usuário possui acesso
   if not Verifica_acesso(318) then
      exit;

    if Application.MessageBox(PChar('Confirma a exclusão da venda: ' + dmVd1102.cdsBalcaoCODIGO_BALCAO.AsString),'Atenção',
                             MB_ICONQUESTION+MB_YESNO) = mrYes then
   begin
      Botoes(False);

      dmVd1102.cdsBalcao.Edit;

      dmVd1102.cdsBalcaoEXCLUSAO_BALCAO.Value := xData;

      dmVd1102.cdsBalcao.Post;
      dmVd1102.cdsBalcao.ApplyUpdates(0);

      GravaLogUser(Self, 'Apagou venda balcao pendente, venda nr. ' + dmVd1102.cdsBalcaoCODIGO_BALCAO.AsString);

      // Retorna mercadorias para o estoque
      dmVd1101 := TdmVd1101.Create(Self);

      dmVd1102.cdsBalcaoItens.Close;
      dmVd1102.cdsBalcaoItens.Params.ParamByName('CODVEN').AsInteger := dmVd1102.cdsBalcaoCODIGO_BALCAO.AsInteger;
      dmVd1102.cdsBalcaoItens.Open;

      frmProcess := TfrmProcess.Create(Self);
      frmProcess.ProgressBar1.Max := dmVd1102.cdsBalcaoItens.RecordCount;
      frmProcess.Show;

      dmVd1102.cdsBalcaoItens.First;
      while not dmVd1102.cdsBalcaoItens.Eof do
      begin
         Baixa_qtd_estoque(dmVd1102.cdsBalcaoItensPRODUTO_IBALCAO.AsInteger,
                           dmVd1102.cdsBalcaoItensQUANTIDADE_IBALCAO.AsFloat,
                           dmVd1102.cdsBalcaoItensGRADE_IBALCAO.AsString);

         frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
         frmProcess.Refresh;

         dmVd1102.cdsBalcaoItens.Next;
      end;

      frmProcess.close;
      FreeAndNil(frmProcess);
      FreeAndNil(dmVd1101);

      // Atualiza arquivo de clientes
      dmVd1102.cdsClientes.Open;
      dmVd1102.cdsClientes.IndexFieldNames := 'CODIGO_CLIENTE';
      dmVd1102.cdsCaixa.IndexFieldNames    := 'CODIGO_CAIXA';

      if dmVd1102.cdsClientes.FindKey([dmVd1102.cdsBalcaoCLIENTE_BALCAO.Value]) then
      begin
         if dmVd1102.cdsCaixa.FindKey([dmVd1102.cdsBalcaoCPAGAMENTO_BALCAO.AsFloat]) then
         begin
            if dmVd1102.cdsCaixaCODIGO_CAIXA.Value <> 1 then
            begin
               dmVd1102.cdsClientes.Edit;

               dmVd1102.cdsClientesUTILIZADO_CLIENTE.AsFloat := dmVd1102.cdsClientesUTILIZADO_CLIENTE.AsFloat - dmVd1102.cdsBalcaoVALORNOTA_BALCAO.AsFloat;

               dmVd1102.cdsClientes.Post;
               dmVd1102.cdsClientes.ApplyUpdates(0);
            end;
         end;
      end;

      dmVd1102.cdsBalcao.Refresh;

      Application.MessageBox('Concluído','',MB_ICONINFORMATION);

      Botoes(True);
   end;
end;

procedure TfrmVd1102.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
