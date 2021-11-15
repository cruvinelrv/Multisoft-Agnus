{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN019)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 17/05/2007
 FINALIDADE           --> Lançamento financeiro
 COMENTARIO           -->
 *******************************************************************************}

unit uFn06_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, JvExMask,
  JvToolEdit, JvDBControls, DB;

type
  TfrmFn06_01 = class(TForm)
    Panel1: TPanel;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label2: TLabel;
    edtCentro: TDBEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    DBText4: TDBText;
    edtConta: TDBEdit;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    DBText5: TDBText;
    edtDataDocumento: TJvDBDateEdit;
    Label5: TLabel;
    edtDataFluxo: TJvDBDateEdit;
    Label6: TLabel;
    edtDocumento: TDBEdit;
    Label7: TLabel;
    edtValor: TDBEdit;
    Label8: TLabel;
    edtCredito: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    DataSource1: TDataSource;
    edtOrigem: TEdit;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtCentroExit(Sender: TObject);
    procedure edtContaExit(Sender: TObject);
  private
    { Private declarations }
    procedure Origem_Lancamento;
  public
    { Public declarations }
  end;

var
  frmFn06_01: TfrmFn06_01;

implementation

uses udmFn06, uGlobal, uConsulta;

{$R *.dfm}

procedure TfrmFn06_01.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
   btnGravar.Enabled := (dmFn06.cdsConlan2.Active) and
                        (dmFn06.cdsConlan2.State in [dsInsert, dsEdit]);
end;

procedure TfrmFn06_01.FormShow(Sender: TObject);
begin
   if dmFn06.cdsConlan2TIPO_CONLAN.AsString = 'C' then
      edtCredito.Text := 'Crédito'
   else
      edtCredito.Text := 'Débito';

   if dmFn06.cdsConlan2.State = dsEdit then
      edtCentro.SetFocus;

   Origem_Lancamento; // procedure
end;

procedure TfrmFn06_01.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn06_01.Origem_Lancamento;
begin
   if dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'T' then
      edtOrigem.Text := 'Transferência entre Contas';

   if dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'R' then
      edtOrigem.Text := 'Lançamento contas a Receber';

   if dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'P' then
      edtOrigem.Text := 'Lançamento contas a Pagar';

   if dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'V' then
      edtOrigem.Text := 'Lançamento à Vista';

   if dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'E' then
      edtOrigem.Text := 'Lançamento de Estorno';
end;

procedure TfrmFn06_01.btnGravarClick(Sender: TObject);
Var Historico1 : String;
begin
   if dmFn06.cdsConlan2.State = dsEdit then
   begin
      Historico1 := 'Alterou o Registro, Documento - ' + edtDocumento.Field.AsString + ' - Valor - ' + edtValor.Field.AsString;

      GravaLogUser(Self, Historico1);
   end;

   dmFn06.cdsConlan2.Post;

   dmFn06.cdsConlan2.ApplyUpdates(0);

   Close;
end;

procedure TfrmFn06_01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn06_01.SpeedButton1Click(Sender: TObject);
begin
   edtCentro.SetFocus;

   ConsultaCentroCusto(edtCentro);
end;

procedure TfrmFn06_01.SpeedButton2Click(Sender: TObject);
begin
   edtConta.SetFocus;

   ConsultaConta(edtConta);
end;

procedure TfrmFn06_01.edtCentroExit(Sender: TObject);
begin
   RetornaCentroCusto(edtCentro, DBText4);
end;

procedure TfrmFn06_01.edtContaExit(Sender: TObject);
begin
   RetornaConta(edtConta, DBText5);
end;

end.
