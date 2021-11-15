unit uRL0901;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmRL0901 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    edtData: TJvDateEdit;
    Label2: TLabel;
    edtEspecifico: TJvValidateEdit;
    SpeedButton6: TSpeedButton;
    Edit1: TEdit;
    rptRel_Conta: TppReport;
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
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine5: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataExit(Sender: TObject);
    procedure edtEspecificoExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0901: TfrmRL0901;

implementation

uses udmRL0901, uConsulta, uGlobal;

{$R *.dfm}

procedure TfrmRL0901.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0901.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0901.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0901.FormCreate(Sender: TObject);
begin
   dmRL0901 := TdmRL0901.Create(Self);   
end;

procedure TfrmRL0901.edtDataExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtData.Date = 0 then
   begin
      Application.MessageBox('Informe a data do Movimento', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtData.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0901.edtEspecificoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtEspecifico, Edit1, 'P_BANCO', 'CODIGO_BANCO', 'DESCRICAO_BANCO') then
   begin
      edtEspecifico.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0901.SpeedButton6Click(Sender: TObject);
begin
   edtEspecifico.SetFocus;

   ConsultaContaBanco(edtEspecifico);
end;

procedure TfrmRL0901.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Sql1 := 'select c.codigo_conlan, c.corrente_conlan, b.descricao_banco, c.data_conlan, '+
           'c.valor_conlan, c.tipo_conlan, c.historico_conlan, c.historic2_conlan, '+
           'c.movimento_conlan, r.banco_resban, r.anterior_resban, r.debito_resban, '+
           'r.credito_resban, (r.debito_resban - r.credito_resban) as "Saldo_Atual", '+
           'c.documento_conlan, c.conta_conlan '+
           'from P_CONLAN c '+
           'left outer join p_banco b on (c.corrente_conlan = b.codigo_banco) '+
           'left outer join p_resban r on (b.codigo_banco = r.banco_resban) '+
           'where c.codigo_conlan > 0';

   if edtData.Date <> 0 then
      Sql1 := Sql1 + ' and c.movimento_conlan = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtData.Date));

   if edtEspecifico.Value > 0 then
      Sql1 := Sql1 + ' and c.corrente_conlan = ' + QuotedStr(edtEspecifico.EditText);

   with dmRL0901 do
   begin
      cdsConsulta.Close;
      cdsConsulta.CommandText := Sql1;
      cdsConsulta.Open;

      rptRel_Conta.Print; 
   end;
end;

procedure TfrmRL0901.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1; 
end;

procedure TfrmRL0901.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Fluxo de Conta Corrente / Caixa de ' + edtData.Text;
end;

procedure TfrmRL0901.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0901.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
