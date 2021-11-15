unit uRL0404;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppModule,
  raCodMod, ppParameter;

type
  TfrmRL0404 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label7: TLabel;
    edtGrupo: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    edtVendedor: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Label3: TLabel;
    edtDataIni: TJvDateEdit;
    Label2: TLabel;
    edtDataFim: TJvDateEdit;
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
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    Total: TppVariable;
    Total_Perc: TppVariable;
    ppDBCalc1: TppDBCalc;
    raCodeModule1: TraCodeModule;
    A_Vista: TppVariable;
    ppParameterList1: TppParameterList;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppVariable3: TppVariable;
    ppVariable4: TppVariable;
    ppVariable5: TppVariable;
    ppSummaryBand1: TppSummaryBand;
    Total_Geral: TppVariable;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    A_Vista_Tot: TppVariable;
    Cartao_Tot: TppVariable;
    Predatado_Tot: TppVariable;
    Convenio_Tot: TppVariable;
    A_Prazo_Tot: TppVariable;
    Outros_Tot: TppVariable;
    ppLabel12: TppLabel;
    ppVariable13: TppVariable;
    ppVariable7: TppVariable;
    Predatado_Perc: TppVariable;
    ppVariable8: TppVariable;
    ppVariable9: TppVariable;
    ppVariable10: TppVariable;
    ppVariable11: TppVariable;
    ppVariable6: TppVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtVendedorExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure Total_PercCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable13Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable7Calc(Sender: TObject; var Value: Variant);
    procedure Predatado_PercCalc(Sender: TObject; var Value: Variant);
    procedure ppVariable8Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable9Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable10Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable11Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable6Calc(Sender: TObject; var Value: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    pValor_Total : Double;
  end;

var
  frmRL0404: TfrmRL0404;

implementation

uses udmRL0404, uGlobal, uConsulta, uProcesso2, DB;

{$R *.dfm}

procedure TfrmRL0404.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0404.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0404.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmRL0404.FormCreate(Sender: TObject);
begin
   dmRL0404 := TdmRL0404.Create(Self);
end;

procedure TfrmRL0404.edtDataIniExit(Sender: TObject);
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

procedure TfrmRL0404.edtDataFimExit(Sender: TObject);
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

procedure TfrmRL0404.edtGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtGrupo, Edit1, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0404.edtVendedorExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtVendedor, Edit2, 'P_VENDEDOR', 'CODIGO_VENDEDOR', 'NOME_VENDEDOR') then
   begin
      edtVendedor.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0404.SpeedButton3Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0404.SpeedButton1Click(Sender: TObject);
begin
   edtVendedor.SetFocus;

   ConsultaVendedor(edtVendedor);
end;

procedure TfrmRL0404.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   pValor_Total := 0;

   Sql1 := 'select v. *, i.quantidade_ivendas, c.descricao_cpagamento, '+
           'c.caixa_cpagamento, i.desconto_ivendas, p.grupo_produto, '+
           '(i.valorbruto_ivendas * i.quantidade_ivendas) as TOTAL_IVENDA, '+
           'Case when (not v.desconto_venda is null) '+
           'then ((v.desconto_venda * 100) / v.fatura_venda) '+
           'else 0 '+
           'end as PERC_DESC, '+
           'Case when (not p.grupo_produto is null) then g.descricao_grupo '+
           'else ''NÃO CADASTRADO'' '+
           'end as DESCRICAO_GRUPO '+
           'from P_VENDAS v '+
           'left outer join p_vendas_itens i on (v.codigo_venda = i.codigo_ivenda) '+
           'left outer join p_cpagamento c on (v.cpagamento_venda = c.codigo_cpagamento) '+
           'left outer join p_produtos p on (i.produto_ivenda = p.codigo_produto) '+
           'left outer join p_grupos g on (p.grupo_produto = g.codigo_grupo) '+
           'left outer join e_natureza n on (v.cfop_venda = n.codigo_nat) '+
           'where (v.exclusao_venda is null) and v.tipo_doc_venda = ''1'' '+
           'and n.operacao_nat = ''5'' ';

   Sql1 := Sql1 + ' and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
   Sql1 := Sql1 + ' and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));

   if edtGrupo.Value > 0 then
      Sql1 := Sql1 + ' and p.grupo_produto = ' + edtGrupo.EditText;

   if edtVendedor.Value > 0 then
      Sql1 := Sql1 + ' and v.vendedor_venda = ' + edtVendedor.EditText;

   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   with dmRL0404 do
   begin
      cdsVendas.Close;
      cdsVendas.CommandText := Sql1;
      cdsVendas.Open;

      cdsVendas.First;
      while not cdsVendas.Eof do
      begin
         pValor_Total := pValor_Total + (cdsVendasTOTAL_IVENDA.AsFloat - (cdsVendasTOTAL_IVENDA.AsFloat * (cdsVendasPERC_DESC.AsFloat /100)));

         cdsVendas.Next;
      end;

      frmProcesso2.Close;

      cdsVendas.IndexFieldNames := 'grupo_produto';
   end;

   rptRel_Vendas.Print;
end;

procedure TfrmRL0404.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0404.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Vendas por Grupo de Produto ' + edtDataIni.Text +' a '+ edtDataFim.Text;
end;

procedure TfrmRL0404.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0404.Total_PercCalc(Sender: TObject; var Value: Variant);
begin
   Total_Perc.AsString := FormatFloat(',0.00', Porcento(Total.AsDouble, pValor_Total)) + ' %';
end;

procedure TfrmRL0404.ppVariable13Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable13.AsString := FormatFloat(',0.00', Porcento(A_Vista_Tot.AsDouble, pValor_Total)) + ' %';
end;

procedure TfrmRL0404.ppVariable7Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable7.AsString := FormatFloat(',0.00', Porcento(Cartao_Tot.AsDouble, pValor_Total)) + ' %';
end;

procedure TfrmRL0404.Predatado_PercCalc(Sender: TObject;
  var Value: Variant);
begin
   Predatado_Perc.AsString := FormatFloat(',0.00', Porcento(Predatado_Tot.AsDouble, pValor_Total)) + ' %';
end;

procedure TfrmRL0404.ppVariable8Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable8.AsString := FormatFloat(',0.00', Porcento(Convenio_Tot.AsDouble, pValor_Total)) + ' %';
end;

procedure TfrmRL0404.ppVariable9Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable9.AsString := FormatFloat(',0.00', Porcento(A_Prazo_Tot.AsDouble, pValor_Total)) + ' %';
end;

procedure TfrmRL0404.ppVariable10Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable10.AsString := FormatFloat(',0.00', Porcento(Outros_Tot.AsDouble, pValor_Total)) + ' %';
end;

procedure TfrmRL0404.ppVariable11Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable11.AsString := FormatFloat(',0.00', Porcento(Total_Geral.AsDouble, pValor_Total)) + ' %';
end;

procedure TfrmRL0404.ppVariable6Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable6.AsString := FormatFloat(',0.00', Porcento(Total_Geral.AsDouble, pValor_Total)) + ' %';
end;

procedure TfrmRL0404.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
