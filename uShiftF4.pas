{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> EST001
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 02/02/2007
 FINALIDADE           --> Consulta de Reajuste de Preço
 COMENTARIO           -->
 ******************************************************************************}

unit uShiftF4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ComCtrls, DB,
  DBClient;

type
  TfrmShiftF4 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    StatusBar2: TStatusBar;
    BitBtn4: TBitBtn;
    DataSource1: TDataSource;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmShiftF4: TfrmShiftF4;

implementation

uses udmShiftF4, uGlobal;

{$R *.dfm}

procedure TfrmShiftF4.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if  Key = vk_RETURN then
      Close;
end;

procedure TfrmShiftF4.BitBtn4Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmShiftF4.FormShow(Sender: TObject);
begin
   dmShiftF4.cdsConsulta.Open;

   dmShiftF4.cdsTabela01.Open;

   dmShiftF4.cdsConsulta.Append;

   dmShiftF4.cdsConsultaCOD_EMPRESA.AsInteger := dmShiftF4.cdsTabela01COD_EMPRESA.AsInteger;

   dmShiftF4.cdsConsultaDATA_TABELA1.AsString := dmShiftF4.cdsTabela01DATA_TABELA01.AsString;

   dmShiftF4.cdsConsultaPERCENTUAL_TABELA.AsString := dmShiftF4.cdsTabela01PERCENTUAL_TABELA01.AsString;

   if (dmShiftF4.cdsTabela01TIPO_TABELA01.AsString <> '') and
      (dmShiftF4.cdsTabela01TIPO_TABELA01.AsString = '0' ) then
   begin
     dmShiftF4.cdsConsultaGRUPO_TABELA1.AsString := 'F';
   end
   else
   begin
      dmShiftF4.cdsConsultaGRUPO_TABELA1.AsString := 'G';
   end;
end;

procedure TfrmShiftF4.FormCreate(Sender: TObject);
begin
   dmShiftF4 := TdmShiftF4.Create(Self);
end;

procedure TfrmShiftF4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
