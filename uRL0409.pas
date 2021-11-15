unit uRL0409;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppSubRpt;

type
  TfrmRL0409 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    Label3: TLabel;
    edtGrupo: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    cbxSeparaGrupo: TCheckBox;
    cbxListarPro: TCheckBox;
    Label4: TLabel;
    edtPagto: TJvValidateEdit;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Label5: TLabel;
    edtFornecedor: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    Edit3: TEdit;
    Label6: TLabel;
    edtVenda: TJvValidateEdit;
    cbxMetrCubicos: TCheckBox;
    cbxQuantPreco: TCheckBox;
    Label8: TLabel;
    edtReserva: TEdit;
    Label9: TLabel;
    rptRe_Grupo: TppReport;
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
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
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
    ppDBMedia: TppDBCalc;
    ppLine3: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel13: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel14: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLabel15: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBNormal: TppDBText;
    edtSerie: TEdit;
    Label7: TLabel;
    rptRe_Comum: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine4: TppLine;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine5: TppLine;
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
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBMedia2: TppDBCalc;
    ppDBNormal2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel34: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel35: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLabel36: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppLabel37: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppLine6: TppLine;
    cbxEstoque: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPagtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0409: TfrmRL0409;

implementation

uses udmRL0409, uConsulta, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0409.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0409.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0409.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0409.FormCreate(Sender: TObject);
begin
   dmRL0409 := TdmRL0409.Create(Self);
end;

procedure TfrmRL0409.edtDataIniExit(Sender: TObject);
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

procedure TfrmRL0409.edtDataFimExit(Sender: TObject);
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

procedure TfrmRL0409.edtGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtGrupo, Edit1, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
      begin
         edtGrupo.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0409.edtPagtoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtPagto, Edit2, 'P_CPAGAMENTO', 'CODIGO_CPAGAMENTO', 'DESCRICAO_CPAGAMENTO') then
      begin
         edtPagto.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0409.edtFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtFornecedor, Edit3, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edtFornecedor.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0409.edtVendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if edtVenda.Value > 0 then
      begin
         dmRL0409.cdsVenda.Close;
         dmRL0409.cdsVenda.Params.ParamByName('DATA_INI').AsDate := edtDataIni.Date;
         dmRL0409.cdsVenda.Params.ParamByName('DATA_FIM').AsDate := edtDataFim.Date;
         dmRL0409.cdsVenda.Params.ParamByName('VENDA').AsInteger := edtVenda.Value;
         dmRL0409.cdsVenda.Open;

         if dmRL0409.cdsVenda.IsEmpty then
         begin
            Application.MessageBox('Data da Venda fora do per�odo informado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            edtVenda.SetFocus;
            Exit;
         end;
      end;
   end;
end;

procedure TfrmRL0409.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Sql1 := 'select p.id_venda_item, p.codigo_ivenda, p.produto_ivenda, p.descricao_ivendas, '+
           'p.valorbruto_ivendas, p.quantidade_ivendas, (p.valorbruto_ivendas * p.quantidade_ivendas) as '+
           '"Valor_Total", p.fabrica_ivendas, p.serie_ivendas, p.desconto_ivendas, p.qtde_vendas, '+
           'p.cod_empresa, r.estoque_produto, r.preco_compra_produto, r.preco_custo_produto, '+
           'r.preco_lista_produto, r.unidade_produto, g.codigo_grupo, g.descricao_grupo, '+
           'v.data_venda, c.codigo_cpagamento, c.descricao_cpagamento, l.codigo_cliente, l.nome_cliente, '+
           'p.comprimento_vendas '+
           'from P_VENDAS_ITENS p '+
           'left outer join p_produtos r on (p.produto_ivenda = r.codigo_produto) '+
           'left outer join p_grupos g on (r.grupo_produto = g.codigo_grupo) '+
           'left outer join p_vendas v on (p.codigo_ivenda = v.codigo_venda) '+
           'left outer join p_cpagamento c on (v.cpagamento_venda = c.codigo_cpagamento) '+
           'left outer join e_cliente l on (v.cliente_venda = l.codigo_cliente)'+
           'where p.codigo_ivenda > 0 ';

   Sql1 := Sql1 + ' and v.data_venda >= '+ QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
   Sql1 := Sql1 + ' and v.data_venda <= '+ QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));

   if edtVenda.Value > 0 then
      Sql1 := Sql1 + ' and p.codigo_ivenda = '+ QuotedStr(edtVenda.EditText);

   if edtGrupo.Value > 0 then
      Sql1 := Sql1 + ' and g.codigo_grupo = '+ QuotedStr(edtGrupo.EditText);

   if edtPagto.Value > 0 then
      Sql1 := Sql1 + ' and c.codigo_cpagamento = '+ QuotedStr(edtPagto.EditText);

   if edtFornecedor.Value > 0 then
      Sql1 := Sql1 + ' and l.codigo_cliente = ' + QuotedStr(edtFornecedor.EditText);

   if cbxMetrCubicos.Checked then
      Sql1 := Sql1 + 'and p.comprimento_vendas >= ''1'' '
   else
      Sql1 := Sql1 + 'and p.comprimento_vendas >= ''0'' ';

   if edtReserva.Text = '�' then
   begin
      if edtSerie.Text <> '' then
         Sql1 := Sql1 + ' and v.serie_venda = '+ QuotedStr(edtSerie.Text);
   end
   else
   begin
      if (edtSerie.Text <> 'CI') and (edtSerie.Text <> '') then
         Sql1 := Sql1 + ' and v.serie_venda = '+ QuotedStr(edtSerie.Text);

      if edtSerie.Text = '' then
         Sql1 := Sql1 + ' and not (v.serie_venda = ''CI'') ';
   end;

   if cbxEstoque.Checked then
      Sql1 := Sql1 + ' and r.estoque_produto = 0 '
   else
      Sql1 := Sql1 + ' and r.estoque_produto > 0 ';

   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   dmRL0409.cdsConsulta.Close;
   dmRL0409.cdsConsulta.CommandText := Sql1;
   dmRL0409.cdsConsulta.Open;

   dmRL0409.cdsConsulta.IndexFieldNames := 'codigo_grupo';

   frmProcesso2.Close;

   if cbxListarPro.Checked = True then
   begin
      if cbxQuantPreco.Checked = True then
      begin
         ppDBMedia.Visible  := True;
         ppDBNormal.Visible := False;
         ppDBMedia2.Visible  := True;
         ppDBNormal2.Visible := False;
      end
      else
      begin
         ppDBMedia.Visible  := False;
         ppDBNormal.Visible := True;
         ppDBMedia2.Visible  := False;
         ppDBNormal2.Visible := True;
      end;

      ppDBText3.Visible := True;
      ppDBText4.Visible := True;
      ppDBText5.Visible := True;
      ppDBText6.Visible := True;
      ppDBText7.Visible := True;
      ppDBText8.Visible := True;
      ppDBText9.Visible := True;
      ppDBText10.Visible := True;
      ppDBText11.Visible := True;
      ppDBText12.Visible := True;
      ppDBText13.Visible := True;
      ppDBText14.Visible := True;
      ppDBText15.Visible := True;
      ppDBText16.Visible := True;
      ppDBText17.Visible := True;
      ppDBText18.Visible := True;
      ppDBText19.Visible := True;
      ppDBText20.Visible := True;
   end
   else
   begin
      ppDBText3.Visible := False;
      ppDBText4.Visible := False;
      ppDBText5.Visible := False;
      ppDBText6.Visible := False;
      ppDBText7.Visible := False;
      ppDBText8.Visible := False;
      ppDBText9.Visible := False;
      ppDBText10.Visible := False;
      ppDBText11.Visible := False;
      ppDBMedia.Visible  := False;
      ppDBNormal.Visible := False;
      ppDBMedia2.Visible  := False;
      ppDBNormal2.Visible := False;
      ppDBText11.Visible := False;
      ppDBText12.Visible := False;
      ppDBText13.Visible := False;
      ppDBText14.Visible := False;
      ppDBText15.Visible := False;
      ppDBText16.Visible := False;
      ppDBText17.Visible := False;
      ppDBText18.Visible := False;
      ppDBText19.Visible := False;
      ppDBText20.Visible := False;
   end;

   if cbxSeparaGrupo.Checked = True then
      rptRe_Grupo.Print
   else
      rptRe_Comum.Print;
end;

procedure TfrmRL0409.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Produtos Vendidos no Per�odo de ' + edtDataIni.Text + ' � ' + edtDataFim.Text;
end;

procedure TfrmRL0409.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0409.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0409.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

procedure TfrmRL0409.SpeedButton1Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0409.SpeedButton2Click(Sender: TObject);
begin
   edtPagto.SetFocus;

   ConsultaPagamento(edtPagto);
end;

procedure TfrmRL0409.SpeedButton3Click(Sender: TObject);
begin
   edtFornecedor.SetFocus;

   ConsultaFornecedor(edtFornecedor);
end;

end.
