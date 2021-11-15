{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN035)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 09/05/2007
 FINALIDADE           --> Junção de Títulos
 COMENTARIO           -->

 *******************************************************************************}

unit uFn0203;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit, Mask, JvExMask, JvToolEdit, DB, DateUtils,
  ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppComm, ppRelatv, ppProd,
  ppReport;

type
  TfrmFn0203 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    edtCliente: TJvValidateEdit;
    edtNTitulo: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtSelecionados: TJvValidateEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtValor: TJvValidateEdit;
    edtData: TJvDateEdit;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    edtNome: TEdit;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLine4: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNTituloExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtClienteEnter(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNTituloEnter(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel14GetText(Sender: TObject; var Text: String);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
    procedure ppLabel16GetText(Sender: TObject; var Text: String);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    function Cheka(Campo : Integer) : Boolean;
    procedure Seleciona_Titulo;
    function Retorna_Mes(Data : String): String;
    procedure Controla_Botoes(Incluir, Excluir, Gravar, Sair : Boolean);
    procedure LimpaStatusBar;
  public
    { Public declarations }
    Titulo1 : String;
    Valor_Titulos,
    ValorTitulos : Double;
    ContaTitulos : Integer;
    Incluir,
    Excluir : Boolean;

  end;

var
  frmFn0203: TfrmFn0203;

implementation

uses udmFn0203, uGlobal, uConsulta, StrUtils;

{$R *.dfm}

function TfrmFn0203.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin
         if not RetornaClienteFn15_3(edtCliente, edtNome) then
            Result := False;
      end;

      02:
      begin
         if edtCliente.EditText = '' then
         begin
            Application.MessageBox('Informe o código do Cliente', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      03:
      begin
         if edtNTitulo.Text = '' then
         begin
            Application.MessageBox('Informe o Nº do título', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      04:
      begin
         if edtData.Text = '  /  /    ' then
         begin
            Application.MessageBox('Informe a data do Vencimento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;
   end;
end;

procedure TfrmFn0203.FormCreate(Sender: TObject);
begin
   dmFn0203 := TdmFn0203.Create(Self);

   dmFn0203.cdsCliente.Open;
end;

procedure TfrmFn0203.edtClienteExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if btnIncluir.Focused then
      Exit;

   Controla_Botoes(False, False, True, True);

   Incluir := True;
   Excluir := False;

   Titulo1 := '';

   if not Cheka(01) then
   begin
      edtCliente.SetFocus;
      Exit;
   end;

   Titulo1 := StrZero(edtCliente.EditText, 6) + StrZero(Retorna_Mes(DateToStr(DataSystem1)), 2) + RightStr(DateToStr(DataSystem1), 2);

   edtNTitulo.Text := Titulo1;
end;

procedure TfrmFn0203.SpeedButton1Click(Sender: TObject);
begin
   ConsultaCliente(edtCliente);
end;

procedure TfrmFn0203.edtDataExit(Sender: TObject);
Var Dias_Atraso : Double;
begin
   if btnSair.Focused then
      Exit;

   if (not Cheka(02)) or
      (not Cheka(03)) or
      (not Cheka(04)) then
      Abort;

   Dias_Atraso := 0;

   if edtData.Date <> 0 then
   begin
      dmFn0203.cdsReceber.Close;
      dmFn0203.cdsReceber.Params.ParamByName('CLIENTE').AsInteger := edtCliente.Value;
      dmFn0203.cdsReceber.Params.ParamByName('VENCIMENTO').AsDate := edtData.Date; // Maior ou igual a data de vencimento
      dmFn0203.cdsReceber.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0203.cdsReceber.Open;

      if not dmFn0203.cdsReceber.IsEmpty then
      begin
         dmFn0203.cdsEmpresa.Close;
         dmFn0203.cdsEmpresa.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
         dmFn0203.cdsEmpresa.Open;

         dmFn0203.cdsGrid.Open;

         if dmFn0203.cdsGrid.RecordCount > 0 then
            dmFn0203.cdsGrid.EmptyDataSet;

         dmFn0203.cdsReceber.First;

         while not dmFn0203.cdsReceber.Eof do
         begin
            if dmFn0203.cdsReceberTIPO_BAIXA_RECEBER.AsString = 'T' then
            begin
               dmFn0203.cdsGrid.Append;

               dmFn0203.cdsGridDUPLICATA.AsString       := dmFn0203.cdsReceberDUPLICATA_RECEBER.AsString;

               dmFn0203.cdsGridCODIGO_CLIENTE.AsInteger := dmFn0203.cdsReceberCODIGO_CLIENTE_RECEBER.AsInteger;

               dmFn0203.cdsGridEMISSAO.AsDateTime       := dmFn0203.cdsReceberEMISSAO_RECEBER.AsDateTime;

               dmFn0203.cdsGridVENCIMENTO.AsDateTime    := dmFn0203.cdsReceberVENCIMENTO_RECEBER.AsDateTime;

               dmFn0203.cdsGridVALOR.AsFloat            := dmFn0203.cdsReceberVALOR_RECEBER.AsFloat;

               dmFn0203.cdsGridVALOR_PAGO.AsFloat       := dmFn0203.cdsReceberVALORPAGO_RECEBER.AsFloat;

               if dmFn0203.cdsReceberVALORPAGO_RECEBER.AsFloat <= dmFn0203.cdsReceberVALOR_RECEBER.AsFloat then
                  dmFn0203.cdsGridSALDO.AsFloat         := dmFn0203.cdsReceberVALOR_RECEBER.AsFloat - dmFn0203.cdsGridVALOR_PAGO.AsFloat;

               if dmFn0203.cdsReceberPARCIAL_RECEBER.AsFloat > 0 then
               begin
                  if DataSystem1 > dmFn0203.cdsReceberDATA_BASE_RECEBER.AsDateTime then
                  begin
                     Dias_Atraso := DataSystem1 - dmFn0203.cdsReceberDATA_BASE_RECEBER.AsDateTime;

                     if dmFn0203.cdsEmpresaDIAS_BLOQ_EMP.AsFloat > 0 then
                        Dias_Atraso := Dias_Atraso - dmFn0203.cdsEmpresaDIAS_BLOQ_EMP.AsFloat;

                     if Dias_Atraso > 0 then
                     begin
                        if dmFn0203.cdsEmpresaTIPO_JUR_EMP.AsString = 'C' then
                           dmFn0203.cdsGridJUROS.AsFloat := Calcula_Juro_Composto(Dias_Atraso, dmFn0203.cdsGridSALDO.AsFloat, dmFn0203.cdsEmpresaJUROS_EMP.AsFloat)
                        else
                           dmFn0203.cdsGridJUROS.AsFloat := Calcula_Juro_Simples(Dias_Atraso, dmFn0203.cdsGridSALDO.AsFloat, dmFn0203.cdsEmpresaJUROS_EMP.AsFloat);
                     end;
                  end;
               end
               else
               begin
                  if DataSystem1 > dmFn0203.cdsReceberVENCIMENTO_RECEBER.AsDateTime then
                  begin
                     Dias_Atraso := DataSystem1 - dmFn0203.cdsReceberVENCIMENTO_RECEBER.AsDateTime;

                     if dmFn0203.cdsEmpresaDIAS_BLOQ_EMP.AsFloat > 0 then
                        Dias_Atraso := Dias_Atraso - dmFn0203.cdsEmpresaDIAS_BLOQ_EMP.AsFloat;

                     if Dias_Atraso > 0 then
                     begin
                        dmFn0203.cdsGridDIAS_ATRASO.AsFloat      := ArredondarDecimal(Dias_Atraso, 0);

                        if dmFn0203.cdsEmpresaTIPO_JUR_EMP.AsString = 'C' then
                           dmFn0203.cdsGridJUROS.AsFloat := Calcula_Juro_Composto(Dias_Atraso, dmFn0203.cdsGridSALDO.AsFloat, dmFn0203.cdsEmpresaJUROS_EMP.AsFloat)
                        else
                           dmFn0203.cdsGridJUROS.AsFloat := Calcula_Juro_Simples(Dias_Atraso, dmFn0203.cdsGridSALDO.AsFloat, dmFn0203.cdsEmpresaJUROS_EMP.AsFloat);
                     end;
                  end;
               end;

               dmFn0203.cdsGrid.Post;
            end;

            dmFn0203.cdsReceber.Next;
         end;
      end
      else
      begin
         edtData.SetFocus;
         Exit;
      end;
   end;

   dmFn0203.cdsGrid.First;
end;

procedure TfrmFn0203.Seleciona_Titulo;
begin
   if not dmFn0203.cdsGrid.IsEmpty then
   begin
      {if dmFn0203.cdsGridTIPO_BAIXA.AsString = 'P' then
      begin
         Application.MessageBox('Título com pagamento parcial, deve ser  pago individualmente', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end;}

      if dmFn0203.cdsGridTIPO_BAIXA.AsString <> 'T' then
      begin
         dmFn0203.cdsGrid.Edit;

         if dmFn0203.cdsGridSELECIONADO.AsString = '' then
         begin
            ValorTitulos := ValorTitulos + dmFn0203.cdsGridSALDO.AsFloat;

            ContaTitulos := ContaTitulos + 1;

            dmFn0203.cdsGridSELECIONADO.AsString := 'X';

            dmFn0203.cdsGrid.Next;
         end
         else
         begin
            ValorTitulos := ValorTitulos - dmFn0203.cdsGridSALDO.AsFloat;

            ContaTitulos := ContaTitulos -1;

            dmFn0203.cdsGridSELECIONADO.AsString := '';

            dmFn0203.cdsGrid.Next;
         end;

         edtSelecionados.Value := ContaTitulos;

         edtValor.Value := ValorTitulos;
      end;
   end;
end;

procedure TfrmFn0203.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 77 then // = letra M ou m
      Seleciona_Titulo; // procedure
end;

procedure TfrmFn0203.edtNTituloExit(Sender: TObject);
Var Contador1 : Integer;
begin
   if btnSair.Focused then
      Exit;

   {if Length(edtNTitulo.Text) > 11 then
   begin
      Application.MessageBox('O Nº do Título está com o número de caracteres ' + #13 + ' superior aos padrões do Sistema ', 'Informção', MB_OK+MB_ICONEXCLAMATION);
      edtNTitulo.Clear;
      edtNTitulo.SetFocus;
      Exit;
   end;}

   Contador1 := 0;

   if Incluir = True then
   begin
      if edtNTitulo.Text <> '' then
      begin
         dmFn0203.cdsReceber2.Close;
         dmFn0203.cdsReceber2.Params.ParamByName('DUPLICATA').AsString := edtNTitulo.Text;
         dmFn0203.cdsReceber2.Params.ParamByName('EMPRESA').AsString   := CodigoEmpresa1;
         dmFn0203.cdsReceber2.Open;

         if not dmFn0203.cdsReceber2.IsEmpty then
         begin
            Application.MessageBox('Título já cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            edtNTitulo.SetFocus;
            Exit;
         end;
      end;
   end;

   if Excluir = True then
   begin
      if edtNTitulo.Text <> '' then
      begin
         dmFn0203.cdsReceber2.Close;
         dmFn0203.cdsReceber2.Params.ParamByName('DUPLICATA').AsString := edtNTitulo.Text;
         dmFn0203.cdsReceber2.Params.ParamByName('EMPRESA').AsString   := CodigoEmpresa1;
         dmFn0203.cdsReceber2.Open;

         if not dmFn0203.cdsReceber2.IsEmpty then
         begin
            edtData.Date := dmFn0203.cdsReceber2VENCIMENTO_RECEBER.AsDateTime;

            if dmFn0203.cdsReceber2VALORPAGO_RECEBER.AsFloat <= dmFn0203.cdsReceber2VALOR_RECEBER.AsFloat then
               edtValor.Value := dmFn0203.cdsReceber2VALOR_RECEBER.AsFloat - dmFn0203.cdsReceber2VALORPAGO_RECEBER.AsFloat;

            dmFn0203.cdsReceber3.Close;
            dmFn0203.cdsReceber3.Params.ParamByName('TITULO_PRINCIPAL').AsString := edtNTitulo.Text;
            dmFn0203.cdsReceber3.Params.ParamByName('EMPRESA').AsString          := CodigoEmpresa1;
            dmFn0203.cdsReceber3.Open;

            if not dmFn0203.cdsReceber3.IsEmpty then
            begin
               dmFn0203.cdsReceber3.First;

               while not dmFn0203.cdsReceber3.Eof do
               begin
                  Contador1 := Contador1 + 1;

                  dmFn0203.cdsReceber3.Next;
               end;

               edtSelecionados.Value := Contador1;

               if Application.MessageBox('Confirma exclusão?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
               begin
                  // libera os títulos vinculados ao título principal

                  dmFn0203.cdsReceber3.First;

                  while not dmFn0203.cdsReceber3.Eof do
                  begin
                     dmFn0203.cdsReceber2.Close;
                     dmFn0203.cdsReceber2.Params.ParamByName('DUPLICATA').AsString := dmFn0203.cdsReceber3DUPLICATA_RECEBER.AsString;
                     dmFn0203.cdsReceber2.Params.ParamByName('EMPRESA').AsString   := CodigoEmpresa1;
                     dmFn0203.cdsReceber2.Open;

                     if not dmFn0203.cdsReceber2.IsEmpty then
                     begin
                        dmFn0203.cdsReceber2.Edit;

                        dmFn0203.cdsReceber2VALORPAGO_RECEBER.AsFloat   := 0;
                        dmFn0203.cdsReceber2MOVIMENTO_RECEBER.AsString  := '';
                        dmFn0203.cdsReceber2TIPO_BAIXA_RECEBER.AsString := '';
                        dmFn0203.cdsReceber2TIT_PRINC_RECEBER.AsString  := '';
                        dmFn0203.cdsReceber2HISTORICO_RECEBER.AsString  := 'Reaberto: ' + DateToStr(DataSystem1) + ' > ' + Usuario1 + ' / ' + dmFn0203.cdsReceber3DUPLICATA_RECEBER.AsString;
                        dmFn0203.cdsReceber2COD_EMPRESA.AsString         := CodigoEmpresa1;

                        dmFn0203.cdsReceber2.Post;

                        dmFn0203.cdsReceber2.ApplyUpdates(0);
                     end;

                     dmFn0203.cdsReceber3.Next;
                  end;

                  // apaga o título principal

                  dmFn0203.cdsReceber2.Close;
                  dmFn0203.cdsReceber2.Params.ParamByName('DUPLICATA').AsString := edtNTitulo.Text;
                  dmFn0203.cdsReceber2.Params.ParamByName('EMPRESA').AsString   := CodigoEmpresa1;
                  dmFn0203.cdsReceber2.Open;

                  dmFn0203.cdsReceber2.Delete;

                  dmFn0203.cdsReceber2.ApplyUpdates(0);

                  Application.MessageBox('Exclusão concluída', 'Informação', MB_OK+MB_ICONEXCLAMATION);

                  GravaLogUser(Self, 'Apagou o Titulo Principal: ' + edtNTitulo.Text);

                  Controla_Botoes(True, True, False, False);

                  edtNTitulo.Text := '';

                  edtSelecionados.Value := 0;

                  edtValor.Value := 0;

                  edtData.Text := '';

                  btnIncluir.SetFocus;
               end;
            end;
         end
         else
         begin
            Application.MessageBox('Título não localizado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            edtNTitulo.SetFocus;
            Exit;
         end;
      end;
   end;

   Incluir := False;
   Excluir := False;
end;

procedure TfrmFn0203.btnGravarClick(Sender: TObject);
var Historico1 : String;
begin
   if btnSair.Focused then
      Exit;

   Controla_Botoes(True, False, False, False);

   Incluir := False;
   Excluir := False;

   if (not Cheka(02)) or
      (not Cheka(03)) or
      (not Cheka(04)) then
      Abort;

   Historico1        := '';
   Valor_Titulos     := 0;

   if not dmFn0203.cdsGrid.IsEmpty then
   begin
      dmFn0203.cdsGrid.First;

      // Baixa títulos marcados

      while not dmFn0203.cdsGrid.Eof do
      begin
         if dmFn0203.cdsGridSELECIONADO.AsString = 'X' then
         begin
            dmFn0203.cdsReceber2.Close;
            dmFn0203.cdsReceber2.Params.ParamByName('DUPLICATA').AsString := dmFn0203.cdsGridDUPLICATA.AsString;
            dmFn0203.cdsReceber2.Params.ParamByName('EMPRESA').AsString   := CodigoEmpresa1;
            dmFn0203.cdsReceber2.Open;

            if dmFn0203.cdsReceber2.IsEmpty then
            begin
               Application.MessageBox(pChar('Não foi localizado o Título:' + dmFn0203.cdsGridDUPLICATA.AsString + 'não será quitado'), 'Informação', MB_OK+MB_ICONEXCLAMATION);
               Exit;
            end
            else
            begin
               Valor_Titulos     := Valor_Titulos + dmFn0203.cdsGridVALOR.AsFloat;

               if Historico1 = '' then
                  Historico1 := ' / ';

               Historico1 := Historico1 + ' ,' + dmFn0203.cdsGridDUPLICATA.AsString;

               dmFn0203.cdsReceber2.Edit;

               dmFn0203.cdsReceber2MOVIMENTO_RECEBER.AsDateTime := DataSystem1;
               dmFn0203.cdsReceber2TIT_PRINC_RECEBER.AsString   := edtNTitulo.Text;
               dmFn0203.cdsReceber2TIPO_BAIXA_RECEBER.AsString  := 'T';
               dmFn0203.cdsReceber2HISTORICO_RECEBER.AsVariant  := ' / Incluido no Titulo: ' + edtNTitulo.Text;

               dmFn0203.cdsReceber2.Post;

               dmFn0203.cdsReceber2.ApplyUpdates(0);
            end;
         end;

         dmFn0203.cdsGrid.Next;
      end;

      if Length(Historico1) > 60 then
         Historico1 := LeftStr(Historico1, 57) + '...';

      // Gera novo título

      dmFn0203.cdsReceber2.Close;
      dmFn0203.cdsReceber2.Params.ParamByName('DUPLICATA').AsInteger := 0;
      dmFn0203.cdsReceber2.Params.ParamByName('EMPRESA').AsInteger   := 0;
      dmFn0203.cdsReceber2.Open;

      dmFn0203.cdsReceber2.Append;

      dmFn0203.cdsReceber2DUPLICATA_RECEBER.AsString        := edtNTitulo.Text;
      dmFn0203.cdsReceber2TIPO_DOCUMENTO_RECEBER.AsInteger  := 1;
      dmFn0203.cdsReceber2CODIGO_CLIENTE_RECEBER.AsInteger  := edtCliente.Value;
      dmFn0203.cdsReceber2EMISSAO_RECEBER.AsDateTime        := DataSystem1;
      dmFn0203.cdsReceber2VENCIMENTO_RECEBER.AsDateTime     := edtData.Date;
      dmFn0203.cdsReceber2PREVISAO_RECEBER.AsDateTime       := edtData.Date;
      dmFn0203.cdsReceber2VALOR_RECEBER.AsFloat             := Valor_Titulos;
      dmFn0203.cdsReceber2CODIGO_PORTADOR_RECEBER.AsInteger := 1;
      dmFn0203.cdsReceber2TIPO_DUP_RECEBER.AsString         := 'I';
      dmFn0203.cdsReceber2HISTORICO_RECEBER.AsString        := Historico1;
      dmFn0203.cdsReceber2COD_EMPRESA.AsString              := CodigoEmpresa1;

      dmFn0203.cdsReceber2.Post;

      dmFn0203.cdsReceber2.ApplyUpdates(0);

      Application.MessageBox('Junção de Títulos efetuada com sucesso', 'Informação', MB_OK+MB_ICONEXCLAMATION);

      GravaLogUser(Self, 'Gerou o Título principal: ' + edtNTitulo.Text);

      if Application.MessageBox('Imprime o relatório do Título gerado?', 'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         dmFn0203.cdsReceber2.Close;
         dmFn0203.cdsReceber2.Params.ParamByName('DUPLICATA').AsString := edtNTitulo.Text;
         dmFn0203.cdsReceber2.Params.ParamByName('EMPRESA').AsString   := CodigoEmpresa1;
         dmFn0203.cdsReceber2.Open;

         if not dmFn0203.cdsReceber2.IsEmpty then
            ppReport1.Print;
      end;

      if (dmFn0203.cdsReceber2.Active) and (dmFn0203.cdsReceber2.RecordCount > 0) then
         dmFn0203.cdsReceber2.EmptyDataSet;

      if (dmFn0203.cdsGrid.Active) and (dmFn0203.cdsGrid.RecordCount > 0) then
         dmFn0203.cdsGrid.EmptyDataSet;

      Incluir := False;
      Excluir := False;

      edtCliente.EditText := '';

      edtNome.Text := '';

      edtNTitulo.Text := '';

      ContaTitulos := 0;

      Valor_Titulos := 0;

      edtSelecionados.Value := 0;

      edtValor.Value := 0;

      edtData.Text := '';

      Controla_Botoes(True, True, False, False);

      btnIncluir.SetFocus;
   end;
end;


procedure TfrmFn0203.FormShow(Sender: TObject);
begin
   btnIncluir.SetFocus;

   Controla_Botoes(True, True, False, False);

   Incluir := False;
   Excluir := False;

   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [Esc] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0203.btnSairClick(Sender: TObject);
begin
   if btnSair.Caption = '&Cancelar' then
   begin
      if (dmFn0203.cdsReceber2.Active) and (dmFn0203.cdsReceber2.RecordCount > 0) then
         dmFn0203.cdsReceber2.Cancel;

      if (dmFn0203.cdsGrid.Active) and (dmFn0203.cdsGrid.RecordCount > 0) then
         dmFn0203.cdsGrid.EmptyDataSet;

      Controla_Botoes(True, True, False, False);

      ContaTitulos := 0;

      Valor_Titulos := 0;

      Incluir := False;
      Excluir := False;

      edtCliente.EditText := '';

      edtNome.Text := '';

      edtNTitulo.Text := '';

      edtSelecionados.Value := 0;

      edtValor.Value := 0;

      edtData.Text := '';

      btnIncluir.SetFocus;
   end
   else
      Close;
end;

function TfrmFn0203.Retorna_Mes(Data: String): String;
var
  I, B: integer;
  S: string;
begin
   S := '';
   B := 0;
   for I := 1 To Length(Data) Do
   begin
      if (Data[I] in ['/', '0'..'9']) then
      begin
          if Data[I] = '/' then
             B := B + 1;

          if B = 2 then
          begin
             Result := S;
             Exit;
          end;

          if (B > 0) and (Data[I] <> '/') then
             S := S + Copy(Data, I, 1);
       end;
   end;
end;

procedure TfrmFn0203.btnIncluirClick(Sender: TObject);
begin
   edtCliente.SetFocus;

   Controla_Botoes(False, False, True, True);

   Incluir := True;
   Excluir := False;
end;

procedure TfrmFn0203.Controla_Botoes(Incluir, Excluir, Gravar,
  Sair: Boolean);
begin
   btnIncluir.Enabled := Incluir;
   btnExcluir.Enabled := Excluir;
   btnGravar.Enabled  := Gravar;
   btnSair.Caption    := IfThen(Sair, '&Cancelar', '&Sair');
end;

procedure TfrmFn0203.btnExcluirClick(Sender: TObject);
begin
   edtNTitulo.SetFocus;

   Controla_Botoes(False, False, False, True);

   Excluir := True;
end;

procedure TfrmFn0203.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   if Key = 27 then
      Close;

   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn0203.LimpaStatusBar;
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

procedure TfrmFn0203.edtClienteEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' Informe o código do Cliente ';
   StatusBar1.Panels[0].Width := 160;

   StatusBar1.Panels[1].Text := ' [F7] » Consulta ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0203.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 118 then
      SpeedButton1.Click;
end;

procedure TfrmFn0203.edtNTituloEnter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [Esc] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [ShF1] » Calculadora ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0203.DBGrid1Enter(Sender: TObject);
begin
   LimpaStatusBar;

   StatusBar1.Panels[0].Text := ' [Esc] » Retorno ';
   StatusBar1.Panels[0].Width := 100;

   StatusBar1.Panels[1].Text := ' [M] » Marca / Desmarca ';
   StatusBar1.Panels[1].Width := 1000;
end;

procedure TfrmFn0203.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := dmFn0203.cdsReceber2EMPRESA.AsString;
end;

procedure TfrmFn0203.ppLabel2GetText(Sender: TObject; var Text: String);
begin
   Text := Sistema1;
end;

procedure TfrmFn0203.ppLabel4GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmFn0203.ppLabel5GetText(Sender: TObject; var Text: String);
begin
   Text := TimeToStr(Time);
end;

procedure TfrmFn0203.ppLabel14GetText(Sender: TObject; var Text: String);
begin
   Text := edtNTitulo.Text;
end;

procedure TfrmFn0203.ppLabel15GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(dmFn0203.cdsReceber2CODIGO_CLIENTE_RECEBER.AsString, 6) + ' - ' + UpperCase(edtNome.Text);
end;

procedure TfrmFn0203.ppLabel16GetText(Sender: TObject; var Text: String);
begin
   Text := dmFn0203.cdsReceber2EMISSAO_RECEBER.AsString;
end;

procedure TfrmFn0203.ppLabel17GetText(Sender: TObject; var Text: String);
begin
   Text := dmFn0203.cdsReceber2VENCIMENTO_RECEBER.AsString;
end;

procedure TfrmFn0203.ppLabel18GetText(Sender: TObject; var Text: String);
begin
   Text := dmFn0203.cdsReceber2DESCRICAO_PORTADOR.AsString;
end;

procedure TfrmFn0203.ppLabel20GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('0.00', dmFn0203.cdsReceber2VALOR_RECEBER.AsFloat);
end;

end.
