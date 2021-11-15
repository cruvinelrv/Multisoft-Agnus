unit uFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvToolEdit, JvBaseEdits, StdCtrls, Mask, JvExMask, JvSpin,
  ComCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, JvExStdCtrls, JvEdit,
  JvValidateEdit, JvExControls, JvgLabel, uECF, FMTBcd, SqlExpr, Provider,
  DBClient;

type
  TfrmParcelas = class(TForm)
    Panel1: TPanel;
    dsFinanceiro: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtValorPrincipal: TJvCalcEdit;
    edtEmissao: TJvDateEdit;
    Label20: TLabel;
    edtTotalParcela: TJvCalcEdit;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    Label49: TLabel;
    edtVencParcela: TJvDateEdit;
    btnAlterar: TBitBtn;
    btnAssistente: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    edtValorParcela: TJvCalcEdit;
    qryNum_nota: TSQLQuery;
    qryNum_notaNUM_NOTA: TIntegerField;
    ckbEntrega: TCheckBox;
    Timer1: TTimer;
    procedure btnOutrosClick(Sender: TObject);
    procedure btnAssistenteClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIndividualClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure edtTotalParcelaChange(Sender: TObject);
    procedure edtTotalParcelaEnter(Sender: TObject);
    procedure edtTotalParcelaExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure dsFinanceiroDataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure ImprimeOrc(Serie:String);
    function Verifica_numeracao(Serie: String; Numero: String):String;
    function Serie_fiscal(Serie:String = ''): Boolean;
    function Doc_fiscal_simples(): Boolean;
    function Troco(): Real;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    ECF: TECF;
    procedure Gera_Pagar_Func(const Codcli_Vendedor : String);
  public
    { Public declarations }
     Parcela_Max_Livre: integer;
     Possui_servico: Boolean;
     Serie1, NumNota1: String; // Estas variáveis são alimentadas na conclusão da NF-CF-CI-OR
  end;

var
  frmParcelas: TfrmParcelas;
  mContaParcela: Integer; //contador para total de parcelas
  Cancela: Boolean; // indica se no frmBandeiras foi cancelado o cupom fiscal

implementation

uses uDmPrincipal, uGlobal, uVd1101, uDmVd1101,
  uVd1101_4, uProcess, uDmImpOrc, udmImpNF, uFn0201, uTroco, uDaruma,
  uForm_Receber, uEST002;

{$R *.dfm}

procedure TfrmParcelas.btnOutrosClick(Sender: TObject);
begin

   //Application.MessageBox('Em manutenção','Informação',mb_ok+MB_ICONINFORMATION);
   //exit;

end;

procedure TfrmParcelas.btnAssistenteClick(Sender: TObject);
var
   mValorParcela: Currency;
   mVencimento  : TDateTime;
   mDiferenca   : Currency;
   Num_Parcela  : Integer;
begin
    if dmvd1101.cdsFormaPagamentoLIVRE_CPAGAMENTO.AsBoolean = True then
    begin
       if edtTotalParcela.Value > Parcela_Max_Livre then
       begin
         Application.MessageBox('Quantidade de parcelas acima do permitido.','Atenção', MB_OK + MB_ICONSTOP);
         exit;
       end;

       if Application.MessageBox('Ultilizar distribuição de parcelas programadas?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
          btnAssistente.Tag := 1  //Ultiliza parcelar programadas no tipo de pagamento
       else
         btnAssistente.Tag  := 0;
    end;

    with dmPrincipal do
    begin
       cdsFinanceiro.Close;
       cdsFinanceiro.CreateDataSet;
       cdsFinanceiro.Open;
       cdsFinanceiro.IndexFieldNames:='Sequencia';
       mcontaParcela := 1;

       mVencimento   := DataSystem1;
       mValorParcela := StrToFloat(FormatFloat('##0.00',(edtValorPrincipal.Value / edtTotalParcela.Value)));
       mdiferenca    := StrToFloat(FormatFloat('##0.00',(edtValorPrincipal.Value - (mValorParcela * edtTotalParcela.Value))));
       Num_Parcela   := 1;

       While edtTotalParcela.Value >= mContaParcela do
       begin
          cdsFinanceiro.Append;
          cdsFinanceiroSequencia.AsInteger   := mContaParcela;
          cdsFinanceiroVencimento.AsDateTime := mVencimento;

          if btnAssistente.Tag = 0 then
          begin
             if (mContaParcela = 1) and ((mDiferenca > 0) or (mDiferenca < 0)) then
                cdsFinanceiroValor.AsCurrency := mValorParcela + mDiferenca
             else
               cdsFinanceiroValor.AsCurrency  := mValorParcela;
          end
          else
          begin
             cdsFinanceiroValor.AsCurrency := edtValorPrincipal.Value * dmvd1101.cdsFormaPagamento.FieldByName('PARCELA' + IntToStr(Num_Parcela) + '_CPAGAMENTO').AsCurrency / 100;
             inc(Num_Parcela);
          end;

          mVencimento   := mVencimento   + 30;
          mContaParcela := mContaParcela + 1;
          cdsFinanceiro.Post;
       end;
    end;

   edtValorParcela.Value   := edtValorPrincipal.Value;
   edtValorParcela.Enabled := True;
   edtVencParcela.Enabled  := True;
   btnAssistente.Enabled   := False;
   btnAssistente.Tag       := 0;

   if dmvd1101.cdsFormaPagamentoLIVRE_CPAGAMENTO.AsBoolean = True then
      btnAlterar.Enabled := True;

   BitBtn2.Enabled := True;
   ckbEntrega.SetFocus;
end;

procedure TfrmParcelas.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_delete then
   begin
      if application.MessageBox('Confirma a exclussão da parcela?','Confirmação',MB_YESNO + MB_ICONQUESTION) = id_yes then
         dmPrincipal.cdsFinanceiro.Delete;
   end;
end;

procedure TfrmParcelas.btnIndividualClick(Sender: TObject);
begin
   With dmPrincipal do
   begin
     cdsFinanceiro.Insert;
     cdsFinanceiroSequencia.AsInteger   := mContaParcela;
     cdsFinanceiroVencimento.AsDateTime := edtVencParcela.Date;
     cdsFinanceiroValor.AsCurrency      := edtValorParcela.Value;
     cdsFinanceiro.Post;
   end;

   mContaParcela := mContaParcela + 1;
end;

procedure TfrmParcelas.FormCreate(Sender: TObject);
begin
   edtEmissao.Date := date;
   ECF := TECF.Create;
   Cancela := False;
end;

procedure TfrmParcelas.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
       Key := #0;
       Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TfrmParcelas.BitBtn4Click(Sender: TObject);
begin

   close;

end;

procedure TfrmParcelas.edtTotalParcelaChange(Sender: TObject);
begin
   if edtTotalParcela.Value > 0 then
      btnAssistente.Enabled := True
   else
      btnAssistente.Enabled := False;
end;

procedure TfrmParcelas.edtTotalParcelaEnter(Sender: TObject);
begin
   edtValorParcela.Enabled := False;
   edtVencParcela.Enabled  := False;
   edtTotalParcela.SelectAll;
end;

procedure TfrmParcelas.edtTotalParcelaExit(Sender: TObject);
begin
   if edtTotalParcela.Value < 1 then
   begin
      Application.MessageBox('Nº de Parcelas invalido','Informação',mb_ok+MB_ICONINFORMATION);
      edtTotalParcela.SetFocus;
      exit;
   end;
end;

procedure TfrmParcelas.BitBtn5Click(Sender: TObject);
begin
   close;
end;

procedure TfrmParcelas.dsFinanceiroDataChange(Sender: TObject;
  Field: TField);
begin
   if dsFinanceiro.Tag = 1 then
   begin
      edtValorParcela.Text := FloatToStrF(DmPrincipal.cdsFinanceiroValor.value,fffixed,18,2);
      edtVencParcela.Date  := DmPrincipal.cdsFinanceiroVencimento.AsDateTime;
   end;
end;

procedure TfrmParcelas.BitBtn2Click(Sender: TObject);
var
   mTotValor : Currency;
   mDiferenca: Currency;
   iConta, NumCupom1: Integer;
   vlr_produto, vlr_servico, vlr_prod_liquid, vlr_serv_liquid: Real;
   cMsgPromocional, NumeroCupom, Nome_tabela, Saida1, Simples1, Num_espaco, NumVenda1, Num_Nota, Sinal: String;
   A_prazo,Venda_simples, Zerado:Boolean;
begin
   if (DmPrincipal.cdsFinanceiro.RecordCount > 0) or ((frmVd1101.Tipo_lancamento1 = 'D') or (frmVd1101.Tipo_lancamento1 = 'E') or (frmVd1101.Tipo_lancamento1 = 'R')) then
   begin
      frmProcess := TfrmProcess.Create(Self);
      frmProcess.ProgressBar1.Max := frmVd1101.cdsVendasItem.RecordCount * 2;
      frmProcess.Show;

      if Application.MessageBox('Confirma finalização?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
      begin
         frmVd1101.dsVendasItem.Enabled := False;

         if (frmVd1101.Tipo_lancamento1 <> 'D') and (frmVd1101.Tipo_lancamento1 <> 'E')  and (frmVd1101.Tipo_lancamento1 <> 'R') then
         begin
            Sinal := '-'; //Sinal da baixa da quantidade em estoque

            // Verifica a distribuição das parcelas
            mTotValor := 0;
            if dmPrincipal.cdsFinanceiro.Active then
            begin
               Zerado := False;
               dmPrincipal.cdsFinanceiro.First;
               While not dmPrincipal.cdsFinanceiro.Eof do
               begin
                  if DmPrincipal.cdsFinanceiroValor.AsFloat = 0 then
                     Zerado := True
                  else
                     mTotValor := mTotValor + dmPrincipal.cdsFinanceiroValor.AsCurrency;
                     
                  dmPrincipal.cdsFinanceiro.Next
               end;
            end;

            if Zerado then
            begin
               Application.MessageBox('O valor da parcela não pode ser zerada.','Informação',mb_ok+MB_ICONSTOP);
               frmProcess.Close;
               Exit;
            end;

            mDiferenca := mTotValor - edtValorPrincipal.Value;

            if (mDiferenca > 0) or (mDiferenca < 0) then
            begin
               Application.MessageBox('Valor das parcelas não confere com valor principal.','Informação',mb_ok+MB_ICONSTOP);
               frmProcess.Close;
               Exit;
            end;
         end
         else
         begin
            // Verifica se é devolução de compra
            if (frmVd1101.PEM = '02') or (frmVd1101.PEM = '05') then
               Sinal := '-'
            else
               Sinal := '+'; //Sinal da baixa da quantidade em estoque;
         end;

         Try
            // Verifica se a lista possui serviço
            Possui_servico := False;
            vlr_produto    := 0;
            vlr_servico    := 0;
            
            frmVd1101.cdsVendasItem.First;
            while not frmVd1101.cdsVendasItem.Eof do
            begin
               if frmVd1101.cdsVendasItemCLASSE_IVENDA.AsString = 'S' then
               begin
                  Possui_servico := True;
                  vlr_servico := vlr_servico + frmVd1101.cdsVendasItemVALORTOTAL.AsFloat;
               end
               else
                  vlr_produto := vlr_produto + frmVd1101.cdsVendasItemVALORTOTAL.AsFloat;

               frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
               frmVd1101.cdsVendasItem.Next;
            end;
            // Desconto no geral
            vlr_prod_liquid := vlr_produto - (vlr_produto * (StrToFloat(frmVd1101.edDesc.Text) / 100));
            vlr_serv_liquid := vlr_servico - (vlr_servico * (StrToFloat(frmVd1101.edDesc.Text) / 100));
            //===================================

            DmPrincipal.cdsFinanceiro.First;

            if (not Doc_fiscal_simples) and (frmVd1101.PEM <> 'A1') then
            begin
               // Verifica se é entrada
               if frmVd1101.Tipo_lancamento1 <> 'E' then
               begin
                  dmvd1101.cdsVendas.Close;
                  dmvd1101.cdsVendas.CommandText := 'SELECT FIRST 50 SKIP 0 V.*, '+
                                                    'VE.NOME_VENDEDOR, '+
                                                    'VE.CODCLI_VENDEDOR, '+
                                                    'P.DESCRICAO_CPAGAMENTO AS FORMA_PAGAMENTO '+
                                                    'FROM P_VENDAS V '+
                                                    'LEFT OUTER JOIN P_CPAGAMENTO P ON (P.CODIGO_CPAGAMENTO=V.CPAGAMENTO_VENDA) '+
                                                    'LEFT OUTER JOIN P_VENDEDOR VE ON (VE.CODIGO_VENDEDOR=V.VENDEDOR_VENDA) '+
                                                    'WHERE V.COD_EMPRESA=:EMPRESA ';
                  dmvd1101.cdsVendas.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
                  dmvd1101.cdsVendas.Open;
                  // Alteração da venda / Orçamento
                  if frmVd1101.Tag = 1 then
                     dmvd1101.cdsVendas.edit
                  else
                  begin
                     // Nova venda / Orçamento
                     if frmVd1101.Tag = 0 then
                        dmvd1101.cdsVendas.Append;
                  end;
               end;

               if (frmVd1101.Tipo_lancamento1 <> 'D') and (frmVd1101.Tipo_lancamento1 <> 'E') and (frmVd1101.Tipo_lancamento1 <> 'R') then
               begin
                  dmvd1101.cdsVendasVENCIMEN01_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                  dmvd1101.cdsVendasVALOR01_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                  DmPrincipal.cdsFinanceiro.Next;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN02_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR02_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN02_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR02_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN03_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR03_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN03_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR03_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN04_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR04_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN04_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR04_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN05_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR05_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN05_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR05_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN06_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR06_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN06_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR06_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN07_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR07_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN07_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR07_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN08_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR08_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN08_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR08_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN09_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR09_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN09_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR09_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN10_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR10_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN10_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR10_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN11_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR11_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN11_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR11_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN12_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR12_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN12_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR12_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN13_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR13_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN13_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR13_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN14_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR14_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN14_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR14_VENDA   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsVendasVENCIMEN15_VENDA.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsVendasVALOR15_VENDA   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsVendasVENCIMEN15_VENDA.AsString := '';
                     dmvd1101.cdsVendasVALOR15_VENDA   .AsString := '';
                  end;
               end;

               if frmVd1101.Tipo_lancamento1 <> 'E' then
               begin
                  if frmVd1101.Propriedade then
                     dmvd1101.cdsVendasPROPRIEDADE_VENDA.AsInteger  := dmvd1101.cdsPropriedadeCODIGO_PRO.AsInteger
                  else
                     dmvd1101.cdsVendasPROPRIEDADE_VENDA.AsInteger := 0;

                  dmVd1101.cdsVendasUSUALTERA_VENDA   .AsString   := Alterou_dados_cliente;
                  dmvd1101.cdsVendasENTREGA_VENDA     .AsBoolean  := ckbEntrega.Checked;
                  dmvd1101.cdsVendasTROCO_VENDA       .AsFloat    := Troco;
                  dmvd1101.cdsVendasTIPO_VENDA        .AsString   := frmVd1101.Tipo_lancamento1;
                  dmvd1101.cdsVendasCOD_EMPRESA       .AsString   := CodigoEmpresa1;
                  dmvd1101.cdsVendasDATA_VENDA        .AsDateTime := DataSystem1;
                  dmvd1101.cdsVendasHORA_VENDA        .AsString   := TimeToStr(Time);
                  dmvd1101.cdsVendasVALORNOTA_VENDA   .AsString   := frmVd1101.Label7.Caption;
                  dmvd1101.cdsVendasDESCONTO_VENDA    .AsString   := frmVd1101.Label11.Caption;
                  dmVd1101.cdsVendasFATURA_VENDA      .AsString   := frmVd1101.Label6.Caption;
                  dmvd1101.cdsVendasVENDEDOR_VENDA    .AsString   := frmVd1101.dbEdVendedor.Text;
                  dmvd1101.cdsVendasCLIENTE_VENDA     .AsString   := frmVd1101.DBEdit1.Text;
                  dmvd1101.cdsVendasNOME_VENDEDOR     .AsString   := frmVd1101.pnNome_vend.Caption;
                  dmvd1101.cdsVendasNOMECLIENTE_VENDA .AsString   := frmVd1101.lbNome_Cli.Caption;
                  dmvd1101.cdsVendasCPAGAMENTO_VENDA  .AsString   := frmVd1101.edTipoPgt.Text;
                  dmvd1101.cdsVendasCFOP_VENDA        .AsString   := frmVd1101.edCFOP.Text;
                  dmvd1101.cdsVendasPARCELAS_VENDA    .AsString   := edtTotalParcela.Text;
                  dmvd1101.cdsVendasCNPJCLIENTE_VENDA .AsString   := dmvd1101.cdsCliente.FieldByName('CNPJ_CLIENTE')      . AsString;
                  dmvd1101.cdsVendasRGCLIENTE_VENDA   .AsString   := dmvd1101.cdsCliente.FieldByName('INSCRICAO_CLIENTE') . AsString;
                  dmvd1101.cdsVendasENDCLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('ENDERECO_CLIENTE')  . AsString;
                  dmvd1101.cdsVendasBAICLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('BAIRRO_CLIENTE')    . AsString;
                  dmvd1101.cdsVendasCIDCLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('CIDADE_CLIENTE')    . AsString;
                  dmvd1101.cdsVendasESTCLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('ESTADO_CLIENTE')    . AsString;
                  dmvd1101.cdsVendasCEPCLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('CEP_CLIENTE')       . AsString;
                  dmvd1101.cdsVendasFONECLIENTE_VENDA .AsString   := dmvd1101.cdsCliente.FieldByName('TELEFONE_CLIENTE')  .AsString;
                  dmvd1101.cdsVendasSERIE_VENDA       .AsString   := frmVd1101.edSerie.Text;
                  dmvd1101.cdsVendasPARCEIRO_VENDA    .AsString   := frmVd1101.edtCodParceiro.Value;
                  dmvd1101.cdsVendasCAIXA_VENDA       .AsString   := NumeroCaixa1;

                  if (frmVd1101.Parametros.OBS) and (frmVd1101.edSerie.Text <> 'NF') then
                  begin
                     dmvd1101.cdsVendasOBS1.AsString := frmVd1101_4.Edit1.Text;
                     dmvd1101.cdsVendasOBS2.AsString := frmVd1101_4.Edit2.Text;
                     dmvd1101.cdsVendasOBS3.AsString := frmVd1101_4.Edit3.Text;
                     dmvd1101.cdsVendasOBS4.AsString := frmVd1101_4.Edit4.Text;
                  end;

                  if frmVd1101.Tipo_lancamento1 = 'V' then
                  begin
                     dmVd1101.cdsVendasTIPO_DOC_VENDA.Value := '1'
                  end
                  else
                  begin
                     if frmVd1101.Tipo_lancamento1 = 'D' then
                     begin
                        // Verifica se Devolução de cliente
                        if frmVd1101.PEM = '011' then
                           dmVd1101.cdsVendasTIPO_DOC_VENDA.Value := '3';

                        // Verifica se Devolução para fornecedor
                        if frmVd1101.PEM = '02' then
                           dmVd1101.cdsVendasTIPO_DOC_VENDA.Value := '4';
                     end
                     else
                     begin
                        // Verifica se é NF de remessa
                        if frmVd1101.Tipo_lancamento1 = 'R' then
                           dmVd1101.cdsVendasTIPO_DOC_VENDA.Value := '5'
                     end;
                  end;

                  dmvd1101.cdsVendas.Post;

                  NumVenda1 := StrZero(dmvd1101.cdsVendasCODIGO_VENDA.AsString,6);

                  frmVd1101.id_nova_venda1 := dmvd1101.cdsVendasCODIGO_VENDA.Value;
                  dmvd1101.cdsVendas.ApplyUpdates(0);

                  dmvd1101.cdsVendasItem.Open;

                  if frmVd1101.Carrega_venda then
                  begin
                     // Verifica se é reimpressão
                     if (frmVd1101.Tag <> 7) or (frmVd1101.Tag <> 8) then
                     begin
                        dmvd1101.cdsVendasItem.First;
                        while not dmvd1101.cdsVendasItem.Eof do
                        begin
                           if frmVd1101.PEM = '4' then
                              Baixa_qtd_estoque(dmvd1101.cdsVendasItemPRODUTO_IVENDA.Value,
                                                dmvd1101.cdsVendasItemQUANTIDADE_IVENDAS.AsFloat,
                                                dmvd1101.cdsVendasItemGRADE_IVENDAS.Value,
                                                '+');

                           dmvd1101.cdsVendasItem.Delete;
                        end;
                     end;
                  end;

                  frmVd1101.cdsVendasItem.First;
                  while not frmVd1101.cdsVendasItem.Eof do
                  begin
                     dmvd1101.cdsVendasItem.Append;

                     dmVd1101.cdsVendasItemSERIE_VENDA        .Value   := frmVd1101.edSerie.Text;
                     dmVd1101.cdsVendasItemID_VENDA_ITEM      .Value   := Busca_Proximo('P_VENDAS_ITENS','ID_VENDA_ITEM');
                     dmvd1101.cdsVendasItemCODIGO_IVENDA      .Value   := dmvd1101.cdsVendasCODIGO_VENDA.Value;
                     dmvd1101.cdsVendasItemPRODUTO_IVENDA     .Value   := frmVd1101.cdsVendasItemPRODUTO_IVENDA.Value;
                     dmvd1101.cdsVendasItemDESCRICAO_IVENDAS  .Value   := frmVd1101.cdsVendasItemDESCRICAO_IVENDAS.Value;
                     dmvd1101.cdsVendasItemVALORBRUTO_IVENDAS .AsFloat := frmVd1101.cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;
                     dmvd1101.cdsVendasItemQUANTIDADE_IVENDAS .Value   := frmVd1101.cdsVendasItemQUANTIDADE_IVENDAS.Value;
                     dmvd1101.cdsVendasItemGRADE_IVENDAS      .Value   := frmVd1101.cdsVendasItemGRADE_IVENDAS.Value;
                     dmvd1101.cdsVendasItemPROMOCAO_IVENDAS   .Value   := frmVd1101.cdsVendasItemPROMOCAO_IVENDAS.Value;
                     dmvd1101.cdsVendasItemFABRICA_IVENDAS    .Value   := frmVd1101.cdsVendasItemFABRICA_IVENDAS.Value;
                     dmvd1101.cdsVendasItemSERIE_IVENDAS      .Value   := frmVd1101.cdsVendasItemSERIE_IVENDAS.Value;
                     dmvd1101.cdsVendasItemDESCONTO_IVENDAS   .Value   := frmVd1101.cdsVendasItemDESCONTO_IVENDAS.Value;
                     dmvd1101.cdsVendasItemICM_IVENDAS        .Value   := frmVd1101.cdsVendasItemICM_IVENDAS.Value;
                     dmvd1101.cdsVendasItemIPI_IVENDAS        .Value   := frmVd1101.cdsVendasItemIPI_IVENDAS.Value;
                     dmvd1101.cdsVendasItemREDUTOR_IVENDAS    .Value   := frmVd1101.cdsVendasItemREDUTOR_IVENDAS.Value;
                     dmvd1101.cdsVendasItemTRIBUTACAO_IVENDAS .Value   := frmVd1101.cdsVendasItemTRIBUTACAO_IVENDAS.Value;
                     dmvd1101.cdsVendasItemFISCAL_IVENDAS     .Value   := frmVd1101.cdsVendasItemFISCAL_IVENDAS.Value;
                     dmvd1101.cdsVendasItemGARANTIA_IVENDAS   .Value   := frmVd1101.cdsVendasItemGARANTIA_IVENDAS.Value;
                     dmvd1101.cdsVendasItemTECNICO_IVENDAS    .Value   := frmVd1101.cdsVendasItemTECNICO_IVENDAS.Value;
                     dmvd1101.cdsVendasItemALTURA_IVENDAS     .Value   := frmVd1101.cdsVendasItemALTURA_IVENDAS.Value;
                     dmvd1101.cdsVendasItemLARGURA_IVENDAS    .Value   := frmVd1101.cdsVendasItemLARGURA_IVENDAS.Value;
                     dmvd1101.cdsVendasItemCOMPRIMENTO_VENDAS .Value   := frmVd1101.cdsVendasItemCOMPRIMENTO_VENDAS.Value;
                     dmvd1101.cdsVendasItemQTDE_VENDAS        .Value   := frmVd1101.cdsVendasItemQTDE_VENDAS.Value;
                     dmvd1101.cdsVendasItemCOMPLEMENTO        .Value   := frmVd1101.cdsVendasItemCOMPLEMENTO.Value;
                     dmvd1101.cdsVendasItemCOD_EMPRESA        .Value   := frmVd1101.cdsVendasItemCOD_EMPRESA.Value;
                     dmvd1101.cdsVendasItemCLASSE_IVENDA      .Value   := frmVd1101.cdsVendasItemCLASSE_IVENDA.Value;
                     dmvd1101.cdsVendasItemCFOP               .Value   := frmVd1101.cdsVendasItemCFOP.Value;

                     dmvd1101.cdsVendasItem.Post;


                     if frmVd1101.edSerie.Text <> 'OR' then
                        Baixa_qtd_estoque(dmvd1101.cdsVendasItemPRODUTO_IVENDA.AsInteger,
                                          dmvd1101.cdsVendasItemQUANTIDADE_IVENDAS.AsFloat,
                                          dmvd1101.cdsVendasItemGRADE_IVENDAS.AsString,
                                          Sinal);


                     frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
                     frmVd1101.cdsVendasItem.Next;
                  end;
                  dmvd1101.cdsVendasItem.ApplyUpdates(0);
               end
               else
               begin
                  // Grava informação na tabela de Entradas
                  dmVd1101.cdsCompras.Open;
                  dmVd1101.cdsCompras.Append;

                  dmVd1101.cdsComprasFORNECEDOR_COMPRA   .AsString := frmVd1101.DBEdit1.Text;
                  dmVd1101.cdsComprasSERIE_COMPRA        .AsString := frmVd1101.edSerie.Text;
                  dmVd1101.cdsComprasCFOP_COMPRA         .AsString := frmVd1101.edCFOP.Text;
                  dmVd1101.cdsComprasVALORPRODUTO_COMPRA .AsString := frmVd1101.Label7.Caption;
                  dmVd1101.cdsComprasDESCONTO_COMPRA     .AsString := frmVd1101.Label11.Caption;

                  dmVd1101.cdsCompras.Post;
                  dmVd1101.cdsCompras.ApplyUpdates(0);

                  frmVd1101.id_nova_venda1 := dmVd1101.cdsComprasCODIGO_COMPRA.AsInteger;


                  frmVd1101.cdsVendasItem.First;
                  while not frmVd1101.cdsVendasItem.Eof do
                  begin
                     dmVd1101.cdsComprasItens.Open;
                     dmVd1101.cdsComprasItens.Append;

                     dmVd1101.cdsComprasItensCOD_EMPRESA       .AsString := CodigoEmpresa1;
                     dmVd1101.cdsComprasItensCODIGO_COMPRA     .Value    := dmVd1101.cdsComprasCODIGO_COMPRA.Value;
                     dmVd1101.cdsComprasItensPRODUTO_COMPRA    .Value    := frmVd1101.cdsVendasItemPRODUTO_IVENDA.Value;
                     dmVd1101.cdsComprasItensPRECOUNIT_COMPRA  .AsFloat  := frmVd1101.cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;
                     dmVd1101.cdsComprasItensQUANTIDADE_COMPRA .Value    := frmVd1101.cdsVendasItemQUANTIDADE_IVENDAS.Value;
                     dmVd1101.cdsComprasItensICM_COMPRA        .Value    := frmVd1101.cdsVendasItemICM_IVENDAS.Value;
                     dmVd1101.cdsComprasItensIPI_COMPRA        .Value    := frmVd1101.cdsVendasItemIPI_IVENDAS.Value;
                     dmVd1101.cdsComprasItensSIT_TRIB_COMPRA   .Value    := frmVd1101.cdsVendasItemTRIBUTACAO_IVENDAS.Value;

                     dmVd1101.cdsComprasItens.Post;

                     Baixa_qtd_estoque(frmVd1101.cdsVendasItemPRODUTO_IVENDA.AsInteger,
                                       frmVd1101.cdsVendasItemQUANTIDADE_IVENDAS.AsFloat,
                                       frmVd1101.cdsVendasItemGRADE_IVENDAS.AsString,
                                       Sinal);

                     frmVd1101.cdsVendasItem.Next;
                  end;
                  dmVd1101.cdsComprasItens.ApplyUpdates(0);

               end;
            end // Fim if verificador do CF/NF simples
            else
            begin
               // Verifica se é venda balcão
               if frmVd1101.PEM = 'A1' then
               begin
                  dmvd1101.cdsBalcao.Open;
                  dmvd1101.cdsBalcao.Append;

                  dmvd1101.cdsBalcaoVENCIMEN01_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                  dmvd1101.cdsBalcaoVALOR01_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                  DmPrincipal.cdsFinanceiro.Next;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN02_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR02_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN02_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR02_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN03_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR03_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN03_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR03_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN04_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR04_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN04_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR04_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN05_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR05_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN05_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR05_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN06_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR06_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN06_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR06_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN07_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR07_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN07_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR07_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN08_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR08_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN08_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR08_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN09_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR09_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN09_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR09_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN10_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR10_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN10_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR10_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN11_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR11_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN11_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR11_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN12_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR12_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN12_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR12_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN13_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR13_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN13_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR13_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN14_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR14_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN14_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR14_BALCAO   .AsString := '';
                  end;

                  if not DmPrincipal.cdsFinanceiro.Eof then
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN15_BALCAO.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
                     dmvd1101.cdsBalcaoVALOR15_BALCAO   .AsFloat    := DmPrincipal.cdsFinanceiroValor.Value;
                     DmPrincipal.cdsFinanceiro.Next;
                  end
                  else
                  begin
                     dmvd1101.cdsBalcaoVENCIMEN15_BALCAO.AsString := '';
                     dmvd1101.cdsBalcaoVALOR15_BALCAO   .AsString := '';
                  end;

                  dmVd1101.cdsBalcaoCODIGO_BALCAO.Value := Busca_Proximo('P_BALCAO','CODIGO_BALCAO');

                  if frmVd1101.Propriedade then
                     dmvd1101.cdsBalcaoPROPRIEDADE_BALCAO.AsInteger := dmvd1101.cdsPropriedadeCODIGO_PRO.AsInteger
                  else
                     dmvd1101.cdsBalcaoPROPRIEDADE_BALCAO.AsInteger := 0;

                     dmVd1101.cdsBalcaoUSUALTERA_BALCAO   .AsString   := Alterou_dados_cliente;
                     dmvd1101.cdsBalcaoTIPO_BALCAO        .AsString   := frmVd1101.Tipo_lancamento1;
                     dmvd1101.cdsBalcaoCOD_EMPRESA        .AsString   := CodigoEmpresa1;
                     dmvd1101.cdsBalcaoDATA_BALCAO        .AsDateTime := DataSystem1;
                     dmvd1101.cdsBalcaoHORA_BALCAO        .AsString   := TimeToStr(Time);
                     dmvd1101.cdsBalcaoVALORNOTA_BALCAO   .AsString   := frmVd1101.Label7.Caption;
                     dmvd1101.cdsBalcaoDESCONTO_BALCAO    .AsString   := frmVd1101.Label11.Caption;
                     dmVd1101.cdsBalcaoFATURA_BALCAO      .AsString   := frmVd1101.Label6.Caption;
                     dmvd1101.cdsBalcaoVENDEDOR_BALCAO    .AsString   := frmVd1101.dbEdVendedor.Text;
                     dmvd1101.cdsBalcaoCLIENTE_BALCAO     .AsString   := frmVd1101.DBEdit1.Text;
                     dmvd1101.cdsBalcaoNOMECLIENTE_BALCAO .AsString   := frmVd1101.lbNome_Cli.Caption;
                     dmvd1101.cdsBalcaoCPAGAMENTO_BALCAO  .AsString   := frmVd1101.edTipoPgt.Text;
                     dmvd1101.cdsBalcaoCFOP_BALCAO        .AsString   := frmVd1101.edCFOP.Text;
                     dmvd1101.cdsBalcaoPARCELAS_BALCAO    .AsString   := edtTotalParcela.Text;
                     dmvd1101.cdsBalcaoCNPJCLIENTE_BALCAO .AsString   := dmvd1101.cdsCliente.FieldByName('CNPJ_CLIENTE')      . AsString;
                     dmvd1101.cdsBalcaoRGCLIENTE_BALCAO   .AsString   := dmvd1101.cdsCliente.FieldByName('INSCRICAO_CLIENTE') . AsString;
                     dmvd1101.cdsBalcaoENDCLIENTE_BALCAO  .AsString   := dmvd1101.cdsCliente.FieldByName('ENDERECO_CLIENTE')  . AsString;
                     dmvd1101.cdsBalcaoBAICLIENTE_BALCAO  .AsString   := dmvd1101.cdsCliente.FieldByName('BAIRRO_CLIENTE')    . AsString;
                     dmvd1101.cdsBalcaoCIDCLIENTE_BALCAO  .AsString   := dmvd1101.cdsCliente.FieldByName('CIDADE_CLIENTE')    . AsString;
                     dmvd1101.cdsBalcaoESTCLIENTE_BALCAO  .AsString   := dmvd1101.cdsCliente.FieldByName('ESTADO_CLIENTE')    . AsString;
                     dmvd1101.cdsBalcaoCEPCLIENTE_BALCAO  .AsString   := dmvd1101.cdsCliente.FieldByName('CEP_CLIENTE')       . AsString;
                     dmvd1101.cdsBalcaoFONECLIENTE_BALCAO .AsString   := dmvd1101.cdsCliente.FieldByName('TELEFONE_CLIENTE')  .AsString;
                     dmvd1101.cdsBalcaoSERIE_BALCAO       .AsString   := frmVd1101.edSerie.Text;
                     dmvd1101.cdsBalcaoCAIXA_BALCAO       .AsString   := NumeroCaixa1;
                     dmvd1101.cdsBalcao.Post;

                     NumVenda1 := StrZero(dmvd1101.cdsBalcaoCODIGO_BALCAO.AsString,6);

                     dmvd1101.cdsBalcao.ApplyUpdates(0);
                     frmVd1101.id_nova_venda1 := dmvd1101.cdsBalcaoCODIGO_BALCAO.Value;

                     dmvd1101.cdsBalcaoItens.Open;

                     frmVd1101.cdsVendasItem.First;
                     while not frmVd1101.cdsVendasItem.Eof do
                     begin
                        dmvd1101.cdsBalcaoItens.Append;

                        dmVd1101.cdsBalcaoItensID_BALCAO_ITENS    .Value   := Busca_Proximo('P_BALCAO_ITENS','ID_BALCAO_ITENS');
                        dmvd1101.cdsBalcaoItensCODIGO_IBALCAO     .Value   := dmvd1101.cdsBalcaoCODIGO_BALCAO.Value;
                        dmvd1101.cdsBalcaoItensPRODUTO_IBALCAO    .Value   := frmVd1101.cdsVendasItemPRODUTO_IVENDA.Value;
                        dmvd1101.cdsBalcaoItensDESCRICAO_IBALCAO  .Value   := frmVd1101.cdsVendasItemDESCRICAO_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensVALORBRUTO_IBALCAO .AsFloat := frmVd1101.cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;
                        dmvd1101.cdsBalcaoItensQUANTIDADE_IBALCAO .Value   := frmVd1101.cdsVendasItemQUANTIDADE_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensGRADE_IBALCAO      .Value   := frmVd1101.cdsVendasItemGRADE_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensPROMOCAO_IBALCAO   .Value   := frmVd1101.cdsVendasItemPROMOCAO_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensFABRICA_IBALCAO    .Value   := frmVd1101.cdsVendasItemFABRICA_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensSERIE_IBALCAO      .Value   := frmVd1101.cdsVendasItemSERIE_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensDESCONTO_IBALCAO   .Value   := frmVd1101.cdsVendasItemDESCONTO_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensICM_IBALCAO        .Value   := frmVd1101.cdsVendasItemICM_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensIPI_IBALCAO        .Value   := frmVd1101.cdsVendasItemIPI_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensREDUTOR_IBALCAO    .Value   := frmVd1101.cdsVendasItemREDUTOR_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensTRIBUTACAO_IBALCAO .Value   := frmVd1101.cdsVendasItemTRIBUTACAO_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensFISCAL_IBALCAO     .Value   := frmVd1101.cdsVendasItemFISCAL_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensGARANTIA_IBALCAO   .Value   := frmVd1101.cdsVendasItemGARANTIA_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensTECNICO_IBALCAO    .Value   := frmVd1101.cdsVendasItemTECNICO_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensALTURA_IBALCAO     .Value   := frmVd1101.cdsVendasItemALTURA_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensLARGURA_IBALCAO    .Value   := frmVd1101.cdsVendasItemLARGURA_IVENDAS.Value;
                        dmvd1101.cdsBalcaoItensCOMPRIMENTO_VENDAS .Value   := frmVd1101.cdsVendasItemCOMPRIMENTO_VENDAS.Value;
                        dmvd1101.cdsBalcaoItensQTDE_VENDAS        .Value   := frmVd1101.cdsVendasItemQTDE_VENDAS.Value;
                        dmvd1101.cdsBalcaoItensCOMPLEMENTO        .Value   := frmVd1101.cdsVendasItemCOMPLEMENTO.Value;
                        dmvd1101.cdsBalcaoItensCOD_EMPRESA        .Value   := frmVd1101.cdsVendasItemCOD_EMPRESA.Value;
                        dmvd1101.cdsBalcaoItensCLASSE_IBALCAO     .Value   := frmVd1101.cdsVendasItemCLASSE_IVENDA.Value;
                        dmvd1101.cdsBalcaoItensCFOP               .Value   := frmVd1101.cdsVendasItemCFOP.Value;

                        dmvd1101.cdsBalcaoItens.Post;

                        Baixa_qtd_estoque(dmvd1101.cdsBalcaoItensPRODUTO_IBALCAO.AsInteger,
                                          dmvd1101.cdsBalcaoItensQUANTIDADE_IBALCAO.AsFloat,
                                          dmvd1101.cdsBalcaoItensGRADE_IBALCAO.AsString,
                                          '-');

                        frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
                        frmVd1101.cdsVendasItem.Next;
                     end;
                     dmvd1101.cdsBalcaoItens.ApplyUpdates(0);
               end
               else
               begin
                  // Gravando dados no tabela de lançamentos simples
                  dmvd1101.cdsDocSimples.Open;
                  dmvd1101.cdsDocSimples.Append;

                  if frmVd1101.Propriedade then
                     dmvd1101.cdsDocSimplesPROPRIEDADE_VENDA.AsInteger := dmvd1101.cdsPropriedadeCODIGO_PRO.AsInteger
                  else
                     dmvd1101.cdsDocSimplesPROPRIEDADE_VENDA.AsInteger := 0;

                  dmvd1101.cdsDocSimplesUSUALTERA_VENDA   .AsString   := Alterou_dados_cliente;
                  dmvd1101.cdsDocSimplesTIPO_VENDA        .AsString   := frmVd1101.Tipo_lancamento1;
                  dmvd1101.cdsDocSimplesCOD_EMPRESA       .AsString   := CodigoEmpresa1;
                  dmvd1101.cdsDocSimplesDATA_VENDA        .AsDateTime := DataSystem1;
                  dmvd1101.cdsDocSimplesHORA_VENDA        .AsString   := TimeToStr(Time);
                  dmvd1101.cdsDocSimplesVALORNOTA_VENDA   .AsString   := frmVd1101.Label7.Caption;
                  dmvd1101.cdsDocSimplesDESCONTO_VENDA    .AsString   := frmVd1101.Label11.Caption;
                  dmvd1101.cdsDocSimplesVENDEDOR_VENDA    .AsString   := frmVd1101.dbEdVendedor.Text;
                  dmvd1101.cdsDocSimplesCLIENTE_VENDA     .AsString   := frmVd1101.DBEdit1.Text;
                  dmvd1101.cdsDocSimplesNOMECLIENTE_VENDA .AsString   := frmVd1101.lbNome_Cli.Caption;
                  dmvd1101.cdsDocSimplesCPAGAMENTO_VENDA  .AsString   := frmVd1101.edTipoPgt.Text;
                  dmvd1101.cdsDocSimplesCFOP_VENDA        .AsString   := frmVd1101.edCFOP.Text;
                  dmvd1101.cdsDocSimplesPARCELAS_VENDA    .AsString   := edtTotalParcela.Text;
                  dmvd1101.cdsDocSimplesCNPJCLIENTE_VENDA .AsString   := dmvd1101.cdsCliente.FieldByName('CNPJ_CLIENTE')      . AsString;
                  dmvd1101.cdsDocSimplesRGCLIENTE_VENDA   .AsString   := dmvd1101.cdsCliente.FieldByName('INSCRICAO_CLIENTE') . AsString;
                  dmvd1101.cdsDocSimplesENDCLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('ENDERECO_CLIENTE')  . AsString;
                  dmvd1101.cdsDocSimplesBAICLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('BAIRRO_CLIENTE')    . AsString;
                  dmvd1101.cdsDocSimplesCIDCLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('CIDADE_CLIENTE')    . AsString;
                  dmvd1101.cdsDocSimplesESTCLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('ESTADO_CLIENTE')    . AsString;
                  dmvd1101.cdsDocSimplesCEPCLIENTE_VENDA  .AsString   := dmvd1101.cdsCliente.FieldByName('CEP_CLIENTE')       . AsString;
                  dmvd1101.cdsDocSimplesFONECLIENTE_VENDA .AsString   := dmvd1101.cdsCliente.FieldByName('TELEFONE_CLIENTE')  .AsString;
                  dmvd1101.cdsDocSimplesSERIE_VENDA       .AsString   := frmVd1101.edSerie.Text;
                  dmvd1101.cdsDocSimplesCAIXA_VENDA       .AsString   := NumeroCaixa1;
                  dmvd1101.cdsDocSimples.Post;

                  NumVenda1 := StrZero(dmvd1101.cdsDocSimplesCODIGO_VENDA.AsString,6);

                  dmvd1101.cdsDocSimples.ApplyUpdates(0);
                  frmVd1101.id_nova_venda1 := dmvd1101.cdsDocSimplesCODIGO_VENDA.Value;

                  dmvd1101.cdsDocSimplesItens.Open;

                  frmVd1101.cdsVendasItem.First;
                  while not frmVd1101.cdsVendasItem.Eof do
                  begin
                     dmvd1101.cdsDocSimplesItens.Append;

                     dmvd1101.cdsDocSimplesItensCODIGO_IVENDA      .Value   := dmvd1101.cdsDocSimplesCODIGO_VENDA.Value;
                     dmvd1101.cdsDocSimplesItensPRODUTO_IVENDA     .Value   := frmVd1101.cdsVendasItemPRODUTO_IVENDA.Value;
                     dmvd1101.cdsDocSimplesItensDESCRICAO_IVENDAS  .Value   := frmVd1101.cdsVendasItemDESCRICAO_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensVALORBRUTO_IVENDAS .AsFloat := frmVd1101.cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;
                     dmvd1101.cdsDocSimplesItensQUANTIDADE_IVENDAS .Value   := frmVd1101.cdsVendasItemQUANTIDADE_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensGRADE_IVENDAS      .Value   := frmVd1101.cdsVendasItemGRADE_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensPROMOCAO_IVENDAS   .Value   := frmVd1101.cdsVendasItemPROMOCAO_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensFABRICA_IVENDAS    .Value   := frmVd1101.cdsVendasItemFABRICA_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensSERIE_IVENDAS      .Value   := frmVd1101.cdsVendasItemSERIE_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensDESCONTO_IVENDAS   .Value   := frmVd1101.cdsVendasItemDESCONTO_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensICM_IVENDAS        .Value   := frmVd1101.cdsVendasItemICM_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensIPI_IVENDAS        .Value   := frmVd1101.cdsVendasItemIPI_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensREDUTOR_IVENDAS    .Value   := frmVd1101.cdsVendasItemREDUTOR_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensTRIBUTACAO_IVENDAS .Value   := frmVd1101.cdsVendasItemTRIBUTACAO_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensFISCAL_IVENDAS     .Value   := frmVd1101.cdsVendasItemFISCAL_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensGARANTIA_IVENDAS   .Value   := frmVd1101.cdsVendasItemGARANTIA_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensTECNICO_IVENDAS    .Value   := frmVd1101.cdsVendasItemTECNICO_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensALTURA_IVENDAS     .Value   := frmVd1101.cdsVendasItemALTURA_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensLARGURA_IVENDAS    .Value   := frmVd1101.cdsVendasItemLARGURA_IVENDAS.Value;
                     dmvd1101.cdsDocSimplesItensCOMPRIMENTO_VENDAS .Value   := frmVd1101.cdsVendasItemCOMPRIMENTO_VENDAS.Value;
                     dmvd1101.cdsDocSimplesItensQTDE_VENDAS        .Value   := frmVd1101.cdsVendasItemQTDE_VENDAS.Value;
                     dmvd1101.cdsDocSimplesItensCOMPLEMENTO        .Value   := frmVd1101.cdsVendasItemCOMPLEMENTO.Value;
                     dmvd1101.cdsDocSimplesItensCOD_EMPRESA        .Value   := frmVd1101.cdsVendasItemCOD_EMPRESA.Value;
                     dmvd1101.cdsDocSimplesItensID_VENDA_ITEM      .Value   := frmVd1101.cdsVendasItemID_VENDA_ITEM.Value;
                     dmvd1101.cdsDocSimplesItensCLASSE_IVENDA      .Value   := frmVd1101.cdsVendasItemCLASSE_IVENDA.Value;
                     dmvd1101.cdsDocSimplesItensCFOP               .Value   := frmVd1101.cdsVendasItemCFOP.Value;

                     dmvd1101.cdsDocSimplesItens.Post;

                     Baixa_qtd_estoque(dmvd1101.cdsDocSimplesItensPRODUTO_IVENDA.AsInteger,
                                       dmvd1101.cdsDocSimplesItensQUANTIDADE_IVENDAS.AsFloat,
                                       dmvd1101.cdsDocSimplesItensGRADE_IVENDAS.AsString,
                                       '-');

                     frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
                     frmVd1101.cdsVendasItem.Next;
                  end;
                  dmvd1101.cdsDocSimplesItens.ApplyUpdates(0);
               end;
            end;

            if Nome_cliente <> '- VENDA AO CONSUMIDOR -' then
            begin
               // Atualiza dados do cliente
               dmVd1101.cdsCliente.Edit;
               dmVd1101.cdsClienteULTIMA_COMPRA_CLIENTE.AsDateTime := DataSystem1;
               dmVd1101.cdsClienteVALORCOMPRA_CLIENTE.AsFloat      := edtValorPrincipal.Value;

               if dmVd1101.cdsFormaPagamentoCAIXA_CPAGAMENTO.AsInteger > 1 then
               begin
                  if (frmVd1101.Tipo_lancamento1 <> 'D') and (frmVd1101.Tipo_lancamento1 <> 'E') and (frmVd1101.Tipo_lancamento1 <> 'R') then
                     dmVd1101.cdsClienteUTILIZADO_CLIENTE.AsFloat := dmVd1101.cdsClienteUTILIZADO_CLIENTE.AsFloat + edtValorPrincipal.Value
                  else
                  begin
                     if frmVd1101.Tipo_lancamento1 = 'D' then
                        dmVd1101.cdsClienteUTILIZADO_CLIENTE.AsFloat := dmVd1101.cdsClienteUTILIZADO_CLIENTE.AsFloat - edtValorPrincipal.Value
                  end;
               end;

               dmVd1101.cdsCliente.Post;
               dmVd1101.cdsCliente.ApplyUpdates(0);
            end;

            // Verifica se houve alteração dos dados do cliente - VENDA AO CONSUMIDOR -
            if Alterou_dados_cliente = 'T' then
            begin
               dmVd1101.cdsAltera_cliente.Open;
               dmVd1101.cdsAltera_cliente.Append;

               dmVd1101.cdsAltera_clienteCODIGO_ALT      .AsInteger := Busca_Proximo('E_ALTERA','CODIGO_ALT');
               dmVd1101.cdsAltera_clienteCOD_VENDA_ALT   .AsInteger := frmVd1101.id_nova_venda1;
               dmVd1101.cdsAltera_clienteCOD_CLIENTE_ALT .AsInteger := dmVd1101.cdsClienteCODIGO_CLIENTE.AsInteger;
               dmVd1101.cdsAltera_clienteNOME_ALT        .AsString  := dmVd1101.cdsClienteNOME_CLIENTE.AsString;
               dmVd1101.cdsAltera_clienteCNPJ_ALT        .AsString  := dmVd1101.cdsClienteCNPJ_CLIENTE.AsString;
               dmVd1101.cdsAltera_clienteINSC_ALT        .AsString  := dmVd1101.cdsClienteINSCRICAO_CLIENTE.AsString;
               dmVd1101.cdsAltera_clienteENDERECO_ALT    .AsString  := dmVd1101.cdsClienteENDERECO_CLIENTE.AsString;
               dmVd1101.cdsAltera_clienteCIDADE_ALT      .AsString  := dmVd1101.cdsClienteCIDADE_CLIENTE.AsString;
               dmVd1101.cdsAltera_clienteCEP             .AsString  := dmVd1101.cdsClienteCEP_CLIENTE.AsString;
               dmVd1101.cdsAltera_clienteESTADO_ALT      .AsString  := dmVd1101.cdsClienteESTADO_CLIENTE.AsString;
               dmVd1101.cdsAltera_clienteFONE            .AsString  := dmVd1101.cdsClienteTELEFONE_CLIENTE.AsString;

               dmVd1101.cdsAltera_cliente.Post;
               dmVd1101.cdsAltera_cliente.ApplyUpdates(0);
               dmVd1101.cdsAltera_cliente.Close;
            end;

            if frmVd1101.PEM <> 'A1' then
            begin
               frmProcess.JvgLabel1.Caption := 'Aguarde o final da impressão.';
               frmProcess.Update;
               frmProcess.Refresh;

               dmImpNF  := TdmImpNF.Create(Self);

               if Serie_fiscal('NF') then
               begin
                  if (dmVd1101.cdsFormaPagamentoCAIXA_CPAGAMENTO.AsInteger = 2) and (Paramentros.Usa_TEF) then
                  begin
                     frmReceber := TfrmReceber.Create( Application );
                     frmReceber.edtValor.Value := edtValorPrincipal.Value;
                     frmReceber.ShowModal;
                     frmReceber.Close;
                     FreeAndNil(frmReceber);
                  end;

                  dmImpNF.Tag := 1;
                  dmImpNF.monta_nf(frmVd1101.id_nova_venda1,frmVd1101.PEM, vlr_produto, (vlr_produto - vlr_prod_liquid))
               end
               else
               begin
                  if Serie_fiscal('CF') then
                  begin
                     // Verifiqua se venda a prazo
                     if dmVd1101.cdsFormaPagamentoCAIXA_CPAGAMENTO.AsInteger > 1 then
                        A_prazo := True
                     else
                        A_prazo := False;

                     // Verifica se cupom simples
                     if frmVd1101.PEM = 'B' then
                        Venda_simples := True
                     else
                        Venda_simples := False;

                     NumeroCupom := ECF.Fecha_cupom( frmVd1101.Label17.Caption,
                                                     IntToStr(frmVd1101.id_nova_venda1),
                                                     frmVd1101.dbEdVendedor.Text,
                                                     frmVd1101.lbNome_Vend.Caption,
                                                     vlr_prod_liquid,
                                                     vlr_produto - vlr_prod_liquid,
                                                     A_prazo,
                                                     Venda_simples );

                     Num_Nota := Verifica_numeracao(frmVd1101.edSerie.Text,NumeroCupom);
                  end
                  else
                     Num_Nota := dmvd1101.cdsVendasCODIGO_VENDA.AsString;

                  // NF ou CF NÃO Simples
                  if not Doc_fiscal_simples then
                  begin
                     dmvd1101.cdsVendas.Edit;

                     dmvd1101.cdsVendasNOTAFISCAL_VENDA .AsString := Num_Nota;
                     dmvd1101.cdsVendasCAIXA_VENDA      .AsString := NumeroCaixa1;

                     dmvd1101.cdsVendas.Post;
                     dmvd1101.cdsVendas.ApplyUpdates(0);
                  end
                  else
                  begin
                     // NF ou CF SIMPLES
                     dmvd1101.cdsDocSimples.Edit;

                     dmvd1101.cdsDocSimplesNOTAFISCAL_VENDA .AsString := Num_Nota;
                     dmvd1101.cdsDocSimplesCAIXA_VENDA      .AsString := NumeroCaixa1;

                     dmvd1101.cdsDocSimples.Post;
                     dmvd1101.cdsDocSimples.ApplyUpdates(0);
                  end;
               end;

               {Comentários referente a condição a baixo}
               // Função que verifica se a série informáda na tela de vendas é fiscal (NF - CF - E1...)
               // Verifica se nos paramtros está habilitado a impressão de NF serviço
               // Variável que recebe valor verdadeiro caso exista algum serviço na lista de venda
               if Serie_fiscal and Parametro.NF_servico and Possui_servico then
               begin
                  if Application.MessageBox('Deseja imprimir a NF de prestação de serviços?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
                     dmImpNF.monta_nf_serv(frmVd1101.id_nova_venda1,frmVd1101.PEM, vlr_servico, (vlr_servico - vlr_serv_liquid));
               end;


               // Gravando informações no financeiro
               if dmVd1101.cdsFormaPagamentoGERA_RECEBER_CPAGAMENTO.AsBoolean then
               begin
                  // Verifica se é devolução
                  if frmVd1101.Tipo_lancamento1 = 'D' then
                  begin
                     if Application.MessageBox('Alterar contas a receber?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
                     begin
                        frmFn0201 := TfrmFn0201.Create(Self);
                        frmFn0201.ShowModal;
                        frmFn0201.Release;
                        frmFn0201 := nil;
                     end;
                  end
                  else
                  begin
                     if frmVd1101.edSerie.Text <> 'OR' then
                     begin
                        frmProcess.JvgLabel1.Caption := 'Gravando dados no financeiro.';
                        frmProcess.Update;
                        frmProcess.Refresh;
                     end;

                     DmPrincipal.cdsFinanceiro.First;
                     while not DmPrincipal.cdsFinanceiro.Eof do
                     begin
                        dmVd1101.cdsReceber.Open;
                        dmVd1101.cdsReceber.Append;

                        dmVd1101.cdsReceberDUPLICATA_RECEBER.AsString := frmVd1101.edSerie.Text +
                                                                         StrZero(dmVd1101.cdsVendasNOTAFISCAL_VENDA.AsString,6) + '-' +
                                                                         StrZero(DmPrincipal.cdsFinanceiroSequencia.AsString,2);

                        dmVd1101.cdsReceberTIPO_DOCUMENTO_RECEBER .Value   := dmVd1101.cdsFormaPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO.Value;
                        dmVd1101.cdsReceberCODIGO_CLIENTE_RECEBER .Value   := dmVd1101.cdsVendasCLIENTE_VENDA.Value;
                        dmVd1101.cdsReceberEMISSAO_RECEBER        .Value   := DataSystem1;
                        dmVd1101.cdsReceberVENCIMENTO_RECEBER     .Value   := DmPrincipal.cdsFinanceiroVencimento.Value;
                        dmVd1101.cdsReceberVALOR_RECEBER          .AsFloat := DmPrincipal.cdsFinanceiroValor.Value;

                        if dmVd1101.cdsFormaPagamentoCOMISSAO_CPAGAMENTO.AsBoolean then
                           dmVd1101.cdsReceberCOMISSAO_RECEBER.AsFloat   := edtValorPrincipal.Value * dmVd1101.cdsFormaPagamentoPERC_COMISSAO_CPAGAMENTO.AsFloat / 100;

                        dmVd1101.cdsReceberCODIGO_PORTADOR_RECEBER .Value    := dmVd1101.cdsFormaPagamentoCODIGO_PORTADOR_CPAGAMENTO.Value;
                        dmVd1101.cdsReceberCODIGO_VENDEDOR_RECEBER .Value    := dmVd1101.cdsVendasVENDEDOR_VENDA.Value;
                        dmVd1101.cdsReceberCODIGO_PARCEIRO_RECEBER .Value    := dmVd1101.cdsVendasPARCEIRO_VENDA.Value;
                        dmVd1101.cdsReceberCOD_EMPRESA             .AsString := CodigoEmpresa1;

                        dmVd1101.cdsVendedor.Close;
                        dmVd1101.cdsVendedor.Params.ParamByName('ID_EMPRESA').AsString    := CodigoEmpresa1;
                        dmVd1101.cdsVendedor.Params.ParamByName('COD_VENDEDOR').AsInteger := dmVd1101.cdsVendasVENDEDOR_VENDA.AsInteger;
                        dmVd1101.cdsVendedor.Open;

                        Gera_Pagar_Func(dmVd1101.cdsVendedorCODCLI_VENDEDOR.AsString); // procedure / particularidade radio morada do sol

                        dmVd1101.cdsReceber.Post;
                        DmPrincipal.cdsFinanceiro.Next;
                     end;
                     dmVd1101.cdsReceber.ApplyUpdates(0);
                  end;
               end;

               // Libera form de processo
               frmProcess.Close;
               frmProcess.Release;
               frmProcess := nil;

               Daruma_TEF_SetFocus('Distribuição das Parcelas');

               if not Serie_fiscal then
               begin
                  dmImpOrc := TdmImpOrc.Create(Self);

                  Timer1.Enabled := True; // Ativa a função para setar corretamente os focus
                  
                  // Orçamento ou Venda CI
                  if frmVd1101.edSerie.Text = 'OR' then
                  begin
                     ImprimeOrc('OR');
                     Application.MessageBox(pChar('Operação concluída com sucesso.' + #13 + #13 + #13 + 'Orçamento número ' + NumVenda1 + '.'),'Finalização', MB_OK + MB_ICONINFORMATION);
                  end
                  else
                  begin
                     ImprimeOrc('CI');
                     Application.MessageBox(pChar('Operação concluída com sucesso.' + #13 + #13 + #13 + 'Venda número ' + NumVenda1 + '.' + #13 + #13 + 'Documento gerado ' + Serie1 + ' número ' + NumNota1),'Finalização', MB_OK + MB_ICONINFORMATION);
                  end;
               end
               else
               begin
                  // Doc Fiscal
                  if Doc_fiscal_simples then
                     Simples1 := ' simples';
               
                  Application.MessageBox(pChar('Operação concluída com sucesso.' + #13 + #13 + #13 + 'Venda' + Simples1 + ' número ' + NumVenda1 + '.' + #13 + #13 + 'Documento gerado ' + Serie1 + ' número ' + NumNota1),'Finalização', MB_OK + MB_ICONINFORMATION);
               end;
            end;

            // Libera tela de observações
            if (frmVd1101.Parametros.OBS) and (frmVd1101.edSerie.Text <> 'NF') then
            begin
               frmVd1101_4.Release;
               frmVd1101_4 := nil;
            end;

            close;
            frmVd1101.Tag := -1;
            frmVd1101.Close;
         finally

         end;
      end
   else
   begin
      // Libera form de processo
      frmProcess.Close;
      frmProcess.Release;
      frmProcess := nil;
   end;
   end;
end;

procedure TfrmParcelas.btnAlterarClick(Sender: TObject);
begin
   with dmPrincipal do
    begin
       cdsFinanceiro.Edit;
       cdsFinanceiroVencimento.Value := edtVencParcela.Date;
       cdsFinanceiroValor.Value      := edtValorParcela.Value;
       cdsFinanceiro.Post;
    end;

   ShowMessage('Alteração conluída!');
end;

procedure TfrmParcelas.DBGrid2Enter(Sender: TObject);
begin
   dsFinanceiro.Tag := 1;
end;

procedure TfrmParcelas.DBGrid2Exit(Sender: TObject);
begin
   dsFinanceiro.Tag := 0;
end;

procedure TfrmParcelas.ImprimeOrc(Serie:String);
var
   CodCliente, Numero, File1: String;
begin
   CodCliente := StrZero(dmvd1101.cdsVendasCLIENTE_VENDA.AsString,6);
   Numero     := StrZero(dmvd1101.cdsVendasCODIGO_VENDA.AsString,6);
   File1      := Serie + Numero + '.raf';

   dmvd1101.cdsSerie.Open;

   if dmvd1101.cdsSerie.Locate('SERIE_SERIE',Serie,[]) then
   begin
      dmImpOrc := TdmImpOrc.Create(self);

      Serie1   := Serie;

      dmImpOrc.Carrega_data_sets(frmVd1101.edSerie.Text,frmVd1101.id_nova_venda1);

      NumNota1 := StrZero(dmImpOrc.cdsOrcamentoCODIGO_VENDA.AsString,6);

      dmImpOrc.imprime(File1);
   end;
end;

function TfrmParcelas.Verifica_numeracao(Serie, Numero: String): String;
var
   Nome_tabela, NumeroNota, Saida1, DocFiscal1: String;
   NumNota2: integer;
   Acho1 : Boolean;
begin
   Acho1 := False;
   // VERIFICA A EXISTENCIA DE OUTRO CUPOM FISCAL COM A MESMA NUMERAÇÃO
   // Busca
   Nome_tabela := 'P_VENDAS';
   NumNota2 := StrToInt(Numero);
   repeat
      dmvd1101.cdsPesquisa1.Close;
      dmvd1101.qryPesquisa1.Close;
      dmvd1101.qryPesquisa1.SQL.Text := 'SELECT NOTAFISCAL_VENDA AS NOTAFISCAL_VENDA, SERIE_VENDA, COD_EMPRESA FROM ' + Nome_tabela + ' WHERE NOTAFISCAL_VENDA=:NUM AND SERIE_VENDA=:SER AND COD_EMPRESA=:EMP';
      dmvd1101.qryPesquisa1.ParamByName('NUM').AsString := Numero;
      dmvd1101.qryPesquisa1.ParamByName('SER').AsString := Serie;
      dmvd1101.qryPesquisa1.ParamByName('EMP').AsString := CodigoEmpresa1;
      dmvd1101.qryPesquisa1.Open;
      dmvd1101.cdsPesquisa1.Open;

     // if not dmvd1101.cdsPesquisa1.IsEmpty then
      //   NumNota2 := dmvd1101.cdsPesquisa1.FieldByName('NOTAFISCAL_VENDA').AsInteger;

      if (dmvd1101.cdsPesquisa1.RecordCount > 0) or (Serie = 'NF') then
      begin
         Acho1 := True;

         qryNum_nota.Close;

         qryNum_nota.SQL.Text := ' SELECT' +
                                 ' MAX(V.NOTAFISCAL_VENDA) AS NUM_NOTA' +
                                 ' FROM ' + Nome_tabela + ' V WHERE V.SERIE_VENDA=:SER AND COD_EMPRESA=:EMP';

         qryNum_nota.ParamByName('SER').AsString := Serie;
         qryNum_nota.ParamByName('EMP').AsString := CodigoEmpresa1;

         qryNum_nota.Open;

      if NumNota2 < qryNum_notaNUM_NOTA.AsInteger then
         NumNota2 := qryNum_notaNUM_NOTA.AsInteger;
      end;

      if Nome_tabela = 'P_VENDAS' then
         Nome_tabela := 'P_DOC_SIMPLES'
      else
         Saida1 := 'OK';

   until Saida1 = 'OK';
   // Cumpom fiscal                                          Nota fiscal
   //if ((StrToInt(Numero) <= NumNota2) and (Serie <> 'NF')) or ((StrToInt(Numero) <= qryNum_notaNUM_NOTA.AsInteger) and (Serie = 'NF')) then
   if Acho1 then
   begin
      NumeroNota := StrZero(intToStr(NumNota2 + 1),6);

      // Verifica se lançamento é CF ou NF
      if (Serie = 'CF') or (Copy(Serie,1,1) = 'E') then
         DocFiscal1 := 'cupom fiscal'
      else
         DocFiscal1 := 'nota fiscal';

      Timer1.Enabled := True; // Ativa a função para setar corretamente os focus

      // NF ou CF NÃO Simples
      {if not Doc_fiscal_simples then
         Application.MessageBox(pchar('Numeração de ' + DocFiscal1 + ' incorreta.' + #13 + 'O número foi mudado para: ' +
                                 NumeroNota),'Finalização', MB_OK + MB_ICONERROR)
      else
         Application.MessageBox(pchar('Numeração de ' + DocFiscal1 + ' simples incorreta.' + #13 + 'O número foi mudado para: ' +
                                 NumeroNota),'Finalização', MB_OK + MB_ICONERROR);}
   end
   else
      NumeroNota := StrZero(intToStr(NumNota2),6);

   Serie1   := frmVd1101.edSerie.Text;
   NumNota1 := NumeroNota; // Declaração púplica

   Result   := NumeroNota;
end;


function TfrmParcelas.Serie_fiscal(Serie: String): Boolean;
begin
   if Serie = '' then
   begin
      if (frmVd1101.edSerie.Text = 'NF') or ((frmVd1101.edSerie.Text = 'CF') or (copy(frmVd1101.edSerie.Text,1,1) = 'E')) then
         Result := True
      else
         Result := False;
   end
   else
   begin
      if Serie = 'NF' then
      begin
         if (frmVd1101.edSerie.Text = 'NF') then
            Result := True
         else
            Result := False;
      end
      else
      begin
         if Serie = 'CF' then
         begin
            if (frmVd1101.edSerie.Text = 'CF') or (copy(frmVd1101.edSerie.Text,1,1) = 'E') then
               Result := True
            else
               Result := False;
         end;
      end;
   end;
end;

function TfrmParcelas.Doc_fiscal_simples: Boolean;
begin
   if (frmVd1101.PEM = 'B') or (frmVd1101.PEM = 'C') then
      Result := True
   else
      Result := False;
end;

function TfrmParcelas.Troco: Real;
begin
   if ckbEntrega.Checked then
   begin
      frmTroco := TfrmTroco.Create(Self);
      frmTroco.ShowModal;

      if frmTroco.Tag = 1 then
         Result := frmTroco.edtTroco.Value
      else
         Result := 0;

      frmTroco.Release;
      frmTroco := nil;
   end;
end;

procedure TfrmParcelas.FormShow(Sender: TObject);
begin
   if dmVd1101.cdsFormaPagamentoCAIXA_CPAGAMENTO.Value = 1 then
      frmParcelas.btnAssistente.Click;
end;

procedure TfrmParcelas.Timer1Timer(Sender: TObject);
begin
   Daruma_TEF_SetFocus('Finalização');
   Timer1.Enabled := False;
end;

procedure TfrmParcelas.Gera_Pagar_Func(const Codcli_Vendedor : String);
Var
  Val_Comissao : Double;
  Documento    : String;
begin
   if Codcli_Vendedor <> '' then
   begin
      with dmVd1101 do
      begin
         if (not cdsContas_Pagar.Active) then
            cdsContas_Pagar.Open;

         Val_Comissao := 0;
         Documento    := '';

         cdsConsultaVenda.Close;
         cdsConsultaVenda.Params.ParamByName('CODIGO_VENDA').AsInteger := cdsVendasCODIGO_VENDA.AsInteger;
         cdsConsultaVenda.Open;

         Val_Comissao := DmPrincipal.cdsFinanceiroValor.Value * (cdsConsultaVendaCOMISSAO2_PRODUTO.AsFloat / 100);

         Documento    := 'V' + StrZero(cdsVendasCODIGO_VENDA.AsString, 6) + '-' + StrZero(DmPrincipal.cdsFinanceiroSequencia.AsString,2);

         cdsContas_Pagar.Append;

         cdsContas_PagarDOCUMENTO_PAGAR.AsString    := Documento;
         cdsContas_PagarNOTAFISCAL.AsInteger        := cdsVendasNOTAFISCAL_VENDA.AsInteger;
         cdsContas_PagarTIPO_PAGAR.AsInteger        := 1;
         cdsContas_PagarPORTADOR_PAGAR.AsInteger    := 1;
         cdsContas_PagarFORNECEDOR_PAGAR.AsString   := Codcli_Vendedor;
         cdsContas_PagarENTRADA_PAGAR.AsDateTime    := DataSystem1;
         cdsContas_PagarEMISSAO_PAGAR.AsDateTime    := DataSystem1;
         cdsContas_PagarVENCIMENTO_PAGAR.AsDateTime := DmPrincipal.cdsFinanceiroVencimento.Value;
         cdsContas_PagarPREVISAO_PAGAR.AsDateTime   := DmPrincipal.cdsFinanceiroVencimento.Value;
         cdsContas_PagarVALOR_PAGAR.AsFloat         := Val_Comissao;
         cdsContas_PagarHISTORICO_PAGAR.AsString    := 'Comissão sobre a venda: ' + cdsVendasCODIGO_VENDA.AsString;
         cdsContas_PagarHISTORICO2_PAGAR.AsString   := 'Cliente: ' + StrZero(cdsVendasCLIENTE_VENDA.AsString, 6) + '-' + cdsVendasNOMECLIENTE_VENDA.AsString;
         cdsContas_PagarCOD_EMPRESA_PAGAR.AsString  := CodigoEmpresa1;

         cdsContas_Pagar.Post;
         cdsContas_Pagar.ApplyUpdates(0);
      end;
   end;
end;

procedure TfrmParcelas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
