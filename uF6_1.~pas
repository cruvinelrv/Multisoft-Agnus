unit uF6_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, DBCtrls, DBClient;

type
  TfrmF6_1 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    dsVendas: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    lblVencidos: TLabel;
    StatusBar1: TStatusBar;
    dsClientes: TDataSource;
    cdsCompras: TClientDataSet;
    cdsComprasCODIGO_VENDA: TIntegerField;
    cdsComprasSERIE_VENDA: TStringField;
    cdsComprasNOTAFISCAL_VENDA: TIntegerField;
    cdsComprasCFOP_VENDA: TStringField;
    cdsComprasEMISSAO_VENDA: TDateField;
    cdsComprasHORA_VENDA: TTimeField;
    cdsComprasVENDEDOR_VENDA: TIntegerField;
    cdsComprasFATURA_VENDA: TFloatField;
    cdsComprasTIPO_PRECO_VENDA: TStringField;
    dtsCompras: TDataSource;
    cdsComprasNOME_CLIENTE: TStringField;
    btnBuscar: TBitBtn;
    Edit1: TEdit;
    procedure BitBtn4Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Busca;
  public
    { Public declarations }
    Cod_cliente: String;
  end;

var
  frmF6_1: TfrmF6_1;

implementation

uses uDmPrincipal, uGlobal, udmF6, uProcess, SqlExpr, uConsulta,
  uProcesso2;

{$R *.dfm}

procedure TfrmF6_1.BitBtn4Click(Sender: TObject);
begin
    close;

end;

procedure TfrmF6_1.Busca;
Var
 Total_Fatura : Double;
 FCliente : TCustomEdit;
begin
   Total_Fatura := 0;
   FCliente := TCustomEdit.Create(Self);
   FCliente.Text := Cod_cliente;

   with DmPrincipal do
   begin
      if FCliente.Text <> '' then
      begin
         Busca_Dados(FCliente, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE');

         frmProcesso2 := TfrmProcesso2.Create(Application);
         frmProcesso2.Label1.Caption := 'Abrindo Base de Dados...';
         frmProcesso2.Show;
         frmProcesso2.Refresh;

         cdsAvuslso.Close;
         cdsAvuslso.CommandText := 'SELECT * FROM P_VENDAS V '+
                                   'WHERE (V.EXCLUSAO_VENDA IS NULL) '+
                                   'AND V.CLIENTE_VENDA = '+ QuotedStr(FCliente.Text);
         cdsAvuslso.Open;
         frmProcesso2.Release;
         frmProcesso2 := Nil;
         Application.ProcessMessages;

         frmProcess := TfrmProcess.Create(Self);
         DBGrid1.DataSource.Enabled := False;
         frmProcess.JvgLabel1.Caption := 'Processando dados...';
         frmProcess.ProgressBar1.Max := cdsAvuslso.RecordCount;
         frmProcess.Show;
         cdsAvuslso.First;
         while not cdsAvuslso.Eof do
         begin
            frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
            frmProcess.Refresh;

            cdsCompras.Append;

            cdsComprasCODIGO_VENDA.AsInteger     := cdsAvuslso.FieldByName('CODIGO_VENDA').AsInteger;
            cdsComprasSERIE_VENDA.AsString       := cdsAvuslso.FieldByName('SERIE_VENDA').AsString;
            cdsComprasNOTAFISCAL_VENDA.AsInteger := cdsAvuslso.FieldByName('NOTAFISCAL_VENDA').AsInteger;
            cdsComprasCFOP_VENDA.AsString        := cdsAvuslso.FieldByName('CFOP_VENDA').AsString;
            cdsComprasEMISSAO_VENDA.AsDateTime   := cdsAvuslso.FieldByName('EMISSAO_VENDA').AsDateTime;
            cdsComprasHORA_VENDA.AsDateTime      := cdsAvuslso.FieldByName('HORA_VENDA').AsDateTime;
            cdsComprasVENDEDOR_VENDA.AsInteger   := cdsAvuslso.FieldByName('VENDEDOR_VENDA').AsInteger;
            cdsComprasFATURA_VENDA.AsFloat       := cdsAvuslso.FieldByName('FATURA_VENDA').AsFloat;
            cdsComprasTIPO_PRECO_VENDA.AsString  := cdsAvuslso.FieldByName('TIPO_PRECO_VENDA').AsString;

            Total_Fatura := Total_Fatura + cdsAvuslso.FieldByName('FATURA_VENDA').AsFloat;

            cdsCompras.Post;

            cdsAvuslso.Next;
         end;

         lblVencidos.Caption := FormatFloat(',0.00', Total_Fatura);

         frmProcess.Release;
         frmProcess := nil;
         FreeAndNil(FCliente);

         DBGrid1.DataSource.Enabled := True;
      end
      else
      begin
         Application.MessageBox('Cliente não encontrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end;
   end;
end;

procedure TfrmF6_1.btnBuscarClick(Sender: TObject);
begin
   Busca;
end;

procedure TfrmF6_1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.


