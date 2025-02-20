unit uRL0418;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmRL0418 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    Label3: TLabel;
    edtDataFim: TJvDateEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtProduto: TJvValidateEdit;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    edtCliente: TJvValidateEdit;
    SpeedButton4: TSpeedButton;
    Edit2: TEdit;
    edtVendedor: TJvValidateEdit;
    SpeedButton5: TSpeedButton;
    Edit3: TEdit;
    edtFornecedor: TJvValidateEdit;
    SpeedButton6: TSpeedButton;
    Edit4: TEdit;
    cbxOrdem: TComboBox;
    cbxSeparador: TComboBox;
    edtSerie: TEdit;
    RadioGroup1: TRadioGroup;
    Label10: TLabel;
    edtReserva: TEdit;
    Label11: TLabel;
    rptRel_Produto: TppReport;
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
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine4: TppLine;
    ppDBText13: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    rptRel_Vendedor: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine6: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine7: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText25: TppDBText;
    ppLine8: TppLine;
    ppDBText26: TppDBText;
    ppLine9: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel28: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine10: TppLine;
    ppLabel68: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    rptRel_Cliente: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine21: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLine22: TppLine;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText63: TppDBText;
    ppLine23: TppLine;
    ppDBText64: TppDBText;
    ppLine24: TppLine;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel87: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine25: TppLine;
    ppLabel29: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine11: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel30: TppLabel;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine12: TppLine;
    rptRel_Data: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine13: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLine14: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel91: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLine15: TppLine;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLine26: TppLine;
    ppDBText39: TppDBText;
    ppLine27: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel92: TppLabel;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine28: TppLine;
    ppLabel31: TppLabel;
    ppLabel43: TppLabel;
    ppDBText30: TppDBText;
    ppLabel50: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine16: TppLine;
    ppSummaryBand4: TppSummaryBand;
    rptRel_Nenhum: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLine17: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine18: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel93: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText38: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    ppLabel94: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLine19: TppLine;
    ppDBText50: TppDBText;
    ppLabel95: TppLabel;
    rptRel_Modelo2: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine20: TppLine;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine29: TppLine;
    ppLabel103: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel114: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText75: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel115: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLine30: TppLine;
    ppLabel104: TppLabel;
    ppLabel108: TppLabel;
    ppLabel110: TppLabel;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppLabel109: TppLabel;
    ppLabel112: TppLabel;
    ppLabel111: TppLabel;
    ppLabel99: TppLabel;
    ppLine31: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxOrdemExit(Sender: TObject);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure ppLabel109GetText(Sender: TObject; var Text: String);
    procedure ppLabel103GetText(Sender: TObject; var Text: String);
    procedure ppLabel58GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
    procedure ppLabel76GetText(Sender: TObject; var Text: String);
    procedure ppLabel40GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Ordem1 : String;
  end;

var
  frmRL0418: TfrmRL0418;

implementation

uses uConsulta, uGlobal, uProcesso2, udmRL0418, Math;

{$R *.dfm}

procedure TfrmRL0418.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0418.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0418.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0418.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtProduto, Edit1, 'P_PRODUTOS', 'CODIGO_PRODUTO', 'DESCRICAO_PRODUTO') then
      begin
         edtProduto.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0418.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtCliente, Edit2, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edtCliente.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0418.edtVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtVendedor, Edit3, 'P_VENDEDOR', 'CODIGO_VENDEDOR', 'NOME_VENDEDOR') then
      begin
         edtVendedor.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0418.edtFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtFornecedor, Edit4, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edtFornecedor.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0418.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data inicial do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0418.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data final do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0418.SpeedButton2Click(Sender: TObject);
begin
   edtProduto.SetFocus;

   ConsultaProduto(edtProduto);
end;

procedure TfrmRL0418.SpeedButton4Click(Sender: TObject);
begin
   edtCliente.SetFocus;

   ConsultaCliente(edtCliente);
end;

procedure TfrmRL0418.SpeedButton5Click(Sender: TObject);
begin
   edtVendedor.SetFocus;

   ConsultaVendedor(edtVendedor);
end;

procedure TfrmRL0418.SpeedButton6Click(Sender: TObject);
begin
   edtFornecedor.SetFocus;

   ConsultaFornecedor(edtFornecedor);
end;

procedure TfrmRL0418.FormCreate(Sender: TObject);
begin
   dmRL0418 := TdmRL0418.Create(Self);

   Ordem1 := 'data_venda';
end;

procedure TfrmRL0418.btnImprimirClick(Sender: TObject);
begin
   dmRL0418.cdsVenda.Close;

   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   dmRL0418.cdsVenda.Params.ParamByName('DATA1').AsDate := edtDataIni.Date;
   dmRL0418.cdsVenda.Params.ParamByName('DATA2').AsDate := edtDataFim.Date;

   if edtCliente.Value > 0 then
   begin
      dmRL0418.cdsVenda.Params.ParamByName('CLIENTE1').AsInteger := edtCliente.Value;
      dmRL0418.cdsVenda.Params.ParamByName('CLIENTE2').AsInteger := edtCliente.Value;
   end
   else
   begin
      dmRL0418.cdsVenda.Params.ParamByName('CLIENTE1').AsInteger := 0;
      dmRL0418.cdsVenda.Params.ParamByName('CLIENTE2').AsInteger := 999999999;
   end;

   if edtVendedor.Value > 0 then
   begin
      dmRL0418.cdsVenda.Params.ParamByName('VENDEDOR1').AsInteger := edtVendedor.Value;
      dmRL0418.cdsVenda.Params.ParamByName('VENDEDOR2').AsInteger := edtVendedor.Value;
   end
   else
   begin
      dmRL0418.cdsVenda.Params.ParamByName('VENDEDOR1').AsInteger := 0;
      dmRL0418.cdsVenda.Params.ParamByName('VENDEDOR2').AsInteger := 999999999;
   end;

   if edtFornecedor.Value > 0 then
   begin
      dmRL0418.cdsVenda.Params.ParamByName('FORNECEDOR1').AsInteger := edtFornecedor.Value;
      dmRL0418.cdsVenda.Params.ParamByName('FORNECEDOR2').AsInteger := edtFornecedor.Value;
   end
   else
   begin
      dmRL0418.cdsVenda.Params.ParamByName('FORNECEDOR1').AsInteger := 0;
      dmRL0418.cdsVenda.Params.ParamByName('FORNECEDOR2').AsInteger := 999999999;
   end;

   if (edtSerie.Text = 'CI') and (edtReserva.Text = '�') then
   begin
      dmRL0418.cdsVenda.Params.ParamByName('SERIE1').AsString := edtSerie.Text;
      dmRL0418.cdsVenda.Params.ParamByName('SERIE2').AsString := edtSerie.Text;
      dmRL0418.cdsVenda.Params.ParamByName('SERIE_DIF').AsString := '';
   end
   else
   begin
      if (edtSerie.Text <> 'CI') and (edtSerie.Text <> '') then
      begin
         dmRL0418.cdsVenda.Params.ParamByName('SERIE1').AsString    := edtSerie.Text;
         dmRL0418.cdsVenda.Params.ParamByName('SERIE2').AsString    := edtSerie.Text;
         dmRL0418.cdsVenda.Params.ParamByName('SERIE_DIF').AsString := 'CI';
      end;

      if (edtSerie.Text <> 'CI') and (edtSerie.Text = '') then
      begin
         dmRL0418.cdsVenda.Params.ParamByName('SERIE1').AsString    := 'A';
         dmRL0418.cdsVenda.Params.ParamByName('SERIE2').AsString    := 'Z';
         dmRL0418.cdsVenda.Params.ParamByName('SERIE_DIF').AsString := 'CI';
      end;
   end;

   dmRL0418.cdsVenda.Open;

   frmProcesso2.Close;

   if RadioGroup1.ItemIndex = 0 then
   begin
      if cbxSeparador.ItemIndex = 0 then
      begin
         dmRL0418.cdsVenda.IndexFieldNames := Ordem1;
         rptRel_Nenhum.Print;
      end;

      if cbxSeparador.ItemIndex = 1 then
      begin
         dmRL0418.cdsVenda.IndexFieldNames := 'codigo_produto; ' + Ordem1;
         rptRel_Produto.Print;
      end;

      if cbxSeparador.ItemIndex = 2 then
      begin
         dmRL0418.cdsVenda.IndexFieldNames := 'vendedor_venda; ' + Ordem1;
         rptRel_Vendedor.Print;
      end;

      if cbxSeparador.ItemIndex = 3 then
      begin
         dmRL0418.cdsVenda.IndexFieldNames := 'cliente_venda; ' + Ordem1;
         rptRel_Cliente.Print;
      end;

      if cbxSeparador.ItemIndex = 4 then
      begin
         dmRL0418.cdsVenda.IndexFieldNames := 'data_venda; ' + Ordem1;
         rptRel_Data.Print;
      end;
   end
   else
   begin
      dmRL0418.cdsVenda.IndexFieldNames := Ordem1;
      rptRel_Modelo2.Print;
   end;
end;

procedure TfrmRL0418.cbxOrdemExit(Sender: TObject);
begin
   if cbxOrdem.ItemIndex = 0 then
      Ordem1      := 'data_venda';

   if cbxOrdem.ItemIndex = 1 then
      Ordem1      := 'codigo_produto';

   if cbxOrdem.ItemIndex = 2 then
      Ordem1      := 'vendedor_venda';

   if cbxOrdem.ItemIndex = 3 then
      Ordem1      := 'cliente_venda';

   if cbxOrdem.ItemIndex = 4 then
      Ordem1      := 'quantidade_ivendas';

   if cbxOrdem.ItemIndex = 5 then
      Ordem1      := 'descricao_produto';
end;

procedure TfrmRL0418.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   if RadioGroup1.ItemIndex = 0 then
      Text := 'Relat�rio de Vendas por Data / ' + 'Modelo 1'
   else
      Text := 'Relat�rio de Vendas por Data / ' + 'Modelo 2'
end;

procedure TfrmRL0418.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Text := '          De ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0418.ppLabel14GetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0418.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0418.ppLabel109GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0418.cdsVendaDESCRICAO_CIDADE.AsString + ' - ' + dmRL0418.cdsVendaUF_CIDADE.AsString;
end;

procedure TfrmRL0418.ppLabel103GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0418.ppLabel58GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0418.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0418.ppLabel18GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0418.ppLabel76GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0418.ppLabel40GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0418.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
