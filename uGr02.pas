unit uGr02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, ExtCtrls, Mask, ComCtrls, Buttons, DB,
  DBClient, ValEdit, JvSpin, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmGr02 = class(TForm)
    Panel1: TPanel;
    DataSource1: TDataSource;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar1: TBitBtn;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtCFOP: TDBEdit;
    edtFornecedor: TDBEdit;
    edtTransporta: TDBEdit;
    GroupBox3: TGroupBox;
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
    Label19: TLabel;
    lblTotalIsenta: TLabel;
    Label21: TLabel;
    lblTotalOutras: TLabel;
    Label30: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    edtTotalNota: TJvDBCalcEdit;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    JvDBCalcEdit3: TJvDBCalcEdit;
    JvDBCalcEdit4: TJvDBCalcEdit;
    DBEdit13: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    mTexto: TDBMemo;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    grpProduto: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    edtEstoqueAtual: TJvDBCalcEdit;
    edtQuantidade: TJvDBCalcEdit;
    edtPrecoCompra: TJvDBCalcEdit;
    edtTotalItem: TJvDBCalcEdit;
    edtICMSEntrada: TJvDBCalcEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    edtIPIProduto: TJvDBCalcEdit;
    edtPrecoVenda: TJvDBCalcEdit;
    edtPreVndAtacado: TJvDBCalcEdit;
    Bevel3: TBevel;
    Label41: TLabel;
    DBText1: TDBText;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label45: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Bevel4: TBevel;
    edtReducao: TJvDBCalcEdit;
    edtQuantOcorrencia: TJvDBCalcEdit;
    DBRadioGroup1: TDBRadioGroup;
    BitBtn4: TBitBtn;
    Bevel5: TBevel;
    cdsTempProdutos: TClientDataSet;
    cdsTempProdutosSeqProduto: TIntegerField;
    cdsTempProdutosCodigoProduto: TIntegerField;
    cdsTempProdutosEstoqueAtual: TCurrencyField;
    cdsTempProdutosQuantidade: TCurrencyField;
    cdsTempProdutosPrecoCompra: TCurrencyField;
    cdsTempProdutosTotalCompra: TCurrencyField;
    cdsTempProdutosValidade: TDateField;
    cdsTempProdutosICMSEntrada: TCurrencyField;
    cdsTempProdutosIPIEntrada: TCurrencyField;
    cdsTempProdutosPrecoVenda: TCurrencyField;
    cdsTempProdutosPrecoAtacado: TCurrencyField;
    cdsTempProdutosCSTproduto: TStringField;
    cdsTempProdutosReducao: TCurrencyField;
    cdsTempProdutosOcorrencia: TStringField;
    cdsTempProdutosQuantOcorrencia: TCurrencyField;
    cdsTempProdutosDescricaoProduto: TStringField;
    edtBaseCalcICMS: TJvDBCalcEdit;
    edtValorICMS: TJvDBCalcEdit;
    edtBaseSubICMS: TJvDBCalcEdit;
    edtValorSubICMS: TJvDBCalcEdit;
    edtValorOutras: TJvDBCalcEdit;
    edtValorFrete: TJvDBCalcEdit;
    edtValorSeguro: TJvDBCalcEdit;
    edtValorIPI: TJvDBCalcEdit;
    edtTotalProdutos: TJvDBCalcEdit;
    edtTotalDesconto: TJvDBCalcEdit;
    edtNotaFiscal: TDBEdit;
    DBEdit7: TDBEdit;
    edtEmissao: TJvDBDateEdit;
    edtDataEntrada: TJvDBDateEdit;
    dsCFOP: TDataSource;
    dsProduto: TDataSource;
    dsTempProdutos: TDataSource;
    cobCST: TDBLookupComboBox;
    DBText5: TDBText;
    Label23: TLabel;
    edtGrade: TDBEdit;
    Label47: TLabel;
    lblPorcICMS: TLabel;
    lblPorcSubICMS: TLabel;
    Label53: TLabel;
    lblProcOutras: TLabel;
    lblPorcFrete: TLabel;
    lblPorcSeguro: TLabel;
    lblPorcIPI: TLabel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    DBText6: TDBText;
    btnCancelar: TBitBtn;
    DBText7: TDBText;
    dsFornecedor: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1llll: TStringField;
    SpeedButton1: TSpeedButton;
    dsNatureza: TDataSource;
    dsCST: TDataSource;
    edtValidade: TJvDBDateEdit;
    dsTransportador: TDataSource;
    cdsTempProdutosCustoCompra: TCurrencyField;
    cdsTempProdutosGradeProduto: TStringField;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton4: TSpeedButton;
    edtProduto: TJvValidateEdit;
    cdsTempProdutosCod_fabrica: TStringField;
    cdsTempProdutosOBS: TStringField;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure DBGrid1Enter(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cobProdutoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cobProdutoMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cobProdutoCloseUp(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnFechar1Click(Sender: TObject);
    procedure edtTotalProdutosChange(Sender: TObject);
    procedure edtTotalDescontoChange(Sender: TObject);
    procedure edtBaseCalcICMSChange(Sender: TObject);
    procedure edtValorICMSChange(Sender: TObject);
    procedure edtValorSubICMSChange(Sender: TObject);
    procedure edtBaseSubICMSChange(Sender: TObject);
    procedure edtValorOutrasChange(Sender: TObject);
    procedure edtValorFreteChange(Sender: TObject);
    procedure edtValorSeguroChange(Sender: TObject);
    procedure edtValorIPIChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtCFOPExit(Sender: TObject);
    procedure edtFornecedorExit(Sender: TObject);
    procedure TabSheet1Enter(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
    procedure edtQuantidadeChange(Sender: TObject);
    procedure edtPrecoCompraChange(Sender: TObject);
    procedure edtDataEntradaExit(Sender: TObject);
    procedure edtPrecoVendaEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtTotalItemExit(Sender: TObject);
    procedure edtTransportaExit(Sender: TObject);
    procedure mTextoEnter(Sender: TObject);
    procedure mTextoExit(Sender: TObject);
    procedure PageControl1Exit(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure edtPrecoVendaExit(Sender: TObject);
    procedure edtPreVndAtacadoExit(Sender: TObject);
    procedure edtReducaoExit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtGradeEnter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsTempProdutosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    Procedure MostraPorc;
    Procedure MostraDados(mTipoRegistro:Integer);
    procedure Controla_Campos(pCampo : Boolean);
  public

    { Public declarations }
    Tipo_Caracter, Incluir : Boolean;  // true � numero inteiro false � letra string
  end;

var
  frmGr02      : TfrmGr02;
  mContaParcela: Integer; //contador para total de parcelas
  mCodigoCompra: Integer; //Codigo Temporario da compra
  mSomaItens   : Real;

implementation

uses uGlobal, uDmPrincipal, udmProgs, uFinanceiro,
  uGr02_1, udmGr02, uConsulta, uGr02_2, uDmVd1101, uProcess, uCd04_1,
  uDmCd04, uRL100102;

{$R *.dfm}

procedure TfrmGr02.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
   begin
      if cdsTempProdutos.Active then
      begin
         grpProduto.Visible := True;

         if edtProduto.Value > 0 then
            Controla_Campos(False)
         else
            Controla_Campos(False);

         grpProduto.SetFocus;
      end;
   end
   else
   begin
      if key = vk_insert then
      begin
         dmCd04 := TdmCd04.Create(Self);
         frmCd04_1 := TfrmCd04_1.Create(Self);

         if Demo1 and (dmCd04.cdsProdutos.RecordCount >= 10) then
         begin
            Application.MessageBox('Vers�o de demonstra��o' + #13 +
                                   'Limite de produtos atingidos','Demonstra��o',MB_ICONERROR);
            Abort;
         end;

         DmCd04.cdsProdutos.Open;
         DmCd04.cdsProdutos.Append;

         frmCd04_1.ShowModal;
         frmCd04_1.Release;
         frmCd04_1 := nil;
         FreeAndNil(dmCd04);
      end;
   end;
end;

procedure TfrmGr02.DBGrid1Enter(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '[ENTER] � Adicionar produtos';

   grpProduto.Visible := False;
   self.KeyPreview    := False;
end;

procedure TfrmGr02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Self.Tag <> 1 then
   begin
      if Application.MessageBox('Abandonar entrada?','Confirma��o', MB_YESNO + MB_ICONQUESTION) = id_yes then
      begin
         With dmGr02 do
         begin
            cdsCompras.Close;
            qryCompras.Close;
            qryCompras.SQL.Clear;
            qryCompras.SQL.Add('SELECT * FROM P_COMPRA WHERE COD_EMPRESA=:EMPRESA');
         end;

         With dmGr02 do
         begin
            qryNatureza.Close;
            qryNatureza.SQL.Clear;
            qryNatureza.SQL.Add('SELECT * FROM E_NATUREZA ORDER BY CODIGO_NAT');
         end;
      end
      else
         abort;
   end;
end;

procedure TfrmGr02.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmGr02.FormCreate(Sender: TObject);
begin
   Tipo_Caracter := True;
   Incluir       := False;

   dmGr02 := TdmGr02.Create(Self);
   PageControl1.ActivePageIndex := 0;
   dmGr02.cdsPesqProdutos.Open;

   mContaParcela := 1;

   // Pesquisa de Fornecedores e fabricantes
   With dmGr02 do
   begin
      cdsPesqCliente.close;
      qryPesqClientes.Close;
      qryPesqClientes.ParamByName('TIPO').AsInteger := 2; // (2) -  fornecedor // (0) - Clientes
      qryPesqClientes.ParamByName('EMPRESA').AsInteger := StrToInt(CodigoEmpresa1);  //para a parte de contrato do cliente
      qryPesqClientes.Open;
      cdsPesqCliente.Open;
   end;

   With dmGr02 do
   begin
      cdsCST.Open;
      if cdsCST.Eof = false then
         cobCST.KeyValue := 1;
   end;
end;

procedure TfrmGr02.cobProdutoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if dmGr02.cdsPesqProdutos.Active then
      edtProduto.EditText := dmGr02.cdsPesqProdutosCODIGO_PRODUTO.AsString;
end;

procedure TfrmGr02.cobProdutoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if dmGr02.cdsPesqProdutos.Active then
      edtProduto.EditText := dmGr02.cdsPesqProdutosCODIGO_PRODUTO.AsString;
end;

procedure TfrmGr02.cobProdutoCloseUp(Sender: TObject);
begin
   if dmGr02.cdsPesqProdutos.Active then
   begin
      edtProduto.EditText := dmGr02.cdsPesqProdutosCODIGO_PRODUTO.AsString;
      edtProduto.SetFocus;
   end;
end;

procedure TfrmGr02.BitBtn4Click(Sender: TObject);
var
  mSomaItem: Real;
begin
   if PageControl1.ActivePageIndex = 0 then
      btnGravar.Enabled := True;

   if cobCST.KeyValue = '020' then
   begin
      if edtReducao.Value <= 0 then
      begin
         application.MessageBox('Valor da Redu��o e invalido','Erro',MB_ICONERROR);
         edtReducao.SetFocus;
         Exit;
      end;
   end;

   if edtQuantidade.Value = 0 then
   begin
      Application.MessageBox('Quantidade invalida','Informa��o',mb_ok+MB_ICONINFORMATION);
      edtQuantidade.SetFocus;
      Exit;
   end;

   mSomaItem := edtQuantidade.Value * edtPrecoCompra.Value;
   if (formatFloat('##0.00',edtTotalItem.Value)) <> FormatFloat('##0.00',(mSomaItem)) then
   begin
      Application.MessageBox('A soma dos produtos n�o confere com total de produtos','Infroma��o',mb_ok+MB_ICONINFORMATION );
      Exit;
   end;

   if not (dmGr02.qryProdutosGrade.IsEmpty) and (edtGrade.Text = '') then
   begin
      Application.MessageBox('Este produto � preciso informa a grade.','Infroma��o',mb_ok+MB_ICONINFORMATION );
      Exit;
   end;

   if not cdsTempProdutos.IsEmpty then
   begin
      cdsTempProdutos.Edit;

      mSomaItens := mSomaItens + edtTotalItem.Value;
      cdsTempProdutosDescricaoProduto.AsString := dbText5.Caption;
      cdsTempProdutosCodigoProduto.AsString := edtProduto.EditText;
      cdsTempProdutosCod_fabrica.AsString := dmGr02.cdsPesqProdutosFABRICANTE_PRODUTO.AsString;
      //cdsTempProdutosOBS.AsString := dmGr02.cdsPesqProdutosOBSERVACAO_PRODUTO.AsString;

      Incluir := False;
      cdsTempProdutos.Post;
   end;
   dbgrid1.SetFocus;
end;

procedure TfrmGr02.btnFechar1Click(Sender: TObject);
begin
   if grpProduto.Visible then
   begin
      cdsTempProdutos.Cancel;
      grpProduto.Visible := False;
      DBGrid1.SetFocus;      
   end
   else
      Close;
end;

Procedure TfrmGr02.MostraPorc;  // Mostra porcentagem referente valores
var
  mTotalIsentas: Real;
  mTotalOutras: Real;
begin
   if dmGr02 <> nil then
   begin
      if (dmGr02.cdsCompras.State = dsEdit) or (dmGr02.cdsCompras.State = dsInsert) then
      begin
         if (edtTotalDesconto.Value > 0) and (edtTotalProdutos.Value > 0) then
            Label47.Caption := FormatFloat('##0.00',((edtTotalDesconto.Value / edtTotalProdutos.Value) * 100)) + '%'
         else
            Label47.Caption := FormatFloat('##0.00',0) + '%';
   
         if (edtValorICMS.Value > 0) and (edtBaseCalcICMS.value > 0) then
            lblPorcICMS.Caption := FormatFloat('##0.00',((edtValorICMS.Value / edtBaseCalcICMS.Value) * 100 )) + '%'
         else
            lblPorcICMS.Caption := FormatFloat('##0.00',0) + '%';
   
         if (edtValorSubICMS.Value > 0) and (edtBaseSubICMS.value > 0) then
            lblPorcSubICMS.Caption := FormatFloat('##0.00',((edtValorSubICMS.Value / edtBaseSubICMS.Value) * 100)) + '%'
         else
            lblPorcSubICMS.Caption := FormatFloat('##0.00',0) + '%';
   
         if (edtValorOutras.Value > 0) and (edtTotalProdutos.value > 0) then
            lblProcOutras.Caption := FormatFloat('##0.00',((edtValorOutras.Value / edtTotalprodutos.Value) * 100)) + '%'
   
         else
            lblProcOutras.Caption := FormatFloat('##0.00',0) + '%';
   
         if (edtValorFrete.Value > 0) and (edtTotalProdutos.value > 0) then
            lblPorcFrete.Caption := FormatFloat('##0.00', ((edtValorFrete.Value / edtTotalprodutos.Value) * 100)) + '%'
   
         else
            lblPorcFrete.Caption := FormatFloat('##0.00',0) + '%';
   
   
         if (edtValorSeguro.Value > 0) and (edtTotalProdutos.value > 0) then
             lblPorcSeguro.Caption := FormatFloat('##0.00',((edtValorSeguro.Value / edtTotalprodutos.Value) * 100)) + '%'
   
         else
            lblPorcSeguro.Caption := FormatFloat('##0.00',0) + '%';
   
         if (edtValorIPI.Value > 0) and (edtTotalProdutos.value > 0) then
            lblPorcIPI.Caption := FormatFloat('##0.00',((edtValorIPI.Value/edtTotalprodutos.Value) * 100)) + '%'
   
         else
            lblPorcIPI.Caption := FormatFloat('##0.00',0) + '%';
   
         mTotalIsentas := (edtTotalProdutos.Value - (edtTotalDesconto.Value + edtBaseCalcICMS.Value + edtBaseSubICMS.Value));
         lblTotalIsenta.Caption := FormatFloat('##0.00',mTotalIsentas);
   
         dmGr02.cdsComprasVALOR_COMPRA.AsFloat := ((edtTotalProdutos.Value - edtTotalDesconto.Value) + edtValorSubICMS.Value +
                                edtValorOutras.Value + edtValorFrete.Value + edtValorSeguro.Value + edtValorIPI.Value);
      end;
   end;
end;

procedure TfrmGr02.edtTotalProdutosChange(Sender: TObject);
begin
   MostraPorc;
end;

procedure TfrmGr02.edtTotalDescontoChange(Sender: TObject);
begin
   MostraPorc;
end;

procedure TfrmGr02.edtBaseCalcICMSChange(Sender: TObject);
begin
   MostraPorc;
end;

procedure TfrmGr02.edtValorICMSChange(Sender: TObject);
begin
   MostraPorc;
end;

procedure TfrmGr02.edtValorSubICMSChange(Sender: TObject);
begin
   MostraPorc
end;

procedure TfrmGr02.edtBaseSubICMSChange(Sender: TObject);
begin
   MostraPorc
end;

procedure TfrmGr02.edtValorOutrasChange(Sender: TObject);
begin
   MostraPorc
end;

procedure TfrmGr02.edtValorFreteChange(Sender: TObject);
begin
   MostraPorc
end;

procedure TfrmGr02.edtValorSeguroChange(Sender: TObject);
begin
   MostraPorc
end;

procedure TfrmGr02.edtValorIPIChange(Sender: TObject);
begin
   MostraPorc
end;

procedure TfrmGr02.BitBtn2Click(Sender: TObject);
var
   mValorParcela: Real;
   mVencimento  : TDateTime;
   mDiferenca   : Real;
begin


end;

procedure TfrmGr02.btnExcluirClick(Sender: TObject);
begin
   btnIncluir  .Enabled := True;
   btnGravar   .Enabled := False;
   btnCancelar .Enabled := False;
   btnExcluir  .Enabled := False;
   btnAlterar  .Enabled := False;
end;

Procedure TfrmGr02.MostraDados(mTipoRegistro:Integer);
begin
   lblTotalIsenta .Caption := '0,00';
   lblTotalOutras .Caption := '0,00';
   Label47        .Caption := FormatFloat('##0.00',0) + '%';
   lblPorcICMS    .Caption := FormatFloat('##0.00',0) + '%';
   lblPorcSubICMS .Caption := FormatFloat('##0.00',0) + '%';
   lblProcOutras  .Caption := FormatFloat('##0.00',0) + '%';
   lblPorcFrete   .Caption := FormatFloat('##0.00',0) + '%';
   lblPorcSeguro  .Caption := FormatFloat('##0.00',0) + '%';
   lblPorcIPI     .Caption := FormatFloat('##0.00',0) + '%';
   lblTotalIsenta .Caption := FormatFloat('##0.00',0);

   cdsTempProdutos.Close;
   cdsTempProdutos.CreateDataSet;
   cdsTempProdutos.Open;

   With dmGr02 do
   begin
     if mTipoRegistro=1 then
     begin
        cdsCompras.Close;
        qryCompras.Close;
        qryCompras.SQL.Clear;
        qryCompras.SQL.Add('SELECT * FROM P_COMPRA WHERE CODIGO_COMPRA=:COMPRA AND COD_EMPRESA=:EMPRESA');
        qryCompras.ParamByName('COMPRA').AsInteger :=mCodigoCompra;
        qryCompras.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
        qryCompras.Open;
        cdsCompras.Open;

        if not cdsCompras.Eof then
        begin
           cdsCompras.Edit;
           MostraPorc;
        end
        else
        begin
           Application.MessageBox('C�digo de compra n�o encontrado','Informa��o',MB_ICONINFORMATION);
           Exit;
        end;

     end
     else
     if mTipoRegistro = 0 then
     begin
        cdsCompras.Open;
        cdsCompras.Append;
     end;
   end;
end;

procedure TfrmGr02.btnIncluirClick(Sender: TObject);
begin
   With dmGr02 do
      if (cdsCompras.State=dsEdit) or (cdsCompras.State=DsInsert) then
         cdsCompras.Cancel;

   MostraDados(0);
   btnIncluir  .Enabled := False;
   btnGravar   .Enabled := True;
   btnCancelar .Enabled := True;
   PageControl1.ActivePageIndex := 0;
   edtNotaFiscal.SetFocus;
end;

procedure TfrmGr02.btnGravarClick(Sender: TObject);
var
   mDifSoma: Real;
begin
   if cdsTempProdutos.IsEmpty then
   begin
      application.MessageBox('Produtos n�o informado para essa entrada','Erro',MB_ICONERROR);
      exit;
   end;

   mDifSoma := mSomaItens - edtTotalProdutos.Value;
   if (mDifSoma > 0) or (mDifSoma < 0) then
   begin
      if Application.MessageBox(pchar(PChar('Produtos lan�ados n�o fecha com ' + #13 + #10 +
                                      'valor total dos produtos da nota !' + #13 + #10 + #13 + #10 +
                                      'Valor digitado ' + FormatFloat('##0.00',mSomaItens) +
                                      'Valor Produtos ' + FormatFloat('##0.00',edtTotalProdutos.Value)) + #13 + #13 +
                                      'Deseja continuar?')
                                      ,PChar('Aten��o'),MB_ICONEXCLAMATION+MB_YESNO) = mrNo then
         Exit;
   end;

   With dmGr02 do
   begin
      if cdsCompras.State = dsInsert then
      begin
        cdsComprasCODIGO_COMPRA.AsInteger := Busca_Proximo('P_COMPRA','CODIGO_COMPRA');
        cdsComprasCOD_EMPRESA.asinteger   := StrToInt(CodigoEmpresa1);
      end;

      frmGr02_2 := TfrmGr02_2.Create(self);
      frmGr02_2.edtValorPrincipal.Value := edtTotalNota.Value;
      frmGr02_2.ShowModal;
      frmGr02_2.Release;
      frmGr02_2 := nil;

      cdsCompras.Post;

      if cdsCompras.ApplyUpdates(0) = 0 then
      begin
         cdsComprasItens.Open;
         cdsTempProdutos.First;
         if Not (cdsTempProdutos.Eof) then
         begin
            frmProcess := TfrmProcess.Create(Self);
            frmProcess.ProgressBar1.Max := cdsTempProdutos.RecordCount;
            frmProcess.ProgressBar1.Position := 0;

            dmVd1101 := TdmVd1101.Create(Self);
            While Not (cdsTempProdutos.Eof) do
            begin
               cdsComprasItens.Append;

               cdsComprasItensCOD_EMPRESA       .AsInteger  := cdsComprasCOD_EMPRESA          .AsInteger;
               cdsComprasItensCODIGO_COMPRA     .AsInteger  := cdsComprasCODIGO_COMPRA        .AsInteger;
               cdsComprasItensPRODUTO_COMPRA    .AsInteger  := cdsTempProdutosCodigoProduto   .AsInteger;
               cdsComprasItensPRECOUNIT_COMPRA  .AsFloat := cdsTempProdutosPrecoCompra     .AsFloat;
               cdsComprasItensCUSTO_COMPRA      .AsFloat := cdsTempProdutosCustoCompra     .AsFloat;
               cdsComprasItensFATOR_COMPRA      .AsFloat := cdsTempProdutosReducao         .AsCurrency;
               cdsComprasItensVENDA_COMPRA      .AsFloat := cdsTempProdutosPrecoVenda      .AsFloat;
               cdsComprasItensATACADO_COMPRA    .AsFloat := cdsTempProdutosPrecoAtacado    .AsFloat;
               cdsComprasItensVALIDADE_COMPRA   .AsDateTime := cdsTempProdutosValidade        .AsDateTime;
               cdsComprasItensQUANTIDADE_COMPRA .AsFloat := cdsTempProdutosQuantidade      .AsFloat;
               cdsComprasItensGRADE_COMPRA      .AsString   := cdsTempProdutosGradeProduto    .AsString;
               cdsComprasItensOCORRE_COMPRA     .AsString   := cdsTempProdutosOcorrencia      .AsString;
               cdsComprasItensICM_COMPRA        .AsFloat := cdsTempProdutosICMSEntrada     .AsFloat;
               cdsComprasItensIPI_COMPRA        .AsFloat := cdsTempProdutosIPIEntrada      .AsFloat;
               cdsComprasItensREDUTOR_COMPRA    .AsFloat := cdsTempProdutosReducao         .AsFloat;
               cdsComprasItensTOTAL_COMPRA      .AsFloat := cdsTempProdutosTotalCompra     .AsFloat;
               cdsComprasItensQUANT_OCO_COMPRA  .AsFloat := cdsTempProdutosQuantOcorrencia .AsFloat;

               cdsComprasItens.Post;
               Baixa_qtd_estoque(cdsComprasItensPRODUTO_COMPRA.AsInteger,
                                 cdsComprasItensQUANTIDADE_COMPRA.AsFloat,
                                 edtGrade.Text,
                                 '+');
               frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
               Application.ProcessMessages;

               cdsTempProdutos.Next;
            end;

            FreeAndNil(dmVd1101);
            FreeAndNil(frmProcess);
            cdsComprasItens.ApplyUpdates(0);
        end;
        {Application.MessageBox('Erro na grava��o da nota fiscal','Inform��o',mb_ok+MB_ICONINFORMATION);
        Exit;}
      end;
   end;

   if Application.MessageBox('Deseja imprimir etiquetas agora?','Confirma��o', MB_YESNO + MB_ICONQUESTION) = mrYes  then
   begin
      frmRL100102 := TfrmRL100102.Create(Self);

      cdsTempProdutos.First;
      while not cdsTempProdutos.Eof do
      begin
         with frmRL100102 do
         begin
            cdsItens.Append;

            cdsItensDESCRICAO .AsString := cdsTempProdutosDescricaoProduto.AsString;
            cdsItensQTD       .AsString := cdsTempProdutosQuantidade.AsString;
            cdsItensCODPRO    .AsString := cdsTempProdutosCodigoProduto.AsString;
            cdsItensVALOR     .AsString := cdsTempProdutosPrecoVenda.AsString;
            cdsItensCODFAB    .AsString := cdsTempProdutosCod_fabrica.AsString;
            cdsItensOBS       .AsString := cdsTempProdutosOBS.AsString;

            cdsItens.Post;
         end;

         frmRL100102.ShowModal;
         cdsTempProdutos.Next;
      end;
      
      FreeAndNil(frmRL100102);
   end;

   cdsTempProdutos.EmptyDataSet;

   btnIncluir  .Enabled := True;
   btnGravar   .Enabled := False;
   btnCancelar .Enabled := False;
   btnExcluir  .Enabled := False;
   btnAlterar  .Enabled := False;

   PageControl1.ActivePageIndex := 0;

   Self.Tag := 1;
   Close;
end;

procedure TfrmGr02.btnAlterarClick(Sender: TObject);
begin
   btnIncluir  .Enabled := False;
   btnGravar   .Enabled := True;
   btnCancelar .Enabled := True;
   btnExcluir  .Enabled := True;
   btnAlterar  .Enabled := False;
end;

procedure TfrmGr02.btnCancelarClick(Sender: TObject);
begin
   mSomaItens  :=0;
   btnIncluir  .Enabled := True;
   btnGravar   .Enabled := False;
   btnCancelar .Enabled := False;
   btnExcluir  .Enabled := False;
   btnAlterar  .Enabled := False;
end;

procedure TfrmGr02.edtCFOPExit(Sender: TObject);
var
Ctrl: TWinControl;
begin
   Ctrl := ActiveControl;
   if (Ctrl = btnFECHAR1) or (Ctrl = btnCancelar) Then
      exit ;

   With dmGr02 do
   begin
      qryNatureza.Close;
      if Empty(edtCFOP.Text) then
      begin
         Application.MessageBox('   C�digo de CFOP n�o informado','Erro',MB_ICONERROR);
         edtCFOP.SetFocus;
      end;

      qryNatureza.SQL.Clear;
      qryNatureza.SQL.Add('SELECT * FROM E_NATUREZA WHERE codigo_nat=:natureza');
      qryNatureza.ParamByName('NATUREZA').AsString:=(edtCFOP.Text);
      qryNatureza.Open;

      if qryNatureza.Eof then
      begin
         qryNatureza.Close;
         Application.MessageBox('C�digo de CFOP n�o cadastrado','Informa��o',mb_ok+MB_ICONINFORMATION);
         edtCFOP.SetFocus;
         Exit;
      end
      else
      begin
         if not (qryNaturezaOPERACAO_NAT.AsInteger in [1..4]) then
         begin
            Application.MessageBox('    CFOP n�o e entrada     ','Erro',MB_ICONERROR);
            edtCFOP.SetFocus;
         end;
      end;
   end;
end;

procedure TfrmGr02.edtFornecedorExit(Sender: TObject);
var
Ctrl: TWinControl;
begin
   if (edtFornecedor.Text <> '0') and (edtFornecedor.Text <> '') then
   begin
      if not Busca_Dados(edtFornecedor, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edtFornecedor.SetFocus;
         Exit;
      end
      else
      begin
         if Tipo_Cliente = 0 then
         begin
            Edit1.Clear;
            Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK + MB_ICONEXCLAMATION);
            edtFornecedor.SetFocus;
            Exit;
         end;
      end;
   end
   else
   begin
      edtFornecedor.SetFocus;
      Exit;
   end;


   {Ctrl := ActiveControl;

   if (Ctrl=btnFECHAR) or (Ctrl=btnCancelar) Then
   Begin

      exit ;

   end ;

   if Empty(edtFornecedor.Text) then
   begin

      exit;

   end ;

   With dmGr02 do
   begin

      qryPesqFornecedor.Close;
      qryPesqFornecedor.ParamByName('fornecedor').AsInteger:=StrToInt(edtFornecedor.text);
      qryPesqFornecedor.Open;

      if qryPesqFornecedor.Eof then
      begin

         qryPesqFornecedor.Close;
         Application.MessageBox('Fornecedor n�o cadastrado','Informa��o',mb_ok+MB_ICONINFORMATION);
         edtFornecedor.SetFocus;
         exit;

      end;

   end;}

end;

procedure TfrmGr02.TabSheet1Enter(Sender: TObject);
begin
   edtNotaFiscal.SetFocus;
end;

procedure TfrmGr02.TabSheet2Enter(Sender: TObject);
begin
   //dbgrid1.SetFocus;
end;

procedure TfrmGr02.edtQuantidadeChange(Sender: TObject);
begin
   edtTotalItem.Value:=(edtQuantidade.Value*edtPrecoCompra.Value);
end;

procedure TfrmGr02.edtPrecoCompraChange(Sender: TObject);
begin
   if (cdsTempProdutos.Active) and (cdsTempProdutos.State in [dsEdit,dsInsert]) then
      cdsTempProdutosTotalCompra.AsFloat := edtQuantidade.Value * edtPrecoCompra.Value;
end;

procedure TfrmGr02.edtDataEntradaExit(Sender: TObject);
var
Ctrl: TWinControl;
begin
   Ctrl := ActiveControl;
   if (Ctrl=btnFECHAR1) or (Ctrl=btnCancelar) Then
      exit;

   if edtDataEntrada.Date<edtEmissao.Date then
   begin
      Application.MessageBox('Data da entrada n�o pode ser menor que data de emiss�o','Informa��o',mb_ok+MB_ICONINFORMATION);
      Exit;
   end;
end;

procedure TfrmGr02.edtPrecoVendaEnter(Sender: TObject);
begin
   SpeedButton1Click(Sender);
end;

procedure TfrmGr02.SpeedButton1Click(Sender: TObject);
begin
   frmGr02_1 := TfrmGr02_1.Create(self);
   frmGr02_1.edtValorCompra.Value := edtPrecoCompra.Value;
   frmGr02_1.ShowModal;

   edtPrecoVenda.Value := frmGr02_1.edtPrecoVenda.Value;
   cdsTempProdutosPrecoVenda.AsFloat := frmGr02_1.edtPrecoVenda.Value;
   
   frmGr02_1.Release;
   frmGr02_1 := nil;
end;

procedure TfrmGr02.edtTotalItemExit(Sender: TObject);
begin
   cdsTempProdutosTotalCompra.AsFloat := edtQuantidade.Value * edtPrecoCompra.Value;

   if FloatToStr(cdsTempProdutosTotalCompra.AsFloat)<>FloatToStr(edtQuantidade.Value*edtPrecoCompra.Value) then
   begin
      if (cdsTempProdutosTotalCompra.AsFloat > 0) and (edtQuantidade.Value > 0) then
         edtPrecoCompra.Value:=cdsTempProdutosTotalCompra.AsFloat/edtQuantidade.Value
   end;
end;

procedure TfrmGr02.edtTransportaExit(Sender: TObject);
var
  Ctrl: TWinControl;
begin
   if (edtTransporta.Text <> '') or (edtTransporta.Text <> '0') then
      Busca_Dados(edtTransporta, Edit2, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE');

   if Tipo_Cliente = 0 then
   begin
      Edit2.Clear;
      Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK + MB_ICONEXCLAMATION);
      edtTransporta.SetFocus;
      Exit;
   end;
   

   {Ctrl := ActiveControl;

   if (Ctrl=btnFECHAR) or (Ctrl=btnCancelar) Then
   Begin

      exit ;

   end ;

   if Empty(edtTransporta.Text) then
   begin

      exit;

   end ;

   With dmGr02 do
   begin

      qryPesqTransportador.Close;
      qryPesqTransportador.ParamByName('TRANSPORTE').AsInteger:=StrToInt(edtTransporta.text);
      qryPesqTransportador.Open;

      if qryPesqTransportador.Eof then
      begin

         qryPesqTransportador.Close;
         Application.MessageBox('Transportador n�o cadastrado','Informa��o',mb_ok+MB_ICONINFORMATION);
         edtTransporta.SetFocus;
         exit;

      end;

   end;}

end;

procedure TfrmGr02.mTextoEnter(Sender: TObject);
begin
   self.KeyPreview:=false;
end;

procedure TfrmGr02.mTextoExit(Sender: TObject);
begin
   self.KeyPreview:=True;
end;

procedure TfrmGr02.PageControl1Exit(Sender: TObject);
begin
   if (cdsTempProdutos.State in[dsInsert,dsEdit]) then
      cdsTempProdutos.Cancel;
end;

procedure TfrmGr02.TabSheet2Exit(Sender: TObject);
begin
   if (cdsTempProdutos.State in[dsInsert,dsEdit]) then
      cdsTempProdutos.Cancel;
end;

procedure TfrmGr02.edtPrecoVendaExit(Sender: TObject);
var
      Ctrl: TWinControl;
begin
   Ctrl := ActiveControl;

   if Ctrl=btnFECHAR1 Then
      exit ;

   if edtPrecoVenda.Value<edtPreVndAtacado.Value then
   begin
      Application.MessageBox('Pre�o de Atacado maior que pre�o normal','Informa��o',mb_ok+MB_ICONERROR);
      edtPrecoVenda.SetFocus;
      exit;
   end;
end;

procedure TfrmGr02.edtPreVndAtacadoExit(Sender: TObject);
var
      Ctrl: TWinControl;
begin
   Ctrl := ActiveControl;
   if Ctrl=btnFECHAR1 Then
      exit;

   if edtPrecoVenda.Value<edtPreVndAtacado.Value then
   begin
      Application.MessageBox('Pre�o de Atacado maior que pre�o normal','Informa��o',mb_ok+MB_ICONERROR);
      edtPreVndAtacado.Value;
      exit;
   end;
end;

procedure TfrmGr02.edtReducaoExit(Sender: TObject);
var
  Ctrl: TWinControl;
begin
   Ctrl := ActiveControl;

   if Ctrl=btnFECHAR1 then
      exit;

   if cobCST.KeyValue = '020' then
   begin
      if edtReducao.Value <= 0 then
      begin
         application.MessageBox('Valor da Redu��o e invalido','Erro',MB_ICONERROR);
         edtReducao.SetFocus;
         exit;
      end;
   end;
end;

procedure TfrmGr02.DBGrid1Exit(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '';
   self.KeyPreview := True;
end;

procedure TfrmGr02.SpeedButton2Click(Sender: TObject);
begin
   edtFornecedor.SetFocus;
   ConsultaFornecedor(edtFornecedor);
end;

procedure TfrmGr02.SpeedButton3Click(Sender: TObject);
begin
   edtTransporta.SetFocus;
   ConsultaFornecedor(edtTransporta);
end;

procedure TfrmGr02.edtGradeEnter(Sender: TObject);
begin
   if edtProduto.EditText = '' then
      edtProduto.SetFocus;
end;

procedure TfrmGr02.SpeedButton4Click(Sender: TObject);
begin
   ConsultaProduto(edtProduto);
   edtProduto.SetFocus;
end;

procedure TfrmGr02.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   btnGravar.Enabled := False;

   if key = vk_f12 then
      SpeedButton4.Click
   else

   if key = 13 then
   begin
      if edtProduto.Value = 0 then
         Controla_Campos(False)
      else
         Controla_Campos(True);
         
      With dmGr02 do
      begin
         cdsTempProdutos.Append;
         //cdsTempProdutosDescricaoProduto.AsString:=cobProduto.Text;
         qryProdutos.Close;
         qryProdutos.SQL.Clear;

         if edtProduto.EditText = '' then
            edtProduto.EditText := '0';

         qryProdutos.SQL.Add('SELECT * FROM P_PRODUTOS WHERE CLASSE_PRODUTO=1 ');
         qryProdutos.SQL.Add('AND COD_EMPRESA=:EMPRESA AND CODIGO_PRODUTO= '+ QuotedStr(edtProduto.EditText) +' ORDER BY DESCRICAO_PRODUTO');
         qryProdutos.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);

         qryProdutos.Open;

         if not ( qryProdutos.Eof ) then
         begin
            if qryProdutosGRADE_PRODUTO.AsString = 'T' then
            begin
               qryProdutosGrade.Close;
               qryProdutosGrade.ParamByName('PRODUTO').AsInteger:=qryProdutosCODIGO_PRODUTO.AsInteger;
               qryProdutosGrade.ParamByName('EMPRESA').AsInteger:=qryProdutosCOD_EMPRESA.AsInteger;
               qryProdutosGrade.Open;
            end;
            edtPrecoCompra.Value := qryProdutosPRECO_COMPRA_PRODUTO.AsFloat;
         end
         else
         begin
            Application.MessageBox('Produto n�o cadastrado','Informa��o',MB_ICONINFORMATION);
            edtProduto.SetFocus;
            Exit;
         end;

         //if cdsTempProdutos.State in [dsEdit,dsInsert] then
        // begin
        if not qryProdutos.IsEmpty then
        begin
            Incluir := True;
            cdsTempProdutos.Append;
            cdsTempProdutosEstoqueAtual.AsFloat := qryProdutosESTOQUE_PRODUTO.AsFloat;
            cdsTempProdutosQuantidade  .AsFloat := 1;
            cdsTempProdutosPrecoCompra .AsFloat := qryProdutosPRECO_COMPRA_PRODUTO.AsFloat;
            cdsTempProdutos.Post;
        end;
      end;
   end;
end;

procedure TfrmGr02.edtFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f6 then
      SpeedButton2.Click;
end;

procedure TfrmGr02.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

procedure TfrmGr02.dsTempProdutosDataChange(Sender: TObject;
  Field: TField);
begin
   BitBtn4.Enabled := (cdsTempProdutos.Active) and
                      (cdsTempProdutos.RecordCount > 0) and
                      (Incluir);

   btnGravar.Enabled := (cdsTempProdutos.Active) and
                        (cdsTempProdutos.RecordCount > 0) and
                        (not(BitBtn4.Enabled));
end;


procedure TfrmGr02.Controla_Campos(pCampo : Boolean);
begin
   edtEstoqueAtual.Enabled := pCampo;
   edtQuantidade.Enabled   := pCampo;
   edtPrecoCompra.Enabled  := pCampo;
   edtTotalItem.Enabled    := pCampo;
   edtValidade.Enabled     := pCampo;
   edtICMSEntrada.Enabled  := pCampo;
   edtIPIProduto.Enabled   := pCampo;
   edtPrecoVenda.Enabled   := pCampo;
   edtGrade.Enabled        := pCampo;
   cobCST.Enabled          := pCampo;
   edtReducao.Enabled      := pCampo;
   DBRadioGroup1.Enabled   := pCampo; 
   edtQuantOcorrencia.Enabled := pCampo;
   edtPreVndAtacado.Enabled   := pCampo;
end;

end.

