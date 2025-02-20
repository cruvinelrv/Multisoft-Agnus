unit uRL0701;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppModule, raCodMod, ppParameter;

type
  TfrmRL0701 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    cbxPeriodo: TComboBox;
    Label4: TLabel;
    cbxTipo: TComboBox;
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
    ppFooterBand2: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDias: TppVariable;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppJuros: TppVariable;
    ppLabel12: TppLabel;
    ppValorTotal: TppVariable;
    raCodeModule1: TraCodeModule;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine3: TppLine;
    ppParameterList1: TppParameterList;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel13: TppLabel;
    ppDBCalc1: TppDBCalc;
    Total_Juros: TppVariable;
    Total_Total: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    rptRel_Analitico: TppReport;
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
    ppVariable4: TppVariable;
    ppDBText10: TppDBText;
    ppVariable5: TppVariable;
    ppVariable6: TppVariable;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel35: TppLabel;
    ppVariable7: TppVariable;
    ppVariable8: TppVariable;
    ppVariable9: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine6: TppLine;
    ppLabel36: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppVariable10: TppVariable;
    ppVariable11: TppVariable;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppDBText19: TppDBText;
    ppLabel37: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0701: TfrmRL0701;

implementation

uses udmRL0701, uProcesso2, uGlobal, DB;

{$R *.dfm}

procedure TfrmRL0701.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0701.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0701.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0701.FormCreate(Sender: TObject);
begin
   dmRL0701 := TdmRL0701.Create(Self);
end;

procedure TfrmRL0701.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0701.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data final do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0701.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   // observe que as vari�veis do relat�rio est�o sendo calculadas dentro do pr�prio
   // ReportBuilder na op��o c�lculos, de cada vari�vel

   Sql1 := 'select p.documento_pagar, p.notafiscal, p.emissao_pagar, p.vencimento_pagar, '+
           'p.data_cadastro, p.previsao_pagar, p.fornecedor_pagar, c.nome_cliente, '+
           'p.centro_pagar, p.portador_pagar, p.tipo_pagar, p.valor_pagar, p.valorpago_pagar, '+
           'Case when ((not p.tipo_baixa_pagar is null) or (p.tipo_baixa_pagar <> '''')) '+
           'then(p.valor_pagar - p.parcial_pagar) '+
           'else 0 '+
           'end as "Valor_Total",'+
           'p.historico_pagar, p.mora_dia_pagar, p.multa_pagar, p.entrada_pagar, p.movimento_pagar, '+
           'p.tipo_baixa_pagar, p.cod_empresa_pagar, e.datasystem_emp, '+
           '(c.codigo_cliente ||''-''|| c.nome_cliente) as NOME_FORNECEDOR '+
           'from P_PAGAR p '+
           'left outer join e_cliente c on (p.fornecedor_pagar = c.codigo_cliente)'+
           'left outer join empresa e on (p.cod_empresa_pagar = e.codigo_emp) '+
           'where p.cod_empresa_pagar > 0 and c.tipo_cliente = ''2'' ';

   Case cbxPeriodo.ItemIndex of
      0:
      begin
         Sql1 := Sql1 + 'and p.emissao_pagar >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + 'and p.emissao_pagar <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;

      1:
      begin
         Sql1 := Sql1 + 'and p.vencimento_pagar >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + 'and p.vencimento_pagar <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;

      2:
      begin
         Sql1 := Sql1 + 'and p.entrada_pagar >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + 'and p.entrada_pagar <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;

      3:
      begin
         Sql1 := Sql1 + 'and p.movimento_pagar >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
         Sql1 := Sql1 + 'and p.movimento_pagar <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
      end;
   end;

   dmRL0701.cdsConsulta.Close;

   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   dmRL0701.cdsConsulta.CommandText := Sql1;
   dmRL0701.cdsConsulta.IndexFieldNames := 'vencimento_pagar';
   dmRL0701.cdsConsulta.Open;

   frmProcesso2.Close;

   if cbxTipo.ItemIndex = 0 then
   begin
      Case cbxPeriodo.ItemIndex of
         0: ppLabel3.Caption := 'Emiss�o';
         1: ppLabel3.Caption := 'Emiss�o';
         2: ppLabel3.Caption := 'Cadastro';
         3: ppLabel3.Caption := 'Movimen.';
      end;

      rptRel_Sintetico.Print;
   end
   else
   begin
      Case cbxPeriodo.ItemIndex of
         0: ppLabel25.Caption := 'Emiss�o';
         1: ppLabel25.Caption := 'Emiss�o';
         2: ppLabel25.Caption := 'Cadastro';
         3: ppLabel25.Caption := 'Movimen.';
      end;

      rptRel_Analitico.Print;
   end;
end;

procedure TfrmRL0701.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0701.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Previs�o de Pagamento de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0701.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0701.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Case cbxPeriodo.ItemIndex of
      0: Text := '         Per�odo referente a : Data de Emiss�o';
      1: Text := '         Per�odo referente a : Data de Vencimento';
      2: Text := '         Per�odo referente a : Data de Cadastro';
      3: Text := '         Per�odo referente a : Data de Pagamento';
   end;
end;

procedure TfrmRL0701.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.


