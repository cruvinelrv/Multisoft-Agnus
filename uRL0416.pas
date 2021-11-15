unit uRL0416;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmRL0416 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label7: TLabel;
    edtGrupo: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Label3: TLabel;
    edtDataIni: TJvDateEdit;
    Label1: TLabel;
    edtDataFim: TJvDateEdit;
    Label2: TLabel;
    edtCliente: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    Label4: TLabel;
    edtVendedor: TJvValidateEdit;
    SpeedButton2: TSpeedButton;
    Edit3: TEdit;
    Label5: TLabel;
    edtProduto: TJvValidateEdit;
    SpeedButton4: TSpeedButton;
    Edit4: TEdit;
    Label6: TLabel;
    cbxOrdem: TComboBox;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtVendedorExit(Sender: TObject);
    procedure edtGrupoExit(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure edtProdutoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0416: TfrmRL0416;

implementation

uses udmRL0416, uGlobal, uConsulta, DateUtils;

{$R *.dfm}

procedure TfrmRL0416.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0416.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0416.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmRL0416.FormCreate(Sender: TObject);
begin
   dmRL0416 := TdmRL0416.Create(Self);
end;

procedure TfrmRL0416.edtVendedorExit(Sender: TObject);
begin
   if not Busca_Dados(edtVendedor, Edit3, 'P_VENDEDOR', 'CODIGO_VENDEDOR', 'NOME_VENDEDOR') then
   begin
      edtVendedor.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0416.edtGrupoExit(Sender: TObject);
begin
   if not Busca_Dados(edtGrupo, Edit1, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0416.edtClienteExit(Sender: TObject);
begin
   if not Busca_Dados(edtCliente, Edit2, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
   begin
      edtCliente.SetFocus;
      Exit;
   end
   else
   begin
      if Tipo_Cliente = 2 then
      begin
         Application.MessageBox('O código informado é inválido', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtCliente.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0416.edtProdutoExit(Sender: TObject);
begin
   if not Busca_Dados(edtProduto, Edit4, 'P_PRODUTOS', 'CODIGO_PRODUTO', 'DESCRICAO_PRODUTO') then
   begin
      edtProduto.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0416.SpeedButton3Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0416.SpeedButton1Click(Sender: TObject);
begin
   edtCliente.SetFocus;

   ConsultaCliente(edtCliente);
end;

procedure TfrmRL0416.SpeedButton2Click(Sender: TObject);
begin
   edtVendedor.SetFocus;

   ConsultaVendedor(edtVendedor);
end;

procedure TfrmRL0416.SpeedButton4Click(Sender: TObject);
begin
   edtProduto.SetFocus;

   ConsultaProduto(edtProduto);
end;

procedure TfrmRL0416.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial do período', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0416.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data Final do período', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0416.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   if MonthOf(edtDataIni.Date) <> MonthOf(edtDataFim.Date) then
   begin
      Application.MessageBox('"Datas Fora do Período !","Os meses e os anos das datas tem de ser idênticos."', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;

   Sql1 := '';
end;

procedure TfrmRL0416.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
