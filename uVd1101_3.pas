unit uVd1101_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DB, Mask;

type
  TfrmVd1101_3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button1: TButton;
    dsCliente: TDataSource;
    Button2: TButton;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVd1101_3: TfrmVd1101_3;

implementation

uses uDmVd1101, udmCd06, uCd06_1, uVd1101, uGlobal;

{$R *.dfm}

procedure TfrmVd1101_3.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmVd1101_3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
      close
   else
   begin
      if key = 13 then
         Perform(WM_NEXTDLGCTL, 0, 0);
   end;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

procedure TfrmVd1101_3.Button2Click(Sender: TObject);
begin
   dmVd1101.cdsCidades.Close;
   dmVd1101.cdsCidades.Params.ParamByName('NOME_CIDADE').AsString := Trim(dmVd1101.cdsClienteNOME_CIDADE.AsString);
   dmVd1101.cdsCidades.Open;

   if dmVd1101.cdsCidades.IsEmpty then
   begin
      dmVd1101.cdsCidades.Append;

      dmVd1101.cdsCidadesCODIGO_CIDADE    .Value    := Busca_Proximo('E_CIDADE','CODIGO_CIDADE');
      dmVd1101.cdsCidadesDESCRICAO_CIDADE .AsString := Trim(dmVd1101.cdsClienteNOME_CIDADE.AsString);
      dmVd1101.cdsCidadesUF_CIDADE        .AsString := dmVd1101.cdsClienteESTADO_CLIENTE.AsString;

      dmVd1101.cdsCidades.Post;
      dmVd1101.cdsCidades.ApplyUpdates(0);
   end;

   if dmVd1101.cdsCliente.State = dsEdit then
      dmVd1101.cdsCliente.Post;

   dmCd06 := tdmCd06.Create(Self);
   
   frmCd06_1 := TfrmCd06_1.Create(Application);

   dmCd06.cdsCliente.Open;
   dmCd06.cdsCliente.Append;
   
   dmCd06.cdsClienteNOME_CLIENTE      .Value := DBEdit1.Text;
   dmCd06.cdsClienteCNPJ_CLIENTE      .Value := DBEdit2.Text;
   dmCd06.cdsClienteINSCRICAO_CLIENTE .Value := DBEdit3.Text;
   dmCd06.cdsClienteENDERECO_CLIENTE  .Value := DBEdit4.Text;
   dmCd06.cdsClienteBAIRRO_CLIENTE    .Value := DBEdit5.Text;
   dmCd06.cdsClienteCIDADE_CLIENTE    .Value := dmVd1101.cdsCidadesCODIGO_CIDADE.Value;
   dmCd06.cdsClienteCEP_CLIENTE       .Value := DBEdit7.Text;
   dmCd06.cdsClienteESTADO_CLIENTE    .Value := DBEdit8.Text;
   dmCd06.cdsClienteTELEFONE_CLIENTE  .Value := DBEdit9.Text;

   frmCd06_1.ShowModal;

   dmVd1101.cdsCliente.Close;
   dmVd1101.cdsCliente.Params.ParamByName('CLIENTE').AsInteger := dmCd06.cdsClienteCODIGO_CLIENTE.AsInteger;
   dmVd1101.cdsCliente.Open;

   frmVd1101.DBEdit1.Text := dmVd1101.cdsClienteCODIGO_CLIENTE.AsString;
   frmVd1101.Novo_cliente := True;
   Close;

   dmCd06 := nil;

   frmCd06_1.Release;
   frmCd06_1 := nil;
end;

procedure TfrmVd1101_3.DBEdit1Exit(Sender: TObject);
begin
   if (DBEdit1.Text <> '- VENDA AO CONSUMIDOR -') and (Nome_cliente = '- VENDA AO CONSUMIDOR -') then
      Button2.Enabled := True
   else
      Button2.Enabled := False;
end;

end.
