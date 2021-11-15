unit uRL0601;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvSpin,
  ppParameter, ppModule, raCodMod, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, DB, DBClient, Grids,
  DBGrids, ppStrtch, ppSubRpt;

type
  TfrmRL0601 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    edtCaixa: TJvSpinEdit;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    rptConf_caixa: TppReport;
    ppParameterList1: TppParameterList;
    ppTitleBand1: TppTitleBand;
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
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLine4: TppLine;
    raCodeModule1: TraCodeModule;
    ppLabel8: TppLabel;
    ppLine5: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine6: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine7: TppLine;
    ppLabel18: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppHeaderBand1: TppHeaderBand;
    ppLine9: TppLine;
    ppLine2: TppLine;
    ppLine10: TppLine;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
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
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel30: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppLine15: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel43: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    ppLine20: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel70: TppLabel;
    ppDBText11: TppDBText;
    raCodeModule2: TraCodeModule;
    ppLabel71: TppLabel;
    ppVariable2: TppVariable;
    ppLabel72: TppLabel;
    ppVariable3: TppVariable;
    ppLabel69: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppLabel73: TppLabel;
    ppDBCalc19: TppDBCalc;
    raCodeModule3: TraCodeModule;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel44: TppLabel;
    ppHeaderBand5: TppHeaderBand;
    ppLine25: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel55: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppLabel56: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppLabel57: TppLabel;
    ppDBText30: TppDBText;
    ppLabel58: TppLabel;
    ppDBText31: TppDBText;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLine8: TppLine;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    A_Vista: TppVariable;
    Entradas_Rel: TppVariable;
    Cartao_Rel: TppVariable;
    Cheque_Rel: TppVariable;
    Convenio_Rel: TppVariable;
    A_Prazo: TppVariable;
    Outros_Rel: TppVariable;
    Subtotal_Rel: TppVariable;
    Saldo_Ini_Rel: TppVariable;
    Outras_Ent_Rel: TppVariable;
    Outras_Din: TppVariable;
    Outras_Che: TppVariable;
    Outras_Out: TppVariable;
    Subtotal_2_Rel: TppVariable;
    Retiradas_Rel: TppVariable;
    Troco_Rel: TppVariable;
    Saldo_Atual_Rel: TppVariable;
    ppLabel63: TppLabel;
    Devoluvoes_Rel: TppVariable;
    ppLabel64: TppLabel;
    Vendas_Mes_Rel: TppVariable;
    Em_Especie_Rel: TppVariable;
    Troco_Ent_Rel: TppVariable;
    Total_Casch: TppVariable;
    Entregas_Abe_Rel: TppVariable;
    ppLine1: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine18: TppLine;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure ppVariable3OldOnCalc(Sender: TObject);
    procedure A_VistaCalc(Sender: TObject; var Value: Variant);
    procedure Entradas_RelCalc(Sender: TObject; var Value: Variant);
    procedure Cartao_RelCalc(Sender: TObject; var Value: Variant);
    procedure Cheque_RelCalc(Sender: TObject; var Value: Variant);
    procedure Convenio_RelCalc(Sender: TObject; var Value: Variant);
    procedure A_PrazoCalc(Sender: TObject; var Value: Variant);
    procedure Outros_RelCalc(Sender: TObject; var Value: Variant);
    procedure Subtotal_RelCalc(Sender: TObject; var Value: Variant);
    procedure Saldo_Ini_RelCalc(Sender: TObject; var Value: Variant);
    procedure Outras_Ent_RelCalc(Sender: TObject; var Value: Variant);
    procedure Outras_DinCalc(Sender: TObject; var Value: Variant);
    procedure Outras_CheCalc(Sender: TObject; var Value: Variant);
    procedure Outras_OutCalc(Sender: TObject; var Value: Variant);
    procedure Subtotal_2_RelCalc(Sender: TObject; var Value: Variant);
    procedure Retiradas_RelCalc(Sender: TObject; var Value: Variant);
    procedure Troco_RelCalc(Sender: TObject; var Value: Variant);
    procedure Saldo_Atual_RelCalc(Sender: TObject; var Value: Variant);
    procedure Devoluvoes_RelCalc(Sender: TObject; var Value: Variant);
    procedure Vendas_Mes_RelCalc(Sender: TObject; var Value: Variant);
    procedure Em_Especie_RelCalc(Sender: TObject; var Value: Variant);
    procedure Troco_Ent_RelCalc(Sender: TObject; var Value: Variant);
    procedure Total_CaschCalc(Sender: TObject; var Value: Variant);
    procedure Entregas_Abe_RelCalc(Sender: TObject; var Value: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Vendas_Mes;
    procedure Posicao_SuRelatorio;
  public
    { Public declarations }
    Cli_atendidos : Integer;
    Venda_Vista, Entradas, Cartao, Cheque,
    Convenio, Venda_Prazo, Outros, Subtotal,
    Outras_Entradas, Dinheiro,
    Retiradas, Troco_Entrega, Saldo_Atual,
    Devolucoes, Vendas_do_Mes, Em_Especie,
    Total_Cash, Entregas_Aberto, Saldo_Inicial,
    Entradas_Caixa, Recebido, Entradas_Dinheiro,
    Entradas_Cheque, Entradas_Outras,
    Subtotal_2, Retiradas_Caixa : Double;
  end;

var
  frmRL0601: TfrmRL0601;

implementation

uses udmRL0601, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0601.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0601.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0601.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmRL0601.FormCreate(Sender: TObject);
begin
   dmRL0601 := TdmRL0601.Create(Self);
end;

procedure TfrmRL0601.btnImprimirClick(Sender: TObject);
Var Testa_Clente: Integer;
begin
   Cli_atendidos     := 0;
   Testa_Clente      := 0;
   Venda_Vista       := 0;
   Entradas          := 0;
   Cartao            := 0;
   Cheque            := 0;
   Convenio          := 0;
   Venda_Prazo       := 0;
   Outros            := 0;
   Saldo_Inicial     := 0;
   Entradas_Caixa    := 0;
   Recebido          := 0;
   Entradas_Dinheiro := 0;
   Entradas_Cheque   := 0;
   Entradas_Outras   := 0;
   Troco_Entrega     := 0;
   Entregas_Aberto   := 0;
   Em_Especie        := 0;
   Subtotal          := 0;
   Subtotal_2        := 0;
   Saldo_Atual       := 0;
   Devolucoes        := 0;
   Retiradas_Caixa   := 0;
   Vendas_do_Mes     := 0;

   with dmRL0601 do
   begin
      if edtCaixa.AsInteger > 0 then
      begin
         frmProcesso2 := TfrmProcesso2.Create(Application);
         frmProcesso2.Show;
         frmProcesso2.Refresh;

         cdsVendas.Close;
         cdsVendas_Dev.Close;
         cdsVendas_Turno.Close;
         cdsVendas.Params.ParamByName('CAI1').AsInteger       := edtCaixa.AsInteger; // busca vendas
         cdsVendas_Turno.Params.ParamByName('CAI1').AsInteger := edtCaixa.AsInteger; // busca vendas do turno
         cdsVendas_Dev.Params.ParamByName('CAI1').AsInteger   := edtCaixa.AsInteger; // busca devoluções

         if Edit1.Text <> 'Æ' then
         begin
            cdsVendas.Params.ParamByName('SER1').AsString       := 'CI';
            cdsVendas_Turno.Params.ParamByName('SER1').AsString := 'CI';
            cdsVendas_Dev.Params.ParamByName('SER1').AsString   := 'CI';
         end
         else
         begin
            cdsVendas.Params.ParamByName('SER1').AsString       := '';
            cdsVendas_Turno.Params.ParamByName('SER1').AsString := '';
            cdsVendas_Dev.Params.ParamByName('SER1').AsString   := '';
         end;

         cdsVendas_Turno.Open;
         cdsVendas_Turno.IndexFieldNames := 'CLIENTE_VENDA';

         cdsVendas_Turno.First;
         while not cdsVendas_Turno.Eof do // encontra a quantidade de clientes atendidos
         begin
            cdsVendas_Turno.Prior;
            Testa_Clente := cdsVendas_TurnoCLIENTE_VENDA.AsInteger;
            cdsVendas_Turno.Next;

            if Cli_atendidos <> Testa_Clente then
               Cli_atendidos := Cli_atendidos + cdsVendas_TurnoCLIENTE_VENDA.AsInteger;

            cdsVendas_Turno.Next;
         end;

         cdsVendas_Turno.First;
         cdsVendas_Turno.IndexFieldNames := 'HORA_VENDA';

         cdsVendas_Dev.Open;
         cdsVendas_Dev.IndexFieldNames   := 'HORA_VENDA';
         cdsVendas.Open;

         if not cdsVendas.IsEmpty then
         begin
            cdsVendas.First;
            while not cdsVendas.Eof do
            begin
               Venda_Vista     := Venda_Vista + cdsVendasA_VISTA.AsFloat;
               Entradas        := Entradas + cdsVendasENTRADAS.AsFloat;
               Cartao          := Cartao + cdsVendasCARTAO.AsFloat;
               Cheque          := Cheque + cdsVendasCHEQUE.AsFloat;
               Convenio        := Convenio + cdsVendasCONVENIO.AsFloat;
               Venda_Prazo     := Venda_Prazo + cdsVendasA_PRAZO.AsFloat;
               Outros          := Outros + cdsVendasOUTROS.AsFloat;
               //Saldo_Inicial   := Saldo_Inicial + cdsVendasSALDO_INICIAL_CAIXA.AsFloat;
               Entradas_Caixa  := Entradas_Caixa + cdsVendasENTRADAS_CAIXA.AsFloat;
               Recebido        := Recebido + cdsVendasRECEBIDO.AsFloat;
               Devolucoes      := Devolucoes + cdsVendasDEVOLUCAO.AsFloat;

               cdsVendas.Next;
            end;

            cdsCaixa.Close;
            cdsCaixa.Params.ParamByName('CAIXA').AsInteger := edtCaixa.AsInteger;
            cdsCaixa.Open;

            cdsCaixa.First;
            while not cdsCaixa.Eof do
            begin
               Saldo_Inicial   := cdsCaixaSALDO_INICIAL_CAIXA.AsFloat;
               Troco_Entrega   := Troco_Entrega + cdsCaixaTROCO_ENTREGA_CAIXA.AsFloat;
               Retiradas_Caixa := Retiradas_Caixa + cdsCaixaRETIRADAS_CAIXA.AsFloat;
               Entregas_Aberto := Entregas_Aberto + cdsCaixaENTREGA_CAIXA.AsFloat;

               cdsCaixa.Next;
            end;

            if not cdsCaixa.IsEmpty then
            begin
               cdsCai_MovR.Close;
               cdsCaixa_mov.Close;
               cdsCai_MovR.Params.ParamByName('CAIMOV').AsInteger  := edtCaixa.AsInteger; // Busca as retiradas da movimentação de caixa
               cdsCai_MovR.Params.ParamByName('CHAMOV').AsString  := copy(cdsCaixaCHAVE_CAIXA.AsString, 1, 10);
               cdsCaixa_mov.Params.ParamByName('CAIMOV').AsInteger := edtCaixa.AsInteger; // Busca as entradas da movimentação de caixa
               cdsCaixa_mov.Params.ParamByName('CHAMOV').AsString  := copy(cdsCaixaCHAVE_CAIXA.AsString, 1, 10);
               cdsCaixa_mov.Open;
               cdsCai_MovR.Open;

               cdsCaixa_mov.First;
               while not cdsCaixa_mov.Eof do
               begin
                  Entradas_Dinheiro := Entradas_Dinheiro + cdsCaixa_movDINHEIRO.AsFloat;
                  Entradas_Cheque   := Entradas_Cheque + cdsCaixa_movCHEQUE.AsFloat;
                  Entradas_Outras   := Entradas_Outras + cdsCaixa_movOUTROS.AsFloat;

                  cdsCaixa_mov.Next;
               end;
            end;

            Em_Especie  := Venda_Vista + Entradas + Saldo_Inicial + (Outros - Retiradas_Caixa);
            Subtotal    := Venda_Vista + Entradas + Cartao + Cheque + Convenio + Venda_Prazo + Outros;
            Subtotal_2  := Subtotal + Saldo_Inicial + Entradas_Caixa ;
            Saldo_Atual := Subtotal_2 - Retiradas_Caixa - Troco_Entrega; 

            Vendas_Mes; // procedure

            frmProcesso2.Close;
         end;
      end;

      Posicao_SuRelatorio; // prodedure
      rptConf_caixa.Print;
   end;
end;

procedure TfrmRL0601.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Conferência de Caixa / Caixa: ' + IntToStr(edtCaixa.AsInteger) + '   ' + DateToStr(DataSystem1);
end;

procedure TfrmRL0601.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0601.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0601.ppVariable3OldOnCalc(Sender: TObject);
begin
   ppVariable3.AsInteger := Cli_atendidos;
end;

procedure TfrmRL0601.A_VistaCalc(Sender: TObject; var Value: Variant);
begin
   A_Vista.Value := Venda_Vista;
end;

procedure TfrmRL0601.Entradas_RelCalc(Sender: TObject; var Value: Variant);
begin
   Entradas_Rel.Value := Entradas;
end;

procedure TfrmRL0601.Cartao_RelCalc(Sender: TObject; var Value: Variant);
begin
   Cartao_Rel.Value := Cartao;
end;

procedure TfrmRL0601.Cheque_RelCalc(Sender: TObject; var Value: Variant);
begin
   Cheque_Rel.Value := Cheque;
end;

procedure TfrmRL0601.Convenio_RelCalc(Sender: TObject; var Value: Variant);
begin
   Convenio_Rel.Value := Convenio;
end;

procedure TfrmRL0601.A_PrazoCalc(Sender: TObject; var Value: Variant);
begin
   A_Prazo.Value := Venda_Prazo;
end;

procedure TfrmRL0601.Outros_RelCalc(Sender: TObject; var Value: Variant);
begin
   Outros_Rel.Value := Outros;
end;

procedure TfrmRL0601.Subtotal_RelCalc(Sender: TObject; var Value: Variant);
begin
   Subtotal_Rel.Value := Subtotal;
end;

procedure TfrmRL0601.Saldo_Ini_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Saldo_Ini_Rel.Value := Saldo_Inicial;
end;

procedure TfrmRL0601.Outras_Ent_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Outras_Ent_Rel.Value := Entradas_Caixa + Entradas_Dinheiro + Entradas_Cheque + Entradas_Outras;
end;

procedure TfrmRL0601.Outras_DinCalc(Sender: TObject; var Value: Variant);
begin
   Outras_Din.Value := Entradas_Dinheiro;
end;

procedure TfrmRL0601.Outras_CheCalc(Sender: TObject; var Value: Variant);
begin
   Outras_Che.Value := Entradas_Cheque;
end;

procedure TfrmRL0601.Outras_OutCalc(Sender: TObject; var Value: Variant);
begin
   Outras_Out.Value := Entradas_Outras;
end;

procedure TfrmRL0601.Subtotal_2_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Subtotal_2_Rel.Value := Subtotal_2;
end;

procedure TfrmRL0601.Retiradas_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Retiradas_Rel.Value := Retiradas_Caixa;
end;

procedure TfrmRL0601.Troco_RelCalc(Sender: TObject; var Value: Variant);
begin
   Troco_Rel.Value := Troco_Entrega;
end;

procedure TfrmRL0601.Saldo_Atual_RelCalc(Sender: TObject; var Value: Variant);
begin
   Saldo_Atual_Rel.Value := Saldo_Atual;
end;

procedure TfrmRL0601.Devoluvoes_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Devoluvoes_Rel.Value := Devolucoes;
end;

procedure TfrmRL0601.Vendas_Mes;
Var
  Sql1 : String;
  pChave : Variant;
  pData_Ini, pData_Fim : TDateTime;
begin
   Vendas_do_Mes := 0;

   if dmRL0601.cdsCaixaCHAVE_CAIXA.AsString <> '' then
   begin
      pChave    := Copy(dmRL0601.cdsCaixaCHAVE_CAIXA.AsString, 1, 8);
      pChave    := StrToDate(pChave);
      pData_Ini := FirstDayOfMonth(pChave);
      pData_Fim := LastDayOfMonth(pChave);

      Sql1 := 'select v.data_venda, v.valornota_venda, v.exclusao_venda, v.tipo_doc_venda, v.serie_venda '+
              'from P_VENDAS v '+
              'where (v.exclusao_venda is null) ';
              
      Sql1 := Sql1 + 'and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', pData_Ini));
      Sql1 := Sql1 + 'and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', pData_Fim));

      if Edit1.Text <> 'Æ' then
         Sql1 := Sql1 + 'and not (v.serie_venda = ''CI'') '
      else
         Sql1 := Sql1 + 'and not (v.serie_venda = '''') ';

      dmRL0601.cdsConsulta.Close;
      dmRL0601.cdsConsulta.CommandText := Sql1;
      dmRL0601.cdsConsulta.Open;

      while not dmRL0601.cdsConsulta.Eof do
      begin
         Vendas_do_Mes := Vendas_do_Mes + dmRL0601.cdsConsulta.FieldByName('valornota_venda').AsFloat;

         dmRL0601.cdsConsulta.Next;
      end;
   end;
end;

procedure TfrmRL0601.Vendas_Mes_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Vendas_Mes_Rel.Value := Vendas_do_Mes;
end;

procedure TfrmRL0601.Em_Especie_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Em_Especie_Rel.Value := Em_Especie;
end;

procedure TfrmRL0601.Troco_Ent_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Troco_Ent_Rel.Value := Troco_Entrega;
end;

procedure TfrmRL0601.Total_CaschCalc(Sender: TObject; var Value: Variant);
begin
   Total_Casch.Value := Em_Especie - Troco_Entrega;
end;

procedure TfrmRL0601.Entregas_Abe_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Entregas_Abe_Rel.Value := Entregas_Aberto;
end;

procedure TfrmRL0601.Posicao_SuRelatorio;
begin
   with dmRL0601 do
   begin
      if (not cdsVendas_Turno.IsEmpty) and
         (cdsVendas_Dev.IsEmpty) and
         (cdsCaixa_mov.IsEmpty) then
      begin
         ppSubReport4.ShiftRelativeTo := ppSubReport1;
      end;

      if (cdsVendas_Turno.IsEmpty) and
         (not cdsVendas_Dev.IsEmpty) and
         (cdsCaixa_mov.IsEmpty) then
      begin
         ppSubReport2.ShiftRelativeTo.Clear;
      end;

      if (cdsVendas_Turno.IsEmpty) and
         (cdsVendas_Dev.IsEmpty) and
         (not cdsCaixa_mov.IsEmpty) then
      begin
         ppSubReport4.ShiftRelativeTo := ppSubReport3;
      end;

      if (not cdsVendas_Turno.IsEmpty) and
         (not cdsVendas_Dev.IsEmpty) and
         (not cdsCaixa_mov.IsEmpty) then
      begin
         ppSubReport2.ShiftRelativeTo := ppSubReport1;
         ppSubReport3.ShiftRelativeTo := ppSubReport2;
         ppSubReport4.ShiftRelativeTo := ppSubReport3;
      end;

      if (not cdsVendas_Turno.IsEmpty) and
         (not cdsVendas_Dev.IsEmpty) and
         (cdsCaixa_mov.IsEmpty) then
      begin
         ppSubReport2.ShiftRelativeTo := ppSubReport1;
         ppSubReport4.ShiftRelativeTo := ppSubReport2;
      end;

      if (cdsVendas_Turno.IsEmpty) and
         (not cdsVendas_Dev.IsEmpty) and
         (not cdsCaixa_mov.IsEmpty) then
      begin
         ppSubReport2.ShiftRelativeTo.Clear;
         ppSubReport3.ShiftRelativeTo := ppSubReport2;
         ppSubReport4.ShiftRelativeTo := ppSubReport3;
      end;

      if (not cdsVendas_Turno.IsEmpty) and
         (cdsVendas_Dev.IsEmpty) and
         (not cdsCaixa_mov.IsEmpty) then
      begin
         ppSubReport3.ShiftRelativeTo := ppSubReport1;
         ppSubReport4.ShiftRelativeTo := ppSubReport3;
      end;
   end;
end;

procedure TfrmRL0601.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
