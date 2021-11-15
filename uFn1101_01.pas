{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FIN036
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 21/05/2007
 FINALIDADE           --> Faturamento
 COMENTARIO           -->

 *******************************************************************************}

unit uFn1101_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvDBControls, JvBaseEdits, DBCtrls, DB, uecf, umulticlasses;

type
  TfrmFn1101_01 = class(TForm)
    Panel1: TPanel;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtData01: TJvDBDateEdit;
    edtData02: TJvDBDateEdit;
    edtData03: TJvDBDateEdit;
    edtData04: TJvDBDateEdit;
    edtData05: TJvDBDateEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    edtData06: TJvDBDateEdit;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    edtData07: TJvDBDateEdit;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    edtData08: TJvDBDateEdit;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    edtData09: TJvDBDateEdit;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    edtData10: TJvDBDateEdit;
    DBEdit10: TDBEdit;
    DataSource1: TDataSource;
    edtValor01: TDBEdit;
    edtValor02: TDBEdit;
    edtValor03: TDBEdit;
    edtValor04: TDBEdit;
    edtValor05: TDBEdit;
    edtValor06: TDBEdit;
    edtValor07: TDBEdit;
    edtValor08: TDBEdit;
    edtValor09: TDBEdit;
    edtValor10: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure edtValor01Exit(Sender: TObject);
    procedure edtValor02Exit(Sender: TObject);
    procedure edtValor03Exit(Sender: TObject);
    procedure edtValor04Exit(Sender: TObject);
    procedure edtValor05Exit(Sender: TObject);
    procedure edtValor06Exit(Sender: TObject);
    procedure edtValor07Exit(Sender: TObject);
    procedure edtValor08Exit(Sender: TObject);
    procedure edtValor09Exit(Sender: TObject);
    procedure edtValor10Exit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    ECF: TECF;
  public
    { Public declarations }
    Diferenca_Valor,
    Percen_Desconto,
    Valor_Bruto,
    Valor_Venda,
    Valor_Unitario,
    Valor_Total,
    Valor_Liquido,
    Valor_Titulos,
    Valor_Receber,
    Valor1,
    Valor2,
    Valor3,
    Valor4,
    Valor5,
    Valor6,
    Valor7,
    Valor8,
    Valor9,
    ICM1,
    Valor10 : Double;
    Tributacao,
    Impressao,
    Numero_Serie2,
    Observacao,
    Chave1,
    Redutor1 : String;
    Numero_Fatura,
    Contador1,
    Numero_Serie : Integer;
  end;

var
  frmFn1101_01: TfrmFn1101_01;

implementation

uses udmFn1101, uFn1101, uGlobal, udmImpNF, uProcess, uNum_Fatura,
  StrUtils;

{$R *.dfm}

procedure TfrmFn1101_01.FormShow(Sender: TObject);
begin
   Valor1          := 0;
   Valor2          := 0;
   Valor3          := 0;
   Valor4          := 0;
   Valor5          := 0;
   Valor6          := 0;
   Valor7          := 0;
   Valor8          := 0;
   Valor9          := 0;
   Valor10         := 0;
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
   Numero_Fatura   := 0;
   Valor_Receber   := 0;
   Contador1       := 0;
   Numero_Serie2   := '';
   Observacao      := '';
   Impressao       := '';
   Redutor1        := '';
   Tributacao      := '';
   Chave1          := '';

   dmFn1101.cdsItemVenda_Temp.Open;

   dmFn1101.cdsReceber2.Close;
   dmFn1101.cdsReceber2.Params.ParamByName('DUPLICATA').AsInteger := 0;
   dmFn1101.cdsReceber2.Open;

   dmFn1101.cdsReceber3.Close;
   dmFn1101.cdsReceber3.Params.ParamByName('DUPLICATA').AsInteger := 0;
   dmFn1101.cdsReceber3.Open;

   // seta a tabela na posição para trazer os dados que serão usados na impressão da NF

   dmFn1101.cdsCliente.Close;
   dmFn1101.cdsCliente.Params.ParamByName('CODIGO_CLIENTE').AsInteger := frmFn1101.edtCliente.Value;
   dmFn1101.cdsCliente.Open;

   // seta a tabela na posição para trazer os dados que serão usados na impressão da NF

   dmFn1101.cdsPropriedade.Close;
   dmFn1101.cdsPropriedade.Params.ParamByName('CODIGO_CLIENTE').AsInteger := frmFn1101.edtCliente.Value;
   dmFn1101.cdsPropriedade.Open;

   ////////////////////////////////////////////////////////////////////////////

   dmFn1101.cdsFatura.Close;
   dmFn1101.cdsFatura.Params.ParamByName('CODIGO_FATURA').AsInteger := 0;
   dmFn1101.cdsFatura.Open;

   // joga máscara nos campos segundo parâmetro do sistema

   dmFn1101.cdsFaturaVALOR_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_01_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_01_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_02_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_02_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_03_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_03_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_04_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_04_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_05_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_05_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_06_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_06_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_07_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_07_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_08_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_08_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_09_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_09_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFaturaVALOR_10_FATURA.EditFormat    := MascaraPrecoVenda1;
   dmFn1101.cdsFaturaVALOR_10_FATURA.DisplayFormat := MascaraPrecoVenda1;

   dmFn1101.cdsFatura.Append;

   Valor_Titulos := ArredondarDecimal(frmFn1101.Valor_Titulos, 2);

   Diferenca_Valor := Valor_Titulos;

    edtValor01.Field.AsFloat := Valor_Titulos;

   edtData01.SetFocus;
end;

procedure TfrmFn1101_01.edtValor01Exit(Sender: TObject);
begin
   if edtData01.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor1 := edtValor01.Field.AsFloat;

   if (Valor1 < Diferenca_Valor) and (Valor1 > 0) then
   begin
      edtValor02.Field.AsFloat := ArredondarDecimal(Diferenca_Valor - Valor1, 2);
      Diferenca_Valor          := edtValor02.Field.AsFloat;
   end;
end;

procedure TfrmFn1101_01.edtValor02Exit(Sender: TObject);
begin
   if edtData02.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor2 := edtValor02.Field.AsFloat;

   if (Valor2 < Diferenca_Valor) and (Valor2 > 0) then
   begin
      edtValor03.Field.AsFloat := ArredondarDecimal(Diferenca_Valor - Valor2, 2);
      Diferenca_Valor          := edtValor03.Field.AsFloat;
   end;
end;

procedure TfrmFn1101_01.edtValor03Exit(Sender: TObject);
begin
   if edtData03.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor3 := edtValor03.Field.AsFloat;

   if (Valor3 < Diferenca_Valor) and (Valor3 > 0) then
   begin
      edtValor04.Field.AsFloat := ArredondarDecimal(Diferenca_Valor - Valor3, 2);
      Diferenca_Valor          := edtValor04.Field.AsFloat;
   end;
end;

procedure TfrmFn1101_01.edtValor04Exit(Sender: TObject);
begin
   if edtData04.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor4 := edtValor04.Field.AsFloat;

   if (Valor4 < Diferenca_Valor) and (Valor4 > 0) then
   begin
      edtValor05.Field.AsFloat := ArredondarDecimal(Diferenca_Valor - Valor4, 2);
      Diferenca_Valor          := edtValor05.Field.AsFloat;
   end;
end;

procedure TfrmFn1101_01.edtValor05Exit(Sender: TObject);
begin
   if edtData05.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor5 := edtValor05.Field.AsFloat;

   if (Valor5 < Diferenca_Valor) and (Valor5 > 0) then
   begin
      edtValor06.Field.AsFloat := ArredondarDecimal(Diferenca_Valor - Valor5, 2);
      Diferenca_Valor          := edtValor06.Field.AsFloat;
   end;
end;

procedure TfrmFn1101_01.edtValor06Exit(Sender: TObject);
begin
   if edtData06.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor6 := edtValor06.Field.AsFloat;

   if (Valor6 < Diferenca_Valor) and (Valor6 > 0) then
   begin
      edtValor07.Field.AsFloat := ArredondarDecimal(Diferenca_Valor - Valor6, 2);
      Diferenca_Valor          := edtValor07.Field.AsFloat;
   end;
end;

procedure TfrmFn1101_01.edtValor07Exit(Sender: TObject);
begin
   if edtData07.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor7 := edtValor07.Field.AsFloat;

   if (Valor7 < Diferenca_Valor) and (Valor7 > 0) then
   begin
      edtValor08.Field.AsFloat := ArredondarDecimal(Diferenca_Valor - Valor7, 2);
      Diferenca_Valor          := edtValor08.Field.AsFloat;
   end;
end;

procedure TfrmFn1101_01.edtValor08Exit(Sender: TObject);
begin
   if edtData08.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor8 := edtValor08.Field.AsFloat;

   if (Valor8 < Diferenca_Valor) and (Valor8 > 0) then
   begin
      edtValor09.Field.AsFloat := ArredondarDecimal(Diferenca_Valor - Valor8, 2);
      Diferenca_Valor          := edtValor09.Field.AsFloat;
   end;
end;

procedure TfrmFn1101_01.edtValor09Exit(Sender: TObject);
begin
   if edtData09.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor9 := edtValor09.Field.AsFloat;

   if (Valor9 < Diferenca_Valor) and (Valor9 > 0) then
   begin
      edtValor10.Field.AsFloat := ArredondarDecimal(Diferenca_Valor - Valor9, 2);
      Diferenca_Valor          := edtValor10.Field.AsFloat;
   end;
end;

procedure TfrmFn1101_01.edtValor10Exit(Sender: TObject);
begin
   if edtData10.Field.AsString <> '' then
      Contador1 := Contador1 + 1
   else
      Contador1 := Contador1 - 1;

   Valor10 := edtValor10.Field.AsFloat;
end;

procedure TfrmFn1101_01.btnGravarClick(Sender: TObject);
Var
  Compara_Valores : Double;
  Venda_Prazo : Boolean;
  Valor_Titulos1,
  Historico1,
  Compara_Valores1 : String;
  A : Integer;
begin
   A := 0;

   Compara_Valores := 0;

   Compara_Valores := dmFn1101.cdsFaturaVALOR_01_FATURA.AsFloat + dmFn1101.cdsFaturaVALOR_02_FATURA.AsFloat;

   Compara_Valores := Compara_Valores + dmFn1101.cdsFaturaVALOR_03_FATURA.AsFloat + dmFn1101.cdsFaturaVALOR_04_FATURA.AsFloat;

   Compara_Valores := Compara_Valores + dmFn1101.cdsFaturaVALOR_05_FATURA.AsFloat + dmFn1101.cdsFaturaVALOR_06_FATURA.AsFloat;

   Compara_Valores := Compara_Valores + dmFn1101.cdsFaturaVALOR_07_FATURA.AsFloat + dmFn1101.cdsFaturaVALOR_08_FATURA.AsFloat;

   Compara_Valores := Compara_Valores + dmFn1101.cdsFaturaVALOR_09_FATURA.AsFloat + dmFn1101.cdsFaturaVALOR_10_FATURA.AsFloat; 

   Compara_Valores1 := FloatToStr(ArredondarDecimal(Compara_Valores, 2));

   Valor_Titulos1 := FloatToStr(ArredondarDecimal(Valor_Titulos, 2));

   if Valor_Titulos1 <> Compara_Valores1 then
   begin
      Application.MessageBox('A distribuição das parcelas não' + #13 + 'confere com o valor total das vendas', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Exit;
   end;

   if dmFn1101.cdsItemVenda_Temp.RecordCount > 0 then
      dmFn1101.cdsItemVenda_Temp.EmptyDataSet;

   dmFn1101.cdsItemVenda_Imp.Open;

   if dmFn1101.cdsItemVenda_Imp.RecordCount > 0 then
      dmFn1101.cdsItemVenda_Imp.EmptyDataSet;

   dmFn1101.cdsGrid.First;

   frmProcess := TfrmProcess.Create(Self);
   frmProcess.JvgLabel1.Caption := 'Processando...';
   frmProcess.ProgressBar1.Max := dmFn1101.cdsGrid.RecordCount * 2;
   frmProcess.Show;

   frmFn1101.DBGrid1.DataSource.Enabled := False; // paralisa o cursor da dbgrid

   while not dmFn1101.cdsGrid.Eof do
   begin
      frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
      frmProcess.Refresh;

      if dmFn1101.cdsGridSELECIONADO.AsString = 'X' then
      begin
         dmFn1101.cdsVenda2.Close;
         dmFn1101.cdsVenda2.Params.ParamByName('CODIGO_VENDA').AsInteger := dmFn1101.cdsGridCOD_VENDA.AsInteger;
         dmFn1101.cdsVenda2.Open;

         if dmFn1101.cdsVenda2DESCONTO_VENDA.AsFloat > 0 then
            Percen_Desconto := ArredondarDecimal((dmFn1101.cdsVenda2DESCONTO_VENDA.AsFloat / dmFn1101.cdsVenda2FATURA_VENDA.AsFloat * 100), 0);

         dmFn1101.cdsItemVenda.Close;
         dmFn1101.cdsItemVenda.Params.ParamByName('CODIGO').AsInteger := dmFn1101.cdsGridCOD_VENDA.AsInteger;
         dmFn1101.cdsItemVenda.Open;

         if not dmFn1101.cdsItemVenda.IsEmpty then
         begin
            while (dmFn1101.cdsItemVendaCODIGO_IVENDA.AsInteger = dmFn1101.cdsGridCOD_VENDA.AsInteger) and (not dmFn1101.cdsItemVenda.Eof) do
            begin
               if Percen_Desconto <> 0 then
                  Valor_Bruto := dmFn1101.cdsItemVendaVALORBRUTO_IVENDAS.AsFloat - (dmFn1101.cdsItemVendaVALORBRUTO_IVENDAS.AsFloat * (Percen_Desconto / 100))
               else
                  Valor_Bruto := dmFn1101.cdsItemVendaVALORBRUTO_IVENDAS.AsFloat;

               Valor_Venda := dmFn1101.cdsItemVendaVALORBRUTO_IVENDAS.AsFloat * dmFn1101.cdsItemVendaQUANTIDADE_IVENDAS.AsFloat;

               dmFn1101.cdsProdutos.Close;
               dmFn1101.cdsProdutos.Params.ParamByName('PRODUTO').AsInteger := dmFn1101.cdsItemVendaPRODUTO_IVENDA.AsInteger;
               dmFn1101.cdsProdutos.Open;

               Valor_Unitario := dmFn1101.cdsProdutosPRECOUNIT_PRODUTO.AsFloat * dmFn1101.cdsItemVendaQUANTIDADE_IVENDAS.AsFloat;

               dmFn1101.cdsItemVenda_Temp.Append;

               dmFn1101.cdsItemVenda_TempCOD_VENDA.AsInteger     := dmFn1101.cdsItemVendaCODIGO_IVENDA.AsInteger;
               dmFn1101.cdsItemVenda_TempCOD_PRODUTO.AsInteger   := dmFn1101.cdsItemVendaPRODUTO_IVENDA.AsInteger;
               dmFn1101.cdsItemVenda_TempVALOR_BRUTO.AsFloat     := Valor_Bruto;
               dmFn1101.cdsItemVenda_TempQUANTIDADE.AsFloat      := dmFn1101.cdsItemVendaQUANTIDADE_IVENDAS.AsFloat;
               dmFn1101.cdsItemVenda_TempICM.AsString            := dmFn1101.cdsItemVendaICM_IVENDAS.AsString;
               dmFn1101.cdsItemVenda_TempREDUTOR.AsString        := dmFn1101.cdsItemVendaREDUTOR_IVENDAS.AsString;
               dmFn1101.cdsItemVenda_TempTRIBUTACAO.AsString     := dmFn1101.cdsItemVendaTRIBUTACAO_IVENDAS.AsString;
               dmFn1101.cdsItemVenda_TempSERIE.AsString          := dmFn1101.cdsItemVendaCODIGO_IVENDA.AsString;
               dmFn1101.cdsItemVenda_TempCFOP.AsString           := dmFn1101.cdsVenda2CFOP_VENDA.AsString; // CAMPO EXCLUSIVO PARA IMPRESSÃO
               dmFn1101.cdsItemVenda_TempDESCONTO.AsFloat        := dmFn1101.cdsItemVendaDESCONTO_IVENDAS.AsFloat;

               dmFn1101.cdsItemVenda_Temp.Post;

               dmFn1101.cdsItemVenda.Next;
            end;
         end;
      end;

      dmFn1101.cdsGrid.Next;
   end;

   frmFn1101.DBGrid1.DataSource.Enabled := True; // libera o cursor da dbgrid

   dmFn1101.cdsItemVenda_Temp.First;

   while not dmFn1101.cdsItemVenda_Temp.Eof  do
   begin
      dmFn1101.cdsProdutos.Close;
      dmFn1101.cdsProdutos.Params.ParamByName('PRODUTO').AsInteger := dmFn1101.cdsItemVenda_TempCOD_PRODUTO.AsInteger;
      dmFn1101.cdsProdutos.Open;

      if not dmFn1101.cdsProdutos.IsEmpty then
      begin
         if (frmFn1101.edtSerie.Value = 'PS') and (dmFn1101.cdsProdutosCLASSE_PRODUTO.AsString = 'P') then
         begin
            Application.MessageBox('Existe produto na venda selecionada, a série não pode ser PS', 'Atenção', MB_OK+MB_ICONEXCLAMATION);
            Exit;
         end;
      end;

      dmFn1101.cdsItemVenda_Imp.Append;

      // verifica o icms do produto e o redutor

      if frmFn1101.Estado_Cliente = xEstado then
      begin
         ICM1     := dmFn1101.cdsProdutosICMSAIDA_PRODUTO.AsFloat;
         Redutor1 := dmFn1101.cdsProdutosREDU_DENTR_PRODUTO.AsString;
      end
      else
      begin
         dmFn1101.cdsEstado.Close;
         dmFn1101.cdsEstado.Params.ParamByName('CODIGO_ESTADO').AsString := frmFn1101.Estado_Cliente;
         dmFn1101.cdsEstado.Open;

         if not dmFn1101.cdsEstado.IsEmpty then
         begin
            if frmFn1101.Cliente_Contribu = 'S' then
               ICM1 := dmFn1101.cdsEstadoICMS_VD_CT.AsFloat
            else
               ICM1 := dmFn1101.cdsEstadoICMS_VD_NC.AsFloat;
         end
         else
            ICM1 := 0;

         Redutor1 := dmFn1101.cdsProdutosREDU_FORA_PRODUTO.AsString;
      end;

      if dmFn1101.cdsProdutosTRIB_DENTRO_PRODUTO.AsString <> '' then
         Tributacao := dmFn1101.cdsProdutosTRIB_DENTRO_PRODUTO.AsString;

      if dmFn1101.cdsProdutosTRIB_FORA_PRODUTO.AsString <> '' then
         Tributacao := dmFn1101.cdsProdutosTRIB_FORA_PRODUTO.AsString;

      if dmFn1101.cdsProdutosTRIB_U_A_PRODUTO.AsString <> '' then
         Tributacao := dmFn1101.cdsProdutosTRIB_U_A_PRODUTO.AsString;

      if dmFn1101.cdsProdutosTRIB_F_A_PRODUTO.AsString <> '' then
         Tributacao := dmFn1101.cdsProdutosTRIB_F_A_PRODUTO.AsString;

      if Tributacao = '060' then
      begin
         dmFn1101.cdsItemVenda_ImpPRODUTO_COD.AsInteger   := dmFn1101.cdsItemVenda_TempCOD_PRODUTO.AsInteger;

         if dmFn1101.cdsProdutosDESCRICAO_PRODUTO.AsString <> '' then
            dmFn1101.cdsItemVenda_ImpPRODUTO_DESCRI.AsString := dmFn1101.cdsProdutosDESCRICAO_PRODUTO.AsString
         else
            dmFn1101.cdsItemVenda_ImpPRODUTO_DESCRI.AsString := 'Não Cadastrado';

         dmFn1101.cdsItemVenda_ImpCOD_IVENDA.AsInteger    := dmFn1101.cdsItemVenda_TempCOD_VENDA.AsInteger;
         dmFn1101.cdsItemVenda_ImpVALOR.AsFloat           := dmFn1101.cdsItemVenda_TempVALOR_BRUTO.AsFloat;
         dmFn1101.cdsItemVenda_ImpQUANTIDADE.AsFloat      := dmFn1101.cdsItemVenda_TempQUANTIDADE.AsFloat;
         dmFn1101.cdsItemVenda_ImpFABRICANTE.AsString     := dmFn1101.cdsProdutosFABRICANTE_PRODUTO.AsString;
         dmFn1101.cdsItemVenda_ImpICM.AsFloat             := ICM1;
         dmFn1101.cdsItemVenda_ImpREDUTOR.AsString        := Redutor1;
         dmFn1101.cdsItemVenda_ImpORDEM.AsInteger         := dmFn1101.cdsItemVenda_Imp.RecNo;
         dmFn1101.cdsItemVenda_ImpTRIBUTACAO.AsString     := Tributacao;
         dmFn1101.cdsItemVenda_ImpCLASSE.AsString         := dmFn1101.cdsProdutosCLASSE_PRODUTO.AsString;
         dmFn1101.cdsItemVenda_ImpUNIDADE.AsString        := dmFn1101.cdsProdutosUNIDADE_PRODUTO.AsString;
         dmFn1101.cdsItemVenda_ImpCFOP.AsString           := dmFn1101.cdsItemVenda_TempCFOP.AsString; // CAMPO EXCLUSIVO PARA IMPRESSÃO
         dmFn1101.cdsItemVenda_ImpDESCONTO.AsFloat        := dmFn1101.cdsItemVenda_TempDESCONTO.AsFloat;

         Valor_Liquido := Valor_Liquido + (dmFn1101.cdsItemVenda_ImpVALOR.AsFloat * dmFn1101.cdsItemVenda_ImpQUANTIDADE.AsFloat);

         dmFn1101.cdsItemVenda_Imp.Post;
      end;

      dmFn1101.cdsItemVenda_Temp.Next;
   end;

   // gera nova numeracao de documento

   if (frmFn1101.edtSerie.Value = 'CI') or (frmFn1101.edtSerie.Value = 'NF') or (frmFn1101.edtSerie.Value = 'PS') then
   begin
      dmFn1101.cdsSerie2.Close;
      dmFn1101.cdsSerie2.Params.ParamByName('SERIE').AsString := frmFn1101.edtSerie.Value;
      dmFn1101.cdsSerie2.Open;

      if not dmFn1101.cdsSerie2.IsEmpty then
      begin
         Impressao    := dmFn1101.cdsSerie2IMPRESSAO.AsString;

         Numero_Serie := dmFn1101.cdsSerie2NUMERO_SERIE.AsInteger + 1;

         dmFn1101.cdsSerie2.Edit;

         dmFn1101.cdsSerie2NUMERO_SERIE.AsInteger := Numero_Serie;

         dmFn1101.cdsSerie2.Post;

         dmFn1101.cdsSerie2.ApplyUpdates(0);
      end
      else
      begin
         Impressao    := '';

         Numero_Serie := 0;
      end;
   end;

   if frmFn1101.edtSerie.Value = 'CF' then 
   begin
      try
       frmProcess.Visible := False;

       ECF := TECF.Create;

       ECF.Executa := Bematech_FI_AbreCupom(pChar('')); // cabeçalho
       ECF.Analisa;

       dmFn1101.cdsItemVenda_Imp.First;
       while not dmFn1101.cdsItemVenda_Imp.Eof do
       begin
          ECF.Vende_item(IntToStr(dmFn1101.cdsItemVenda_ImpPRODUTO_COD.AsInteger), dmFn1101.cdsItemVenda_ImpPRODUTO_DESCRI.AsString, frmFn1101.edtCliente.EditText, dmFn1101.cdsItemVenda_ImpQUANTIDADE.AsFloat, dmFn1101.cdsItemVenda_ImpVALOR.AsFloat, dmFn1101.cdsItemVenda_ImpDESCONTO.AsFloat); // corpo

          dmFn1101.cdsItemVenda_Imp.Next;
       end;

       if dmFn1101.cdsVendaCAIXA_CPAGAMENTO.AsInteger > 1 then
          Venda_Prazo := True
       else
          Venda_Prazo := False;

       ecf.Fecha_cupom(dmFn1101.cdsVendaDESCRICAO_CPAGAMENTO.AsString, dmFn1101.cdsVendaCODIGO_VENDA.AsString, dmFn1101.cdsVendaVENDEDOR_VENDA.AsString,
                       dmFn1101.cdsVendaNOME_VENDEDOR.AsString, dmFn1101.cdsVendaVALORNOTA_VENDA.AsFloat, dmFn1101.cdsVendaDESCONTO_VENDA.AsFloat, Venda_Prazo, False); // fechamento

       ECF.Analisa;

       frmProcess.Visible := True;
      finally
       FreeAndNil(ECF);
      end;
   end;

   // repassa o numero do documento gerado no arquivo de itens

   dmFn1101.cdsItemVenda_Temp.First;

   while not dmFn1101.cdsItemVenda_Temp.Eof do
   begin
      if dmFn1101.cdsItemVenda_TempCOD_VENDA.AsInteger <> Numero_Serie then
      begin
         dmFn1101.cdsItemVenda_Temp.Edit;

         dmFn1101.cdsItemVenda_TempCOD_VENDA.AsInteger := Numero_Serie;
      end;

      dmFn1101.cdsItemVenda_Temp.Next;
   end;

   // grava fatura

   if dmFn1101.cdsFatura.State = dsInsert then
   begin
      dmFn1101.cdsFaturaCODIGO_FATURA.AsInteger         := Busca_Proximo('P_FATURA', 'CODIGO_FATURA');
      Numero_Fatura                                     := dmFn1101.cdsFaturaCODIGO_FATURA.AsInteger;
      dmFn1101.cdsFaturaCODIGO_CLIENTE_FATURA.AsInteger := frmFn1101.edtCliente.Value;
      dmFn1101.cdsFaturaPROPRIEDADE_FATURA.AsInteger    := frmFn1101.edtPropriedade.Value;
      dmFn1101.cdsFaturaEMISSAO_FATURA.AsDateTime       := frmFn1101.edtEmissao.Date;
      dmFn1101.cdsFaturaSERIE_FATURA.AsString           := frmFn1101.edtSerie.Value;
      dmFn1101.cdsFaturaCFOP_FATURA.AsString            := frmFn1101.edtCFOP.Value;
      dmFn1101.cdsFaturaNOTAFISCAL_FATURA.AsInteger     := Numero_Serie;
      dmFn1101.cdsFaturaVALOR_FATURA.AsFloat            := frmFn1101.Valor_Titulos;
      dmFn1101.cdsFaturaCOD_EMPRESA.AsString            := CodigoEmpresa1;  

      dmFn1101.cdsFatura.Post;

      dmFn1101.cdsFatura.ApplyUpdates(0);
   end;

   // marca as vendas faturadas

   dmFn1101.cdsGrid.First;

   frmFn1101.DBGrid1.DataSource.Enabled := False; // paralisa o cursor da dbgrid

   while not dmFn1101.cdsGrid.Eof do
   begin
      frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
      frmProcess.Refresh;

      if dmFn1101.cdsGridSELECIONADO.AsString = 'X' then
      begin
         dmFn1101.cdsVenda2.Close;
         dmFn1101.cdsVenda2.Params.ParamByName('CODIGO_VENDA').AsInteger := dmFn1101.cdsGridCOD_VENDA.AsInteger;
         dmFn1101.cdsVenda2.Open;

         // quita os titulos selecionados

         Chave1 := dmFn1101.cdsVenda2SERIE_VENDA.AsString + StrZero(dmFn1101.cdsVenda2NOTAFISCAL_VENDA.AsString, 6);

         dmFn1101.cdsReceber.close;
         dmFn1101.cdsReceber.Params.ParamByName('DUPLICATA').AsString := Chave1;
         dmFn1101.cdsReceber.Open;

         if dmFn1101.cdsReceber.RecordCount > 0 then
         begin
            dmFn1101.cdsReceber2.Append;

            if Historico1 = '' then
               Historico1 := Historico1 + ' / ';

            Historico1 := Historico1 + Trim(dmFn1101.cdsReceberDUPLICATA_RECEBER.AsString);

            Historico1 := dmFn1101.cdsReceberDUPLICATA_RECEBER.AsString;
            dmFn1101.cdsReceber2VALORPAGO_RECEBER.AsFloat    := (dmFn1101.cdsReceberVALOR_RECEBER.AsFloat - dmFn1101.cdsReceberVALORPAGO_RECEBER.AsFloat);
            dmFn1101.cdsReceber2MOVIMENTO_RECEBER.AsDateTime := DataSystem1;
            dmFn1101.cdsReceber2TIPO_BAIXA_RECEBER.AsString  := 'T';
            dmFn1101.cdsReceber2TIT_PRINC_RECEBER.AsString    := 'FT' + StrZero(IntToStr(Numero_Fatura), 6);

            if Length(dmFn1101.cdsReceber2HISTORICO_RECEBER.AsString) < 26 then
               dmFn1101.cdsReceber2HISTORICO_RECEBER.AsString := '/ Fatura: ' + StrZero(IntToStr(Numero_Fatura), 6);

            dmFn1101.cdsReceber2.Post;

            dmFn1101.cdsReceber2.ApplyUpdates(0);
         end;
      end;

      dmFn1101.cdsGrid.Next;
   end;

   frmFn1101.DBGrid1.DataSource.Enabled := True; // libera o cursor da dbGrid

   if Length(Historico1) > 60 then
      Historico1 := LeftStr(Historico1, 57) + '...';

   for A := 1 to Contador1 do
   begin
      dmFn1101.cdsReceber3.Append;

      dmFn1101.cdsReceber3TIPO_DOCUMENTO_RECEBER.AsInteger   := 1;
      dmFn1101.cdsReceber3CODIGO_CLIENTE_RECEBER.AsInteger   := frmFn1101.edtCliente.Value;

      if (A = 1) and (edtData01.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         frmFn1101.Numero_Fatura1                              := dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString;
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor01.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData01.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData01.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit1.Field.AsInteger;
      end;

      if (A = 2) and (edtData02.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor02.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData02.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData02.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit2.Field.AsInteger;
      end;

      if (A = 3) and (edtData03.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor03.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData03.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData03.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit3.Field.AsInteger;
      end;

      if (A = 4) and (edtData04.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor04.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData04.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData04.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit4.Field.AsInteger;
      end;

      if (A = 5) and (edtData05.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor05.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData05.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData05.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit5.Field.AsInteger;
      end;

      if (A = 6) and (edtData06.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor06.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData06.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData06.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit6.Field.AsInteger;
      end;

      if (A = 7) and (edtData01.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor07.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData07.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData07.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit7.Field.AsInteger;
      end;

      if (A = 8) and (edtData01.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor08.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData08.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData08.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit8.Field.AsInteger;
      end;

      if (A = 9) and (edtData01.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor09.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData09.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData09.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit9.Field.AsInteger;
      end;

      if (A = 10) and (edtData01.Field.AsString <> '') then
      begin
         dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString        := 'FT' + StrZero(IntToStr(Numero_Fatura), 6) + '-' + StrZero(IntToStr(A),2);
         dmFn1101.cdsReceber3VALOR_RECEBER.AsFloat             := edtValor10.Field.AsFloat;
         dmFn1101.cdsReceber3EMISSAO_RECEBER.AsDateTime        := edtData10.Field.AsDateTime;
         dmFn1101.cdsReceber3VENCIMENTO_RECEBER.AsDateTime     := edtData10.Field.AsDateTime;
         dmFn1101.cdsReceber3CODIGO_VENDEDOR_RECEBER.AsInteger := DBEdit10.Field.AsInteger;
      end;

      dmFn1101.cdsReceber3CODIGO_PORTADOR_RECEBER.AsInteger    := 1;
      dmFn1101.cdsReceber3TIPO_DUP_RECEBER.AsString            := 'I';
      dmFn1101.cdsReceber3HISTORICO_RECEBER.AsString           := Historico1;
      dmFn1101.cdsReceber3COD_EMPRESA.AsString                 := CodigoEmpresa1;

      dmFn1101.cdsReceber3.Post;
   end;

   dmFn1101.cdsReceber3.ApplyUpdates(0);

   dmFn1101.cdsGrid.First;

   frmFn1101.DBGrid1.DataSource.Enabled := False; // paralisa o cursor da dbgrid

   while not dmFn1101.cdsGrid.Eof do
   begin
      frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
      frmProcess.Refresh;

      if dmFn1101.cdsGridSELECIONADO.AsString = 'X' then
      begin
         dmFn1101.cdsVenda2.Close;
         dmFn1101.cdsVenda2.Params.ParamByName('CODIGO_VENDA').AsInteger := dmFn1101.cdsGridCOD_VENDA.AsInteger;
         dmFn1101.cdsVenda2.Open;

         if not dmFn1101.cdsVenda2.IsEmpty then
         begin
            dmFn1101.cdsVenda2.Edit;

            dmFn1101.cdsVenda2NRFATURA_VENDA.AsString := dmFn1101.cdsFaturaCODIGO_FATURA.AsString;

            dmFn1101.cdsVenda2.Post;

            dmFn1101.cdsVenda2.ApplyUpdates(0);
         end;
      end;

      dmFn1101.cdsGrid.Next;
   end;

   dmFn1101.cdsGrid.First;

   frmFn1101.DBGrid1.DataSource.Enabled := True; // libera o cursor da dbgrid

   // quita os titulos selecionados

   frmProcess.Release;
   frmProcess := nil;

   // imprime documentos

   if frmFn1101.edtSerie.Value = 'CI' then
   begin
      Numero_Serie2 := IntToStr(Numero_Serie);

      Numero_Serie2 := StrZero(Numero_Serie2, 6);

      Observacao    := 'Nº Fatura: ' + Numero_Serie2;
   end;

   if frmFn1101.edtSerie.Value = 'NF' then
   begin
      dmImpNF := TdmImpNF.Create(Self);

      Numero_Serie2 := IntToStr(Numero_Serie);

      Numero_Serie2 := StrZero(Numero_Serie2, 6);

      dmImpNF.monta_nf(Numero_Serie, 'FN11', frmFn1101.Valor_Titulos, 0, False);
   end;

   frmNum_Fatura := TfrmNum_Fatura.Create(Self);

   frmNum_Fatura.Edit1.Text := IntToStr(Numero_Fatura);
   frmNum_Fatura.Refresh;

   frmNum_Fatura.ShowModal;
   frmNum_Fatura.Release;
   frmNum_Fatura := nil;

   Close;
end;

procedure TfrmFn1101_01.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn1101_01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;
end;

procedure TfrmFn1101_01.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
   btnGravar.Enabled := (dmFn1101.cdsFatura.Active) and
                        (dmFn1101.cdsFatura.State in [dsInsert, dsEdit]);

   Panel1.Enabled := btnGravar.Enabled;
end;

procedure TfrmFn1101_01.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

end.
