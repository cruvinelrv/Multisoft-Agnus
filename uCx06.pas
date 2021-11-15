{
   SISTEMA              --> MultWin
   PROGRAMA             --> uCx06 (uEst028)
   ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
   PROGRAMADOR          --> Flávio
   DATA DE CONCEPCAO    --> 10/11/2004
   FINALIDADE           --> UNIT DA VARIAVES E FUNCOES GLOBAIS
   COMENTARIO           --> Tag = 0 » Recebimento de entrega
                            Tag = 1 » Cancela venda Caixa encerrado
}
unit uCx06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvDBCombobox, DBCtrls, ExtCtrls, Buttons,
  DB, JvEdit, JvValidateEdit;

type
  TfrmCx06 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBText2: TDBText;
    GroupBox3: TGroupBox;
    DBText3: TDBText;
    GroupBox4: TGroupBox;
    JvDBComboBox1: TJvDBComboBox;
    GroupBox5: TGroupBox;
    DBText4: TDBText;
    GroupBox6: TGroupBox;
    DBText5: TDBText;
    GroupBox7: TGroupBox;
    DBText6: TDBText;
    GroupBox8: TGroupBox;
    DBText7: TDBText;
    GroupBox9: TGroupBox;
    DBText8: TDBText;
    GroupBox10: TGroupBox;
    DBText9: TDBText;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    edtNumVenda: TJvValidateEdit;
    dsVenda: TDataSource;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Timer1: TTimer;
    procedure FormPaint(Sender: TObject);
    procedure edtNumVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure recebe_entrega;
    procedure Cancela_venda;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCx06: TfrmCx06;
  cont: Integer;

implementation

uses uGlobal, udmCx06, uVd05, uDmVd05, uProcess, uDmVd1101;

{$R *.dfm}

procedure TfrmCx06.FormPaint(Sender: TObject);
begin
   if not Verifica_acesso(25) then
   close; 
end;

procedure TfrmCx06.edtNumVendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
   begin
      dmCx06.cdsVenda.Close;
      dmCx06.cdsVenda.Params.ParamByName('NUMVENDA').AsInteger := edtNumVenda.Value;
      dmCx06.cdsVenda.Open;

      if dmCx06.cdsVenda.IsEmpty then
      begin
         Application.MessageBox('Pedido não encontrado.','Atenção', MB_OK + MB_ICONINFORMATION);
         exit;
      end;

      // Verifica se é recebimento
      if frmCx06.Tag = 0 then
      begin
         Label2.Caption := FormatFloat('0.00',dmCx06.cdsVendaTROCO_VENDA.AsFloat - dmCx06.cdsVendaVALORNOTA_VENDA.AsFloat);

         if not dmCx06.cdsVendaENTREGA_VENDA.AsBoolean then
            Application.MessageBox('Entrega já recebida.','Atenção', MB_OK + MB_ICONINFORMATION)
         else
            Timer1.Enabled := True;
      end
      else
      begin
         // Verifica se é cancelamento
         if frmCx06.Tag = 1 then
         begin
            if dmCx06.cdsVendaEXCLUSAO_VENDA.AsString <> '' then
            begin
               Application.MessageBox('Venda já cancelada.','Atenção', MB_OK + MB_ICONINFORMATION);
               exit;
            end;

            if dmCx06.cdsVendaEMISSAO_VENDA.AsString <> '' then
            begin
               Application.MessageBox('Nota fiscal emitida.','Atenção', MB_OK + MB_ICONINFORMATION);
               exit;
            end;

            if length(dmCx06.cdsVendaCHAVE_VENDA.AsString) = 21 then
            begin
               Application.MessageBox('Caixa não encerrado. Utilize cancelamento de pedido.','Atenção', MB_OK + MB_ICONINFORMATION);
               exit;
            end;

            Timer1.Enabled := True;
         end;
      end;
   end
   else
   begin
      if (Shift = [ssShift]) and (Key = 117) then
      SpeedButton1.Click
   end;
end;

procedure TfrmCx06.BitBtn1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmCx06.SpeedButton1Click(Sender: TObject);
begin
   frmVd05 := TfrmVd05.Create(Self);
   frmVd05.ShowModal;

   edtNumVenda.Text := DmVd05.cdsVendasCODIGO_VENDA.AsString;

   frmVd05.Release;
   frmVd05 := nil;
end;

procedure TfrmCx06.Timer1Timer(Sender: TObject);
begin
   cont := cont + 1;

   if cont = 3 then
   begin
      Timer1.Enabled := False;

      if frmCx06.Tag = 0 then
         recebe_entrega
      else
      begin
         if frmCx06.Tag = 1 then
            Cancela_venda;
      end;
   end;
end;

procedure TfrmCx06.recebe_entrega;
begin
   if Application.MessageBox('Confirma recebimento de entrega?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
   begin
      // Executa recebimento de entrega
      dmCx06.cdsVenda.Edit;

      dmCx06.cdsVendaENTREGA_VENDA.AsString := '';
      dmCx06.cdsVendaTROCO_VENDA.AsFloat    := 0;

      dmCx06.cdsVenda.Post;
      dmCx06.cdsVenda.ApplyUpdates(0);
      GravaLogUser(Self,'Recebimento de entrega. Pedido n° ' + edtNumVenda.EditText);

      dmCx06.cdsVenda.close;
   end;
end;

procedure TfrmCx06.Cancela_venda;
begin
   if Application.MessageBox('Cancelar venda?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
   begin
      dmCx06.cdsCliente.Close;
      dmCx06.cdsCliente.Params.ParamByName('CLIENTE').AsString := dmCx06.cdsVendaCODIGO_VENDA.AsString;
      dmCx06.cdsCliente.Open;

      dmCx06.cdsCliente.Edit;
      dmCx06.cdsClienteUTILIZADO_CLIENTE.AsFloat := dmCx06.cdsClienteUTILIZADO_CLIENTE.AsFloat - dmCx06.cdsVendaVALORNOTA_VENDA.AsFloat;
      dmCx06.cdsCliente.Post;

      dmCx06.cdsVenda.Edit;

      dmCx06.cdsVendaEXCLUSAO_VENDA.AsDateTime := DataSystem1;

      dmCx06.cdsVenda.Post;
      dmCx06.cdsVenda.ApplyUpdates(0);

      //Busca todos os itens do orçamento para adicionar no ClientDataSet temporário
      dmCx06.cdsVendasItem.close;
      dmCx06.cdsVendasItem.Params.ParamByName('VENDA').AsString   := dmCx06.cdsVendaCODIGO_VENDA.AsString;
      dmCx06.cdsVendasItem.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmCx06.cdsVendasItem.Open;

      frmProcess := TfrmProcess.Create(Self);
      dmVd1101 := TdmVd1101.Create(Self);
   
      frmProcess.ProgressBar1.Max := dmCx06.cdsVendasItem.RecordCount;
      frmProcess.Show;

      dmCx06.cdsVendasItem.First;
      while not dmCx06.cdsVendasItem.Eof do
      begin
         Baixa_qtd_estoque(dmCx06.cdsVendasItemPRODUTO_IVENDA     .AsInteger,
                           dmCx06.cdsVendasItemQUANTIDADE_IVENDAS .AsFloat  ,
                           dmCx06.cdsVendasItemGRADE_IVENDAS      .AsString ,
                           '+');

         frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
         dmCx06.cdsVendasItem.Next;
      end;

      frmProcess.Release;
      frmProcess := nil;
   end;
end;

procedure TfrmCx06.FormCreate(Sender: TObject);
begin
   dmCx06 := TdmCx06.Create(Self);
   GroupBox10.Visible := false;
end;

procedure TfrmCx06.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
