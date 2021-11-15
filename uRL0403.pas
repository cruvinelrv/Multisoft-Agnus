unit uRL0403;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppEndUsr, ppStrtch, ppSubRpt, ComCtrls;

type
  TfrmRL0403 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label3: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    Label1: TLabel;
    rptRel_Vendas: TppReport;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel3: TppLabel;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0403: TfrmRL0403;

implementation

uses udmRL0403, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0403.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0403.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0403.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end
end;

procedure TfrmRL0403.FormCreate(Sender: TObject);
begin
   dmRL0403 := TdmRL0403.Create(Self);
end;

procedure TfrmRL0403.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informa a data inicial', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0403.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informa a data final', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0403.btnImprimirClick(Sender: TObject);
Var Sql : String;
begin
   Sql := 'select v. *, c.perc_comissao_cpagamento, '+
          'Case when (not c.descricao_cpagamento is null) then descricao_cpagamento '+
          'else ''Não Cadastrado'' '+
          'end as DESCRI_PAGAM, '+
          'Case when (not v.desconto_venda is null) then (v.fatura_venda - v.desconto_venda) '+
          'else v.fatura_venda '+
          'end as TOTAL, '+
          've.nome_vendedor, '+
          'Case when (not v.comissao_venda is null) then (v.valornota_venda * (v.comissao_venda /100)) '+
          'else 0 '+
          'end as VENDA_COMISS, '+
          'Case when (not c.perc_comissao_cpagamento is null) then (v.valornota_venda * (c.perc_comissao_cpagamento / 100)) '+
          'else 0 '+
          'end as PAGAM_COMISS '+
          'from P_VENDAS v '+
          'left outer join p_cpagamento c on (v.cpagamento_venda = c.codigo_cpagamento) '+
          'left outer join p_vendedor ve on (v.vendedor_venda = ve.codigo_vendedor)'+
          'left outer join e_natureza n on (v.cfop_venda = n.codigo_nat) '+
          'where v.tipo_doc_venda = ''1'' and (v.exclusao_venda is null) and n.operacao_nat = ''5'' ';

   Sql := Sql + ' and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
   Sql := Sql + ' and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));

   with dmRL0403 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsVendas.Close;
      cdsVendas.CommandText := Sql;
      cdsVendas.Open;

      cdsVendas.IndexFieldNames := 'vendedor_venda; cpagamento_venda';

      frmProcesso2.Close;

      rptRel_Vendas.Print;
   end;
end;

procedure TfrmRL0403.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0403.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Vendas Vendedor - Comissão por Tipo Pagamento de ' + edtDataIni.Text +' a '+ edtDataFim.Text;
end;

procedure TfrmRL0403.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0403.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
