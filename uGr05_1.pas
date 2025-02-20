{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> EST001
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> EVALDO BARCELOS PALMA
 DATA DE CONCEP��O    --> 02/05/2006
 FINALIDADE           --> Cadastro de Aumento Futoro de precos do produto
 COMENTARIO           -->
 *******************************************************************************}

unit uGr05_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DBActns, StdCtrls, Buttons, DB, Mask, DBCtrls,
  ExtCtrls, ComCtrls, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  DBXpress, SqlExpr;

type
  TfrmGr05_1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    edtProduto: TEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtAtacado: TJvDBCalcEdit;
    edtPromocao: TJvDBCalcEdit;
    edtDataAumento: TJvDateEdit;
    Label14: TLabel;
    DataSource2: TDataSource;
    SpeedButton1: TSpeedButton;
    edtTabela: TJvDBCalcEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProdutoExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }

    Function MostraDados: Boolean;
  public
    { Public declarations }

  end;

var
  frmGr05_1: TfrmGr05_1;

implementation

uses uDmPrincipal, uGlobal, udmGr05, uConsulta;



{$R *.dfm}

procedure TfrmGr05_1.BitBtn2Click(Sender: TObject);
begin
    close;
end;
procedure TfrmGr05_1.BitBtn3Click(Sender: TObject);
begin
   if dmGr05.cdsSecao.State in[DsEdit,DsInsert] then
   begin
       dmGr05.cdsSecao.Cancel;

   end;
   Close;

end;

procedure TfrmGr05_1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin

      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

  end;

end;

procedure TfrmGr05_1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    Teclas(key,Self);

    if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmGr05_1.edtProdutoExit(Sender: TObject);
begin
   if BitBtn3.Focused then
      Exit;

   if edtProduto.Text<>'' then
      MostraDados;

end;

procedure TfrmGr05_1.BitBtn1Click(Sender: TObject);
begin

    if (edtTabela.Value=0) or (edtTabela.Value<edtPromocao.Value) or
       (edtTabela.Value<edtAtacado.Value) then
    begin
        Application.MessageBox('Valor Inv�lido','Informa��o',MB_ICONINFORMATION);
        edtTabela.SetFocus;
        exit;

    end ;

    if (edtTabela.Value<edtAtacado.Value)  then
    begin
        Application.MessageBox('Valor Inv�lido','Informa��o',MB_ICONINFORMATION);
        edtPromocao.SetFocus;
        exit;

    end ;

    if dmGr05.cdsFuturo.State=DsInsert then
    begin
       dmGr05.cdsFuturoCOD_EMPRESA.AsInteger:=StrToInt(CodigoEmpresa1);
       dmGr05.cdsFuturoPRODUTO_FUTURO.AsInteger:=StrToInt(edtProduto.Text);

    end ;
    dmGr05.cdsFuturoDATA_FUTURO.AsDateTime:=edtDataAumento.Date;
    dmGr05.cdsFuturo.Post;
    dmGr05.cdsFuturo.ApplyUpdates(0);
    close;

end;

Function TfrmGr05_1.MostraDados: Boolean;
begin

    Result:=  False;
    With dmGr05 do
       begin
           qryProdutos.Close;
           qryProdutos.SQL.Clear;
           qryProdutos.SQL.Add('SELECT * FROM P_PRODUTOS WHERE CLASSE_PRODUTO=1 AND COD_EMPRESA=:EMPRESA AND CODIGO_PRODUTO=:PRODUTO');
           qryProdutos.ParamByName('EMPRESA').AsInteger:=StrToInt(CodigoEmpresa1);
           qryProdutos.ParamByName('PRODUTO').AsInteger:=StrToInt(edtProduto.Text);
           qryProdutos.Open;
           if qryProdutos.IsEmpty then
           begin
               qryProdutos.SQL.Clear;
               qryProdutos.SQL.Add('SELECT * FROM P_PRODUTOS WHERE CLASSE_PRODUTO=1 AND COD_EMPRESA=:EMPRESA ORDER BY DESCRICAO_PRODUTO');
               Application.MessageBox('C�digo de produto n�o encontrado','Informa��o',MB_ICONINFORMATION);
               edtProduto.SetFocus;
               exit;

           end else
           begin

             dmGr05.qryPesqClientes.Close;
             dmGr05.qryPesqClientes.SQL.Clear;
             dmGr05.qryPesqClientes.FieldDefs.Clear;
             dmGr05.qryPesqClientes.Fields.Clear;
             dmGr05.qryPesqClientes.SQL.Add('SELECT E_CLIENTE.CODIGO_CLIENTE, E_CLIENTE.NOME_CLIENTE,E_CLIENTE.FANTASIA_CLIENTE,');
             dmGr05.qryPesqClientes.SQL.Add('E_CLIENTE.TELEFONE_CLIENTE,E_CLIENTE.CNPJ_CLIENTE,E_CLIENTE.fax_cliente,E_CLIENTE.ENDERECO_CLIENTE,');
             dmGr05.qryPesqClientes.SQL.Add('E_CLIENTE.BAIRRO_CLIENTE,E_CLIENTE.OBSEVACAO_CLIENTE, E_CIDADE.descricao_cidade,E_CLIENTE.estado_cliente,E_CLIENTE.credito_cliente,E_CLIENTE.utilizado_cliente,');
             dmGr05.qryPesqClientes.SQL.Add('(E_CLIENTE.credito_cliente-E_CLIENTE.utilizado_cliente) AS SALDO FROM E_CLIENTE');
             dmGr05.qryPesqClientes.SQL.Add('INNER JOIN E_CIDADE ON E_CLIENTE.cidade_cliente=E_CIDADE.codigo_cidade');
             dmGr05.qryPesqClientes.SQL.Add('WHERE E_CLIENTE.TIPO_CLIENTE=:TIPO AND E_CLIENTE.CODIGO_CLIENTE=:FORMECEDOR ORDER BY E_CLIENTE.NOME_CLIENTE');
             dmGr05.qryPesqClientes.ParamByName('TIPO').AsInteger:=2;
             dmGr05.qryPesqClientes.ParamByName('FORMECEDOR').AsInteger:=qryProdutosFABRICA_PRODUTO.AsInteger;
             dmGr05.qryPesqClientes.Open;

           end ;
           dmPrincipal.sdsTemporario.Close;
           dmPrincipal.sdsTemporario.CommandText:='SELECT * FROM P_FUTURO WHERE P_FUTURO.PRODUTO_FUTURO='+edtProduto.text+' and COD_EMPRESA='+CodigoEmpresa1;
           dmPrincipal.sdsTemporario.ExecSQL(true);
           dmPrincipal.sdsTemporario.Open;
           if (not ( dmPrincipal.sdsTemporario.Eof )) and (cdsFuturo.State=dsInsert) then
           begin
              Application.MessageBox(pchar('Aumento para o produto ' +edtProduto.text+' j� cadastrado'),'Informa��o',MB_ICONINFORMATION);
              edtProduto.SetFocus;
              exit;

           end ;

    end ;
    
    result := true;

end ;

procedure TfrmGr05_1.FormCreate(Sender: TObject);
begin
   if dmGr05.cdsFuturo.State=dsEdit then
   begin
      edtProduto.Text:=dmGr05.cdsFuturoPRODUTO_FUTURO.AsString;
      MostraDados;
      edtProduto.Enabled:=false;
      SpeedButton1.Enabled := False;
   end else
   begin
      edtProduto.Enabled:=True;
      SpeedButton1.Enabled := True;

   end ;

end;

procedure TfrmGr05_1.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    dmGr05.qryProdutos.Close;
    dmGr05.qryProdutos.SQL.Clear;
    dmGr05.qryProdutos.SQL.Add('SELECT * FROM P_PRODUTOS WHERE CLASSE_PRODUTO=:CLASSE AND COD_EMPRESA=:EMPRESA  ORDER BY DESCRICAO_PRODUTO');
    //
    dmGr05.qryPesqClientes.Close;
    dmGr05.qryPesqClientes.SQL.Clear;
    dmGr05.qryPesqClientes.SQL.Add('SELECT E_CLIENTE.CODIGO_CLIENTE, E_CLIENTE.NOME_CLIENTE,E_CLIENTE.FANTASIA_CLIENTE,');
    dmGr05.qryPesqClientes.SQL.Add('E_CLIENTE.TELEFONE_CLIENTE,E_CLIENTE.CNPJ_CLIENTE,E_CLIENTE.fax_cliente,E_CLIENTE.ENDERECO_CLIENTE,');
    dmGr05.qryPesqClientes.SQL.Add('E_CLIENTE.BAIRRO_CLIENTE,E_CLIENTE.OBSEVACAO_CLIENTE, E_CIDADE.descricao_cidade,E_CLIENTE.estado_cliente,E_CLIENTE.credito_cliente,E_CLIENTE.utilizado_cliente,');
    dmGr05.qryPesqClientes.SQL.Add('(E_CLIENTE.credito_cliente-E_CLIENTE.utilizado_cliente) AS SALDO,p_contrato.ultanuidade_contrato   FROM E_CLIENTE');
    dmGr05.qryPesqClientes.SQL.Add('INNER JOIN E_CIDADE ON E_CLIENTE.cidade_cliente=E_CIDADE.codigo_cidade');
    dmGr05.qryPesqClientes.SQL.Add('INNER JOIN P_CONTRATO ON E_CLIENTE.codigo_cliente=p_contrato.cliente_contrato AND (P_CONTRATO.cod_empresa=:EMPRESA)');
    dmGr05.qryPesqClientes.SQL.Add('WHERE E_CLIENTE.TIPO_CLIENTE=:TIPO  ORDER BY E_CLIENTE.NOME_CLIENTE');

end;

procedure TfrmGr05_1.SpeedButton1Click(Sender: TObject);
begin
   edtProduto.SetFocus;

   ConsultaProduto(edtProduto);
end;

end.
