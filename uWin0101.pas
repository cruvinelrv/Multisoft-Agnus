unit uWin0101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ComCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    cobSituacao: TComboBox;
    Label4: TLabel;
    edtCodigo: TEdit;
    StatusBar1: TStatusBar;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    SpeedButton1: TSpeedButton;
    procedure edtCodigoExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses uDmPrincipal, uGlobal;

{$R *.dfm}

procedure TForm2.edtCodigoExit(Sender: TObject);
var
Ctrl: TWinControl;
begin
try
  with dmPrincipal do
  begin
      qryCaixa.Close;
      cdsCaixa.Close;
      Ctrl := ActiveControl;
      if Ctrl<>btnFECHAR THEN
      BEGIN
        if edtCodigo.Text<>'' then
        begin
            qryCaixa.ParamByName('caixa').AsInteger:=StrToInt(edtCodigo.Text);
            qryCaixa.Open;
            cdsCaixa.Open;
            if cdsCaixa.Eof then
            begin
                 Application.MessageBox('Caixa não cadastrado','Informação',mb_ok+mb_iconInformation);
                 edtCodigo.SetFocus;
                 exit;

            end else
            begin
                cdsCaixa.Edit;
                cobSituacao.ItemIndex:=cdsCaixaSITUACAO_CAIXA.AsInteger;

            end;
        end else
        begin
           cdsCaixa.Open;
           cdsCaixa.Insert;
           cobSituacao.ItemIndex:=0;

        end;

    end;

  end;
Except

end;

end;

procedure TForm2.btnFecharClick(Sender: TObject);
begin
    dmPrincipal.cdsCaixa.close;
    dmPrincipal.qryCaixa.close ;
    Close;
end;

procedure TForm2.btnGravarClick(Sender: TObject);
begin
    if dbedit1.Text='' then
    begin
        Application.MessageBox('Nome do Caixa invalido','Erro',mb_ok+MB_ICONERROR);
        DBEdit1.SetFocus;
        exit;

    end;

    dmPrincipal.cdsCaixaCODIGO_EMPRESA.AsInteger:=StrToInt(CodigoEmpresa1);
    IF dmPrincipal.cdsCaixa.State in[DsInsert] then
    begin
        dmPrincipal.cdsCaixaIDCODIGO_CAIXA.AsInteger:=Busca_Proximo(dmPrincipal.qryTemp2,'CAIXA','IDCODIGO_CAIXA','CODIGO_EMPRESA='+CodigoEmpresa1);
        edtCodigo.Text:=dmPrincipal.cdsCaixaIDCODIGO_CAIXA.AsString;

    end;
    dmPrincipal.cdsCaixaSITUACAO_CAIXA.AsInteger:=cobSituacao.ItemIndex;
    dmPrincipal.cdsCaixa.Post;
    if dmPrincipal.cdsCaixa.ApplyUpdates(0)>0 then
    begin
       Application.MessageBox('Erro ao gravar esse caixa','Informação',mb_ok+MB_ICONERROR);

    end;

    edtCodigo.SetFocus;
    
end;

procedure TForm2.btnExcluirClick(Sender: TObject);
begin
    if Application.MessageBox('Confirma a Exclusão desse caixa?','Confirmação',mb_yesno+mb_iconQuestion+MB_DEFBUTTON2)=idYes then
    begin
        dmPrincipal.cdsCaixa.Delete;
        dmPrincipal.cdsCaixa.ApplyUpdates(0);
        edtCodigo.Text:='';
        edtCodigo.SetFocus;
    end;

end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin

      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

  end;
end;

end.
