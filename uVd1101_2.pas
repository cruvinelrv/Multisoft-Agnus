unit uVd1101_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, ExtCtrls,
  Buttons;

type
  TfrmVd1101_2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvCalcEdit1: TJvCalcEdit;
    Label1: TLabel;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure JvCalcEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tipo1,PEM: string;
  end;

var
  frmVd1101_2: TfrmVd1101_2;

implementation

uses uVd1101, uCtrlF1, uDmVd1101, DB, uVd05, uDmVd05, udmImpNF, uGlobal,
  uDmImpOrc;

{$R *.dfm}

procedure TfrmVd1101_2.Button1Click(Sender: TObject);
var
   File1: String;
begin
   dmVd1101.cdsPesqVenda.Close;
   dmVd1101.cdsPesqVenda.Params.ParamByName('CODIGO').AsInteger := JvCalcEdit1.AsInteger;
   dmVd1101.cdsPesqVenda.Params.ParamByName('TIPO')  .AsString  := Tipo1;
   dmVd1101.cdsPesqVenda.Open;

   if dmVd1101.cdsPesqVenda.RecordCount > 0 then
   begin
      if dmVd1101.cdsPesqVendaEXCLUSAO_VENDA.AsString <> '' then
      begin
         Application.MessageBox('Processo já cancelado.','Atenção', MB_OK + MB_ICONWARNING);
         exit;
      end;

      if Tipo1 = 'O' then
         frmVd1101.Caption := 'ORÇAMENTO'
      else
      begin
         if Tipo1 = 'V' then
            frmVd1101.Caption := 'VENDA'
      end;

      frmVd1101.Tipo_lancamento1 := Tipo1;

      close;

      if (Label1.Caption = 'Orçamento a alterar?') or (Label1.Caption = 'Orçamento a importar?') then
         frmVd1101.Tag := 1; //Diz ao formulário carregar o orçamento/venda para alteração

      if Label1.Caption = 'Venda a corrigir?' then
      begin
         if dmVd1101.cdsPesqVendaEMISSAO_VENDA.AsString <> '' then
         begin
            Application.MessageBox('Nota fiscal já emitida.','Atenção', MB_OK + MB_ICONWARNING);
            abort;
         end;

         if dmVd1101.cdsPesqVendaNRFATURA_VENDA.Value <> 0 then
         begin
            Application.MessageBox('Venda faturada.','Atenção', MB_OK + MB_ICONWARNING);
            abort;
         end;

         if dmVd1101.cdsPesqVendaSERIE_VENDA.Value = 'CF' then
         begin
            Application.MessageBox('Cupom fiscal não permite manutênção.','Atenção', MB_OK + MB_ICONWARNING);
            abort;
         end;

         if Length(dmVd1101.cdsPesqVendaCHAVE_VENDA.Value) > 11 {<> 21 .::. Jeter 01/10/2007} then
         begin
            Application.MessageBox('Nota de caixa já encerrado.','Atenção', MB_OK + MB_ICONWARNING);
            abort;
         end;

         frmVd1101.Tag := 1; //Diz ao formulário carregar o orçamento/venda para alteração
      end;

      if Label1.Caption = 'Orçamento a Imprimir?' then
         frmVd1101.Tag := 2; //Diz ao formulário Imprimir o orçamento

      if Label1.Caption = 'Orçamento a Excluir?' then
         frmVd1101.Tag := 3; //Diz ao formulário excluir o orçamento

      if Label1.Caption = 'Dev. Venda a cancelar?' then
         frmVd1101.Tag := 4; //Diz ao formulário cancelar devolução de venda

      if Label1.Caption = 'Dev. Compra a cancelar?' then
         frmVd1101.Tag := 5; //Diz ao formulário cancelar devolução de compra

      if Label1.Caption = 'NF remessa a cancelar?' then
         frmVd1101.Tag := 6; //Diz ao formulário cancelar nota fiscal de remessa

      if Label1.Caption = 'Pedido a reimprimir?' then
      begin
         if frmVd1101.PEM = '85' then
            frmVd1101.Tag := 7 //Diz ao formulário carregar para impressão de pedido
         else
         begin
            // Reimprime original
            dmImpOrc := TdmImpOrc.Create(Self);

            File1 := 'CI' +
                     StrZero(dmVd1101.cdsPesqVendaCODIGO_VENDA.AsString,6) +
                     '.raf';

            if FileExists(Path1 + File1) then
            begin
               dmImpOrc.ppArchiveReader1.ArchiveFileName := Path1 + File1;
               dmImpOrc.ppArchiveReader1.DeviceType := 'Screen';
               dmImpOrc.ppArchiveReader1.Print;
            end;

            FreeAndNil(dmImpOrc);

            frmVd1101.Release;
            frmVd1101 := nil;

            Exit;
         end;
      end;

      if Label1.Caption = 'Venda a reimprimir?' then
      begin
         if frmVd1101.PEM = '86' then
            frmVd1101.Tag := 8 //Diz ao formulário carregar para reimpressão nota fiscal
         else
         begin
            // Reimprime original
            dmImpNF := TdmImpNF.Create(Self);

            File1   := dmVd1101.cdsPesqVendaSERIE_VENDA.Value +
                       StrZero(dmVd1101.cdsPesqVendaCODIGO_VENDA.AsString,6) +
                       '.raf';

            if FileExists(Path1 + File1) then
            begin
               dmImpNF.ppArchiveReader1.ArchiveFileName := Path1 + File1;
               dmImpNF.ppArchiveReader1.DeviceType := 'Screen';
               dmImpNF.ppArchiveReader1.Print;
            end
            else
               Application.MessageBox('Arquivo não encontrado.','Atenção', MB_OK + MB_ICONEXCLAMATION);

            FreeAndNil(dmImpNF);

            frmVd1101.Release;
            frmVd1101 := nil;

            Exit;
         end;
      end;

      if Label1.Caption = 'Venda a cancelar?' then
      begin
         frmVd1101.Tag := 9; //Diz ao formulário cancelar venda
      end;

      frmVd1101.Serie2 := dmVd1101.cdsPesqVendaSERIE_VENDA.AsString;
      frmVd1101.ShowModal;
      frmVd1101.Release;
      frmVd1101 := nil;
   end
   else
      Application.MessageBox(pchar(frmVd1101.Caption + ' não encontrado.'),'Atenção', MB_OK + MB_ICONWARNING);
end;

procedure TfrmVd1101_2.JvCalcEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      Button1.SetFocus;

   if (Shift = [ssShift]) and (Key = 117) then
      SpeedButton1.Click
end;

procedure TfrmVd1101_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
      close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

procedure TfrmVd1101_2.SpeedButton1Click(Sender: TObject);
begin
   if Tipo1 = 'O' then
   begin
      frmCtrlF1 := TfrmCtrlF1.Create(self);
      frmCtrlF1.ShowModal;

      JvCalcEdit1.Text := DmVd1101.cdsOrcamentoCODIGO_VENDA.AsString;
      DmVd1101.cdsOrcamento.Close;

      frmCtrlF1.Release;
      frmCtrlF1 := nil;
   end
   else
   begin
      if (Tipo1 = 'V') or (Tipo1 = 'D') or (Tipo1 = 'R') then
      begin
         frmVd05 := TfrmVd05.Create(Self);

         frmVd05.Filtra_CF := True;

         frmVd05.btnSelecionar.Visible := True;
         frmVd05.ShowModal;

         JvCalcEdit1.Text := DmVd05.cdsVendasCODIGO_VENDA.AsString;

         frmVd05.Release;
         frmVd05 := nil;
      end;
   end;
end;

procedure TfrmVd1101_2.Button2Click(Sender: TObject);
begin
   close;
end;

end.
