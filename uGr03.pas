unit uGr03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB, DBCtrls, JvToolEdit,
  JvDBControls, Mask, JvExMask, JvBaseEdits, Buttons, ComCtrls;

type
  TfrmGr03 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    grpBalanco: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    JvDBCalcEdit4: TJvDBCalcEdit;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    dsProduto: TDataSource;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    btnGravar: TBitBtn;
    edtQuantBalanco: TJvCalcEdit;
    Bevel1: TBevel;
    Label8: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBCheckBox1: TDBCheckBox;
    DBText4: TDBText;
    Label9: TLabel;
    Label10: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    Label11: TLabel;
    DBText7: TDBText;
    Label12: TLabel;
    DBText8: TDBText;
    dsGrupo: TDataSource;
    dsBalanco: TDataSource;
    pnlPesquisa: TPanel;
    edtPesquisa: TEdit;
    Label13: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dsProdutoDataChange(Sender: TObject; Field: TField);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private

    { Private declarations }

  public

    { Public declarations }

  end;

var
  frmGr03: TfrmGr03;

implementation

uses uGlobal, udmGr03, uGr03_1;

{$R *.dfm}

procedure TfrmGr03.btnGravarClick(Sender: TObject);
begin
   With dmGr03 do
   begin
      cdsProdutosESTOQUE_PRODUTO.AsCurrency:=edtQuantBalanco.Value;
      cdsProdutos.Post;

      if cdsProdutos.ApplyUpdates(0) = 0 then
      begin
         if cdsBalanco.State = DsInsert then
         begin
            cdsBalancoCOD_EMPRESA.AsInteger:=StrToInt(CodigoEmpresa1);
            cdsBalancoDATA_BALANCO.AsDateTime:=DataSystem1;
            cdsBalancoPRODUTO_BALANCO.AsInteger:=cdsProdutosCODIGO_PRODUTO.AsInteger;
         end;

         cdsBalancoESTOQUE_BALANCO  .AsCurrency := edtQuantBalanco.Value;
         cdsBalancoVALIDADE_BALANCO .AsDateTime := cdsProdutosVALIDADE_PRODUTO.AsDateTime;
         cdsBalancoPCOMPRA_BALANCO  .AsCurrency := cdsProdutosPRECOUNIT_PRODUTO.AsCurrency;
         cdsBalancoPCUSTO_BALANCO   .AsCurrency := cdsProdutosPRECO_CUSTO_PRODUTO.AsCurrency;
         cdsBalancoUSUARIO_BALANCO  .AsString   := Usuario1;

         cdsBalanco.Post;
         cdsBalanco.ApplyUpdates(0);
         cdsProdutos.Next;
      end;
   end;

   edtQuantBalanco.Value := 0;
   dbgrid1.SetFocus;
end;

procedure TfrmGr03.BitBtn3Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmGr03.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TfrmGr03.DBGrid1Enter(Sender: TObject);
begin
   self.KeyPreview:=false;
   btnGravar.Enabled:=false;
end;

procedure TfrmGr03.DBGrid1Exit(Sender: TObject);
begin
   self.KeyPreview := True;
end;

procedure TfrmGr03.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 Then
    begin
       key := #0;
       With dmGr03 do
       begin
          //Verifica se existe balanco para o produto na data
          cdsBalanco.Close;
          qryBalanco.Close;
          qryBalanco.SQL.Clear;
          qryBalanco.SQL.Add('SELECT * FROM P_BALANCO WHERE COD_EMPRESA=:EMPRESA AND PRODUTO_BALANCO=:PRODUTO AND DATA_BALANCO=:DATA');
          qryBalanco.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
          qryBalanco.ParamByName('PRODUTO').AsInteger:=(cdsProdutosCODIGO_PRODUTO.AsInteger);
          qryBalanco.ParamByName('DATA').AsDate:=DataSystem1;
          qryBalanco.Open;
          cdsBalanco.Open;

          if not(cdsBalanco.Eof) then
          begin
             if Application.MessageBox(pchar('J� h� um balan�o lan�ado nesta data: '+DateToStr(DataSystem1)+#13+#10+ ' para esta mercadoria. Substitui'),'Confirma��o',mb_yesno+MB_ICONQUESTION )=idno then
             begin
                 dbgrid1.SetFocus;
                 exit;
             end;
             cdsBalanco.Edit;
          end
          else
          begin
             cdsBalanco.Insert;
             cdsBalancoDATA_balanco.AsDateTime:=DataSystem1;
          end;

          qryBalanco.sql.clear;
          qryBalanco.SQL.Add('SELECT * FROM P_BALANCO WHERE COD_EMPRESA=:EMPRESA ORDER BY DATA_BALANCO');
          dmGr03.cdsProdutos.Edit;
          //grpBalanco.Visible:=true;
          edtQuantBalanco.Value:=cdsProdutosESTOQUE_PRODUTO.AsCurrency;
          edtQuantBalanco.SetFocus;
          btnGravar.Enabled:=True;
       end;
    end;
end;

procedure TfrmGr03.FormCreate(Sender: TObject);
begin
   dmGr03 := TdmGr03.Create(Self);

   With dmGr03 do
   begin
      cdsGrupoProduto.close;
      qryGrupoProduto.Close;
      qryGrupoProduto.SQL.Clear;
      qryGrupoProduto.SQL.Add('SELECT * FROM P_GRUPOS WHERE COD_EMPRESA=:EMPRESA');
      qryGrupoProduto.ParamByName('empresa').AsInteger:=StrToInt(CodigoEmpresa1);
      qryGrupoProduto.open;
      cdsGrupoProduto.open;
      cdsGrupoProduto.IndexFieldNames:='CODIGO_GRUPO';

      cdsProdutos.Close;
      cdsProdutos.Params.ParamByName('CLASSE')  .AsInteger := 1;
      cdsProdutos.Params.ParamByName('EMPRESA') .AsInteger := StrToInt(CodigoEmpresa1);
      cdsProdutos.Params.ParamByName('GRU1')    .AsInteger := 0;
      cdsProdutos.Params.ParamByName('GRU2')    .AsInteger := 999999999;
      cdsProdutos.Open;
   end;
end;

procedure TfrmGr03.dsProdutoDataChange(Sender: TObject; Field: TField);
begin
   with dmGr03 do
      if cdsGrupoProduto.Active=true then
         cdsGrupoProduto.FindNearest([cdsProdutosGRUPO_PRODUTO.AsInteger]);
end;

procedure TfrmGr03.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      dmGr03.cdsProdutos.IndexFieldNames := 'DESCRICAO_PRODUTO';
      dmGr03.cdsProdutos.FindNearest([edtPesquisa.Text]);
      DBGrid1.SetFocus;
   end;
end;

procedure TfrmGr03.edtPesquisaExit(Sender: TObject);
begin
   edtPesquisa.Text := '';
   pnlPesquisa.Visible := False;
end;

procedure TfrmGr03.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 121 then // Tecla F10
   begin
      pnlPesquisa.Visible := True;
      edtPesquisa.SetFocus;
   end
   else
   begin
      if key = 71 then // Telca G
      begin
         frmGr03_1 := TfrmGr03_1.Create(Self);
         frmGr03_1.ShowModal;
         frmGr03_1.Release;
         frmGr03_1 := nil;
      end;
   end;
end;

procedure TfrmGr03.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
