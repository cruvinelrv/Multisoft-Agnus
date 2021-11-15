unit uRL0606;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppModule,
  raCodMod, ppParameter;

type
  TfrmRL0606 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    edtCaixa: TJvValidateEdit;
    Label3: TLabel;
    rptRel_Entradas: TppReport;
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
    ppParameterList1: TppParameterList;
    raCodeModule1: TraCodeModule;
    ppLabel6: TppLabel;
    ppVariable2: TppVariable;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtCaixaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure ppVariable1GetText(Sender: TObject; var Text: String);
    procedure ppVariable2GetText(Sender: TObject; var Text: String);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0606: TfrmRL0606;

implementation

uses udmRL0606, uProcesso2, uGlobal;

{$R *.dfm}

procedure TfrmRL0606.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0606.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0606.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0606.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data inicial do período', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0606.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Text = '  /  /    ' then
   begin
      Application.MessageBox('Informe a data final do período', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0606.edtCaixaExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtCaixa.Value > 0 then
   begin
      dmRL0606.cdsCaixa.Close;
      dmRL0606.cdsCaixa.Params.ParamByName('CAIXA').AsInteger := edtCaixa.Value;
      dmRL0606.cdsCaixa.Open;

      if dmRL0606.cdsCaixa.IsEmpty then
      begin
         Application.MessageBox('Caixa não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtCaixa.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0606.FormCreate(Sender: TObject);
begin
   dmRL0606 := TdmRL0606.Create(Self);
end;

procedure TfrmRL0606.btnImprimirClick(Sender: TObject);
begin
   dmRL0606.cdsConsulta.Close;

   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   dmRL0606.cdsConsulta.Params.ParamByName('EMPRESA').AsInteger := StrToInt(CodigoEmpresa1);
   dmRL0606.cdsConsulta.Params.ParamByName('DATA1').AsDate      := edtDataIni.Date;
   dmRL0606.cdsConsulta.Params.ParamByName('DATA2').AsDate      := edtDataFim.Date;

   if frmRL0606.Tag = 0 then
      dmRL0606.cdsConsulta.Params.ParamByName('TIPO').AsString     := 'E'
   else
      dmRL0606.cdsConsulta.Params.ParamByName('TIPO').AsString     := 'R';

   if edtCaixa.Value > 0 then
      dmRL0606.cdsConsulta.Params.ParamByName('CAIXA').AsInteger := edtCaixa.Value;

   dmRL0606.cdsConsulta.Open;

   frmProcesso2.Close;

   rptRel_Entradas.Print;
end;

procedure TfrmRL0606.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   if frmRL0606.Tag = 0 then
      Text := 'Entradas do Período de ' + edtDataIni.Text + ' a ' + edtDataFim.Text
   else
      Text := 'Retiradas do Período de ' + edtDataIni.Text + ' a ' + edtDataFim.Text
end;

procedure TfrmRL0606.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0606.ppVariable1GetText(Sender: TObject; var Text: String);
begin
   Text := copy(dmRL0606.cdsConsultaCHAVE_CAIXAMOV.AsString, 1, 8);
end;

procedure TfrmRL0606.ppVariable2GetText(Sender: TObject; var Text: String);
begin
   Text := copy(dmRL0606.cdsConsultaCHAVE_CAIXAMOV.AsString, 10, 1);
end;

procedure TfrmRL0606.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0606.FormShow(Sender: TObject);
begin
   if frmRL0606.Tag = 0 then
      frmRL0606.Caption := 'Entradas do Período'
   else
      frmRL0606.Caption := 'Retiradas do Período';
end;

end.
