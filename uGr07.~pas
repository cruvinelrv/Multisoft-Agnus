unit uGr07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, JvDBControls,
  DBCtrls, JvBaseEdits, Grids, DBGrids, DB, DBClient, Buttons, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl,
  ppBands, ppCache, ppVar, ppModule, raCodMod, ComCtrls;

type

    TfrmGr07 = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    btnFechar: TBitBtn;
    dsFornecedor: TDataSource;
    dsProdutos: TDataSource;
    dsPedido: TDataSource;
    dsClientes: TDataSource;
    btnGravar: TBitBtn;
    Label1: TLabel;
    edPedido: TEdit;
    Label2: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    edFornecedor: TDBEdit;
    DBText1: TDBText;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    edCliente: TDBEdit;
    DBText2: TDBText;
    DBEdit3: TDBEdit;
    StatusBar1: TStatusBar;
    procedure edPedidoExit(Sender: TObject);
    procedure edFornecedorExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edPrecoUnitarioEnter(Sender: TObject);
    procedure edPrecoUnitarioExit(Sender: TObject);
    procedure dsPedidoDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure ppNomeClienteGetText(Sender: TObject; var Text: String);
    procedure ppEnderecoGetText(Sender: TObject; var Text: String);
    procedure btnGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmGr07: TfrmGr07;

implementation


uses uGlobal, uDmPrincipal, udmGr07;

{$R *.dfm}

procedure TfrmGr07.edPedidoExit(Sender: TObject);
var
Ctrl: TWinControl;
begin

   Try

   Ctrl := ActiveControl;

   With dmGr07 do
   begin

      qryPedidoCompra.Close;
      cdsPedidoCompra.Close;

     if (Ctrl=btnFECHAR) Then
     Begin

        exit ;

     end ;

     if edPedido.text='' then
     begin

        cdsPedidoCompra.Open;
        cdsPedidoCompra.Insert;
        btnGravar.Enabled:=True;

     end else
     begin

        qryPedidoCompra.ParamByName('PEDIDO').AsInteger :=StrToInt(edPedido.text);
        qryPedidoCompra.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
        qryPedidoCompra.Open;
        cdsPedidoCompra.Open;

        if cdsPedidoCompra.Eof then
        begin

           Application.MessageBox('Pedido não cadastrado','Informação',MB_ICONINFORMATION);
           edPedido.SetFocus;
           exit;

        end ;


     end ;

   end ;

 Finally

 end ;

end;

procedure TfrmGr07.edFornecedorExit(Sender: TObject);
var
Ctrl: TWinControl;
begin

   Try

   Ctrl:= ActiveControl;

   if (Ctrl=btnFECHAR) Then
      exit ;

   With dmGr07 do
   begin

      qryPesqFornecedor.Close;
      qryPesqFornecedor.ParamByName('fornecedor').AsInteger:=StrToInt(edFornecedor.text);
      qryPesqFornecedor.Open;

      if qryPesqFornecedor.Eof then
      begin

         qryPesqFornecedor.Close;
         Application.MessageBox('Fornecedor não cadastrado','Informação',mb_ok+MB_ICONINFORMATION);
         edFornecedor.SetFocus;
         exit;

      end;

   end;

Finally

end ;

end;

procedure TfrmGr07.btnFecharClick(Sender: TObject);
begin

   Close;

end;

procedure TfrmGr07.edClienteExit(Sender: TObject);
var

  Ctrl: TWinControl;

begin

   Try

   Ctrl := ActiveControl;

   With dmGr07 do
   begin

      qryCliente.Close;

      if CTRL=btnFECHAR then
      begin

         exit;

      end ;

      if edCliente.Text='' then
      begin

         exit;

      end ;

      qryCliente.ParamByName('CLIENTE').AsInteger:=StrToInt(edCliente.text);
      qryCliente.open;

      if qryCliente.Eof then
      begin

         Application.MessageBox('Cliente não encontrado','Informação',MB_ICONINFORMATION);
         edCliente.SetFocus;
         exit;

      end else
      begin

         if qryClienteTIPO_CLIENTE.AsInteger=2 then
         begin

            qryCliente.Close;
            edCliente.setFocus;
            exit;

         end;

      end;

   end;

 Finally;

 end;

end;

procedure TfrmGr07.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if Key = #13 then

   if not (ActiveControl is TDBGrid) then
   begin

      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

   end;

   if Key = #27 then
      Close;

end;

procedure TfrmGr07.edPrecoUnitarioEnter(Sender: TObject);
begin

   SELF.KeyPreview:=FALSE;

end;

procedure TfrmGr07.edPrecoUnitarioExit(Sender: TObject);
begin

   SELF.KeyPreview:=True;

end;

procedure TfrmGr07.dsPedidoDataChange(Sender: TObject; Field: TField);
begin

   With dmGr07 do
   begin

      qryPesqFornecedor.Close;
      qryPesqFornecedor.ParamByName('fornecedor').AsInteger:=dmGr07.cdsPedidoCompraFORNECEDOR_PEDIDO.AsInteger;
      qryPesqFornecedor.Open;

   end ;

   With dmGr07 do
   begin

      qryCliente.Close;
      qryCliente.ParamByName('CLIENTE').AsInteger:=dmGr07.cdsPedidoCompraCLIENTE_PEDIDO.AsInteger;
      qryCliente.open;

   end ;

end;

procedure TfrmGr07.FormCreate(Sender: TObject);
begin
   dmGr07 := TdmGr07.Create(Self);
   

   With dmGr07 do
   begin

      qryPedidoCompra.Close;
      cdsPedidoCompra.Close;

   end ;

   With dmGr07 do
   begin

      qryCliente.Close;


   end ;

   with dmGr07 do
   begin

      qryPesqFornecedor.Close;

   end ;

end;

procedure TfrmGr07.ppNomeClienteGetText(Sender: TObject;
  var Text: String);
begin

   if (dmGr07.qryCliente.Active) and (dmGr07.qryCliente.Eof=false) then
      text:=dmGr07.qryClienteNOME_CLIENTE.AsString;

end;

procedure TfrmGr07.ppEnderecoGetText(Sender: TObject;
  var Text: String);
begin

   if (dmGr07.qryCliente.Active) and (dmGr07.qryCliente.Eof=false) then
      text:=dmGr07.qryClienteENDERECO_CLIENTE.AsString;

end;

procedure TfrmGr07.btnGravarClick(Sender: TObject);
begin

   if application.MessageBox('Confirma o Cancelamento do pedido','Confirmação',MB_YESNO)=idYes then
   begin

      dmGr07.cdsPedidoCompra.Delete;

      if dmGr07.cdsPedidoCompra.ApplyUpdates(0)=0 then
      begin

         dmPrincipal.sdsTemporario.Close;
         dmPrincipal.sdsTemporario.CommandText:='DELETE FROM  P_PEDIDO_ITEM WHERE CODIGO_PEDIDO='+edPedido.text +' AND COD_EMPRESA='+CodigoEmpresa1;
         dmPrincipal.sdsTemporario.ExecSQL(true);
         
      end else
      begin

         dmGr07.cdsPedidoCompra.Cancel;

      end ;


   end ;

end;

procedure TfrmGr07.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   // Chama Calculadora do Windows
   if (Shift = [ssShift]) and (Key = 112) then
      WinExec('calc.exe', SW_SHOW);

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
