 {
  ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
  PROGRAMADOR          --> Evaldo Barcelos Palma
  ==============================================================================
  SISTEMA              --> MultiSoft
  Formulario           --> frm0314
  UNIT                 --> uLoja0314
  DATA DE CONCEPCAO    --> 21/09/2005
  FINALIDADE           --> Listagem de conta corrente / Caixa
  COMENTARIO           --> Tag = 1 >>> Não fecha a tabela no OnClose do form
                           Tag = 0 >>> Fecha a tabela no OnClose do form
  ==============================================================================
  }

unit uF7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, DBCtrls, JvExDBGrids, JvDBGrid;

type
  TfrmF7 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btnConfirma: TBitBtn;
    BitBtn4: TBitBtn;
    DsClientes: TDataSource;
    StatusBar1: TStatusBar;
    edtPesquisa: TEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    BitBtn2: TBitBtn;
    rdgOrdem: TRadioGroup;
    cobFiltro: TComboBox;
    Label2: TLabel;
    btnPropriedades: TBitBtn;
    btnDuplicatas: TBitBtn;
    btnVeiculos: TBitBtn;
    btnCompras: TBitBtn;
    btnObservacao: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure rdgOrdemClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnConfirmaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure cobFiltroChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPropriedadesClick(Sender: TObject);
    procedure btnDuplicatasClick(Sender: TObject);
    procedure btnVeiculosClick(Sender: TObject);
    procedure btnComprasClick(Sender: TObject);
    procedure btnObservacaoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }

  public
    { Public declarations }
     Sql1 : String;
  end;


var
  frmF7: TfrmF7;
  mOpcaoFiltro1: String;
  Cod_cliente: String;

implementation

uses uDmPrincipal, 
     uGlobal, uF6_1, uF6_2, uF6_3, uF7_1,
     uEST002, udmF7;

{$R *.dfm}


procedure TfrmF7.FormCreate(Sender: TObject);
begin
    dmF7 := TdmF7.Create(Self);

    Sql1 := 'SELECT FIRST 100 SKIP 0 E_CLIENTE.*, '+
            '(E_CLIENTE.credito_cliente-E_CLIENTE.utilizado_cliente) AS SALDO, '+
            'p_contrato.ultanuidade_contrato '+
            'FROM E_CLIENTE '+
            'LEFT OUTER JOIN E_CIDADE '+
            'ON E_CLIENTE.cidade_cliente=E_CIDADE.codigo_cidade '+
            'LEFT OUTER JOIN P_CONTRATO '+
            'ON E_CLIENTE.codigo_cliente=p_contrato.cliente_contrato '+
            'AND (P_CONTRATO.cod_empresa=:EMPRESA) '+
            'WHERE E_CLIENTE.TIPO_CLIENTE=:TIPO';

    dmF7.cdsPesqClientes2.close;
    dmF7.cdsPesqClientes2.CommandText := Sql1;
    dmF7.cdsPesqClientes2.Params.ParamByName('TIPO').AsInteger := 0;
    dmF7.cdsPesqClientes2.Open;

    dmF7.cdsPesqClientes2.IndexFieldNames:='NOME_CLIENTE';
end;

procedure TfrmF7.BitBtn4Click(Sender: TObject);
begin
    close;

end;

procedure TfrmF7.rdgOrdemClick(Sender: TObject);
begin
    if rdgOrdem.ItemIndex=0 then
       dmF7.cdsPesqClientes2.IndexFieldNames:='CODIGO_CLIENTE';

    if rdgOrdem.ItemIndex=1 then
       dmF7.cdsPesqClientes2.IndexFieldNames:='NOME_CLIENTE';

    if rdgOrdem.ItemIndex=2 then
       dmF7.cdsPesqClientes2.IndexFieldNames:='FANTASIA_CLIENTE';

    dbgrid1.SetFocus;

end;

procedure TfrmF7.DBGrid1TitleClick(Column: TColumn);
begin
    dmF7.cdsPesqClientes2.IndexFieldNames:=column.FieldName;

end;

procedure TfrmF7.btnConfirmaClick(Sender: TObject);
begin
   frmF7.Tag := 1;
   Close;
end;

procedure TfrmF7.BitBtn2Click(Sender: TObject);
begin
   GroupBox2.Visible:=false;
end;

procedure TfrmF7.GroupBox2Exit(Sender: TObject);
begin
   GroupBox2.Visible:=false;
end;

procedure TfrmF7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmF7.Tag = 0 then
      dmF7.cdsPesqClientes2.Close;
end;

procedure TfrmF7.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 121 then
    begin
        dbgrid1.Height      := 350;
        edtPesquisa.Top     := DBGrid1.Height + 10;
        edtPesquisa.Visible := True;
        edtPesquisa.SetFocus;
        exit;
    end ;

    if key = 13 then
    begin
       frmF7.Tag := 1;
       Close;
    end;

    if key = 27 then
    begin
        GroupBox2.Visible:=false;
        dbgrid1.SetFocus;

    end;
end;

procedure TfrmF7.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 46) Then
   KEY := 0;

   if Key = 13 then
   begin
      frmF7.Tag := 1;
      Close;
   end;
end;

procedure TfrmF7.DBGrid1DblClick(Sender: TObject);
begin
   frmF7.Tag := 1;
   Close;
end;

procedure TfrmF7.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      if edtPesquisa.Text <> '' then
      begin
         Case cobFiltro.ItemIndex of
            0: edtPesquisa.Text := RemoveChar(edtPesquisa.Text);
            1: edtPesquisa.Text := RemoveInteiro(edtPesquisa.Text);
         end;


         Sql1 := 'SELECT E_CLIENTE.*, '+
                 '(E_CLIENTE.credito_cliente-E_CLIENTE.utilizado_cliente) AS SALDO, '+
                 'p_contrato.ultanuidade_contrato '+
                 'FROM E_CLIENTE '+
                 'LEFT OUTER JOIN E_CIDADE '+
                 'ON E_CLIENTE.cidade_cliente=E_CIDADE.codigo_cidade '+
                 'LEFT OUTER JOIN P_CONTRATO '+
                 'ON E_CLIENTE.codigo_cliente=p_contrato.cliente_contrato '+
                 'AND (P_CONTRATO.cod_empresa= ' + CodigoEmpresa1 + ') '+
                 'WHERE E_CLIENTE.TIPO_CLIENTE = ''0'' ';

         Case cobFiltro.ItemIndex of
            0: Sql1 := Sql1 + ' AND E_CLIENTE.CODIGO_CLIENTE = '+ QuotedStr(edtPesquisa.Text);
            1: Sql1 := Sql1 + ' AND E_CLIENTE.NOME_CLIENTE LIKE '+ QuotedStr(edtPesquisa.Text + '%');
         end;

         dmF7.cdsPesqClientes2.close;
         dmF7.cdsPesqClientes2.CommandText := Sql1;
         dmF7.cdsPesqClientes2.Open;

         Case rdgOrdem.ItemIndex of
            0: dmF7.cdsPesqClientes2.IndexFieldNames:='CODIGO_CLIENTE';
            1: dmF7.cdsPesqClientes2.IndexFieldNames:='NOME_CLIENTE';
         end;

         edtPesquisa.clear;
      end;
   end;
end;

procedure TfrmF7.cobFiltroChange(Sender: TObject);
begin
   edtPesquisa.Clear;
   edtPesquisa.SetFocus;
end;

procedure TfrmF7.FormShow(Sender: TObject);
begin
   if edtPesquisa.CanFocus then
      edtPesquisa.SetFocus;
end;

procedure TfrmF7.btnPropriedadesClick(Sender: TObject);
begin
   frmF7_1:=tfrmF7_1.Create(self);
   With frmF7_1 do
   begin
       btnIncluir.Visible:=false;
       btnAlterar.Visible:=false;
       btnExcluir.Visible:=false;
       btnFechar.Top:=btnIncluir.Top;
       StatusBar1.Panels.Clear;
       dsCliente.DataSet:=dmF7.cdsPesqClientes2;
   end;

   frmF7_1.ShowModal;
   frmF7_1.Release;
   frmF7_1:=nil;
   dbgrid1.SetFocus;
end;

procedure TfrmF7.btnDuplicatasClick(Sender: TObject);
begin
   if not dmF7.cdsPesqClientes2.Eof then
   begin
      With dmF7 do
      begin
          cdsVendas.Close;
          cdsVendas.Params.ParamByName('EMPRESA').AsInteger := StrToInt(CodigoEmpresa1);
          cdsVendas.Params.ParamByName('CLIENTE').AsInteger := dmF7.cdsPesqClientes2CODIGO_CLIENTE.AsInteger;
          cdsVendas.Open;
      end;

      frmF6_2:=tfrmF6_2.Create(Self);
      frmF6_2.Cod_cliente := dmF7.cdsPesqClientes2CODIGO_CLIENTE.AsString;
      frmF6_2.ShowModal;
      frmF6_2.Release;
      frmF6_2:=nil;
   end;
end;

procedure TfrmF7.btnVeiculosClick(Sender: TObject);
begin
   frmF6_3:=tfrmF6_3.Create(self);
   With frmF6_3 do
   begin
       btnIncluir.Visible:=false;
       btnAlterar.Visible:=false;
       btnExcluir.Visible:=false;
       btnFechar.Top:=btnIncluir.Top;
       StatusBar1.Panels.Clear;
   end;

   frmF6_3.dsCliente.DataSet:=dmF7.cdsPesqClientes2;
   frmF6_3.ShowModal;
   frmF6_3.Release;
   frmF6_3:=nil;
end;

procedure TfrmF7.btnComprasClick(Sender: TObject);
begin
   if not dmF7.cdsPesqClientes2.Eof then
   begin
      frmF6_1:=tfrmF6_1.Create(Self);
      frmF6_1.Cod_cliente := dmF7.cdsPesqClientes2CODIGO_CLIENTE.AsString;
      frmF6_1.ShowModal;
      frmF6_1.Release;
      frmF6_1:=nil;

   end;
end;

procedure TfrmF7.btnObservacaoClick(Sender: TObject);
begin
   GroupBox2.Visible:=True;
   dbmemo1.SetFocus;
end;

procedure TfrmF7.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
