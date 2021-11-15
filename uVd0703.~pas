unit uVd0703;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Buttons, DB, DBClient, FMTBcd, SqlExpr;

type
  TfrmVd0703 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    JvValidateEdit1: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
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
    dsItens: TDataSource;
    cdsItem: TClientDataSet;
    cdsItemDESCRICAO_IVENDAS: TStringField;
    cdsItemQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsItemDESCONTO_IVENDAS: TFMTBCDField;
    cdsItemVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsItemTOTAL: TFMTBCDField;
    Timer1: TTimer;
    procedure SpeedButton1Click(Sender: TObject);
    procedure JvValidateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Cancela_NF();
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    cont: integer;
  public
    { Public declarations }
  end;

var
  frmVd0703: TfrmVd0703;

implementation

uses uVd05, uDmVd05, udmVd0703, uGlobal, uDmPrincipal;

{$R *.dfm}

procedure TfrmVd0703.SpeedButton1Click(Sender: TObject);
begin
   frmVd05 := TfrmVd05.Create(Self);
   frmVd05.btnSelecionar.Visible := True;
   frmVd05.ShowModal;

   JvValidateEdit1.Text := DmVd05.cdsVendasCODIGO_VENDA.AsString;

   frmVd05.Release;
   frmVd05 := nil;
end;

procedure TfrmVd0703.JvValidateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
   begin
      with dmVd0703 do
      begin
         cdsVendas.Close;
         cdsVendas.Params.ParamByName('VENDA').AsInteger  := JvValidateEdit1.Value;
         cdsVendas.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
         cdsVendas.Open;

         if cdsVendasSERIE_VENDA.AsString = 'NF' then
         begin
            Label4.Caption := cdsVendasNOME_VENDEDOR.Value;
            Label5.Caption := cdsVendasNOME_CLIENTE.Value;

            Label12.Caption := FormatFloat('0.00',cdsVendasVALOR_BRUTO.AsFloat);
            Label13.Caption := FormatFloat('0.00',cdsVendasDESCONTO_VENDA.AsFloat * 100 / cdsVendasVALOR_BRUTO.AsFloat);
            Label14.Caption := FormatFloat('0.00',cdsVendasDESCONTO_VENDA.AsFloat);
            Label15.Caption := FormatFloat('0.00',cdsVendasVALORNOTA_VENDA.AsFloat);

            cdsVendasItem.Close;
            cdsVendasItem.Params.ParamByName('VENDA').AsInteger := cdsVendasCODIGO_VENDA.Value;
            cdsVendasItem.Open;

            cdsItem.EmptyDataSet;
            cdsItem.Append;

            cdsItemDESCRICAO_IVENDAS  .Value   := cdsVendasItemDESCRICAO_IVENDAS  .Value;
            cdsItemQUANTIDADE_IVENDAS .AsFloat := cdsVendasItemQUANTIDADE_IVENDAS .AsFloat;
            cdsItemDESCONTO_IVENDAS   .AsFloat := cdsVendasItemDESCONTO_IVENDAS   .AsFloat * 100 / (cdsVendasItemVALORBRUTO_IVENDAS.AsFloat + cdsVendasItemDESCONTO_IVENDAS.AsFloat);
            cdsItemVALORBRUTO_IVENDAS .AsFloat := cdsVendasItemVALORBRUTO_IVENDAS .AsFloat;
            cdsItemTOTAL              .AsFloat := cdsVendasItemTOTAL              .AsFloat;

            cdsItem.Post;
         end
         else
         begin
            Application.MessageBox('Nota fiscal não emitida.','Atenção', MB_OK + MB_ICONWARNING);
            Exit;
         end;
      end;

      Timer1.Enabled := True;
   end
   else
   begin
      if (Shift = [ssShift]) and (Key = 117) then
         SpeedButton1.Click
   end;
end;

procedure TfrmVd0703.FormCreate(Sender: TObject);
begin
   cdsItem.CreateDataSet;
   cdsItem.Open;

   dmVd0703 := TdmVd0703.Create(Self);
end;

procedure TfrmVd0703.Timer1Timer(Sender: TObject);
begin
   cont := cont + 1;

   if cont = 2 then
   begin
      Cancela_NF;
      Timer1.Enabled := false;
   end;
end;

procedure TfrmVd0703.Cancela_NF;
begin
   Try
      with dmVd0703 do
      begin
         if Application.MessageBox('Cancela Nota fiscal?','Atenção', MB_YESNO + MB_ICONQUESTION) = id_yes then
         begin
            cdsReceber.Close;
            cdsReceber.Params.ParamByName('COD_CLI').AsInteger := cdsVendasCLIENTE_VENDA.AsInteger;
            cdsReceber.Open;
            // Apaga contas a pagar
            if not cdsReceber.IsEmpty then
            begin
               cdsReceber.First;
               while not cdsReceber.Eof do
               begin
                  if copy(cdsReceberDUPLICATA_RECEBER.Value,1,8) = 'NF' + StrZero(cdsVendasNOTAFISCAL_VENDA.AsString,6) then
                  begin
                     if cdsReceberVALORPAGO_RECEBER.AsFloat <> 0 then
                        cdsReceber.Delete
                  end
                  else
                     cdsReceber.Next;
               end;
               cdsReceber.ApplyUpdates(0);
            end;

            cdsVendas.Edit;

            cdsVendasEMISSAO_VENDA.Clear;
            cdsVendasDATASAIDA_VENDA.Clear;
            cdsVendasHORASAIDA_VENDA.Clear;
            cdsVendasBASEICMS_VENDA.Clear;
            cdsVendasICMS_VENDA.Clear;
            cdsVendasBASEICMS_VENDA.Clear;
            cdsVendasICMSSB_VENDA.Clear;
            cdsVendasIPI_VENDA.Clear;
            cdsVendasPESOBRUTO_VENDA.Clear;
            cdsVendasPESOLIQUIDO_VENDA.Clear;

            cdsVendas.Post;
            cdsVendas.ApplyUpdates(0);
         end
         else
            exit;
      end;
   finally
      close;
   end;
end;

procedure TfrmVd0703.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
