unit uGr06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, JvDBControls,
  DBCtrls, JvBaseEdits, Grids, DBGrids, DB, DBClient, Buttons, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppVar, ppModule, raCodMod, ComCtrls,shellapi;

type

    TfrmGr06 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edPedido: TEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    edFornecedor: TDBEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    edCliente: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label27: TLabel;
    Label23: TLabel;
    JvCalcEdit17: TJvCalcEdit;
    JvCalcEdit18: TJvCalcEdit;
    JvCalcEdit19: TJvCalcEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    edProduto: TEdit;
    Label24: TLabel;
    edQuantidade: TJvCalcEdit;
    edPrecoUnitario: TJvCalcEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBText3: TDBText;
    Label28: TLabel;
    cdsProdutos: TClientDataSet;
    cdsProdutosCodigoProduto: TStringField;
    cdsProdutosDescProduto: TStringField;
    DataSource1: TDataSource;
    btnFechar: TBitBtn;
    dsFornecedor: TDataSource;
    dsProdutos: TDataSource;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    dsPedido: TDataSource;
    dsClientes: TDataSource;
    btnGravar: TBitBtn;
    btnImprimir: TBitBtn;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppPedido: TppDBPipeline;
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
    ppVariable1: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    raCodeModule1: TraCodeModule;
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
    ppLabel31: TppLabel;
    ppDBText18: TppDBText;
    ppEmpresa: TppVariable;
    cdsProdutosQuantidade: TCurrencyField;
    cdsProdutosValorUnitario: TCurrencyField;
    ppItensPedido: TppDBPipeline;
    ppNomeCliente: TppVariable;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    JvDBCalcEdit4: TJvDBCalcEdit;
    JvDBCalcEdit5: TJvDBCalcEdit;
    JvDBCalcEdit6: TJvDBCalcEdit;
    edtTotalProdutos: TJvDBCalcEdit;
    cdsProdutosCodigoFabrica: TStringField;
    Label29: TLabel;
    edtCodFabrica: TEdit;
    cdsProdutosSomaTotal: TCurrencyField;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    StatusBar1: TStatusBar;
    Button1: TButton;
    procedure Panel2Exit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPedidoExit(Sender: TObject);
    procedure edFornecedorExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edPrecoUnitarioKeyPress(Sender: TObject; var Key: Char);
    procedure edPrecoUnitarioEnter(Sender: TObject);
    procedure edPrecoUnitarioExit(Sender: TObject);
    procedure dsPedidoDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure ppNomeClienteGetText(Sender: TObject; var Text: String);
    procedure ppEnderecoGetText(Sender: TObject; var Text: String);
    procedure btnImprimirClick(Sender: TObject);
    procedure edPedidoEnter(Sender: TObject);
    procedure JvDBDateEdit1Enter(Sender: TObject);
    procedure ppBairroGetText(Sender: TObject; var Text: String);
    procedure ppCidadeGetText(Sender: TObject; var Text: String);
    procedure ppCEPGetText(Sender: TObject; var Text: String);
    procedure ppCNPJGetText(Sender: TObject; var Text: String);
    procedure ppInscricaoGetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmGr06: TfrmGr06;

implementation


uses udmGr06, uGlobal, uDmPrincipal, uDmCd04, uCd04, uConsulta, uDmF12,
  uF12, uGr06_1;

{$R *.dfm}

procedure TfrmGr06.Panel2Exit(Sender: TObject);
begin

   Panel2.Visible:=false;

end;

procedure TfrmGr06.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  Try

    if key=vk_insert then
    begin

       Panel2.Visible:=true;
       edProduto.SetFocus;

    end;

   Finally
      
   end ;

end;

procedure TfrmGr06.edPedidoExit(Sender: TObject);
var
Ctrl: TWinControl;
begin
   if (edPedido.Text = '') or (edPedido.Text = '0') then
   begin
      edPedido.SetFocus;
      Exit;
   end;

   Try

   cdsProdutos.Close;
   cdsProdutos.CreateDataSet;
   cdsProdutos.Open;

   Ctrl := ActiveControl;

   With dmGr06 do
   begin

      btnImprimir.Enabled:=false;
      qryPedidoCompra.Close;
      cdsPedidoCompra.Close;

     if (Ctrl=btnFECHAR) Then
     Begin

        exit ;

     end ;

     if edPedido.text='' then
     begin

        cdsPedidoCompra.Open;
        cdsPedidoCompra.Insert;
        btnGravar.Enabled:=True;

     end else
     begin

        qryPedidoCompra.ParamByName('PEDIDO').AsInteger :=StrToInt(edPedido.text);
        qryPedidoCompra.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
        qryPedidoCompra.Open;
        cdsPedidoCompra.Open;

        if cdsPedidoCompra.Eof then
        begin

           cdsPedidoCompra.Insert;
           btnGravar.Enabled:=True;

        end else
        begin

           cdsPedidoCompra.Edit;

           //Pega Itens do Pedido....
           //
           dmGr06.qryPedidoCompraItem.close;
           dmGr06.cdsPedidoCompraItem.Close;
           dmGr06.qryPedidoCompraItem.ParamByName('PEDIDO').AsInteger :=dmGr06.cdsPedidoCompraCODIGO_PEDIDO.AsInteger;
           dmGr06.qryPedidoCompraItem.ParamByName('EMPRESA').AsInteger:=dmGr06.cdsPedidoCompraCOD_EMPRESA.AsInteger;
           dmGr06.qryPedidoCompraItem.Open;
           dmGr06.cdsPedidoCompraItem.Open;

           While  not dmGr06.cdsPedidoCompraItem.Eof do
           begin

             self.cdsProdutos.Insert;
             self.cdsProdutosCodigoProduto.AsInteger :=dmGr06.cdsPedidoCompraItemPRODUTO_PEDIDO.AsInteger;
             self.cdsProdutosDescProduto.AsString    :=dmGr06.cdsPedidoCompraItemDESCRICAO_PEDIDO.AsString;
             self.cdsProdutosQuantidade.AsCurrency   :=dmGr06.cdsPedidoCompraItemQUANTIDADE_PEDIDO.AsCurrency;
             self.cdsProdutosValorUnitario.AsCurrency:=dmGr06.cdsPedidoCompraItemPRECO_PEDIDO.AsCurrency;
             self.cdsProdutosSomaTotal.AsCurrency    :=dmGr06.cdsPedidoCompraItemQUANTIDADE_PEDIDO.AsCurrency*dmGr06.cdsPedidoCompraItemPRECO_PEDIDO.AsCurrency;
             self.cdsProdutosCodigoFabrica.AsString  :=dmGr06.cdsPedidoCompraItemFABRICA_PEDIDO.AsString;
             self.cdsProdutos.Post;
             dmGr06.cdsPedidoCompraItem.Next;

           end ;

           btnGravar.Enabled  :=True;
           btnImprimir.Enabled:=True;

        end ;

     end ;

     cdsPedidoCompraVALORPRODUTO_PEDIDO .AsFloat := 0;
     cdsPedidoCompraICMS_PEDIDO         .AsFloat := 0;
     cdsPedidoCompraICMSSB_PEDIDO       .AsFloat := 0;
     cdsPedidoCompraIPI_PEDIDO          .AsFloat := 0;
     cdsPedidoCompraFRETE_PEDIDO        .AsFloat := 0;
     cdsPedidoCompraOUTROS_PEDIDO       .AsFloat := 0;
     cdsPedidoCompraSEGURO_PEDIDO       .AsFloat := 0;

   end ;

 Finally

 end ;

end;

procedure TfrmGr06.edFornecedorExit(Sender: TObject);
var
Ctrl: TWinControl;
begin
   if (edFornecedor.Text <> '0') and (edFornecedor.Text <> '') then
   begin
      if not Busca_Dados(edFornecedor, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edFornecedor.SetFocus;
         Exit;
      end
      else
      begin
         if Tipo_Cliente = 0 then
         begin
            Edit1.Clear;
            Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edFornecedor.SetFocus;
            Exit;
         end;
      end;
   end
   else
   begin
      edFornecedor.SetFocus;
      Exit;
   end;
   
   {Try

   Ctrl:= ActiveControl;

   if (Ctrl=btnFECHAR) Then
      exit ;

   With dmGr06 do
   begin

      qryPesqFornecedor.Close;
      qryPesqFornecedor.ParamByName('fornecedor').AsInteger:=StrToInt(edFornecedor.text);
      qryPesqFornecedor.Open;

      if qryPesqFornecedor.IsEmpty then
      begin

         qryPesqFornecedor.Close;
         Application.MessageBox('Fornecedor n�o cadastrado','Informa��o',mb_ok+MB_ICONINFORMATION);
         edFornecedor.SetFocus;
         exit;

      end;

   end;

Finally

end ;}

end;

procedure TfrmGr06.btnFecharClick(Sender: TObject);
begin

   Close;

end;

procedure TfrmGr06.edProdutoExit(Sender: TObject);
var

  Ctrl: TWinControl;
  Numero : String;

begin
   if Copy(edProduto.Text,1,1) = '?' then
   begin
      frmGr06_1 := TfrmGr06_1.Create(Self);
      frmGr06_1.ShowModal;
      frmGr06_1.Release;
      frmGr06_1 := nil;

      edProduto.Text         := '';
      edQuantidade.Value     := 0;
      edPrecoUnitario.Value  := 0;
      edtCodFabrica.Text     := '';
      dmGr06.qryProdutos.Close;
      dbgrid1.SetFocus;
   end;

 Try

   Numero := '';

   if edProduto.Text <> '' then
   begin
      Numero := RemoveInteiro(edProduto.Text);

      if Numero <> '' then
      begin
         frmF12 := TfrmF12.Create(Self);

         dmF12.cdsPesqProdutos.IndexFieldNames := 'DESCRICAO_PRODUTO';
         dmF12.cdsPesqProdutos.FindNearest([Numero]);

         frmF12.ShowModal;

         edProduto.SetFocus;

         edProduto.Text := dmF12.cdsPesqProdutosCODIGO_PRODUTO.AsString;

         frmF12.Release;
         frmF12 := nil;
      end
      else
         edProduto.Text := RemoveString(edProduto.Text);
   end;

   Ctrl := ActiveControl;

   With dmGr06 do
   begin

      if (Ctrl=btnFECHAR) Then
         exit ;

      if edProduto.Text='' then
         Exit;

      cdsProdutos.Close;
      cdsProdutos.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      cdsProdutos.Params.ParamByName('PRODUTO').AsInteger := StrToInt(edProduto.Text);
      cdsProdutos.Open;

      if cdsProdutos.IsEmpty then
      begin

         Application.MessageBox('Produto n�o cadastrado','Informa��o',MB_ICONINFORMATION);
         edProduto.SetFocus;
         exit;

      end else
      begin

         edtCodFabrica.Text := dmGr06.cdsProdutosFABRICANTE_PRODUTO.AsString;
         edPrecoUnitario.Value := dmGr06.cdsProdutosPRECO_COMPRA_PRODUTO.AsFloat;

         if edtCodFabrica.Text ='' then
         
            edtCodFabrica.ReadOnly := false

         else

            edtCodFabrica.ReadOnly := true;

      end ;

   end ;

Finally

end ;

end;

procedure TfrmGr06.edClienteExit(Sender: TObject);
var

  Ctrl: TWinControl;

begin
   if (edCliente.Text <> '') or (edCliente.Text <> '0') then
   begin
      if not Busca_Dados(edCliente, Edit2, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edCliente.SetFocus;
         Exit;
      end
      else
      begin
         if Tipo_Cliente = 2 then
         begin
            Edit2.Clear;
            Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edCliente.SetFocus;
            Exit;
         end;
      end;
   end;

   {Try

   Ctrl := ActiveControl;

   With dmGr06 do
   begin

      cdsCliente.Close;

      if CTRL=btnFECHAR then
      begin

         exit;

      end ;

      if edCliente.Text='' then
      begin

         exit;

      end ;

      cdsCliente.Params.ParamByName('CLIENTE').AsInteger := StrToInt(edCliente.text);
      cdsCliente.open;

      if cdsCliente.IsEmpty then
      begin

         Application.MessageBox('Cliente n�o encontrado','Informa��o',MB_ICONINFORMATION);
         edCliente.SetFocus;
         exit;

      end else
      begin

         if cdsClienteTIPO_CLIENTE.AsInteger = 2 then
         begin

            cdsCliente.Close;
            edCliente.setFocus;
            exit;

         end;

      end;

   end;

 Finally;

 end;}

end;

procedure TfrmGr06.btnGravarClick(Sender: TObject);
begin

   if (dmGr06.cdsPedidoCompra.State=dsInsert) then
   begin

      if (edPedido.Text='') then
      begin

         dmGr06.cdsPedidoCompraCODIGO_PEDIDO.AsInteger := Busca_Proximo('P_PEDIDO','CODIGO_PEDIDO');

      end else
      begin

         dmGr06.cdsPedidoCompraCODIGO_PEDIDO.AsInteger:=StrToInt(edPedido.text)

      end;

   end;

   //30...


   dmGr06.cdsPedidoCompraCOD_EMPRESA.AsInteger:=StrToInt(CodigoEmpresa1);
   dmGr06.cdsPedidoCompra.Post;

   if dmGr06.cdsPedidoCompra.ApplyUpdates(0)=0 then
   begin

      dmGr06.sdsTemporario.Close;
      dmGr06.sdsTemporario.CommandText:='DELETE FROM P_PEDIDO_ITEM WHERE CODIGO_PEDIDO='+dmGr06.cdsPedidoCompraCODIGO_PEDIDO.AsString +' AND COD_EMPRESA='+dmGr06.cdsPedidoCompraCOD_EMPRESA.AsString;
      dmGr06.sdsTemporario.ExecSQL(TRUE);
      btnGravar.Enabled:=false;
      //
      cdsProdutos.First;
      //
      dmGr06.qryPedidoCompraItem.close;
      dmGr06.cdsPedidoCompraItem.Close;
      dmGr06.qryPedidoCompraItem.ParamByName('PEDIDO').AsInteger :=dmGr06.cdsPedidoCompraCODIGO_PEDIDO.AsInteger;
      dmGr06.qryPedidoCompraItem.ParamByName('EMPRESA').AsInteger:=dmGr06.cdsPedidoCompraCOD_EMPRESA.AsInteger;
      dmGr06.qryPedidoCompraItem.Open;

      dmGr06.cdsPedidoCompraItem.Open;
      While not cdsProdutos.Eof do
      begin

          dmGr06.cdsPedidoCompraItem.Insert;
          dmGr06.cdsPedidoCompraItemCODIGO_PEDIDO.AsInteger     :=dmGr06.cdsPedidoCompraCODIGO_PEDIDO.AsInteger;
          dmGr06.cdsPedidoCompraItemCOD_EMPRESA.AsInteger       :=dmGr06.cdsPedidoCompraCOD_EMPRESA.AsInteger;
          dmGr06.cdsPedidoCompraItemPRODUTO_PEDIDO.AsString     :=cdsProdutosCodigoProduto.AsString;
          dmGr06.cdsPedidoCompraItemDESCRICAO_PEDIDO.AsString   :=cdsProdutosDescProduto.AsString;
          dmGr06.cdsPedidoCompraItemQUANTIDADE_PEDIDO.AsCurrency:=cdsProdutosQuantidade.AsCurrency;
          dmGr06.cdsPedidoCompraItemPRECO_PEDIDO.AsCurrency     :=cdsProdutosValorUnitario.AsCurrency;
          dmGr06.cdsPedidoCompraItemFABRICA_PEDIDO.AsString     :=cdsProdutosCodigoFabrica.AsString;
          dmGr06.cdsPedidoCompraItem.Post;
          dmGr06.cdsPedidoCompraItem.ApplyUpdates(0);
          cdsProdutos.Next;

      end ;

      if application.MessageBox('Confirma a impress�o','Cofirma��o',mb_yesno+MB_ICONQUESTION)=idyes then
         ppReport1.Print;

      Close;
   end ;

end;


procedure TfrmGr06.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if Key = #13 then

   if not (ActiveControl is TDBGrid) then
   begin

      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

   end;

end;

procedure TfrmGr06.edPrecoUnitarioKeyPress(Sender: TObject;
  var Key: Char);
begin
   try
      if key=#13 then
      begin
         key:=#0;
         if (edPrecoUnitario.Value > 0) and (edQuantidade.Value > 0) then
         begin
            cdsProdutos.Append;
            cdsProdutosCodigoProduto.AsString   := edProduto.Text;
            cdsProdutosDescProduto.AsString     := dbText3.Caption;
            cdsProdutosQuantidade.AsCurrency    := edQuantidade.Value;
            cdsProdutosValorUnitario.AsCurrency := edPrecoUnitario.Value;
            cdsProdutosCodigoFabrica.AsString   := edtCodFabrica.Text;
            cdsProdutosSomaTotal.AsCurrency     := edPrecoUnitario.Value * edQuantidade.Value;
            cdsProdutos.Post;

            edtTotalProdutos.Value := (edtTotalProdutos.Value + (edQuantidade.Value * edPrecoUnitario.Value));

            edProduto.Text         := '';
            edQuantidade.Value     := 0;
            edPrecoUnitario.Value  := 0;
            edtCodFabrica.Text     := '';
            dmGr06.qryProdutos.Close;
            dbgrid1.SetFocus;
         end;
      end;
   finally

   end;
end;

procedure TfrmGr06.edPrecoUnitarioEnter(Sender: TObject);
begin

   SELF.KeyPreview:=FALSE;

end;

procedure TfrmGr06.edPrecoUnitarioExit(Sender: TObject);
begin

   SELF.KeyPreview:=True;

end;

procedure TfrmGr06.dsPedidoDataChange(Sender: TObject; Field: TField);
begin

   With dmGr06 do
   begin

      qryPesqFornecedor.Close;
      qryPesqFornecedor.ParamByName('fornecedor').AsInteger:=dmGr06.cdsPedidoCompraFORNECEDOR_PEDIDO.AsInteger;
      qryPesqFornecedor.Open;

   end ;

   With dmGr06 do
   begin

      qryCliente.Close;
      qryCliente.ParamByName('CLIENTE').AsInteger:=dmGr06.cdsPedidoCompraCLIENTE_PEDIDO.AsInteger;
      qryCliente.open;

   end ;

end;

procedure TfrmGr06.FormCreate(Sender: TObject);
begin
   dmGr06 := TdmGr06.Create(Self);


   With dmGr06 do
   begin

      qryPedidoCompra.Close;
      cdsPedidoCompra.Close;

   end ;

   With dmGr06 do
   begin

      qryCliente.Close;


   end ;

   with dmGr06 do
   begin

      qryPesqFornecedor.Close;

   end ;

end;

procedure TfrmGr06.ppNomeClienteGetText(Sender: TObject;
  var Text: String);
begin

   if (dmGr06.cdsCliente.Active) and (dmGr06.cdsCliente.Eof = false) then
      text := dmGr06.cdsClienteNOME_CLIENTE.AsString
   else
      Text := dmGr06.cdsEmpresaRAZAOSOCIA_EMP.AsString;

end;

procedure TfrmGr06.ppEnderecoGetText(Sender: TObject;
  var Text: String);
begin

   if (dmGr06.cdsCliente.Active) and (dmGr06.cdsCliente.Eof=false) then
      text := dmGr06.cdsClienteENDERECO_CLIENTE.AsString
   else
      Text := dmGr06.cdsEmpresaENDERECO_EMP.AsString;

end;

procedure TfrmGr06.btnImprimirClick(Sender: TObject);
begin

   ppReport1.Print;

end;

Procedure TfrmGr06.edPedidoEnter(Sender: TObject);
begin

   btnImprimir.Enabled:=false;

end;
procedure TfrmGr06.JvDBDateEdit1Enter(Sender: TObject);
begin
   JvDBDateEdit1.Date := DataSystem1;
end;

procedure TfrmGr06.ppBairroGetText(Sender: TObject; var Text: String);
begin
   if (dmGr06.cdsCliente.Active) and (dmGr06.cdsCliente.Eof=false) then
      text := dmGr06.cdsClienteBAIRRO_CLIENTE.AsString
   else
      Text := dmGr06.cdsEmpresaBAIRRO_EMP.AsString;
end;

procedure TfrmGr06.ppCidadeGetText(Sender: TObject; var Text: String);
begin
   if (dmGr06.cdsCliente.Active) and (dmGr06.cdsCliente.Eof=false) then
      text := dmGr06.cdsClienteNOME_CIDADE.AsString + '-' + dmGr06.cdsClienteESTADO_CLIENTE.AsString 
   else
      Text := dmGr06.cdsEmpresaCIDADE_EMP.AsString + '-' + dmGr06.cdsEmpresaESTADO_EMP.AsString;
end;

procedure TfrmGr06.ppCEPGetText(Sender: TObject; var Text: String);
begin
   if (dmGr06.cdsCliente.Active) and (dmGr06.cdsCliente.Eof=false) then
      text := dmGr06.cdsClienteCEP_CLIENTE.AsString
   else
      Text := dmGr06.cdsEmpresaCEP_EMP.AsString;
end;

procedure TfrmGr06.ppCNPJGetText(Sender: TObject; var Text: String);
begin
   if (dmGr06.cdsCliente.Active) and (dmGr06.cdsCliente.Eof=false) then
      text := dmGr06.cdsClienteCNPJ_CLIENTE.AsString
   else
      Text := dmGr06.cdsEmpresaCGC_EMP.AsString;
end;

procedure TfrmGr06.ppInscricaoGetText(Sender: TObject; var Text: String);
begin
   if (dmGr06.cdsCliente.Active) and (dmGr06.cdsCliente.Eof=false) then
      text := dmGr06.cdsClienteINSCRICAO_CLIENTE.AsString
   else
      Text := dmGr06.cdsEmpresaINSCRICAO_EMP.AsString;
end;

procedure TfrmGr06.FormShow(Sender: TObject);
begin
   dmGr06.cdsEmpresa.Close;
   dmGr06.cdsEmpresa.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmGr06.cdsEmpresa.Open;

   edPedido.Text := IntToStr(Busca_Proximo('P_PEDIDO','CODIGO_PEDIDO'{,True}) + 1);
end;

procedure TfrmGr06.SpeedButton2Click(Sender: TObject);
begin
   edFornecedor.SetFocus;

   ConsultaFornecedor(edFornecedor);
end;

procedure TfrmGr06.SpeedButton1Click(Sender: TObject);
begin
   edCliente.SetFocus;

   ConsultaCliente(edCliente);
end;

procedure TfrmGr06.DBEdit5Exit(Sender: TObject);
begin
   DBGrid1.SetFocus;
end;

procedure TfrmGr06.DBGrid1Enter(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '[Insert] � Adiciona produto';
end;

procedure TfrmGr06.DBGrid1Exit(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '';
end;

procedure TfrmGr06.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmGr06.Button1Click(Sender: TObject);
var
   Mail, Msg: String;
begin
   Msg := 'PEDIDO DE MERCADORIA %0A%0A';

   cdsProdutos.First;
   while not cdsProdutos.Eof do
   begin
      Msg := Msg + cdsProdutosQuantidade.AsString + ', ' + cdsProdutosDescProduto.AsString + '%0A';
      cdsProdutos.Next;
   end;

   Mail := 'mailto:?subject=PEDIDO&body=' + Msg;
   ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil,sw_ShowNormal);
end;

end.
