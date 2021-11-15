{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN011)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 30/05/2007
 FINALIDADE           --> Encerramento diário
 COMENTARIO           -->

 *******************************************************************************}

unit uFn09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, ComCtrls;

type
  TfrmFn09 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtDataAtual: TJvDateEdit;
    edtProximaData: TJvDateEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    Label6: TLabel;
    StatusBar1: TStatusBar;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtProximaDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Bloqueio1 : Double;
    Bloqueio_Cliente,
    Duplicata1,
    Duplicata2,
    Emissao,
    CFOP1,
    Acesso2 : String;
  end;

var
  frmFn09: TfrmFn09;

implementation

uses udmFn09, uGlobal, DateUtils, StrUtils;

{$R *.dfm}

procedure TfrmFn09.FormCreate(Sender: TObject);
begin
   dmFn09 := TdmFn09.Create(Self);
end;

procedure TfrmFn09.FormShow(Sender: TObject);
begin
   Bloqueio1        := 0;
   Bloqueio_Cliente := '';
   Acesso2          := '';
   CFOP1            := '';
   Duplicata1       := '';
   Emissao          := '';
   Duplicata2       := '';

    // Busca Parâmetros do sistema
    
   dmFn09.cdsEmpresa.Close;
   dmFn09.cdsEmpresa.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmFn09.cdsEmpresa.Open;

   if not dmFn09.cdsEmpresa.IsEmpty then
   begin
      Bloqueio1        := StrToFloat(dmFn09.cdsEmpresaBLOQUEIO_EMP.AsString);

      Bloqueio_Cliente := dmFn09.cdsEmpresaBLOQ_CLI_EMP.AsString;

      Acesso2          := dmFn09.cdsEmpresaENCERRAM_EMP.AsString;
   end;

   edtDataAtual.Date := DataSystem1;

   edtProximaData.Date := IncDay(DataSystem1, 1); 

   edtProximaData.SetFocus;
end;

procedure TfrmFn09.edtProximaDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
 Grava1,
 Contador1 : Integer;
 Bloq_Cliente1,
 Banco1,
 Vencimento1 : String;
 Total1,
 Total2,
 Saldo1,
 Estoque_Produto_Grade,
 Valor1 : Double;
begin
   Grava1        := 0;
   Contador1     := 0;
   Valor1        := 0;
   Total1        := 0;
   Total2        := 0;
   Vencimento1   := '';
   Bloq_Cliente1 := '';

   if Key = 13 then
   begin
      // verifica se realiza o encerramento do caixa
      if Application.MessageBox('Encerra o dia?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         if Verifica_Data_Anterior(edtDataAtual.Date, edtProximaData.Date) = 1 then
         begin
            GravaLogUser(Self, 'Encerramento com a data retroativa do dia '+ edtProximaData.Text + ' Para ' + edtDataAtual.Text);
         end;

         if pData_Retro = 2 then
         begin
            edtProximaData.SetFocus;
            Abort;
         end;

         if Verifica_Data(edtDataAtual.Date, edtProximaData.Date) = 2 then
         begin
            edtProximaData.SetFocus;
            Abort;
         end;

         //  verifica o arquivo de vendas com o de item da venda

         Edit1.Text := 'Verificando vendas / item / receber';

         // Busca vendas da data atual
         dmFn09.cdsVendas.Close;
         dmFn09.cdsVendas.Params.ParamByName('DATA_VENDA').AsDate := DataSystem1;
         dmFn09.cdsVendas.Open;

         if not dmFn09.cdsVendas.IsEmpty then
         begin
            Edit2.Text := IntToStr(dmFn09.cdsVendas.RecordCount);

            dmFn09.cdsVendas.First;
            while not dmFn09.cdsVendas.Eof do
            begin
               Edit3.Text := IntToStr(dmFn09.cdsVendas.RecNo);

               CFOP1 := Verifica_CFOP(dmFn09.cdsVendasCFOP_VENDA.AsString); // Função

               if (dmFn09.cdsVendasEXCLUSAO_VENDA.AsString <> '') and (CFOP1 <> '') then
               begin
                  Duplicata1 := dmFn09.cdsVendasSERIE_VENDA.AsString + StrZero(dmFn09.cdsVendasNOTAFISCAL_VENDA.AsString, 6);

                  Emissao    := dmFn09.cdsVendasEMISSAO_VENDA.AsString;

                  if Emissao = '' then
                     Emissao := dmFn09.cdsVendasDATA_VENDA.AsString;

                  for Contador1 := 1 to 15 do
                  begin
                     if Contador1 = 1 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN01_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR01_VENDA.AsFloat;
                     end;

                     if Contador1 = 2 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN02_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR02_VENDA.AsFloat;
                     end;

                     if Contador1 = 3 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN03_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR03_VENDA.AsFloat;
                     end;

                     if Contador1 = 4 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN04_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR04_VENDA.AsFloat;
                     end;

                     if Contador1 = 5 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN05_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR05_VENDA.AsFloat;
                     end;

                     if Contador1 = 6 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN06_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR06_VENDA.AsFloat;
                     end;

                     if Contador1 = 7 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN07_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR07_VENDA.AsFloat;
                     end;

                     if Contador1 = 8 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN08_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR08_VENDA.AsFloat;
                     end;

                     if Contador1 = 9 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN09_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR09_VENDA.AsFloat;
                     end;

                     if Contador1 = 10 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN10_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR10_VENDA.AsFloat;
                     end;

                     if Contador1 = 11 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN11_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR11_VENDA.AsFloat;
                     end;

                     if Contador1 = 12 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN12_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR12_VENDA.AsFloat;
                     end;

                     if Contador1 = 13 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN13_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR13_VENDA.AsFloat;
                     end;

                     if Contador1 = 14 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN14_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR14_VENDA.AsFloat;
                     end;

                     if Contador1 = 15 then
                     begin
                        Vencimento1 := dmFn09.cdsVendasVENCIMEN15_VENDA.AsString;
                        Valor1      := dmFn09.cdsVendasVALOR15_VENDA.AsFloat;
                     end;

                     // pedido sem vencimento

                     if (dmFn09.cdsVendasVENCIMEN01_VENDA.AsString = '') and (Contador1 = 1) then
                     begin
                        Application.MessageBox(pChar('1 - Pedido ' + StrZero(dmFn09.cdsVendasCODIGO_VENDA.AsString, 6) + ' Vencimento ausente'), 'Informação', MB_OK+MB_ICONEXCLAMATION);
                        Application.MessageBox('Corrija o pedido e reprocesse o encerramento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
                        Abort;
                     end;

                     // se o vencimento for diferente da emissao checa as demais situacoes

                     if (Vencimento1 <> dmFn09.cdsVendasDATA_VENDA.AsString) and (dmFn09.cdsVendasDATA_VENDA.AsString <> '') then
                     begin
                        // verifica o numero de nota fiscal

                        if Acesso1 = '2' then
                        begin
                           if (dmFn09.cdsVendasNOTAFISCAL_VENDA.AsInteger = 0) and (Contador1 = 1) then
                           begin
                              Application.MessageBox(pChar('2 - Pedido ' + StrZero(dmFn09.cdsVendasCODIGO_VENDA.AsString, 6) + ' número de NF inconsistente'), 'Informação', MB_OK+MB_ICONEXCLAMATION);
                              Application.MessageBox('Corrija o pedido e reprocesse o encerramento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
                              Abort;
                           end;
                        end;

                        if Acesso2 = '1' then
                        begin
                           if StrToDate(Vencimento1) < dmFn09.cdsVendasDATA_VENDA.AsDateTime then
                           begin
                              Application.MessageBox(pChar('1 - Pedido ' + StrZero(dmFn09.cdsVendasCODIGO_VENDA.AsString, 6) + ' Vencimento inconsistente'), 'Informação', MB_OK+MB_ICONEXCLAMATION);
                              Application.MessageBox('Corrija o pedido e reprocesse o encerramento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
                              Abort;
                           end;
                        end;

                        Duplicata2 := Duplicata1 + '-' + StrZero(IntToStr(Contador1), 2);

                        // checa ocorrencia no contas a receber

                        if Vencimento1 <> '' then
                        begin
                           if StrToDate(Vencimento1) > dmFn09.cdsVendasDATA_VENDA.AsDateTime then
                           begin
                              dmFn09.cdsReceber.Close;
                              dmFn09.cdsReceber.Params.ParamByName('DUPLICATA').AsString := Duplicata2;
                              dmFn09.cdsReceber.Open;

                              if dmFn09.cdsReceber.IsEmpty then
                                 Grava1 := 1
                              else
                                 Grava1 := 0;

                              //  se for fatura nao gera novo contas a receber

                              if dmFn09.cdsVendasNRFATURA_VENDA.AsInteger <> 0 then
                                 Grava1 := 0
                              else
                                 Grava1 := 1;

                              // obtem o portador e o tipo de pagamento

                              dmFn09.cdsPagamento.Close;
                              dmFn09.cdsPagamento.Params.ParamByName('TIPO_PAGTO').AsInteger := dmFn09.cdsVendasCPAGAMENTO_VENDA.AsVariant;
                              dmFn09.cdsPagamento.Open;

                              // corrige arquivo de contas a receber se o plano nao for a vista

                              if dmFn09.cdsPagamentoCAIXA_CPAGAMENTO.AsInteger <> 1 then
                              begin
                                 if dmFn09.cdsPagamentoGERA_RECEBER_CPAGAMENTO.AsString = 'T' then
                                 begin
                                    dmFn09.cdsReceber.Close;
                                    dmFn09.cdsReceber.Params.ParamByName('DUPLICATA').AsInteger := 0;
                                    dmFn09.cdsReceber.Open;

                                    dmFn09.cdsReceber.Append;

                                    dmFn09.cdsReceberDUPLICATA_RECEBER.AsString        := Duplicata2;
                                    dmFn09.cdsReceberCODIGO_CLIENTE_RECEBER.AsInteger  := dmFn09.cdsVendasCLIENTE_VENDA.AsInteger;
                                    dmFn09.cdsReceberEMISSAO_RECEBER.AsString          := Emissao;
                                    dmFn09.cdsReceberVENCIMENTO_RECEBER.AsString       := Vencimento1;
                                    dmFn09.cdsReceberPREVISAO_RECEBER.AsString         := Vencimento1;
                                    dmFn09.cdsReceberTIPO_DUP_RECEBER.AsString         := dmFn09.cdsVendasTIPO_DOC_VENDA.AsString;
                                    dmFn09.cdsReceberVALOR_RECEBER.AsFloat             := Valor1;
                                    dmFn09.cdsReceberCODIGO_VENDEDOR_RECEBER.AsInteger := dmFn09.cdsVendasVENDEDOR_VENDA.AsInteger;
                                    dmFn09.cdsReceberCODIGO_PORTADOR_RECEBER.AsInteger := dmFn09.cdsPagamentoCODIGO_PORTADOR_CPAGAMENTO.AsInteger;
                                    dmFn09.cdsReceberTIPO_DOCUMENTO_RECEBER.AsInteger  := dmFn09.cdsPagamentoCODIGO_TPDOCUMENTO_CPAGAMENTO.AsInteger;

                                    dmFn09.cdsReceber.Post;

                                    dmFn09.cdsReceber.ApplyUpdates(0);
                                 end;
                              end;
                           end;
                        end;
                     end;
                  end;

                  // verifica itens da venda

                  dmFn09.cdsItemVenda.Close;
                  dmFn09.cdsItemVenda.Params.ParamByName('CODIGO').AsInteger := dmFn09.cdsVendasCODIGO_VENDA.AsInteger;
                  dmFn09.cdsItemVenda.Open;

                  if not dmFn09.cdsItemVenda.IsEmpty then
                  begin
                     while not dmFn09.cdsItemVenda.Eof do
                     begin
                        Total2 := Total2 + dmFn09.cdsItemVendaVALORBRUTO_IVENDAS.AsFloat + dmFn09.cdsItemVendaQUANTIDADE_IVENDAS.AsFloat;

                        dmFn09.cdsItemVenda.Next;
                     end;
                  end;

                  Total1 := ArredondarDecimal(dmFn09.cdsVendasFATURA_VENDA.AsFloat, 2);

                  Total2 := ArredondarDecimal(Total2, 2);

                  if FloatToStr(Total1) <> FloatToStr(Total2) then
                  begin
                     // aceita ate 1 real de diferenca

                     if Total1 - Total2 > 1 then
                     begin
                        if Acesso2 = '3' then
                        begin
                           Application.MessageBox(pChar('3 - Pedido ' + StrZero(dmFn09.cdsVendasCODIGO_VENDA.AsString, 6) + ' Com diferença de total,' + #13 + 'o valor dos itens da venda não confere coma o valor da venda'), 'Informação', MB_OK+MB_ICONEXCLAMATION);
                           Application.MessageBox('Corrija o pedido e reprocesse o encerramento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
                           Abort;
                        end;
                     end;
                  end
                  else
                  begin
                     Application.MessageBox(pChar('Pedido Número ' + StrZero(dmFn09.cdsVendasCODIGO_VENDA.AsString, 6) + ' Sem itens lançados'), 'Informação', MB_OK+MB_ICONEXCLAMATION);
                  end;
               end;

               dmFn09.cdsVendas.Next;
            end;
         end;

         //  libera reserva de produtos / promocao de produtos / checa grade

         dmFn09.cdsProdutos.Open;

         Edit1.Text := 'Liberando reserva / fim de promoção / checa grade';

         Edit2.Text := IntToStr(dmFn09.cdsProdutos.RecordCount);

         Estoque_Produto_Grade := 0;

         if dmFn09.cdsProdutos.RecordCount > 0 then
         begin
            while not dmFn09.cdsProdutos.Eof do
            begin
               Edit3.Text := IntToStr(dmFn09.cdsProdutos.RecNo);

               // pesquisa a grade do produto

               if dmFn09.cdsProdutosGRADE_PRODUTO.AsString = 'T' then
               begin
                  Edit2.Text := IntToStr(dmFn09.cdsProdutos.RecNo);

                  dmFn09.cdsGrade.Close;
                  dmFn09.cdsGrade.Params.ParamByName('PRODUTO').AsInteger := dmFn09.cdsProdutosCODIGO_PRODUTO.AsInteger;
                  dmFn09.cdsGrade.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
                  dmFn09.cdsGrade.Open;

                  if not dmFn09.cdsGrade.IsEmpty then
                  begin
                     Grava1 := 1;

                     while not dmFn09.cdsGrade.Eof do
                     begin
                        Estoque_Produto_Grade := Estoque_Produto_Grade + dmFn09.cdsGradeESTOQUE_GRADE.AsFloat;

                        dmFn09.cdsGrade.Next;
                     end;
                  end
                  else
                     Grava1 := 0;
               end;

               Estoque_Produto_Grade := ArredondarDecimal(Estoque_Produto_Grade, 0);

               if FloatToStr(Estoque_Produto_Grade) <> dmFn09.cdsProdutosESTOQUE_PRODUTO.AsString then
                  Grava1 := 0;

               // grade com problema

               if Acesso2 = '4' then
               begin
                  if Grava1 = 0 then
                  begin
                     Application.MessageBox(pChar('4 - Produto ' + StrZero(dmFn09.cdsVendasCODIGO_VENDA.AsString, 6) + ' Com Grade incirreta'), 'Informação', MB_OK+MB_ICONEXCLAMATION);
                     Application.MessageBox('Corrija o produto e reprocesse o encerramento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
                     Abort;
                  end;
               end;

               dmFn09.cdsProdutos.Edit;

               dmFn09.cdsProdutosRESERVA_PRODUTO.AsFloat := 0;

               if dmFn09.cdsProdutosFIM_PROMOCAO_PRODUTO.AsString <> '' then
               begin
                  if dmFn09.cdsProdutosFIM_PROMOCAO_PRODUTO.AsDateTime < edtProximaData.Date then
                  begin
                     dmFn09.cdsProdutosFIM_PROMOCAO_PRODUTO.AsString := '';
                     dmFn09.cdsProdutosPROMOCAO_PRODUTO.AsFloat      := 0;
                  end;
               end;

               dmFn09.cdsProdutos.Next;
            end;

            dmFn09.cdsProdutos.ApplyUpdates(0);
         end;
         // realizando aumento futuro de produtos

         dmFn09.cdsFuturo.Open;

         dmFn09.cdsTabela02.Open;

         Edit1.Text := 'Processando aumentos futuros';

         Edit2.Text := IntToStr(dmFn09.cdsFuturo.RecordCount);

         if dmFn09.cdsFuturo.RecordCount > 0 then
         begin
            while not dmFn09.cdsFuturo.Eof do
            begin
               Edit3.Text := IntToStr(dmFn09.cdsFuturo.RecNo);

               if edtProximaData.Date >= dmFn09.cdsFuturoDATA_FUTURO.AsDateTime then
               begin
                  // altera no cadastro de produtos

                  dmFn09.cdsProdutos2.Close;
                  dmFn09.cdsProdutos2.Params.ParamByName('PRODUTO').AsInteger := dmFn09.cdsFuturoPRODUTO_FUTURO.AsInteger;
                  dmFn09.cdsProdutos2.Open;

                  if not dmFn09.cdsProdutos2.IsEmpty then
                  begin
                     while not dmFn09.cdsProdutos2.Eof do
                     begin
                        dmFn09.cdsProdutos2.Edit;

                        dmFn09.cdsProdutos2PRECOUNIT_PRODUTO.AsFloat  := dmFn09.cdsFuturoTABELA_FUTURO.AsFloat;
                        dmFn09.cdsProdutos2PROMOCAO_PRODUTO.AsFloat   := dmFn09.cdsFuturoPROMOSSAO_FUTURO.AsFloat;
                        dmFn09.cdsProdutos2VLRATACADO_PRODUTO.AsFloat := dmFn09.cdsFuturoATACADO_FUTURO.AsFloat;

                        dmFn09.cdsProdutos2.Next;
                     end;

                     dmFn09.cdsProdutos2.ApplyUpdates(0);
                  end;

                  dmFn09.cdsTabela02.Append;

                  dmFn09.cdsTabela02DATA_TABELA02.AsDateTime      := edtDataAtual.Date;
                  dmFn09.cdsTabela02PRODUTO_TABELA02.AsInteger    := dmFn09.cdsFuturoPRODUTO_FUTURO.AsInteger;
                  dmFn09.cdsTabela02PRECO1_TABELA02.AsFloat       := dmFn09.cdsProdutos2PRECOUNIT_PRODUTO.AsFloat;
                  dmFn09.cdsTabela02PRECO2_TABELA02.AsFloat       := dmFn09.cdsFuturoTABELA_FUTURO.AsFloat;
                  dmFn09.cdsTabela02ANTERIOR_TABELA02.AsFloat     := dmFn09.cdsProdutos2ESTOQUE_PRODUTO.AsFloat;
                  dmFn09.cdsTabela02ATUAL_TABELA02.AsFloat        := dmFn09.cdsProdutos2ESTOQUE_PRODUTO.AsFloat;
                  dmFn09.cdsTabela02VALIDADE1_TABELA02.AsDateTime := dmFn09.cdsProdutos2VALIDADE_PRODUTO.AsDateTime;
                  dmFn09.cdsTabela02VALIDADE2_TABELA02.AsDateTime := dmFn09.cdsProdutos2VALIDADE_PRODUTO.AsDateTime;
                  dmFn09.cdsTabela02USUARIO_TABELA02.AsString     := 'AUTOMÁTICO';
                  dmFn09.cdsTabela02PRECO3_TABELA02.AsFloat       := dmFn09.cdsFuturoPROMOSSAO_FUTURO.AsFloat;
                  dmFn09.cdsTabela02PRECO4_TABELA02.AsFloat       := dmFn09.cdsProdutos2PRECO_COMPRA_PRODUTO.AsFloat;
                  dmFn09.cdsTabela02PRECO5_TABELA02.AsFloat       := dmFn09.cdsProdutos2PRECO_COMPRA_PRODUTO.AsFloat;
                  dmFn09.cdsTabela02PRECO6_TABELA02.AsFloat       := dmFn09.cdsProdutos2VLRATACADO_PRODUTO.AsFloat;
                  dmFn09.cdsTabela02PRECO7_TABELA02.AsFloat       := dmFn09.cdsFuturoATACADO_FUTURO.AsFloat;
                  dmFn09.cdsTabela02COD_EMPRESA.AsString          := CodigoEmpresa1;

                  dmFn09.cdsTabela02.Post;

                  dmFn09.cdsTabela02.ApplyUpdates(0);
               end;

               // exclui no cadastro de aumento

               dmFn09.cdsFuturo.Delete;
            end;

            dmFn09.cdsFuturo.ApplyUpdates(0);
         end;

         // realizando bloqueio automatico de clientes se dias maior que zero

         dmFn09.cdsCliente.Open;

         Edit1.Text := 'Processando bloqueio de clientes';

         Edit2.Text := IntToStr(dmFn09.cdsCliente.RecordCount);

         if Acesso2 = '5' then
         begin
            if Bloqueio1 > 0 then
            begin
               dmFn09.cdsCliente.First;

               while not dmFn09.cdsCliente.Eof do
               begin
                  Edit3.Text := IntToStr(dmFn09.cdsCliente.RecNo);

                  if (dmFn09.cdsClienteDATABLOQUEIO_CLIENTE.AsString <> '') and (dmFn09.cdsClienteNOME_CLIENTE.AsString = '- VENDA AO CONSUMIDOR -') then
                  begin
                     dmFn09.cdsReceber2.Close;
                     dmFn09.cdsReceber2.Params.ParamByName('CODIGO_CLIENTE').AsInteger := dmFn09.cdsClienteCODIGO_CLIENTE.AsInteger;
                     dmFn09.cdsReceber2.Open;

                     if not dmFn09.cdsReceber2.IsEmpty then
                     begin
                        dmFn09.cdsReceber2.First;

                        while not dmFn09.cdsReceber2.Eof do
                        begin
                           if dmFn09.cdsReceber2TIPO_BAIXA_RECEBER.AsString <> 'T' then
                           begin
                              if (edtProximaData.Date - dmFn09.cdsReceber2VENCIMENTO_RECEBER.AsDateTime > Bloqueio1) and
                                 (Bloqueio1 = 0) and (dmFn09.cdsClienteDATABLOQUEIO_CLIENTE.AsString <> '') then
                                 Bloq_Cliente1 := 'S';
                           end;

                           dmFn09.cdsReceber2.Next;
                        end;
                     end;
                  end;

                  dmFn09.cdsCliente.Next;
               end;

               dmFn09.cdsCliente.First;

               while not dmFn09.cdsCliente.Eof do
               begin
                  if Bloq_Cliente1 = 'S' then
                  begin
                     if Bloqueio_Cliente = 'N' then
                        Exit;

                     if Bloqueio_Cliente = 'P' then
                     begin
                        if Application.MessageBox(pChar('Confirma o Bloqueio do Cliente: ' + StrZero(dmFn09.cdsClienteCODIGO_CLIENTE.AsString, 6) +
                           dmFn09.cdsClienteNOME_CLIENTE.AsString), 'BLOQUEIO DE CLIENTE', MB_YESNO+MB_ICONQUESTION) = mrYes then
                        begin
                           dmFn09.cdsCliente.Edit;

                           dmFn09.cdsClienteDATABLOQUEIO_CLIENTE.AsDateTime := edtDataAtual.Date;
                        end
                        else
                           Exit;
                     end;
                  end;

                  dmFn09.cdsCliente.Next;
               end;

               dmFn09.cdsCliente.ApplyUpdates(0);
            end;

            // gera arquivo auxiliar de saldos

            dmFn09.cdsResban2.Open;

            Banco1 := '';
            Saldo1 := 0;

            dmFn09.cdsTemp.Open;

            Edit1.Text := 'Gerando saldo anterior para o dia seguinte';

            Edit2.Text := IntToStr(dmFn09.cdsResban2.RecordCount);

            dmFn09.cdsResban2.First;

            while not dmFn09.cdsResban2.Eof do
            begin
               Edit3.Text := IntToStr(dmFn09.cdsResban2.RecNo);

               if Copy(dmFn09.cdsResban2CHAVE_RESBAN.AsString, 1, 8) = edtDataAtual.Text then
               begin
                  Banco1 := Copy(dmFn09.cdsResban2CHAVE_RESBAN.AsString, 12, 3);
                  Saldo1 := dmFn09.cdsResban2ANTERIOR_RESBAN.AsFloat + dmFn09.cdsResban2CREDITO_RESBAN.AsFloat - dmFn09.cdsResban2DEBITO_RESBAN.AsFloat;

                  if Saldo1 <> 0 then
                  begin
                     dmFn09.cdsTemp.Append;

                     dmFn09.cdsTempCHAVE.AsString := edtProximaData.Text + '-' + Banco1;
                     dmFn09.cdsTempSALDO.AsFloat  := Saldo1;
                  end;
               end;

               dmFn09.cdsResban2.Next;
            end;

            // atualiza arquivo de saldos

            Edit1.Text := 'Gravando saldo anterior';

            Edit2.Text := IntToStr(dmFn09.cdsTemp.RecordCount);

            while not dmFn09.cdsTemp.Eof do
            begin
               dmFn09.cdsResban.Close;
               dmFn09.cdsResban.Params.ParamByName('CHAVE').AsString := dmFn09.cdsTempCHAVE.AsString;
               dmFn09.cdsResban.Open;

               if dmFn09.cdsResban.IsEmpty then
               begin
                  dmFn09.cdsResban.Append;

                  dmFn09.cdsResbanCHAVE_RESBAN.AsString   := dmFn09.cdsTempCHAVE.AsString;
                  dmFn09.cdsResbanANTERIOR_RESBAN.AsFloat := dmFn09.cdsTempSALDO.AsFloat;

                  dmFn09.cdsResban.Post;
               end;

               dmFn09.cdsTemp.Next;
            end;

            dmFn09.cdsResban.ApplyUpdates(0);
         end;

         // atualiza data do sistema

         dmFn09.cdsEmpresa2.Open;

         dmFn09.cdsEmpresa2.First;

         while not dmFn09.cdsEmpresa2.Eof do
         begin
            dmFn09.cdsEmpresa2.Edit;

            dmFn09.cdsEmpresa2DATASYSTEM_EMP.AsDateTime := edtProximaData.Date;

            dmFn09.cdsEmpresa2.Next;
         end;

         dmFn09.cdsEmpresa2.ApplyUpdates(0);

         // apaga todos os registros de vendas dos arquivos balcao e i_balcao

         Edit1.Text := 'Atualizando base de dados de venda balcão';

         dmFn09.cdsBalcao.Open;

         dmFn09.cdsIten_Balcao.Open;

         dmFn09.cdsBalcao.First;

         if not dmFn09.cdsBalcao.IsEmpty then
         begin
            while not dmFn09.cdsBalcao.Eof do
            begin
               if (dmFn09.cdsBalcaoCHAVE_BALCAO.AsString <> '') and (dmFn09.cdsBalcaoEXCLUSAO_BALCAO.AsString <> '') then
               begin
                  dmFn09.cdsIten_Balcao.Close;
                  dmFn09.cdsIten_Balcao.Params.ParamByName('CODIGO_IBALCAO').AsInteger := dmFn09.cdsBalcaoCODIGO_BALCAO.AsInteger;
                  dmFn09.cdsIten_Balcao.Open;

                  if not dmFn09.cdsIten_Balcao.IsEmpty then
                  begin
                     dmFn09.cdsIten_Balcao.First;

                     while (dmFn09.cdsBalcaoCODIGO_BALCAO.AsInteger = dmFn09.cdsIten_BalcaoCODIGO_IBALCAO.AsInteger) and
                           (not dmFn09.cdsIten_Balcao.Eof) do
                     begin
                        dmFn09.cdsIten_Balcao.Delete;

                        dmFn09.cdsIten_Balcao.Next;
                     end;

                     dmFn09.cdsIten_Balcao.ApplyUpdates(0);
                  end;

                  dmFn09.cdsBalcao.Delete;
               end
               else
                  dmFn09.cdsBalcao.Next;
            end;

            dmFn09.cdsBalcao.ApplyUpdates(0);
         end;

         Application.MessageBox('Dia encerrado com sucesso, para continuar o trabalho, ' + #13 +
                                'você deve reiniciar o sistema', 'Informação', MB_OK+MB_ICONEXCLAMATION);

         Edit1.Clear;

         Edit2.Clear;

         Edit3.Clear;

         edtProximaData.SetFocus;

         GravaLogUser(Self, 'Encerramento do dia ' + edtDataAtual.Text + ' para ' + edtProximaData.Text);

         if Acesso2 = '6' then
         begin
            if Application.MessageBox('Deseja realizar o Backup?', 'BACKUP', MB_YESNO+MB_ICONQUESTION) = mrYes then
               Chama_Backup; // procedure;
         end;
      end;
   end;
end;

procedure TfrmFn09.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
