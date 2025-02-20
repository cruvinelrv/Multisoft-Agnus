unit uGr01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, DBCtrls, Buttons, JvProgressBar, JvXPProgressBar, DB, Grids,
  DBGrids;

type
  TfrmGr01 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    rdgTipo: TRadioGroup;
    Label1: TLabel;
    cobGrupo: TDBLookupComboBox;
    edtPercentual: TJvCalcEdit;
    Label2: TLabel;
    btnConfirma: TBitBtn;
    btnFechar: TBitBtn;
    cobFabrica: TDBLookupComboBox;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    rdgTipoPrecos: TRadioGroup;
    dsPesqFabricante: TDataSource;
    procedure rdgTipoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGr01: TfrmGr01;
  mNormal: String;
  mAtacado: String;
  mPromocao: String;
  mCusto: String;

implementation

uses uGlobal, uDmPrincipal, udmGr01;

{$R *.dfm}

procedure TfrmGr01.rdgTipoClick(Sender: TObject);
begin
    if rdgTipo.ItemIndex=0 then
    begin
       label1.Caption:=rdgTipo.Items.Strings[0];
       cobFabrica.Visible:=true;
       cobGrupo.Visible:=false;
       cobFabrica.TabOrder:=1;

    end ;

    if rdgTipo.ItemIndex=1 then
    begin
       label1.Caption:=rdgTipo.Items.Strings[1];
       cobFabrica.Visible:=false;
       cobGrupo.Visible:=true;
       cobGrupo.TabOrder:=1;
    end ;

end;

procedure TfrmGr01.btnFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmGr01.btnConfirmaClick(Sender: TObject);
Var
i: Integer;
mValorAnt  : Real;
mValorAtual: Real;
mSQL       : String;
begin

   if mNormal<>'' then
   begin
       mSQL:=mSQL + mNormal+''

   end ;

   case rdgTipoPrecos.ItemIndex of
      0:  mSQL := 'UPDATE p_produtos SET p_produtos.preco_ant_produto=p_produtos.PRECOUNIT_PRODUTO,p_produtos.PRECOUNIT_PRODUTO=p_produtos.PRECOUNIT_PRODUTO*' + TrocaSepar((FloatToStr(edtPercentual.Value/100))) + '+p_produtos.PRECOUNIT_PRODUTO ';
      1:  mSQL := 'UPDATE p_produtos SET p_produtos.vlratacado_produto=vlratacado_produto*' + TrocaSepar((FloatToStr(edtPercentual.Value/100)))            + '+p_produtos.vlratacado_produto';
      2:  mSQL := 'UPDATE p_produtos SET p_produtos.promocao_produto=p_produtos.promocao_produto*' + TrocaSepar((FloatToStr(edtPercentual.Value/100)))     + '+p_produtos.promocao_produto ';
      3:  mSQL := 'UPDATE p_produtos SET p_produtos.preco_custo_produto=p_produtos.preco_custo_produto*'+TrocaSepar((FloatToStr(edtPercentual.Value/100))) + '+p_produtos.preco_custo_produto ';

   end ;

   mSQL:=mSQL+' where p_produtos.cod_empresa='+CodigoEmpresa1+' and p_produtos.classe_produto=1';
   Case rdgTipo.ItemIndex of
      0:
       begin
          if dmGr01.cdsPesqClienteCODIGO_CLIENTE.AsString<>'' then
             mSQL := mSQL + ' AND FABRICA_PRODUTO=' + dmGr01.cdsPesqClienteCODIGO_CLIENTE.AsString;

       end;
      1:
        begin
            if dmGr01.cdsGrupoProdutoCODIGO_GRUPO.AsString<>'' then
               mSQL := mSQL + ' AND GRUPO_PRODUTO=' + dmGr01.cdsGrupoProdutoCODIGO_GRUPO.AsString;

        end ;

   end;

   dmPrincipal.sdsTemporario.Close;
   dmPrincipal.sdsTemporario.CommandText:=mSQL;
   dmPrincipal.sdsTemporario.ExecSQL(True);

   //grava na tabela TAB01

   dmGr01.cdsTabela01.Open;
   dmGr01.cdsTabela01.Insert;
   dmGr01.cdsTabela01COD_EMPRESA.AsInteger:=StrToInt(CodigoEmpresa1);
   dmGr01.cdsTabela01DATA_TABELA01.AsDateTime := DataSystem1;

   if rdgTipo.ItemIndex=0 then  // Verifica se o tipo e por fabricante
      dmGr01.cdsTabela01GRUPO_TABELA01.AsInteger := dmGr01.cdsPesqClienteCODIGO_CLIENTE.AsInteger;

   if rdgTipo.ItemIndex=1 then // Verifica se o tipo e por grupo
      dmGr01.cdsTabela01GRUPO_TABELA01.AsInteger := dmGr01.cdsGrupoProdutoCODIGO_GRUPO.AsInteger;

   dmGr01.cdsTabela01PERCENTUAL_TABELA01.AsCurrency := edtPercentual.Value;
   dmGr01.cdsTabela01TIPO_TABELA01.AsString         := IntToStr(rdgTipo.ItemIndex);
   dmGr01.cdsTabela01PRECO_TABELA01.AsString        := IntToStr(rdgTipoPrecos.ItemIndex);
   dmGr01.cdsTabela01USUARIO_TABELA01.AsString      := Usuario1;

   dmGr01.cdsTabela01.Post;
   dmGr01.cdsTabela01.ApplyUpdates(0);

   Application.MessageBox('Aumento de Pre�os realizado','Informa��o',MB_ICONINFORMATION);
end;

procedure TfrmGr01.FormCreate(Sender: TObject);
begin
   dmGr01 := TdmGr01.Create(Self);

   dmGr01.cdsGrupoProduto.Close;
   dmGr01.cdsGrupoProduto.Open;

   dmGr01.cdsGrupoProduto.IndexFieldNames := 'DESCRICAO_GRUPO';

   dmGr01.cdsPesqCliente.Close;
   dmGr01.qryPesqClientes.Close;
   dmGr01.qryPesqClientes.ParamByName('TIPO').AsInteger:=2;
   dmGr01.qryPesqClientes.Open;
   dmGr01.cdsPesqCliente.Open;

   label1.Caption     := rdgTipo.Items.Strings[1];
   cobFabrica.Visible := false;
   cobGrupo.Visible   := true;
   cobGrupo.TabOrder  := 1;
end;

procedure TfrmGr01.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
       key:=#0;
       Perform(Wm_NextDlgCtl,0,0);

    end;

end;

procedure TfrmGr01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
