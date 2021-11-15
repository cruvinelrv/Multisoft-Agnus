{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> Gr09 (EST038)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 11/06/2007
 FINALIDADE           --> CANCELA / IMPRIME PEDIDO DE MERCADORIA
 COMENTARIO           -->
 *******************************************************************************}

unit uGr09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, JvExStdCtrls,
  JvEdit, JvValidateEdit, JvExMask, JvToolEdit, JvDBControls, Buttons,
  ppModule, raCodMod, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, DBClient;

type
  TfrmGr09 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    dsPedido: TDataSource;
    edtPedido: TJvValidateEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Panel2: TPanel;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DataSource1: TDataSource;
    cdsProdutos: TClientDataSet;
    cdsProdutosCodigoProduto: TStringField;
    cdsProdutosDescProduto: TStringField;
    cdsProdutosQuantidade: TCurrencyField;
    cdsProdutosValorUnitario: TCurrencyField;
    cdsProdutosSomaTotal: TCurrencyField;
    cdsProdutosCodigoFabrica: TStringField;
    ppPedido: TppDBPipeline;
    ppPedidoppField1: TppField;
    ppPedidoppField2: TppField;
    ppPedidoppField3: TppField;
    ppPedidoppField4: TppField;
    ppPedidoppField5: TppField;
    ppPedidoppField6: TppField;
    ppPedidoppField7: TppField;
    ppPedidoppField8: TppField;
    ppPedidoppField9: TppField;
    ppPedidoppField10: TppField;
    ppPedidoppField11: TppField;
    ppPedidoppField12: TppField;
    ppPedidoppField13: TppField;
    ppPedidoppField14: TppField;
    ppPedidoppField15: TppField;
    ppItensPedido: TppDBPipeline;
    ppItensPedidoppField1: TppField;
    ppItensPedidoppField2: TppField;
    ppItensPedidoppField3: TppField;
    ppItensPedidoppField4: TppField;
    ppItensPedidoppField5: TppField;
    ppItensPedidoppField6: TppField;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppLabel13: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppLabel31: TppLabel;
    ppDBText18: TppDBText;
    ppEmpresa: TppVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppVariable1: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppEndereco: TppVariable;
    ppBairro: TppVariable;
    ppCidade: TppVariable;
    ppCEP: TppVariable;
    ppCNPJ: TppVariable;
    ppInscricao: TppVariable;
    ppLabel21: TppLabel;
    ppLine7: TppLine;
    ppLabel22: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText12: TppDBText;
    ppLabel25: TppLabel;
    ppDBText13: TppDBText;
    ppLabel26: TppLabel;
    ppDBText14: TppDBText;
    ppLabel27: TppLabel;
    ppDBText15: TppDBText;
    ppLabel28: TppLabel;
    ppDBText16: TppDBText;
    ppLabel29: TppLabel;
    ppDBText17: TppDBText;
    ppVariable8: TppVariable;
    ppLabel30: TppLabel;
    ppNomeCliente: TppVariable;
    raCodeModule1: TraCodeModule;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPedidoExit(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppNomeClienteGetText(Sender: TObject; var Text: String);
    procedure ppEnderecoGetText(Sender: TObject; var Text: String);
    procedure ppBairroGetText(Sender: TObject; var Text: String);
    procedure ppCidadeGetText(Sender: TObject; var Text: String);
    procedure ppCEPGetText(Sender: TObject; var Text: String);
    procedure ppCNPJGetText(Sender: TObject; var Text: String);
    procedure ppInscricaoGetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
    Cliente1 : Boolean;
  end;

var
  frmGr09: TfrmGr09;

implementation

uses udmGr09, uGlobal;

{$R *.dfm}

procedure TfrmGr09.FormCreate(Sender: TObject);
begin
   dmGr09 := TdmGr09.Create(Self);

   btnImprimir.Enabled := False;

   Cliente1 := False;

   dmGr09.cdsEmpresa.Close;
   dmGr09.cdsEmpresa.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmGr09.cdsEmpresa.Open;
end;

procedure TfrmGr09.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if Key = 27 then
      Close;

   if Key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmGr09.edtPedidoExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtPedido.Value > 0 then
   begin
      dmGr09.cdsPedido.Close;
      dmGr09.cdsPedido.Params.ParamByName('COD_PEDIDO').AsInteger := edtPedido.Value;
      dmGr09.cdsPedido.Params.ParamByName('EMPRESA').AsString     := CodigoEmpresa1;
      dmGr09.cdsPedido.Open;

      if dmGr09.cdsPedido.IsEmpty then
      begin
         Application.MessageBox('Pedido não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtPedido.SetFocus;
         Exit;
      end
      else
      begin
         dmGr09.cdsPedido_Item.Close;
         dmGr09.cdsPedido_Item.Params.ParamByName('COD_ITEM_PEDIDO').AsInteger := edtPedido.Value;
         dmGr09.cdsPedido_Item.Params.ParamByName('EMPRESA').AsString          := CodigoEmpresa1;
         dmGr09.cdsPedido_Item.Open;

         cdsProdutos.Open;

         if cdsProdutos.RecordCount > 0 then
            cdsProdutos.EmptyDataSet;

         if not dmGr09.cdsPedido_Item.IsEmpty then
         begin
            while not dmGr09.cdsPedido_Item.Eof do
            begin
               cdsProdutos.Append;

               cdsProdutosCodigoProduto.AsInteger  := dmGr09.cdsPedido_ItemPRODUTO_PEDIDO.AsInteger;
               cdsProdutosDescProduto.AsString     := dmGr09.cdsPedido_ItemDESCRICAO_PEDIDO.AsString;
               cdsProdutosQuantidade.AsCurrency    := dmGr09.cdsPedido_ItemQUANTIDADE_PEDIDO.AsCurrency;
               cdsProdutosValorUnitario.AsCurrency := dmGr09.cdsPedido_ItemPRECO_PEDIDO.AsCurrency;
               cdsProdutosSomaTotal.AsCurrency     := dmGr09.cdsPedido_ItemQUANTIDADE_PEDIDO.AsCurrency;
               cdsProdutosCodigoFabrica.AsString   := dmGr09.cdsPedido_ItemFABRICA_PEDIDO.AsString;

               cdsProdutos.Post;

               dmGr09.cdsPedido_Item.Next;
            end;
         end;

         btnImprimir.Enabled := True;

         // se o campo cliente_pedido não estiver vazio o pedido foi
         // faturado direto para o cliente neste caso lança os dados do cliente
         // no relatório
         if dmGr09.cdsPedidoCLIENTE_PEDIDO.AsString <> '' then
            Cliente1 := True
         else
            Cliente1 := False;

         if Application.MessageBox('Confirma a impressão?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
         begin
            btnImprimir.Enabled := False;

            ppReport1.Print;

            edtPedido.SetFocus;
         end;
      end;
   end;
end;

procedure TfrmGr09.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmGr09.btnImprimirClick(Sender: TObject);
begin
   btnImprimir.Enabled := False;

   ppReport1.Print;

   edtPedido.SetFocus;
end;

procedure TfrmGr09.ppNomeClienteGetText(Sender: TObject; var Text: String);
begin
   if Cliente1 = True then
      Text := dmGr09.cdsPedidoNOME_CLIENTE.AsString
   else
      Text := dmGr09.cdsEmpresaRAZAOSOCIA_EMP.AsString;
end;

procedure TfrmGr09.ppEnderecoGetText(Sender: TObject; var Text: String);
begin
   if Cliente1 = True then
      Text := dmGr09.cdsPedidoENDERECO_CLIENTE.AsString
   else
      Text := dmGr09.cdsEmpresaENDERECO_EMP.AsString;
end;

procedure TfrmGr09.ppBairroGetText(Sender: TObject; var Text: String);
begin
   if Cliente1 = True then
      Text := dmGr09.cdsPedidoBAIRRO_CLIENTE.AsString
   else
      Text := dmGr09.cdsEmpresaBAIRRO_EMP.AsString;
end;

procedure TfrmGr09.ppCidadeGetText(Sender: TObject; var Text: String);
begin
   if Cliente1 = True then
      Text := dmGr09.cdsPedidoDESCRICAO_CIDADE.AsString + '-' + dmGr09.cdsPedidoESTADO_CLIENTE.AsString
   else
      Text := dmGr09.cdsEmpresaCIDADE_EMP.AsString + '-' + dmGr09.cdsEmpresaESTADO_EMP.AsString;
end;

procedure TfrmGr09.ppCEPGetText(Sender: TObject; var Text: String);
begin
   if Cliente1 = True then
      Text := dmGr09.cdsPedidoCEP_CLIENTE.AsString
   else
      Text := dmGr09.cdsEmpresaCEP_EMP.AsString;
end;

procedure TfrmGr09.ppCNPJGetText(Sender: TObject; var Text: String);
begin
   if Cliente1 = True then
      Text := dmGr09.cdsPedidoCNPJ_CLIENTE.AsString
   else
      Text := dmGr09.cdsEmpresaCGC_EMP.AsString;
end;

procedure TfrmGr09.ppInscricaoGetText(Sender: TObject; var Text: String);
begin
   if Cliente1 = True then
      Text := dmGr09.cdsPedidoINSCRICAO_CLIENTE.AsString
   else
      Text := dmGr09.cdsEmpresaINSCRICAO_EMP.AsString;
end;

end.
