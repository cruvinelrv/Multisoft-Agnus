{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN005)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> Fl�vio Scariot
 DATA DE CONCEP��O    --> 15/05/2007
 FINALIDADE           --> Baixa de Cheques de Clientes
 COMENTARIO           --> Foi adicionado um campo na tabela P_PREDATAD, CAMPO_BUSCA
                          se CAMPO_BUSCA = 'A' o cheque est� aberto se CAMPO_BUSCA = 'F'
                          o cheque foi baixado
 *******************************************************************************}

unit uFn0302_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvDBControls, DB;

type
  TfrmFn0302_01 = class(TForm)
    Panel1: TPanel;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    edtEmitente: TDBEdit;
    Label2: TLabel;
    edtBanco: TDBEdit;
    edtAgencia: TDBEdit;
    edtConta: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtCheque: TDBEdit;
    Label6: TLabel;
    edtValor: TDBEdit;
    edtEmissao: TJvDBDateEdit;
    edtVencimento: TJvDBDateEdit;
    edtBaixa: TJvDBDateEdit;
    edtMovimento: TJvDBDateEdit;
    edtContaCorrente: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    DBText1: TDBText;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBaixaExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtContaCorrenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFn0302_01: TfrmFn0302_01;

implementation

uses uFn0302, udmFn0302, uGlobal, uConsulta;

{$R *.dfm}

procedure TfrmFn0302_01.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
   btnGravar.Enabled := (dmFn0302.cdsGrid2.Active) and
                        (dmFn0302.cdsGrid2.State in [dsInsert, dsEdit]);
end;

procedure TfrmFn0302_01.FormShow(Sender: TObject);
begin
   edtBaixa.Field.AsDateTime     := DataSystem1;

   edtMovimento.Field.AsDateTime := DataSystem1;

   edtBaixa.SetFocus;
end;

procedure TfrmFn0302_01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn0302_01.edtBaixaExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtBaixa.Field.AsDateTime < edtVencimento.Field.AsDateTime then
   begin
      if Application.MessageBox('Deseja que a data da liquida��o seja anterior' + #13 + ' a data do vencimento?', 'Confirma��o', MB_YESNO+MB_ICONQUESTION) = mrYes then
         edtMovimento.SetFocus
      else
         edtBaixa.SetFocus;
   end;
end;

procedure TfrmFn0302_01.SpeedButton1Click(Sender: TObject);
begin
   edtContaCorrente.SetFocus;

   ConsultaContaBanco(edtContaCorrente);
end;

procedure TfrmFn0302_01.btnGravarClick(Sender: TObject);
Var Historico1 : String;
begin
   if dmFn0302.cdsGrid.State in [dsInsert, dsEdit] then
   begin
      Historico1 := 'Baixou o Cheque Pre_Datado ' +  dmFn0302.cdsGridCHEQUE.AsString + '  Dia  ' + edtBaixa.Field.AsString + ' Valor: ' + edtValor.Field.AsString;

      GravaLogUser(Self, Historico1);

      dmFn0302.cdsGrid2CAMPO_BUSCA.AsString := 'F';

      dmFn0302.cdsGrid2.Post;

      dmFn0302.cdsGrid2.ApplyUpdates(0);

      Application.MessageBox('Cheque baixado com sucesso', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
   end;

   Close;
end;

procedure TfrmFn0302_01.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn0302_01.FormCreate(Sender: TObject);
begin
   dmFn0302.cdsGrid2.Close;
   dmFn0302.cdsGrid2.Params.ParamByName('CODIGO').AsInteger := dmFn0302.cdsGridCODIGO_PREDATAD.AsInteger;
   dmFn0302.cdsGrid2.Open;

   if not dmFn0302.cdsGrid2.IsEmpty then
   begin
      dmFn0302.cdsGrid.Delete;
      dmFn0302.cdsGrid2.Edit;
   end;
end;

procedure TfrmFn0302_01.edtContaCorrenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not RetornaContaCorrenteCaixa(edtContaCorrente, DBText1) then
      begin
         edtContaCorrente.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn0302_01.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

end.
