unit uVd0701;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uECF;

type
  TfrmVd0701 = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Timer1: TTimer;
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
    procedure Cancelar_CF();
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    cont: integer;
  public
    { Public declarations }
  end;

var
  frmVd0701: TfrmVd0701;
  Imp_fiscal: TECF;

implementation

uses uGlobal, udmVd0701, DB, uDmVd1101, uProcess, uDaruma, uEST002;

{$R *.dfm}

{ TfrmVd0701 }

procedure TfrmVd0701.Cancelar_CF;
begin
   Try
      with dmVd0701 do
      begin
         if cdsVendas.IsEmpty then
         begin
            if Application.MessageBox(pchar('Venda não encontrada.' + #13 + 'Deseja cancelar somente o cupom?'),'Atenção', MB_YESNO + MB_ICONQUESTION) = id_no then
               exit;
         end
         else
         begin
            if Application.MessageBox('Cancela cupom fiscal?','Atenção', MB_YESNO + MB_ICONQUESTION) = id_yes then
            begin
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
               cdsVendasEXCLUSAO_VENDA.AsDateTime := DataSystem1;

               cdsVendas.Post;
               cdsVendas.ApplyUpdates(0);

               frmProcess := TfrmProcess.Create(Self);
               frmProcess.ProgressBar1.Max := cdsVendasItem.RecordCount;
               frmProcess.Show;

               if not frmEST002.Canc_cf_no_tef then
                  dmVd1101 := TdmVd1101.Create(Self);

               cdsVendasItem.First;
               while not cdsVendasItem.Eof do
               begin
                  Baixa_qtd_estoque(cdsVendasItemPRODUTO_IVENDA.AsInteger  ,
                                    cdsVendasItemQUANTIDADE_IVENDAS.AsFloat,
                                    cdsVendasItemGRADE_IVENDAS.AsString    ,
                                    '+');

                  frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
                  frmProcess.ProgressBar1.Update;
                  frmProcess.ProgressBar1.Refresh;

                  cdsVendasItem.Next;
               end;

               if not frmEST002.Canc_cf_no_tef then
                  FreeAndNil(dmVd1101);

               frmProcess.Release;
               frmProcess := nil;
            end
            else
               exit;
         end;

         Case StrToInt(ModeloEcf1) of
            1:
            begin
               Imp_fiscal.Executa := Bematech_FI_CancelaCupom;
               Imp_fiscal.Analisa;
            end;
            2:
            begin
               Imp_fiscal.Executa := EPSON_Fiscal_Cancelar_Cupom;
               Imp_fiscal.Analisa;
            end;
            5:
            begin
               Imp_fiscal.Executa := Daruma_FI_CancelaCupom;
               Imp_fiscal.Analisa;
            end;
         end;
      end;

   finally
      FreeAndNil(Imp_fiscal);
      close;
   end;
end;

procedure TfrmVd0701.Timer1Timer(Sender: TObject);
begin
   cont := cont + 1;

   if cont = 2 then
   begin
      Cancelar_CF;
      Timer1.Enabled := false;
   end;
end;

procedure TfrmVd0701.FormCreate(Sender: TObject);
begin
   dmVd0701 := TdmVd0701.Create(Self);
end;

procedure TfrmVd0701.FormShow(Sender: TObject);
Var
   Num, SERIE1: String;
begin
   // Retorna o número do ultimo cupom
   Num := StrZero('0',6);

   Imp_fiscal := TECF.Create;

   case StrToInt(ModeloEcf1) of
      1: Imp_fiscal.Executa := Bematech_FI_NumeroCupom(Num);
      2: Imp_fiscal.Executa := Imp_fiscal.EPSON_Numero_cupom(Num);
      5: Imp_fiscal.Executa := Daruma_FI_NumeroCupom(Num);
   end;
   Imp_fiscal.Analisa;

   Label4.Caption := Num;

   with dmVd0701 do
   begin
      if (Parametro.Multiplos_ECFs) then
         SERIE1 := 'E' + tblECFCAIXA.AsString
      else
         SERIE1 := 'CF';
         
      cdsVendas.Close;
      cdsVendas.Params.ParamByName('NOTA').AsInteger   := StrToInt(Num);
      cdsVendas.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      cdsVendas.Params.ParamByName('SERIE').AsString   := SERIE1;
      cdsVendas.Open;

      cdsVendasItem.Close;
      cdsVendasItem.Params.ParamByName('VENDA').AsInteger  := cdsVendasCODIGO_VENDA.AsInteger;
      cdsVendasItem.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      cdsVendasItem.Open;

      Label5.Caption  := cdsVendasDATA_VENDA.AsString;
      Label6.Caption  := StrZero(cdsVendasCODIGO_VENDA.AsString,6);

      Label10.Caption := cdsVendasNOME_CLIENTE.AsString;
      Label11.Caption := cdsVendasDESCRICAO_CPAGAMENTO.AsString;
      Label12.Caption := cdsVendasNOME_VENDEDOR.AsString;

      Label16.Caption := FormatFloat('0.00',cdsVendasVALOR_BRUTO.AsFloat);
      Label17.Caption := FormatFloat('0.00',cdsVendasDESCONTO_VENDA.AsFloat);
      Label18.Caption := FormatFloat('0.00',cdsVendasVALORNOTA_VENDA.AsFloat);
   end;

   Timer1.Enabled := True;
end;

procedure TfrmVd0701.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
