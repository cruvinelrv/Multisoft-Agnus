unit uF6_3_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DBActns, StdCtrls, Buttons, DB, Mask, DBCtrls,
  ExtCtrls, ComCtrls;

type
  TfrmF6_3_1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    dsVeiculocliente: TDataSource;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmF6_3_1: TfrmF6_3_1;

implementation

uses uDmPrincipal, udmF6, uGlobal;


{$R *.dfm}

procedure TfrmF6_3_1.BitBtn2Click(Sender: TObject);
begin
    close;

end;

procedure TfrmF6_3_1.BitBtn1Click(Sender: TObject);
begin
Try
     if dbeDescricao.Text='' then
     begin
         Application.MessageBox('descrição não foi informada','Informação',mb_ok+mb_iconinformation);
         dbeDescricao.SetFocus;
         exit;

     end;
     if dmF6.cdsVeiculoCliente.State=DsInsert then
     begin
         dmF6.cdsVeiculoClienteCLIENTE_VEICULO.AsInteger := dmF6.cdsPesqClienteCODIGO_CLIENTE.AsInteger;
     end;
     dmF6.cdsVeiculoCliente.Post;
     Close;

Finally

end;

end;

procedure TfrmF6_3_1.BitBtn3Click(Sender: TObject);
begin
   if dmF6.cdsVeiculoCliente.State in[DsEdit,DsInsert] then
   begin
       dmF6.cdsVeiculoCliente.Cancel;

   end;
   Close;

end;

procedure TfrmF6_3_1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

  end;

end;

procedure TfrmF6_3_1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
