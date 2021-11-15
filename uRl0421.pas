unit uRl0421;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch,
  ppSubRpt, DB;

type
  TfrmRl0421 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    edtData_inicial: TJvDateEdit;
    edtData_final: TJvDateEdit;
    ckbExibe_prod: TCheckBox;
    edtCodCliente: TJvValidateEdit;
    Edit1: TEdit;
    edtPagamento: TJvValidateEdit;
    Edit2: TEdit;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    edtCodVEndedor: TJvValidateEdit;
    Edit3: TEdit;
    RadioGroup1: TRadioGroup;
    edtCod_pro1: TJvValidateEdit;
    edtCod_pro2: TJvValidateEdit;
    Label2: TLabel;
    Label7: TLabel;
    cbkSomente_prod: TCheckBox;
    Label8: TLabel;
    SpeedButton4: TSpeedButton;
    edtCodProduto: TJvValidateEdit;
    Edit4: TEdit;
    Label9: TLabel;
    SpeedButton5: TSpeedButton;
    edtCodGrupo: TJvValidateEdit;
    Edit5: TEdit;
    ckbCusto_orc: TCheckBox;
    rptOrcamento: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa: TppLabel;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    lblData: TppLabel;
    ppDetailBand2: TppDetailBand;
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
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    dsOrcamento: TDataSource;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLabel14: TppLabel;
    rptProdutos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edtCodClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodVEndedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPagamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure ckbExibe_prodClick(Sender: TObject);
    procedure dsOrcamentoDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRl0421: TfrmRl0421;

implementation

uses uGlobal, uConsulta, udmRL0421;

{$R *.dfm}

procedure TfrmRl0421.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRl0421.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRl0421.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRl0421.RadioGroup1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex = 1 then
   begin
      // Habilita intervalo de produto
      Label2      .Enabled := True;
      Label7      .Enabled := True;
      edtCod_pro1 .Enabled := True;
      edtCod_pro2 .Enabled := True;

      // Desabilita intervalo de data
      Label3          .Enabled := False;
      Label4          .Enabled := False;
      edtData_inicial .Enabled := False;
      edtData_final   .Enabled := False;
   end
   else
   begin
      // Desabilita intervalo de produto
      Label2      .Enabled := False;
      Label7      .Enabled := False;
      edtCod_pro1 .Enabled := False;
      edtCod_pro2 .Enabled := False;
      edtCod_pro1 .Text    := '0';
      edtCod_pro2 .Text    := '0';

      // Habilita intervalo de data
      Label3          .Enabled := True;
      Label4          .Enabled := True;
      edtData_inicial .Enabled := True;
      edtData_final   .Enabled := True;
   end;
end;

procedure TfrmRl0421.edtCodClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtCodCliente, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edtCodCliente.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRl0421.edtCodVEndedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtCodVEndedor, Edit3, 'P_VENDEDOR', 'CODIGO_VENDEDOR', 'NOME_VENDEDOR') then
      begin
         edtCodVEndedor.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRl0421.edtPagamentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtPagamento, Edit2, 'P_CPAGAMENTO', 'CODIGO_CPAGAMENTO', 'DESCRICAO_CPAGAMENTO') then
      begin
         edtPagamento.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRl0421.edtCodProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtCodProduto, Edit4, 'P_PRODUTOS', 'CODIGO_PRODUTO', 'DESCRICAO_PRODUTO') then
      begin
         edtCodProduto.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRl0421.edtCodGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtCodGrupo, Edit5, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
      begin
         edtCodGrupo.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRl0421.SpeedButton2Click(Sender: TObject);
begin
   edtCodCliente.SetFocus;

   ConsultaCliente(edtCodCliente);
end;

procedure TfrmRl0421.SpeedButton3Click(Sender: TObject);
begin
   edtCodVEndedor.SetFocus;

   ConsultaVendedor(edtCodVEndedor);
end;

procedure TfrmRl0421.SpeedButton1Click(Sender: TObject);
begin
   edtPagamento.SetFocus;

   ConsultaPagamento(edtPagamento);
end;

procedure TfrmRl0421.SpeedButton4Click(Sender: TObject);
begin
   edtCodProduto.SetFocus;

   ConsultaProduto(edtCodProduto);
end;

procedure TfrmRl0421.SpeedButton5Click(Sender: TObject);
begin
   edtCodGrupo.SetFocus;

   ConsultaGrupoProdutos(edtCodGrupo);
end;

procedure TfrmRl0421.btnImprimirClick(Sender: TObject);
begin
   {if (edtCodProduto.Enabled) and (edtCodProduto.Value = 0) then
   begin
      Application.MessageBox('Informe o produto.','Atenção', MB_OK + MB_ICONINFORMATION);
      edtCodProduto.SetFocus;
      exit;
   end;}

   // Mostra relatório completo
   if not cbkSomente_prod.Checked then
   begin
      dmRL0421.cdsOrcamento.Close;

      if edtCodCliente.Value > 0 then
      begin
         dmRL0421.cdsOrcamento.Params.ParamByName('COD1').AsInteger := edtCodCliente.Value;
         dmRL0421.cdsOrcamento.Params.ParamByName('COD2').AsInteger := edtCodCliente.Value;
      end
      else
      begin
         dmRL0421.cdsOrcamento.Params.ParamByName('COD1').AsInteger := 0;
         dmRL0421.cdsOrcamento.Params.ParamByName('COD2').AsInteger := 999999999;
      end;

      if edtCodVEndedor.Value > 0 then
      begin
         dmRL0421.cdsOrcamento.Params.ParamByName('VEND1').AsInteger := edtCodVEndedor.Value;
         dmRL0421.cdsOrcamento.Params.ParamByName('VEND2').AsInteger := edtCodVEndedor.Value;
      end
      else
      begin
         dmRL0421.cdsOrcamento.Params.ParamByName('VEND1').AsInteger := 0;
         dmRL0421.cdsOrcamento.Params.ParamByName('VEND2').AsInteger := 999999999;
      end;

      if edtPagamento.Value > 0 then
      begin
         dmRL0421.cdsOrcamento.Params.ParamByName('PGT1').AsFloat := edtPagamento.Value;
         dmRL0421.cdsOrcamento.Params.ParamByName('PGT2').AsFloat := edtPagamento.Value;
      end
      else
      begin
         dmRL0421.cdsOrcamento.Params.ParamByName('PGT1').AsFloat := 0;
         dmRL0421.cdsOrcamento.Params.ParamByName('PGT2').AsFloat := 9999;
      end;

      if RadioGroup1.ItemIndex = 0 then
      begin
         // Filtra e ordena por data
         if ((edtData_inicial.Text <> '  /  /    ') and (edtData_final.Text <> '  /  /    ')) then
         begin
            dmRL0421.cdsOrcamento.Params.ParamByName('DATA1').AsDate := edtData_inicial.Date;
            dmRL0421.cdsOrcamento.Params.ParamByName('DATA2').AsDate := edtData_final.Date;

            lblParam1.Caption := 'Período: ' + edtData_inicial.Text + ' a ' + edtData_final.Text;
         end
         else
         begin
            dmRL0421.cdsOrcamento.Params.ParamByName('DATA1').AsDate := StrToDate('01/01/0300');
            dmRL0421.cdsOrcamento.Params.ParamByName('DATA2').AsDate := StrToDate('31/12/3000');

            lblParam1.Caption := 'Todas os Lançamentos';
         end;
         dmRL0421.cdsOrcamento.IndexFieldNames := 'DATA_VENDA';
      end
      else
      begin
         // Filtra e ordena por num do orçamento
         if (edtCod_pro1.Value > 0) and (edtCod_pro2.Value > 0) then
         begin
            dmRL0421.cdsOrcamento.Params.ParamByName('COD1').AsInteger := edtCod_pro1.Value;
            dmRL0421.cdsOrcamento.Params.ParamByName('COD2').AsInteger := edtCod_pro2.Value;
         end
         else
         begin
            Application.MessageBox('Informe o intervalo do orçamento.','Atenção', MB_OK + MB_ICONINFORMATION);
            edtCod_pro1.SetFocus;
            exit;
         end;
         dmRL0421.cdsOrcamento.IndexFieldNames := 'CODIGO_VENDA';
         lblParam1.Caption := 'Sequência: ' + edtCod_pro1.Text + ' a ' + edtCod_pro1.Text;
      end;

      dmRL0421.cdsOrcamento.Open;

      lblEmpresa  .Caption := Empresa1;
      lblData     .Caption := DateToStr(DataSystem1);
      rptOrcamento.Print;
   end
   else

   // MOstra relatório somente de produtos
   begin
      dmRL0421.cdsOrc_Itens2.Close;

      if edtCodCliente.Value > 0 then
      begin
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('COD1').AsInteger := edtCodCliente.Value;
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('COD2').AsInteger := edtCodCliente.Value;
      end
      else
      begin
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('COD1').AsInteger := 0;
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('COD2').AsInteger := 999999999;
      end;

      if edtCodVEndedor.Value > 0 then
      begin
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('VEND1').AsInteger := edtCodVEndedor.Value;
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('VEND2').AsInteger := edtCodVEndedor.Value;
      end
      else
      begin
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('VEND1').AsInteger := 0;
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('VEND2').AsInteger := 999999999;
      end;

      if edtPagamento.Value > 0 then
      begin
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('PGT1').AsFloat := edtPagamento.Value;
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('PGT2').AsFloat := edtPagamento.Value;
      end
      else
      begin
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('PGT1').AsFloat := 0;
         dmRL0421.cdsOrc_Itens2.Params.ParamByName('PGT2').AsFloat := 9999;
      end;

      if RadioGroup1.ItemIndex = 0 then
      begin
         // Filtra e ordena por data
         if ((edtData_inicial.Text <> '  /  /    ') and (edtData_final.Text <> '  /  /    ')) then
         begin
            dmRL0421.cdsOrc_Itens2.Params.ParamByName('DATA1').AsDate := edtData_inicial.Date;
            dmRL0421.cdsOrc_Itens2.Params.ParamByName('DATA2').AsDate := edtData_final.Date;

            lblParam1.Caption := 'Período: ' + edtData_inicial.Text + ' a ' + edtData_final.Text;
         end
         else
         begin
            dmRL0421.cdsOrc_Itens2.Params.ParamByName('DATA1').AsDate := StrToDate('01/01/0300');
            dmRL0421.cdsOrc_Itens2.Params.ParamByName('DATA2').AsDate := StrToDate('31/12/3000');

            lblParam1.Caption := 'Todas os Lançamentos';
         end;
         dmRL0421.cdsOrc_Itens2.IndexFieldNames := 'DATA_VENDA';
      end
      else
      begin
         // Filtra e ordena por num do orçamento
         if (edtCod_pro1.Value > 0) and (edtCod_pro2.Value > 0) then
         begin
            dmRL0421.cdsOrc_Itens2.Params.ParamByName('COD1').AsInteger := edtCod_pro1.Value;
            dmRL0421.cdsOrc_Itens2.Params.ParamByName('COD2').AsInteger := edtCod_pro2.Value;
         end
         else
         begin
            Application.MessageBox('Informe o intervalo do orçamento.','Atenção', MB_OK + MB_ICONINFORMATION);
            edtCod_pro1.SetFocus;
            exit;
         end;
         dmRL0421.cdsOrc_Itens2.IndexFieldNames := 'CODIGO_VENDA';
         lblParam1.Caption := 'Sequência: ' + edtCod_pro1.Text + ' a ' + edtCod_pro1.Text;
      end;

      dmRL0421.cdsOrc_Itens2.Open;

      ppLabel27  .Caption := Empresa1;
      ppLabel31  .Caption := DateToStr(DataSystem1);
      rptProdutos.Print;
   end;
end;

procedure TfrmRl0421.ppLabel13GetText(Sender: TObject; var Text: String);
begin
   Text := IntToStr(dmRL0421.cdsOrcamento.RecordCount);
end;

procedure TfrmRl0421.FormCreate(Sender: TObject);
begin
   dmRL0421 := TdmRL0421.Create(Self);

   ckbExibe_prod.Checked := True;

   edtData_inicial.Date := DataSystem1;
   edtData_final  .Date := DataSystem1;
end;

procedure TfrmRl0421.ckbExibe_prodClick(Sender: TObject);
begin
   if ckbExibe_prod.Checked then
   begin
      Label8         .Enabled := True;
      edtCodProduto  .Enabled := True;
      SpeedButton4   .Enabled := True;
   end
   else
   begin
      Label8         .Enabled := False;
      edtCodProduto  .Enabled := False;
      SpeedButton4   .Enabled := False;
   end;
end;

procedure TfrmRl0421.dsOrcamentoDataChange(Sender: TObject; Field: TField);
begin
   if ckbExibe_prod.Checked then
   begin
      dmRL0421.cdsOrc_itens.Close;
      dmRL0421.cdsOrc_itens.Params.ParamByName('CODVENDA').AsInteger := dmRL0421.cdsOrcamentoCODIGO_VENDA.AsInteger;

      if edtCodGrupo.Value > 0 then
      begin
         dmRL0421.cdsOrc_itens.Params.ParamByName('GRU1').AsInteger := edtCodGrupo.Value;
         dmRL0421.cdsOrc_itens.Params.ParamByName('GRU2').AsInteger := edtCodGrupo.Value;
      end
      else
      begin
         dmRL0421.cdsOrc_itens.Params.ParamByName('GRU1').AsInteger := 0;
         dmRL0421.cdsOrc_itens.Params.ParamByName('GRU2').AsInteger := 999999999;
      end;

      dmRL0421.cdsOrc_itens.Open;
   end;
end;

procedure TfrmRl0421.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
