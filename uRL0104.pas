{
 SISTEMA              --> MultWin
 PROGRAMA             --> uRl0104
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> RAFAEL F. S. MOTA
 DATA DE CONCEPCAO    --> 24/02/2007
 FINALIDADE           --> Relatorio de Cliente
 COMENTARIO           -->
}

unit uRL0104;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTela_Imp, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppDB, ppDBPipe, Grids, DBGrids;

type
  TfrmRL0104 = class(TfrmTela_Imp)
    rdgSequencia: TRadioGroup;
    rdgTipoRel: TRadioGroup;
    rdgTipoJur: TRadioGroup;
    rdgTipoEnd: TRadioGroup;
    Label1: TLabel;
    chkNegativos: TCheckBox;
    Label2: TLabel;
    edtProfissao: TEdit;
    dtsCidade: TDataSource;
    cmbCidade: TDBLookupComboBox;
    rptSimples1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa: TppLabel;
    ppLine1: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppDetailBand2: TppDetailBand;
    dbpRelatorio: TppDBPipeline;
    dtsRelatorio: TDataSource;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
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
    ppLine2: TppLine;
    dbpRelatorioppField1: TppField;
    rptSimples2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    lblEmpresa2: TppLabel;
    ppLine3: TppLine;
    lblNomeRel2: TppLabel;
    lblParam1_2: TppLabel;
    ppLabel17: TppLabel;
    ppLine4: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine5: TppLine;
    lblTotal2: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    lblTotal1: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    rptSimples3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    lblEmpresa3: TppLabel;
    ppLine6: TppLine;
    lblNomeRel3: TppLabel;
    lblParam1_3: TppLabel;
    ppLabel28: TppLabel;
    ppLine7: TppLine;
    ppDetailBand3: TppDetailBand;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    lblTotal3: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    rptCompleto: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    lblEmpresa4: TppLabel;
    ppLine8: TppLine;
    lblNomeRel4: TppLabel;
    lblParam1_4: TppLabel;
    ppLabel42: TppLabel;
    ppLine9: TppLine;
    ppDetailBand4: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    lblTotal4: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppDBText30: TppDBText;
    ppDBText34: TppDBText;
    ppLabel65: TppLabel;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel66: TppLabel;
    ppDBText39: TppDBText;
    ppDBText35: TppDBText;
    lblData: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel41: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppDBText4GetText(Sender: TObject; var Text: String);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure ppDBText6GetText(Sender: TObject; var Text: String);
    procedure ppDBText22GetText(Sender: TObject; var Text: String);
    function Tipo_End(): String;
    procedure ppLabel63GetText(Sender: TObject; var Text: String);
    function Tipo_Bairro(): String;
    procedure ppLabel64GetText(Sender: TObject; var Text: String);
    procedure ppLabel65GetText(Sender: TObject; var Text: String);
    function Tipo_Cidade(): String;
    procedure ppLabel66GetText(Sender: TObject; var Text: String);
    function Tipo_Cep(): String;
    procedure FormCreate(Sender: TObject);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0104: TfrmRL0104;

implementation

uses  uGlobal, udmRL0104;

{$R *.dfm}

procedure TfrmRL0104.FormShow(Sender: TObject);
var Sql1: String;
begin
  inherited;

   Sql1 := 'SELECT CODIGO_CIDADE, DESCRICAO_CIDADE , UF_CIDADE FROM E_CIDADE';

   ExecutaSql(dmRL0104.cdsPesquisa1, Sql1);
end;

procedure TfrmRL0104.btnImprimirClick(Sender: TObject);
var Sql1: AnsiString;
    Param1: String;
begin
  inherited;

   Sql1 := 'SELECT CODIGO_CLIENTE, NOME_CLIENTE, TIPO_CLIENTE, FANTASIA_CLIENTE, DATANASC_CLIENTE, ENDERECO_CLIENTE, BAIRRO_CLIENTE, CIDADE_CLIENTE, TELEFONE_CLIENTE, CELULAR_CLIENTE, FAX_CLIENTE, CEP_CLIENTE, TIPOPESSOA_CLIENTE, COB_ENDERECO_CLIENTE, ' +
           'DATABLOQUEIO_CLIENTE, EMAIL_CLIENTE, INSCRICAO_CLIENTE, ULTIMA_COMPRA_CLIENTE, CONTATO_CLIENTE, CNPJ_CLIENTE, TRAB_FONE_CLIENTE, COB_CIDADE_CLIENTE, COB_BAIRRO_CLIENTE, COB_CEP_CLIENTE, TRAB_FUNCAO_CLIENTE ' +
           'FROM E_CLIENTE WHERE E_CLIENTE.TIPO_CLIENTE = 0 ';

   if rdgTipoJur.ItemIndex = 1 then // Apenas pessoa fisica
      Sql1 := Sql1 + 'AND E_CLIENTE.TIPOPESSOA_CLIENTE = ' + QuotedStr('F') + ' '
   else if rdgTipoJur.ItemIndex = 2 then  // Apenas pessoa juridica
      Sql1 := Sql1 + 'AND E_CLIENTE.TIPOPESSOA_CLIENTE = ' + QuotedStr('J') + ' ';


   if cmbCidade.Text <> '' then  // filtra a cidade
      Sql1 := Sql1 + 'AND E_CLIENTE.CIDADE_CLIENTE = ' + dmRL0104.cdsPesquisa1.FieldByName('CODIGO_CIDADE').AsString + ' ';

   if edtProfissao.Text <> '' then  // filtra a profissao do cliente
      Sql1 := Sql1 + 'AND E_CLIENTE.TRAB_FUNCAO_CLIENTE = ' + QuotedStr(edtProfissao.Text) + ' ';


   if not chkNegativos.Checked then // filtra clientes negativados
      Sql1 := Sql1 + 'AND E_CLIENTE.DATABLOQUEIO_CLIENTE IS NULL ';
     

   //............sequencia

   if rdgSequencia.ItemIndex = 0 then // ordem alfabetica
   begin
      Sql1   := Sql1 + 'ORDER BY E_CLIENTE.NOME_CLIENTE';
      Param1 := 'Ordem Alfab�tica';
   end
   else if rdgSequencia.ItemIndex = 1 then // ordem codigo
   begin
      Sql1   := Sql1 + 'ORDER BY E_CLIENTE.CODIGO_CLIENTE';
      Param1 := 'Ordem de C�digo';
   end
   else if rdgSequencia.ItemIndex = 2 then // fantasia
   begin
      Sql1   := Sql1 + 'ORDER BY E_CLIENTE.FANTASIA_CLIENTE';
      Param1 := 'Ordem de Fantasia';
   end
   else if rdgSequencia.ItemIndex = 3 then // data nasc.
   begin
      Sql1   := Sql1 + 'ORDER BY E_CLIENTE.DATANASC_CLIENTE';
      Param1 := 'Ordem Data Nascimento';
   end;


   ExecutaSql(dmRL0104.cdsPesquisa2, Sql1);

   if dmRL0104.cdsPesquisa2.RecordCount = 0 then
   begin
      Application.MessageBox('N�o foram encontrados dados','Aten��o',MB_ICONINFORMATION);
   end
   else
   begin
      if rdgTipoRel.ItemIndex = 0 then  // simples 1
      begin
         lblEmpresa.Text   := Empresa1;
         lblNomeRel.Text   := frmRl0104.Caption;
         lblParam1.Text    := Param1;
         lblParam1.Visible := True;
         lblTotal1.Text    := 'Total de Clientes Listados: ' + IntToStr(dmRL0104.cdsPesquisa2.RecordCount);

         rptSimples1.Print;
      end
      else if rdgTipoRel.ItemIndex = 1 then  // simples 2
      begin
         lblEmpresa2.Text    := Empresa1;
         lblNomeRel2.Text    := frmRl0104.Caption;
         lblParam1_2.Text    := Param1;
         lblParam1_2.Visible := True;
         lblTotal2.Text      := 'Total de Clientes Listados: ' + IntToStr(dmRL0104.cdsPesquisa2.RecordCount);

         rptSimples2.Print;
      end
      else if rdgTipoRel.ItemIndex = 2 then  // simples 3
      begin
         lblEmpresa3.Text    := Empresa1;
         lblNomeRel3.Text    := frmRl0104.Caption;
         lblParam1_3.Text    := Param1;
         lblParam1_3.Visible := True;
         lblTotal3.Text      := 'Total de Clientes Listados: ' + IntToStr(dmRL0104.cdsPesquisa2.RecordCount);

         rptSimples3.Print;
      end
      else if rdgTipoRel.ItemIndex = 3 then  // completo
      begin
         lblEmpresa4.Text    := Empresa1;
         lblNomeRel4.Text    := frmRl0104.Caption;
         lblParam1_4.Text    := Param1;
         lblParam1_4.Visible := True;
         lblTotal4.Text      := 'Total de Clientes Listados: ' + IntToStr(dmRL0104.cdsPesquisa2.RecordCount);

         rptCompleto.Print;
      end;


   end;
end;

procedure TfrmRL0104.ppDBText4GetText(Sender: TObject; var Text: String);
begin
  inherited;

   Text := Tipo_End();
end;

procedure TfrmRL0104.ppDBText5GetText(Sender: TObject; var Text: String);
begin
  inherited;

   Text := Tipo_End();
end;

procedure TfrmRL0104.ppDBText6GetText(Sender: TObject; var Text: String);
var Cidade1: Integer;
    Sql2: String;
begin
  inherited;

   Cidade1 := 0;

   if rdgTipoEnd.ItemIndex = 0 then
      Cidade1 := dmRL0104.cdsPesquisa2.FieldByName('CIDADE_CLIENTE').AsInteger
   else if rdgTipoEnd.ItemIndex = 1 then
      Cidade1 := dmRL0104.cdsPesquisa2.FieldByName('COB_CIDADE_CLIENTE').AsInteger;

   Sql2 := 'SELECT CODIGO_CIDADE, DESCRICAO_CIDADE, UF_CIDADE FROM E_CIDADE WHERE E_CIDADE.CODIGO_CIDADE = ' + IntToStr(Cidade1);

   ExecutaSql(dmRL0104.cdsPesquisa3, Sql2);

   if dmRL0104.cdsPesquisa3.RecordCount > 0 then
      Text := Trim(dmRL0104.cdsPesquisa3.FieldByName('DESCRICAO_CIDADE').AsString) + '-' + dmRL0104.cdsPesquisa3.FieldByName('UF_CIDADE').AsString
   else if rdgTipoEnd.ItemIndex = 1 then
      Text := 'N�o Localizado';
end;

procedure TfrmRL0104.ppDBText22GetText(Sender: TObject; var Text: String);
begin
  inherited;

   Text := Tipo_Cidade();
end;

function TfrmRL0104.Tipo_Bairro(): String;
begin
   if rdgTipoEnd.ItemIndex = 0 then
      Result := dmRL0104.cdsPesquisa2.FieldByName('BAIRRO_CLIENTE').AsString
   else if rdgTipoEnd.ItemIndex = 1 then
      Result := dmRL0104.cdsPesquisa2.FieldByName('COB_BAIRRO_CLIENTE').AsString;
end;

function TfrmRL0104.Tipo_End(): String;
begin
   if rdgTipoEnd.ItemIndex = 0 then
      Result := dmRL0104.cdsPesquisa2.FieldByName('ENDERECO_CLIENTE').AsString
   else if rdgTipoEnd.ItemIndex = 1 then
      Result := dmRL0104.cdsPesquisa2.FieldByName('COB_ENDERECO_CLIENTE').AsString;
end;

procedure TfrmRL0104.ppLabel63GetText(Sender: TObject; var Text: String);
begin
  inherited;

   Text := Tipo_End();
end;

procedure TfrmRL0104.ppLabel64GetText(Sender: TObject; var Text: String);
begin
  inherited;

   Text := Tipo_Bairro();
end;

procedure TfrmRL0104.ppLabel65GetText(Sender: TObject; var Text: String);
begin
  inherited;

   Text := Tipo_Cidade();
end;

function TfrmRL0104.Tipo_Cidade(): String;
var Cidade1: Integer;
    Sql2: String;
begin
  inherited;

   Cidade1 := 0;

   if rdgTipoEnd.ItemIndex = 0 then
      Cidade1 := dmRL0104.cdsPesquisa2.FieldByName('CIDADE_CLIENTE').AsInteger
   else if rdgTipoEnd.ItemIndex = 1 then
      Cidade1 := dmRL0104.cdsPesquisa2.FieldByName('COB_CIDADE_CLIENTE').AsInteger;

   Sql2 := 'SELECT CODIGO_CIDADE, DESCRICAO_CIDADE, UF_CIDADE FROM E_CIDADE WHERE E_CIDADE.CODIGO_CIDADE = ' + IntToStr(Cidade1);

   ExecutaSql(dmRL0104.cdsPesquisa3, Sql2);

   if dmRL0104.cdsPesquisa3.RecordCount > 0 then
      Result := Trim(dmRL0104.cdsPesquisa3.FieldByName('DESCRICAO_CIDADE').AsString) + '-' + dmRL0104.cdsPesquisa3.FieldByName('UF_CIDADE').AsString
   else if rdgTipoEnd.ItemIndex = 1 then
      Result := 'N�o Localizado';
end;

procedure TfrmRL0104.ppLabel66GetText(Sender: TObject; var Text: String);
begin
  inherited;

   Text := Tipo_Cep();
end;

function TfrmRL0104.Tipo_Cep(): String;
begin
   if rdgTipoEnd.ItemIndex = 0 then
      Result := dmRL0104.cdsPesquisa2.FieldByName('CEP_CLIENTE').AsString
   else if rdgTipoEnd.ItemIndex = 1 then
      Result := dmRL0104.cdsPesquisa2.FieldByName('COB_CEP_CLIENTE').AsString;
end;


procedure TfrmRL0104.FormCreate(Sender: TObject);
begin
  inherited;
   dmRL0104 := TdmRL0104.Create(Self);
end;

procedure TfrmRL0104.lblDataGetText(Sender: TObject; var Text: String);
begin
  inherited;
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0104.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
