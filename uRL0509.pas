unit uRL0509;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmRL0509 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    edtDataBase: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    edtCodigo: TJvValidateEdit;
    SpeedButton6: TSpeedButton;
    Edit1: TEdit;
    edtCompra: TJvValidateEdit;
    rptRel_Modelo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa: TppLabel;
    ppLine1: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppLine2: TppLine;
    lblData: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel9: TppLabel;
    ppDBText14: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppDBCalc2: TppDBCalc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtDataBaseExit(Sender: TObject);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Periodo;
  public
    { Public declarations }
    Mes, Data_Base1,
    Data_Base2, Data_Base3,
    Quanti_Itens1,
    Quanti_Itens2,
    Quanti_Itens3 : Double;
    Mes_Ini1, Mes_Ini2,
    Mes_Ini3, Mes_Fim1,
    Mes_Fim2, Mes_Fim3 : String;
  end;

var
  frmRL0509: TfrmRL0509;

implementation

uses uConsulta, uGlobal, udmRL0509, DateUtils, DB, uProcesso2;

{$R *.dfm}

procedure TfrmRL0509.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0509.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0509.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0509.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if (ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 2) then
      begin
         if not Busca_Dados(edtCodigo, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
         begin
            edtCodigo.SetFocus;
            Exit;
         end
         else
         begin
            if Tipo_Cliente = 0 then
            begin
               Edit1.Clear;
               Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               edtCodigo.SetFocus;
               Exit;
            end;
         end;
      end;

      if ComboBox1.ItemIndex = 1 then
      begin
         if not Busca_Dados(edtCodigo, Edit1, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
         begin
            edtCodigo.SetFocus;
            Exit;
         end;
      end;
   end;
end;

procedure TfrmRL0509.SpeedButton6Click(Sender: TObject);
begin
   edtCodigo.SetFocus;

   if (ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 2) then
      ConsultaFornecedor(edtCodigo);

   if ComboBox1.ItemIndex = 1 then
      ConsultaGrupoProdutos(edtCodigo);
end;

procedure TfrmRL0509.FormCreate(Sender: TObject);
begin
   dmRL0509 := TdmRL0509.Create(Self);

   Data_Base1 := 0;
   Data_Base2 := 0;
   Data_Base3 := 0;
   Mes_Ini1   := '';
   Mes_Ini2   := '';
   Mes_Ini3   := '';
   Mes_Fim1   := '';
   Mes_Fim2   := '';
   Mes_Fim3   := '';
end;

procedure TfrmRL0509.btnImprimirClick(Sender: TObject);
Var
  Sql1 : String;
  A : TDateTime;
begin
   if edtCodigo.Value = 0 then
   begin
      Application.MessageBox('Informe o valor do campo espec�fico', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtCodigo.SetFocus;
      Exit;
   end;

   Quanti_Itens1 := 0;
   Quanti_Itens2 := 0;
   Quanti_Itens3 := 0;

   dmRL0509.cdsTemp.Open;

   A := Time;

   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   if dmRL0509.cdsTemp.RecordCount > 0 then
      dmRL0509.cdsTemp.EmptyDataSet;

   dmRL0509.cdsProduto.Close;

   if (ComboBox1.ItemIndex = 0) or (ComboBox1.ItemIndex = 2) then
   begin
      dmRL0509.cdsProduto.Params.ParamByName('FABRICA1').AsInteger := edtCodigo.Value;
      dmRL0509.cdsProduto.Params.ParamByName('FABRICA2').AsInteger := edtCodigo.Value;
      dmRL0509.cdsProduto.Params.ParamByName('GRUPO1').AsInteger   := 0;
      dmRL0509.cdsProduto.Params.ParamByName('GRUPO2').AsInteger   := 999999999;
   end;

   if ComboBox1.ItemIndex = 1 then
   begin
      dmRL0509.cdsProduto.Params.ParamByName('FABRICA1').AsInteger := 0;
      dmRL0509.cdsProduto.Params.ParamByName('FABRICA2').AsInteger := 999999999;
      dmRL0509.cdsProduto.Params.ParamByName('GRUPO1').AsInteger   := edtCodigo.Value;
      dmRL0509.cdsProduto.Params.ParamByName('GRUPO2').AsInteger   := edtCodigo.Value;
   end;

   dmRL0509.cdsProduto.Open;

   while not dmRL0509.cdsProduto.Eof do
   begin
      dmRL0509.cdsTemp.Append;

      dmRL0509.cdsTempCODIGO.AsInteger   := dmRL0509.cdsProdutoCODIGO_PRODUTO.AsInteger;
      dmRL0509.cdsTempDESCRICAO.AsString := dmRL0509.cdsProdutoDESCRICAO_PRODUTO.AsString;
      dmRL0509.cdsTempEST_ATUAL.AsFloat  := dmRL0509.cdsProdutoESTOQUE_PRODUTO.AsFloat;

      Data_Base1 := MonthOf(edtDataBase.Date - 90);

      Data_Base2 := MonthOf(edtDataBase.Date - 60);

      Data_Base3 := MonthOf(edtDataBase.Date - 30);

      Periodo; // procedure

      Sql1 := '';

      Sql1 := 'select i.id_venda_item, i.codigo_ivenda, i.produto_ivenda, '+
              'p.grupo_produto, i.quantidade_ivendas, p.descricao_produto, '+
              'p.estoque_produto, v.data_venda, p.data_compra_produto, '+
              'p.preco_compra_produto, p.codigo_produto '+
              'from P_VENDAS v '+
              'left outer join p_vendas_itens i on (i.codigo_ivenda = v.codigo_venda) '+
              'left outer join p_produtos p on (i.produto_ivenda = p.codigo_produto) '+
              'where v.codigo_venda > 0';

      Sql1 := Sql1 + ' and p.codigo_produto = '+ dmRL0509.cdsProdutoCODIGO_PRODUTO.AsString;

      Sql1 := Sql1 + ' and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(Mes_Ini1)));

      Sql1 := Sql1 + ' and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(Mes_Fim1)));

      dmRL0509.cdsVendas_Itens.Close;
      dmRL0509.cdsVendas_Itens.CommandText := Sql1;
      dmRL0509.cdsVendas_Itens.Open;

      Quanti_Itens1 := 0;

      while not dmRL0509.cdsVendas_Itens.Eof do
      begin
         Quanti_Itens1 := Quanti_Itens1 + dmRL0509.cdsVendas_Itens.FieldByName('QUANTIDADE_IVENDAS').AsFloat;

         dmRL0509.cdsVendas_Itens.Next;
      end;

      dmRL0509.cdsTempMES_1.AsFloat := Quanti_Itens1;


      Sql1 := '';

      Sql1 := 'select i.id_venda_item, i.codigo_ivenda, i.produto_ivenda, '+
              'p.grupo_produto, i.quantidade_ivendas, p.descricao_produto, '+
              'p.estoque_produto, v.data_venda, p.data_compra_produto, '+
              'p.preco_compra_produto, p.codigo_produto '+
              'from P_VENDAS v '+
              'left outer join p_vendas_itens i on (i.codigo_ivenda = v.codigo_venda) '+
              'left outer join p_produtos p on (i.produto_ivenda = p.codigo_produto) '+
              'where v.codigo_venda > 0';

      Sql1 := Sql1 + ' and p.codigo_produto = '+ dmRL0509.cdsProdutoCODIGO_PRODUTO.AsString;

      Sql1 := Sql1 + ' and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(Mes_Ini2)));

      Sql1 := Sql1 + ' and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(Mes_Fim2)));

      dmRL0509.cdsVendas_Itens.Close;
      dmRL0509.cdsVendas_Itens.CommandText := Sql1;
      dmRL0509.cdsVendas_Itens.Open;

      Quanti_Itens2 := 0;

      while not dmRL0509.cdsVendas_Itens.Eof do
      begin
         Quanti_Itens2 := Quanti_Itens2 + dmRL0509.cdsVendas_Itens.FieldByName('QUANTIDADE_IVENDAS').AsFloat;

         dmRL0509.cdsVendas_Itens.Next;
      end;

      dmRL0509.cdsTempMES_2.AsFloat := Quanti_Itens2;


      Sql1 := '';

      Sql1 := 'select i.id_venda_item, i.codigo_ivenda, i.produto_ivenda, '+
              'p.grupo_produto, i.quantidade_ivendas, p.descricao_produto, '+
              'p.estoque_produto, v.data_venda, p.data_compra_produto, '+
              'p.preco_compra_produto, p.codigo_produto '+
              'from P_VENDAS v '+
              'left outer join p_vendas_itens i on (i.codigo_ivenda = v.codigo_venda) '+
              'left outer join p_produtos p on (i.produto_ivenda = p.codigo_produto) '+
              'where v.codigo_venda > 0';

      Sql1 := Sql1 + ' and p.codigo_produto = '+ dmRL0509.cdsProdutoCODIGO_PRODUTO.AsString;

      Sql1 := Sql1 + ' and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(Mes_Ini3)));

      Sql1 := Sql1 + ' and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDate(Mes_Fim3)));

      dmRL0509.cdsVendas_Itens.Close;
      dmRL0509.cdsVendas_Itens.CommandText := Sql1;
      dmRL0509.cdsVendas_Itens.Open;

      Quanti_Itens3 := 0;

      while not dmRL0509.cdsVendas_Itens.Eof do
      begin
         Quanti_Itens3 := Quanti_Itens3 + dmRL0509.cdsVendas_Itens.FieldByName('QUANTIDADE_IVENDAS').AsFloat;

         dmRL0509.cdsVendas_Itens.Next;
      end;


      dmRL0509.cdsTempMES_3.AsFloat      := Quanti_Itens3;
      dmRL0509.cdsTempMEDIA.AsFloat      := ((dmRL0509.cdsTempMES_1.AsFloat + dmRL0509.cdsTempMES_2.AsFloat + dmRL0509.cdsTempMES_3.AsFloat) / 3);
      dmRL0509.cdsTempSUGES.AsFloat      := ArredondarDecimal((dmRL0509.cdsTempMEDIA.AsFloat / 30 * edtCompra.Value) - dmRL0509.cdsProdutoESTOQUE_PRODUTO.AsFloat, 0);
      dmRL0509.cdsTempULT_COM.AsDateTime := dmRL0509.cdsProdutoDATA_COMPRA_PRODUTO.AsDateTime;
      dmRL0509.cdsTempULT_PRE_COM.AsFloat:= dmRL0509.cdsProdutoPRECO_COMPRA_PRODUTO.AsFloat;

      if dmRL0509.cdsTempSUGES.AsFloat > 0 then
         dmRL0509.cdsTempTOTAL.AsFloat := dmRL0509.cdsTempSUGES.AsFloat * dmRL0509.cdsTempULT_PRE_COM.AsFloat;

      dmRL0509.cdsTemp.Post;

      dmRL0509.cdsProduto.Next;
   end;

   frmProcesso2.Close;

   //Label5.Caption := TimeToStr(Time - A);

   rptRel_Modelo.Print;
end;

procedure TfrmRL0509.edtDataBaseExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataBase.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data base', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataBase.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0509.Periodo;
begin
   if Data_Base1 = 1 then
   begin
      Mes_Ini1    := '01/01/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1    := '30/01/' + FloatToStr(YearOf(edtDataBase.Date))
   end;

   if Data_Base1 = 2 then
   begin
      Mes_Ini1    := '01/02/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1    := '28/01/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 3 then
   begin
      Mes_Ini1    := '01/03/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1    := '30/03/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 4 then
   begin
      Mes_Ini1    := '01/04/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1    := '30/04/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 5 then
   begin
      Mes_Ini1    := '01/05/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1    := '30/05/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 6 then
   begin
      Mes_Ini1    := '01/06/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1    := '30/06/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 7 then
   begin
      Mes_Ini1    := '01/07/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1    := '30/07/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 8 then
   begin
      Mes_Ini1    := '01/08/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1    := '30/08/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 9 then
   begin
      Mes_Ini1    := '01/09/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1    := '30/09/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 10 then
   begin
      Mes_Ini1     := '01/10/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1     := '30/10/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 11 then
   begin
      Mes_Ini1     := '01/11/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1     := '30/11/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base1 = 12 then
   begin
      Mes_Ini1     := '01/12/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim1     := '30/12/' + FloatToStr(YearOf(edtDataBase.Date));
   end;




   if Data_Base2 = 1 then
   begin
      Mes_Ini2    := '01/01/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2    := '30/01/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 2 then
   begin
      Mes_Ini2 := '01/02/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2 := '28/01/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 3 then
   begin
      Mes_Ini2    := '01/03/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2    := '30/03/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 4 then
   begin
      Mes_Ini2    := '01/04/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2    := '30/04/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 5 then
   begin
      Mes_Ini2    := '01/05/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2    := '30/05/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 6 then
   begin
      Mes_Ini2    := '01/06/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2    := '30/06/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 7 then
   begin
      Mes_Ini2    := '01/07/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2    := '30/07/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 8 then
   begin
      Mes_Ini2    := '01/08/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2    := '30/08/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 9 then
   begin
      Mes_Ini2    := '01/09/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2    := '30/09/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 10 then
   begin
      Mes_Ini2     := '01/10/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2     := '30/10/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 11 then
   begin
      Mes_Ini2 := '01/11/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2 := '30/11/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base2 = 12 then
   begin
      Mes_Ini2 := '01/12/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim2 := '30/12/' + FloatToStr(YearOf(edtDataBase.Date));
   end;





   if Data_Base3 = 1 then
   begin
      Mes_Ini3 := '01/01/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/01/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 2 then
   begin
      Mes_Ini3 := '01/02/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '28/01/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 3 then
   begin
      Mes_Ini3 := '01/03/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/03/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 4 then
   begin
      Mes_Ini3 := '01/04/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/04/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 5 then
   begin
      Mes_Ini3 := '01/05/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/05/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 6 then
   begin
      Mes_Ini3 := '01/06/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/06/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 7 then
   begin
      Mes_Ini3 := '01/07/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/07/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 8 then
   begin
      Mes_Ini3 := '01/08/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/08/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 9 then
   begin
      Mes_Ini3 := '01/09/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/09/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 10 then
   begin
      Mes_Ini3 := '01/10/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/10/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 11 then
   begin
      Mes_Ini3 := '01/11/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/11/' + FloatToStr(YearOf(edtDataBase.Date));
   end;

   if Data_Base3 = 12 then
   begin
      Mes_Ini3 := '01/12/' + FloatToStr(YearOf(edtDataBase.Date));
      Mes_Fim3 := '30/12/' + FloatToStr(YearOf(edtDataBase.Date));
   end;
end;

procedure TfrmRL0509.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   if edtCompra.Value = 1 then
      Text := 'Sugest�o de Compra para 01 dia - Data base ' + edtDataBase.Text;

   if edtCompra.Value > 1 then
      Text := 'Sugest�o de Compra para '+ StrZero(edtCompra.EditText, 2) +' dias - Data base ' + edtDataBase.Text;
end;

procedure TfrmRL0509.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Text := '    ' + ComboBox1.Text + ' : ' + StrZero(edtCodigo.EditText, 2) + ' ' + Edit1.Text;
end;

procedure TfrmRL0509.ppLabel4GetText(Sender: TObject; var Text: String);
begin
   if Data_Base1 = 1 then
      Text := 'JAN';

   if Data_Base1 = 2 then
      Text := 'FEV';

   if Data_Base1 = 3 then
      Text := 'MAR';

   if Data_Base1 = 4 then
      Text := 'ABR';

   if Data_Base1 = 5 then
      Text := 'MAI';

   if Data_Base1 = 6 then
      Text := 'JUN';

   if Data_Base1 = 7 then
      Text := 'JUL';

   if Data_Base1 = 8 then
      Text := 'AGO';

   if Data_Base1 = 9 then
      Text := 'SET';

   if Data_Base1 = 10 then
      Text := 'OUT';

   if Data_Base1 = 11 then
      Text := 'NOV';

   if Data_Base1 = 12 then
      Text := 'DEZ';

end;

procedure TfrmRL0509.ppLabel5GetText(Sender: TObject; var Text: String);
begin
   if Data_Base2 = 1 then
      Text := 'JAN';

   if Data_Base2 = 2 then
      Text := 'FEV';

   if Data_Base2 = 3 then
      Text := 'MAR';

   if Data_Base2 = 4 then
      Text := 'ABR';

   if Data_Base2 = 5 then
      Text := 'MAI';

   if Data_Base2 = 6 then
      Text := 'JUN';

   if Data_Base2 = 7 then
      Text := 'JUL';

   if Data_Base2 = 8 then
      Text := 'AGO';

   if Data_Base2 = 9 then
      Text := 'SET';

   if Data_Base2 = 10 then
      Text := 'OUT';

   if Data_Base2 = 11 then
      Text := 'NOV';

   if Data_Base2 = 12 then
      Text := 'DEZ';
end;

procedure TfrmRL0509.ppLabel6GetText(Sender: TObject; var Text: String);
begin
   if Data_Base3 = 1 then
      Text := 'JAN';

   if Data_Base3 = 2 then
      Text := 'FEV';

   if Data_Base3 = 3 then
      Text := 'MAR';

   if Data_Base3 = 4 then
      Text := 'ABR';

   if Data_Base3 = 5 then
      Text := 'MAI';

   if Data_Base3 = 6 then
      Text := 'JUN';

   if Data_Base3 = 7 then
      Text := 'JUL';

   if Data_Base3 = 8 then
      Text := 'AGO';

   if Data_Base3 = 9 then
      Text := 'SET';

   if Data_Base3 = 10 then
      Text := 'OUT';

   if Data_Base3 = 11 then
      Text := 'NOV';

   if Data_Base3 = 12 then
      Text := 'DEZ';
end;

procedure TfrmRL0509.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0509.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0509.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
