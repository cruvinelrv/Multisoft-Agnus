unit uRL0313;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt, DB, Grids,
  DBGrids;

type
  TfrmRL0313 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    cbxModelo: TComboBox;
    Label7: TLabel;
    edtGrupo: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label2: TLabel;
    edtSubGrupo: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Label3: TLabel;
    edtFabricante: TJvValidateEdit;
    Label4: TLabel;
    edtLocacao: TJvValidateEdit;
    Label5: TLabel;
    cbxOrdem: TComboBox;
    Label6: TLabel;
    cbxSeparador: TComboBox;
    cbxGrade: TComboBox;
    cbxEstoques: TComboBox;
    cbxServicos: TComboBox;
    cbxPrecoCusto: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    rptRel_Modelo1_Grupo: TppReport;
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
    SpeedButton2: TSpeedButton;
    Edit3: TEdit;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSubReportGradeF: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine7: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    Total_Estoque: TppDBCalc;
    Total_Pre_Custo: TppDBCalc;
    Total_Pre_Com: TppDBCalc;
    Total_Pre_Lista: TppDBCalc;
    ppLine5: TppLine;
    rptRel_Modelo1_Fabricante: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine6: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine8: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel29: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine10: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText25: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    rptRel_Modelo1_Nenhum: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine13: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine14: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine15: TppLine;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand6: TppSummaryBand;
    ppLabel55: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppLine16: TppLine;
    ppDBText26: TppDBText;
    rptRel_Modelo2: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine17: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine18: TppLine;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand8: TppSummaryBand;
    ppLabel75: TppLabel;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine20: TppLine;
    ppLabel64: TppLabel;
    ppDBText38: TppDBText;
    ppLabel72: TppLabel;
    ppDBText46: TppDBText;
    ppDBCalc13: TppDBCalc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure edtGrupoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtSubGrupoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtFabricanteExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbxModeloChange(Sender: TObject);
    procedure ppLabel63GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure ppLabel41GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function Parametro_Rel() : String;
  public
    { Public declarations }
  end;

var
  frmRL0313: TfrmRL0313;

implementation

uses udmRL0313, uGr01, uGlobal, uConsulta, uProcesso2;

{$R *.dfm}

procedure TfrmRL0313.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0313.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0313.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0313.FormCreate(Sender: TObject);
begin
   dmRL0313 := TdmRL0313.Create(Self);
end;

procedure TfrmRL0313.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   with dmRL0313 do
   begin
      Sql1 := 'select p. *, g.descricao_grupo, s.descricao_subgrupo, c.nome_cliente as Nome_Fabricante, '+
              '(p.estoque_produto * p.preco_lista_produto) as Total_Pre_Ven, '+
              '(p.estoque_produto * p.preco_custo_produto) as Total_Pre_Cus,  '+
              'Case when (not p.prat1_produto is null) or (p.prat1_produto <> '''') then p.prat1_produto '+
              'else p.prat2_produto '+
              'end as Prateleira '+
              'from P_PRODUTOS p '+
              'left outer join p_grupos g on (p.grupo_produto = g.codigo_grupo) '+
              'left outer join p_subgrupo s on (p.subgrupo_produto = s.codigo_subgrupo) '+
              'left outer join e_cliente c on (p.fabrica_produto = c.codigo_cliente)'+
              'where p.estoque_produto > 0';

      if edtGrupo.Value > 0 then
         Sql1 := Sql1 + ' and p.grupo_produto = ' + QuotedStr(edtGrupo.EditText);

      if edtSubGrupo.Value > 0 then
         Sql1 := Sql1 + ' and p.subgrupo_produto = ' + QuotedStr(edtSubGrupo.EditText);

      if edtFabricante.Value > 0 then
         Sql1 := Sql1 + ' and p.fabrica_produto = ' + QuotedStr(edtFabricante.EditText);

      if edtLocacao.Value > 0 then
         Sql1 := Sql1 + ' and ((p.prat1_produto = ' + QuotedStr(edtLocacao.EditText) + ') or (p.prat2_produto = ' + QuotedStr(edtLocacao.EditText) + '))';

      if cbxServicos.ItemIndex = 0 then // se o campo CLASSE_PRODUTO for igual a 1 � PRODUTO se for igual a 2 � SERVI�O
         Sql1 := Sql1 + ' and not (p.classe_produto =  ''2'')';

      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsProdutos.Close;
      cdsProdutos.CommandText := Sql1;
      cdsProdutos.Open;

      frmProcesso2.Close;

      if cbxModelo.ItemIndex = 0 then // modelo um
      begin
         Case cbxSeparador.ItemIndex of
            0: // nenhum
            begin
               Case cbxOrdem.ItemIndex of
                  0: cdsProdutos.IndexFieldNames := 'codigo_produto';
                  1: cdsProdutos.IndexFieldNames := 'descricao_produto';
                  2: cdsProdutos.IndexFieldNames := 'local_estoque_produto';
                  3: cdsProdutos.IndexFieldNames := 'fabrica_produto';
               end;

               if cbxGrade.ItemIndex = 0 then
                  ppSubReport2.Visible := False
               else
                  ppSubReport2.Visible := True;

               if cbxEstoques.ItemIndex = 0 then
               begin
                  ppLabel48.Visible  := False;
                  ppDBText31.Visible := False;
                  ppDBCalc5.Visible  := False;
               end
               else
               begin
                  ppLabel48.Visible  := True;
                  ppDBText31.Visible := True;
                  ppDBCalc5.Visible  := True;
               end;

               if cbxPrecoCusto.ItemIndex = 0 then
               begin
                  ppLabel49.Visible  := False;
                  ppDBText32.Visible := False;
                  ppDBCalc6.Visible  := False;
               end
               else
               begin
                  ppLabel49.Visible  := True;
                  ppDBText32.Visible := True;
                  ppDBCalc6.Visible  := True;
               end;

               rptRel_Modelo1_Nenhum.Print;
            end;

            1: // grupo
            begin
               Case cbxOrdem.ItemIndex of
                  0: cdsProdutos.IndexFieldNames := 'grupo_produto; codigo_produto';
                  1: cdsProdutos.IndexFieldNames := 'grupo_produto; descricao_produto';
                  2: cdsProdutos.IndexFieldNames := 'grupo_produto; local_estoque_produto';
                  3: cdsProdutos.IndexFieldNames := 'grupo_produto; fabrica_produto';
               end;

               if cbxGrade.ItemIndex = 0 then
                  ppSubReportGradeF.Visible := False
               else
                  ppSubReportGradeF.Visible := True;

               if cbxEstoques.ItemIndex = 0 then
               begin
                  ppLabel5.Visible       := False;
                  ppDBText7.Visible      := False;
                  Total_Estoque.Visible  := False;
               end
               else
               begin
                  ppLabel5.Visible       := True;
                  ppDBText7.Visible      := True;
                  Total_Estoque.Visible  := True;
               end;

               if cbxPrecoCusto.ItemIndex = 0 then
               begin
                  ppLabel6.Visible        := False;
                  ppDBText8.Visible       := False;
                  Total_Pre_Custo.Visible := False;
               end
               else
               begin
                  ppLabel6.Visible        := True;
                  ppDBText8.Visible       := True;
                  Total_Pre_Custo.Visible := True;
               end;

               rptRel_Modelo1_Grupo.Print;
            end;

            2: // fabricante
            begin
               Case cbxOrdem.ItemIndex of
                  0: cdsProdutos.IndexFieldNames := 'fabrica_produto; codigo_produto';
                  1: cdsProdutos.IndexFieldNames := 'fabrica_produto; descricao_produto';
                  2: cdsProdutos.IndexFieldNames := 'fabrica_produto; local_estoque_produto';
                  3: cdsProdutos.IndexFieldNames := 'fabrica_produto';
               end;

               if cbxGrade.ItemIndex = 0 then
                  ppSubReport1.Visible := False
               else
                  ppSubReport1.Visible := True;

               if cbxEstoques.ItemIndex = 0 then
               begin
                  ppLabel22.Visible  := False;
                  ppDBText18.Visible := False;
                  ppDBCalc2.Visible  := False;
               end
               else
               begin
                  ppLabel22.Visible  := True;
                  ppDBText18.Visible := True;
                  ppDBCalc2.Visible  := True;
               end;

               if cbxPrecoCusto.ItemIndex = 0 then
               begin
                  ppLabel23.Visible  := False;
                  ppDBText19.Visible := False;
                  ppDBCalc2.Visible  := False;
               end
               else
               begin
                  ppLabel23.Visible  := True;
                  ppDBText19.Visible := True;
                  ppDBCalc2.Visible  := True;
               end;

               rptRel_Modelo1_Fabricante.Print;
            end;
         end;
      end
      else  // modelo dois
      begin
         Case cbxOrdem.ItemIndex of
            0: cdsProdutos.IndexFieldNames := 'codigo_produto';
            1: cdsProdutos.IndexFieldNames := 'descricao_produto';
            2: cdsProdutos.IndexFieldNames := 'local_estoque_produto';
            3: cdsProdutos.IndexFieldNames := 'fabrica_produto';
         end;

         if cbxPrecoCusto.ItemIndex = 0 then
         begin
            ppLabel69.Visible  := False;
            ppDBText43.Visible := False;
            ppDBCalc10.Visible := False;
            ppLabel70.Visible  := False;
            ppDBText44.Visible := False;
            ppDBCalc11.Visible := False;
         end
         else
         begin
            ppLabel69.Visible  := True;
            ppDBText43.Visible := True;
            ppDBCalc10.Visible := True;
            ppLabel70.Visible  := True;
            ppDBText44.Visible := True;
            ppDBCalc11.Visible := True;
         end;

         rptRel_Modelo2.Print;
      end;
   end;
end;

procedure TfrmRL0313.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0313.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Listagem de Produtos apenas com Estoque';
end;

procedure TfrmRL0313.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Text := Parametro_Rel; // function
end;

function TfrmRL0313.Parametro_Rel: String;
Var
  Grupo1, SubGrupo1, Fabricante1 : String;
begin
   Result      := '';
   Grupo1      := '';
   SubGrupo1   := '';
   Fabricante1 := '';

   if edtGrupo.EditText = '' then
      Grupo1    := 'Grupo: 0'
   else
      Grupo1    := 'Grupo: ' + edtGrupo.EditText;

   if edtSubGrupo.EditText = '' then
      SubGrupo1 := ' Sub-Grupo: 0'
   else
      SubGrupo1 := ' Sub-Grupo: ' + edtSubGrupo.EditText;

   if edtFabricante.Value > 0 then
      Fabricante1 := ' Fabr: ' + Edit3.Text
   else
      Fabricante1 := ' Fabr: Todos os Fabricantes ';

   Result := Grupo1 + Fabricante1 + SubGrupo1;
end;

procedure TfrmRL0313.edtGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtGrupo, Edit1, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0313.SpeedButton3Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0313.edtSubGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtSubGrupo, Edit2, 'P_SUBGRUPO', 'CODIGO_SUBGRUPO', 'DESCRICAO_SUBGRUPO') then
   begin
      edtSubGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0313.SpeedButton1Click(Sender: TObject);
begin
   edtSubGrupo.SetFocus;

   ConsultaSubGrupoProdutos(edtSubGrupo);
end;

procedure TfrmRL0313.edtFabricanteExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtFabricante, Edit3, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
   begin
      edtFabricante.SetFocus;
      Exit;
   end
   else
   begin
      if Tipo_Cliente = 0 then
      begin
         Edit3.Clear;
         Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
         edtFabricante.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0313.SpeedButton2Click(Sender: TObject);
begin
   edtFabricante.SetFocus;

   ConsultaFornecedor(edtFabricante);
end;

procedure TfrmRL0313.cbxModeloChange(Sender: TObject);
begin
   Case cbxModelo.ItemIndex of
      0:
      begin
         cbxSeparador.Enabled := True;
         cbxGrade.Enabled     := True;
         cbxEstoques.Enabled  := True;
      end;

      1:
      begin
         cbxSeparador.Enabled := False;
         cbxGrade.Enabled     := False;
         cbxEstoques.Enabled  := False;
      end;
   end;
end;

procedure TfrmRL0313.ppLabel63GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0313.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0313.ppLabel17GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0313.ppLabel41GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0313.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.

