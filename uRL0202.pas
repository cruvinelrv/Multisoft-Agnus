unit uRL0202;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ppBands, ppCtrls, ppPrnabl,
  ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmRL0202 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    rdgSequencia: TRadioGroup;
    rptRel_Clientes: TppReport;
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
    lblData: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    Label1: TLabel;
    edtDias: TJvValidateEdit;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Nome_Relatorio;
  public
    { Public declarations }
    Nome_Rel, Parametros : String;
  end;

var
  frmRL0202: TfrmRL0202;

implementation

uses udmRL0202, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0202.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0202.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0202.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0202.FormCreate(Sender: TObject);
begin
   dmRL0202 := TdmRL0202.Create(Self);
end;

procedure TfrmRL0202.FormShow(Sender: TObject);
begin
   Case Self.Tag of
      0:
      begin
         Self.Caption    := 'Clientes Inativos';
         Label1.Visible  := True;
         edtDias.Visible := True;
      end;

      1:
      begin
         Self.Caption := 'Clientes Sem Limite de Cr�dito';
         Label1.Visible  := False;
         edtDias.Visible := False;
      end;

      2:
      begin
         Self.Caption := 'Clientes Com Excesso de Compras';
         Label1.Visible  := False;
         edtDias.Visible := False;
      end;

      3:
      begin
         Self.Caption := 'Clientes Negativados';
         Label1.Visible  := False;
         edtDias.Visible := False;
      end;
   end;
end;

procedure TfrmRL0202.btnImprimirClick(Sender: TObject);
Var Sql1 : String;
begin
   with dmRL0202 do
   begin
      Sql1 := '';

      Sql1 := 'select c.*, (c.credito_cliente - c.utilizado_cliente) as SALDO from E_CLIENTE c ';

      Case Self.Tag of
         0: Sql1 := Sql1 + ' where ((c.ultima_compra_cliente >= '+ QuotedStr(FormatDateTime('mm/dd/yyyy', (Date - edtDias.Value))) +') or (c.ultima_compra_cliente is null)) and (c.databloqueio_cliente is null)';
         1: Sql1 := Sql1 + ' where ((c.credito_cliente = 0) or (c.credito_cliente is null)) and (c.databloqueio_cliente is null)';
         2: Sql1 := Sql1 + ' where (c.utilizado_cliente > c.credito_cliente) and (c.databloqueio_cliente is null)';
         3: Sql1 := Sql1 + ' where ((not c.databloqueio_cliente is null))';
      end;

      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsClientes.Close;
      cdsClientes.CommandText := Sql1;
      cdsClientes.Open;

      if rdgSequencia.ItemIndex = 0 then
         cdsClientes.IndexFieldNames := 'NOME_CLIENTE'
      else
         cdsClientes.IndexFieldNames := 'CODIGO_CLIENTE';

      frmProcesso2.Close;

      rptRel_Clientes.Print;
   end;
end;


procedure TfrmRL0202.Nome_Relatorio;
begin
   Nome_Rel   := '';
   Parametros := '';

   if rdgSequencia.ItemIndex = 0 then
      Parametros := 'Ordem Alfab�tica'
   else
      Parametros := 'Ordem de C�digo';

   Case Self.Tag of
      0: Nome_Rel := 'Clientes Inativos a mais de ' + edtDias.EditText + ' dias - Sem Negativados';
      1: Nome_Rel := 'Clientes Sem Limite de Cr�dito - Sem Negativados';
      2: Nome_Rel := 'Clientes Com Excesso de Compras - Sem Negativados';
      3: Nome_Rel := 'Clientes Negativados';
   end;
end;

procedure TfrmRL0202.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Nome_Relatorio; // procedure

   Text := Nome_Rel;
end;

procedure TfrmRL0202.lblParam1GetText(Sender: TObject; var Text: String);
begin
   Nome_Relatorio; // procedure

   Text := '          ' + Parametros;
end;

procedure TfrmRL0202.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1); 
end;

procedure TfrmRL0202.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0202.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
