{
 SISTEMA              --> MultWin
 PROGRAMA             --> EST002
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> JETER DE O. REIS JÚNIOR
 DATA DE CONCEPCAO    --> 25/01/2007
 FINALIDADE           --> VENDAS / ORÇAMENTOS / NOTAS FISCAIS / CUPONS FISCAIS
 COMENTARIO           --> Tag = 0 »

                          Tag = 1 » Diz ao formulário carregar o orçamento/venda para alteração

                          Tag = 2 » Diz ao formulário Imprimir o orçamento

                          Tag = 3 » Diz ao formulário excluir o orçamento

                          Tag = 4 » Diz ao formulário cancelar devolução de venda

                          Tag = 5 » Diz ao formulário cancelar devolução de compra

                          Tag = 6 » Diz ao formulário cancelar nota fiscal de remessa

                          Tag = 7 » Diz ao formulário carregar para impressão de pedido

                          Tag = 8 » Diz ao formulário carregar para reimpressão nota fiscal

                          Tag = 9 » Diz ao formulário cancelar venda

}
unit uVd1101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  ComCtrls, Menus, JvToolEdit, JvExMask, JvBaseEdits, JvSpin, JvExStdCtrls,
  JvEdit, JvValidateEdit, uMultiClasses, DBClient, uECF, JvTrayIcon,
  JvComponentBase, JvBalloonHint, FMTBcd, SqlExpr, uDaruma;

type
  TfrmVd1101 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    dsVendas: TDataSource;
    pnNome_vend: TPanel;
    btnFechar: TBitBtn;
    btnGravar: TBitBtn;
    btnImprimir: TBitBtn;
    GroupBox2: TGroupBox;
    pnNome_Cli: TPanel;
    edPesquisa: TEdit;
    edGrade: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    dsVendasItem: TDataSource;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    dbEdVendedor: TEdit;
    DBEdit1: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StatusBar1: TStatusBar;
    PopupMenu1: TPopupMenu;
    Alterar1: TMenuItem;
    N1: TMenuItem;
    Excluiritemdalista1: TMenuItem;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    GroupBox5: TGroupBox;
    Label7: TLabel;
    GroupBox6: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox7: TGroupBox;
    pnCFOP: TPanel;
    edDesc: TEdit;
    edValor: TEdit;
    edCFOP: TMaskEdit;
    GroupBox8: TGroupBox;
    edTipoPgt: TEdit;
    pnPgt: TPanel;
    SpeedButton3: TSpeedButton;
    pnlAlterar: TPanel;
    BitBtn1: TBitBtn;
    Panel8: TPanel;
    JvCalcEdit2: TJvCalcEdit;
    Label12: TLabel;
    Label13: TLabel;
    edQtd: TJvValidateEdit;
    edQtd2: TJvValidateEdit;
    edValorUni: TJvValidateEdit;
    edCST: TEdit;
    Label14: TLabel;
    edICM: TJvValidateEdit;
    Label15: TLabel;
    GroupBox10: TGroupBox;
    lbNome_Vend: TLabel;
    lbNome_Cli: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    BitBtn2: TBitBtn;
    edSerie: TComboBox;
    Label18: TLabel;
    cdsVendasItem: TClientDataSet;
    cdsVendasItemCODIGO_IVENDA: TIntegerField;
    cdsVendasItemPRODUTO_IVENDA: TIntegerField;
    cdsVendasItemDESCRICAO_IVENDAS: TStringField;
    cdsVendasItemVALORBRUTO_IVENDAS: TFMTBCDField;
    cdsVendasItemQUANTIDADE_IVENDAS: TFMTBCDField;
    cdsVendasItemGRADE_IVENDAS: TStringField;
    cdsVendasItemPROMOCAO_IVENDAS: TStringField;
    cdsVendasItemFABRICA_IVENDAS: TStringField;
    cdsVendasItemSERIE_IVENDAS: TStringField;
    cdsVendasItemDESCONTO_IVENDAS: TFMTBCDField;
    cdsVendasItemICM_IVENDAS: TFMTBCDField;
    cdsVendasItemIPI_IVENDAS: TFMTBCDField;
    cdsVendasItemREDUTOR_IVENDAS: TFMTBCDField;
    cdsVendasItemTRIBUTACAO_IVENDAS: TStringField;
    cdsVendasItemFISCAL_IVENDAS: TStringField;
    cdsVendasItemGARANTIA_IVENDAS: TStringField;
    cdsVendasItemTECNICO_IVENDAS: TIntegerField;
    cdsVendasItemALTURA_IVENDAS: TFMTBCDField;
    cdsVendasItemLARGURA_IVENDAS: TFMTBCDField;
    cdsVendasItemCOMPRIMENTO_VENDAS: TFMTBCDField;
    cdsVendasItemQTDE_VENDAS: TIntegerField;
    cdsVendasItemCOMPLEMENTO: TStringField;
    cdsVendasItemCOD_EMPRESA: TIntegerField;
    cdsVendasItemVALORTOTAL: TFMTBCDField;
    cdsVendasItemFABRICA_PRODUTO: TIntegerField;
    cdsVendasItemFABRICANTE_PRODUTO: TStringField;
    cdsVendasItemUNIDADE_PRODUTO: TStringField;
    cdsVendasItemID_VENDA_ITEM: TIntegerField;
    cdsVendasItemCODIGO_GRADE: TStringField;
    cdsVendasItemCLASSE_IVENDA: TStringField;
    cdsVendasItemCFOP: TStringField;
    pnlPArceiros: TPanel;
    SpeedButton4: TSpeedButton;
    Label20: TLabel;
    Panel7: TPanel;
    lblNome_parceiro: TLabel;
    GroupBox9: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    edtCodParceiro: TJvValidateEdit;
    edtCFOPInd: TMaskEdit;
    procedure dbEdVendedorExit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPesquisaEnter(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure edPesquisaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dbEdVendedorEnter(Sender: TObject);
    procedure dbEdVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edValorUniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edValorUniExit(Sender: TObject);
    procedure edCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCFOPExit(Sender: TObject);
    procedure edDescExit(Sender: TObject);
    procedure edDescKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edValorExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edDescEnter(Sender: TObject);
    procedure edTipoPgtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edTipoPgtExit(Sender: TObject);
    procedure edTipoPgtEnter(Sender: TObject);
    procedure edValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbEdVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure JvCalcEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGradeEnter(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Excluiritemdalista1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure edQtdEnter(Sender: TObject);
    procedure edValorUniEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edQtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQtd2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCSTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edICMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCSTEnter(Sender: TObject);
    procedure edICMEnter(Sender: TObject);
    procedure edGradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure JvCalcEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function Desconto_acima_do_maximo(Valor: Real): Boolean;
    procedure BitBtn2Click(Sender: TObject);
    procedure edSerieExit(Sender: TObject);
    procedure edSerieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtCFOPIndKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCFOPIndEnter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure edtCodParceiroExit(Sender: TObject);
    procedure edtCodParceiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodParceiroKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    UsouReserva: Boolean;
    ECF: TECF;
    procedure Limpa_campos();
    function Verifica_desuso():Boolean;
    function Senha_gerente(): Boolean;
    function Item_em_promocao():Boolean;
    function Cfop_valido(CFOP: TCustomEdit): Boolean;
    function Verifica_desconto(): Boolean;
  public
    { Public declarations }
        Parametros: TParametros_Venda;
        id_nova_venda1, Num_serv: integer;//Essa variável recebe o id da nova venda para ser excluida caso o pedido seja abandonado antes de conclui-se
        Valor_Bruto,Valor_liquido,Desconto1,Desc_Porcento, xAliq, xRedutor, ValorDesc1, ValorCubico1, Largura1, Altura1:real;
        Tipo_lancamento1, EST_CLI, CNTB1, Classe1, Serie1 {Serie do item individual}, Serie2{Tipo do lançamento}, PEM{Posição de entrada no menu}: String;
        Fechar_formulario, Propriedade, Novo_cliente, Desconto_ja_liberado: Boolean;
        Interrogacao : String;
    function Carrega_venda(): Boolean;
  end;

var
  frmVd1101: TfrmVd1101;
  Alterou_dados_cliente, Nome_cliente: String;


implementation

uses uGlobal, uF12, uF4, uF7, uDmPrincipal, uF8, uFinanceiro, uVd1101_1,
  uVd1101_2, udmProgs, uVd1101_3, uVd1101_4, uVd1101_5, Math, uVd1101_6,
  uAltF12, uVd1101_7, uDmVd1101, udmF7, uDmF8, uDmF12, udmF4, uDmAltF12,
  uFn0201, udmF6, uF6, uProcess, udmImpNF, uVd1101_9, uConsulta, uEST002,
  uVd1101_10;
{$R *.dfm}

procedure TfrmVd1101.dbEdVendedorExit(Sender: TObject);
var
Ctrl: TWinControl;
begin
  dbEdVendedor.Text := IntToStr(StringToInt(dbEdVendedor.Text));
  StatusBar1.Panels[0].Text := '';

  Try

   Ctrl:= ActiveControl;

   if (Ctrl=btnFECHAR) Then
      exit ;
   if dbEdVendedor.Text <> '' then
   begin
      With dmvd1101 do
      begin

         cdsVendedor.Close;
         cdsVendedor.Params.ParamByName('COD_VENDEDOR').AsInteger := StrToInt(dbEdVendedor.Text);
         cdsVendedor.Params.ParamByName('ID_EMPRESA').AsString := CodigoEmpresa1;
         cdsVendedor.Open;

         if cdsVendedor.RecordCount = 0 then
         begin
            cdsVendedor.Close;
            lbNome_vend.Caption := '';
            //ShowMessage('Vendedor não encontrado.');
            dbEdVendedor.SetFocus;
            exit;
         end
         else
         begin
            // Verifica se eh vendedor
            if cdsVendedorFUNCAO_VENDEDOR.AsString = 'V' then
              lbNome_vend.Caption := copy(cdsVendedorNOME_VENDEDOR.Value,1,22)
            else
            begin
               cdsVendedor.Close;
               lbNome_vend.Caption := '';
               ShowMessage('Funcionário não é vendedor');
               dbEdVendedor.SetFocus;
               exit;
            end;
         end;
      end;
   end
   else
      lbNome_vend.Caption := '';
  Finally

  end ;
end;

procedure TfrmVd1101.DBEdit1Exit(Sender: TObject);
var
Ctrl: TWinControl;
erro,CPF1: string;
begin
  DBEdit1.Text := IntToStr(StringToInt(DBEdit1.Text));
  StatusBar1.Panels[0].Text := '';

  Try

   Ctrl:= ActiveControl;

   if (Ctrl=btnFECHAR) Then
      exit ;
   if DBEdit1.Text <> '' then
   begin
      With dmvd1101 do
      begin
         cdsCliente.Close;
         {cdsCliente.CommandText := 'SELECT C.*,' +
                                   ' CI.DESCRICAO_CIDADE AS NOME_CIDADE' +
                                   '  FROM E_CLIENTE C' +
                                   '  LEFT OUTER JOIN E_CIDADE CI ON (C.CIDADE_CLIENTE=CI.CODIGO_CIDADE)' +
                                   '  WHERE CODIGO_CLIENTE=:CLIENTE AND TIPO_CLIENTE=0';}

         cdsCliente.Params.ParamByName('CLIENTE').AsString := DBEdit1.Text;

         if (PEM = '02') or (PEM = '05') then
            cdsCliente.Params.ParamByName('TIPO').AsInteger := 2;

         cdsCliente.Open;

         if cdsCliente.RecordCount = 0 then
         begin
            cdsCliente.Close;
            lbNome_Cli.Caption := '';
            ShowMessage(GroupBox2.Caption + ' não encontrado.');
            DBEdit1.SetFocus;
            exit;
         end
         else
         begin
            if GroupBox2.Caption = 'Cliente' then
            begin
               Repeat
                  if Novo_cliente then
                     Novo_cliente := False;

                  Nome_cliente := cdsClienteNOME_CLIENTE.Value;

                  if cdsClienteNOME_CLIENTE.Value <> '- VENDA AO CONSUMIDOR -' then
                  begin
                     if Existe(cdsClienteSTATUS_CLIENTE.Value,'FA') then
                     begin
                        cdsCliente.Close;
                        lbNome_Cli.Caption := '';
                        ShowMessage('Cliente não esta ativo.');
                        DBEdit1.SetFocus;
                        exit;
                     end;

                     if Parametros.Cliente_negativado then
                     begin
                        if cdsClienteDATABLOQUEIO_CLIENTE.AsString <> '' then
                        begin
                           ShowMessage('Cliente negativado.');

                           // Chama a tela de senha e verifica se a mesma esta correta
                           if not Senha_gerente then
                              exit;
                        end;
                     end;

                     EST_CLI := cdsClienteESTADO_CLIENTE.AsString;
                     CNTB1   := cdsClienteCONTRIBUINTE_CLIENTE.AsString;

                     dmvd1101.cdsPropriedade.Close;
                     dmvd1101.cdsPropriedade.Close;
                     dmvd1101.qryPropriedade.ParamByName('CLIENTE').AsInteger := dmvd1101.cdsClienteCODIGO_CLIENTE.AsInteger;
                     dmvd1101.cdsPropriedade.Open;
                     dmvd1101.cdsPropriedade.Open;

                     if dmvd1101.cdsPropriedade.RecordCount > 0 then
                     begin
                        Propriedade := False;
                        frmVd1101_7 := TfrmVd1101_7.Create(Self);
                        frmVd1101_7.ShowModal;
                        frmVd1101_7.Release;
                        frmVd1101_7 := nil;
                     end;

                     if Tipo_lancamento1 <> 'O' then
                     begin
                        if Parametros.Cliente_dados_incompleto then
                        begin
                           // Chama a tela de senha e verifica se a mesma esta correta
                           if not Senha_gerente then
                              exit;
                        end;

                        if Parametros.Cliente_sem_CNPJ then
                        begin
                           // Chama a tela de senha e verifica se a mesma esta correta
                           if not Senha_gerente then
                              exit;

                           // Busca informação sobre o cliente de acordo com permisão dos parametros
                           // Cheque, título e observação
                           Parametros.Informacao_cliente;
                        end;
                     end;
                  end
                  else
                     EST_CLI := Parametros.UF_Local;

                  if Parametros.Mostra_Dados_cliente then
                  begin
                     frmVd1101_3 := TfrmVd1101_3.Create(self);
                     frmVd1101_3.ShowModal;

                     if (frmVd1101_3.DBEdit1.Text <> '- VENDA AO CONSUMIDOR -') and (Nome_cliente = '- VENDA AO CONSUMIDOR -') then
                        Alterou_dados_cliente := 'T'
                     else
                        Alterou_dados_cliente := '';

                     frmVd1101_3.Release;
                     frmVd1101_3 := nil;
                  end;

                  // Mostra nome do cliente na tela
                  if Length(cdsClienteNOME_CLIENTE.Value) > 35 then
                     lbNome_Cli.Caption := copy(cdsClienteNOME_CLIENTE.Value,1,35) + '...'
                  else
                     lbNome_Cli.Caption := cdsClienteNOME_CLIENTE.Value;

               until Novo_cliente = False;
            end
            else
            begin
               // Mostra nome do cliente na tela
               if Length(cdsClienteNOME_CLIENTE.Value) > 35 then
                  lbNome_Cli.Caption := copy(cdsClienteNOME_CLIENTE.Value,1,35) + '...'
               else
                  lbNome_Cli.Caption := cdsClienteNOME_CLIENTE.Value;
            end;
         end;
      end;
   end
   else
      lbNome_Cli.Caption := '';
  Finally

  end;

end;

procedure TfrmVd1101.btnFecharClick(Sender: TObject);
begin
   if Application.MessageBox('Abandonar lançamento?','Confirmação',+MB_YESNO + MB_ICONQUESTION) = id_yes then
   begin
     if (edSerie.Text = 'CF') or (copy(edSerie.Text,1,1) = 'E') then
     begin
      if ModeloEcf1 = '1' then // Bematech
      begin
         ECF.Executa := Bematech_FI_CancelaCupom;
         ECF.Analisa;
      end
      else
      begin
         if ModeloEcf1 = '2' then // Epson
         begin
            ECF.Executa := EPSON_Fiscal_Cancelar_Cupom;
            ECF.Analisa;
         end
         else
         begin
            if ModeloEcf1 = '5' then // Daruma
            begin
               ECF.Executa := Daruma_FI_CancelaCupom;
               ECF.Analisa;
            end;
         end;
      end;
     end;
     frmVd1101.Tag := -1;
     close;
   end;
end;

procedure TfrmVd1101.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmVd1101.Tag >= 0 then
      Abort
   else
   begin
      // Verifica se foi usado a reserva de estoque
      if UsouReserva then
      begin
         // Atualiza reserva de estoque
         cdsVendasItem.First;
         while not cdsVendasItem.Eof do
         begin
            if dmVd1101.cdsProdutos.Locate('CODIGO_PRODUTO',cdsVendasItemPRODUTO_IVENDA.AsInteger,[]) then
            begin
               dmVd1101.cdsProdutos.Edit;
               dmVd1101.cdsProdutosRESERVA_PRODUTO.AsFloat := dmVd1101.cdsProdutosRESERVA_PRODUTO.AsFloat - edQtd.Value;
               dmVd1101.cdsProdutos.Post;
            end;
            cdsVendasItem.Next;
         end;
         dmVd1101.cdsProdutos.ApplyUpdates(0);
         Parametros := nil;
      end;
   end;

   if Cancela then
   begin
      Cancela := False;
      frmEST002.CAncelaVEnda1.Click;
   end;
end;

procedure TfrmVd1101.edPesquisaEnter(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '[*] » Muda tipo de pesquisa';

   if (cdsVendasItem.Active = True) and (cdsVendasItem.RecordCount > 0) then
      StatusBar1.Panels[1].Text := '[ESC] » Concluir lançamento'
   else
      StatusBar1.Panels[1].Text := '';

   //Verifica vendedor e cliente
   if dmvd1101.cdsVendedor.Active then
   begin
      if  dmvd1101.cdsVendedor.RecordCount = 0 then
      begin
         ShowMessage('Vendedor não selecionado!');
         dbEdVendedor.SetFocus;
         exit;
      end;
   end
   else
      exit;

   if lbNome_Cli.Caption = '' then
   begin
      ShowMessage('Cliente não selecionado!');
      DBEdit1.SetFocus;
   end;
end;

procedure TfrmVd1101.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   ID_PRODUTO  : String;
   valor_total1: Real;
begin
   if key = 123 then
   begin
      frmF12 := TfrmF12.Create(Self);
      frmF12.ShowModal;

      if frmF12.Tag = 1 then
      begin
         RadioButton1.Checked := True;
         edPesquisa.Text := dmF12.cdsPesqProdutosCODIGO_PRODUTO.AsString;
      end;

      frmF12.Release;
      frmF12 := nil;
   end;

   if (key = 27) and (cdsVendasItem.Active = True) and (cdsVendasItem.RecordCount > 0) then
   begin
      if Application.MessageBox('Concluir lançamento?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
      begin
         if (edSerie.Text <> 'CF') and (Copy(edSerie.Text,1,1) <> 'E') then
         begin
            edCFOP.BorderStyle := bsSingle;
            edCFOP.Enabled     := True;
            edCFOP.Tag         := 1;
            edCFOP.SetFocus;
         end
         else
         begin
            edTipoPgt.Tag := 1; //Trava o faco do edTipoPgt
            edTipoPgt.Text := '';
            edTipoPgt.Enabled := True;
            edTipoPgt.SetFocus;
         end;
      end;
   end;

   if key = 13 then
   begin
      ID_PRODUTO := '';
      edPesquisa.Text := TrimLeft(edPesquisa.Text);

      if length(edPesquisa.Text) = 0 then
         exit;

      // Se o 1° caracter for +, adiciona a quantidade do ultimo item da lista
      if (copy(edPesquisa.Text,1,1) = '+') and (cdsVendasItem.RecordCount <> 0) then
      begin
         if StringToFloat(edPesquisa.Text) > 0 then
         begin
            valor_total1 := cdsVendasItemQUANTIDADE_IVENDAS.AsFloat * cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;
            Valor_Bruto  := Valor_Bruto - valor_total1;

            cdsVendasItem.Edit;
            cdsVendasItemQUANTIDADE_IVENDAS.AsFloat := StringToFloat(edPesquisa.Text);
            cdsVendasItem.Post;

            //Atualiza a visualização dos valores da venda
            valor_total1    := cdsVendasItemQUANTIDADE_IVENDAS.AsFloat * cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;
            Valor_Bruto     := Valor_Bruto + valor_total1;

            Desconto1       := Valor_Bruto * Desc_Porcento / 100;

            Label11.Caption := FloatToStrF(Desconto1   , Fffixed,18,2);
            Label6.Caption  := FloatToStrF(Valor_Bruto , Fffixed,18,2);
            Label7.Caption  := FloatToStrF(Valor_Bruto - Desconto1,Fffixed,18,2);

            edPesquisa.Text := '';
            exit;
         end
         else
         begin
            edPesquisa.Text := '';

            ShowMessage('Quantidade precisa ser superior a ZERO.');
            exit;
         end;
      end;

      if (copy(edPesquisa.Text,1,1) = '?') then
      begin
         frmVd1101_9 := TfrmVd1101_9.Create(Self);
         frmVd1101_9.Tag := 1;
         frmVd1101_9.edtDescricao.Text := Copy(edPesquisa.Text,2,length(edPesquisa.Text) - 1);
         frmVd1101_9.ShowModal;
         frmVd1101_9.Release;
         frmVd1101_9 := nil;

         Exit;
      end;

      //Busca por código
      if RadioButton1.Checked then
      begin
         if dmVd1101.cdsPesqProdutos.Active then
            dmVd1101.cdsPesqProdutos.EmptyDataSet;

         //Busca pelo código de barra
         dmVd1101.cdsPesqProdutos.Close;
         dmVd1101.cdsPesqProdutos.CommandText := 'SELECT CODIGO_PRODUTO, BARRA_PRODUTO, DESUSO_PRODUTO FROM P_PRODUTOS WHERE BARRA_PRODUTO=:COD1';
         dmVd1101.cdsPesqProdutos.Params.ParamByName('COD1').AsString := Copy(edPesquisa.Text,1,17);
         dmVd1101.cdsPesqProdutos.Open;

         if Verifica_desuso then
            exit;

            //Busca pelo código de fábrica
         if (dmVd1101.cdsPesqProdutos.RecordCount = 0) then
         begin
            dmVd1101.cdsPesqProdutos.Close;
            dmVd1101.cdsPesqProdutos.CommandText := 'SELECT CODIGO_PRODUTO, FABRICA_PRODUTO, DESUSO_PRODUTO FROM P_PRODUTOS WHERE FABRICANTE_PRODUTO=:COD3';
            dmVd1101.cdsPesqProdutos.Params.ParamByName('COD3').AsString := Copy(edPesquisa.Text,1,15);
            dmVd1101.cdsPesqProdutos.Open;

            if Verifica_desuso then
               exit;

            //Busca pelo código de MERCOSUL
            if (dmVd1101.cdsPesqProdutos.RecordCount = 0) then
            begin
               dmVd1101.cdsPesqProdutos.Close;
               dmVd1101.cdsPesqProdutos.CommandText := 'SELECT CODIGO_PRODUTO, MERCOSUL_PRODUTO, DESUSO_PRODUTO FROM P_PRODUTOS P WHERE P.MERCOSUL_PRODUTO=:NOME';
               dmVd1101.cdsPesqProdutos.Params.ParamByName('NOME').AsString := Copy(edPesquisa.Text,1,12);
               dmVd1101.cdsPesqProdutos.Open;

               if Verifica_desuso then
                  exit;

               if (dmVd1101.cdsPesqProdutos.RecordCount = 0) then
               begin
                  //Busca pela referência
                  dmVd1101.cdsPesqProdutos.Close;
                  dmVd1101.cdsPesqProdutos.CommandText := 'SELECT CODIGO_PRODUTO, DESUSO_PRODUTO, PRECO_LISTA_PRODUTO, DESCRICAO_PRODUTO FROM P_PRODUTOS WHERE REFERENCIA_PRODUTO=:COD2';
                  dmVd1101.cdsPesqProdutos.Params.ParamByName('COD2').AsString := Copy(edPesquisa.Text,1,15);
                  dmVd1101.cdsPesqProdutos.Open;

                  if dmVd1101.cdsPesqProdutos.RecordCount > 1 then
                  begin
                     Application.MessageBox('Existe mais de um item com este mesmo código. Na próxima tela selecione o item desejado.','Atenção', MB_OK + MB_ICONINFORMATION);

                     frmVd1101_10 := TfrmVd1101_10.Create(Self);
                     frmVd1101_10.ShowModal;
                     frmVd1101_10.Release;
                     frmVd1101_10 := nil;
                  end;

                  if Verifica_desuso then
                     exit;

                  if (dmVd1101.cdsPesqProdutos.RecordCount = 0) then
                  begin
                     if not Texto_incorreto(edPesquisa.Text) then
                     begin
                        //Busca pelo código
                        dmVd1101.cdsPesqProdutos.Close;
                        dmVd1101.cdsPesqProdutos.CommandText := 'SELECT CODIGO_PRODUTO, DESUSO_PRODUTO FROM P_PRODUTOS WHERE CODIGO_PRODUTO=' + QuotedStr( RemoveChar(Copy(edPesquisa.Text,1,10)) );
                        //dmVd1101.cdsPesqProdutos.Params.ParamByName('COD2').AsString := RemoveChar(Copy(edPesquisa.Text,1,10));
                        dmVd1101.cdsPesqProdutos.Open;

                        if Verifica_desuso then
                           exit;
                     end;

                     if (dmVd1101.cdsPesqProdutos.RecordCount = 0) then
                     begin
                        Application.MessageBox('Nenhum produto encontrado com o código informado.','Atenção', + MB_OK + MB_ICONINFORMATION);
                        edPesquisa.SetFocus;
                        exit;
                     end
                     else                                        //Fields[0] >>> CODIGO_PRODUTO
                        ID_PRODUTO := dmVd1101.cdsPesqProdutos.Fields[0].AsString;
                  end
                  else                                        //Fields[0] >>> CODIGO_PRODUTO
                     ID_PRODUTO := dmVd1101.cdsPesqProdutos.Fields[0].AsString;
               end
               else                                        //Fields[0] >>> CODIGO_PRODUTO
                  ID_PRODUTO := dmVd1101.cdsPesqProdutos.Fields[0].AsString;
            end
            else                                        //Fields[0] >>> CODIGO_PRODUTO
               ID_PRODUTO := dmVd1101.cdsPesqProdutos.Fields[0].AsString;
         end
         else                                        //Fields[0] >>> CODIGO_PRODUTO
            ID_PRODUTO := dmVd1101.cdsPesqProdutos.Fields[0].AsString;
      end
      else
      //Busca por nome
      begin
         frmF12 := TfrmF12.Create(Self);

         frmF12.edtPesquisa.Text := edPesquisa.Text;
         frmF12.executa_busca;

         frmF12.ShowModal;

         if dmF12.cdsPesqProdutos.Active = True then
         begin
            if Verifica_desuso then
               exit;

            ID_PRODUTO := dmF12.cdsPesqProdutosCODIGO_PRODUTO.AsString;
         end
         else
         begin
            ID_PRODUTO := '';
            Limpa_campos;
         end;

         frmF12.Release;
         frmF12 := nil;
      end;

      //Lança item selecionado na tela
      if ID_PRODUTO <> '' then
      begin
         dmvd1101.cdsProdutos.Close;
         dmvd1101.cdsProdutos.Params.ParamByName('COD_PRODUTO').AsString := ID_PRODUTO;
         dmvd1101.cdsProdutos.Open;

         if (dmvd1101.cdsProdutosTRIB_DENTRO_PRODUTO.Value = '') and (dmvd1101.cdsProdutosCLASSE_PRODUTO.AsString <> '2') and (Tipo_lancamento1 <> 'O') then
         begin
            Limpa_campos;
            Application.MessageBox('Situação Tributária Inválida no cadastro deste produto.','Atenção', MB_OK + MB_ICONSTOP);
            exit;
         end;

         if ((RadioButton4.Checked) and (dmVd1101.cdsProdutosPRECO_LISTA_PRODUTO.AsFloat = 0)) or ((RadioButton3.Checked) and (dmVd1101.cdsProdutosVLRATACADO_PRODUTO.AsFloat = 0)) then
         begin
            Application.MessageBox('Produto/Serviço com preço zerado.','Atenção', MB_OK + MB_ICONSTOP);
            exit;
         end;

         edPesquisa.Text := dmvd1101.cdsProdutosDESCRICAO_PRODUTO.Value;
         edQtd.Text      := '1';
         edtCFOPInd.Text := edCFOP.Text;

         if dmvd1101.cdsProdutosQTD_FRACIONADA.AsBoolean = False then
            edQtd.DecimalPlaces := 0
         else
            edQtd.DecimalPlaces := 3;

         if edCST.Enabled = True then
         begin
            if EST_CLI = Parametros.UF_Local then
               edCST.Text := dmvd1101.cdsProdutosTRIB_DENTRO_PRODUTO.Value
            else
               edCST.Text := dmvd1101.cdsProdutosTRIB_FORA_PRODUTO.Value;

            edICM.Text := dmvd1101.cdsProdutosICMSAIDA_PRODUTO.AsString;
         end;

         //Escolha do preço
         if Item_em_promocao then
            // Preço em promoção
            edValorUni.Text := dmvd1101.cdsProdutosPROMOCAO_PRODUTO.AsString
         else
         begin
            // Preço normal
            if GroupBox9.Visible = True then
            begin
               if RadioButton3.Checked then
               begin
                  if Tipo_lancamento1 <> 'O' then
                  begin
                     //Verifica se o cliente compra com preço de atacado
                     if dmvd1101.cdsClienteATACADO_CLIENTE.AsBoolean = True then
                        edValorUni.Text := FormatFloat('0.00',dmvd1101.cdsProdutosVLRATACADO_PRODUTO.AsFloat)
                     else
                     begin
                        Limpa_campos;
                        Application.MessageBox('Cliente não compra em atacado.','Atenção', MB_OK + MB_ICONWARNING);
                        exit;
                     end;
                  end
                  else // Se for orçamento
                     edValorUni.Text := FormatFloat('0.00',dmvd1101.cdsProdutosVLRATACADO_PRODUTO.AsFloat);
               end
               else
                  edValorUni.Text := FormatFloat('0.00',dmvd1101.cdsProdutosPRECO_LISTA_PRODUTO.AsFloat);
            end
            else
               edValorUni.Text := FormatFloat('0.00',dmvd1101.cdsProdutosPRECO_LISTA_PRODUTO.AsFloat);
         end;

         edValorUni.ReadOnly  := Parametros.Alterar_preco;
         JvCalcEdit2.ReadOnly := Parametros.Alterar_preco;

         if Parametros.Pula_Quantidade then
            edValorUni.SetFocus
         else
            edQtd.SetFocus;
      end;
   end;

   if key = 106 then
   begin
      edPesquisa.Text := '';

      if RadioButton1.Checked then
         RadioButton2.Checked := True
      else
         RadioButton1.Checked := True;
   end;

   if key = vk_insert then
   begin
      if Trim(edPesquisa.Text) = '?' then
      begin
         if PEM = 'B' then
         begin
            frmVd1101_9 := TfrmVd1101_9.Create(Self);
            frmVd1101_9.ShowModal;
            frmVd1101_9.Release;
            frmVd1101_9 := nil;
         end;
      end;
   end;

   if Trim(edPesquisa.Text) = '?' then // para funipinturas
      edPesquisa.SetFocus;
end;

procedure TfrmVd1101.RadioButton1Click(Sender: TObject);
begin
   edPesquisa.SetFocus;
end;

procedure TfrmVd1101.RadioButton2Click(Sender: TObject);
begin
   edPesquisa.SetFocus;
end;

procedure TfrmVd1101.edPesquisaChange(Sender: TObject);
begin
   if edPesquisa.Text = '*' then
      edPesquisa.Text := '';
end;

procedure TfrmVd1101.SpeedButton2Click(Sender: TObject);
begin
   frmF4 := TfrmF4.Create(Self);
   frmF4.ShowModal;

   dbEdVendedor.Text := dmF4.cdsVendedorCODIGO_VENDEDOR.AsString;
   dbEdVendedor.SetFocus;

   frmF4.Release;
   frmF4 := nil;
end;

procedure TfrmVd1101.dbEdVendedorEnter(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '[F4] » Consulta vendedor';
end;

procedure TfrmVd1101.dbEdVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 115 then
      SpeedButton2.Click;
end;

procedure TfrmVd1101.DBEdit1Enter(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '[F7] » Consulta clientes';
end;

procedure TfrmVd1101.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 118 then
      SpeedButton1.Click;
end;

procedure TfrmVd1101.edPesquisaExit(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '';
   StatusBar1.Panels[1].Text := '';

   if edPesquisa.Text <> '' then
   begin
      if dmvd1101.cdsProdutosGRADE_PRODUTO.AsBoolean = True then
      begin
         dmvd1101.cdsProdutosGrade.close;
         dmvd1101.cdsProdutosGrade.CommandText := 'SELECT * FROM P_PRODUTOS_GRADE WHERE COD_EMPRESA=:EMPRESA AND PRODUTO_GRADE=:PRODUTO';
         dmvd1101.cdsProdutosGrade.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
         dmvd1101.cdsProdutosGrade.Params.ParamByName('PRODUTO').AsString := dmvd1101.cdsProdutosCODIGO_PRODUTO.AsString;
         dmvd1101.cdsProdutosGrade.Open;

         frmVd1101_1  := TfrmVd1101_1.Create(Self);
         frmVd1101_1.ShowModal;

         edGrade.Text := dmvd1101.cdsProdutosGradeCODIGO_GRADE.AsString;

         frmVd1101_1.Release;
         frmVd1101_1  := nil;
      end;

      if dmvd1101.cdsProdutosMETRO_CUB_PRODUTO.AsBoolean = True then
      begin
         frmVd1101_6 := TfrmVd1101_6.Create(Self);
         frmVd1101_6.ShowModal;
         frmVd1101_6.Release;
         frmVd1101_6 := nil;
      end;
   end;
end;

procedure TfrmVd1101.SpeedButton1Click(Sender: TObject);
begin
   if GroupBox2.Caption = 'Cliente' then
   begin
      ConsultaCliente(DBEdit1);
   end
   else
   begin
      ConsultaFornecedor(DBEdit1);
   end;
end;

procedure TfrmVd1101.edValorUniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   Num_item  : Integer;
   ValorTotal: Real;
   TRIB1     : String;
begin
   if key = 13 then
   begin
      if dmVd1101.cdsProdutos.Active = False then
         dmVd1101.cdsProdutos.Open;

      if (dmVd1101.cdsProdutos.RecordCount = 0) then
      begin
         Application.MessageBox('Produto não encontrado.','Atenção', MB_OK + MB_ICONINFORMATION);
         Exit;
      end;
      // Verifica se produto é vendido em metros cúbicos
      if dmvd1101.cdsProdutosMETRO_CUB_PRODUTO.AsBoolean = True then
      begin
         if Serie1 = '' then
         begin
            Application.MessageBox('Tamanho sem preço cadastrado.','Atenção', MB_OK + MB_ICONINFORMATION);

            frmVd1101_6 := TfrmVd1101_6.Create(Self);
            frmVd1101_6.ShowModal;
            frmVd1101_6.Release;
            frmVd1101_6 := nil;

            exit;
         end;
      end;

      // Seta variáveis se a quantidades de itens for zerada
      if cdsVendasItem.RecordCount = 0 then
      begin
         Num_serv   := 0;
         ValorDesc1 := 0;

         // TIPO DE PREÇO
         if GroupBox9.Visible = true then
         begin
            // Preço atacado
            if RadioButton3.Checked then
               RadioButton4.Enabled := False
            else
               RadioButton3.Enabled := False;
         end;
      end;

      if not Cfop_valido(edtCFOPInd) then
      begin
         edtCFOPInd.SetFocus;
         exit;
      end;

      // Verifica se o desconto individual está acima do permitido no cadastro
      // do item.
      if Desconto_acima_do_maximo(edValorUni.Value) then
         exit;

      if edQtd.Value = 0 then
      begin
         ShowMessage('Quantidade tem que ser superior a 0');
         edQtd.SetFocus;
         exit;
      end;

      // Verifica duplicação de itens
      if Parametros.Nao_repete_produto then
      begin
         if cdsVendasItem.Locate('PRODUTO_IVENDA',dmvd1101.cdsProdutosCODIGO_PRODUTO.AsInteger,[]) then
         begin
            if dmvd1101.cdsProdutosGRADE_PRODUTO.AsBoolean = True then
            begin
               if ( cdsVendasItem.Locate('PRODUTO_IVENDA',dmvd1101.cdsProdutosCODIGO_PRODUTO.AsInteger,[]) ) and (cdsVendasItem.Locate('GRADE_IVENDAS',edGrade.Text,[])) then
               begin
                  Limpa_campos;
                  ShowMessage('Item ja existente na lista.');
                  exit;
               end;
            end;
         end;
      end;

      // Verifica valores nulos
      if (edPesquisa.Text = '') or (edValorUni.Value = 0) or (edValorUni.Text = '') then
         exit;

      // Verifica se o produto possue grade e se foi digitada
      if (dmvd1101.cdsProdutosGRADE_PRODUTO.AsBoolean = True) and (edGrade.Text = '') then
      begin
         ShowMessage('Este produto é preciso mostrar a grade');
         edGrade.Enabled := True;
         edGrade.SetFocus;
         exit;
      end
      else
      begin
         edGrade.Enabled := False;
         // Verifica se agrade digitada é válida
         if (dmvd1101.cdsProdutosGRADE_PRODUTO.AsBoolean = True) and (edGrade.Text <> '') then
         begin
            dmvd1101.cdsProdutosGrade.close;
            dmvd1101.cdsProdutosGrade.CommandText := 'SELECT * FROM P_PRODUTOS_GRADE WHERE COD_EMPRESA=:EMPRESA AND PRODUTO_GRADE=:PRODUTO AND CODIGO_GRADE=:GRADE';
            dmvd1101.cdsProdutosGrade.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
            dmvd1101.cdsProdutosGrade.Params.ParamByName('PRODUTO').AsString := dmvd1101.cdsProdutosCODIGO_PRODUTO.AsString;
            dmvd1101.cdsProdutosGrade.Params.ParamByName('GRADE')  .AsString := edGrade.Text;
            dmvd1101.cdsProdutosGrade.Open;

            if dmvd1101.cdsProdutosGrade.RecordCount = 0 then
            begin
               ShowMessage('A grade digitada não correspode a este item');
               edGrade.Enabled := True;
               edGrade.SetFocus;
               exit;
            end;
         end;
      end;

      if (Tipo_lancamento1 <> 'D') and (Tipo_lancamento1 <> 'E') then
      begin
         // Verifica se a quantidade em estoqúe é suficiente para quantidade pedida
         if (dmvd1101.cdsProdutosESTOQUE_PRODUTO.AsFloat < edQtd.Value) and (dmvd1101.cdsProdutosCLASSE_PRODUTO.AsInteger = 1) then
         begin
            if not Parametros.Vende_negativo then
            begin
               {if Application.MessageBox('Estoque insuficiente. Deseja continuar?','Atenção', MB_YESNO + MB_ICONERROR) <> id_yes then
               begin
                  Limpa_campos;
                  exit;
               end;
            end
            else
            begin}
               Application.MessageBox('Estoque insuficiente.','Atenção', MB_OK + MB_ICONERROR);
               Limpa_campos;
               exit;
            end;
         end
         else
         // Verifica Reserva de estoque
         begin
            if ((dmvd1101.cdsProdutosESTOQUE_PRODUTO.AsFloat - dmVd1101.cdsProdutosRESERVA_PRODUTO.AsFloat) < edQtd.Value) and (dmvd1101.cdsProdutosCLASSE_PRODUTO.AsInteger = 1) then
            begin
               if Application.MessageBox('Estoque insuficiente. O mesmo esta na lista de venda de outro vendedor.','Atenção', MB_YESNO + MB_ICONERROR) <> id_yes then
               begin
                  Limpa_campos;
                  exit;
               end;
            end;
         end;
      end;

      // Verifica se CST é válido
      if edCST.Enabled = True then
      begin
         dmvd1101.cdsCST.Open;
         if dmvd1101.cdsCST.Locate('CODIGO_SITUACAO',edCST.Text,[]) = False then
         begin
            Application.MessageBox('Código CST digitado é inválido.','Atenção', MB_OK + MB_ICONERROR);
            Limpa_campos;
            exit;
         end;
         dmvd1101.cdsCST.Close;
      end;

      if Parametros.Nao_vende_produto_com_servico then
      begin
         // Guarda o tipo de classe para não misturar produto com serviço
         if cdsVendasItem.RecordCount = 0 then
            Classe1 := dmvd1101.cdsProdutosCLASSE_PRODUTO.AsString
         else
         begin
            if Classe1 <> dmvd1101.cdsProdutosCLASSE_PRODUTO.AsString then
            begin
               Limpa_campos;
               Application.MessageBox('Na venda não pode haver produtos e serviços.','Atenção', MB_OK + MB_ICONWARNING);
               exit;
            end;
         end;
      end;

      if EST_CLI = Parametros.UF_Local then
         TRIB1 := dmvd1101.cdsProdutosTRIB_DENTRO_PRODUTO . AsString
      else
         TRIB1 := dmvd1101.cdsProdutosTRIB_FORA_PRODUTO   . AsString;

      if Parametros.Nao_vende_tributacao_diferente then
      begin
         if (TRIB1 <> '060') and cdsVendasItem.Locate('TRIBUTACAO_IVENDAS','060',[]) then
         begin
            Limpa_campos;
            Application.MessageBox('Não pode haver tributação diferente na mesma venda.','Atenção', MB_OK + MB_ICONWARNING);
            exit;
         end
         else
         begin
            if (TRIB1 = '060') and (cdsVendasItem.Locate('TRIBUTACAO_IVENDAS','060',[]) = False) then
            begin
               if cdsVendasItem.RecordCount <> 0 then
               begin
                  Limpa_campos;
                  Application.MessageBox('Não pode haver tributação diferente na mesma venda.','Atenção', MB_OK + MB_ICONWARNING);
                  exit;
               end;
            end;
         end;
      end;

      // Verifica a quantidade de serviço
      if dmvd1101.cdsProdutosCLASSE_PRODUTO.AsString = '2' then
         Num_serv := Num_serv + 1;

      //Pega a quantidade de item existente na lista
      cdsVendasItem.last;
      Num_item := cdsVendasItemQTDE_VENDAS.AsInteger;

      if edSerie.Text <> 'CI' then
      begin
         // Verifica a quantidade de itens no corpo da NF
         if (Num_item >= Parametros.Qtd_Produto_NF) and (edSerie.Text = 'NF') and (Parametros.Multi_pagina_na_NF = False) then
         begin
            Limpa_campos;
            Application.MessageBox('Limite de produtos ultrapassado, série não pode ser NF.','Atenção', MB_OK + MB_ICONWARNING);
            exit;
         end;

         // Verifica a quantidade de serviço na nota
         if (Num_serv > Parametros.Qtd_Servico_NF) and (edSerie.Text = 'NF') then
         begin
            Limpa_campos;
            Application.MessageBox('Limite de serviços ultrapassado, série não pode ser NF.','Atenção', MB_OK + MB_ICONWARNING);
            exit;
         end;
      end;

      //Adiciona item na lista
      cdsVendasItem.Append;

      cdsVendasItemSERIE_IVENDAS      .Value     := dmvd1101.cdsProdutosSERIE_PRODUTO.Value;
      cdsVendasItemQTDE_VENDAS        .AsFloat   := Num_item + 1;
      cdsVendasItemGRADE_IVENDAS      .Value     := edGrade.Text;
      cdsVendasItemCOD_EMPRESA        .AsString  := CodigoEmpresa1;
      cdsVendasItemFABRICA_IVENDAS    .Value     := dmvd1101.cdsProdutosFABRICA_PRODUTO.AsString;
      cdsVendasItemPROMOCAO_IVENDAS   .Value     := dmvd1101.cdsProdutosPROMOCAO_PRODUTO.AsString;
      if (Trim(dmvd1101.cdsProdutosDESCRICAO_PRODUTO.AsString) = '?') and (edPesquisa.Text <> '') then
         cdsVendasItemDESCRICAO_IVENDAS  .Value  := edPesquisa.Text
      else
         cdsVendasItemDESCRICAO_IVENDAS  .Value  := dmvd1101.cdsProdutosDESCRICAO_PRODUTO.AsString;
      cdsVendasItemPRODUTO_IVENDA     .AsInteger := dmvd1101.cdsProdutosCODIGO_PRODUTO.AsInteger;
      cdsVendasItemFABRICA_PRODUTO    .AsInteger := dmvd1101.cdsProdutosFABRICA_PRODUTO.Value;
      cdsVendasItemFABRICANTE_PRODUTO .AsString  := dmvd1101.cdsProdutosFABRICANTE_PRODUTO.Value;
      cdsVendasItemUNIDADE_PRODUTO    .AsString  := dmvd1101.cdsProdutosUNIDADE_PRODUTO.Value;
      cdsVendasItemVALORBRUTO_IVENDAS .AsFloat   := edValorUni.Value;
      cdsVendasItemVALORTOTAL         .AsFloat   := edValorUni.Value * edQtd.Value;
      cdsVendasItemQUANTIDADE_IVENDAS .AsFloat   := edQtd.Value;
      cdsVendasItemDESCONTO_IVENDAS   .AsFloat   := ValorDesc1;
      cdsVendasItemSERIE_IVENDAS      .AsString  := Serie1;
      cdsVendasItemCFOP               .AsString  := edtCFOPInd.Text;

      if Altura1 > 0 then
      begin
         cdsVendasItemALTURA_IVENDAS.AsFloat  := Altura1;
         cdsVendasItemLARGURA_IVENDAS.AsFloat := Largura1;

         Altura1  := 0;
         Largura1 := 0;
      end
      else
      begin
         cdsVendasItemALTURA_IVENDAS.AsFloat  := 0;
         cdsVendasItemLARGURA_IVENDAS.AsFloat := 0;
      end;

      // Verifica se o item é serviço ou produto
      if dmvd1101.cdsProdutosCLASSE_PRODUTO.AsInteger = 2 then
         cdsVendasItemCLASSE_IVENDA.AsString := 'S'
      else
         cdsVendasItemCLASSE_IVENDA .AsString := 'P';

      if Parametros.Utiliza_IPI then
         cdsVendasItemIPI_IVENDAS.AsFloat := dmvd1101.cdsProdutosIPI_PRODUTO.AsFloat
      else
         cdsVendasItemIPI_IVENDAS.AsFloat := 0;

      cdsVendasItemTRIBUTACAO_IVENDAS.AsString := TRIB1;

      // confirma aliquota de icms da mercadoria
      if EST_CLI = Parametros.UF_Local then
      begin
         xAliq    := dmvd1101.cdsProdutosICMSAIDA_PRODUTO   .AsFloat;
         xRedutor := dmvd1101.cdsProdutosREDU_DENTR_PRODUTO .AsFloat;
      end
      else
      begin
         dmvd1101.cdsEstados.Open;
         if dmvd1101.cdsEstados.Locate('CODIGO_ESTADO',Parametros.UF_Local,[]) then
         begin {Cliente contribuinte}
            if CNTB1 = 'S' then
               xAliq := dmvd1101.cdsEstadosICMS_VD_CT.AsFloat
            else
               xAliq := dmvd1101.cdsEstadosICMS_VD_NC.AsFloat;
         end
         else
            xAliq := 0;

         dmvd1101.cdsEstados.close;

         xRedutor := dmvd1101.cdsProdutosREDU_FORA_PRODUTO.AsFloat;
      end;

      // Se estiver habilitado pedo o código CST digitado na hora da venda
      if edCST.Enabled = True then
      begin
         cdsVendasItemTRIBUTACAO_IVENDAS.AsString := edCST.Text;
         xAliq := edICM.Value;
      end;

      if cdsVendasItemTRIBUTACAO_IVENDAS.AsString = '060' then
         xAliq := 0;

      cdsVendasItemICM_IVENDAS     .AsFloat := xAliq;
      cdsVendasItemREDUTOR_IVENDAS .AsFloat := xRedutor;


      cdsVendasItem.Post;

      if ((edSerie.Text = 'CF') or (copy(edSerie.Text,1,1) = 'E')) and (dmvd1101.cdsProdutosCLASSE_PRODUTO.AsString = '1')then
      begin
         //ECF.Executa := Vende_item;
         // Se não houver nenhum erro retorna True
         if not ECF.Vende_item( dmvd1101.cdsProdutosCODIGO_PRODUTO.AsString,
                                dmvd1101.cdsProdutosDESCRICAO_PRODUTO.AsString,
                                DBEdit1.Text, //Codigo cliente
                                edQtd.Value,
                                edValorUni.Value,
                                ValorDesc1 * edQtd.Value ) then
         begin
            cdsVendasItem.Delete;
            Limpa_campos;
            Exit;
         end;
      end;

      // Verifica se é venda
      if Tipo_lancamento1 = 'V' then
      begin
         // Atualiza reserva de estoque
         dmVd1101.cdsProdutos.Edit;
         dmVd1101.cdsProdutosRESERVA_PRODUTO.AsFloat := dmVd1101.cdsProdutosRESERVA_PRODUTO.AsFloat + edQtd.Value;
         dmVd1101.cdsProdutos.Post;
         dmVd1101.cdsProdutos.ApplyUpdates(0);

         UsouReserva := True;
      end;

      Serie1 := '';

      //Pega valores do ultimo item
      ValorTotal := cdsVendasItemQUANTIDADE_IVENDAS.AsFloat * cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;

      if Length(cdsVendasItemDESCRICAO_IVENDAS.Value) <= 30 then
         Label1.Caption := copy(cdsVendasItemDESCRICAO_IVENDAS.Value,1,30)
      else
         Label1.Caption := copy(cdsVendasItemDESCRICAO_IVENDAS.Value,1,30) + '...';

      Label5.Caption    := FloatToStrF(cdsVendasItemQUANTIDADE_IVENDAS.AsFloat,ffFixed,18,2) + ' x ' + FloatToStrF(cdsVendasItemVALORBRUTO_IVENDAS.AsFloat,Fffixed,18,2) + ' = ' + FloatToStrF(ValorTotal,Fffixed,18,2);

      //Mostra valores na tela
      Valor_Bruto     := Valor_Bruto + ValorTotal;

      Desconto1       := Valor_Bruto * Desc_Porcento / 100;

      Label11.Caption := FloatToStrF(Desconto1   , Fffixed,18,2);
      Label6.Caption  := FloatToStrF(Valor_Bruto , Fffixed,18,2);
      Label7.Caption  := FloatToStrF(Valor_Bruto - Desconto1,Fffixed,18,2);

      Limpa_campos;
   end;
end;

procedure TfrmVd1101.edValorUniExit(Sender: TObject);
begin
   edPesquisa.SetFocus;
end;

procedure TfrmVd1101.edCFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = 13) and (edCFOP.Tag = 1) and (edCFOP.Text <> '') then
   begin
      //Verifica se o código digitado é valido
      if not Cfop_valido(edCFOP) then
      begin
         Label16.Caption := '';
         edCFOP.SetFocus;
         exit;
      end
      else
      begin
         if Length(dmVd1101.cdsNaturezaDESCRICAO_NAT.Value) > 42
            then
               Label16.Caption  := copy(dmVd1101.cdsNaturezaDESCRICAO_NAT.Value,1,42) + '...'
            else
               Label16.Caption  := dmVd1101.cdsNaturezaDESCRICAO_NAT.Value;
      end;

      edCFOP.Tag := 0; //Libera saída do foco

      edTipoPgt.Tag := 1; //Trava o faco do edTipoPgt
      edTipoPgt.Text := '';
      edTipoPgt.Enabled := True;
      edTipoPgt.SetFocus;

      edCFOP.BorderStyle := bsNone;
      edCFOP.Enabled     := False;
   end
   else
   begin
      if key = 27 then
      begin
         edCFOP.Tag         := 0; //Libera saída do foco
         edCFOP.BorderStyle := bsNone;
         edCFOP.Enabled     := False;

         edPesquisa.SetFocus;
      end;
   end;
end;

procedure TfrmVd1101.edCFOPExit(Sender: TObject);
begin
   //Verifica se a saida do foco esta travada
   if edCFOP.Tag = 1 then
      edCFOP.SetFocus;
end;

procedure TfrmVd1101.edDescExit(Sender: TObject);
begin
   //Verifica se a saida do foco esta travada
   if edDesc.Tag = 1 then 
      edDesc.SetFocus;
end;

procedure TfrmVd1101.edDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 begin   //============================ AQUI JA E FORMA DE PAGAMENTO =============================
   if (key = 13) and (edDesc.Tag = 1) then
   begin
      if not Verifica_desconto then
         Exit;

      edDesc.Tag      := 0; // Libera saída do foco
      edDesc.Visible  := False;

      Desconto1       := Valor_Bruto * StrToFloat(edDesc.Text) / 100;

      Label10.Caption := FloatToStrF(StrToFloat(edDesc.Text),Fffixed,18,2);
      Label11.Caption := FloatToStrF(Desconto1,Fffixed,18,2);

      Label7.Caption  := FloatToStrF(Valor_Bruto - Desconto1,Fffixed,18,2);

      edValor.Tag     := 1; //Trava o faco do edDesc
      edValor.Text    := Label7.Caption;
      edValor.Visible := True;
      edValor.SetFocus;
   end
   else
   begin
      if key = 27 then
      begin
         edDesc.Tag     := 0; //Libera saída do foco
         edDesc.Visible := False;

         edPesquisa.SetFocus;
      end;
   end;
end;

procedure TfrmVd1101.edValorExit(Sender: TObject);
begin
   if edValor.Tag = 1 then
      edValor.SetFocus;
      
   Valor_liquido := StrToFloat(edValor.Text);
end;

procedure TfrmVd1101.btnGravarClick(Sender: TObject);
var
   num1,num2: integer;
   Valor1   : Real;
begin
   if not Verifica_desconto then
      Exit;

////////// verifica se e demo

   dmVd1101.cdsVendas2.Open;

   if Demo1 and (dmVd1101.cdsVendas2.RecordCount >= 10) then
   begin
      Application.MessageBox('Versão de demonstração' + #13 +
                             'Limite de vendas atingidas','Demonstração',MB_ICONERROR);

      dmVd1101.cdsVendas2.Close;

      Abort;
   end;

   dmVd1101.cdsVendas2.Close;

////////////////////////////////////////////////////////

   if (Parametros.OBS) and (edSerie.Text <> 'NF') then
   begin
      frmVd1101_4 := TfrmVd1101_4.Create(self);

      frmVd1101_4.Edit1.Text := Parametros.OBS_orcamento(1);
      frmVd1101_4.Edit2.Text := Parametros.OBS_orcamento(2);

      //frmVd1101_4.ShowModal;
   end;

   if StrToFloat(edValor.Text) <= 0 then
   begin
      Application.MessageBox('Valor líquido não pode ser ZERADO','Atenção', MB_OK + MB_ICONERROR);
      Exit;
   end;

   if (dmVd1101.cdsClienteNOME_CLIENTE.AsString = '- VENDA AO CONSUMIDOR -') and (dmVd1101.cdsFormaPagamentoCAIXA_CPAGAMENTO.AsInteger = 5) then
   begin
      Application.MessageBox('Venda a prazo não pode ser finalizada para cliente - VENDA AO CONSUMIDOR -.','Atenção', MB_OK + MB_ICONERROR);
      Exit;
   end;

   // Vendas / orçamentos / NFs / CFs
   frmParcelas := TfrmParcelas.Create(Application);

   frmParcelas .  Parcela_Max_Livre      := Parametros.Parcela_Max_Livre;
   frmParcelas .  edtValorPrincipal.Text := FloatToStr(Valor_liquido);

   if (Tipo_lancamento1 <> 'D') and (Tipo_lancamento1 <> 'E')  and (Tipo_lancamento1 <> 'R') then
   begin
      if DmPrincipal.cdsFinanceiro.Active = True then
      begin
         if DmPrincipal.cdsFinanceiro.RecordCount > 0 then
         begin
            DmPrincipal.cdsFinanceiro.First;
            while not DmPrincipal.cdsFinanceiro.Eof do
               DmPrincipal.cdsFinanceiro.Delete;
         end;
      end;

      if dmVd1101.cdsFormaPagamentoPARCELA1_CPAGAMENTO.AsFloat = 100 then
      begin
         frmParcelas.edtTotalParcela.Text := '1';
      end
      else
      begin
         num1   := 1;
         num2   := 0;
         Valor1 := 0;
         repeat
            Valor1 := Valor1 + dmVd1101.cdsFormaPagamento.FieldByName('PARCELA' + IntToStr(num1) + '_CPAGAMENTO').AsFloat;
            num1   := num1   + 1;

            if Valor1 = 100 then
            begin
               num2 := num2 + 1;
               break;
            end
            else
               num2 := num2 + 1;

         until num1 = 15;

         frmParcelas.edtTotalParcela.Text := IntToStr(num2);
         //frmParcelas.btnAssistente.Click;
      end;

      if dmVd1101.cdsFormaPagamentoLIVRE_CPAGAMENTO.AsBoolean = False then
         frmParcelas.edtTotalParcela.ReadOnly := True;

      frmParcelas.ShowModal;
      frmParcelas.Release;
      frmParcelas := nil;
   end
   else
   begin
      dmPrincipal.cdsFinanceiro.Close;
      dmPrincipal.cdsFinanceiro.CreateDataSet;
      dmPrincipal.cdsFinanceiro.Open;
      frmParcelas.BitBtn2.Click;
   end;
end;

procedure TfrmVd1101.edDescEnter(Sender: TObject);
begin
   btnGravar.Enabled   := True;
   btnImprimir.Enabled := True;
end;

procedure TfrmVd1101.edTipoPgtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 119 then
      SpeedButton3.Click;

   if (key = 13) and (edTipoPgt.Tag = 1) and (edTipoPgt.Text <> '') then
   begin
      //Verifica se o código digitado é valido
      With dmVd1101 do
      begin

         cdsFormaPagamento.Close;
         cdsFormaPagamento.CommandText := '';
         cdsFormaPagamento.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
         cdsFormaPagamento.Params.ParamByName('CODIGO').AsString  := edTipoPgt.Text;
         cdsFormaPagamento.Open;

         if cdsFormaPagamento.RecordCount = 0 then
         begin
            cdsFormaPagamento.Close;
            Label17.Caption := '';
            ShowMessage('Tipo de pagamento não encontrado.');
            edTipoPgt.SetFocus;
            exit;
         end
         else
         begin
            if PEM = 'B' then
            begin
               if (cdsFormaPagamentoPARCELA1_CPAGAMENTO.AsFloat < 100) or (cdsFormaPagamentoPRAZO1_CPAGAMENTO.AsFloat > 0) then
               begin
                  ShowMessage('Forma de pagamento não permitido no lançamento fiscal simples.');
                  exit;
               end;
            end;
            
            if dmvd1101.cdsClienteTPGTO_CLIENTE.AsInteger <> cdsFormaPagamento.FieldByName('CODIGO_CPAGAMENTO').AsInteger then
            begin
               if Parametros.Obriga_tipo_pagamento then
               begin
                  ShowMessage('Cliente não usa esse tipo de pagamento.');
                  exit;
               end;
            end;

            if Length(cdsFormaPagamentoDESCRICAO_CPAGAMENTO.Value) > 39
            then
               Label17.Caption := copy(cdsFormaPagamentoDESCRICAO_CPAGAMENTO.Value,1,39) + '...'
            else
               Label17.Caption := cdsFormaPagamentoDESCRICAO_CPAGAMENTO.Value;

           edTipoPgt.Tag  := 0; //Libera saída do foco

           edDesc.Tag     := 1; //Trava o faco do edDesc
           edDesc.Text    := Label10.Caption;
           edDesc.Visible := True;
           edDesc.SetFocus;

            edTipoPgt.Enabled := False;
         end;
      end;
   end
   else
   begin
      if key = 27 then
      begin
         edTipoPgt.Tag     := 0; //Libera saída do foco
         edTipoPgt.Text    := '';
         edTipoPgt.Enabled := False;

         edPesquisa.SetFocus;
      end;
   end;
end;

procedure TfrmVd1101.SpeedButton3Click(Sender: TObject);
begin
   if edTipoPgt.Enabled = True then
   begin
      frmF8 := TfrmF8.Create(Self);
      frmF8.ShowModal;

      edTipoPgt.Text  := dmF8.cdsTipoPagamentoCODIGO_CPAGAMENTO.AsString;
      Label17.Caption := dmF8.cdsTipoPagamentoDESCRICAO_CPAGAMENTO.Value;

      frmF8.Release;
      frmF8 := nil;
   end;
end;

procedure TfrmVd1101.edTipoPgtExit(Sender: TObject);
var
Ctrl: TWinControl;
begin
   //Verifica se a saida do foco esta travada
   if (edTipoPgt.Tag = 1) then
   begin
      edTipoPgt.SetFocus;
      exit;
   end;

  StatusBar1.Panels[0].Text := '';
end;

procedure TfrmVd1101.edTipoPgtEnter(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '[F8] » Consulta tipo de pagamentos';
end;

procedure TfrmVd1101.edValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  Var
   Liquido, Bruto : Real;
begin
   if (key = 13) and (edValor.Tag = 1) then
   begin
      edValor.Tag      := 0; //Libera saída do foco
      edValor.Visible  := False;

      // Calcula desconto em porcentagem
      Liquido := StrToFloat(edValor.Text);
      Bruto   := StrToFloat(Label6.Caption);

      edDesc.Text := FloatToStr(100 - (Liquido * 100 / Bruto));

      if not Verifica_desconto then
         Exit;

      Desconto1       := Valor_Bruto * StrToFloat(edDesc.Text) / 100;

      Label10.Caption := FloatToStrF(StrToFloat(edDesc.Text),Fffixed,18,2);
      Label11.Caption := FloatToStrF(Desconto1,Fffixed,18,2);

      Label7.Caption  := FloatToStrF(Valor_Bruto - Desconto1,Fffixed,18,2);

      btnGravar.Click;
   end
   else
   begin
      if key = 27 then
      begin
         edValor.Tag     := 0; //Libera saída do foco
         edValor.Visible := False;

         edPesquisa.SetFocus;
      end;
   end;
end;

procedure TfrmVd1101.btnGravarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
      begin
         btnGravar.Enabled   := False;
         btnImprimir.Enabled := False;
         edPesquisa.SetFocus;
      end;
end;

procedure TfrmVd1101.dbEdVendedorKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end;
end;

procedure TfrmVd1101.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    begin
      Key := #0;
      edPesquisa.SetFocus;
  end;
end;

procedure TfrmVd1101.JvCalcEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmVd1101.edGradeEnter(Sender: TObject);
begin
   if Length(edPesquisa.Text) = 0 then
   begin
      edPesquisa.SetFocus;
      exit;
   end;
end;


procedure TfrmVd1101.Alterar1Click(Sender: TObject);
begin
   if cdsVendasItem.RecordCount > 0 then
   begin
      if (edSerie.Text = 'CF') or (copy(edSerie.Text,1,1) = 'E') then
         Application.MessageBox('Item lançado no cupom fiscal não pode ser alterado.','Atenção', MB_OK + MB_ICONSTOP)
      else
      begin
         if dmvd1101.cdsProdutosGRADE_PRODUTO.AsBoolean = True then
            Application.MessageBox('Produto com grade não pode ser alterado.','Atenção', MB_OK + MB_ICONSTOP)
         else
         begin
            Panel1.Enabled := False;
            Panel2.Enabled := False;
            Panel3.Enabled := False;
            Panel4.Enabled := False;

            edQtd2      . Text := cdsVendasItemQUANTIDADE_IVENDAS.AsString;
            JvCalcEdit2 . Text := cdsVendasItemVALORBRUTO_IVENDAS.AsString;

            pnlAlterar.Visible := True;
            edQtd2.SetFocus;
         end;
      end;
   end;
end;

procedure TfrmVd1101.BitBtn1Click(Sender: TObject);
var
   valor_total1:real;
begin
   if edQtd2.Value <= 0 then
      ShowMessage('Digite quantidade superior a zero.')
   else
   begin
      dmvd1101.cdsProdutos.Close;
      dmvd1101.cdsProdutos.CommandText := 'SELECT * FROM P_PRODUTOS WHERE CODIGO_PRODUTO=' + cdsVendasItemPRODUTO_IVENDA.AsString;
      dmvd1101.cdsProdutos.Open;

      // Verifica se o desconto individual está acima do permitido no cadastro
      // do item.
      if Desconto_acima_do_maximo(JvCalcEdit2.Value) then
         exit;

      valor_total1 := cdsVendasItemQUANTIDADE_IVENDAS.AsFloat * cdsVendasItemVALORBRUTO_IVENDAS.AsFloat;
      Valor_Bruto  := Valor_Bruto - valor_total1;

      cdsVendasItem.Edit;
      cdsVendasItemQUANTIDADE_IVENDAS.AsFloat := edQtd2.Value;
      cdsVendasItemVALORBRUTO_IVENDAS.AsFloat := JvCalcEdit2.Value;
      cdsVendasItemDESCONTO_IVENDAS  .AsFloat := ValorDesc1;
      cdsVendasItem.Post;

      valor_total1 := edQtd2.Value * JvCalcEdit2.Value;
      Valor_Bruto  := Valor_Bruto  + valor_total1;
      Desconto1    := Valor_Bruto  * Desc_Porcento / 100;

      Label11.Caption := FloatToStrF(Desconto1   , Fffixed,18,2);
      Label6.Caption  := FloatToStrF(Valor_Bruto , Fffixed,18,2);
      Label7.Caption  := FloatToStrF(Valor_Bruto - Desconto1,Fffixed,18,2);

      Panel1.Enabled  := True;
      Panel2.Enabled  := True;
      Panel3.Enabled  := True;
      Panel4.Enabled  := True;

      pnlAlterar.Visible  := False;
   end;
end;

procedure TfrmVd1101.Excluiritemdalista1Click(Sender: TObject);
var
   Valor_Total1:real;
begin
   if cdsVendasItem.RecordCount > 0 then
   begin
      if Application.MessageBox('Excluir item selecionado?','Confirmação', + MB_YESNO + MB_ICONQUESTION) = id_yes then
      begin
         if (edSerie.Text = 'CF') or (copy(edSerie.Text,1,1) = 'E') then
         begin
            if ModeloEcf1 = '1' then // Bematech
            begin
               ECF.Executa := Bematech_FI_CancelaItemGenerico(cdsVendasItemQTDE_VENDAS.AsString);
               if not ECF.Analisa then
                  exit;
            end
            else
            begin
               if ModeloEcf1 = '2' then // Epson
               begin
                  ECF.Executa := EPSON_Fiscal_Cancelar_Item(pchar(cdsVendasItemQTDE_VENDAS.AsString));
                  ECF.Analisa;
               end;
            end;
         end;

         Valor_Total1 := cdsVendasItemVALORBRUTO_IVENDAS.AsFloat * cdsVendasItemQUANTIDADE_IVENDAS.AsFloat;

         cdsVendasItem.Delete;

         Valor_Bruto     := Valor_Bruto - Valor_Total1;
         Desconto1       := Valor_Bruto * Desc_Porcento / 100;

         Label11.Caption := FloatToStrF(Desconto1  ,  Fffixed,  18,2);
         Label6.Caption  := FloatToStrF(Valor_Bruto,  Fffixed,  18,2);
         Label7.Caption  := FloatToStrF(Valor_Bruto - Desconto1,Fffixed,18,2);

         // Habilita botões do tipo de preço caso não exista nenhum item na lista
         if cdsVendasItem.RecordCount = 0 then
         begin
            if GroupBox9.Visible = True then
            begin
               RadioButton3.Enabled := True;
               RadioButton4.Enabled := True;
            end;
         end;
      end;
   end;
end;

procedure TfrmVd1101.FormActivate(Sender: TObject);
begin
   if (frmVd1101.Tag > 0) and (frmVd1101.Tag < 10) {Carrega_venda} then
   begin
      //Busca o orçamento selecionado
      dmvd1101.cdsVendas.Close;                                   // ==== AQUI É PESQUISA DE VENDA CONCLUÍDA =============
      dmvd1101.cdsVendas.CommandText := dmVd1101.qryVendas.SQL.Text + ' AND V.CODIGO_VENDA=:CODIGO';
      dmvd1101.cdsVendas.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmvd1101.cdsVendas.Params.ParamByName('CODIGO').AsInteger := dmVd1101.cdsPesqVendaCODIGO_VENDA.AsInteger;
      dmvd1101.cdsVendas.Open;

      id_nova_venda1 := dmvd1101.cdsVendasCODIGO_VENDA.Value;
      Desc_Porcento  := 0; //Variável usada na adição dos itens na lista.
                           //Ela soh é alimentado com valor diferente de 0 quando frmVd1101.Tag > 0, tem a descrição
                           //Total no OnClik do Button1 no frmVd1101_2

      // Buscando dados adicionais do orçamento
      // Dados do vendedor
      With dmvd1101 do
      begin
         cdsVendedor.Close;
         cdsVendedor.Params.ParamByName('COD_VENDEDOR').AsInteger := dmvd1101.cdsVendasVENDEDOR_VENDA.AsInteger;
         cdsVendedor.Params.ParamByName('ID_EMPRESA').AsString := CodigoEmpresa1;
         cdsVendedor.Open;
         lbNome_vend.Caption := cdsVendedorNOME_VENDEDOR.AsString;
      end;

      dbEdVendedor.Text := dmvd1101.cdsVendasVENDEDOR_VENDA.AsString;

      //Dados do cliente
      DBEdit1.Text := dmvd1101.cdsVendasCLIENTE_VENDA.AsString;
      lbNome_Cli.Caption := dmvd1101.cdsVendasNOMECLIENTE_VENDA.AsString;

      //Setando valores
      Valor_Bruto     := dmvd1101.cdsVendasVALORNOTA_VENDA.AsFloat + dmvd1101.cdsVendasDESCONTO_VENDA.AsFloat;
      Label6 .Caption := FloatToStrF(Valor_Bruto,fffixed,18,2);

      Valor_liquido   := dmvd1101.cdsVendasVALORNOTA_VENDA.AsFloat;
      Label7 .Caption := FloatToStrF(Valor_liquido,fffixed,18,2);

      Label11.Caption := FloatToStrF(dmvd1101.cdsVendasDESCONTO_VENDA.AsFloat,fffixed,18,2);

      Desc_Porcento   := (dmvd1101.cdsVendasDESCONTO_VENDA.AsFloat * 100) / Valor_Bruto;
      Label10.Caption := FloatToStrF(Desc_Porcento,fffixed,18,2);

      //Busca todos os itens do orçamento para adicionar no ClientDataSet temporário
      dmvd1101.cdsVendasItem.close;
      //dmvd1101.cdsVendasItem.CommandText := dmvd1101.qryVendasItem.SQL.Text;
      dmvd1101.cdsVendasItem.Params.ParamByName('VENDA').AsString   := dmvd1101.cdsVendasCODIGO_VENDA.AsString;
      dmvd1101.cdsVendasItem.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmvd1101.cdsVendasItem.Open;

      dmvd1101.cdsVendasItem.First;
      while not dmvd1101.cdsVendasItem.Eof do
      begin
         cdsVendasItem.Append;

         cdsVendasItemPRODUTO_IVENDA     .Value := dmvd1101.cdsVendasItemPRODUTO_IVENDA.Value;
         cdsVendasItemDESCRICAO_IVENDAS  .Value := dmvd1101.cdsVendasItemDESCRICAO_IVENDAS.Value;
         cdsVendasItemVALORBRUTO_IVENDAS .Value := dmvd1101.cdsVendasItemVALORBRUTO_IVENDAS.Value;
         cdsVendasItemQUANTIDADE_IVENDAS .Value := dmvd1101.cdsVendasItemQUANTIDADE_IVENDAS.Value;
         cdsVendasItemGRADE_IVENDAS      .Value := dmvd1101.cdsVendasItemGRADE_IVENDAS.Value;
         cdsVendasItemPROMOCAO_IVENDAS   .Value := dmvd1101.cdsVendasItemPROMOCAO_IVENDAS.Value;
         cdsVendasItemFABRICA_IVENDAS    .Value := dmvd1101.cdsVendasItemFABRICA_IVENDAS.Value;
         cdsVendasItemSERIE_IVENDAS      .Value := dmvd1101.cdsVendasItemSERIE_IVENDAS.Value;
         cdsVendasItemDESCONTO_IVENDAS   .Value := dmvd1101.cdsVendasItemDESCONTO_IVENDAS.Value;
         cdsVendasItemICM_IVENDAS        .Value := dmvd1101.cdsVendasItemICM_IVENDAS.Value;
         cdsVendasItemIPI_IVENDAS        .Value := dmvd1101.cdsVendasItemIPI_IVENDAS.Value;
         cdsVendasItemREDUTOR_IVENDAS    .Value := dmvd1101.cdsVendasItemREDUTOR_IVENDAS.Value;
         cdsVendasItemTRIBUTACAO_IVENDAS .Value := dmvd1101.cdsVendasItemTRIBUTACAO_IVENDAS.Value;
         cdsVendasItemFISCAL_IVENDAS     .Value := dmvd1101.cdsVendasItemFISCAL_IVENDAS.Value;
         cdsVendasItemGARANTIA_IVENDAS   .Value := dmvd1101.cdsVendasItemGARANTIA_IVENDAS.Value;
         cdsVendasItemTECNICO_IVENDAS    .Value := dmvd1101.cdsVendasItemTECNICO_IVENDAS.Value;
         cdsVendasItemALTURA_IVENDAS     .Value := dmvd1101.cdsVendasItemALTURA_IVENDAS.Value;
         cdsVendasItemLARGURA_IVENDAS    .Value := dmvd1101.cdsVendasItemLARGURA_IVENDAS.Value;
         cdsVendasItemCOMPRIMENTO_VENDAS .Value := dmvd1101.cdsVendasItemCOMPRIMENTO_VENDAS.Value;
         cdsVendasItemQTDE_VENDAS        .Value := dmvd1101.cdsVendasItemQTDE_VENDAS.Value;
         cdsVendasItemCOMPLEMENTO        .Value := dmvd1101.cdsVendasItemCOMPLEMENTO.Value;
         cdsVendasItemCOD_EMPRESA        .Value := dmvd1101.cdsVendasItemCOD_EMPRESA.Value;
         cdsVendasItemID_VENDA_ITEM      .Value := dmvd1101.cdsVendasItemID_VENDA_ITEM.Value;
         cdsVendasItemCLASSE_IVENDA      .Value := dmvd1101.cdsVendasItemCLASSE_IVENDA.Value;

         cdsVendasItem.Post;
         dmvd1101.cdsVendasItem.Next;
      end;
   end;
   Desconto1 := 0;
   Altura1   := 0;
   Largura1  := 0;
end;

procedure TfrmVd1101.FormPaint(Sender: TObject);
var
   Sinal,msn: String;
begin
   if Fechar_formulario then
   begin
      frmVd1101.Tag := -1;
      Close;
      Exit;
   end;

   if frmVd1101.Tag = 2 then // Descrição no topo da unit
   begin
      if Application.MessageBox('Imprimir orçamento?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
      begin
         close;
      end
      else
         close;
   end;

   if frmVd1101.Tag = 3 then // Descrição no topo da unit
   begin
      if Application.MessageBox('Exluir orçamento?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
      begin
         frmVd1101.Tag := -1;
         close;
      end
      else
         close;
   end;

   if (frmVd1101.Tag = 4) or (frmVd1101.Tag = 5) or (frmVd1101.Tag = 6)or (frmVd1101.Tag = 9) then // Descrição das Tags no topo da unit
   begin
      case frmVd1101.Tag of
         4: msn := 'Cancelar devolução de venda?';
         5: msn := 'Cancelar devolução de compra?';
         6: msn := 'Cancelar nota fiscal de remessa?';
         9: msn := 'Cancelar venda?';
      end;


      if Application.MessageBox(pchar(msn),'Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
      begin
         dmVd1101.cdsPesqVenda.Edit;

         // Verifica se cancela Dev. de Venda
         if PEM = '03' then
         begin
            Sinal := '-'; // Sinal para baixa no estoque
            GravaLogUser(Self,'Cancela Nota Fiscal de Devolucao da Venda N. ' +  dmVd1101.cdsPesqVendaCODIGO_VENDA.AsString);
         end
         else
         begin
            // Verifica se cancela Dev. Entrada
            if PEM = '04' then
            begin
               Sinal := '+'; // Sinal para baixa no estoque
               GravaLogUser(Self,'Cancela Nota Fiscal de Devolucao de Compra N. ' +  dmVd1101.cdsPesqVendaCODIGO_VENDA.AsString);
            end
            else
            begin
               // Verifica se cancela NF de remessa
               if PEM = '06' then
               begin
                  Sinal := '+'; // Sinal para baixa no estoque
                  GravaLogUser(Self,'Cancela Nota Fiscal de Remessa N. ' +  dmVd1101.cdsPesqVendaCODIGO_VENDA.AsString);
               end
               else
               begin
                  // Verifica se cancela venda
                  if PEM = '72' then
                  begin
                     Sinal := '+'; // Sinal para baixa no estoque
                     GravaLogUser(Self,'Cancelou a venda N. ' +  dmVd1101.cdsPesqVendaCODIGO_VENDA.AsString);

                     dmVd1101.cdsPesqVendaCHAVE_VENDA.Value := DateToStr(DataSystem1) + '_1_' + Usuario1 + '_EX';

                     dmVd1101.cdsCliente.Close;
                     dmVd1101.cdsCliente.Params.ParamByName('CLIENTE').AsString := DBEdit1.Text;
                     dmVd1101.cdsCliente.Open;

                     dmVd1101.cdsCliente.Edit;
                     dmVd1101.cdsClienteUTILIZADO_CLIENTE.AsFloat := dmVd1101.cdsClienteUTILIZADO_CLIENTE.AsFloat - dmVd1101.cdsPesqVendaVALORNOTA_VENDA.AsFloat;
                     dmVd1101.cdsCliente.Post;

                     dmVd1101.cdsReceber.Close;
                     dmVd1101.cdsReceber.Params.ParamByName('COD_CLI').AsInteger := dmVd1101.cdsClienteCODIGO_CLIENTE.Value;
                     dmVd1101.cdsReceber.Open;

                     // Apaga contas a pagar
                     if not dmVd1101.cdsReceber.IsEmpty then
                     begin
                        dmVd1101.cdsReceber.First;
                        while not dmVd1101.cdsReceber.Eof do
                        begin
                           if copy(dmVd1101.cdsReceberDUPLICATA_RECEBER.Value,1,8) = dmVd1101.cdsPesqVendaSERIE_VENDA.Value + StrZero(dmVd1101.cdsPesqVendaCODIGO_VENDA.AsString,6) then
                              dmVd1101.cdsReceber.Delete
                           else
                              dmVd1101.cdsReceber.Next;
                        end;
                        dmVd1101.cdsReceber.ApplyUpdates(0);
                     end;
                  end;
               end;
            end;
         end;

         dmVd1101.cdsPesqVendaEMISSAO_VENDA     .Clear;
         dmVd1101.cdsPesqVendaDATASAIDA_VENDA   .Clear;
         dmVd1101.cdsPesqVendaHORASAIDA_VENDA   .Clear;
         dmVd1101.cdsPesqVendaBASEICMS_VENDA    .Clear;
         dmVd1101.cdsPesqVendaICMS_VENDA        .Clear;
         dmVd1101.cdsPesqVendaBASEICMS_VENDA    .Clear;
         dmVd1101.cdsPesqVendaICMSSB_VENDA      .Clear;
         dmVd1101.cdsPesqVendaIPI_VENDA         .Clear;
         dmVd1101.cdsPesqVendaPESOBRUTO_VENDA   .Clear;
         dmVd1101.cdsPesqVendaPESOLIQUIDO_VENDA .Clear;
         dmVd1101.cdsPesqVendaEXCLUSAO_VENDA    .AsDateTime := DataSystem1;

         dmVd1101.cdsPesqVenda.Post;
         dmVd1101.cdsPesqVenda.ApplyUpdates(0);

         frmProcess := TfrmProcess.Create(Self);
         frmProcess.ProgressBar1.Max := cdsVendasItem.RecordCount;
         frmProcess.Show;

         cdsVendasItem.First;
         while not cdsVendasItem.Eof do
         begin
            Baixa_qtd_estoque(cdsVendasItemPRODUTO_IVENDA     .AsInteger,
                              cdsVendasItemQUANTIDADE_IVENDAS .AsFloat  ,
                              cdsVendasItemGRADE_IVENDAS      .AsString ,
                              Sinal);

            frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
            cdsVendasItem.Next;
         end;

         frmProcess.Release;
         frmProcess := nil;
      end;

      frmVd1101.Tag := -1;
      close;
   end;

   if frmVd1101.Tag = 7  then // Descrição no topo da unit
   begin
      {if edSerie.Text = 'NF' then
      begin}
         dmImpNF := TdmImpNF.Create(Self);
         dmImpNF.monta_nf(id_nova_venda1,PEM, dmvd1101.cdsPesqVendaVALORNOTA_VENDA.AsFloat, dmvd1101.cdsPesqVendaDESCONTO_VENDA.AsFloat);

      frmVd1101.Tag := -1;
      close;
   end;

   if frmVd1101.Tag = 8  then // Descrição no topo da unit
   begin
      if edSerie.Text = 'NF' then
      begin
         if Application.MessageBox('Reimprimir Nota fiscal?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
         begin
            dmImpNF := TdmImpNF.Create(Self);
            dmImpNF.monta_nf(id_nova_venda1,PEM, dmvd1101.cdsPesqVendaVALORNOTA_VENDA.AsFloat, dmvd1101.cdsPesqVendaDESCONTO_VENDA.AsFloat,True);
            FreeAndNil(dmImpNF);

            frmVd1101.Tag := -1;
            close;
         end;
      end;
   end;
end;

procedure TfrmVd1101.edQtdEnter(Sender: TObject);
begin
   if Length(edPesquisa.Text) = 0 then
      edPesquisa.SetFocus;
end;

procedure TfrmVd1101.edValorUniEnter(Sender: TObject);
begin
   if Length(edPesquisa.Text) = 0 then
      edPesquisa.SetFocus;
end;

procedure TfrmVd1101.FormShow(Sender: TObject);
var
   Index_num: Integer;
   qrySerie : TSQLQuery;
begin
   dmVd1101.cdsVendas.Close;
   Parametros := TParametros_Venda.Create;
   Parametros.Carregar(Tipo_lancamento1);

   edValorUni . DecimalPlaces := Parametros.Decimal;
   edQtd      . DecimalPlaces := Parametros.Qtd_decimal;
   edQtd2     . DecimalPlaces := Parametros.Qtd_decimal;

   if PEM = '3' then
   begin
      frmVd1101.RadioButton3.Checked := True; // Tipo de preço no atacado
      frmVd1101.RadioButton3.Enabled := False;
      frmVd1101.RadioButton4.Enabled := False;
   end;

   //Habilita confirmação de alíquota
   if Parametros.Confirma_Aliquota then
   begin
      edCST.Color     := clWhite;
      edCST.Enabled   := True;
      Label14.Enabled := True;

      edICM.Color      := clWhite;
      edICM.Enabled    := True;
      Label15.Enabled  := True;
      edICM.Font.Color := clBlack;
   end;

   edCFOP.Text     := Parametros.CFOP_Padrao;
   edCFOP.EditMask := '';

   dmvd1101.cdsSerie.Close;
   dmvd1101.cdsSerie.CommandText := 'SELECT * FROM P_SERIE';
   dmvd1101.cdsSerie.Open;

   dmvd1101.cdsSerie.First;
   edSerie.Items.Clear;

   if Serie2 <> '' then
   begin
      while not dmvd1101.cdsSerie.Eof do
      begin
         if (Parametro.Multiplos_ECFs) and (dmvd1101.cdsSerieSERIE_SERIE.Value = 'CF') then
         begin
            qrySerie := TSQLQuery.Create(Self);
            qrySerie.SQLConnection := DmPrincipal.DbConexao;
            qrySerie.SQL.Add('SELECT SERIE_SERIE FROM P_SERIE WHERE SERIE_SERIE=:SER1');
            qrySerie.ParamByName('SER1').AsString := 'E' + dmVd1101.tblECFCAIXA.AsString;
            qrySerie.Open;

            if qrySerie.IsEmpty then
            begin
               qrySerie.Close;
               qrySerie.SQL.Clear;
               qrySerie.SQL.Add('INSERT INTO P_SERIE (SERIE_SERIE, NUMERO_SERIE) VALUES (:SER1, 0)');
               qrySerie.ParamByName('SER1').AsString := 'E' + dmVd1101.tblECFCAIXA.AsString;
               qrySerie.ExecSQL;

               edSerie.Items.Add('E' + dmVd1101.tblECFCAIXA.AsString);
            end;
         end
         else
            edSerie.Items.Add(dmvd1101.cdsSerieSERIE_SERIE.Value);

         dmvd1101.cdsSerie.Next;
      end;

      // Setando o campo de série
      Index_num := edSerie.Items.Count;
      repeat
         edSerie.ItemIndex := Index_num - 1;
         if frmVd1101.PEM = '91' then
         begin
            if edSerie.Text = 'OR' then
               break;
         end
         else
            if (PEM = '1') or (PEM = 'B') then // Cupom fiscal
            begin
               if (edSerie.Text = 'CF') or (Copy(edSerie.Text,1,1) = 'E') then
                  break;
            end
            else
            begin
               if edSerie.Text = Parametros.Serie_padrao then
                  break;
            end;
         
         Index_num := Index_num - 1;
      until Index_num = 0;
   end;

   if GroupBox10.Visible then
   begin
      if edSerie.Enabled = True then
         edSerie.SetFocus;
   end;

   Fechar_formulario := ECF.Abre_cupom(edSerie.Text);
end;

procedure TfrmVd1101.edQtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TfrmVd1101.edQtd2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      JvCalcEdit2.SetFocus;
end;

procedure TfrmVd1101.edCSTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmVd1101.edICMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmVd1101.edCSTEnter(Sender: TObject);
begin
   if Length(edPesquisa.Text) = 0 then
   begin
      edPesquisa.SetFocus;
      exit;
   end;
end;

procedure TfrmVd1101.edICMEnter(Sender: TObject);
begin
   if Length(edPesquisa.Text) = 0 then
   begin
      edPesquisa.SetFocus;
      exit;
   end;
end;

procedure TfrmVd1101.edGradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmVd1101.Limpa_campos;
begin
   edGrade.Text    := '';
   edCST.Text      := '';
   edICM.Text      := '';
   edValorUni.Text := '';
   edPesquisa.Text := '';
   edQtd.Text      := '1';
   edPesquisa.SetFocus;
end;

procedure TfrmVd1101.RadioButton4Click(Sender: TObject);
begin
   Label4.Caption := 'Vlr Unit.';
   edPesquisa.SetFocus;
end;

procedure TfrmVd1101.RadioButton3Click(Sender: TObject);
begin
   Label4.Caption := 'Atacado';
   edPesquisa.SetFocus;
end;

procedure TfrmVd1101.JvCalcEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      BitBtn1.SetFocus;
end;

function TfrmVd1101.Verifica_desuso: Boolean;
var
   Desuso: Boolean;
begin
   Result := False;
                //============== PESQUISA DE PRODUTOS ========
   if RadioButton1.Checked then
      Desuso := dmVd1101.cdsPesqProdutos.FieldByName('DESUSO_PRODUTO').AsBoolean
   else
      Desuso := dmF12.cdsPesqProdutos.FieldByName('DESUSO_PRODUTO').AsBoolean;
      
   if Parametros.Mostra_produto_desuso and Desuso then
   begin
      Limpa_campos;
      Application.MessageBox('Este item está em desuso.','Atenção', + MB_OK + MB_ICONINFORMATION);
      Result := True;
   end;
end;

function TfrmVd1101.Senha_gerente: Boolean;
begin
   frmVd1101_5 := TfrmVd1101_5.Create(self);
   frmVd1101_5.ShowModal;

   if frmVd1101_5.Tag = 0 {Tag = 0 Senha incorreta} then
   begin
      frmVd1101_5.Release;
      frmVd1101_5 := nil;
      Result := False;
      DBEdit1.SetFocus;
   end
   else
   begin
      frmVd1101_5.Release;
      frmVd1101_5 := nil;
      Result := True;
   end;
end;

function TfrmVd1101.Desconto_acima_do_maximo(Valor: Real): Boolean;
var
   PorcDesc1, ValorTotal: Real;
begin
   Result := True; // Desconto acima do permitido

   if GroupBox9.Visible = True then
   begin
      // Verifica desconto individual
      if RadioButton4.Checked then // Varejo
      begin
         if dmvd1101.cdsProdutosMETRO_CUB_PRODUTO.AsBoolean then
         begin
            if Item_em_promocao then
               ValorDesc1 := dmvd1101.cdsProdutosPROMOCAO_PRODUTO.AsFloat - Valor
            else
               ValorDesc1 := ValorCubico1 - Valor
         end
         else
         begin
            if Item_em_promocao then
               ValorDesc1 := dmvd1101.cdsProdutosPROMOCAO_PRODUTO.AsFloat - Valor
            else
               ValorDesc1 := dmvd1101.cdsProdutosPRECO_LISTA_PRODUTO.AsFloat - Valor;
         end;
      end
      else
      begin
         if Item_em_promocao then
            ValorDesc1 := dmvd1101.cdsProdutosPROMOCAO_PRODUTO.AsFloat - Valor
         else
            ValorDesc1 := dmvd1101.cdsProdutosVLRATACADO_PRODUTO.AsFloat  - Valor;
      end;

      ValorDesc1 := ArredondarDecimal(ValorDesc1,2);

      // Transforma desconto em Porcentagem
      if Item_em_promocao then
         PorcDesc1 := ValorDesc1 * 100 / dmvd1101.cdsProdutosPROMOCAO_PRODUTO.AsFloat
      else
      begin
         if RadioButton4.Checked then
            // Varejo
            PorcDesc1 := ValorDesc1 * 100 / dmvd1101.cdsProdutosPRECO_LISTA_PRODUTO.AsFloat
         else
            // Atacado
            PorcDesc1 := ValorDesc1 * 100 / dmvd1101.cdsProdutosVLRATACADO_PRODUTO.AsFloat;
      end;
   end
   else
   begin
      if Item_em_promocao then
         ValorDesc1 := ArredondarDecimal(dmvd1101.cdsProdutosPROMOCAO_PRODUTO.AsFloat - Valor,2)
      else
         ValorDesc1 := ArredondarDecimal(dmvd1101.cdsProdutosPRECO_LISTA_PRODUTO.AsFloat - Valor,2);

      if Item_em_promocao then
         PorcDesc1  := ValorDesc1 * 100 / dmvd1101.cdsProdutosPROMOCAO_PRODUTO.AsFloat
      else
         PorcDesc1  := ValorDesc1 * 100 / dmvd1101.cdsProdutosPRECO_LISTA_PRODUTO.AsFloat;
   end;

   if Master1 = 'T' then
      Result := False // Desconto liberado
   else
   begin
      if PorcDesc1 > dmvd1101.cdsProdutosDESCONTO_PRODUTO.AsFloat then
      begin
         if Application.MessageBox(pchar('Desconto: ' + FloatToStrF(PorcDesc1,ffFixed,18,2) + '% é acima do Desconto Máximo permitido.' + #13 + #13 + '                     Deseja continuar?'),'Atenção', MB_ICONINFORMATION + MB_YESNO) = id_yes then
         begin
            // Chama a tela de senha e verifica se a mesma esta correta
            if Senha_gerente then
            begin
               if Parametros.Limite_desconto < PorcDesc1 then
               begin
                  Application.MessageBox('Desconto acima do permitido pelo Limite de Desconto de Gerente','Atenção', MB_OK + MB_ICONERROR);
                  Result := True;
               end
               else
                  Result := False; // Desconto liberado
            end;
         end;
      end
      else
         Result := False; // Desconto liberado
   end;
end;

procedure TfrmVd1101.BitBtn2Click(Sender: TObject);
begin
   Panel1.Enabled := True;
   Panel2.Enabled := True;
   Panel3.Enabled := True;
   Panel4.Enabled := True;

   pnlAlterar.Visible  := False;
end;

procedure TfrmVd1101.edSerieExit(Sender: TObject);
begin
   if (edSerie.Text = 'OR') and (PEM = '2') then
   begin
      Application.MessageBox('Série inálida.','Erro', MB_OK + MB_ICONWARNING);
      edSerie.SetFocus;
      abort;
   end
   else
      Fechar_formulario := ECF.Abre_cupom(edSerie.Text);
end;

procedure TfrmVd1101.edSerieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      dbEdVendedor.SetFocus;
end;

procedure TfrmVd1101.FormCreate(Sender: TObject);
begin
   Desconto_ja_liberado := False;
   dmVd1101 := TdmVd1101.Create(Self);
   dmVd1101.tblECF.Open;
   ECF := TECF.Create;

   cdsVendasItem.CreateDataSet;
   cdsVendasItem.Open;
end;

procedure TfrmVd1101.edtCFOPIndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmVd1101.edtCFOPIndEnter(Sender: TObject);
begin
   if Length(edPesquisa.Text) = 0 then
   begin
      edPesquisa.SetFocus;
      exit;
   end;
end;

procedure TfrmVd1101.SpeedButton4Click(Sender: TObject);
begin
   frmAltF12 := TfrmAltF12.Create(Self);
   frmAltF12.ShowModal;

   edtCodParceiro.Text := dmAltF12.cdsParceiroCODIGO_PARCEIRO.AsString;

   edtCodParceiro.SetFocus;

   frmAltF12.Release;
   frmAltF12 := nil;
end;

procedure TfrmVd1101.edtCodParceiroExit(Sender: TObject);
begin
   if edtCodParceiro.Text <> '' then
   begin
      dmvd1101.cdsParceiro.Close;
      dmvd1101.cdsParceiro.CommandText := 'SELECT * FROM P_PARCEIRO WHERE COD_EMPRESA=:EMPRESA AND CODIGO_PARCEIRO=:COD_PAR';
      dmvd1101.cdsParceiro.Params.ParamByName('EMPRESA').AsInteger := StrToInt(CodigoEmpresa1);
      dmvd1101.cdsParceiro.Params.ParamByName('COD_PAR').AsString  := edtCodParceiro.Text;
      dmvd1101.cdsParceiro.Open;

      if dmvd1101.cdsParceiro.RecordCount > 0 then
      begin
          // Mostra nome do parceiro na tela
         if Length(dmvd1101.cdsParceiroNOME_PARCEIRO.Value) > 35 then
            lblNome_parceiro.Caption := copy(dmvd1101.cdsParceiroNOME_PARCEIRO.Value,1,35) + '...'
         else
            lblNome_parceiro.Caption := dmvd1101.cdsParceiroNOME_PARCEIRO.Value;
      end;
   end;
end;

procedure TfrmVd1101.edtCodParceiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
      edPesquisa.SetFocus;
end;

function TfrmVd1101.Item_em_promocao: Boolean;
begin
   if (dmvd1101.cdsProdutosPROMOCAO_PRODUTO.AsFloat > 0) and not (dmvd1101.cdsProdutosFIM_PROMOCAO_PRODUTO.IsNull) then
      Result := True
   else
      Result := False;
end;

procedure TfrmVd1101.edtCodParceiroKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      edPesquisa.SetFocus;
end;

function TfrmVd1101.Cfop_valido(CFOP: TCustomEdit): Boolean;
begin
   Result := False;
   // Verifica a validade do CFOP
   With dmvd1101 do
      begin
         cdsNatureza.Close;
                                                               //As 2 funções abaixo,(FloatToStr, StringToFloat) retira o ponto
                                                               //e deixa somente números.
                                                               //1° Converte tudo em somente numeros, depois a outra transforma
                                                               //os num em valores strings
         cdsNatureza.Params.ParamByName('CODIGO').AsString  := FloatToStr(StringToFloat(CFOP.text));
         cdsNatureza.Open;

         if cdsNatureza.RecordCount = 0 then
         begin
            cdsNatureza.Close;
            ShowMessage('C.F.O.P. não encontrado.');
            Exit;
         end
         else
         begin
            if (Tipo_lancamento1 = 'V') or (Tipo_lancamento1 = 'O') then
            begin
               if (copy(CFOP.Text,1,1) = '5') and (EST_CLI <> Parametros.UF_Local)then
               begin
                  ShowMessage('C.F.O.P. inválido!');
                  Exit;
               end
               else
               begin
                  if (copy(CFOP.Text,1,1) = '6') and (EST_CLI = Parametros.UF_Local)then
                  begin
                     ShowMessage('C.F.O.P. inválido!');
                     Exit;
                  end
                  else
                  begin
                     if (copy(CFOP.Text,1,1) = '1') or (copy(CFOP.Text,1,1) = '2')then
                     begin
                        ShowMessage('C.F.O.P. inválido!');
                        Exit;
                     end;
                  end;
               end;
            end
            else
            begin
               // Devolução
               if Tipo_lancamento1 = 'D' then
               begin
                  // Verifica se é devolução
                  if Copy(PEM,2,1) = '1' then
                  begin
                     if (StringToInt(copy(CFOP.Text,1,2)) <> 12) Then
                     begin
                        ShowMessage('C.F.O.P. inválido!');
                        Exit;
                     end;
                  end
                  else
                  begin
                     // Verifica se é devolução de compra
                     if Copy(PEM,2,1) = '2' then
                     begin
                        if (StringToInt(copy(CFOP.Text,2,3)) <> 202) then
                        begin
                           ShowMessage('C.F.O.P. inválido!');
                           Exit;
                        end;
                     end;
                  end;
               end
               else
               begin
                  if Tipo_lancamento1 = 'E' then
                  begin
                     if (StringToInt(copy(CFOP.Text,1,2)) > 11) or (StringToInt(copy(CFOP.Text,3,1)) > 1) then
                     begin
                        ShowMessage('C.F.O.P. inválido!');
                        Exit;
                     end;
                  end;
               end;
            end;
         end;

         Result := True;
      end;
end;

function TfrmVd1101.Carrega_venda: Boolean;
begin
   //Faz busca somente de esta abetura for apara visualização / ou alteração
   if (frmVd1101.Tag > 0) and (frmVd1101.Tag < 10) then
      Result := True
   else
      Result := False;
end;

function TfrmVd1101.Verifica_desconto: Boolean;
begin
   Result := True;

   if not Desconto_ja_liberado then
   begin
      edDesc.Text := FloatToStr(StringToFloat(edDesc.Text));
      if StringToFloat(edDesc.Text) > StringToFloat(dmVd1101.cdsFormaPagamentoDESCONTO_CPAGAMENTO.AsString) then
      begin
         Application.MessageBox('Desconto acima do permitido para esta forma de pagamento.','Atenção', MB_OK + MB_ICONASTERISK);

         frmVd1101_5 := TfrmVd1101_5.Create(self);
         frmVd1101_5.ShowModal;

         if frmVd1101_5.Tag = 0 {Tag = 0 Senha incorreta} then
         begin
            frmVd1101_5.Release;
            frmVd1101_5 := nil;
            Result := False;
         end
         else
         begin
            frmVd1101_5.Release;
            frmVd1101_5 := nil;
         end;

         if Parametros.Limite_desconto < StringToFloat(edDesc.Text) then
         begin
            Application.MessageBox('Desconto acima do permitido pelo Limite de Desconto de Gerente','Atenção', MB_OK + MB_ICONERROR);
            Result := False;
         end
         else
            Desconto_ja_liberado := True;
      end;
   end;
end;

procedure TfrmVd1101.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
