{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FIN036
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 21/05/2007
 FINALIDADE           --> Faturamento
 COMENTARIO           -->

 *******************************************************************************}

unit uFn1101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, JvExMask,
  JvToolEdit, JvDBControls, JvExStdCtrls, JvEdit, JvValidateEdit, Grids,
  DBGrids, DB, uecf, umulticlasses;

type
  TfrmFn1101 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtSelecionados: TJvValidateEdit;
    edtValor: TJvValidateEdit;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    btnConcluir: TBitBtn;
    btnSair: TBitBtn;
    DataSource1: TDataSource;
    edtSerie: TJvValidateEdit;
    edtCFOP: TJvValidateEdit;
    Edit1: TEdit;
    edtCliente: TJvValidateEdit;
    edtPropriedade: TJvValidateEdit;
    edtEmissao: TJvDateEdit;
    edtFormaPgto: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Panel3: TPanel;
    Label9: TLabel;
    edtPesquisar: TMaskEdit;
    Label10: TLabel;
    edtReserva: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCFOPExit(Sender: TObject);
    procedure edtSerieExit(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure edtFormaPgtoExit(Sender: TObject);
    procedure edtEmissaoExit(Sender: TObject);
    procedure edtCFOPEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteEnter(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtEmissaoEnter(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure btnConcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function Retorna_CFOP(Codigo, Descricao : TCustomEdit) : Boolean;
    function Retorna_Forma_Pagamento(Codigo : TCustomEdit) : Boolean;
    function Retorna_Cliente(Codigo : TCustomEdit) : Boolean;
    function Checa(Campo : Integer) : Boolean;
    procedure LimpaStatusBar;
    procedure Seleciona_Titulo;
    procedure ImprimeOrc(Serie : String);
    procedure Carrega_Cabecalho_Fatura;
  public
    { Public declarations }
    Valor_Titulos : Double;
    Conta_Titulos : Integer;
    Cliente_Contribu,
    Estado_Cliente, Numero_Fatura1 : String;
  end;

var
  frmFn1101: TfrmFn1101;

implementation

uses udmFn1101, uGlobal, uConsulta, uFn1101_01, uProcess, uDmImpOrc,
  udmFn1102;


{$R *.dfm}

procedure TfrmFn1101.FormCreate(Sender: TObject);
begin
   dmFn1101 := TdmFn1101.Create(Self);

   Parametro := TParametros_Venda.Create;

   Parametro.Carregar;
end;

procedure TfrmFn1101.FormShow(Sender: TObject);
begin
   btnConcluir.Enabled := True;

   Valor_Titulos  := 0;
   Conta_Titulos  := 0;
   Estado_Cliente := '';

   dmFn1101.cdsVenda.Close;
   dmFn1101.cdsVenda.Params.ParamByName('CODIGO_CLIENTE').AsInteger := 0;
   dmFn1101.cdsVenda.Open;

   dmFn1101.cdsVenda.Append;

   edtEmissao.Date  := DataSystem1;

   Estado_Cliente   := dmFn1101.cdsVendaESTADO_CLIENTE.AsString;

   Cliente_Contribu := dmFn1101.cdsVendaCONTRIBUINTE_CLIENTE.AsString;

   edtSerie.SetFocus;

   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[2].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[2].Width := 1000;
end;

function TfrmFn1101.Retorna_CFOP(Codigo, Descricao : TCustomEdit): Boolean;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      Application.MessageBox('Informe o Código', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;

   dmFn1101.qryConsulta.Close;
   dmFn1101.qryConsulta.SQL.Clear;
   dmFn1101.qryConsulta.SQL.Add('select n.codigo_nat, n.descricao_nat '+
                                'from e_natureza n '+
                                'where n.codigo_nat = ' + Codigo.Text);

   dmFn1101.qryConsulta.Open;

   if dmFn1101.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('CFOP não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;

   if Descricao is TEdit then
      Descricao.Text := dmFn1101.qryConsulta.FieldByName('descricao_nat').AsString;

end;

procedure TfrmFn1101.edtCFOPExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if not Checa(02) then
   begin
      edtCFOP.SetFocus;
      Exit;
   end;
end;

procedure TfrmFn1101.edtSerieExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtSerie.Value = '' then
   begin
      edtSerie.SetFocus;
      Exit;
   end
   else
   begin
      if Length(edtSerie.EditText) > 2 then
      begin
         edtSerie.SetFocus;
         Exit;
      end;
   end;
end;

function TfrmFn1101.Checa(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin
         if not Retorna_Cliente(edtCliente) then
            Result := False;
      end;

      02:
      begin
         if not Retorna_CFOP(edtCFOP, Edit1) then
            Result := False;
      end;

      03:
      begin
         if not Retorna_Forma_Pagamento(edtFormaPgto) then
            Result := False;
      end;
   end;
end;

procedure TfrmFn1101.edtClienteExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtCliente.Value = 0 then
   begin
      edtCliente.SetFocus;
      Exit;
   end
   else
   begin
      if not Checa(01) then
      begin
         edtCliente.SetFocus;
         Exit;
      end;
   end;
end;

function TfrmFn1101.Retorna_Forma_Pagamento(Codigo: TCustomEdit): Boolean;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      Application.MessageBox('Informe o Código', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;

   dmFn1101.qryConsulta.Close;
   dmFn1101.qryConsulta.SQL.Clear;
   dmFn1101.qryConsulta.SQL.Add('select c.codigo_cpagamento '+
                                'from p_cpagamento c '+
                                'where c.codigo_cpagamento = ' + Codigo.Text);

   dmFn1101.qryConsulta.Open;

   if dmFn1101.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Forma de pagamento não cadastrada', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;
end;

procedure TfrmFn1101.edtFormaPgtoExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtFormaPgto.Value = 0 then
   begin
      edtFormaPgto.SetFocus;
      Exit;
   end
   else
   begin
      if not Checa(03) then
      begin
         edtFormaPgto.SetFocus;
         Exit;         
      end
      else
      begin
         dmFn1101.cdsVenda.Close;
         dmFn1101.cdsVenda.Params.ParamByName('CODIGO_CLIENTE').AsInteger := edtCliente.Value;

         if edtReserva.Text = 'Æ' then
         begin
            dmFn1101.cdsVenda.Params.ParamByName('SERIE1').AsString := 'CI';
            dmFn1101.cdsVenda.Params.ParamByName('SERIE2').AsString := 'NF';
         end
         else
         begin
            dmFn1101.cdsVenda.Params.ParamByName('SERIE1').AsString := '';
            dmFn1101.cdsVenda.Params.ParamByName('SERIE2').AsString := 'NF';
         end;

         dmFn1101.cdsVenda.Open;

         dmFn1101.cdsGrid.Close;
         dmFn1101.cdsGrid.CreateDataSet;

         if not dmFn1101.cdsVenda.IsEmpty then
         begin
            Estado_Cliente   := dmFn1101.cdsVendaESTADO_CLIENTE.AsString;

            Cliente_Contribu := dmFn1101.cdsVendaCONTRIBUINTE_CLIENTE.AsString;

            dmFn1101.cdsVenda.First;

            while not dmFn1101.cdsVenda.Eof do
            begin
               dmFn1101.cdsGrid.Append;

               dmFn1101.cdsGridCOD_VENDA.AsInteger           := dmFn1101.cdsVendaCODIGO_VENDA.AsInteger;

               dmFn1101.cdsGridSERIE_VENDA.AsString          := dmFn1101.cdsVendaSERIE_VENDA.AsString;

               dmFn1101.cdsGridNOTAFISCAL_VENDA.AsInteger    := dmFn1101.cdsVendaNOTAFISCAL_VENDA.AsInteger;

               dmFn1101.cdsGridDATA_VENDA.AsDateTime         := dmFn1101.cdsVendaDATA_VENDA.AsDateTime;

               dmFn1101.cdsGridCLIENTE_VENDA.AsInteger       := dmFn1101.cdsVendaCLIENTE_VENDA.AsInteger;

               dmFn1101.cdsGridNOME_CLIENTE.AsString         := dmFn1101.cdsVendaNOMECLIENTE_VENDA.AsString;

               dmFn1101.cdsGridVALOR_VENDA.AsFloat           := dmFn1101.cdsVendaVALORNOTA_VENDA.AsFloat;

               dmFn1101.cdsGridFORMAPAGTO_VENDA.AsInteger    := dmFn1101.cdsVendaCPAGAMENTO_VENDA.AsInteger;

               dmFn1101.cdsGridFORMAPAGTO_DESCRICAO.AsString := dmFn1101.cdsVendaDESCRICAO_NAT.AsString;

               dmFn1101.cdsGrid.Post;

               dmFn1101.cdsVenda.Next;
            end;

            dmFn1101.cdsGrid.First;
         end
         else
         begin
            if dmFn1101.cdsGrid.RecordCount > 0 then
               dmFn1101.cdsGrid.EmptyDataSet;

            Application.MessageBox('Não existe lançamento para este cliente', 'Informação', MB_OK+MB_ICONEXCLAMATION);

            edtCliente.SetFocus;
            Exit;
         end;
      end;
   end;
end;

procedure TfrmFn1101.edtEmissaoExit(Sender: TObject);
begin
   if edtEmissao.Text = '' then
   begin
      edtEmissao.SetFocus;
      Exit;
   end;
end;

procedure TfrmFn1101.LimpaStatusBar;
begin
   if StatusBar1.Panels[0].Text <> '' then
      StatusBar1.Panels[0].Text := '';

   if StatusBar1.Panels[1].Text <> '' then
      StatusBar1.Panels[1].Text := '';

   if StatusBar1.Panels[2].Text <> '' then
      StatusBar1.Panels[2].Text := '';

   if StatusBar1.Panels[3].Text <> '' then
      StatusBar1.Panels[3].Text := '';
end;

procedure TfrmFn1101.edtCFOPEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o CFOP ';
   StatusBar1.Panels[0].Width := 150;

   StatusBar1.Panels[1].Text := ' [Ctrl+F12] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn1101.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if not edtPesquisar.Focused then
   begin
      if Key = 27 then
         Close;
   end;

   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn1101.SpeedButton1Click(Sender: TObject);
begin
   edtCFOP.SetFocus;

   ConsultaCFOP(edtCFOP);
end;

procedure TfrmFn1101.edtCFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 113) then // Ctrl+F2
       SpeedButton1.Click;
end;

procedure TfrmFn1101.edtClienteEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o Código do Cliente ';
   StatusBar1.Panels[0].Width := 180;

   StatusBar1.Panels[1].Text := ' [F7] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn1101.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 118 then
      ConsultaCliente(edtCliente);
end;

procedure TfrmFn1101.edtEmissaoEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn1101.DBGrid1Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [ESC] » Retorno ';
   StatusBar1.Panels[0].Width := 100;                    

   StatusBar1.Panels[1].Text := ' [M] » Marca/Desmarca ';
   StatusBar1.Panels[1].Width := 140;

   StatusBar1.Panels[2].Text := ' [F10] » Localiza ';
   StatusBar1.Panels[2].Width := 1000;
end;

procedure TfrmFn1101.Seleciona_Titulo;
begin
   if not dmFn1101.cdsGrid.IsEmpty then
   begin
      dmFn1101.cdsGrid.Edit;

      if dmFn1101.cdsGridSELECIONADO.AsString = '' then
      begin
         Valor_Titulos := Valor_Titulos + dmFn1101.cdsGridVALOR_VENDA.AsFloat;

         Conta_Titulos := Conta_Titulos + 1;

         dmFn1101.cdsGridSELECIONADO.AsString := 'X';

         dmFn1101.cdsGrid.Next;
      end
      else
      begin
         Valor_Titulos := Valor_Titulos - dmFn1101.cdsGridVALOR_VENDA.AsFloat;

         Conta_Titulos := Conta_Titulos - 1;

         dmFn1101.cdsGridSELECIONADO.AsString := '';

         dmFn1101.cdsGrid.Next;
      end;

      edtSelecionados.Value := Conta_Titulos;

      edtValor.Value        := Valor_Titulos;
   end;
end;

procedure TfrmFn1101.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 77 then // M
      Seleciona_Titulo;

   if Key = 121 then // F10
      RadioGroup1.Visible := True;
end;

procedure TfrmFn1101.RadioGroup1Click(Sender: TObject);
begin
   Panel3.Visible := True;

   if RadioGroup1.ItemIndex = 2 then
      edtPesquisar.EditMask := '!99/99/0000;1;';

   edtPesquisar.SetFocus;
end;

procedure TfrmFn1101.edtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if edtPesquisar.Text <> '' then
      begin
         if RadioGroup1.ItemIndex = 0 then
         begin
            edtPesquisar.Text := RemoveString(edtPesquisar.Text); // deixa apenas números

            dmFn1101.cdsGrid.IndexFieldNames := 'COD_VENDA';
            if not dmFn1101.cdsGrid.FindKey([edtPesquisar.Text]) then
            begin
               Application.MessageBox('Não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
               Exit;
            end;
         end;

         if RadioGroup1.ItemIndex = 1 then
         begin
            edtPesquisar.Text := RemoveString(edtPesquisar.Text); // deixa apenas números

            dmFn1101.cdsGrid.IndexFieldNames := 'NOTAFISCAL_VENDA';
            if not dmFn1101.cdsGrid.FindKey([edtPesquisar.Text]) then
            begin
               Application.MessageBox('Não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
               Exit;
            end;
         end;

         if RadioGroup1.ItemIndex = 2 then
         begin
            dmFn1101.cdsGrid.IndexFieldNames := 'DATA_VENDA';
            if not dmFn1101.cdsGrid.FindKey([edtPesquisar.Text]) then
            begin
               Application.MessageBox('Não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
               Exit;
            end;
         end;
      end;

      RadioGroup1.Visible   := False;
      RadioGroup1.ItemIndex := -1;
      Panel3.Visible        := False;
      edtPesquisar.EditMask := '';
      edtPesquisar.Clear;
      DBGrid1.SetFocus;
   end;

   if Key = 27 then
   begin
      RadioGroup1.Visible   := False;
      RadioGroup1.ItemIndex := -1;
      Panel3.Visible        := False;
      edtPesquisar.EditMask := '';
      edtPesquisar.Clear;
      DBGrid1.SetFocus;
   end;
end;

function TfrmFn1101.Retorna_Cliente(Codigo: TCustomEdit): Boolean;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      Application.MessageBox('Informe o Código', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;

   dmFn1101.qryConsulta.Close;
   dmFn1101.qryConsulta.SQL.Clear;
   dmFn1101.qryConsulta.SQL.Add('select e.codigo_cliente '+
                                'from e_cliente e '+
                                'where e.codigo_cliente = ' + Codigo.Text);

   dmFn1101.qryConsulta.Open;

   if dmFn1101.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Cliente não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;
end;

procedure TfrmFn1101.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn1101.btnConcluirClick(Sender: TObject);
Var Contador2 : Integer;
begin
   //btnConcluir.Enabled := False;

   Contador2 := 0;

   if not dmFn1101.cdsGrid.IsEmpty then
   begin
      dmFn1101.cdsGrid.First;

      frmProcess := TfrmProcess.Create(Self);
      frmProcess.JvgLabel1.Caption := 'Processando...';
      frmProcess.ProgressBar1.Max := dmFn1101.cdsGrid.RecordCount;
      frmProcess.Show;

      frmFn1101.DBGrid1.DataSource.Enabled := False; // paralisa o cursor da dbgrid

      while not dmFn1101.cdsGrid.Eof do
      begin
         frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
         frmProcess.Refresh;
         
         if dmFn1101.cdsGridSELECIONADO.AsString = 'X' then
            Contador2 := Contador2 + 1;

         dmFn1101.cdsGrid.Next;
      end;

      frmFn1101.DBGrid1.DataSource.Enabled := True; // paralisa o cursor da dbgrid

      frmProcess.Release;
      frmProcess := nil;

      if Contador2 = 0 then
      begin
         Application.MessageBox('Não há títulos selecionados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end
      else
      begin
         dmFn1101.cdsGrid.First;

         frmFn1101_01 := TfrmFn1101_01.Create(Self);
         frmFn1101_01.ShowModal;
         frmFn1101_01.Release;
         frmFn1101_01 := nil;

         if Application.MessageBox('Deseja Imprimir a Fatura?', 'Atenção', MB_YESNO+MB_ICONQUESTION) = mrYes then
            ImprimeOrc(edtSerie.Text);

         DBGrid1.DataSource.Enabled := False; // paralisa o cursor da dbgrid

         dmFn1101.cdsGrid.First;
         while not dmFn1101.cdsGrid.Eof do
         begin
            if dmFn1101.cdsGridSELECIONADO.AsString = 'X' then
               dmFn1101.cdsGrid.Delete
            else
               dmFn1101.cdsGrid.Next;
         end;

         DBGrid1.DataSource.Enabled := True;
         dmFn1101.cdsGrid.First;
         Application.ProcessMessages;
         Self.Refresh;
      end;
   end;
end;

procedure TfrmFn1101.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmFn1101.ImprimeOrc(Serie: String);
var
   CodCliente, Numero, File1, Fatura: String;
   Contador, pContador : Integer;
begin
   DBGrid1.DataSource.Enabled := False; // paralisa o cursor da dbgrid

   File1      := Copy(Numero_Fatura1, 1, 8) + '.raf';
   Contador   := 0;
   pContador  := 0;

   dmFn1101.cdsSerie.Open;

   if dmFn1101.cdsSerie.Locate('SERIE_SERIE',Serie,[]) then
   begin
      if dmImpOrc = nil then
         dmImpOrc := TdmImpOrc.Create(self);

      Carrega_Cabecalho_Fatura; // procedure

      dmFn1101.cdsGrid.First;
      while not dmFn1101.cdsGrid.Eof do
      begin
         if dmFn1101.cdsGridSELECIONADO.AsString = 'X' then
         begin
            pContador := pContador + 1;
               
            dmImpOrc.Carrega_data_sets(edtSerie.Text ,dmFn1101.cdsGridCOD_VENDA.AsInteger,False,True);
         end;

         dmFn1101.cdsGrid.Next;
      end;

      DBGrid1.DataSource.Enabled := True; // libera o cursor da dbgrid

      dmFn1101.cdsReceber3.First;
      while not dmFn1101.cdsReceber3.Eof do
      begin
         Contador := Contador + 1;

         Fatura := Fatura + ' ' + dmFn1101.cdsReceber3DUPLICATA_RECEBER.AsString;

         if Contador = 3 then
            Break; // no campo só cabe 3 números de fatura

         dmFn1101.cdsReceber3.Next;
      end;

      dmImpOrc.cdsOrcamento.Edit;

      if dmFn1101.cdsReceber3.RecordCount > 1 then
         dmImpOrc.cdsOrcamentoOBS1.AsString := 'Referente as Faturas: '+ Fatura
      else
         dmImpOrc.cdsOrcamentoOBS1.AsString := 'Referente a Fatura: '+ Fatura;

      dmImpOrc.cdsOrcamentoOBS2.AsString := '..........................................';
      dmImpOrc.cdsOrcamentoOBS4.AsString := dmFn1101.cdsVendaNOMECLIENTE_VENDA.AsString;

       dmImpOrc.imprime(File1);
   end;
end;

procedure TfrmFn1101.Carrega_Cabecalho_Fatura;
Var
  pFatura_Venda, pDesconto_Venda,
  pDesc_Esp_Venda, pVal_Not_Venda  : Double;
  Cod_Venda, Contador1 : Integer;
begin
   pFatura_Venda   := 0;
   pDesconto_Venda := 0;
   pDesc_Esp_Venda := 0;
   pVal_Not_Venda  := 0;
   Cod_Venda       := 0;
   Contador1       := 0;

   with dmImpOrc do
   begin
      dmFn1101.cdsGrid.First;

      while not dmFn1101.cdsGrid.Eof do
      begin
         if dmFn1101.cdsGridSELECIONADO.AsString = 'X' then
         begin
            Contador1 := Contador1 + 1;

            if Contador1 = 1 then
               Cod_Venda := dmFn1101.cdsGridCOD_VENDA.AsInteger;

            qryVenda.Close;
            qryVenda.ParamByName('CODEMPRESA') .AsString  := CodigoEmpresa1;
            qryVenda.ParamByName('NUMORC')     .AsInteger := dmFn1101.cdsGridCOD_VENDA.AsInteger;
            qryVenda.Open;

            pFatura_Venda                  		:= pFatura_Venda + qryVenda.FieldByName('FATURA_VENDA').AsFloat;
            pDesconto_Venda                   	:= pDesconto_Venda + qryVenda.FieldByName('DESCONTO_VENDA').AsFloat;
            pDesc_Esp_Venda                     := pDesc_Esp_Venda + qryVenda.FieldByName('DESCON_ESP_VENDA').AsFloat;
            pVal_Not_Venda                    	:= pVal_Not_Venda + qryVenda.FieldByName('VALORNOTA_VENDA').AsFloat;
         end;

         dmFn1101.cdsGrid.Next;
      end;
      
      dmFn1101.cdsGrid.First;
      
      qryVenda.Close;
      qryVenda.ParamByName('CODEMPRESA') .AsString  := CodigoEmpresa1;
      qryVenda.ParamByName('NUMORC')     .AsInteger := Cod_Venda;
      qryVenda.Open;

      cdsOrcamento.Close;
      cdsOrcamento.CreateDataSet;

      cdsOrcamento.Append;

      cdsOrcamentoCODIGO_VENDA.AsVariant 		   := qryVenda.FieldByName('CODIGO_VENDA').asVariant;
      cdsOrcamentoPARCEIRO_VENDA.AsVariant 	   := qryVenda.FieldByName('PARCEIRO_VENDA').asVariant;
      cdsOrcamentoCLIENTE_VENDA.AsVariant 	   := qryVenda.FieldByName('CLIENTE_VENDA').asVariant;
      cdsOrcamentoPROPRIEDADE_VENDA.AsVariant   := qryVenda.FieldByName('PROPRIEDADE_VENDA').asVariant;
      cdsOrcamentoNOMECLIENTE_VENDA.AsVariant   := qryVenda.FieldByName('NOMECLIENTE_VENDA').asVariant;
      cdsOrcamentoDATA_VENDA.AsVariant 		   := qryVenda.FieldByName('DATA_VENDA').asVariant;
      cdsOrcamentoEXCLUSAO_VENDA.AsVariant 	   := qryVenda.FieldByName('EXCLUSAO_VENDA').asVariant;
      cdsOrcamentoHORA_VENDA.AsVariant 		   := qryVenda.FieldByName('HORA_VENDA').asVariant;
      cdsOrcamentoDESCONTO_VENDA.AsVariant 	   := pDesconto_Venda;
      cdsOrcamentoDESCON_ESP_VENDA.AsVariant    := pDesc_Esp_Venda;
      cdsOrcamentoCPAGAMENTO_VENDA.AsVariant    := qryVenda.FieldByName('CPAGAMENTO_VENDA').asVariant;
      cdsOrcamentoCHAVE_VENDA.AsVariant 		   := qryVenda.FieldByName('CHAVE_VENDA').asVariant;
      cdsOrcamentoCAIXA_VENDA.AsVariant 		   := qryVenda.FieldByName('CAIXA_VENDA').asVariant;
      cdsOrcamentoTIPO_PRECO_VENDA.AsVariant    := qryVenda.FieldByName('TIPO_PRECO_VENDA').asVariant;
      cdsOrcamentoCFOP_VENDA.AsVariant 		   := qryVenda.FieldByName('CFOP_VENDA').asVariant;
      cdsOrcamentoNOTAFISCAL_VENDA.AsVariant    := qryVenda.FieldByName('NOTAFISCAL_VENDA').asVariant;
      cdsOrcamentoSERIE_VENDA.AsVariant 		   := qryVenda.FieldByName('SERIE_VENDA').asVariant;
      cdsOrcamentoCONFIRMA_VENDA.AsVariant 	   := qryVenda.FieldByName('CONFIRMA_VENDA').asVariant;
      cdsOrcamentoEMISSAO_VENDA.AsVariant 	   := qryVenda.FieldByName('EMISSAO_VENDA').asVariant;
      cdsOrcamentoDATASAIDA_VENDA.AsVariant 	   := qryVenda.FieldByName('DATASAIDA_VENDA').asVariant;
      cdsOrcamentoHORASAIDA_VENDA.AsVariant 	   := qryVenda.FieldByName('HORASAIDA_VENDA').asVariant;
      cdsOrcamentoVALORNOTA_VENDA.AsVariant 	   := pVal_Not_Venda;
      cdsOrcamentoBASEICMS_VENDA.AsVariant 	   := qryVenda.FieldByName('BASEICMS_VENDA').asVariant;
      cdsOrcamentoICMS_VENDA.AsVariant 		   := qryVenda.FieldByName('ICMS_VENDA').asVariant;
      cdsOrcamentoBASEICMSSB_VENDA.AsVariant    := qryVenda.FieldByName('BASEICMSSB_VENDA').asVariant;
      cdsOrcamentoICMSSB_VENDA.AsVariant 		   := qryVenda.FieldByName('ICMSSB_VENDA').asVariant;
      cdsOrcamentoIPI_VENDA.AsVariant 			   := qryVenda.FieldByName('IPI_VENDA').asVariant;
      cdsOrcamentoTRANSPORTA_VENDA.AsVariant    := qryVenda.FieldByName('TRANSPORTA_VENDA').asVariant;
      cdsOrcamentoPESOBRUTO_VENDA.AsVariant 	   := qryVenda.FieldByName('PESOBRUTO_VENDA').asVariant;
      cdsOrcamentoPESOLIQUIDO_VENDA.AsVariant   := qryVenda.FieldByName('PESOLIQUIDO_VENDA').asVariant;
      cdsOrcamentoOBSERVACAO_VENDA.AsVariant    := qryVenda.FieldByName('OBSERVACAO_VENDA').asVariant;
      cdsOrcamentoPARCELAS_VENDA.AsVariant 	   := qryVenda.FieldByName('PARCELAS_VENDA').asVariant;
      cdsOrcamentoVALOR01_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR01_VENDA').asVariant;
      cdsOrcamentoVALOR02_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR02_VENDA').asVariant;
      cdsOrcamentoVALOR03_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR03_VENDA').asVariant;
      cdsOrcamentoVALOR04_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR04_VENDA').asVariant;
      cdsOrcamentoVALOR05_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR05_VENDA').asVariant;
      cdsOrcamentoVALOR06_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR06_VENDA').asVariant;
      cdsOrcamentoVALOR07_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR07_VENDA').asVariant;
      cdsOrcamentoVALOR08_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR08_VENDA').asVariant;
      cdsOrcamentoVALOR09_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR09_VENDA').asVariant;
      cdsOrcamentoVALOR10_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR10_VENDA').asVariant;
      cdsOrcamentoVALOR11_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR11_VENDA').asVariant;
      cdsOrcamentoVALOR12_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR12_VENDA').asVariant;
      cdsOrcamentoVALOR13_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR13_VENDA').asVariant;
      cdsOrcamentoVALOR14_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR14_VENDA').asVariant;
      cdsOrcamentoVALOR15_VENDA.AsVariant 		:= qryVenda.FieldByName('VALOR15_VENDA').asVariant;
      cdsOrcamentoVENCIMEN01_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN01_VENDA').asVariant;
      cdsOrcamentoVENCIMEN02_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN02_VENDA').asVariant;
      cdsOrcamentoVENCIMEN03_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN03_VENDA').asVariant;
      cdsOrcamentoVENCIMEN04_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN04_VENDA').asVariant;
      cdsOrcamentoVENCIMEN05_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN05_VENDA').asVariant;
      cdsOrcamentoVENCIMEN06_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN06_VENDA').asVariant;
      cdsOrcamentoVENCIMEN07_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN07_VENDA').asVariant;
      cdsOrcamentoVENCIMEN08_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN08_VENDA').asVariant;
      cdsOrcamentoVENCIMEN09_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN09_VENDA').asVariant;
      cdsOrcamentoVENCIMEN10_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN10_VENDA').asVariant;
      cdsOrcamentoVENCIMEN11_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN11_VENDA').asVariant;
      cdsOrcamentoVENCIMEN12_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN12_VENDA').asVariant;
      cdsOrcamentoVENCIMEN13_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN13_VENDA').asVariant;
      cdsOrcamentoVENCIMEN14_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN14_VENDA').asVariant;
      cdsOrcamentoVENCIMEN15_VENDA.AsVariant 	:= qryVenda.FieldByName('VENCIMEN15_VENDA').asVariant;
      cdsOrcamentoCOMISSAO_VENDA.AsVariant 	   := qryVenda.FieldByName('COMISSAO_VENDA').asVariant;
      cdsOrcamentoTIPO_VENDA.AsVariant 			:= qryVenda.FieldByName('TIPO_VENDA').asVariant;
      cdsOrcamentoTIPO1_VENDA.AsVariant 		   := qryVenda.FieldByName('TIPO1_VENDA').asVariant;
      cdsOrcamentoDEVOLVE_VENDA.AsVariant 		:= qryVenda.FieldByName('DEVOLVE_VENDA').asVariant;
      cdsOrcamentoENTREGA_VENDA.AsVariant 		:= qryVenda.FieldByName('ENTREGA_VENDA').asVariant;
      cdsOrcamentoTROCO_VENDA.AsVariant 		   := qryVenda.FieldByName('TROCO_VENDA').asVariant;
      cdsOrcamentoFRETE_VENDA.AsVariant 		   := qryVenda.FieldByName('FRETE_VENDA').asVariant;
      cdsOrcamentoSEGURO_VENDA.AsVariant 		   := qryVenda.FieldByName('SEGURO_VENDA').asVariant;
      cdsOrcamentoOUTROS_VENDA.AsVariant 		   := qryVenda.FieldByName('OUTROS_VENDA').asVariant;
      cdsOrcamentoROMANEIO_VENDA.AsVariant 	   := qryVenda.FieldByName('ROMANEIO_VENDA').asVariant;
      cdsOrcamentoPLACASAIDA_VENDA.AsVariant 	:= qryVenda.FieldByName('PLACASAIDA_VENDA').asVariant;
      cdsOrcamentoESTADOSAIDA_VENDA.AsVariant   := qryVenda.FieldByName('ESTADOSAIDA_VENDA').asVariant;
      cdsOrcamentoNRFATURA_VENDA.AsVariant 	   := qryVenda.FieldByName('NRFATURA_VENDA').asVariant;
      cdsOrcamentoAUTONOMO_VENDA.AsVariant 	   := qryVenda.FieldByName('AUTONOMO_VENDA').asVariant;
      cdsOrcamentoEXPORTADO_VENDA.AsVariant 	   := qryVenda.FieldByName('EXPORTADO_VENDA').asVariant;
      cdsOrcamentoTIPO_DOC_VENDA.AsVariant 		:= qryVenda.FieldByName('TIPO_DOC_VENDA').asVariant;
      cdsOrcamentoINFOADICIONA_VENDA.AsVariant 	:= qryVenda.FieldByName('INFOADICIONA_VENDA').asVariant;
      cdsOrcamentoMACHO_4_VENDA.AsVariant 		:= qryVenda.FieldByName('MACHO_4_VENDA').asVariant;
      cdsOrcamentoMACHO_4_12_VENDA.AsVariant 	:= qryVenda.FieldByName('MACHO_4_12_VENDA').asVariant;
      cdsOrcamentoMACHO_12_24_VENDA.AsVariant 	:= qryVenda.FieldByName('MACHO_12_24_VENDA').asVariant;
      cdsOrcamentoMACHO_24_36_VENDA.AsVariant 	:= qryVenda.FieldByName('MACHO_24_36_VENDA').asVariant;
      cdsOrcamentoMACHO_M36_VENDA.AsVariant 		:= qryVenda.FieldByName('MACHO_M36_VENDA').asVariant;
      cdsOrcamentoFEMEA_4_VENDA.AsVariant 		:= qryVenda.FieldByName('FEMEA_4_VENDA').asVariant;
      cdsOrcamentoFEMEA_4_12_VENDA.AsVariant 	:= qryVenda.FieldByName('FEMEA_4_12_VENDA').asVariant;
      cdsOrcamentoFEMEA_12_24_VENDA.AsVariant 	:= qryVenda.FieldByName('FEMEA_12_24_VENDA').asVariant;
      cdsOrcamentoFEMEA_24_36_VENDA.AsVariant 	:= qryVenda.FieldByName('FEMEA_24_36_VENDA').asVariant;
      cdsOrcamentoFEMEA_M36_VENDA.AsVariant 		:= qryVenda.FieldByName('FEMEA_M36_VENDA').asVariant;
      cdsOrcamentoBUFALOS_VENDA.AsVariant 		:= qryVenda.FieldByName('BUFALOS_VENDA').asVariant;
      cdsOrcamentoCAPRINOS_VENDA.AsVariant 		:= qryVenda.FieldByName('CAPRINOS_VENDA').asVariant;
      cdsOrcamentoOVINOS_VENDA.AsVariant 			:= qryVenda.FieldByName('OVINOS_VENDA').asVariant;
      cdsOrcamentoSUINOS_VENDA.AsVariant	 		:= qryVenda.FieldByName('SUINOS_VENDA').asVariant;
      cdsOrcamentoTROCA_VENDA.AsVariant			:= qryVenda.FieldByName('TROCA_VENDA').asVariant;
      cdsOrcamentoOS_VENDA.AsVariant 				:= qryVenda.FieldByName('OS_VENDA').asVariant;
      cdsOrcamentoCNPJCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('CNPJCLIENTE_VENDA').asVariant;
      cdsOrcamentoRGCLIENTE_VENDA.AsVariant 		:= qryVenda.FieldByName('RGCLIENTE_VENDA').asVariant;
      cdsOrcamentoENDCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('ENDCLIENTE_VENDA').asVariant;
      cdsOrcamentoBAICLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('BAICLIENTE_VENDA').asVariant;
      cdsOrcamentoCIDCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('CIDCLIENTE_VENDA').asVariant;
      cdsOrcamentoESTCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('ESTCLIENTE_VENDA').asVariant;
      cdsOrcamentoCEPCLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('CEPCLIENTE_VENDA').asVariant;
      cdsOrcamentoFONECLIENTE_VENDA.AsVariant 	:= qryVenda.FieldByName('FONECLIENTE_VENDA').asVariant;
      cdsOrcamentoCARNE_VENDA.AsVariant 			:= qryVenda.FieldByName('CARNE_VENDA').asVariant;
      cdsOrcamentoUSUARIO_VENDA.AsVariant 		:= qryVenda.FieldByName('USUARIO_VENDA').asVariant;
      cdsOrcamentoUSUALTERA_VENDA.AsVariant 		:= qryVenda.FieldByName('USUALTERA_VENDA').asVariant;
      cdsOrcamentoCOD_EMPRESA.AsVariant 			:= qryVenda.FieldByName('COD_EMPRESA').asVariant;
      cdsOrcamentoOBS1.AsVariant 					:= qryVenda.FieldByName('OBS1').asVariant;
      cdsOrcamentoOBS2.AsVariant 					:= qryVenda.FieldByName('OBS2').asVariant;
      cdsOrcamentoOBS3.AsVariant 					:= qryVenda.FieldByName('OBS3').asVariant;
      cdsOrcamentoOBS4.AsVariant 					:= qryVenda.FieldByName('OBS4').asVariant;
      cdsOrcamentoVALOR_BRUTO.AsVariant 			:= pFatura_Venda; 
      cdsOrcamentoDESC_PORC.AsVariant 				:= qryVenda.FieldByName('DESC_PORC').asVariant;
      cdsOrcamentoCGC_EMP.AsVariant 				:= qryVenda.FieldByName('CGC_EMP').asVariant;
      cdsOrcamentoINSCRICAO_EMP.AsVariant 		:= qryVenda.FieldByName('INSCRICAO_EMP').asVariant;
      cdsOrcamentoEMPRESA.AsVariant 				:= qryVenda.FieldByName('EMPRESA').asVariant;
      cdsOrcamentoEND_EMPRESA.AsVariant 			:= qryVenda.FieldByName('END_EMPRESA').asVariant;
      cdsOrcamentoCIDADE_EMP.AsVariant 			:= qryVenda.FieldByName('CIDADE_EMP').asVariant;
      cdsOrcamentoFONE_EMP.AsVariant 				:= qryVenda.FieldByName('FONE_EMP').asVariant;
      cdsOrcamentoNOME_VENDEDOR.AsVariant 		:= qryVenda.FieldByName('NOME_VENDEDOR').asVariant;
      cdsOrcamentoFORMA_PAGAMENTO.AsVariant 		:= qryVenda.FieldByName('FORMA_PAGAMENTO').asVariant;
      cdsOrcamentoDESCRICAO_PRO.AsVariant 		:= qryVenda.FieldByName('DESCRICAO_PRO').asVariant;
      cdsOrcamentoBAIRRO_PRO.AsVariant 			:= qryVenda.FieldByName('BAIRRO_PRO').asVariant;
      cdsOrcamentoCEP_PRO.AsVariant 				:= qryVenda.FieldByName('CEP_PRO').asVariant;
      cdsOrcamentoCIDADE_PRO.AsVariant 			:= qryVenda.FieldByName('CIDADE_PRO').asVariant;
      cdsOrcamentoFONE_PRO.AsVariant 				:= qryVenda.FieldByName('FONE_PRO').asVariant;
      cdsOrcamentoESTADO_PRO.AsVariant 			:= qryVenda.FieldByName('ESTADO_PRO').asVariant;
      cdsOrcamentoINSCEST_PRO.AsVariant 			:= qryVenda.FieldByName('INSCEST_PRO').asVariant;
      cdsOrcamentoCODIGO_CLIENTE.AsVariant	 	:= qryVenda.FieldByName('CODIGO_CLIENTE').asVariant;
      cdsOrcamentoNOME_CLIENTE.AsVariant 			:= qryVenda.FieldByName('NOME_CLIENTE').asVariant;
      cdsOrcamentoFANTASIA_CLIENTE.AsVariant 	:= qryVenda.FieldByName('FANTASIA_CLIENTE').asVariant;
      cdsOrcamentoCNPJ_CLIENTE.AsVariant 			:= qryVenda.FieldByName('CNPJ_CLIENTE').asVariant;
      cdsOrcamentoNOME_CIDADE.AsVariant 			:= qryVenda.FieldByName('NOME_CIDADE').asVariant;
      cdsOrcamentoCOB_NOME_CIDADE.AsVariant 		:= qryVenda.FieldByName('COB_NOME_CIDADE').asVariant;
      cdsOrcamentoBANCO1_CLIENTE.AsVariant 		:= qryVenda.FieldByName('BANCO1_CLIENTE').asVariant;
      cdsOrcamentoENDERECO_CLIENTE.AsVariant 	:= qryVenda.FieldByName('ENDERECO_CLIENTE').asVariant;
      cdsOrcamentoBAIRRO_CLIENTE.AsVariant 		:= qryVenda.FieldByName('BAIRRO_CLIENTE').asVariant;
      cdsOrcamentoCEP_CLIENTE.AsVariant 			:= qryVenda.FieldByName('CEP_CLIENTE').asVariant;
      cdsOrcamentoCIDADE_CLIENTE.AsVariant	 	:= qryVenda.FieldByName('CIDADE_CLIENTE').asVariant;
      cdsOrcamentoTELEFONE_CLIENTE.AsVariant 	:= qryVenda.FieldByName('TELEFONE_CLIENTE').asVariant;
      cdsOrcamentoESTADO_CLIENTE.AsVariant 		:= qryVenda.FieldByName('ESTADO_CLIENTE').asVariant;
      cdsOrcamentoINSCRICAO_CLIENTE.AsVariant	:= qryVenda.FieldByName('INSCRICAO_CLIENTE').asVariant;

      cdsOrcamento.Post;
   end;
end;

end.
