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

unit uFn0302;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB;

type
  TfrmFn0302 = class(TForm)
    Panel1: TPanel;
    btnSair: TBitBtn;
    btnBaixar: TBitBtn;
    btnConsultar: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFn0302: TfrmFn0302;

implementation

uses udmFn0302, uGlobal, uFn0302_02, uFn0302_01;

{$R *.dfm}

procedure TfrmFn0302.FormCreate(Sender: TObject);
begin
   dmFn0302 := TdmFn0302.Create(Self);

   dmFn0302.cdsGrid.Close;
   dmFn0302.cdsGrid.Params.ParamByName('CAMPO_BUSCA').AsString := 'A'; // apenas os cheques que n�o foram baixados
   dmFn0302.cdsGrid.Open;
end;

procedure TfrmFn0302.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn0302.btnConsultarClick(Sender: TObject);
begin
   frmFn0302_02 := TfrmFn0302_02.Create(Self);
   frmFn0302_02.ShowModal;
   frmFn0302_02.Release;
   frmFn0302_02 := nil;
end;

procedure TfrmFn0302.btnBaixarClick(Sender: TObject);
begin
   if not Verifica_acesso(228) then // permiss�o para baixar cheque
      Exit;

   frmFn0302_01 := TfrmFn0302_01.Create(Self);

   dmFn0302.cdsGrid.Edit;

   frmFn0302_01.ShowModal;
   frmFn0302_01.Release;
   frmFn0302_01 := nil;
end;

procedure TfrmFn0302.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
