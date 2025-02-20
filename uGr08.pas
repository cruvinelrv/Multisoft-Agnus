unit uGr08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBClient, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd, ppReport, ppComm,
  ppRelatv, ppDBPipe, Mask, JvExMask, JvSpin, ComCtrls, ppParameter;

type
  TfrmGr08 = class(TForm)
    Panel1: TPanel;
    btnFechar: TBitBtn;
    Label2: TLabel;
    edtPedido: TEdit;
    cdsPedido: TClientDataSet;
    DataSource1: TDataSource;
    cdsPedidoCodigoCliente: TIntegerField;
    cdsPedidoNomeCliente: TStringField;
    cdsPedidoEnderecoCliente: TStringField;
    cdsPedidoBairroCliente: TStringField;
    cdsPedidoCidadeCliente: TStringField;
    cdsPedidoEstadoCliente: TStringField;
    cdsPedidoTelefoneCliente: TStringField;
    cdsPedidoCodigoVenda: TIntegerField;
    ppDBPipeline1: TppDBPipeline;
    rptPedido: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel21: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    Label1: TLabel;
    edtcopias: TJvSpinEdit;
    ppLine3: TppLine;
    ppLabel22: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    BitBtn1: TBitBtn;
    Animate1: TAnimate;
    rptPedido2Vias: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLine2: TppLine;
    ppLabel23: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel40: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine4: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel67: TppLabel;
    rdbUmaVia: TRadioButton;
    rdbDuasVias: TRadioButton;
    ppLine5: TppLine;
    ppLabel45: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel62: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine6: TppLine;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmGr08: TfrmGr08;

implementation

uses uDmPrincipal, uGlobal;

{$R *.dfm}

procedure TfrmGr08.btnFecharClick(Sender: TObject);
begin
 
   Close;

end;

procedure TfrmGr08.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   cdsPedido.Close;

end;

procedure TfrmGr08.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if Key = #13 then
   begin

      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

   end;

end;

procedure TfrmGr08.BitBtn1Click(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   Try

   cdsPedido.Close;
   if edtPedido.Text='' then
      exit;

   Animate1.Active:=true;
   animate1.Visible:=Animate1.Active;
   cdsPedido.CreateDataSet;
   cdsPedido.Open;

   dmPrincipal.sdsTemporario.Close;
   dmPrincipal.sdsTemporario.CommandText:='SELECT P_VENDAS.CODIGO_VENDA, P_VENDAS.CLIENTE_VENDA,E_CLIENTE.NOME_CLIENTE,E_CLIENTE.ENDERECO_CLIENTE,'+
                                          'E_CLIENTE.BAIRRO_CLIENTE,E_CLIENTE.CIDADE_CLIENTE,E_CLIENTE.ESTADO_CLIENTE,e_cliente.TELEFONE_CLIENTE FROM P_VENDAS'+
                                          ' JOIN E_CLIENTE ON P_VENDAS.CLIENTE_VENDA=E_CLIENTE.CODIGO_CLIENTE'+
                                          ' WHERE  P_VENDAS.CODIGO_VENDA='+edtPedido.Text +' AND P_VENDAS.cod_empresa='+CodigoEmpresa1;


   dmPrincipal.sdsTemporario.ExecSQL(true);
   dmPrincipal.sdsTemporario.Open;
   if not dmPrincipal.sdsTemporario.Eof then
   begin

      cdsPedido.Insert;
      cdsPedidoCodigoCliente.AsInteger :=dmPrincipal.sdsTemporario.FieldByName('CLIENTE_VENDA').AsInteger;
      cdsPedidoCodigoVenda.AsInteger   :=dmPrincipal.sdsTemporario.FieldByName('CODIGO_VENDA').AsInteger;
      cdsPedidoNomeCliente.AsString    :=dmPrincipal.sdsTemporario.FieldByName('NOME_CLIENTE').AsString;
      cdsPedidoEnderecoCliente.AsString:=dmPrincipal.sdsTemporario.FieldByName('ENDERECO_CLIENTE').AsString;
      cdsPedidoBairroCliente.AsString  :=dmPrincipal.sdsTemporario.fieldByName('BAIRRO_CLIENTE').AsString;
      cdsPedidoCidadeCliente.AsString  :=dmPrincipal.sdsTemporario.FieldByName('CIDADE_CLIENTE').AsString;
      cdsPedidoEstadoCliente.AsString  :=dmPrincipal.sdsTemporario.FieldByName('ESTADO_CLIENTE').AsString;
      cdsPedidoTelefoneCliente.AsString:=dmPrincipal.sdsTemporario.FieldByName('TELEFONE_CLIENTE').AsString;
      cdsPedido.Post;
      Animate1.Active:=False;
      animate1.Visible:=Animate1.Active;
      if (cdsPedido.Active) and (cdsPedido.Eof=false) then
      begin

         if rdbDuasVias.Checked then
         begin

            rptPedido2Vias.PrinterSetup.Copies:=round(edtcopias.Value);
            rptPedido2Vias.Print;

         end ;

         if rdbUmaVia.Checked then
         begin

            rptPedido.PrinterSetup.Copies:=round(edtcopias.Value);
            rptPedido.Print;

         end ;

    end ;

   end else
   begin

      Animate1.Active:=False;
      animate1.Visible:=Animate1.Active;
      Application.MessageBox('Pedido n�o encontrado','Informa��o',MB_ICONINFORMATION);
      edtPedido.SetFocus;
      exit;

   end ;

Finally

end ;

end;

procedure TfrmGr08.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
