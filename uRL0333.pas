unit uRL0333;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvSpin, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppModule, raCodMod;

type
  TfrmRL0333 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label7: TLabel;
    edtSecao: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label3: TLabel;
    edtGrupo: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Label1: TLabel;
    edtDias: TJvSpinEdit;
    rptRelatorio: TppReport;
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
    ppLine2: TppLine;
    lblData: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppVariable1: TppVariable;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    ppVariable2: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtSecaoExit(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtDiasExit(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0333: TfrmRL0333;

implementation

uses udmRL0333, uConsulta, uGlobal;

{$R *.dfm}

procedure TfrmRL0333.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0333.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0333.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmRL0333.FormCreate(Sender: TObject);
begin
   dmRL0333 := TdmRL0333.Create(Self);
end;

procedure TfrmRL0333.edtSecaoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtSecao, Edit1, 'P_SECAO', 'CODIGO_SECAO', 'DESCRICAO_SECAO') then
   begin
      edtSecao.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0333.edtGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtGrupo, Edit2, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0333.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Sql1 := 'select * from P_PRODUTOS p '+
           'left outer join p_grupos g on (p.grupo_produto = g.codigo_grupo) '+
           'left outer join p_secao s on (g.codigo_secao_grupo = s.codigo_secao) '+
           'where p.codigo_produto > 0';

   if edtSecao.Value > 0 then
      Sql1 := Sql1 + ' and g.codigo_secao_grupo = ' + QuotedStr(edtSecao.EditText);

   if edtGrupo.Value > 0 then
      Sql1 := Sql1 + ' and p.grupo_produto = ' + QuotedStr(edtGrupo.EditText);

      
   Sql1 := Sql1 + ' and p.data_compra_produto < ' + QuotedStr(FormatDateTime('mm/dd/yyyy', (DataSystem1 - edtDias.Value)));


   with dmRL0333 do
   begin
      cdsProdutos.Close;
      cdsProdutos.CommandText := Sql1;
      cdsProdutos.Open;

      cdsProdutos.IndexFieldNames := 'descricao_produto';

      rptRelatorio.Print;
   end;
end;

procedure TfrmRL0333.edtDiasExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDias.Value <= 0 then
   begin
      edtDias.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0333.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0333.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   if edtDias.Value = 1 then
      Text := 'Produtos por Data de Entrada : ' + edtDias.EditText + ' dia'
   else
      Text := 'Produtos por Data de Entrada : ' + edtDias.EditText + ' dias';
end;

procedure TfrmRL0333.lblParam1GetText(Sender: TObject; var Text: String);
Var Grupo1, Secao : String;
begin
   if (edtGrupo.Value > 0) and (edtSecao.Value > 0) then
      Text := '      Grupo: ' + StrZero(edtGrupo.EditText, 3) + ' / Se��o: ' + StrZero(edtSecao.EditText, 3);

   if (edtGrupo.Value > 0) and (edtSecao.Value <= 0) then
      Text := '           Grupo: ' + StrZero(edtGrupo.EditText, 3);

   if (edtGrupo.Value <= 0) and (edtSecao.Value > 0) then
      Text := '           Se��o: ' + StrZero(edtSecao.EditText, 3);

   if (edtGrupo.Value <= 0) and (edtSecao.Value <= 0) then
      Text := '';
end;

procedure TfrmRL0333.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0333.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable1.Value := (DataSystem1 - dmRL0333.cdsProdutosDATA_COMPRA_PRODUTO.AsDateTime);
end;

procedure TfrmRL0333.SpeedButton3Click(Sender: TObject);
begin
   edtSecao.SetFocus;

   ConsultaSecao(edtSecao);
end;

procedure TfrmRL0333.SpeedButton1Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0333.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
