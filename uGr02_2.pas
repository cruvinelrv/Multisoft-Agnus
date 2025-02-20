unit uGr02_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, JvToolEdit, Mask, JvExMask,
  JvBaseEdits, ExtCtrls, DB, DBClient;

type
  TfrmGr02_2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    edtValorPrincipal: TJvCalcEdit;
    edtEmissao: TJvDateEdit;
    edtTotalParcela: TJvCalcEdit;
    btnAssistente: TBitBtn;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    Label49: TLabel;
    edtVencParcela: TJvDateEdit;
    btnAlterar: TBitBtn;
    edtValorParcela: TJvCalcEdit;
    BitBtn2: TBitBtn;
    dsFinanceiro: TDataSource;
    procedure btnAssistenteClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGr02_2: TfrmGr02_2;
  mContaParcela: Integer; //contador para total de parcelas

implementation

uses uDmPrincipal, uGlobal, udmGr02, uGr02, uGr02_3;

{$R *.dfm}

procedure TfrmGr02_2.btnAssistenteClick(Sender: TObject);
var
   mValorParcela: Currency;
   mVencimento  : TDateTime;
   mDiferenca   : Currency;
   Num_Parcela  : Integer;
begin
    with dmPrincipal do
    begin
       cdsFinanceiro.Close;
       cdsFinanceiro.CreateDataSet;
       cdsFinanceiro.Open;
       cdsFinanceiro.IndexFieldNames:='Sequencia';
       mcontaParcela := 1;

       mVencimento   := DataSystem1;
       mValorParcela := StrToFloat(FormatFloat('##0.00',(edtValorPrincipal.Value / edtTotalParcela.Value)));
       mdiferenca    := StrToFloat(FormatFloat('##0.00',(edtValorPrincipal.Value - (mValorParcela * edtTotalParcela.Value))));
       Num_Parcela   := 1;

       While edtTotalParcela.Value >= mContaParcela do
       begin
          cdsFinanceiro.Append;
          cdsFinanceiroSequencia.AsInteger   := mContaParcela;
          cdsFinanceiroVencimento.AsDateTime := mVencimento;

          if (mContaParcela = 1) and ((mDiferenca > 0) or (mDiferenca < 0)) then
             cdsFinanceiroValor.AsCurrency := mValorParcela + mDiferenca
          else
            cdsFinanceiroValor.AsCurrency  := mValorParcela;

          mVencimento   := mVencimento   + 30;
          mContaParcela := mContaParcela + 1;
          cdsFinanceiro.Post;
       end;
    end;

   edtValorParcela.Value   := edtValorPrincipal.Value;
   edtValorParcela.Enabled := True;
   edtVencParcela.Enabled  := True;
   //btnAssistente.Enabled   := False;
   btnAssistente.Tag       := 0;

   BitBtn2.Enabled    := True;
   btnAlterar.Enabled := True;
end;

procedure TfrmGr02_2.btnAlterarClick(Sender: TObject);
begin
   with dmPrincipal do
    begin
       cdsFinanceiro.Edit;
       cdsFinanceiroVencimento.Value := edtVencParcela.Date;
       cdsFinanceiroValor.Value      := edtValorParcela.Value;
       cdsFinanceiro.Post;
    end;

   ShowMessage('Altera��o conlu�da!');
end;

procedure TfrmGr02_2.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_delete then
   begin
      if application.MessageBox('Confirma a excluss�o da parcela?','Confirma��o',MB_YESNO + MB_ICONQUESTION) = id_yes then
         dmPrincipal.cdsFinanceiro.Delete;
   end;
end;

procedure TfrmGr02_2.DBGrid2Enter(Sender: TObject);
begin
   dsFinanceiro.Tag := 1;
end;

procedure TfrmGr02_2.DBGrid2Exit(Sender: TObject);
begin
   dsFinanceiro.Tag := 0;
end;

procedure TfrmGr02_2.BitBtn2Click(Sender: TObject);
begin
   frmGr02_3 := TfrmGr02_3.Create(Self);
   frmGr02_3.ShowModal;
   frmGr02_3.Release;
   frmGr02_3 := nil;

   if Application.MessageBox('Confirma finaliza��o?','Confirma��o', MB_YESNO + MB_ICONQUESTION) = id_yes then
   begin
      with dmGr02 do
      begin
         cdsPagar.Open;
         with DmPrincipal do
         begin
            cdsFinanceiro.First;
            while not cdsFinanceiro.Eof do
            begin
               cdsPagar.Append;

               cdsPagarDOCUMENTO_PAGAR   .AsString   := 'CP' + StrZero(cdsComprasCODIGO_COMPRA.AsString,6) + '-' + cdsFinanceiroSequencia.AsString;
               cdsPagarNOTAFISCAL        .AsString   := cdsComprasNOTAFISCAL_COMPRA.AsString;
               cdsPagarFORNECEDOR_PAGAR  .AsInteger  := cdsComprasFORNECEDOR_COMPRA.AsInteger;
               cdsPagarEMISSAO_PAGAR     .AsDateTime := edtEmissao.Date;
               cdsPagarVENCIMENTO_PAGAR  .AsDateTime := cdsFinanceiroVencimento.AsDateTime;
               cdsPagarPREVISAO_PAGAR    .AsDateTime := cdsFinanceiroVencimento.AsDateTime;
               cdsPagarTIPODOCUMENTO_PAGAR.AsInteger := cdsFinanceirotipo_documento.AsInteger;
               cdsPagarPORTADOR_PAGAR.AsInteger      := cdsFinanceiroPortador.AsInteger;
               cdsPagarCENTRO_PAGAR.AsInteger        := cdsFinanceirocentro_custo.AsInteger;
               cdsPagarCONTA_PAGAR.AsString          := cdsFinanceiroconta.AsString;
               cdsPagarCOD_EMPRESA_PAGAR .AsString   := CodigoEmpresa1;

               cdsPagar.Post;
               cdsFinanceiro.Next;
            end;
         end;

         cdsPagar.ApplyUpdates(0);
         cdsPagar.Close;

         Close;
      end;
   end;
end;

procedure TfrmGr02_2.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TfrmGr02_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
