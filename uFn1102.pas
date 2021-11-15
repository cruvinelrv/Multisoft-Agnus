{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FIN014 (FIN014)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 21/05/2007
 FINALIDADE           --> Faturamento
 COMENTARIO           --> tag = 0 Reimpressão tag = 1 Cancelamento

 *******************************************************************************}

unit uFn1102;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, JvExMask, JvToolEdit, StdCtrls, JvExStdCtrls,
  JvEdit, JvValidateEdit, Grids, DBGrids, DB, Buttons, uecf, umulticlasses;

type
  TfrmFn1102 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtNumFatura: TJvValidateEdit;
    Label2: TLabel;
    edtCliente: TJvValidateEdit;
    Edit1: TEdit;
    Label4: TLabel;
    edtEmissao: TJvDateEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnContinuar: TBitBtn;
    btnSair: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNumFaturaExit(Sender: TObject);
    procedure btnContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    ECF: TECF;
    procedure ImprimeOrc(Serie : String);
    function Busca_Duplicata() : String;
  public
    { Public declarations }
    Diferenca_Valor,
    Percen_Desconto,
    Valor_Bruto,
    Valor_Venda,
    Valor_Unitario,
    Valor_Total,
    Valor_Liquido,
    ICM1,
    Valor_Titulos : Double;
    Tributacao,
    Impressao,
    Numero_Serie2,
    Observacao,
    Chave1,
    Redutor1 : String;
    Numero_Serie : Integer;
  end;

var
  frmFn1102: TfrmFn1102;

implementation

uses udmFn1102, uGlobal, Math, udmImpNF, uProcess, uDmImpOrc;

{$R *.dfm}

procedure TfrmFn1102.FormCreate(Sender: TObject);
begin
   dmFn1102 := TdmFn1102.Create(Self);

   Parametro := TParametros_Venda.Create;

   Parametro.Carregar;
end;

procedure TfrmFn1102.FormShow(Sender: TObject);
begin
   Valor_Titulos   := 0;
   Diferenca_Valor := 0;
   Percen_Desconto := 0;
   Valor_Bruto     := 0;
   Valor_Venda     := 0;
   Valor_Unitario  := 0;
   Valor_Total     := 0;
   Valor_Liquido   := 0;
   Numero_Serie    := 0;
   ICM1            := 0;
   Numero_Serie2   := '';
   Observacao      := '';
   Impressao       := '';
   Redutor1        := '';
   Tributacao      := '';
   Chave1          := '';

   if Self.Tag = 0 then
      Self.Caption := 'Reimpressão de Faturamento'
   else
      Self.Caption := 'Cancela Faturamento';

   edtNumFatura.SetFocus;

   btnContinuar.Enabled := False;

   // joga máscara no campo segundo parâmetro do sistema

   dmFn1102.cdsGridVALOR_VENDA.EditFormat    := MascaraPrecoVenda1;
   dmFn1102.cdsGridVALOR_VENDA.DisplayFormat := MascaraPrecoVenda1;
end;

procedure TfrmFn1102.edtNumFaturaExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtNumFatura.Value > 0 then
   begin
      dmFn1102.cdsVendas.Close;
      dmFn1102.cdsVendas.Params.ParamByName('NUMERO_FATURA').AsInteger := edtNumFatura.Value;
      dmFn1102.cdsVendas.Open;

      if not dmFn1102.cdsVendas.IsEmpty then
      begin
         btnContinuar.Enabled := True;

         Edit1.Text := dmFn1102.cdsVendasNOMECLIENTE_VENDA.AsString;

         edtCliente.Value := dmFn1102.cdsVendasCLIENTE_VENDA.AsInteger;

         edtEmissao.Date := dmFn1102.cdsVendasEMISSAO_FATURA.AsDateTime;

         dmFn1102.cdsGrid.Open;

         if dmFn1102.cdsGrid.RecordCount > 0 then
            dmFn1102.cdsGrid.EmptyDataSet;

         dmFn1102.cdsVendas.First;
         while not dmFn1102.cdsVendas.Eof do
         begin
            dmFn1102.cdsGrid.Append;

            dmFn1102.cdsGridCODIGO_VENDA.AsInteger   := dmFn1102.cdsVendasCODIGO_VENDA.AsInteger;

            dmFn1102.cdsGridSERIE.AsString           := dmFn1102.cdsVendasSERIE_VENDA.AsString;

            dmFn1102.cdsGridNUM_NOTAFISCAL.AsInteger := dmFn1102.cdsVendasNOTAFISCAL_VENDA.AsInteger;

            dmFn1102.cdsGridDATA_VENDA.AsDateTime    := dmFn1102.cdsVendasDATA_VENDA.AsDateTime;

            dmFn1102.cdsGridCODIGO_CLIENTE.AsInteger := dmFn1102.cdsVendasCLIENTE_VENDA.AsInteger;

            dmFn1102.cdsGridNOME_CLIENTE.AsString    := dmFn1102.cdsVendasNOMECLIENTE_VENDA.AsString;

            dmFn1102.cdsGridVALOR_VENDA.AsFloat      := dmFn1102.cdsVendasVALORNOTA_VENDA.AsFloat;

            dmFn1102.cdsGridTIPO_PAGAM.AsInteger     := dmFn1102.cdsVendasCPAGAMENTO_VENDA.AsInteger;

            dmFn1102.cdsGridSELECIONADO.AsString     := 'X';

            dmFn1102.cdsGrid.Post;

            dmFn1102.cdsVendas.Next;
         end;

         dmFn1102.cdsGrid.First;

         dmFn1102.cdsVendas.First;

         // seta a tabela na posição para trazer os dados que serão usados na impressão da NF

         dmFn1102.cdsCliente.Close;
         dmFn1102.cdsCliente.Params.ParamByName('CODIGO_CLIENTE').AsInteger := dmFn1102.cdsVendasCLIENTE_VENDA.AsInteger;
         dmFn1102.cdsCliente.Open;

         // seta a tabela na posição para trazer os dados que serão usados na impressão da NF

         dmFn1102.cdsPropriedade.Close;
         dmFn1102.cdsPropriedade.Params.ParamByName('CODIGO_CLIENTE').AsInteger := dmFn1102.cdsVendasCLIENTE_VENDA.AsInteger;
         dmFn1102.cdsPropriedade.Open;

         ////////////////////////////////////////////////////////////////////////////
      end
      else
      begin
         Application.MessageBox('Fatura não localizada', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtNumFatura.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn1102.btnContinuarClick(Sender: TObject);
Var
  Venda_Prazo : Boolean;
  A : Integer;
begin
   A := 0;

   if frmFn1102.Tag = 1 then // tag igual a 1 é rotina de cancelamento de fatura
   begin
      if Application.MessageBox('Confirma o Cancelamento', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         // volta a numeracao de documento

         if (dmFn1102.cdsVendasSERIE_VENDA.AsString = 'CI') or (dmFn1102.cdsVendasSERIE_VENDA.AsString = 'NF') or (dmFn1102.cdsVendasSERIE_VENDA.AsString = 'PS') then
         begin
            dmFn1102.cdsSerie2.Close;
            dmFn1102.cdsSerie2.Params.ParamByName('SERIE').AsString := dmFn1102.cdsVendasSERIE_VENDA.AsString;
            dmFn1102.cdsSerie2.Open;

            if not dmFn1102.cdsSerie2.IsEmpty then
            begin
               while not dmFn1102.cdsSerie2.Eof do
               begin
                  dmFn1102.cdsSerie2.Edit;

                  dmFn1102.cdsSerie2NUMERO_SERIE.AsFloat := dmFn1102.cdsSerie2NUMERO_SERIE.AsFloat -1;

                  dmFn1102.cdsSerie2.Next;
               end;

               dmFn1102.cdsSerie2.ApplyUpdates(0);
            end;
         end;

         // desmarca as vendas faturadas

         dmFn1102.cdsGrid.First;

         while not dmFn1102.cdsGrid.Eof do
         begin
            dmFn1102.cdsVenda2.Close;
            dmFn1102.cdsVenda2.Params.ParamByName('CODIGO_VENDA').AsInteger := dmFn1102.cdsGridCODIGO_VENDA.AsInteger;
            dmFn1102.cdsVenda2.Open;

            if not dmFn1102.cdsVenda2.IsEmpty then
            begin
               dmFn1102.cdsVenda2.Edit;

               dmFn1102.cdsVenda2NRFATURA_VENDA.AsInteger := 0;

               dmFn1102.cdsVenda2.Post;

               dmFn1102.cdsVenda2.ApplyUpdates(0);
            end;

            // reabre contas a receber

            Chave1 := dmFn1102.cdsVendasSERIE_VENDA.AsString + StrZero(dmFn1102.cdsVendasNOTAFISCAL_VENDA.AsString, 6);

            dmFn1102.cdsReceber.Close;
            dmFn1102.cdsReceber.Params.ParamByName('DUPLICATA').AsString := Chave1;
            dmFn1102.cdsReceber.Open;

           // verifica se o titulo ja foi pago

           // reabre o titulo

           if not dmFn1102.cdsReceber.IsEmpty then
           begin
              while not dmFn1102.cdsReceber.Eof do
              begin
                 dmFn1102.cdsReceber.Edit;

                 dmFn1102.cdsReceberVALORPAGO_RECEBER.AsFloat   := 0;
                 dmFn1102.cdsReceberMOVIMENTO_RECEBER.AsString  := '';
                 dmFn1102.cdsReceberTIPO_BAIXA_RECEBER.AsString := '';
                 dmFn1102.cdsReceberTIT_PRINC_RECEBER.AsString  := '';
                 dmFn1102.cdsReceberHISTORICO_RECEBER.AsString := dmFn1102.cdsReceberHISTORICO_RECEBER.AsString + ' / Reab. Em: ' + DateToStr(DataSystem1);

                 dmFn1102.cdsReceber.Next;
              end;

              dmFn1102.cdsReceber.ApplyUpdates(0);
            end;

            dmFn1102.cdsGrid.Delete;

            //dmFn1102.cdsGrid.Next;
         end;

         // apaga os titulos a receber refentes a fatura

         for A := 1 to 10 do
         begin
            Chave1 := 'FT' + StrZero(edtNumFatura.EditText, 6) + '-' + StrZero(IntToStr(A),2);

            dmFn1102.cdsReceber.Close;
            dmFn1102.cdsReceber.Params.ParamByName('DUPLICATA').AsString := Chave1;
            dmFn1102.cdsReceber.Open;

            if not dmFn1102.cdsReceber.IsEmpty then
            begin
               while not dmFn1102.cdsReceber.Eof do
               begin
                  dmFn1102.cdsReceber.Delete;

                  dmFn1102.cdsReceber.Next;
               end;

               dmFn1102.cdsReceber.ApplyUpdates(0);
            end;
         end;

         // apaga a fatura

         dmFn1102.cdsFatura.Close;
         dmFn1102.cdsFatura.Params.ParamByName('CODIGO_FATURA').AsInteger := edtNumFatura.Value;
         dmFn1102.cdsFatura.Open;

         if not dmFn1102.cdsFatura.IsEmpty then
         begin
            dmFn1102.cdsFatura.Delete;

            dmFn1102.cdsFatura.ApplyUpdates(0);
         end;

         if dmFn1102.cdsGrid.RecordCount > 0 then
            dmFn1102.cdsGrid.EmptyDataSet;
      end;
   end
   else
   begin
      // tag igual a 0 zero, rotina de de Reimpressão de Fatura 
      if Application.MessageBox('Confirma a Reimpressão', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         dmFn1102.cdsItemVenda_Temp.Open;

         if dmFn1102.cdsItemVenda_Temp.RecordCount > 0 then
            dmFn1102.cdsItemVenda_Temp.EmptyDataSet;

         dmFn1102.cdsItemVenda_Imp.Open;

         if dmFn1102.cdsItemVenda_Imp.RecordCount > 0 then
            dmFn1102.cdsItemVenda_Imp.EmptyDataSet;

         dmFn1102.cdsGrid.First;

         frmProcess := TfrmProcess.Create(Self);
         frmProcess.JvgLabel1.Caption := 'Processando...';
         frmProcess.ProgressBar1.Max := dmFn1102.cdsGrid.RecordCount;
         frmProcess.Show;

         DBGrid1.DataSource.Enabled := False; // paralisa o cursor da dbgrid

         while not dmFn1102.cdsGrid.Eof do
         begin
            frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
            frmProcess.Refresh;

            if dmFn1102.cdsGridSELECIONADO.AsString = 'X' then
            begin
               dmFn1102.cdsVenda2.Close;
               dmFn1102.cdsVenda2.Params.ParamByName('CODIGO_VENDA').AsInteger := dmFn1102.cdsGridCODIGO_VENDA.AsInteger;
               dmFn1102.cdsVenda2.Open;

               if dmFn1102.cdsVenda2DESCONTO_VENDA.AsFloat > 0 then
                  Percen_Desconto := ArredondarDecimal((dmFn1102.cdsVenda2DESCONTO_VENDA.AsFloat / dmFn1102.cdsVenda2FATURA_VENDA.AsFloat * 100), 0);

               dmFn1102.cdsItemVenda.Close;
               dmFn1102.cdsItemVenda.Params.ParamByName('CODIGO').AsInteger := dmFn1102.cdsGridCODIGO_VENDA.AsInteger;
               dmFn1102.cdsItemVenda.Open;

               if not dmFn1102.cdsItemVenda.IsEmpty then
               begin
                  while (dmFn1102.cdsItemVendaCODIGO_IVENDA.AsInteger = dmFn1102.cdsGridCODIGO_VENDA.AsInteger) and (not dmFn1102.cdsItemVenda.Eof) do
                  begin
                     if Percen_Desconto <> 0 then
                        Valor_Bruto := dmFn1102.cdsItemVendaVALORBRUTO_IVENDAS.AsFloat - (dmFn1102.cdsItemVendaVALORBRUTO_IVENDAS.AsFloat * (Percen_Desconto / 100))
                     else
                        Valor_Bruto := dmFn1102.cdsItemVendaVALORBRUTO_IVENDAS.AsFloat;

                     Valor_Venda := dmFn1102.cdsItemVendaVALORBRUTO_IVENDAS.AsFloat * dmFn1102.cdsItemVendaQUANTIDADE_IVENDAS.AsFloat;

                     dmFn1102.cdsProdutos.Close;
                     dmFn1102.cdsProdutos.Params.ParamByName('PRODUTO').AsInteger := dmFn1102.cdsItemVendaPRODUTO_IVENDA.AsInteger;
                     dmFn1102.cdsProdutos.Open;

                     Valor_Unitario := dmFn1102.cdsProdutosPRECOUNIT_PRODUTO.AsFloat * dmFn1102.cdsItemVendaQUANTIDADE_IVENDAS.AsFloat;

                     dmFn1102.cdsItemVenda_Temp.Append;

                     dmFn1102.cdsItemVenda_TempCOD_VENDA.AsInteger     := dmFn1102.cdsItemVendaCODIGO_IVENDA.AsInteger;
                     dmFn1102.cdsItemVenda_TempCOD_PRODUTO.AsInteger   := dmFn1102.cdsItemVendaPRODUTO_IVENDA.AsInteger;
                     dmFn1102.cdsItemVenda_TempVALOR_BRUTO.AsFloat     := Valor_Bruto;
                     dmFn1102.cdsItemVenda_TempQUANTIDADE.AsFloat      := dmFn1102.cdsItemVendaQUANTIDADE_IVENDAS.AsFloat;
                     dmFn1102.cdsItemVenda_TempICM.AsString            := dmFn1102.cdsItemVendaICM_IVENDAS.AsString;
                     dmFn1102.cdsItemVenda_TempREDUTOR.AsString        := dmFn1102.cdsItemVendaREDUTOR_IVENDAS.AsString;
                     dmFn1102.cdsItemVenda_TempTRIBUTACAO.AsString     := dmFn1102.cdsItemVendaTRIBUTACAO_IVENDAS.AsString;
                     dmFn1102.cdsItemVenda_TempSERIE.AsString          := dmFn1102.cdsItemVendaCODIGO_IVENDA.AsString;
                     dmFn1102.cdsItemVenda_TempCFOP.AsString           := dmFn1102.cdsVenda2CFOP_VENDA.AsString; // CAMPO EXCLUSIVO PARA IMPRESSÃO
                     dmFn1102.cdsItemVenda_TempDESCONTO.AsFloat        := dmFn1102.cdsItemVendaDESCONTO_IVENDAS.AsFloat;

                     dmFn1102.cdsItemVenda_Temp.Post;

                     dmFn1102.cdsItemVenda.Next;
                  end;
               end;
            end;

            dmFn1102.cdsGrid.Next;
         end;

         DBGrid1.DataSource.Enabled := True; // libera o cursor da dbgrid

         frmProcess.Release;
         frmProcess := nil;

         dmFn1102.cdsItemVenda_Temp.First;

         while not dmFn1102.cdsItemVenda_Temp.Eof  do
         begin
            dmFn1102.cdsProdutos.Close;
            dmFn1102.cdsProdutos.Params.ParamByName('PRODUTO').AsInteger := dmFn1102.cdsItemVenda_TempCOD_PRODUTO.AsInteger;
            dmFn1102.cdsProdutos.Open;

            if not dmFn1102.cdsProdutos.IsEmpty then
            begin
               if (dmFn1102.cdsVendasSERIE_VENDA.AsString = 'PS') and (dmFn1102.cdsProdutosCLASSE_PRODUTO.AsString = 'P') then
               begin
                  Application.MessageBox('Existe produto na venda selecionada, a série não pode ser PS', 'Atenção', MB_OK+MB_ICONEXCLAMATION);
                  Exit;
               end;
            end;

            dmFn1102.cdsItemVenda_Imp.Append;

            // verifica o icms do produto e o redutor

            if dmFn1102.cdsVendasESTADO_CLIENTE.AsString = xEstado then
            begin
               ICM1     := dmFn1102.cdsProdutosICMSAIDA_PRODUTO.AsFloat;
               Redutor1 := dmFn1102.cdsProdutosREDU_DENTR_PRODUTO.AsString;
            end
            else
            begin
               dmFn1102.cdsEstado.Close;
               dmFn1102.cdsEstado.Params.ParamByName('CODIGO_ESTADO').AsString := dmFn1102.cdsVendasESTADO_CLIENTE.AsString;
               dmFn1102.cdsEstado.Open;

               if not dmFn1102.cdsEstado.IsEmpty then
               begin
                  if dmFn1102.cdsVendasCONTRIBUINTE_CLIENTE.AsString = 'S' then
                     ICM1 := dmFn1102.cdsEstadoICMS_VD_CT.AsFloat
                  else
                     ICM1 := dmFn1102.cdsEstadoICMS_VD_NC.AsFloat;
               end
               else
                  ICM1 := 0;

               Redutor1 := dmFn1102.cdsProdutosREDU_FORA_PRODUTO.AsString;
            end;

            if dmFn1102.cdsProdutosTRIB_DENTRO_PRODUTO.AsString <> '' then
               Tributacao := dmFn1102.cdsProdutosTRIB_DENTRO_PRODUTO.AsString;

            if dmFn1102.cdsProdutosTRIB_FORA_PRODUTO.AsString <> '' then
               Tributacao := dmFn1102.cdsProdutosTRIB_FORA_PRODUTO.AsString;

            if dmFn1102.cdsProdutosTRIB_U_A_PRODUTO.AsString <> '' then
               Tributacao := dmFn1102.cdsProdutosTRIB_U_A_PRODUTO.AsString;

            if dmFn1102.cdsProdutosTRIB_F_A_PRODUTO.AsString <> '' then
               Tributacao := dmFn1102.cdsProdutosTRIB_F_A_PRODUTO.AsString;

            if Tributacao = '060' then
            begin
               dmFn1102.cdsItemVenda_ImpPRODUTO_COD.AsInteger   := dmFn1102.cdsItemVenda_TempCOD_PRODUTO.AsInteger;

               if dmFn1102.cdsProdutosDESCRICAO_PRODUTO.AsString <> '' then
                  dmFn1102.cdsItemVenda_ImpPRODUTO_DESCRI.AsString := dmFn1102.cdsProdutosDESCRICAO_PRODUTO.AsString
               else
                  dmFn1102.cdsItemVenda_ImpPRODUTO_DESCRI.AsString := 'Não Cadastrado';

               dmFn1102.cdsItemVenda_ImpCOD_IVENDA.AsInteger    := dmFn1102.cdsItemVenda_TempCOD_VENDA.AsInteger;
               dmFn1102.cdsItemVenda_ImpVALOR.AsFloat           := dmFn1102.cdsItemVenda_TempVALOR_BRUTO.AsFloat;
               dmFn1102.cdsItemVenda_ImpQUANTIDADE.AsFloat      := dmFn1102.cdsItemVenda_TempQUANTIDADE.AsFloat;
               dmFn1102.cdsItemVenda_ImpFABRICANTE.AsString     := dmFn1102.cdsProdutosFABRICANTE_PRODUTO.AsString;
               dmFn1102.cdsItemVenda_ImpICM.AsFloat             := ICM1;
               dmFn1102.cdsItemVenda_ImpREDUTOR.AsString        := Redutor1;
               dmFn1102.cdsItemVenda_ImpORDEM.AsInteger         := dmFn1102.cdsItemVenda_Imp.RecNo;
               dmFn1102.cdsItemVenda_ImpTRIBUTACAO.AsString     := Tributacao;
               dmFn1102.cdsItemVenda_ImpCLASSE.AsString         := dmFn1102.cdsProdutosCLASSE_PRODUTO.AsString;
               dmFn1102.cdsItemVenda_ImpUNIDADE.AsString        := dmFn1102.cdsProdutosUNIDADE_PRODUTO.AsString;
               dmFn1102.cdsItemVenda_ImpCFOP.AsString           := dmFn1102.cdsItemVenda_TempCFOP.AsString; // CAMPO EXCLUSIVO PARA IMPRESSÃO
               dmFn1102.cdsItemVenda_ImpDESCONTO.AsFloat        := dmFn1102.cdsItemVenda_TempDESCONTO.AsFloat;

               Valor_Liquido := Valor_Liquido + (dmFn1102.cdsItemVenda_ImpVALOR.AsFloat * dmFn1102.cdsItemVenda_ImpQUANTIDADE.AsFloat);

               dmFn1102.cdsItemVenda_Imp.Post;
            end;

            dmFn1102.cdsItemVenda_Temp.Next;
         end;

         // gera nova numeracao de documento

         if (dmFn1102.cdsVendasSERIE_VENDA.AsString = 'CI') or (dmFn1102.cdsVendasSERIE_VENDA.AsString = 'NF') or (dmFn1102.cdsVendasSERIE_VENDA.AsString = 'PS') then
         begin
            dmFn1102.cdsSerie2.Close;
            dmFn1102.cdsSerie2.Params.ParamByName('SERIE').AsString := dmFn1102.cdsVendasSERIE_VENDA.AsString;
            dmFn1102.cdsSerie2.Open;

            if not dmFn1102.cdsSerie2.IsEmpty then
            begin
               Impressao    := dmFn1102.cdsSerie2IMPRESSAO.AsString;

               Numero_Serie := dmFn1102.cdsSerie2NUMERO_SERIE.AsInteger + 1;

               dmFn1102.cdsSerie2.Edit;

               dmFn1102.cdsSerie2NUMERO_SERIE.AsInteger := Numero_Serie;

               dmFn1102.cdsSerie2.Post;

               dmFn1102.cdsSerie2.ApplyUpdates(0);
            end
            else
            begin
               Impressao    := '';

               Numero_Serie := 0;
            end;
         end;

         if dmFn1102.cdsVendasSERIE_VENDA.AsString = 'CF' then 
         begin
            try
             ECF := TECF.Create;

             ECF.Executa := Bematech_FI_AbreCupom(pChar('')); // cabeçalho
             ECF.Analisa;

             if not dmFn1102.cdsItemVenda_Imp.IsEmpty then
             begin
                while not dmFn1102.cdsItemVenda_Imp.Eof do
                begin
                   ECF.Vende_item(IntToStr(dmFn1102.cdsItemVenda_ImpPRODUTO_COD.AsInteger), dmFn1102.cdsItemVenda_ImpPRODUTO_DESCRI.AsString, edtCliente.EditText, dmFn1102.cdsItemVenda_ImpQUANTIDADE.AsFloat, dmFn1102.cdsItemVenda_ImpVALOR.AsFloat, dmFn1102.cdsItemVenda_ImpDESCONTO.AsFloat); // corpo

                   dmFn1102.cdsItemVenda_Imp.Next;
                end;
             end;

             if dmFn1102.cdsVendasCAIXA_CPAGAMENTO.AsInteger > 1 then
                Venda_Prazo := True
             else
                Venda_Prazo := False;

             ecf.Fecha_cupom(dmFn1102.cdsVendasDESCRICAO_CPAGAMENTO.AsString, dmFn1102.cdsVendasCODIGO_VENDA.AsString, dmFn1102.cdsVendasVENDEDOR_VENDA.AsString,
                             dmFn1102.cdsVendasNOME_VENDEDOR.AsString, dmFn1102.cdsVendasVALORNOTA_VENDA.AsFloat, dmFn1102.cdsVendasDESCONTO_VENDA.AsFloat, Venda_Prazo, False); // fechamento

             ECF.Analisa;

            finally
             FreeAndNil(ECF);
            end;
         end;

         // repassa o numero do documento gerado no arquivo de itens

         dmFn1102.cdsItemVenda_Temp.First;

         while not dmFn1102.cdsItemVenda_Temp.Eof do
         begin
            if dmFn1102.cdsItemVenda_TempCOD_VENDA.AsInteger <> Numero_Serie then
            begin
               dmFn1102.cdsItemVenda_Temp.Edit;

               dmFn1102.cdsItemVenda_TempCOD_VENDA.AsInteger := Numero_Serie;
            end;

            dmFn1102.cdsItemVenda_Temp.Next;
         end;

         // imprime documentos

         if dmFn1102.cdsVendasSERIE_VENDA.AsString = 'CI' then
         begin
            Numero_Serie2 := IntToStr(Numero_Serie);

            Numero_Serie2 := StrZero(Numero_Serie2, 6);

            Observacao    := 'Nº Fatura: ' + Numero_Serie2;
         end;

         if dmFn1102.cdsVendasSERIE_VENDA.AsString  = 'NF' then
         begin
            dmImpNF := TdmImpNF.Create(Self);

            Numero_Serie2 := IntToStr(Numero_Serie);

            Numero_Serie2 := StrZero(Numero_Serie2, 6);

            dmImpNF.monta_nf(Numero_Serie, 'FN1102', dmFn1102.cdsVendasVALORNOTA_VENDA.AsFloat, 0, False);
         end;
      end;

      ImprimeOrc(''); // reimpressão da fatura
   end;

   btnContinuar.Enabled := False;
end;

procedure TfrmFn1102.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn1102.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn1102.ImprimeOrc(Serie: String);
begin
   dmImpOrc := TdmImpOrc.Create(Self);
   dmImpOrc.ppArchiveReader1.ArchiveFileName := Path1 + 'FT' + StrZero(edtNumFatura.EditText, 6) + '.raf';
   dmImpOrc.ppArchiveReader1.Print;
   FreeAndNil(dmImpOrc);
end;

function TfrmFn1102.Busca_Duplicata : String;
Var pChave, pResultado : String;
begin
   Result     := '';
   pResultado := '';

   with dmFn1102 do
   begin
      cdsReceber2.Close; // aplicada uma substring na sql buscando apenas os oito primeiro caracteres
      cdsReceber2.Params.ParamByName('DUPLICATA').AsString := 'FT' + StrZero(edtNumFatura.EditText, 6);
      cdsReceber2.Open;

      cdsReceber2.First;
      if not cdsReceber2.Eof then
      begin
         pResultado := pResultado + ' ' + cdsReceber2DUPLICATA_RECEBER.AsString;

         if cdsReceber2.RecordCount > 1 then
            Result := 'Referente as Faturas: ' + pResultado
         else
            Result := 'Referente a Fatura: ' + pResultado;
      end;
   end;
end;


end.
