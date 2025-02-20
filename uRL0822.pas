unit uRL0822;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppParameter,
  ppModule, raCodMod, ppStrtch, ppSubRpt;

type
  TfrmRL0822 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    Label10: TLabel;
    edtDataFim: TJvDateEdit;
    Label3: TLabel;
    cbxPeriodo: TComboBox;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbxSituacao: TComboBox;
    Label6: TLabel;
    edtCliente: TJvValidateEdit;
    SpeedButton6: TSpeedButton;
    Edit1: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    rdgModelo: TRadioGroup;
    cbxTitulo: TComboBox;
    edtPrincipal: TEdit;
    edtVinculado: TEdit;
    Label11: TLabel;
    edtReserva: TEdit;
    Label12: TLabel;
    rptRel_Relatorio: TppReport;
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
    Documento: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    Tit_Principal: TppDBText;
    ppLabel7: TppLabel;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppVariable2: TppVariable;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    Titulo: TppDBText;
    rptRel_Relatorio1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine5: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppVariable3: TppVariable;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    ppLabel26: TppLabel;
    ppVariable4: TppVariable;
    raCodeModule2: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppVariable5: TppVariable;
    ppDBText23: TppDBText;
    ppLabel27: TppLabel;
    ppLine7: TppLine;
    ppLabel28: TppLabel;
    raCodeModule3: TraCodeModule;
    ppVariable6: TppVariable;
    ppLine8: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0822: TfrmRL0822;

implementation

uses udmRL0822, uConsulta, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0822.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0822.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0822.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0822.FormCreate(Sender: TObject);
begin
   dmRL0822 := TdmRL0822.Create(Self);
end;

procedure TfrmRL0822.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0822.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data final do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0822.edtClienteExit(Sender: TObject);
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
         Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
         edtCliente.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0822.SpeedButton6Click(Sender: TObject);
begin
   edtCliente.SetFocus;

   ConsultaCliente(edtCliente);
end;

procedure TfrmRL0822.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   Sql1 := 'select r.duplicata_receber, r.codigo_cliente_receber, c.nome_cliente, r.emissao_receber, '+
           'r.vencimento_receber, r.movimento_receber, r.codigo_portador_receber, p.descricao_portador, '+
           'r.tit_princ_receber, r.valor_receber, r.valorpago_receber, r.tipo_baixa_receber, '+
           '(r.valor_receber - r.valorpago_receber) as "Valor_Total" '+
           'from P_RECEBER r '+
           'left outer join e_cliente c on (r.codigo_cliente_receber = c.codigo_cliente) '+
           'left outer join e_portador p on (r.codigo_portador_receber = p.codigo_portador) '+
           'where (not (r.tit_princ_receber is null) or (r.tit_princ_receber <> '''')) ';


   if (edtDataIni.Date <> 0) and (edtDataFim.Date <> 0) then
   begin
      Case cbxPeriodo.ItemIndex of
         0:
         begin
            Sql1 := Sql1 + ' and r.vencimento_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and r.vencimento_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;

         1:
         begin
            Sql1 := Sql1 + ' and r.emissao_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and r.emissao_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;

         2:
         begin
            Sql1 := Sql1 + ' and r.movimento_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and r.movimento_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;

         3:
         begin
            Sql1 := Sql1 + ' and r.movimento_receber >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
            Sql1 := Sql1 + ' and r.movimento_receber <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));
         end;
      end;
   end;

   if edtPrincipal.Text <> '' then
      Sql1 := Sql1 + ' and r.tit_princ_receber = ' + QuotedStr(edtPrincipal.Text);

   if edtVinculado.Text <> '' then
      Sql1 := Sql1 + ' and r.duplicata_receber = ' + QuotedStr(edtVinculado.Text);

   Case cbxSituacao.ItemIndex of
      0: Sql1 := Sql1 + ' and ((r.tipo_baixa_receber = ''A''))';
      1: Sql1 := Sql1 + ' and ((r.tipo_baixa_receber = ''T''))';
      2: Sql1 := Sql1 + ' and ((r.tipo_baixa_receber = ''T'') or (r.tipo_baixa_receber = ''A'') or (r.tipo_baixa_receber = ''P''))';
   end;

   if edtCliente.Value > 0 then
      Sql1 := Sql1 + ' and r.codigo_cliente_receber = ' + QuotedStr(edtCliente.EditText);

   if edtReserva.Text <> '�' then
      Sql1 := Sql1 + ' and not ((r.duplicata_receber like ' + QuotedStr('CI%') + ')) ';

   if cbxTitulo.ItemIndex = 0 then
   begin
      Documento.Visible     := False;
      Titulo.Visible        := True;
      Tit_Principal.Visible := False;
   end
   else
   begin
      Documento.Visible     := True;
      Titulo.Visible        := False;
      Tit_Principal.Visible := True;
   end;

   with dmRL0822 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsConsulta.Close;
      cdsConsulta.CommandText := Sql1;
      cdsConsulta.Open;

      cdsConsulta.IndexFieldNames := 'tit_princ_receber';

      frmProcesso2.Close;

      if rdgModelo.ItemIndex = 1 then
         rptRel_Relatorio.Print
      else
         rptRel_Relatorio1.Print;
   end;
end;

procedure TfrmRL0822.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0822.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Relat�rio de Jun��o de T�tulos / Per�odo de ' + edtDataIni.Text + ' a ' + edtDataFim.Text + ' (' + cbxPeriodo.Text + ')';
end;

procedure TfrmRL0822.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Text := '                              Situa��o: ' + cbxSituacao.Text;
end;

procedure TfrmRL0822.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0822.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
