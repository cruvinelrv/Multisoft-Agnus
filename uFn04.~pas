{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN027)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 15/05/2007
 FINALIDADE           --> SALDO INICIAL DAS CONTAS
 COMENTARIO           -->
 *******************************************************************************}

unit uFn04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvDBControls, DB;

type
  TfrmFn04 = class(TForm)
    Panel1: TPanel;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    edtConta: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtDataFluxo: TJvDBDateEdit;
    edtValor: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    DataSource1: TDataSource;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure edtContaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtContaEnter(Sender: TObject);
  private
    { Private declarations }
    function Cheka(Campo : Integer) : Boolean;
  public
    { Public declarations }
  end;

var
  frmFn04: TfrmFn04;

implementation

uses udmFn04, uGlobal, uConsulta;

{$R *.dfm}

procedure TfrmFn04.DataSource1DataChange(Sender: TObject; Field: TField);
begin
   btnGravar.Enabled := (dmFn04.cdsConlan.Active) and
                        (dmFn04.cdsConlan.State in [dsInsert, dsEdit]);
end;

procedure TfrmFn04.edtContaExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if not RetornaContaCorrenteCaixa(edtConta, DBText1) then
   begin
      edtConta.SetFocus;
      Exit;
   end;
end;

procedure TfrmFn04.FormCreate(Sender: TObject);
begin
   dmFn04 := TdmFn04.Create(Self);
end;

procedure TfrmFn04.SpeedButton1Click(Sender: TObject);
begin
   if not edtConta.Focused then
      edtConta.SetFocus;

   ConsultaContaBanco(edtConta);
end;

procedure TfrmFn04.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;

   if Key = 13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmFn04.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn04.btnGravarClick(Sender: TObject);
Var Historico1 : String;
begin
   if (not Cheka(01)) or
      (not Cheka(02)) or
      (not Cheka(03)) then
      Abort;

   if dmFn04.cdsConlan.State = dsInsert then
   begin
      Historico1 := 'Lancamento do Saldo Inicial - ' + edtValor.Field.AsString + ' - Movimento - ' + edtDataFluxo.Field.AsString;

      GravaLogUser(Self, Historico1);

      dmFn04.cdsConlanCODIGO_CONLAN.AsInteger     := Busca_Proximo('P_CONLAN', 'CODIGO_CONLAN');

      dmFn04.cdsConlanMOVIMENTO_CONLAN.AsDateTime := edtDataFluxo.Field.AsDateTime;

      dmFn04.cdsConlanHISTORICO_CONLAN.AsVariant  := 'LANCAMENTO DE SALDO INICIAL';

      if edtValor.Field.AsFloat >= 0 then
         dmFn04.cdsConlanTIPO_CONLAN.AsString     := 'C'
      else
         dmFn04.cdsConlanTIPO_CONLAN.AsString     := 'D';

      dmFn04.cdsConlanORIGEM_CONLAN.AsString      := 'S';

      dmFn04.cdsConlanCOD_EMPRESA.AsString        := CodigoCidadeEmpresa1;

      dmFn04.cdsConlan.Post;

      dmFn04.cdsConlan.ApplyUpdates(0);

      Application.MessageBox('Lançamento de saldo inicial realizado com sucesso', 'Informação', MB_OK+MB_ICONEXCLAMATION);
   end;
end;

procedure TfrmFn04.FormShow(Sender: TObject);
begin
   dmFn04.cdsConlan.Open;

   dmFn04.cdsConlan.Append;

   edtDataFluxo.Field.AsDateTime := DataSystem1;

   edtConta.SetFocus;
end;

function TfrmFn04.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin
         if edtConta.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a Conta', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      02:
      begin
         if edtDataFluxo.Field.AsString = '' then
         begin
            Application.MessageBox('Informe a Data', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      03:
      begin
         if edtValor.Field.AsFloat = 0 then
         begin
            Application.MessageBox('Informe o Valor', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;
   end;
end;

procedure TfrmFn04.edtContaEnter(Sender: TObject);
begin
   if (not(dmFn04.cdsConlan.State in [dsInsert, dsEdit])) then
      dmFn04.cdsConlan.Append;

   edtDataFluxo.Field.AsDateTime := DataSystem1;
end;

end.
