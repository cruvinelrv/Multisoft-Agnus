{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> EST001
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> EVALDO BARCELOS PALMA
 DATA DE CONCEPÇÃO    --> 18/10/2006
 FINALIDADE           --> Lança Saldo inicial no caixa.
 COMENTARIO           -->
 ******************************************************************************}

unit uCx01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, JvToolEdit, JvDBControls, Mask,
  JvExMask, JvBaseEdits, DBCtrls, DB, Grids, DBGrids;

type
  TfrmCx01 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    btnGravar: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBCalcEdit1: TJvDBCalcEdit;
    DataSource1: TDataSource;
    edtDataCaixa: TJvDateEdit;
    edtTurno: TJvCalcEdit;
    DBText1: TDBText;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmCx01: TfrmCx01;

implementation

uses uDmCx01, uGlobal, uDmPrincipal;

{$R *.dfm}

procedure TfrmCx01.FormShow(Sender: TObject);
var
   Sql1: String;
begin
   DmCx01.cdsCaixa.Close;
   DmCx01.cdsCaixa.Params.ParamByName('CAIXA').AsInteger   := StrToInt(NumeroCaixa1);
   DmCx01.cdsCaixa.Params.ParamByName('EMPRESA').AsInteger := StrToInt(CodigoEmpresa1);
   DmCx01.cdsCaixa.Open;

   if not DmCx01.cdsCaixa.IsEmpty then
   begin
      edtDataCaixa.Date := StrToDate(copy(DmCx01.cdsCaixaCHAVE_CAIXA.AsString,1,pos('_',DmCx01.cdsCaixaCHAVE_CAIXA.AsString) - 1));
      edtTurno.Value    := StrToInt(copy(DmCx01.cdsCaixaCHAVE_CAIXA.AsString,pos('_',DmCx01.cdsCaixaCHAVE_CAIXA.AsString) + 1,1));
      btnGravar.Enabled := True;

      DmCx01.cdsCaixa.Edit;
      Exit;
   end
   else
   begin
      //   faz a abertura do novo caixa caso não exista
      dmCx01.cdsCaixa.Append;
      dmCx01.cdsCaixaCOD_EMPRESA  .AsString := CodigoEmpresa1;
      dmCx01.cdsCaixachave_caixa  .Value    := FormatDateTime('dd/mm/yy',DataSystem1) + '_1_';
      dmCx01.cdsCaixacodigo_caixa .Value    := StrToInt(NumeroCaixa1);

      edtDataCaixa.Date := StrToDate(copy(DmCx01.cdsCaixaCHAVE_CAIXA.AsString,1,pos('_',DmCx01.cdsCaixaCHAVE_CAIXA.AsString) - 1));
      edtTurno.Value    := StrToInt(copy(DmCx01.cdsCaixaCHAVE_CAIXA.AsString,pos('_',DmCx01.cdsCaixaCHAVE_CAIXA.AsString) + 1,1));
      btnGravar.Enabled := True;
   end;
end;

procedure TfrmCx01.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmCx01.btnGravarClick(Sender: TObject);
begin
   DmCx01.cdsCaixa.Post;
   DmCx01.cdsCaixa.ApplyUpdates(0);

   btnGravar.Enabled := False;
   Close;
end;

procedure TfrmCx01.FormCreate(Sender: TObject);
begin
   DmCx01 := TDmCx01.Create(Self);
end;

procedure TfrmCx01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmCx01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
