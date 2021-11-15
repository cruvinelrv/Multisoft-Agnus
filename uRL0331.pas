unit uRL0331;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmRL0331 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    edtSecao: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label7: TLabel;
    edtGrupo: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Label3: TLabel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure edtSecaoExit(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0331: TfrmRL0331;

implementation

uses udmRL0331, uGlobal, uConsulta;

{$R *.dfm}

procedure TfrmRL0331.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0331.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0331.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmRL0331.FormCreate(Sender: TObject);
begin
   dmRL0331 := TdmRL0331.Create(Self);
end;

procedure TfrmRL0331.edtDataIniExit(Sender: TObject);
begin
   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial', 'Informação',MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0331.edtDataFimExit(Sender: TObject);
begin
   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data final', 'Informação',MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0331.edtSecaoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtSecao, Edit1, 'P_SECAO', 'CODIGO_SECAO', 'DESCRICAO_SECAO') then
   begin
      edtSecao.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0331.edtGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtGrupo, Edit2, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0331.SpeedButton3Click(Sender: TObject);
begin
   edtSecao.SetFocus;

   ConsultaSecao(edtSecao);
end;

procedure TfrmRL0331.SpeedButton1Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0331.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   //
end;

procedure TfrmRL0331.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
