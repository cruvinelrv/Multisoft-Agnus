{
 SISTEMA              --> MultWin
 PROGRAMA             --> uRl0105
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> RAFAEL F. S. MOTA
 DATA DE CONCEPCAO    --> 24/02/2007
 FINALIDADE           --> Relatorio de Cliente
 COMENTARIO           --> Tag -> 0 -> Relatorio de clientes
                                 1 -> Relatorio de fornecedor
                                 2 -> Relatorio de conta corrente
                                 3 -> Relatorio de portador
}

unit uRL0105;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, DB, ppDB,
  ppDBPipe, Grids, DBGrids;

type
  TfrmRL0105 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    rptRelatorio: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa: TppLabel;
    ppLine1: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppLine2: TppLine;
    ppDetailBand2: TppDetailBand;
    lblTitulo: TLabel;
    ppDBPipeline1: TppDBPipeline;
    dtsRelatorio: TDataSource;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    lblDescricao1: TppDBText;
    lblCodigo1: TppDBText;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    rptRelConta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    lblEmpConta: TppLabel;
    ppLine3: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine4: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel22: TppLabel;
    rptRelPor: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    lblEmpPor: TppLabel;
    ppLine5: TppLine;
    ppLabel26: TppLabel;
    lblParamPor: TppLabel;
    ppLabel28: TppLabel;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel25: TppLabel;
    lblData: TppLabel;
    ppLabel27: TppLabel;
    ppLabel32: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppLabel22GetText(Sender: TObject; var Text: String);
    procedure ppLabel25GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0105: TfrmRL0105;

implementation

uses  uGlobal, udmRL0105;

{$R *.dfm}

procedure TfrmRL0105.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0105.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0105.btnImprimirClick(Sender: TObject);
begin
   if Tag = 2 then
   begin
      lblEmpConta.Caption := Empresa1;

      rptRelConta.Print
   end
   else if Tag = 3 then
   begin
      lblEmpPor.Caption := Empresa1;

      rptRelPor.Print
   end
   else
   begin
      lblEmpresa.Caption := Empresa1;
      lblNomeRel.Caption := frmRL0105.Caption;

      rptRelatorio.Print;
   end;
end;

procedure TfrmRL0105.FormShow(Sender: TObject);
var Sql1: String;
begin
   if frmRL0105.Tag = 0 then // Relatorio de clientes
   begin
      frmRL0105.Caption := 'Relat�rio de Cadastros: Cliente Alfa x C�digo';
      lblTitulo.Caption := frmRL0105.Caption;

      Sql1 := 'SELECT CODIGO_CLIENTE, NOME_CLIENTE FROM E_CLIENTE WHERE E_CLIENTE.TIPO_CLIENTE = 0 ORDER BY E_CLIENTE.NOME_CLIENTE';
   end
   else if frmRL0105.Tag = 1 then // Relatorio de fornecedor
   begin
      frmRL0105.Caption := 'Relat�rio de Cadastros: Fornecedor Alfa x C�digo';
      lblTitulo.Caption := frmRL0105.Caption;

      Sql1 := 'SELECT CODIGO_CLIENTE, NOME_CLIENTE FROM E_CLIENTE WHERE E_CLIENTE.TIPO_CLIENTE = 2 ORDER BY E_CLIENTE.NOME_CLIENTE';
   end
   else if frmRL0105.Tag = 2 then // Relatorio de conta corrente
   begin
      frmRL0105.Caption := 'Relat�rio de Cadastros: Conta Corrente';
      lblTitulo.Caption := frmRL0105.Caption;

      Sql1 := 'SELECT CODIGO_BANCO, DESCRICAO_BANCO, AGENCIA_BANCO, DIGITO1_BANCO, CONTA_BANCO, DIGITO2_BANCO, CONVENIO_BANCO, CENTRAL_BANCO, VINCULADO_BANCO, CODIGO_PORTADOR_BANCO, COD_EMPRESA, LIMITE_BANCO, E_PORTADOR.DESCRICAO_PORTADOR FROM P_BANCO ' +
              'LEFT JOIN E_PORTADOR ON P_BANCO.CODIGO_BANCO = E_PORTADOR.CODIGO_PORTADOR ' +
              'WHERE P_BANCO.COD_EMPRESA = ' + CodigoEmpresa1 + ' ' +
              'ORDER BY P_BANCO.CODIGO_BANCO ';
   end
   else if frmRL0105.Tag = 3 then // Relatorio de portador
   begin
      frmRL0105.Caption := 'Relat�rio de Portador';
      lblTitulo.Caption := frmRL0105.Caption;

      Sql1 := 'SELECT CODIGO_PORTADOR, DESCRICAO_PORTADOR, TIPO_PORTADOR FROM E_PORTADOR ORDER BY E_PORTADOR.CODIGO_PORTADOR';
   end;


   ExecutaSql(dmRL0105.cdsPesquisa1, Sql1);
end;

procedure TfrmRL0105.ppLabel22GetText(Sender: TObject; var Text: String);
begin
   Text := Trim(dmRL0105.cdsPesquisa1.FieldByName('CODIGO_BANCO').AsString) + '-' + dmRL0105.cdsPesquisa1.FieldByName('DESCRICAO_PORTADOR').AsString;
end;

procedure TfrmRL0105.ppLabel25GetText(Sender: TObject; var Text: String);
begin
   if dmRL0105.cdsPesquisa1.FieldByName('TIPO_PORTADOR').AsString = 'B' then
      Text := 'Banco'
   else if dmRL0105.cdsPesquisa1.FieldByName('TIPO_PORTADOR').AsString = 'C' then
      Text := 'Carteira'
   else if dmRL0105.cdsPesquisa1.FieldByName('TIPO_PORTADOR').AsString = 'J' then
      Text := 'Jur�dico';
end;

procedure TfrmRL0105.FormCreate(Sender: TObject);
begin
   dmRL0105 := TdmRL0105.Create(Self);
end;

procedure TfrmRL0105.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0105.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
