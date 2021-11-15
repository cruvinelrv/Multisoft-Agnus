{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN005)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 15/05/2007
 FINALIDADE           --> Baixa de Cheques de Clientes
 COMENTARIO           --> Foi adicionado um campo na tabela P_PREDATAD, CAMPO_BUSCA
                          se CAMPO_BUSCA = 'A' o cheque está aberto se CAMPO_BUSCA = 'F'
                          o cheque foi baixado
 *******************************************************************************}

unit uFn0302_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExMask, JvToolEdit, JvDBControls, Mask, DBCtrls,
  ExtCtrls, DB, Buttons;

type
  TfrmFn0302_02 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtEmitente: TDBEdit;
    edtCheque: TDBEdit;
    edtValor: TDBEdit;
    edtEmissao: TJvDBDateEdit;
    edtBomPara: TJvDBDateEdit;
    edtDevolucao1: TJvDBDateEdit;
    edtDevolucao2: TJvDBDateEdit;
    edtLiquidacao: TJvDBDateEdit;
    edtFornecedor: TDBEdit;
    edtObservacao: TDBEdit;
    edtAlinea: TEdit;
    edtBanco: TDBEdit;
    edtCPF: TDBEdit;
    edtFone: TDBEdit;
    edtAgencia: TDBEdit;
    edtConta: TDBEdit;
    DataSource1: TDataSource;
    btnSair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFn0302_02: TfrmFn0302_02;

implementation

uses udmFn0302, uGlobal;

{$R *.dfm}

procedure TfrmFn0302_02.FormShow(Sender: TObject);
begin
   if dmFn0302.cdsGridCGC.AsString <> '' then
   begin
      if Length(dmFn0302.cdsGridCGC.AsString) <= 15 then
         dmFn0302.cdsGridCGC.EditMask := '999\.999\.999\-99;1; ' // máscara do CPF
      else
         dmFn0302.cdsGridCGC.EditMask := '99\.999\.999\/9999\-99;1; '; // máscara do CGC OU CNPJ
   end;
end;

procedure TfrmFn0302_02.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn0302_02.btnSairClick(Sender: TObject);
begin
   Close;
end;

end.
