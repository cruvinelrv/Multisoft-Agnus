unit uRL0821;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppModule, raCodMod;

type
  TfrmRL0821 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    Label10: TLabel;
    Label6: TLabel;
    edtCliente: TJvValidateEdit;
    SpeedButton6: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    edtTitulo: TEdit;
    rptRel_Modelo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel17: TppLabel;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppVariable1: TppVariable;
    ppLabel3: TppLabel;
    ppLabel12: TppLabel;
    ppDBText7: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppVariable2: TppVariable;
    ppLine3: TppLine;
    Label11: TLabel;
    edtReserva: TEdit;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0821: TfrmRL0821;

implementation

uses udmRL0821, uConsulta, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0821.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0821.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0821.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0821.FormCreate(Sender: TObject);
begin
   dmRL0821 := TdmRL0821.Create(Self);
end;

procedure TfrmRL0821.edtDataIniExit(Sender: TObject);
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

procedure TfrmRL0821.edtDataFimExit(Sender: TObject);
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

procedure TfrmRL0821.edtClienteExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtCliente, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
   begin
      edtCliente.SetFocus;
      Exit;
   end
   else
   begin
      if Tipo_Cliente = 2 then
      begin
         Edit1.Clear;
         Application.MessageBox('O código informado é inválido', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtCliente.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0821.SpeedButton6Click(Sender: TObject);
begin
   edtCliente.SetFocus;

   ConsultaCliente(edtCliente);
end;

procedure TfrmRL0821.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Sql1 := 'select r.duplicata_receber, r.codigo_cliente_receber, c.nome_cliente, r.vencimento_receber, '+
           'r.valor_receber, (r.valor_receber - r.valorpago_receber) as "Valor_Total", r.movimento_receber,'+
           'e.tipo_jur_emp, e.juros_emp, r.valorpago_receber '+
           'from P_RECEBER r '+
           'left outer join e_cliente c on (r.codigo_cliente_receber = c.codigo_cliente) '+
           'left outer join empresa e on (r.cod_empresa = e.codigo_emp) '+
           'where not ((r.duplicata_receber is null))';

   if (edtDataIni.Date <> 0) and (edtDataFim.Date <> 0) then
   begin
      Sql1 := Sql1 + ' and r.vencimento_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
      Sql1 := Sql1 + ' and r.vencimento_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
   end;

   if edtCliente.Value > 0 then
      Sql1 := Sql1 + ' and r.codigo_cliente_receber = ' + QuotedStr(edtCliente.EditText);

   if edtTitulo.Text <> '' then
      Sql1 := Sql1 + ' and r.duplicata_receber = ' + QuotedStr(edtTitulo.Text);

   if edtReserva.Text <> 'Æ' then
      Sql1 := Sql1 + ' and not ((r.duplicata_receber like ' + QuotedStr('CI%') + ')) ';

   with dmRL0821 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsConsulta.Close;
      cdsConsulta.CommandText := Sql1;
      cdsConsulta.Open;

      cdsConsulta.IndexFieldNames := 'vencimento_receber';

      rptRel_Modelo.Print;

      frmProcesso2.Close;
   end;
end;

procedure TfrmRL0821.ppVariable1Calc(Sender: TObject; var Value: Variant);
Var Valor1, Dias_Atrazo : Double;
begin
   Valor1      := 0;
   Dias_Atrazo := 0;

   // cáuculo de juros simples ou composto

   with dmRL0821 do
   begin
      if cdsConsultaMOVIMENTO_RECEBER.AsString = '' then
      begin
         if cdsConsultaValor_Total.AsFloat > 0 then
            Valor1 := cdsConsultaValor_Total.AsFloat
         else
            Valor1 := cdsConsultaVALOR_RECEBER.AsFloat;

         Dias_Atrazo := ArredondarDecimal(DataSystem1 - cdsConsultaVENCIMENTO_RECEBER.AsDateTime, 0);

         if Dias_Atrazo > 0 then
         begin
            if cdsConsultaTIPO_JUR_EMP.AsString = 'S' then
               ppVariable1.AsDouble := Calcula_Juro_Simples(Dias_Atrazo, Valor1, cdsConsultaJUROS_EMP.AsFloat)
            else
               ppVariable1.AsDouble := Calcula_Juro_Composto(Dias_Atrazo, Valor1, cdsConsultaJUROS_EMP.AsFloat);
         end
         else
            ppVariable1.AsDouble := 0;
         end
      else
         ppVariable1.AsDouble := 0;
   end;

end;

procedure TfrmRL0821.ppLabel6GetText(Sender: TObject; var Text: String);
begin
   Text := 'Relatório de Pagamentos Parciais / Período de ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0821.ppLabel9GetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0821.ppLabel5GetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0821.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
