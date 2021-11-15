unit uRL0514;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppModule, raCodMod;

type
  TfrmRL0514 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label3: TLabel;
    edtDataIni: TJvDateEdit;
    Label1: TLabel;
    edtDataFim: TJvDateEdit;
    Label2: TLabel;
    edtTipoPagto: TJvValidateEdit;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    cbxModelo: TComboBox;
    edtVendedor: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    rptRel_Analitico: TppReport;
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
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel13: TppLabel;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppLabel14: TppLabel;
    ppVariable5: TppVariable;
    ppVariable6: TppVariable;
    ppVariable7: TppVariable;
    ppVariable8: TppVariable;
    rptRel_Sintetico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine4: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppLabel35: TppLabel;
    ppVariable9: TppVariable;
    ppVariable10: TppVariable;
    ppVariable11: TppVariable;
    ppVariable12: TppVariable;
    ppLabel36: TppLabel;
    ppVariable13: TppVariable;
    ppVariable14: TppVariable;
    ppVariable15: TppVariable;
    ppVariable16: TppVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtVendedorExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtTipoPagtoExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure ppVariable5Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable6Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable7Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable8Calc(Sender: TObject; var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
    Venda_Tabela, Venda_Desconto,
    Venda_Liquido, Venda_PercDesc : Double;
  end;

var
  frmRL0514: TfrmRL0514;

implementation

uses uConsulta, uGlobal, udmRL0514, uProcesso2;

{$R *.dfm}

procedure TfrmRL0514.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0514.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0514.FormCreate(Sender: TObject);
begin
   dmRL0514 := TdmRL0514.Create(Self);
end;

procedure TfrmRL0514.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRL0514.edtVendedorExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtVendedor, Edit2, 'P_VENDEDOR', 'CODIGO_VENDEDOR', 'NOME_VENDEDOR') then
   begin
      edtVendedor.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0514.SpeedButton1Click(Sender: TObject);
begin
   edtVendedor.SetFocus;

   ConsultaVendedor(edtVendedor);
end;

procedure TfrmRL0514.edtTipoPagtoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtTipoPagto, Edit1, 'P_CPAGAMENTO', 'CODIGO_CPAGAMENTO', 'DESCRICAO_CPAGAMENTO') then
   begin
      edtTipoPagto.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0514.SpeedButton2Click(Sender: TObject);
begin
   edtTipoPagto.SetFocus;

   ConsultaPagamento(edtTipoPagto);
end;

procedure TfrmRL0514.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

procedure TfrmRL0514.btnImprimirClick(Sender: TObject);
var Sql1 : String;
begin
   Venda_Tabela   := 0;
   Venda_Desconto := 0;
   Venda_Liquido  := 0;
   Venda_PercDesc := 0;

   Sql1 := 'select v. *, '+
           'Case when (not v.desconto_venda is null) '+
           'then (v.fatura_venda - v.desconto_venda) '+
           'else 0 '+
           'end as VALOR_LIQUIDO, '+
           'Case when (not v.desconto_venda is null) and (v.desconto_venda > 0) '+
           'then ((v.desconto_venda * 100) / v.fatura_venda) '+
           'else 0 '+
           'end as PERC_DESC, '+
           'substring(v.chave_venda from 1 for 8) as CAIXA, '+
           'substring(v.chave_venda from 10 for 1) as TURNO, '+
           'substring(v.chave_venda from 12 for 10) as FUNCIONARIO, '+
           'Case when (not v1.nome_vendedor is null) then v1.nome_vendedor '+
           'else ''NÃO CADASTRADO'' '+
           'end as NOME_VENDEDOR '+
           'from P_VENDAS v '+
           'left outer join p_vendedor v1 on (v.vendedor_venda = v1.codigo_vendedor) '+
           'where (v.exclusao_venda is null)  ';

   Sql1 := Sql1 + ' and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
   Sql1 := Sql1 + ' and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));

   if edtTipoPagto.Value > 0 then
      Sql1 := Sql1 + ' and v.cpagamento_venda = ' + QuotedStr(edtTipoPagto.EditText);

   if edtVendedor.Value > 0 then
      Sql1 := Sql1 + ' and v.vendedor_venda = ' + QuotedStr(edtVendedor.EditText);

   with dmRL0514 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsVenda.Close;
      cdsVenda.CommandText := Sql1;
      cdsVenda.Open;

      cdsVenda.First;
      while not cdsVenda.Eof do
      begin
         // apura o total de venda antes de apagar os registros
         // cuja desconto seja igual a zero
         Venda_Tabela := Venda_Tabela + cdsVendaFATURA_VENDA.AsFloat;
         Venda_Desconto := Venda_Desconto + cdsVendaDESCONTO_VENDA.AsFloat;
         Venda_Liquido := Venda_Liquido + cdsVendaVALOR_LIQUIDO.AsFloat;
         Venda_PercDesc := (Venda_Tabela - Venda_Liquido) * (100 / Venda_Tabela);   

         if cdsVendaDESCONTO_VENDA.AsFloat = 0 then
            cdsVenda.Delete
         else
            cdsVenda.Next;
      end;

      cdsVenda.First;
      frmProcesso2.Close;

      cdsVenda.IndexFieldNames := 'codigo_venda';

      if cbxModelo.ItemIndex = 0 then
         rptRel_Analitico.Print
      else
         rptRel_Sintetico.Print;
   end;
end;

procedure TfrmRL0514.edtDataIniExit(Sender: TObject);
begin
   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0514.edtDataFimExit(Sender: TObject);
begin
   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data final', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0514.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0514.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Descontos Concedidos de ' + edtDataIni.Text +' a '+ edtDataFim.Text;
end;

procedure TfrmRL0514.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0514.ppVariable5Calc(Sender: TObject; var Value: Variant);
begin
   Value := Venda_Tabela;
end;

procedure TfrmRL0514.ppVariable6Calc(Sender: TObject; var Value: Variant);
begin
   Value := Venda_Desconto;
end;

procedure TfrmRL0514.ppVariable7Calc(Sender: TObject; var Value: Variant);
begin
   Value := Venda_Liquido;
end;

procedure TfrmRL0514.ppVariable8Calc(Sender: TObject; var Value: Variant);
begin
   Value := Venda_PercDesc;
end;

end.
