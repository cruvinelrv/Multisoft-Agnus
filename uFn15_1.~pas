{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FIN014 (FIN033)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA 
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 28/03/2007
 FINALIDADE           --> Emissão de Recibos
 COMENTARIO           -->

 *******************************************************************************}

unit uFn15_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ExtCtrls, DB, StdCtrls, Buttons, Math, StrUtils,
  Mask, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, SqlExpr;

type
  TfrmFn15_1 = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TMaskEdit;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
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
    ppDBText8: TppDBText;
    ppLabel12: TppLabel;
    ppDBText9: TppDBText;
    ppLabel13: TppLabel;
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
    btnImprimir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel13GetText(Sender: TObject; var Text: String);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    procedure Pesquisa;
    procedure Limpa_Campos;
  public
    { Public declarations }
  end;

var
  frmFn15_1: TfrmFn15_1;

implementation

uses uFn15_2, uGlobal, uFn15_3, uDmPrincipal, udmFn15_1;

{$R *.dfm}

procedure TfrmFn15_1.FormShow(Sender: TObject);
begin
   Limpa_Campos;

   dmFn15_1.cdsRecibo.Close;
   dmFn15_1.cdsRecibo.Params.ParamByName('cod_empresa').AsInteger  := StrToInt(CodigoEmpresa1);
   dmFn15_1.cdsRecibo.Open;
end;

procedure TfrmFn15_1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 67 then // tecla C
   begin
      frmFn15_3 := TfrmFn15_3.Create(Self);
      frmFn15_3.Show;
   end;

   if Key = 45 then // tecla insert
   begin
      dmFn15_1.cdsRecibo.Append;

      frmFn15_3 := TfrmFn15_3.Create(Self);
      frmFn15_3.Show;
   end;

   if Key = 65 then // tecla A
   begin
      dmFn15_1.cdsRecibo.Edit;

      frmFn15_3 := TfrmFn15_3.Create(Self);
      frmFn15_3.Show;
   end;

   if Key = 46 then // tecla Delete
      btnExcluir.Click;

   if Key = 82 then // tecla R / imprimir
      ppReport1.Print;

   if Key = 121 then  // tecla F10
   begin
      Edit1.Text := '';
      RadioGroup1.ItemIndex := -1;

      RadioGroup1.Visible := True;
   end;
   
end;

procedure TfrmFn15_1.btnIncluirClick(Sender: TObject);
begin
   RadioGroup1.Visible := False;
   Panel2.Visible := False;

   dmFn15_1.cdsRecibo.Append;

   frmFn15_3 := TfrmFn15_3.Create(Self);
   frmFn15_3.Show;
end;

procedure TfrmFn15_1.btnAlterarClick(Sender: TObject);
begin
   RadioGroup1.Visible := False;
   Panel2.Visible := False;

   dmFn15_1.cdsRecibo.Edit;

   frmFn15_3 := TfrmFn15_3.Create(Self);
   frmFn15_3.Show;
end;

procedure TfrmFn15_1.btnExcluirClick(Sender: TObject);
Var A : String;
begin
   RadioGroup1.Visible := False;
   Panel2.Visible := False;

   A := dmFn15_1.cdsReciboCODIGO_RECIBO.AsString;

   if Application.MessageBox(pchar('Confirma a exclusão do Recibo ' + A ), 'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes then
   begin
      dmFn15_1.cdsRecibo.Delete;

      dmFn15_1.cdsRecibo.ApplyUpdates(0);
   end;
end;

procedure TfrmFn15_1.btnGravarClick(Sender: TObject);
begin
   RadioGroup1.Visible := False;
   Panel2.Visible := False;

   if dmFn15_1.cdsRecibo.State in [dsInsert, dsEdit] then
   begin
      if dmFn15_1.cdsRecibo.State = dsInsert then
         GravaLogUser(self, ' Grava Recibo : ' + dmFn15_1.cdsReciboCODIGO_RECIBO.AsString)
      else
         GravaLogUser(self, ' Altera Recibo : ' + dmFn15_1.cdsReciboCODIGO_RECIBO.AsString);

      if dmFn15_1.cdsRecibo.State in [dsInsert] then
      begin
         dmFn15_1.cdsReciboCODIGO_RECIBO.AsInteger := Busca_Proximo('P_RECIBO', 'CODIGO_RECIBO');
         dmFn15_1.cdsReciboCOD_EMPRESA.AsInteger := StrToInt(CodigoEmpresa1);
      end;

      dmFn15_1.cdsRecibo.Post;

      dmFn15_1.cdsRecibo.ApplyUpdates(0);

      if frmFn15_3 <> nil then
         frmFn15_3.Close;
   end;
end;

procedure TfrmFn15_1.RadioGroup1Click(Sender: TObject);
begin
   Panel2.Visible := True;
   Edit1.SetFocus;

   if (RadioGroup1.ItemIndex = 2) or (RadioGroup1.ItemIndex = 3) then
   begin
      Edit1.Text := '';
      Edit1.EditMask := '!99/99/0000;1;'
   end
   else
   begin
      Edit1.Text := '';
      Edit1.EditMask := '';
   end;
end;

procedure TfrmFn15_1.Pesquisa;
begin
   if Edit1.Text <> '' then
   begin
      if RadioGroup1.ItemIndex = 0 then
      begin
         Edit1.Text := RemoveString(Edit1.Text); // remove letras

         dmFn15_1.cdsRecibo.IndexFieldNames := 'CODIGO_RECIBO';
         if not dmFn15_1.cdsRecibo.FindKey([Edit1.Text]) then
            ShowMessage('Não encontrado');
      end;

      if RadioGroup1.ItemIndex = 1 then
      begin
         Edit1.Text := RemoveDecimal(Edit1.Text); // remove marcadores decimais

         dmFn15_1.cdsRecibo.IndexFieldNames := 'NUM_DOC_RECIBO';
         if not dmFn15_1.cdsRecibo.FindKey([Edit1.Text]) then
            ShowMessage('Não encontrado');
      end;

      if RadioGroup1.ItemIndex = 2 then
      begin
         Edit1.Text := TrataData(Edit1.Text); // deixa apenas números e marcadores de data

         dmFn15_1.cdsRecibo.IndexFieldNames := 'EMIS_PGTO_RECIBO';
         if not dmFn15_1.cdsRecibo.FindKey([Edit1.Text]) then
            ShowMessage('Não encontrado');
      end;

      if RadioGroup1.ItemIndex = 3 then
      begin
         Edit1.Text := TrataData(Edit1.Text); // deixa apenas números e marcadores de data

         dmFn15_1.cdsRecibo.IndexFieldNames := 'VENCIMENTO_RECIBO';
         if not dmFn15_1.cdsRecibo.FindKey([Edit1.Text]) then
            ShowMessage('Não encontrado');
      end;

      if RadioGroup1.ItemIndex = 4 then
      begin
         Edit1.Text := RemoveInteiro(Edit1.Text); // remove números

         dmFn15_1.cdsRecibo.IndexFieldNames := 'FAVORECIDO_RECIBO';
         if not dmFn15_1.cdsRecibo.FindKey([Edit1.Text]) then
            ShowMessage('Não encontrado');
      end;
   end
   else
   begin
      RadioGroup1.Visible := False;
      Panel2.Visible := False;

      DBGrid1.SetFocus;
   end;
end;


procedure TfrmFn15_1.Edit1Exit(Sender: TObject);
begin
   Pesquisa;
end;

procedure TfrmFn15_1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      Pesquisa;
      RadioGroup1.Visible := False;
      Panel2.Visible := False;

      DBGrid1.SetFocus;
   end;

   if Key = 27 then
   begin
      RadioGroup1.Visible := False;
      Panel2.Visible := False;

      DBGrid1.SetFocus;
   end;
end;

procedure TfrmFn15_1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
   btnIncluir.Enabled := (dmFn15_1.cdsRecibo.Active) and
                         (not(dmFn15_1.cdsRecibo.State in [dsInsert, dsEdit]));

   btnAlterar.Enabled := (dmFn15_1.cdsRecibo.Active) and
                         (dmFn15_1.cdsRecibo.RecordCount > 0) and
                         (not(dmFn15_1.cdsRecibo.State in [dsEdit]));

   btnExcluir.Enabled := (dmFn15_1.cdsRecibo.Active) and
                         (not(dmFn15_1.cdsRecibo.State in [dsInsert, dsEdit]));

   btnGravar.Enabled := (dmFn15_1.cdsRecibo.Active) and
                        (dmFn15_1.cdsRecibo.State in [dsInsert, dsEdit]);

   btnImprimir.Enabled := btnExcluir.Enabled;

   btnSair.Caption := IfThen(btnGravar.Enabled, '&Cancelar', '&Sair');
end;

procedure TfrmFn15_1.btnSairClick(Sender: TObject);
begin
   RadioGroup1.Visible := False;
   Panel2.Visible := False;

   if btnSair.Caption = '&Cancelar' then
   begin
      dmFn15_1.cdsRecibo.Cancel;

      DBGrid1.SetFocus;
   end
   else
   begin
      Close;
   end;
end;

procedure TfrmFn15_1.Limpa_Campos;
begin
   dmFn15_1.cdsRecibo.Close;
   dmFn15_1.cdsRecibo.Params.ParamByName('cod_empresa').AsInteger  := 0;
   dmFn15_1.cdsRecibo.Open;
end;

procedure TfrmFn15_1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn15_1.DBGrid1Enter(Sender: TObject);
begin
   StatusBar1.Panels[0].Text := '[C] » Consulta';
   StatusBar1.Panels[0].Width := 85;

   StatusBar1.Panels[1].Text := '[A] » Altera';
   StatusBar1.Panels[1].Width := 83;

   StatusBar1.Panels[2].Text := '[Ins] » Inclui';
   StatusBar1.Panels[2].Width := 85;

   StatusBar1.Panels[3].Text := '[Del] » Exclui';
   StatusBar1.Panels[3].Width := 85;

   StatusBar1.Panels[4].Text := '[F10] » Procura';
   StatusBar1.Panels[4].Width := 85;

   StatusBar1.Panels[5].Text := '[R] » Reimprime';
   StatusBar1.Panels[5].Width := 1000;
end;

procedure TfrmFn15_1.ppLabel1GetText(Sender: TObject; var Text: String);
Var
  FSQL : TSqlquery;
begin
   FSQL := TSQLQuery.Create(Application);

   try
   FSQL.SQLConnection := DmPrincipal.DbConexao;
   FSQL.Close;
   FSQL.SQL.Clear;
   FSQL.SQL.Add(' SELECT E.CODIGO_EMP, E.EMPRESA FROM EMPRESA E WHERE E.CODIGO_EMP = ' + CodigoEmpresa1);

   FSQL.Open;

   if not FSQL.IsEmpty then
      Text := FSQL.FieldByName('EMPRESA').AsString;

   Finally
   FreeAndNil(FSQL);
  end;
end;

procedure TfrmFn15_1.ppLabel7GetText(Sender: TObject; var Text: String);
begin
                 // função retorna valor por extenso
   Text := '(' + Extenso(dmFn15_1.cdsReciboVALOR_RECIBO.AsFloat) + ')';
end;

procedure TfrmFn15_1.ppLabel13GetText(Sender: TObject; var Text: String);
begin
   Text := DataExtenso(DataSystem1);
end;

procedure TfrmFn15_1.btnImprimirClick(Sender: TObject);
begin
   ppReport1.Print;
end;

procedure TfrmFn15_1.FormCreate(Sender: TObject);
begin
   dmFn15_1 := TdmFn15_1.Create(Self);
end;

procedure TfrmFn15_1.ppLabel4GetText(Sender: TObject; var Text: String);
begin
   if dmFn15_1.cdsReciboTIP_DOC_RECIBO.AsString = 'R' then
      Text := 'Recebemos de:'
   else
      Text := 'Favorecido:'
end;

end.
