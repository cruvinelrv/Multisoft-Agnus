{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FIN014 (FIN016)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA 
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 27/03/2007
 FINALIDADE           --> Emissão de Recibos do baixa de contas a pagar
 COMENTARIO           -->

 *******************************************************************************}

unit uFn15_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, DB,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, SqlExpr, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmFn15_2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    DataSource2: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    ppLine5: TppLine;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLine8: TppLine;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppLine9: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLine11: TppLine;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    btnImprimir: TBitBtn;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    DataSource1: TDataSource;
    DBEdit5: TJvValidateEdit;
    btnCancelar: TBitBtn;
    ppLabel21: TppLabel;
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure btnCancelarClick(Sender: TObject);
    procedure ppLabel21GetText(Sender: TObject; var Text: String);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    CNPJEmpresa,
    EndereEmpresa,
    BairroEmpresa,
    CidadeEmpresa,
    EstadoEmpresa,
    NomeEmpresa : String;
  end;

var
  frmFn15_2: TfrmFn15_2;

implementation

uses uDmPrincipal, uFn0102, udmFn0102, uGlobal;

{$R *.dfm}              

procedure TfrmFn15_2.ppLabel7GetText(Sender: TObject; var Text: String);
begin
                 // função retorna valor por extenso
   Text := '(' + Extenso(dmFn0102.cdsReciboVALOR_RECIBO.AsFloat) + ')';
end;

procedure TfrmFn15_2.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if Application.MessageBox('Confirma impressão?', 'Questionamento',MB_YESNO+MB_ICONQUESTION) = mrYes then
         btnImprimir.Click;
   end;
end;

procedure TfrmFn15_2.btnImprimirClick(Sender: TObject);
begin
   ppReport1.Print;

   frmFn15_2.Close;
end;

procedure TfrmFn15_2.FormCreate(Sender: TObject);
Var
  FSQL : TSqlquery;
begin
   FSQL := TSQLQuery.Create(Application);

   try
   FSQL.SQLConnection := DmPrincipal.DbConexao;
   FSQL.Close;
   FSQL.SQL.Clear;
   FSQL.SQL.Add(' SELECT * FROM EMPRESA WHERE CODIGO_EMP = ' + CodigoEmpresa1);

   FSQL.Open;

   if not FSQL.IsEmpty then
   begin
      Text := FSQL.FieldByName('EMPRESA').AsString;
      NomeEmpresa := FSQL.FieldByName('EMPRESA').AsString;
      CNPJEmpresa := FSQL.FieldByName('CGC_EMP').AsString;
      EndereEmpresa := FSQL.FieldByName('ENDERECO_EMP').AsString;
      BairroEmpresa := FSQL.FieldByName('BAIRRO_EMP').AsString;
      CidadeEmpresa := FSQL.FieldByName('CIDADE_EMP').AsString;
      EstadoEmpresa := FSQL.FieldByName('ESTADO_EMP').AsString;
   end;

   Finally
   FreeAndNil(FSQL);
  end;
end;

procedure TfrmFn15_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dmFn0102.cdsRecibo.State in [dsInsert, dsEdit] then
   begin
      if dmFn0102.cdsRecibo.State = dsInsert then
         GravaLogUser(self, ' Grava Recibo : ' + dmFn0102.cdsReciboCODIGO_RECIBO.AsString)
      else
         GravaLogUser(self, ' Altera Recibo : ' + dmFn0102.cdsReciboCODIGO_RECIBO.AsString);

      dmFn0102.cdsReciboCODIGO_RECIBO.AsInteger := Busca_Proximo('P_RECIBO', 'CODIGO_RECIBO');
      dmFn0102.cdsReciboCOD_EMPRESA.AsInteger := StrToInt(CodigoEmpresa1);
      dmFn0102.cdsReciboJUROS_DESC_RECIBO.AsString := DBEdit5.Text;
      dmFn0102.cdsReciboHISTORICO2_RECIBO.AsString := frmFn0102.HIS2; 

      dmFn0102.cdsRecibo.Post;

      dmFn0102.cdsRecibo.ApplyUpdates(0);
   end;
end;

procedure TfrmFn15_2.ppLabel20GetText(Sender: TObject; var Text: String);
begin
   if frmFn0102.ComboBox1.ItemIndex = 0 then
      Text := '(Total)'
   else
      Text := '(Parcial)';
end;

procedure TfrmFn15_2.ppLabel19GetText(Sender: TObject; var Text: String);
begin
   Text := NomeEmpresa;
end;

procedure TfrmFn15_2.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := NomeEmpresa;
end;

procedure TfrmFn15_2.btnCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn15_2.ppLabel21GetText(Sender: TObject; var Text: String);
begin
   if frmFn0102.edtJurosDesconto.Value <> 0 then
      Text := frmFn0102.edtJurosDesconto.Value
   else
      Text := '0.00';
end;

procedure TfrmFn15_2.ppLabel17GetText(Sender: TObject; var Text: String);
begin
   Text := CidadeEmpresa + '-' + EstadoEmpresa + '     ' + DataExtenso(DataSystem1);
end;

procedure TfrmFn15_2.FormShow(Sender: TObject);
Var
  A,
  Sql1 : String;
begin
   dmFn0102.cdsRecibo.Close;
   dmFn0102.cdsRecibo.Params.ParamByName('cod_empresa').AsInteger := 0;
   dmFn0102.cdsRecibo.Open;

   if (not(dmFn0102.cdsRecibo.State = dsInsert)) then
      dmFn0102.cdsRecibo.Append;

   if not dmFn0102.cdsPagar.IsEmpty then
   begin
      DBEdit1.Field.AsString := dmFn0102.cdsPagarDOCUMENTO_PAGAR.AsString;

      DBEdit2.Field.AsString := dmFn0102.cdsPagarVENCIMENTO_PAGAR.AsString;

      DBEdit3.Field.AsString := DateToStr(DataSystem1);


      if frmFn0102.ComboBox1.ItemIndex = 0 then // baixa total
      begin
         DBEdit4.Field.AsString := frmFn0102.edtValorPago.Value; // valor pago

         DBEdit6.Field.AsString := frmFn0102.edtValorPago.Value;
      end
      else
      begin
         DBEdit4.Field.AsString := frmFn0102.edtPrincipal.Value; // conponente do tipo validaedit

         DBEdit6.Field.AsString := frmFn0102.edtPrincipal.Value; // conponente do tipo validaedit
      end;

      if frmFn0102.ComboBox1.ItemIndex = 1 then // baixa parcial
         DBEdit5.Text := frmFn0102.edtJuros.Value // conponente do tipo validaedit
      else
         DBEdit5.Text := frmFn0102.edtJurosDesconto.Value; // conponente do tipo validaedit

      DBEdit7.Field.AsString := frmFn0102.DBText2.Field.AsString;

      DBEdit8.Field.AsString := NomeEmpresa;

      DBEdit9.Field.AsString := CNPJEmpresa;

      DBEdit10.Field.AsString := EndereEmpresa;

      DBEdit11.Field.AsString := BairroEmpresa;

      DBEdit12.Field.AsString := CidadeEmpresa;

      DBEdit13.Field.AsString := EstadoEmpresa;

      if frmFn0102.Memo1 = True then // se DBMemo estiver vazio
         DBMemo1.Field.AsVariant := frmFn0102.HIS1
      else
         DBMemo1.Field.AsVariant := frmFn0102.DBMemo1.Field.AsVariant;

   end;
end;

procedure TfrmFn15_2.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

   if Key = #27 then
      Close;
end;

procedure TfrmFn15_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
