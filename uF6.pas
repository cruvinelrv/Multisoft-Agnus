 {
  ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
  PROGRAMADOR          --> Evaldo Barcelos Palma
  ==============================================================================
  SISTEMA              --> MultiSoft
  Formulario           --> frm0314
  UNIT                 --> uLoja0314
  DATA DE CONCEPCAO    --> 21/09/2005
  FINALIDADE           --> Listagem de conta corrente / Caixa
  COMENTARIO           -->
  ==============================================================================
  }

unit uF6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DBActns, ActnList, DBCtrls, JvExDBGrids, JvDBGrid;

type
  TfrmF6 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    dsFornecedores: TDataSource;
    StatusBar1: TStatusBar;
    edtPesquisa: TEdit;
    Label1: TLabel;
    rdgOrdem: TRadioGroup;
    GroupBox1: TGroupBox;
    cobFiltro: TComboBox;
    btnFiltro: TBitBtn;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    BitBtn1: TBitBtn;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure rdgOrdemClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaEnter(Sender: TObject);
    procedure cobFiltroSelect(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure GroupBox2Exit(Sender: TObject);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    Sql1 : String;

  end;

var
  frmF6: TfrmF6;
  mOpcaoFiltro1: String;

implementation

uses uDmPrincipal,  
  uF6_1, uF6_2, uF6_3, uFn0101, uGlobal, uFn0102, udmF6;

{$R *.dfm}

procedure TfrmF6.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=121 then
    begin
        dbgrid1.Height     :=350;
        edtPesquisa.Top    :=dbgrid1.Height+10;
        edtPesquisa.Visible:=true;
        edtPesquisa.SetFocus;
        exit;

    end ;
   if (Shift = [ssCtrl]) and (Key = 46) Then
   KEY := 0;

   if Key = 13 then
   begin
      frmF6.Tag := 1;
      Close;
   end;
end;
procedure TfrmF6.FormCreate(Sender: TObject);
begin
   dmF6 := TdmF6.Create(Self);

   Sql1 := 'SELECT FIRST 100 SKIP 1 C. *, C1.DESCRICAO_CIDADE FROM E_CLIENTE C '+
           'LEFT OUTER JOIN E_CIDADE C1 ON (C.CIDADE_CLIENTE=C1.CODIGO_CIDADE) '+
           'WHERE C.TIPO_CLIENTE=2 ';
   with dmF6 do
   begin
      cdsFornecedor.Close;
      cdsFornecedor.CommandText := Sql1;
      cdsFornecedor.Open;
   end;
end;

procedure TfrmF6.BitBtn4Click(Sender: TObject);
begin
    close;
end;

procedure TfrmF6.edtPesquisaExit(Sender: TObject);
begin
    Self.KeyPreview    := True;
    DBGrid1.Height     := 383;
    edtPesquisa.Top    := DBGrid1.Height + 10;
    edtPesquisa.Visible:= False;

end;

procedure TfrmF6.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
    if key=#13 then
    begin
        dmF6.cdsFornecedor.IndexFieldNames := 'NOME_CLIENTE';
        dmF6.cdsFornecedor.FindNearest([edtPesquisa.Text]);
        dbgrid1.SetFocus ;

    end ;

end;

procedure TfrmF6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if frmF6.Tag = 0 then
   begin
      dmF6.cdsPesquisa4.Close;
      dmF6.cdsFornecedor.Close;
   end;

end;

procedure TfrmF6.rdgOrdemClick(Sender: TObject);
begin
    if rdgOrdem.ItemIndex=0 then
       dmF6.cdsFornecedor.IndexFieldNames:='CODIGO_CLIENTE';

    if rdgOrdem.ItemIndex=1 then
       dmF6.cdsFornecedor.IndexFieldNames:='NOME_CLIENTE';

    if rdgOrdem.ItemIndex=2 then
       dmF6.cdsFornecedor.IndexFieldNames:='FANTASIA_CLIENTE';

    if rdgOrdem.ItemIndex=3 then
       dmF6.cdsFornecedor.IndexFieldNames:='CNPJ_CLIENTE';


    dbgrid1.SetFocus;

end;

procedure TfrmF6.DBGrid1TitleClick(Column: TColumn);
begin
    dmF6.cdsFornecedor.IndexFieldNames:=column.FieldName;

end;

procedure TfrmF6.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=67 then //Compras
    begin
        if not dmF6.cdsFornecedor.Eof then
        begin
           frmF6_1:=tfrmF6_1.Create(Self);
           frmF6_1.ShowModal;
           frmF6_1.Release;
           frmF6_1:=nil;

        end;

    end;

    // Duplicatas
    if key=68 then
    begin
        if not dmF6.cdsFornecedor.IsEmpty then
        begin
           With dmF6 do
           begin
               cdsVendas.Close;
               cdsVendas.Params.ParamByName('EMPRESA').AsInteger := StrToInt(CodigoEmpresa1);
               cdsVendas.Params.ParamByName('CLIENTE').AsInteger := dmF6.cdsPesqClientes2CODIGO_CLIENTE.AsInteger;
               cdsVendas.Open;
           end;

           frmF6_2:=tfrmF6_2.Create(Self);
           //frmF6_2.Cod_cliente := dmF6.cdsFornecedorCODIGO_CLIENTE.AsString;
           frmF6_2.ShowModal;
           frmF6_2.Release;
           frmF6_2:=nil;
        end;
    end;

    if key=86 then
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
       frmF6_3.dsCliente.DataSet:=dmF6.cdsFornecedor;
       frmF6_3.ShowModal;
       frmF6_3.Release;
       frmF6_3:=nil;

    end;
    if key=79 then  // Observacao
    begin
       GroupBox2.Visible:=True;
       dbmemo1.SetFocus;

    end;

    if Key = 27 then
       Close;

    if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmF6.edtPesquisaEnter(Sender: TObject);
begin
    self.KeyPreview:=false;

end;

procedure TfrmF6.cobFiltroSelect(Sender: TObject);
begin
    case cobFiltro.ItemIndex of
        0: mOpcaoFiltro1:='E_CLIENTE.NOME_CLIENTE';
        1: mOpcaoFiltro1:='E_CLIENTE.FANTASIA_CLIENTE';
        2: mOpcaoFiltro1:='E_CLIENTE.ENDERECO_CLIENTE';
        3: mOpcaoFiltro1:='E_CLIENTE.BAIRRO_CLIENTE';
        4: mOpcaoFiltro1:='E_CIDADE.DESCRICAO_CIDADE';
        5: mOpcaoFiltro1:='E_CLIENTE.ESTADO_CLIENTE';
        6: mOpcaoFiltro1:='E_CLIENTE.TELEFONE_CLIENTE';
        7: mOpcaoFiltro1:='E_CLIENTE.CNPJ_CLIENTE';
        8: mOpcaoFiltro1:='E_CLIENTE.NOME_CLIENTE';

    end;
end;

procedure TfrmF6.btnFiltroClick(Sender: TObject);
var
mFiltro1: string;
begin
  cobFiltroSelect(sender);

  if cobFiltro.ItemIndex<8 then
     mFiltro1:= InputBox('Opção do Filtro',cobFiltro.Text, '')
  else
     mFiltro1:='%';

  if mFiltro1='' then
  begin
       dbgrid1.SetFocus;

  end else
  begin
      With dmF6 do
      begin
          qryPesquisa4.SQL.Clear;
          cdsPesquisa4.close;
          Sql1 := ' SELECT E_CLIENTE.CODIGO_CLIENTE, E_CLIENTE.NOME_CLIENTE,E_CLIENTE.FANTASIA_CLIENTE,'+
                  ' E_CLIENTE.TELEFONE_CLIENTE,E_CLIENTE.CNPJ_CLIENTE,E_CLIENTE.fax_cliente,E_CLIENTE.ENDERECO_CLIENTE,'+
                  ' E_CLIENTE.BAIRRO_CLIENTE,E_CLIENTE.OBSEVACAO_CLIENTE,E_CIDADE.descricao_cidade,E_CLIENTE.estado_cliente,E_CLIENTE.credito_cliente,'+
                  ' E_CLIENTE.utilizado_cliente,(E_CLIENTE.credito_cliente-E_CLIENTE.utilizado_cliente) AS SALDO '+
                  ' FROM E_CLIENTE '+
                  ' LEFT OUTER JOIN E_CIDADE ON (E_CLIENTE.cidade_cliente=E_CIDADE.codigo_cidade) '+
                  ' WHERE E_CLIENTE.TIPO_CLIENTE=2 AND '+mOpcaoFiltro1 +' LIKE '+ QuotedStr(UpperCase(mFiltro1)+'%') +' ORDER BY E_CLIENTE.NOME_CLIENTE';
          cdsPesquisa4.CommandText := Sql1;
          cdsPesquisa4.Open;

          cdsFornecedor.Close;
          cdsFornecedor.CommandText := Sql1;
          cdsFornecedor.Open;

          //
          {qryPesqClientes.SQL.Clear;
          qryPesqClientes.SQL.Add(' SELECT E_CLIENTE.CODIGO_CLIENTE, E_CLIENTE.NOME_CLIENTE,E_CLIENTE.FANTASIA_CLIENTE,' +
                                  ' E_CLIENTE.TELEFONE_CLIENTE,E_CLIENTE.CNPJ_CLIENTE,E_CLIENTE.fax_cliente,' +
                                  ' E_CLIENTE.ENDERECO_CLIENTE,E_CLIENTE.BAIRRO_CLIENTE,E_CLIENTE.OBSEVACAO_CLIENTE,E_CIDADE.descricao_cidade,' +
                                  ' E_CLIENTE.estado_cliente,E_CLIENTE.credito_cliente,E_CLIENTE.utilizado_cliente,' +
                                  ' (E_CLIENTE.credito_cliente-E_CLIENTE.utilizado_cliente) AS SALDO FROM E_CLIENTE ' +
                                  ' INNER JOIN E_CIDADE ON E_CLIENTE.cidade_cliente=E_CIDADE.codigo_cidade ' +
                                  ' WHERE E_CLIENTE.TIPO_CLIENTE=:TIPO ORDER BY E_CLIENTE.NOME_CLIENTE ');}

      end;

  end;

end;

procedure TfrmF6.BitBtn1Click(Sender: TObject);
begin
    GroupBox2.Visible:=false;
end;

procedure TfrmF6.GroupBox2Exit(Sender: TObject);
begin
    GroupBox2.Visible:=false;
end;

procedure TfrmF6.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then
    begin
        GroupBox2.Visible:=false;
        dbgrid1.SetFocus;

    end;

end;

procedure TfrmF6.DBGrid1DblClick(Sender: TObject);
begin
   frmF6.Tag := 1;
   Close;
end;

end.
