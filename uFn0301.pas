{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN003)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> Fl�vio Scariot
 DATA DE CONCEP��O    --> 14/05/2007
 FINALIDADE           --> Cadastro de Cheques de Clientes
 COMENTARIO           --> Foi adicionado um campo na tabela P_PREDATAD, CAMPO_BUSCA
                          se CAMPO_BUSCA = 'A' o cheque est� aberto se CAMPO_BUSCA = 'F'
                          o cheque foi baixado
 *******************************************************************************}

unit uFn0301;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ComCtrls,
  JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmFn0301 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnConsulta: TBitBtn;
    btnAltera: TBitBtn;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    btnSair: TBitBtn;
    btnFiltrar: TBitBtn;
    btnProcurar: TBitBtn;
    edtPesquisa: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Consulta_Cheque;
  public
    { Public declarations }
    Consultar1 : Boolean;
  end;

var
  frmFn0301: TfrmFn0301;

implementation

uses udmFn0301, uFn0301_01, StrUtils, uGlobal;

{$R *.dfm}


procedure TfrmFn0301.FormCreate(Sender: TObject);
begin
   dmFn0301 := TdmFn0301.Create(Self);

   Consulta_Cheque; // procedure

   Consultar1 := False;
end;

procedure TfrmFn0301.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if edtPesquisa.Text <> '' then
      begin
         edtPesquisa.Text := RemoveInteiro(edtPesquisa.Text);

         dmFn0301.cdsGrid.IndexFieldNames := 'EMITENTE';
         dmFn0301.cdsGrid.FindNearest([edtPesquisa.Text]);
         Panel2.Visible := False;
         DBGrid1.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmFn0301.Consulta_Cheque;
Var
  Sql1 : String;
begin
   Sql1 := 'select p.fornecedor, p.cod_venda, p.telefone, p.agencia, p.banco, '+
           'p.conta, p.cheque, p.valor, p.emitente, p.vencimento, p.devolucao1, '+
           'p.devolucao2, p.motivo1, p.motivo2, p.emissao, p.liquidacao, '+
           'p.observacao, p.con_baixa, p.cgc, c.nome_cliente, '+
           'p.dt_baixa, p.dt_lancto, p.codigo_cliente, p.campo_busca, '+
           'p.codigo_predatad '+
           'from P_PREDATAD p '+
           'left outer join e_cliente c on (p.codigo_cliente = c.codigo_cliente)';

   if (RadioGroup1.ItemIndex <> -1) and (RadioGroup1.ItemIndex <> 3) then
   begin
      if RadioGroup1.ItemIndex = 0 then
         Sql1 := Sql1 + 'Where p.campo_busca = ' + QuotedStr('A'); // cheque aberto

      if RadioGroup1.ItemIndex = 1 then
         Sql1 := Sql1 + 'Where p.campo_busca = ' + QuotedStr('F'); // cheque baixado
   end;

   dmFn0301.cdsGrid.Close;
   dmFn0301.cdsGrid.CommandText := Sql1;
   dmFn0301.cdsGrid.Open;
end;

procedure TfrmFn0301.RadioGroup1Click(Sender: TObject);
begin
   RadioGroup1.Visible := False;

   Consulta_Cheque; // procedure

   RadioGroup1.ItemIndex := -1;
end;

procedure TfrmFn0301.btnExcluirClick(Sender: TObject);
Var Cheque1 : String;
begin
   if not Verifica_acesso(286) then // permiss�o para excluir
      Exit;

   if Application.MessageBox(pChar('Exclui o cheque '+ dmFn0301.cdsGridCHEQUE.AsString + '?'), 'Confirm��o', MB_YESNO+MB_ICONQUESTION) = mrYes then
   begin
      Cheque1 := 'Excluiu Cheque N� ' + dmFn0301.cdsGridCHEQUE.AsString + '- Banco ' + dmFn0301.cdsGridBANCO.AsString + '- Emitente - ' + dmFn0301.cdsGridEMITENTE.AsString;

      GravaLogUser(self, Cheque1);

      dmFn0301.cdsGrid.Delete;

      dmFn0301.cdsGrid.ApplyUpdates(0);
   end;
end;


procedure TfrmFn0301.btnIncluirClick(Sender: TObject);
begin
   if not Verifica_acesso(284) then  // permiss�o para incluir
      Exit;

   frmFn0301_01 := TfrmFn0301_01.Create(Self);

   dmFn0301.cdsGrid.Append;

   frmFn0301_01.ShowModal;
   frmFn0301_01.Release;
   frmFn0301_01 := nil;
end;

procedure TfrmFn0301.btnAlteraClick(Sender: TObject);
begin
   if not Verifica_acesso(285) then // permiss�o para alterar
      Exit;

   frmFn0301_01 := TfrmFn0301_01.Create(Self);

   dmFn0301.cdsGrid.Edit;

   frmFn0301_01.ShowModal;
   frmFn0301_01.Release;
   frmFn0301_01 := nil;
end;

procedure TfrmFn0301.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn0301.btnConsultaClick(Sender: TObject);
begin
   Consultar1 := True;

   frmFn0301_01 := TfrmFn0301_01.Create(Self);

   frmFn0301_01.Panel1.Enabled := False;

   frmFn0301_01.ShowModal;

   frmFn0301_01.Panel1.Enabled := True;

   frmFn0301_01.Release;
   frmFn0301_01 := nil;

   Consultar1 := False;
end;

procedure TfrmFn0301.btnFiltrarClick(Sender: TObject);
begin
   RadioGroup1.Visible := True;
end;

procedure TfrmFn0301.btnProcurarClick(Sender: TObject);
begin
   Panel2.Visible := True;

   edtPesquisa.Clear;

   edtPesquisa.SetFocus;
end;

procedure TfrmFn0301.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
