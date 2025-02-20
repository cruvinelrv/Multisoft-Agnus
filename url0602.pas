unit uRL0602;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppModule, raCodMod, ppStrtch, ppSubRpt, JvSpin;

type
  TfrmRL0602 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtData: TJvDateEdit;
    edtCaixa: TJvValidateEdit;
    rdgPedidos: TRadioGroup;
    rdgResumo: TRadioGroup;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    rptMapa_caixa: TppReport;
    ppParameterList1: TppParameterList;
    edtTurno: TJvSpinEdit;
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
    ppHeaderBand2: TppHeaderBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLine9: TppLine;
    ppLine2: TppLine;
    ppLabel17: TppLabel;
    ppLine10: TppLine;
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
    ppLabel70: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
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
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel71: TppLabel;
    ppVariable2: TppVariable;
    ppLabel72: TppLabel;
    ppVariable3: TppVariable;
    ppLabel69: TppLabel;
    ppDBCalc17: TppDBCalc;
    ppLine26: TppLine;
    raCodeModule2: TraCodeModule;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel30: TppLabel;
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
    ppHeaderBand3: TppHeaderBand;
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
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel73: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppLine27: TppLine;
    raCodeModule3: TraCodeModule;
    ppSubReport3: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel43: TppLabel;
    ppLine20: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel57: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText30: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel55: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppLine28: TppLine;
    ppSubReport4: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLabel44: TppLabel;
    ppLine25: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel58: TppLabel;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText31: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel56: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppLine29: TppLine;
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine4: TppLine;
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
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    raCodeModule1: TraCodeModule;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataExit(Sender: TObject);
    procedure edtCaixaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
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
    procedure ppVariable3Calc(Sender: TObject; var Value: Variant);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Vendas_Mes;
    procedure Posicao_SuRelatorio;
  public
    { Public declarations }
    Quant_Clientes : Integer;
    Venda_Vista, Entradas, Cartao, Cheque,
    Convenio, Venda_Prazo, Outros, Subtotal,
    Outras_Entradas, Dinheiro,
    Retiradas, Troco_Entrega, Saldo_Atual,
    Devolucoes, Vendas_do_Mes, Em_Especie,
    Total_Cash, Entregas_Aberto, Saldo_Inicial,
    Entradas_Caixa, Recebido, Entradas_Dinheiro,
    Entradas_Cheque, Entradas_Outras,
    Subtotal_2, Retiradas_Caixa,
    Cheque_Pre : Double;
    Usuario : String;
  end;

var
  frmRL0602: TfrmRL0602;

implementation

uses udmRL0602, uGlobal;

{$R *.dfm}

procedure TfrmRL0602.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0602.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0602.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0602.edtDataExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtData.Date = 0 then
   begin
      Application.MessageBox('Informe a data ', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtData.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0602.edtCaixaExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtCaixa.Value > 0 then
   begin
      dmRL0602.cdsCaixa_Busca.Close;
      dmRL0602.cdsCaixa_Busca.Params.ParamByName('CAIXA').AsInteger := edtCaixa.Value;
      dmRL0602.cdsCaixa_Busca.Open;

      if dmRL0602.cdsCaixa_Busca.IsEmpty then
      begin
         Application.MessageBox('Caixa n�o encontrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
         edtCaixa.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0602.FormCreate(Sender: TObject);
begin
   dmRL0602 := TdmRL0602.Create(Self);
end;

procedure TfrmRL0602.btnImprimirClick(Sender: TObject);
Var Testa_Clente: Integer;
begin
   Quant_Clientes    := 0;
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
   Cheque_Pre        := 0;
   Vendas_do_Mes     := 0;
   Usuario           := '';

   with dmRL0602 do
   begin
      if edtCaixa.AsInteger > 0 then
      begin
         cdsCliente.Close;
         cdsVendas.Close;
         cdsVendas_Dev.Close;
         cdsVendas_Turno.Close;
         cdsCliente.Params.ParamByName('CAI1').AsInteger      := edtCaixa.AsInteger;
         cdsCliente.Params.ParamByName('CHAVE').AsString      := edtData.Text;
         cdsVendas.Params.ParamByName('CAI1').AsInteger       := edtCaixa.AsInteger; // busca vendas
         cdsVendas.Params.ParamByName('CHAVE').AsString       := edtData.Text;
         cdsVendas_Turno.Params.ParamByName('CAI1').AsInteger := edtCaixa.AsInteger; // busca vendas do turno
         cdsVendas_Turno.Params.ParamByName('CHAVE').AsString := edtData.Text;
         cdsVendas_Dev.Params.ParamByName('CAI1').AsInteger   := edtCaixa.AsInteger; // busca devolu��es
         cdsVendas_Dev.Params.ParamByName('CHAVE').AsString   := edtData.Text;

         if Edit1.Text <> '�' then
         begin
            cdsVendas.Params.ParamByName('SER1').AsString       := 'CI';
            cdsVendas_Turno.Params.ParamByName('SER1').AsString := 'CI';
            cdsVendas_Dev.Params.ParamByName('SER1').AsString   := 'CI';
            cdsCliente.Params.ParamByName('SER1').AsString      := 'CI';
         end
         else
         begin
            cdsVendas.Params.ParamByName('SER1').AsString       := '';
            cdsVendas_Turno.Params.ParamByName('SER1').AsString := '';
            cdsVendas_Dev.Params.ParamByName('SER1').AsString   := '';
            cdsCliente.Params.ParamByName('SER1').AsString      := '';
         end;

         cdsCliente.Open; // busca a quantidade de clientes atendidos
         cdsCliente.First;
         while not cdsCliente.Eof do
         begin
            Quant_Clientes := Quant_Clientes + 1;

            cdsCliente.Next;
         end;

         cdsVendas_Turno.Open;
         if rdgResumo.ItemIndex = 0 then
            cdsVendas_Turno.IndexFieldNames := 'CAIXA_CPAGAMENTO'
         else
            cdsVendas_Turno.IndexFieldNames := 'HORA_VENDA';

         cdsVendas_Dev.Open;
         if rdgResumo.ItemIndex = 0 then
            cdsVendas_Dev.IndexFieldNames := 'CAIXA_CPAGAMENTO'
         else
            cdsVendas_Dev.IndexFieldNames := 'HORA_VENDA';

         cdsVendas.Open;

         if not cdsVendas.IsEmpty then
         begin
            cdsVendas.First;
            while not cdsVendas.Eof do
            begin
               Venda_Vista     := Venda_Vista + cdsVendasA_VISTA.AsFloat;

               cdsVendas.Next;
            end;

            cdsCaixa.Close;
            cdsCaixa.Params.ParamByName('CAIXA').AsInteger := edtCaixa.Value;
            cdsCaixa.Params.ParamByName('DATA').AsString  :=  edtData.Text;
            cdsCaixa.Params.ParamByName('TURNO').AsString  := edtTurno.EditText;
            cdsCaixa.Open;

            cdsCaixa.First;
            while not cdsCaixa.Eof do
            begin
               Troco_Entrega   := Troco_Entrega + cdsCaixaTROCO_ENTREGA_CAIXA.AsFloat;
               Retiradas_Caixa := Retiradas_Caixa + cdsCaixaRETIRADAS_CAIXA.AsFloat;
               Entregas_Aberto := Entregas_Aberto + cdsCaixaENTREGA_CAIXA.AsFloat;
               Entradas        := Entradas + cdsCaixaENTRADA_TUR_CAIXA.AsFloat;
               Cartao          := Cartao + cdsCaixaCARTAO_TUR_CAIXA.AsFloat;
               Cheque          := Cheque + cdsCaixaCHEQUES_CAIXA.AsFloat;
               Convenio        := Convenio + cdsCaixaCONVENIO_TUR_CAIXA.AsFloat;
               Venda_Prazo     := Venda_Prazo + cdsCaixaPRAZO_TUR_CAIXA.AsFloat;
               Outros          := Outros + cdsCaixaOUTRASTUR_CAIXA.AsFloat;
               Saldo_Inicial   := Saldo_Inicial + cdsCaixaSALDO_INICIAL_CAIXA.AsFloat;
               Devolucoes      := Devolucoes + cdsCaixaDEVOLUCAOTUR_CAIXA.AsFloat;
               Cheque_Pre      := Cheque_Pre + cdsCaixaPREDATADO_TUR_CAIXA.AsFloat;
               Usuario         := Copy(cdsCaixaCHAVE_CAIXA.AsString, 12, 10);

               if not cdsCaixa.IsEmpty then
               begin
                  cdsCai_MovR.Close;
                  cdsCaixa_mov.Close;
                  cdsCai_MovR.Params.ParamByName('CAIMOV').AsInteger  := edtCaixa.AsInteger; // Busca as retiradas da movimenta��o de caixa
                  cdsCai_MovR.Params.ParamByName('CHAMOV').AsString  := copy(cdsCaixaCHAVE_CAIXA.AsString, 1, 10);
                  cdsCaixa_mov.Params.ParamByName('CAIMOV').AsInteger := edtCaixa.AsInteger; // Busca as entradas da movimenta��o de caixa
                  cdsCaixa_mov.Params.ParamByName('CHAMOV').AsString  := copy(cdsCaixaCHAVE_CAIXA.AsString, 1, 10);
                  cdsCaixa_mov.Open;

                  cdsCaixa_mov.First;
                  while not cdsCaixa_mov.Eof do
                  begin
                     Entradas_Dinheiro := Entradas_Dinheiro + cdsCaixa_movDINHEIRO.AsFloat;
                     Entradas_Cheque   := Entradas_Cheque + cdsCaixa_movCHEQUE.AsFloat;
                     Entradas_Outras   := Entradas_Outras + cdsCaixa_movOUTROS.AsFloat;

                     cdsCaixa_mov.Next;
                  end;
               end;

               cdsCaixa.Next;
            end;

            Em_Especie  := Venda_Vista + Entradas + Saldo_Inicial + (Outros - Retiradas_Caixa);
            Subtotal    := Venda_Vista + Entradas + Cartao + Cheque + Convenio + Venda_Prazo + Outros;
            Subtotal_2  := Subtotal + Saldo_Inicial + Entradas ;// Subtotal_2  := Subtotal + Saldo_Inicial + Entradas + Entradas_Dinheiro + Entradas_Cheque + Entradas_Outras;
            Saldo_Atual := Subtotal_2 - Retiradas_Caixa - Troco_Entrega;

            Vendas_Mes; // procedure que apura as vendas do m�s

            if rdgPedidos.ItemIndex = 0 then
            begin
               ppSubReport1.Visible := True;
               ppSubReport2.Visible := True;
            end
            else
            begin
               ppSubReport1.Visible := False;
               ppSubReport2.Visible := False;
            end;
         end;
      end;
      
      Posicao_SuRelatorio; // prodedure

      rptMapa_caixa.Print;
   end;
end;

procedure TfrmRL0602.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0602.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Mapa de Caixa de ' + edtData.Text + ' do Turno ' + edtTurno.EditText + ' Caixa: ' + StrZero(edtCaixa.EditText, 2) + ' ' + Usuario;
end;

procedure TfrmRL0602.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;


procedure TfrmRL0602.A_VistaCalc(Sender: TObject; var Value: Variant);
begin
   A_Vista.Value := Venda_Vista;
end;

procedure TfrmRL0602.Entradas_RelCalc(Sender: TObject; var Value: Variant);
begin
   Entradas_Rel.Value := Entradas;
end;

procedure TfrmRL0602.Cartao_RelCalc(Sender: TObject; var Value: Variant);
begin
   Cartao_Rel.Value := Cartao;
end;

procedure TfrmRL0602.Cheque_RelCalc(Sender: TObject; var Value: Variant);
begin
   Cheque_Rel.Value := Cheque;
end;

procedure TfrmRL0602.Convenio_RelCalc(Sender: TObject; var Value: Variant);
begin
   Convenio_Rel.Value := Convenio;
end;

procedure TfrmRL0602.A_PrazoCalc(Sender: TObject; var Value: Variant);
begin
   A_Prazo.Value := Venda_Prazo;
end;

procedure TfrmRL0602.Outros_RelCalc(Sender: TObject; var Value: Variant);
begin
   Outros_Rel.Value := Outros;
end;

procedure TfrmRL0602.Subtotal_RelCalc(Sender: TObject; var Value: Variant);
begin
   Subtotal_Rel.Value := Subtotal;
end;

procedure TfrmRL0602.Saldo_Ini_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Saldo_Ini_Rel.Value := Saldo_Inicial;
end;

procedure TfrmRL0602.Outras_Ent_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Outras_Ent_Rel.Value := Entradas;
end;

procedure TfrmRL0602.Outras_DinCalc(Sender: TObject; var Value: Variant);
begin
   Outras_Din.Value := Entradas_Dinheiro;
end;

procedure TfrmRL0602.Outras_CheCalc(Sender: TObject; var Value: Variant);
begin
   Outras_Che.Value := Entradas_Cheque;
end;

procedure TfrmRL0602.Outras_OutCalc(Sender: TObject; var Value: Variant);
begin
   Outras_Out.Value := Entradas_Outras;
end;

procedure TfrmRL0602.Subtotal_2_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Subtotal_2_Rel.Value := Subtotal_2;
end;

procedure TfrmRL0602.Retiradas_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Retiradas_Rel.Value := Retiradas_Caixa;
end;

procedure TfrmRL0602.Troco_RelCalc(Sender: TObject; var Value: Variant);
begin
   Troco_Rel.Value := Troco_Entrega;
end;

procedure TfrmRL0602.Saldo_Atual_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Saldo_Atual_Rel.Value := Saldo_Atual;
end;

procedure TfrmRL0602.Devoluvoes_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Devoluvoes_Rel.Value := Devolucoes;
end;

procedure TfrmRL0602.Vendas_Mes_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Vendas_Mes_Rel.Value := Vendas_do_Mes;
end;

procedure TfrmRL0602.Em_Especie_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Em_Especie_Rel.Value := Em_Especie;
end;

procedure TfrmRL0602.Troco_Ent_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Troco_Ent_Rel.Value := Troco_Entrega;
end;

procedure TfrmRL0602.Total_CaschCalc(Sender: TObject; var Value: Variant);
begin
   Total_Casch.Value := Em_Especie - Troco_Entrega;
end;

procedure TfrmRL0602.Entregas_Abe_RelCalc(Sender: TObject;
  var Value: Variant);
begin
   Entregas_Abe_Rel.Value := Entregas_Aberto;
end;

procedure TfrmRL0602.Vendas_Mes; // apura vendas do m�s
Var
  Sql1 : String;
  pChave : Variant;
  pData_Ini, pData_Fim : TDateTime;
begin
   Vendas_do_Mes := 0;

   if dmRL0602.cdsCaixaCHAVE_CAIXA.AsString <> '' then
   begin
      pChave    := Copy(dmRL0602.cdsCaixaCHAVE_CAIXA.AsString, 1, 8);
      pChave    := StrToDate(pChave);
      pData_Ini := FirstDayOfMonth(pChave);
      pData_Fim := LastDayOfMonth(pChave);

      Sql1 := 'select v.data_venda, v.valornota_venda, v.exclusao_venda, v.tipo_doc_venda, v.serie_venda '+
              'from P_VENDAS v '+
              'where (v.exclusao_venda is null) ';
              
      Sql1 := Sql1 + 'and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', pData_Ini));
      Sql1 := Sql1 + 'and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', pData_Fim));

      if Edit1.Text <> '�' then
         Sql1 := Sql1 + 'and not (v.serie_venda = ''CI'') '
      else
         Sql1 := Sql1 + 'and not (v.serie_venda = '''') ';

      dmRL0602.cdsConsulta.Close;
      dmRL0602.cdsConsulta.CommandText := Sql1;
      dmRL0602.cdsConsulta.Open;

      while not dmRL0602.cdsConsulta.Eof do
      begin
         Vendas_do_Mes := Vendas_do_Mes + dmRL0602.cdsConsulta.FieldByName('valornota_venda').AsFloat;

         dmRL0602.cdsConsulta.Next;
      end;
   end;
end;

procedure TfrmRL0602.ppVariable3Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable3.AsInteger := Quant_Clientes;
end;

procedure TfrmRL0602.FormShow(Sender: TObject);
begin
   edtData.SetFocus;
end;

procedure TfrmRL0602.Posicao_SuRelatorio;
begin
   with dmRL0602 do
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

procedure TfrmRL0602.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
