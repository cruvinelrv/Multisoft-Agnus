unit uRl0119;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, ppDB, ppDBPipe,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppStrtch, ppMemo, ppRegion;

type
  TfrmRL0119 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    dtsRelatorio: TDataSource;
    dtsFornecedor: TDataSource;
    cmbFornecedor: TDBLookupComboBox;
    rdgTipo: TRadioGroup;
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
    ppDetailBand2: TppDetailBand;
    ppDBPipeline1: TppDBPipeline;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
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
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppRegion1: TppRegion;
    ppLabel22: TppLabel;
    ppLine3: TppLine;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLine4: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine5: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine6: TppLine;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBMemo1: TppDBMemo;
    lblData: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppLabel49GetText(Sender: TObject; var Text: String);
    procedure ppLabel50GetText(Sender: TObject; var Text: String);
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
  frmRL0119: TfrmRL0119;

implementation

uses  uGlobal, udmRL0119;

{$R *.dfm}

procedure TfrmRL0119.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0119.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0119.FormShow(Sender: TObject);
var Sql1: String;
begin
   Sql1 := 'SELECT CODIGO_CLIENTE, NOME_CLIENTE FROM E_CLIENTE ' +
           'WHERE TIPO_CLIENTE = 2 ORDER BY NOME_CLIENTE';

   ExecutaSql(dmRL0119.cdsPesquisa1, Sql1);
end;

procedure TfrmRL0119.btnImprimirClick(Sender: TObject);
var Sql1, Codigo1: String;
begin
   if cmbFornecedor.Text = '' then
   begin
      Application.MessageBox('Selecione o fornecedor','Atenção',MB_ICONWARNING);
      cmbFornecedor.SetFocus;
      Exit;
   end;


   Codigo1 := dmRL0119.cdsPesquisa1.FieldByName('CODIGO_CLIENTE').AsString;

   Sql1 := 'SELECT CODIGO_CLIENTE, NOME_CLIENTE, TIPO_CLIENTE, DATACADASTRO_CLIENTE, FANTASIA_CLIENTE, RAMO1_CLIENTE, CNPJ_CLIENTE, INSCRICAO_CLIENTE, ENDERECO_CLIENTE, BAIRRO_CLIENTE, TELEFONE_CLIENTE, CIDADE_CLIENTE, CELULAR_CLIENTE, ESTADO_CLIENTE, ' +
           'FAX_CLIENTE, PAIS_CLIENTE, DDG_CLIENTE, CEP_CLIENTE, EMAIL_CLIENTE, CX_POSTAL_CLIENTE, HOMEPAGE_CLIENTE, CONTATO_CLIENTE, CONTATO1_FONE__CLIENTE, CONTATO2_CLIENTE, CONTATO2_FONE_CLIENTE, CONTATO3_CLIENTE, CONTATO3_FONE_CLIENTE, REPR_NOME_CLIENTE, ' +
           'REPR_FONE_CLIENTE, REPR_CELULAR_CLIENTE, REPR_FAX_CLIENTE, BANCO1_CLIENTE, AGENC1_CLIENTE, FONEB1_CLIENTE, CONTA1_CLIENTE, CLDSD1_CLIENTE, BANCO2_CLIENTE, AGENC2_CLIENTE, FONEB2_CLIENTE, CONTA2_CLIENTE, CLDSD2_CLIENTE, OBSEVACAO_CLIENTE FROM E_CLIENTE ' +
           'WHERE TIPO_CLIENTE = 2 AND CODIGO_CLIENTE = ' + Codigo1;

   ExecutaSql(dmRL0119.cdsPesquisa2, Sql1);

   lblEmpresa.Caption := Empresa1;

   if rdgTipo.ItemIndex = 0 then
      ppRegion1.Visible := False
   else if rdgTipo.ItemIndex = 1 then
      ppRegion1.Visible := True;      

   rptRelatorio.Print;
end;

procedure TfrmRL0119.ppLabel49GetText(Sender: TObject; var Text: String);
var Sql1: String;
begin
   if dmRL0119.cdsPesquisa2.FieldByName('RAMO1_CLIENTE').AsString = '' then
   begin
      Text := '';
      Exit;
   end;


   Sql1 := 'SELECT * FROM E_ATIVIDADE WHERE CODIGO_ATIVIDADE = ' + dmRL0119.cdsPesquisa2.FieldByName('RAMO1_CLIENTE').AsString;

   ExecutaSql(dmRL0119.cdsPesquisa3, Sql1);

   if dmRL0119.cdsPesquisa3.RecordCount > 0 then
      Text := dmRL0119.cdsPesquisa3.FieldByName('CODIGO_ATIVIDADE').AsString + '-' + dmRL0119.cdsPesquisa3.FieldByName('DESCRICAO_ATIVIDADE').AsString
   else
      Text := dmRL0119.cdsPesquisa2.FieldByName('RAMO1_CLIENTE').AsString +  '-Não Localizado';
end;

procedure TfrmRL0119.ppLabel50GetText(Sender: TObject; var Text: String);
var Sql1: String;
begin
   if dmRL0119.cdsPesquisa2.FieldByName('CIDADE_CLIENTE').AsString = '' then
   begin
      Text := '';
      Exit;
   end;


   Sql1 := 'SELECT CODIGO_CIDADE, DESCRICAO_CIDADE FROM E_CIDADE WHERE CODIGO_CIDADE = ' + dmRL0119.cdsPesquisa2.FieldByName('CIDADE_CLIENTE').AsString;

   ExecutaSql(dmRL0119.cdsPesquisa3, Sql1);

   if dmRL0119.cdsPesquisa3.RecordCount > 0 then
      Text := dmRL0119.cdsPesquisa3.FieldByName('DESCRICAO_CIDADE').AsString
   else
      Text := 'Não Localizado';
end;

procedure TfrmRL0119.FormCreate(Sender: TObject);
begin
   dmRL0119 := TdmRL0119.Create(Self);
end;

procedure TfrmRL0119.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0119.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
