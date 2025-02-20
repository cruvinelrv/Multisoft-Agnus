unit uRL0415;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppSubRpt, DB, ppParameter, ppModule, raCodMod;

type
  TfrmRL0415 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    cbxTipo: TComboBox;
    cbxModelo: TComboBox;
    cbxOrdem: TComboBox;
    edtNotaIni: TJvValidateEdit;
    Label10: TLabel;
    edtNotaFim: TJvValidateEdit;
    edtDataIni: TJvDateEdit;
    Label11: TLabel;
    edtDataFim: TJvDateEdit;
    edtSerie: TEdit;
    chekProdutos: TCheckBox;
    chekTributacao: TCheckBox;
    edtVendedor: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Label8: TLabel;
    edtReserva: TEdit;
    Label7: TLabel;
    rptRel_Sintetico: TppReport;
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
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
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
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppLabel13: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    Tipo_Tributacao: TppDBText;
    ppLabel15: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLabel16: TppLabel;
    ppParameterList1: TppParameterList;
    ppDBText1: TppDBText;
    ppDBText16: TppDBText;
    ppLine3: TppLine;
    Total_Tributacao: TppDBCalc;
    ppLine4: TppLine;
    raCodeModule1: TraCodeModule;
    ppVariable1: TppVariable;
    rptRel_Analitico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel17: TppLabel;
    ppDBText23: TppDBText;
    ppLabel18: TppLabel;
    ppDBText24: TppDBText;
    ppLabel19: TppLabel;
    ppDBText25: TppDBText;
    ppLabel20: TppLabel;
    ppDBText26: TppDBText;
    ppLabel21: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText27: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel37: TppLabel;
    ppDBText30: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppLabel43: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel48: TppLabel;
    ppLine8: TppLine;
    ppLine7: TppLine;
    ppDBCalc1: TppDBCalc;
    ppC_000: TppDBCalc;
    ppC_010: TppDBCalc;
    ppC_020: TppDBCalc;
    ppC_040: TppDBCalc;
    ppC_060: TppDBCalc;
    pp000: TppLabel;
    pp010: TppLabel;
    pp020: TppLabel;
    pp040: TppLabel;
    pp060: TppLabel;
    ppDBCalc7: TppDBCalc;
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtNotaIniExit(Sender: TObject);
    procedure edtNotaFimExit(Sender: TObject);
    procedure edtVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure ppLabel30GetText(Sender: TObject; var Text: String);
    procedure ppLabel37GetText(Sender: TObject; var Text: String);
    procedure cbxOrdemChange(Sender: TObject);
    procedure cbxModeloChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Cont, Compara1 : Integer;
    Valor_Tribu000, Valor_Tribu010,
    Valor_Tribu020, Valor_Tribu040,
    Valor_Tribu060, Total_Geral1 : Double;
  end;

var
  frmRL0415: TfrmRL0415;

implementation

uses udmRL0415, uGlobal, uConsulta, uProcesso2;

{$R *.dfm}

procedure TfrmRL0415.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0415.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0415.FormCreate(Sender: TObject);
begin
   dmRL0415 := TdmRL0415.Create(Self);

   edtSerie.Text := '';

   if cbxOrdem.ItemIndex = 0 then
   begin
      edtDataIni.Clear;
      edtDataFim.Clear;
      edtDataIni.Enabled := False;
      edtDataFim.Enabled := False;
   end
   else
   begin
      edtDataIni.Enabled := True;
      edtDataFim.Enabled := True;
   end;

   if cbxOrdem.ItemIndex = 1 then
   begin
      edtNotaIni.Clear;
      edtNotaFim.Clear;
      edtNotaIni.Enabled := False;
      edtNotaFim.Enabled := False;
   end
   else
   begin
      edtNotaIni.Enabled := True;
      edtNotaFim.Enabled := True;
   end;
end;

procedure TfrmRL0415.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if cbxOrdem.Focused then
      Exit;

   if edtDataIni.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data inicial do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0415.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if cbxOrdem.Focused then
      Exit;

   if edtDataFim.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data final do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0415.edtNotaIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if cbxOrdem.ItemIndex = 0 then
   begin
      if edtNotaIni.Value = 0 then
      begin
         edtNotaIni.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0415.edtNotaFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if cbxOrdem.ItemIndex = 0 then
   begin
      if edtNotaFim.Value = 0 then
      begin
         edtNotaFim.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0415.edtVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtVendedor, Edit1, 'P_VENDEDOR', 'CODIGO_VENDEDOR', 'NOME_VENDEDOR') then
      begin
         edtVendedor.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0415.SpeedButton1Click(Sender: TObject);
begin
   edtVendedor.SetFocus;

   ConsultaVendedor(edtVendedor);
end;

procedure TfrmRL0415.btnImprimirClick(Sender: TObject);
begin
   Valor_Tribu000      := 0;
   Valor_Tribu010      := 0;
   Valor_Tribu020      := 0;
   Valor_Tribu040      := 0;
   Valor_Tribu060      := 0;
   Total_Geral1        := 0;


   dmRL0415.cdsVenda.Close;

   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   if cbxTipo.ItemIndex = 0 then
   begin
      dmRL0415.cdsVenda.Params.ParamByName('VENDA_DEVOLUCAO1').AsString := '1';
      dmRL0415.cdsVenda.Params.ParamByName('VENDA_DEVOLUCAO2').AsString := '1';
   end;

   if cbxTipo.ItemIndex = 1 then
   begin
      dmRL0415.cdsVenda.Params.ParamByName('VENDA_DEVOLUCAO1').AsString := '3';
      dmRL0415.cdsVenda.Params.ParamByName('VENDA_DEVOLUCAO2').AsString := '4';
   end;

   if cbxTipo.ItemIndex = 2 then
   begin
      dmRL0415.cdsVenda.Params.ParamByName('VENDA_DEVOLUCAO1').AsString := '1';
      dmRL0415.cdsVenda.Params.ParamByName('VENDA_DEVOLUCAO2').AsString := '9';
   end;

   if (edtNotaIni.Value > 0) and (edtNotaFim.Value > 0) then
   begin
      dmRL0415.cdsVenda.Params.ParamByName('NOTA1').AsInteger := edtNotaIni.Value;
      dmRL0415.cdsVenda.Params.ParamByName('NOTA2').AsInteger := edtNotaFim.Value;
   end
   else
   begin
      dmRL0415.cdsVenda.Params.ParamByName('NOTA1').AsInteger := 0;
      dmRL0415.cdsVenda.Params.ParamByName('NOTA2').AsInteger := 999999999;
   end;


   if (edtDataIni.Text = '  /  /    ') and (edtDataFim.Text = '  /  /    ') then
   begin
      dmRL0415.cdsVenda.Params.ParamByName('DATA1').AsString := '01/01/1950';
      dmRL0415.cdsVenda.Params.ParamByName('DATA2').AsString := '01/01/2200';
   end
   else
   begin
      dmRL0415.cdsVenda.Params.ParamByName('DATA1').AsDate := edtDataIni.Date;
      dmRL0415.cdsVenda.Params.ParamByName('DATA2').AsDate := edtDataFim.Date;
   end;


   if (edtSerie.Text = 'CI') and (edtReserva.Text = '�') then
   begin
      dmRL0415.cdsVenda.Params.ParamByName('SERIE1').AsString    := edtSerie.Text;
      dmRL0415.cdsVenda.Params.ParamByName('SERIE2').AsString    := edtSerie.Text;
      dmRL0415.cdsVenda.Params.ParamByName('SERIE_DIF').AsString := '';
   end
   else
   begin
      if (edtSerie.Text <> 'CI') and (edtSerie.Text <> '') then
      begin
         dmRL0415.cdsVenda.Params.ParamByName('SERIE1').AsString    := edtSerie.Text;
         dmRL0415.cdsVenda.Params.ParamByName('SERIE2').AsString    := edtSerie.Text;
         dmRL0415.cdsVenda.Params.ParamByName('SERIE_DIF').AsString := 'CI';
      end;

      if (edtSerie.Text <> 'CI') and (edtSerie.Text = '') then
      begin
         dmRL0415.cdsVenda.Params.ParamByName('SERIE1').AsString    := 'A';
         dmRL0415.cdsVenda.Params.ParamByName('SERIE2').AsString    := 'Z';
         dmRL0415.cdsVenda.Params.ParamByName('SERIE_DIF').AsString := 'CI';
      end;
   end;

   if edtVendedor.Value > 0 then
   begin
      dmRL0415.cdsVenda.Params.ParamByName('VENDEDOR1').AsInteger := edtVendedor.Value;
      dmRL0415.cdsVenda.Params.ParamByName('VENDEDOR2').AsInteger := edtVendedor.Value;
   end
   else
   begin
      dmRL0415.cdsVenda.Params.ParamByName('VENDEDOR1').AsInteger := 0;
      dmRL0415.cdsVenda.Params.ParamByName('VENDEDOR2').AsInteger := 999999999;
   end;

   dmRL0415.cdsVenda.IndexFieldNames := 'codigo_venda';

   dmRL0415.cdsVenda.Open;

   if chekProdutos.Checked = True then
   begin
      ppSubReport1.Visible  := True;

      if chekTributacao.Checked = True then
      begin
         pp000.Visible   := True;
         ppC_000.Visible := True;
         pp010.Visible   := True;
         ppC_010.Visible := True;
         pp020.Visible   := True;
         ppC_020.Visible := True;
         pp040.Visible   := True;
         ppC_040.Visible := True;
         pp060.Visible   := True;
         ppC_060.Visible := True;
      end
      else
      begin
         pp000.Visible   := False;
         ppC_000.Visible := False;
         pp010.Visible   := False;
         ppC_010.Visible := False;
         pp020.Visible   := False;
         ppC_020.Visible := False;
         pp040.Visible   := False;
         ppC_040.Visible := False;
         pp060.Visible   := False;
         ppC_060.Visible := False;
      end;
   end
   else
   begin
      ppSubReport1.Visible := False;
      pp000.Visible        := False;
      ppC_000.Visible      := False;
      pp010.Visible        := False;
      ppC_010.Visible      := False;
      pp020.Visible        := False;
      ppC_020.Visible      := False;
      pp040.Visible        := False;
      ppC_040.Visible      := False;
      pp060.Visible        := False;
      ppC_060.Visible      := False;
   end;

   frmProcesso2.Close;

   if dmRL0415.cdsVenda.IsEmpty then
   begin
      Application.MessageBox('Nenhum registro encontrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      Exit;
   end;

   if cbxModelo.ItemIndex = 0 then
      rptRel_Sintetico.Print
   else
      rptRel_Analitico.Print;
end;

procedure TfrmRL0415.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0415.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0415.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   if (edtNotaIni.Value > 0) and (edtNotaFim.Value > 0) then
      Text := 'Espelho Vendas Sequ�ncia de ' + edtNotaIni.EditText + ' a ' + edtNotaFim.EditText
   else
      Text := 'Espelho Vendas Per�odo de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0415.lblParam1GetText(Sender: TObject; var Text: String);
Var Cabecalho2 : String;
begin
   if edtSerie.Text <> '' then
      Cabecalho2 := 'S�rie ' + edtSerie.Text + ' ' + cbxModelo.Text
   else
      Cabecalho2 := 'Todas as Series ' + cbxModelo.Text;

   if edtVendedor.Value > 0 then
      Text := Cabecalho2 + ' / ' + 'Vendedor: ' + StrZero(edtVendedor.EditText, 3)
   else
      Text := Cabecalho2;
end;

procedure TfrmRL0415.ppLabel30GetText(Sender: TObject; var Text: String);
begin
   if dmRL0415.cdsVendaTIPO_PRECO_VENDA.AsString = 'A' then
      Text := 'Atacado'
   else
      Text := 'Lista';
end;

procedure TfrmRL0415.ppLabel37GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0415.cdsVendaEXCLUSAO_VENDA.AsString;
end;

procedure TfrmRL0415.cbxOrdemChange(Sender: TObject);
begin
   if cbxOrdem.ItemIndex = 0 then
   begin
      edtDataIni.Clear;
      edtDataFim.Clear;
      edtDataIni.Enabled := False;
      edtDataFim.Enabled := False;
   end
   else
   begin
      edtDataIni.Enabled := True;
      edtDataFim.Enabled := True;
   end;

   if cbxOrdem.ItemIndex = 1 then
   begin
      edtNotaIni.Clear;
      edtNotaFim.Clear;
      edtNotaIni.Enabled := False;
      edtNotaFim.Enabled := False;
   end
   else
   begin
      edtNotaIni.Enabled := True;
      edtNotaFim.Enabled := True;
   end;
end;

procedure TfrmRL0415.cbxModeloChange(Sender: TObject);
begin
   if cbxModelo.ItemIndex = 1 then
   begin
      chekProdutos.Checked := False;
      chekTributacao.Checked := False;
      chekProdutos.Enabled   := False;
      chekTributacao.Enabled := False;
   end
   else
   begin
      chekProdutos.Enabled   := True;
      chekTributacao.Enabled := True;
   end;
end;

procedure TfrmRL0415.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0415.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
