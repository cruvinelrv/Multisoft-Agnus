unit uRL0903;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppModule, raCodMod;

type
  TfrmRL0903 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    Label3: TLabel;
    cbxPeriodo: TComboBox;
    Label4: TLabel;
    rdgBaixados: TRadioGroup;
    Label1: TLabel;
    edtValor: TJvValidateEdit;
    rptRel_Cheque: TppReport;
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
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppLine3: TppLine;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppLabel9: TppLabel;
    ppVariable2: TppVariable;
    ppLabel10: TppLabel;
    ppVariable3: TppVariable;
    ppLabel11: TppLabel;
    ppVariable4: TppVariable;
    ppVariable5: TppVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure ppVariable2Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable5Calc(Sender: TObject; var Value: Variant);
    procedure ppVariable4Calc(Sender: TObject; var Value: Variant);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Quant1 : Integer;
    Valor1 : Double;
  end;

var
  frmRL0903: TfrmRL0903;

implementation

uses udmRL0903, uGlobal, DB;

{$R *.dfm}

procedure TfrmRL0903.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0903.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0903.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0903.FormCreate(Sender: TObject);
begin
   dmRL0903 := TdmRL0903.Create(Self);
end;

procedure TfrmRL0903.edtDataIniExit(Sender: TObject);
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

procedure TfrmRL0903.edtDataFimExit(Sender: TObject);
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

procedure TfrmRL0903.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Quant1 := 0;
   Valor1 := 0;

   Sql1 := 'select p.emitente, p.banco, p.cheque, p.valor, p.vencimento, p.emissao, '+
           'p.observacao, p.devolucao1, p.devolucao2, p.dt_baixa, p.dt_lancto, p.liquidacao '+
           'from P_PREDATAD P '+
           'where (not (p.cheque is null) or (p.cheque <> '''')) ';

   if (edtDataIni.Date <> 0) and (edtDataFim.Date <> 0) then
   begin
      Case cbxPeriodo.ItemIndex of
         0:
         begin
            Sql1 := Sql1 + ' and p.emissao >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and p.emissao <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;

         1:
         begin
            Sql1 := Sql1 + ' and p.vencimento >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and p.vencimento <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;

         2:
         begin
            Sql1 := Sql1 + ' and p.dt_baixa >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and p.dt_baixa <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;

         3:
         begin
            Sql1 := Sql1 + ' and p.devolucao1 >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and p.devolucao1 <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;

         4:
         begin
            Sql1 := Sql1 + ' and p.devolucao2 >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and p.devolucao2 <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;

         5:
         begin
            Sql1 := Sql1 + ' and p.liquidacao >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and p.liquidacao <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;

         6:
         begin
            Sql1 := Sql1 + ' and p.dt_lancto >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and p.dt_lancto <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;
      end;
   end;

   
   if rdgBaixados.ItemIndex = 1 then // não busca os cheques liquidados
      Sql1 := Sql1 + ' and ((p.dt_baixa is null)) ';

   with dmRL0903 do
   begin
      cdsConsulta.IndexFieldNames := 'emitente';

      cdsConsulta.Close;
      cdsConsulta.CommandText := Sql1;
      cdsConsulta.Open;

      while not cdsConsulta.Eof do
      begin
         if cdsConsultaDEVOLUCAO1.AsString <> '' then
         begin
            Quant1 := Quant1 + 1;
            Valor1 := Valor1 + cdsConsultaVALOR.AsFloat;
         end;

         cdsConsulta.Next;
      end;

      rptRel_Cheque.Print;     
   end;
end;

procedure TfrmRL0903.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Cheques Clientes de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0903.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0903.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Text := '  Período Referente a: Data de ' + cbxPeriodo.Text;  
end;

procedure TfrmRL0903.ppVariable2Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable2.AsDouble := edtValor.Value;
end;

procedure TfrmRL0903.ppVariable5Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable5.AsDouble := Valor1;
end;

procedure TfrmRL0903.ppVariable4Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable4.Value := Quant1;
end;

procedure TfrmRL0903.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0903.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
