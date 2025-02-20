{
 SISTEMA              --> MultWin
 PROGRAMA             --> uRl0108
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> RAFAEL F. S. MOTA
 DATA DE CONCEPCAO    --> 28/02/2007
 FINALIDADE           --> Relatorio de Se��o
 COMENTARIO           -->
}

unit uRL0108;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTela_Imp, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TfrmRL0108 = class(TfrmTela_Imp)
    rdgOrdem: TRadioGroup;
    Label1: TLabel;
    cmbSecao: TDBLookupComboBox;
    dtsConsultaSecao: TDataSource;
    dtsRelatorio: TDataSource;
    dbpRelatorio: TppDBPipeline;
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
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    rptRelatorio2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    lblEmpresa2: TppLabel;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine5: TppLine;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine6: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    lblData: TppLabel;
    ppLabel15: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
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
  frmRL0108: TfrmRL0108;

implementation

uses uGlobal, udmRL0108;

{$R *.dfm}

procedure TfrmRL0108.FormShow(Sender: TObject);
var Sql1: String;
begin
  inherited;

   Sql1 := 'SELECT * FROM P_SECAO WHERE P_SECAO.COD_EMPRESA = ' + CodigoEmpresa1 + ' ORDER BY P_SECAO.DESCRICAO_SECAO';

   ExecutaSql(dmRL0108.cdsSecao, Sql1);
end;

procedure TfrmRL0108.btnImprimirClick(Sender: TObject);
var Sql1, Ordem1: String;
begin
  inherited;

   Ordem1 := '';

   if rdgOrdem.ItemIndex = 0 then
      Ordem1 := 'P_SECAO.DESCRICAO_SECAO'
   else if rdgOrdem.ItemIndex = 1 then
      Ordem1 := 'P_SECAO.CODIGO_SECAO';

   Sql1 := 'SELECT * FROM P_SECAO WHERE P_SECAO.COD_EMPRESA = ' + CodigoEmpresa1 + ' ';

   if cmbSecao.Text <> '' then
      Sql1 := 'SELECT CODIGO_GRUPO, DESCRICAO_GRUPO, COMISSAO_GRUPO, COMISSAO1_GRUPO, P_GRUPOS.COD_EMPRESA, CODIGO_SECAO_GRUPO, P_SECAO.CODIGO_SECAO, P_SECAO.DESCRICAO_SECAO FROM P_GRUPOS ' +
              'LEFT JOIN P_SECAO ON P_GRUPOS.CODIGO_SECAO_GRUPO = P_SECAO.CODIGO_SECAO WHERE P_GRUPOS.COD_EMPRESA = ' + CodigoEmpresa1 + ' AND P_GRUPOS.CODIGO_SECAO_GRUPO = ' + dmRL0108.cdsSecao.FieldByName('CODIGO_SECAO').AsString
   else
      Sql1 := Sql1 + 'ORDER BY ' + Ordem1;

   ExecutaSql(dmRL0108.cdsPesquisa1, Sql1);

   lblEmpresa.Caption  := Empresa1;
   lblEmpresa2.Caption := Empresa1;

   if cmbSecao.Text <> '' then
      rptRelatorio2.Print
   else
      rptRelatorio.Print;
end;

procedure TfrmRL0108.FormCreate(Sender: TObject);
begin
  inherited;
   dmRL0108 := TdmRL0108.Create(Self);
end;

procedure TfrmRL0108.lblDataGetText(Sender: TObject; var Text: String);
begin
  inherited;
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0108.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
