unit uRL0319;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, ComCtrls, ppBands, ppCtrls,
  ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, ppModule, raCodMod;

type
  TfrmRL0319 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbxSequencia: TComboBox;
    edtGrupo: TJvValidateEdit;
    Edit2: TEdit;
    edtProduto: TJvValidateEdit;
    SpeedButton2: TSpeedButton;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
    edtSecao: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    LBMes: TLabel;
    ProgressBar1: TProgressBar;
    rptRel_Movimentacao: TppReport;
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
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel17: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    edtAnoBase: TMaskEdit;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtSecaoExit(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtProdutoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure edtAnoBaseExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Busca_Dado_Anual;
  public
    { Public declarations }
  end;

var
  frmRL0319: TfrmRL0319;

implementation

uses udmRL0319, uGlobal, uConsulta, DateUtils;

{$R *.dfm}

procedure TfrmRL0319.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0319.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0319.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0319.FormCreate(Sender: TObject);
begin
   dmRL0319 := TdmRL0319.Create(Self);
end;

procedure TfrmRL0319.Busca_Dado_Anual;

   procedure Total_Produtos;
   Var Total : Double;
   begin
      with dmRL0319 do
      begin
         Total := cdsProdutosTempJANEIRO.AsFloat;
         Total := Total + cdsProdutosTempFEVEREIRO.AsFloat;
         Total := Total + cdsProdutosTempMARCO.AsFloat;
         Total := Total + cdsProdutosTempABRIL.AsFloat;
         Total := Total + cdsProdutosTempMAIO.AsFloat;
         Total := Total + cdsProdutosTempJUNHO.AsFloat;
         Total := Total + cdsProdutosTempJULHO.AsFloat;
         Total := Total + cdsProdutosTempAGOSTO.AsFloat;
         Total := Total + cdsProdutosTempSETEMBRO.AsFloat;
         Total := Total + cdsProdutosTempOUTUBRO.AsFloat;
         Total := Total + cdsProdutosTempNOVEMBRO.AsFloat;
         Total := Total + cdsProdutosTempDEZEMBRO.AsFloat;
         
         cdsProdutosTempTOTAL_VENDIDO.AsFloat := Total;
      end;
   end;

   procedure Insere_Elemento(Produto : Integer; Estoque, Quantidade : Double; Descricao : String; Data : TDateTime);
   Var Mes : Integer;
   begin
      with dmRL0319 do
      begin
         Mes := MonthOf(Data);

         LBMes.Caption := StrZero(IntToStr(Mes), 2);

         cdsProdutosTemp.Append;

         cdsProdutosTempCODIGO_PRODUTO.AsInteger      := Produto;
         if Descricao <> '' then
            cdsProdutosTempDESCRICAO_PRODUTO.AsString := Trim(Descricao)
         else
            cdsProdutosTempDESCRICAO_PRODUTO.AsString := 'Não Cadastrado';

         Case Mes of
             1: cdsProdutosTempJANEIRO.AsFloat   := Quantidade;
             2: cdsProdutosTempFEVEREIRO.AsFloat := Quantidade;
             3: cdsProdutosTempMARCO.AsFloat     := Quantidade;
             4: cdsProdutosTempABRIL.AsFloat     := Quantidade;
             5: cdsProdutosTempMAIO.AsFloat      := Quantidade;
             6: cdsProdutosTempJUNHO.AsFloat     := Quantidade;
             7: cdsProdutosTempJULHO.AsFloat     := Quantidade;
             8: cdsProdutosTempAGOSTO.AsFloat    := Quantidade;
             9: cdsProdutosTempSETEMBRO.AsFloat  := Quantidade;
            10: cdsProdutosTempOUTUBRO.AsFloat   := Quantidade;
            11: cdsProdutosTempNOVEMBRO.AsFloat  := Quantidade;
            12: cdsProdutosTempDEZEMBRO.AsFloat  := Quantidade;
         end;

         Total_Produtos; // procedure
         cdsProdutosTempESTOQUE_ATUAL.AsFloat := Estoque;
         cdsProdutosTemp.Post;
      end;
   end;

   procedure Soma_Elemento(Produto : Integer; Quantidade : Double; Descricao : String; Data : TDateTime);
   Var Mes : Integer;
   begin
      with dmRL0319 do
      begin
         Mes := MonthOf(Data);

         LBMes.Caption := StrZero(IntToStr(Mes), 2);

         cdsProdutosTemp.Edit;

         Case Mes of
             1: cdsProdutosTempJANEIRO.AsFloat   := cdsProdutosTempJANEIRO.AsFloat   + Quantidade;
             2: cdsProdutosTempFEVEREIRO.AsFloat := cdsProdutosTempFEVEREIRO.AsFloat + Quantidade;
             3: cdsProdutosTempMARCO.AsFloat     := cdsProdutosTempMARCO.AsFloat     + Quantidade;
             4: cdsProdutosTempABRIL.AsFloat     := cdsProdutosTempABRIL.AsFloat     + Quantidade;
             5: cdsProdutosTempMAIO.AsFloat      := cdsProdutosTempMAIO.AsFloat      + Quantidade;
             6: cdsProdutosTempJUNHO.AsFloat     := cdsProdutosTempJUNHO.AsFloat     + Quantidade;
             7: cdsProdutosTempJULHO.AsFloat     := cdsProdutosTempJULHO.AsFloat     + Quantidade;
             8: cdsProdutosTempAGOSTO.AsFloat    := cdsProdutosTempAGOSTO.AsFloat    + Quantidade;
             9: cdsProdutosTempSETEMBRO.AsFloat  := cdsProdutosTempSETEMBRO.AsFloat  + Quantidade;
            10: cdsProdutosTempOUTUBRO.AsFloat   := cdsProdutosTempOUTUBRO.AsFloat   + Quantidade;
            11: cdsProdutosTempNOVEMBRO.AsFloat  := cdsProdutosTempNOVEMBRO.AsFloat  + Quantidade;
            12: cdsProdutosTempDEZEMBRO.AsFloat  := cdsProdutosTempDEZEMBRO.AsFloat  + Quantidade;
         end;

         Total_Produtos; // procedure
         cdsProdutosTemp.Post;
      end;
   end;

Var
  FData, FSql : String;
  FContador   : Integer;
  FDataBase,
  FDataIni,
  FDataFim    : TDateTime;
begin
   FData      := '';
   FContador  := 0;

   dmRL0319.cdsProdutosTemp.Close;
   dmRL0319.cdsProdutosTemp.CreateDataSet;

   for FContador := 1 to 12 do
   begin
      FData     := '01/' + StrZero(IntToStr(FContador), 2) + '/' + edtAnoBase.Text;
      FDataBase := StrToDate(FData);
      FDataIni  := FirstDayOfMonth(FDataBase);
      FDataFim  := LastDayOfMonth(FDataBase);

      FSql := 'select ve.data_venda, ve.codigo_venda, p.codigo_produto, p.descricao_produto, p.fabrica_produto,'+
              'v.quantidade_ivendas, p.estoque_produto, p.grupo_produto, ve.exclusao_venda, ve.tipo_doc_venda '+
              'from P_VENDAS_ITENS v '+
              'left outer join p_vendas ve on (v.codigo_ivenda = ve.codigo_venda) '+
              'left outer join p_produtos p on (v.produto_ivenda = p.codigo_produto) '+
              'left outer join p_grupos g on (p.grupo_produto = g.codigo_grupo) '+
              'left outer join p_secao s on (g.codigo_secao_grupo = s.codigo_secao) '+
              'where (ve.exclusao_venda is null) '+
              'and ve.tipo_doc_venda = ''1'' ';

      FSql := FSql + ' and ve.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataIni));
      FSql := FSql + ' and ve.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FDataFim));

      if edtProduto.Value > 0 then
         FSql := FSql + ' and v.produto_ivenda = ' + QuotedStr(edtProduto.EditText);

      if edtGrupo.Value > 0 then
         FSql := FSql + ' and p.grupo_produto = ' + QuotedStr(edtGrupo.EditText);

      if edtSecao.Value > 0 then
         FSql := FSql + ' and g.codigo_secao_grupo = ' + QuotedStr(edtSecao.EditText);

      with dmRL0319 do
      begin
         cdsConsulta.Close;
         cdsConsulta.CommandText := FSql;
         cdsConsulta.Open;

         Case cbxSequencia.ItemIndex of
            0: cdsConsulta.IndexFieldNames := 'descricao_produto';
            1: cdsConsulta.IndexFieldNames := 'codigo_produto';
            2: cdsConsulta.IndexFieldNames := 'fabrica_produto';
         end;

         if cdsConsulta.RecordCount > 0 then
         begin
            Panel2.Visible        := True;
            ProgressBar1.Max      := cdsConsulta.RecordCount;
            Application.ProcessMessages;
            ProgressBar1.Position := 0;
         end;

         cdsConsulta.First;
         while not cdsConsulta.Eof  do
         begin
            ProgressBar1.Position := ProgressBar1.Position + 1;
            Application.ProcessMessages;

            if not cdsProdutosTemp.Locate('CODIGO_PRODUTO', cdsConsultaCODIGO_PRODUTO.AsInteger, []) then
               Insere_Elemento(cdsConsultaCODIGO_PRODUTO.AsInteger,cdsConsultaESTOQUE_PRODUTO.AsFloat, cdsConsultaQUANTIDADE_IVENDAS.AsFloat, cdsConsultaDESCRICAO_PRODUTO.AsString, cdsConsultaDATA_VENDA.AsDateTime)
            else
               Soma_Elemento(cdsConsultaCODIGO_PRODUTO.AsInteger, cdsConsultaQUANTIDADE_IVENDAS.AsFloat, cdsConsultaDESCRICAO_PRODUTO.AsString, cdsConsultaDATA_VENDA.AsDateTime);

            cdsConsulta.Next;
         end;
      end;
   end;

   Panel2.Visible := False;
   Application.ProcessMessages;
end;

procedure TfrmRL0319.edtSecaoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtSecao, Edit1, 'P_SECAO', 'CODIGO_SECAO', 'DESCRICAO_SECAO') then
   begin
      edtSecao.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0319.edtGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtGrupo, Edit2, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0319.edtProdutoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtProduto, Edit3, 'P_PRODUTOS', 'CODIGO_PRODUTO', 'DESCRICAO_PRODUTO') then
   begin
      edtProduto.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0319.SpeedButton1Click(Sender: TObject);
begin
   edtSecao.SetFocus;

   ConsultaSecao(edtSecao);
end;

procedure TfrmRL0319.SpeedButton3Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0319.SpeedButton2Click(Sender: TObject);
begin
   edtProduto.SetFocus;

   ConsultaProduto(edtProduto);
end;

procedure TfrmRL0319.btnImprimirClick(Sender: TObject);
begin
   Busca_Dado_Anual; // procedure

   rptRel_Movimentacao.Print;
end;

procedure TfrmRL0319.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0319.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Relatório de Movimentação Anual de Produtos';
end;

procedure TfrmRL0319.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;


procedure TfrmRL0319.edtAnoBaseExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if Length(Trim(edtAnoBase.Text)) < 4  then
   begin
      Application.MessageBox('Informe o ano base corretamente', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtAnoBase.SetFocus;
      Exit;
   end;

   if StrToInt(copy(edtAnoBase.Text, 1, 1)) < 1 then
   begin
      Application.MessageBox('Informe o ano base corretamente', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtAnoBase.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0319.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
