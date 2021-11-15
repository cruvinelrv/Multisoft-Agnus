unit uRL0902;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppClass, ppCtrls,
  ppPrnabl, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppParameter, ppModule, raCodMod;

type
  TfrmRL0902 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    Label10: TLabel;
    edtDataFim: TJvDateEdit;
    Label1: TLabel;
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
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine5: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppDBCalc4: TppDBCalc;
    ppDBText6: TppDBText;
    ppDBText12: TppDBText;
    ppLabel8: TppLabel;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppLabel9: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtEspecificoExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Data_Anterior : TDateTime;
  end;

var
  frmRL0902: TfrmRL0902;

implementation

uses udmRL0902, uConsulta, uGlobal;

{$R *.dfm}

procedure TfrmRL0902.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0902.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0902.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0902.FormCreate(Sender: TObject);
begin
   dmRL0902 := TdmRL0902.Create(Self);
end;

procedure TfrmRL0902.edtEspecificoExit(Sender: TObject);
begin
   if (edtEspecifico.Value = 0) or (edtEspecifico.EditText = '') then
   begin
      edtEspecifico.SetFocus;
      Exit;
   end;

   if not Busca_Dados(edtEspecifico, Edit1, 'P_BANCO', 'CODIGO_BANCO', 'DESCRICAO_BANCO') then
   begin
      edtEspecifico.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0902.SpeedButton6Click(Sender: TObject);
begin
   edtEspecifico.SetFocus;

   ConsultaContaBanco(edtEspecifico);
end;

procedure TfrmRL0902.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial do período', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0902.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data final do período', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0902.btnImprimirClick(Sender: TObject);
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

   if (edtDataIni.Date <> 0) and (edtDataFim.Date <> 0) then
   begin
      Sql1 := Sql1 + ' and c.movimento_conlan >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
      Sql1 := Sql1 + ' and c.movimento_conlan <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
   end;

   if edtEspecifico.Value > 0 then
      Sql1 := Sql1 + ' and c.corrente_conlan = ' + QuotedStr(edtEspecifico.EditText);

   with dmRL0902 do
   begin
      if (edtEspecifico.Value > 0) and (edtEspecifico.EditText <> '') then
      begin
         cdsConsulta.IndexFieldNames := 'corrente_conlan; movimento_conlan';

         cdsConsulta.Close;
         cdsConsulta.CommandText := Sql1;
         cdsConsulta.Open;

         if cdsConsulta.RecordCount > 0 then
         begin
            cdsConsulta.First;
            Data_Anterior := (cdsConsultaMOVIMENTO_CONLAN.AsDateTime - 1);
         end;

         rptRel_Conta.Print;
      end;
   end;
end;

procedure TfrmRL0902.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Extrato de C. Corrente / Caixa de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0902.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0902.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0902.ppLabel9GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(Data_Anterior);
end;

procedure TfrmRL0902.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
