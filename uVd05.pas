unit uVd05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, DBCtrls, DBClient, Mask, JvExMask, JvToolEdit, Menus;

type
  TfrmVd05 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    dsVendas: TDataSource;
    StatusBar1: TStatusBar;
    dsClientes: TDataSource;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    edtSerie: TEdit;
    Label1: TLabel;
    edtDataFinal: TJvDateEdit;
    Label2: TLabel;
    edtDataInicial: TJvDateEdit;
    Label4: TLabel;
    Panel3: TPanel;
    cobOpcoes: TComboBox;
    edtPesquisar: TMaskEdit;
    Label3: TLabel;
    Label5: TLabel;
    btnSelecionar: TBitBtn;
    Label6: TLabel;
    edtReserva: TEdit;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cobOpcoesSelect(Sender: TObject);
    procedure edtPesquisarEnter(Sender: TObject);
    procedure edtPesquisarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel3Exit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    Filtra_CF: Boolean;
  end;

var
  frmVd05: TfrmVd05;

implementation

uses uDmPrincipal,uCd0902, udmVd05, uGlobal,
  udmRelatorios, Unit1;

{$R *.dfm}

procedure TfrmVd05.BitBtn4Click(Sender: TObject);
begin
    close;

end;

procedure TfrmVd05.BitBtn1Click(Sender: TObject);
Var Sql1 : String;
begin
    With dmVd05 do
    begin
        cdsVendas.Close;
        Sql1 := ' SELECT * FROM P_VENDAS ' +
                ' WHERE (TIPO_VENDA<> ''O'') AND ' +
                ' COD_EMPRESA = '+ QuotedStr(CodigoEmpresa1) +
                ' AND DATA_VENDA >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataInicial.Date)) +
                ' AND DATA_VENDA <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFinal.Date));
        if edtSerie.Text <> '' then
        begin
           if Filtra_CF then
           begin
              Sql1 := Sql1 + ' AND SERIE_VENDA <> ''CF'' ';
           end;

           if (edtReserva.Text <> 'Æ') and (edtSerie.Text = 'CI') then
           begin
              Sql1 := Sql1 +' AND SERIE_VENDA <> ''CI'' ';
           end
           else
           begin
              Sql1 := Sql1 + ' AND SERIE_VENDA = '+ QuotedStr(edtSerie.Text);
           end;
        end
        else
        begin
           if edtReserva.Text <> 'Æ' then
           begin
              Sql1 := Sql1 + ' AND SERIE_VENDA <> ''CI'' ';
           end;
        end;

        cdsVendas.CommandText := Sql1;
        cdsVendas.Open;

        edtPesquisar.EditMask := '!99999;0; ';
        cdsVendas.IndexFieldNames := 'CODIGO_VENDA';
        cobOpcoes.ItemIndex := 0;
    end;
    DBGrid1.SetFocus;
end;

procedure TfrmVd05.FormCreate(Sender: TObject);
begin
   Filtra_CF := False;
   dmVd05 := TDmVd05.Create(Self);
   {With dmVd05 do
   begin
      cdsVendas.Close;
      cdsVendas.Params.ParamByName('TIPO').AsString     := 'O';
      cdsVendas.Params.ParamByName('EMPRESA').AsInteger := StrToInt(CodigoEmpresa1);
      cdsVendas.Params.ParamByName('DATAINICIO').AsDate := edtDataInicial.Date;
      cdsVendas.Params.ParamByName('DATAFINAL').AsDate  := edtDataFinal.Date;
      cdsVendas.Open;
      
      edtPesquisar.EditMask:='!99999;0; ';
      cdsVendas.IndexFieldNames:='CODIGO_VENDA';
      cobOpcoes.ItemIndex:=0;
   end;}
end;

procedure TfrmVd05.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

    end;

end;

procedure TfrmVd05.cobOpcoesSelect(Sender: TObject);
begin
    edtPesquisar.Text:='';
    With dmVd05 do
    begin
        case cobOpcoes.ItemIndex of
          0: // CODIGO DA VENDA
            begin
                edtPesquisar.EditMask := '!99999;0; ';
                cdsVendas.IndexFieldNames := 'CODIGO_VENDA';

            end;
          1: //DATA DA VENDA
             begin
                edtPesquisar.EditMask := '!99/99/9999;1; ';
                cdsVendas.IndexFieldNames := 'DATA_VENDA'
             end         ;

          2: // DATA DE EXCLUSÃO
             begin
                edtPesquisar.EditMask := '!99/99/9999;1; ';
                cdsVendas.IndexFieldNames := 'EXCLUSAO_VENDA'

             end         ;
          3:  // VENDEDOR
             begin
                edtPesquisar.EditMask := '!99999;0; ';
                cdsVendas.IndexFieldNames := 'VENDEDOR_VENDA';

             end;

          4:  // CODIGO DO CLIENTE
             begin
                edtPesquisar.EditMask := '!99999;0; ';
                cdsVendas.IndexFieldNames := 'CLIENTE_VENDA';

             end;

          5:  // NUMERO DA NOTA FISCAL
             begin
                edtPesquisar.EditMask := '!99999;0; ';
                cdsVendas.IndexFieldNames := 'NOTAFISCAL_VENDA';

             end;
          6: // SERIE DO DOCUMENTO
             begin
                edtPesquisar.EditMask := '!;0; ';
                cdsVendas.IndexFieldNames := 'SERIE_VENDA';

             end;
        end ;
      end;
end;

procedure TfrmVd05.edtPesquisarEnter(Sender: TObject);
begin
    edtPesquisar.SelStart := 0;
    edtPesquisar.SelLength := 50;

end;

procedure TfrmVd05.edtPesquisarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    edtPesquisar.SelStart := 0;
    edtPesquisar.SelLength := 50;

end;

procedure TfrmVd05.edtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_RETURN then
    begin
        with dmVd05 do
        begin

          if edtPesquisar.Text = '  /  /    ' then
          begin
             dbgrid1.SetFocus;
             exit;

          end;

          if trim(edtPesquisar.Text) = '' then
          begin
             dbgrid1.SetFocus;
             exit;

          end;
          cdsVendas.FindNearest([trim(edtPesquisar.text)]);

        end ;
        Panel3.Visible:=false;
        dbGrid1.SetFocus;
    end;

end;

procedure TfrmVd05.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   with dmVd05 do
   begin
       if (cdsVendas.Active) and (not cdsVendas.IsEmpty) then
       begin
           if key = 121 then
           begin
               Panel3.Visible:=true;
               Panel3.SetFocus;
               cobOpcoes.SetFocus;
           end;
       end;
   end;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

procedure TfrmVd05.Panel3Exit(Sender: TObject);
begin
    Panel3.Visible:=false;
    dbGrid1.SetFocus;

end;

procedure TfrmVd05.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
try
   if dmVd05.cdsVendas.IsEmpty then
      exit;
      
   dmRelatorios := tdmRelatorios.Create(self);
    if key=vk_return then
    begin
         with dmRelatorios do
         begin
             //*****************************************************************
             cdsLoja0330.Close;
             cdsLoja0330.CreateDataSet;
             cdsLoja0330.Open;
             //*****************************************************************
             cdsLoja0330_Itens.Close;
             cdsLoja0330_Itens.CreateDataSet;
             cdsLoja0330_Itens.Open;
             with dmVd05 do
             begin
                 //*************************************************************
                 cdsLoja0330.Insert;
                 cdsLoja0330CODIGO_VENDA.AsInteger      :=cdsVendasCODIGO_VENDA.AsInteger;
                 cdsLoja0330VENDEDOR_VENDA.AsInteger    :=cdsVendasVENDEDOR_VENDA.AsInteger;
                 cdsLoja0330PARCEIRO_VENDA.AsInteger    :=cdsVendasPARCEIRO_VENDA.AsInteger;
                 cdsLoja0330CLIENTE_VENDA.AsInteger     :=cdsVendasCLIENTE_VENDA.AsInteger ;
                 cdsLoja0330PROPRIEDADE_VENDA.AsInteger :=cdsVendasPROPRIEDADE_VENDA.AsInteger;
                 cdsLoja0330NOMELCIENTE_VENDA.AsString  :=cdsVendasNOMECLIENTE_VENDA.AsString;
                 cdsLoja0330DATA_VENDA.AsDateTime       :=cdsVendasDATA_VENDA.AsDateTime;
                 cdsLoja0330EXCLUSAO_VENDA.AsString   :=cdsVendasEXCLUSAO_VENDA.AsString;
                 cdsLoja0330HORA_VENDA.AsDateTime       :=cdsVendasHORA_VENDA.AsDateTime;
                 cdsLoja0330FATURA_VENDA.AsString       :=cdsVendasFATURA_VENDA.AsString;
                 cdsLoja0330DESCONTO_VENDA.AsCurrency   :=cdsVendasDESCONTO_VENDA.AsCurrency;
                 cdsLoja0330DESCON_ESP_VENDA.AsCurrency :=cdsVendasDESCON_ESP_VENDA.AsCurrency;
                 cdsLoja0330CPAGAMENTO_VENDA.AsInteger  :=cdsVendasCPAGAMENTO_VENDA.AsInteger;
                 cdsLoja0330CHAVE_VENDA.AsString        :=cdsVendasCHAVE_VENDA.AsString;
                 cdsLoja0330CAIXA_VENDA.AsInteger       :=cdsVendasCAIXA_VENDA.AsInteger;
                 cdsLoja0330TIPO_PRECO_VENDA.AsString   :=cdsVendasTIPO_PRECO_VENDA.AsString;
                 cdsLoja0330CFOP_VENDA.AsString         :=cdsVendasCFOP_VENDA.AsString;
                 cdsLoja0330NOTAFISCAL.AsInteger        :=cdsVendasNOTAFISCAL_VENDA.AsInteger;
                 cdsLoja0330SERIE_VENDA.AsString        :=cdsVendasSERIE_VENDA.AsString;
                 cdsLoja0330CONFIRMA_VENDA.AsString     :=cdsVendasCONFIRMA_VENDA.AsString;
                 cdsLoja0330EMISSAO_VENDA.AsDateTime    :=cdsVendasEMISSAO_VENDA.AsDateTime;
                 cdsLoja0330DATASAIDA_VENDA.AsDateTime  :=cdsVendasDATASAIDA_VENDA.AsDateTime;
                 cdsLoja0330VALORNOTA_VENDA.AsCurrency  :=cdsVendasVALORNOTA_VENDA.AsCurrency;
                 cdsLoja0330BASEICMS_VENDA.AsCurrency   :=cdsVendasBASEICMS_VENDA.AsCurrency;
                 cdsLoja0330IPI_VENDA.AsCurrency        :=cdsVendasIPI_VENDA.AsCurrency;
                 cdsLoja0330TRANSPORTA_VENDA.Value      :=cdsVendasTRANSPORTA_VENDA.AsInteger;
                 cdsLoja0330PESOBRUTO_VENDA.AsCurrency  :=cdsVendasPESOBRUTO_VENDA.AsCurrency;
                 cdsLoja0330PESOLIQUIDO_VENDA.AsCurrency:=cdsVendasPESOLIQUIDO_VENDA.AsCurrency;
                 cdsLoja0330OBSERVACAO_VENDA.AsString   :=cdsVendasOBSERVACAO_VENDA.AsString;
                 cdsLoja0330PARCELAS_VENDA.AsInteger    :=cdsVendasPARCELAS_VENDA.AsInteger;
                 cdsLoja0330VALOR01.AsCurrency          :=cdsVendasVALOR01_VENDA.AsCurrency;
                 cdsLoja0330VALOR02.AsCurrency          :=cdsVendasVALOR02_VENDA.AsCurrency;
                 cdsLoja0330VALOR03.AsCurrency          :=cdsVendasVALOR03_VENDA.AsCurrency;
                 cdsLoja0330VALOR04.AsCurrency          :=cdsVendasVALOR04_VENDA.AsCurrency;
                 cdsLoja0330VALOR05.AsCurrency          :=cdsVendasVALOR05_VENDA.AsCurrency;
                 cdsLoja0330VALOR06.AsCurrency          :=cdsVendasVALOR06_VENDA.AsCurrency;
                 cdsLoja0330VALOR07.AsCurrency          :=cdsVendasVALOR07_VENDA.AsCurrency;
                 cdsLoja0330VALOR08.AsCurrency          :=cdsVendasVALOR08_VENDA.AsCurrency;
                 cdsLoja0330VALOR09.AsCurrency          :=cdsVendasVALOR09_VENDA.AsCurrency;
                 cdsLoja0330VALOR10.AsCurrency          :=cdsVendasVALOR10_VENDA.AsCurrency;
                 cdsLoja0330VALOR11.AsCurrency          :=cdsVendasVALOR11_VENDA.AsCurrency;
                 cdsLoja0330VALOR12.AsCurrency          :=cdsVendasVALOR12_VENDA.AsCurrency;
                 cdsLoja0330VALOR13.AsCurrency          :=cdsVendasVALOR13_VENDA.AsCurrency;
                 cdsLoja0330VALOR14.AsCurrency          :=cdsVendasVALOR14_VENDA.AsCurrency;
                 cdsLoja0330VALOR15.AsCurrency          :=cdsVendasVALOR15_VENDA.AsCurrency;
                 cdsLoja0330VENCIMENT01.AsDateTime      :=cdsVendasVENCIMEN01_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT02.AsDateTime      :=cdsVendasVENCIMEN02_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT03.AsDateTime      :=cdsVendasVENCIMEN03_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT04.AsDateTime      :=cdsVendasVENCIMEN04_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT05.AsDateTime      :=cdsVendasVENCIMEN05_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT06.AsDateTime      :=cdsVendasVENCIMEN06_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT07.AsDateTime      :=cdsVendasVENCIMEN07_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT08.AsDateTime      :=cdsVendasVENCIMEN08_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT09.AsDateTime      :=cdsVendasVENCIMEN09_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT10.AsDateTime      :=cdsVendasVENCIMEN10_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT11.AsDateTime      :=cdsVendasVENCIMEN11_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT12.AsDateTime      :=cdsVendasVENCIMEN12_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT13.AsDateTime      :=cdsVendasVENCIMEN13_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT14.AsDateTime      :=cdsVendasVENCIMEN14_VENDA.AsDateTime;
                 cdsLoja0330VENCIMENT15.AsDateTime      :=cdsVendasVENCIMEN15_VENDA.AsDateTime;
                 cdsLoja0330.Post;
                 //*************************************************************
                 qryVendasItem.Close;
                 qryVendasItem.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
                 qryVendasItem.ParamByName('VENDA').AsInteger  :=cdsVendasCODIGO_VENDA.AsInteger;
                 qryVendasItem.Open;

                 if not(qryVendasItem.Eof) then
                 begin
                     while not ( qryVendasItem.Eof ) do
                     begin
                         cdsLoja0330_Itens.Insert;
                         cdsLoja0330_ItensCODIGO_IVENDA.AsInteger      :=cdsLoja0330CODIGO_VENDA.AsInteger;
                         cdsLoja0330_ItensPRODUTO_IVENDA.AsInteger     :=qryVendasItemPRODUTO_IVENDA.AsInteger;
                         cdsLoja0330_ItensDESCRICAO_IVENDAS.AsString   :=qryVendasItemDESCRICAO_IVENDAS.AsString;
                         cdsLoja0330_ItensVALORBRUTO_IVENDAS.AsCurrency:=qryVendasItemVALORBRUTO_IVENDAS.AsCurrency;
                         cdsLoja0330_ItensQUANTIDADE_IVENDAS.AsCurrency:=qryVendasItemQUANTIDADE_IVENDAS.AsCurrency;
                         cdsLoja0330_ItensGRADE_IVENDAS.AsString       :=qryVendasItemGRADE_IVENDAS.AsString;
                         cdsLoja0330_ItensPROMOCAO_IVENDAS.AsString    :=qryVendasItemPROMOCAO_IVENDAS.AsString;
                         cdsLoja0330_ItensFABRICA_IVENDAS.AsString     :=qryVendasItemFABRICA_IVENDAS.AsString;
                         cdsLoja0330_ItensSERIE_IVENDAS.AsString       :=qryVendasItemSERIE_IVENDAS.AsString;
                         cdsLoja0330_ItensDESCONTO_IVENDAS.AsCurrency  :=qryVendasItemDESCONTO_IVENDAS.AsCurrency;
                         cdsLoja0330_ItensDESCONTO_IVENDAS.AsCurrency  :=qryVendasItemDESCONTO_IVENDAS.AsCurrency;
                         cdsLoja0330_ItensICM_IVENDAS.AsCurrency       :=qryVendasItemICM_IVENDAS.AsCurrency;
                         cdsLoja0330_ItensIPI_IVENDAS.AsCurrency       :=qryVendasItemIPI_IVENDAS.AsCurrency;
                         cdsLoja0330_ItensREDUTOR_IVENDAS.AsCurrency   :=qryVendasItemREDUTOR_IVENDAS.AsCurrency;
                         cdsLoja0330_ItensTRIBUTACAO_IVENDAS.AsString  :=qryVendasItemTRIBUTACAO_IVENDAS.AsString;
                         cdsLoja0330_itens.Post;
                         qryVendasItem.Next;

                     end ;
                     PPdBText27.Width:=3.2813;
                     ppDBText27.Font.Size:=9;
                     ppDBText27.font.Style:=[];
                end else
                 begin
                     cdsLoja0330_Itens.Insert;
                     cdsLoja0330_ItensDESCRICAO_IVENDAS.AsString:='           >>> ITENS NÃO LOCALIZADOS <<<';
                     PPdBText27.Width:=6.75;
                     ppDBText27.Font.Size:=14;
                     ppDBText27.font.Style:=[fsbold];
                     cdsLoja0330_Itens.Post;
                 end ;

             end ;
             rptLoja0330.Print;

         end ;

    end ;
finally
   FreeAndNil(dmRelatorios);
end;

end;

procedure TfrmVd05.DBGrid1Enter(Sender: TObject);
begin
    //self.KeyPreview:=false;
end;

procedure TfrmVd05.DBGrid1Exit(Sender: TObject);
begin
    self.KeyPreview:=True;
    
end;

procedure TfrmVd05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmVd05.Tag <> 1 then
      dmVd05.cdsVendas.Close;
end;

procedure TfrmVd05.btnSelecionarClick(Sender: TObject);
begin
   frmVd05.Tag := 1;
   close;
end;

procedure TfrmVd05.FormShow(Sender: TObject);
begin
   edtDataInicial.Date := DataSystem1;
   edtDataFinal.Date   := DataSystem1;
end;

end.

