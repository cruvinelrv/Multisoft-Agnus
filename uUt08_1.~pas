unit uUt08_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, DBCtrls, Mask, ExtCtrls,
  ComCtrls;

type
  TfrmUt08_1 = class(TForm)
    btnFechar: TBitBtn;
    Panel1: TPanel;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ClientDataSet1: TClientDataSet;
    btnGravar: TBitBtn;
    Label4: TLabel;
    cobEmpresa: TDBLookupComboBox;
    DataSource2: TDataSource;
    StatusBar1: TStatusBar;
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUt08_1: TfrmUt08_1;

implementation

uses uDmPrincipal, udmProgs, uGlobal;

{$R *.dfm}

procedure TfrmUt08_1.btnFecharClick(Sender: TObject);
begin
    if dmProgs.cdsUsuario.State in[DsInsert,DsEdit] then
       dmProgs.cdsUsuario.Cancel;

    Close;
end;
procedure TfrmUt08_1.btnGravarClick(Sender: TObject);
begin
   //Grava log de usuário
   if dmProgs.cdsUsuario.State in [dsedit] then
   GravaLogUser(Self,'Alterou o usuário ' + dmProgs.cdsUsuarioNOME_USUARIO.AsString)
   else
   GravaLogUser(Self,'Incluiu o usuário ' + dmProgs.cdsUsuarioNOME_USUARIO.AsString);

   dmProgs.cdsUsuario.Post;
   Close;

end;

procedure TfrmUt08_1.FormCreate(Sender: TObject);
begin
    dmProgs.cdsEmpresa.Open;
    if dmProgs.cdsUsuario.State=DsInsert then
    begin
//      cobEmpresa.KeyValue:='1';
    end;

end;

procedure TfrmUt08_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dmProgs.cdsEmpresa.Close;
end;

procedure TfrmUt08_1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

  end;

end;

procedure TfrmUt08_1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
