unit uRL100102;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,
  Buttons, ppBarCod, ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion,
  ppCache, ppBands, ppComm, ppRelatv, ppProd, ppReport, FMTBcd, DB, SqlExpr,
  DBClient, ppParameter, ppDB, ppDBPipe, ComCtrls, Grids, DBGrids, Menus;

type
  TfrmRL100102 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    edtCodProduto: TJvValidateEdit;
    edtDescProduto: TEdit;
    rptModelo_01: TppReport;
    ppDetailBand1: TppDetailBand;
    ppLabel3: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppParameterList1: TppParameterList;
    DataSource1: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppRegion1: TppRegion;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    cdsItens: TClientDataSet;
    cdsItensDESCRICAO: TStringField;
    cdsItensQTD: TIntegerField;
    cdsItensCODPRO: TIntegerField;
    cdsItensVALOR: TFloatField;
    cdsItensCODFAB: TStringField;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    dsImp: TDataSource;
    cdsImp: TClientDataSet;
    cdsImpDESCRICAO: TStringField;
    cdsImpCODPRO: TIntegerField;
    cdsImpVALOR: TFloatField;
    cdsImpDESCRICAO2: TStringField;
    cdsImpCODPRO2: TIntegerField;
    cdsImpVALOR2: TFloatField;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Label2: TLabel;
    Button2: TBitBtn;
    Button3: TBitBtn;
    Button1: TBitBtn;
    cdsImpCODFAB: TStringField;
    cdsImpCODFAB2: TStringField;
    rptModelo_02: TppReport;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppRegion2: TppRegion;
    ppLabel16: TppLabel;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppParameterList2: TppParameterList;
    ppDBPipeline2: TppDBPipeline;
    dsimp2: TDataSource;
    cdsimp2: TClientDataSet;
    ppLabel11: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    cdsimp2DESCRICAO: TStringField;
    cdsimp2CODIGOS: TStringField;
    cdsimp2PRECO: TStringField;
    cdsimp2DESCRICAO2: TStringField;
    cdsimp2CODIGOS2: TStringField;
    cdsimp2PRECO2: TStringField;
    cdsimp2DESCRICAO3: TStringField;
    cdsimp2CODIGOS3: TStringField;
    cdsimp2PRECO3: TStringField;
    cdsimp2DESCRICAO4: TStringField;
    cdsimp2CODIGOS4: TStringField;
    cdsimp2PRECO4: TStringField;
    cdsimp2DESCRICAO5: TStringField;
    cdsimp2CODIGOS5: TStringField;
    cdsimp2PRECO5: TStringField;
    cdsItensOBS: TStringField;
    rdgModelo_Etiqueta: TRadioGroup;
    cdsImp3: TClientDataSet;
    dsImp3: TDataSource;
    ppDBPipeline3: TppDBPipeline;
    rptModelo_03: TppReport;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppLabel25: TppLabel;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppParameterList3: TppParameterList;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    cdsItensREFERENCIA: TStringField;
    cdsItensCODBARRA: TStringField;
    ppBarCode1: TppBarCode;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppBarCode2: TppBarCode;
    ppBarCode3: TppBarCode;
    ppBarCode4: TppBarCode;
    ppBarCode5: TppBarCode;
    cdsImp3DESCRICAO: TStringField;
    cdsImp3CODIGOS: TStringField;
    cdsImp3PRECO: TStringField;
    cdsImp3REFERECIA: TStringField;
    cdsImp3CODBARRA: TStringField;
    cdsImp3DESCRICAO2: TStringField;
    cdsImp3CODIGOS2: TStringField;
    cdsImp3PRECO2: TStringField;
    cdsImp3REFERECIA2: TStringField;
    cdsImp3CODBARRA2: TStringField;
    cdsImp3DESCRICAO3: TStringField;
    cdsImp3CODIGOS3: TStringField;
    cdsImp3PRECO3: TStringField;
    cdsImp3REFERECIA3: TStringField;
    cdsImp3CODBARRA3: TStringField;
    cdsImp3DESCRICAO4: TStringField;
    cdsImp3CODIGOS4: TStringField;
    cdsImp3PRECO4: TStringField;
    cdsImp3REFERECIA4: TStringField;
    cdsImp3CODBARRA4: TStringField;
    cdsImp3DESCRICAO5: TStringField;
    cdsImp3CODIGOS5: TStringField;
    cdsImp3PRECO5: TStringField;
    cdsImp3REFERECIA5: TStringField;
    cdsImp3CODBARRA5: TStringField;
    ppDBPipeline4: TppDBPipeline;
    dtsImp4: TDataSource;
    cdsImp4: TClientDataSet;
    cdsImp4Referencia: TStringField;
    cdsImp4Preco: TFloatField;
    cdsImp4DescricaoProduto: TStringField;
    cdsImp4CodigoProduto: TIntegerField;
    rptModelo_04: TppReport;
    ppDetailBand5: TppDetailBand;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppDBText1: TppDBText;
    ppLabel51: TppLabel;
    ppDBBarCode2: TppDBBarCode;
    ppLabel52: TppLabel;
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel3GetText(Sender: TObject; var Text: String);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure Button1Click(Sender: TObject);
    procedure ppLabel7GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure Button3Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure ppLabel15GetText(Sender: TObject; var Text: String);
    procedure ppLabel20GetText(Sender: TObject; var Text: String);
    procedure ppLabel22GetText(Sender: TObject; var Text: String);
    procedure ppLabel17GetText(Sender: TObject; var Text: String);
    procedure ppLabel18GetText(Sender: TObject; var Text: String);
    procedure ppLabel19GetText(Sender: TObject; var Text: String);
    procedure ppLabel21GetText(Sender: TObject; var Text: String);
    procedure ppLabel23GetText(Sender: TObject; var Text: String);
    procedure ppLabel45GetText(Sender: TObject; var Text: String);
    procedure ppLabel44GetText(Sender: TObject; var Text: String);
    procedure ppLabel47GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    Cod1, Nome1, Valor1, Fabrica1, Fabricante1, OBS1, Ref1, CodBarra1: String;
  public
    { Public declarations }
  end;

var
  frmRL100102: TfrmRL100102;

implementation

uses uDmPrincipal, uGlobal, uConsulta;

{$R *.dfm}

procedure TfrmRL100102.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL100102.SpeedButton1Click(Sender: TObject);
begin
   edtCodProduto.SetFocus;

   ConsultaProduto(edtCodProduto);
end;

procedure TfrmRL100102.edtCodProdutoExit(Sender: TObject);
var
   ComponenteSql: TSQLQuery;
begin
   if edtCodProduto.Value > 0 then
   begin
      ComponenteSql := TSQLQuery.Create(Application);
      ComponenteSql.SQLConnection := DmPrincipal.DbConexao; // conexao com o banco
      ComponenteSql.SQL.Add('SELECT FABRICANTE_PRODUTO, FABRICA_PRODUTO, CODIGO_PRODUTO, PRECO_LISTA_PRODUTO, DESCRICAO_PRODUTO, BARRA_PRODUTO, OBSERVACAO_PRODUTO, REFERENCIA_PRODUTO FROM P_PRODUTOS WHERE CODIGO_PRODUTO = ' + QuotedStr(edtCodProduto.Text));
      ComponenteSql.Open;

      if ComponenteSql.IsEmpty then
      begin
         Application.MessageBox('O código informado é inválido', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtDescProduto.Clear;
         Exit;
      end
      else
      begin
         edtDescProduto.Text := ComponenteSql.FieldByName('DESCRICAO_PRODUTO').AsString;

         Valor1      := ComponenteSql.FieldByName('PRECO_LISTA_PRODUTO').AsString;
         Fabrica1    := ComponenteSql.FieldByName('FABRICANTE_PRODUTO').AsString;
         Fabricante1 := ComponenteSql.FieldByName('FABRICA_PRODUTO').AsString;
         Nome1       := ComponenteSql.FieldByName('DESCRICAO_PRODUTO').AsString;
         Cod1        := ComponenteSql.FieldByName('CODIGO_PRODUTO').AsString;
         OBS1        := ComponenteSql.FieldByName('OBSERVACAO_PRODUTO').AsString;
         CodBarra1   := ComponenteSql.FieldByName('BARRA_PRODUTO').AsString;
         Ref1        := ComponenteSql.FieldByName('REFERENCIA_PRODUTO').AsString;

         Edit1.Text := '1';
      end;

      FreeAndNil(ComponenteSql);
   end
   else
      edtDescProduto.Text := '';
end;

procedure TfrmRL100102.ppLabel2GetText(Sender: TObject; var Text: String);
begin
   Text := Copy(cdsImpDESCRICAO.AsString,1,12);
end;

procedure TfrmRL100102.ppLabel3GetText(Sender: TObject; var Text: String);
begin
   Text := cdsimp2CODIGOS.AsString
end;

procedure TfrmRL100102.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text  := cdsimp2DESCRICAO.AsString;
end;

procedure TfrmRL100102.ppLabel5GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2DESCRICAO2.AsString <> '' then
      Text  := cdsimp2DESCRICAO2.AsString;
end;

procedure TfrmRL100102.ppLabel4GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2CODIGOS2.AsString <> '' then
      Text := cdsimp2CODIGOS2.AsString
end;

procedure TfrmRL100102.ppLabel6GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2DESCRICAO3.AsString <> '' then
      Text  := cdsimp2DESCRICAO3.AsString;
end;

procedure TfrmRL100102.Button1Click(Sender: TObject);
var
   Cod, Col: Integer;
begin
   if cdsItens.RecordCount = 0 then
   begin
      Application.MessageBox('A lista para impressão está vazia.','Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
   end;

   // Verifica o modelo da etiquela
   case rdgModelo_Etiqueta.ItemIndex of
      0:
      begin
         //Monta extrutura para impressão
         Col := 1;
         cdsItens.First;
         while not cdsItens.Eof do
         begin
            Cod := cdsItensQTD.AsInteger;
            repeat
               if Col = 1 then
               begin
                  cdsImp.Append;
            
                  cdsImpDESCRICAO .AsString  := cdsItensDESCRICAO.AsString;
                  cdsImpCODPRO    .AsString  := cdsItensCODPRO.AsString;
                  cdsImpVALOR     .AsString  := cdsItensVALOR.AsString;
                  cdsImpCODFAB    .AsString  := cdsItensCODFAB.AsString;

                  Col := 2;
               end
               else
               begin
                  cdsImpDESCRICAO2 .AsString  := cdsItensDESCRICAO.AsString;
                  cdsImpCODPRO2    .AsString  := cdsItensCODPRO.AsString;
                  cdsImpVALOR2     .AsString  := cdsItensVALOR.AsString;
                  cdsImpCODFAB2    .AsString  := cdsItensCODFAB.AsString;

                  Col := 1;
                  cdsImp.Post;
               end;

               Cod := Cod - 1;
            until Cod = 0;

            cdsItens.Next;
         end;

         if cdsImp.State in [dsInsert] then
            cdsImp.Post;

         rptModelo_01.Print;
      end;

      1:
      begin
         //Monta extrutura para impressão
         Col := 1;
         cdsItens.First;
         while not cdsItens.Eof do
         begin
            Cod := cdsItensQTD.AsInteger;
            repeat
               if Col = 1 then
               begin
                  cdsImp2.Append;

                  cdsImp2DESCRICAO .AsString := cdsItensDESCRICAO.AsString;
                  cdsimp2CODIGOS   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                  cdsimp2PRECO     .AsString := cdsItensVALOR.AsString;

                  Col := 2;
               end
               else
               begin
                  if Col = 2 then
                  begin
                     cdsImp2DESCRICAO2 .AsString := cdsItensDESCRICAO.AsString;
                     cdsimp2CODIGOS2   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                     cdsimp2PRECO2     .AsString := cdsItensVALOR.AsString;

                     Col := 3;
                  end
                  else
                  begin
                     if Col = 3 then
                     begin
                        cdsImp2DESCRICAO3 .AsString := cdsItensDESCRICAO.AsString;
                        cdsimp2CODIGOS3   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                        cdsimp2PRECO3     .AsString := cdsItensVALOR.AsString;

                        Col := 4;
                     end
                     else
                     begin
                        if Col = 4 then
                        begin
                           cdsImp2DESCRICAO4 .AsString := cdsItensDESCRICAO.AsString;
                           cdsimp2CODIGOS4   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                           cdsimp2PRECO4     .AsString := cdsItensVALOR.AsString;

                           Col := 5;
                        end
                        else
                        begin
                           if Col = 5 then
                           begin
                              cdsImp2DESCRICAO5 .AsString := cdsItensDESCRICAO.AsString;
                              cdsimp2CODIGOS5   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                              cdsimp2PRECO5     .AsString := cdsItensVALOR.AsString;

                              Col := 1;
                              cdsimp2.Post;
                           end
                        end;
                     end;
                  end;
               end;

               Cod := Cod - 1;
            until Cod = 0;

            cdsItens.Next;
         end;

         if cdsImp2.State in [dsInsert] then
            cdsImp2.Post;

         rptModelo_02.Print;
      end;
      2:
      begin
         //Monta extrutura para impressão
         Col := 1;
         cdsItens.First;
         while not cdsItens.Eof do
         begin
            Cod := cdsItensQTD.AsInteger;
            repeat
               if Col = 1 then
               begin
                  cdsImp3.Append;

                  cdsImp3DESCRICAO .AsString := cdsItensDESCRICAO.AsString;
                  cdsImp3CODIGOS   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                  cdsImp3PRECO     .AsString := cdsItensVALOR.AsString;
                  cdsImp3REFERECIA .AsString := cdsItensREFERENCIA.AsString;
                  cdsImp3CODBARRA  .AsString := cdsItensCODBARRA.AsString;

                  Col := 2;
               end
               else
               begin
                  if Col = 2 then
                  begin
                     cdsImp3DESCRICAO2 .AsString := cdsItensDESCRICAO.AsString;
                     cdsImp3CODIGOS2   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                     cdsImp3PRECO2     .AsString := cdsItensVALOR.AsString;
                     cdsImp3REFERECIA2 .AsString := cdsItensREFERENCIA.AsString;
                     cdsImp3CODBARRA2  .AsString := cdsItensCODBARRA.AsString;

                     Col := 3;
                  end
                  else
                  begin
                     if Col = 3 then
                     begin
                        cdsImp3DESCRICAO3 .AsString := cdsItensDESCRICAO.AsString;
                        cdsImp3CODIGOS3   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                        cdsImp3PRECO3     .AsString := cdsItensVALOR.AsString;
                        cdsImp3REFERECIA3 .AsString := cdsItensREFERENCIA.AsString;
                        cdsImp3CODBARRA3  .AsString := cdsItensCODBARRA.AsString;

                        Col := 4;
                     end
                     else
                     begin
                        if Col = 4 then
                        begin
                           cdsImp3DESCRICAO4 .AsString := cdsItensDESCRICAO.AsString;
                           cdsImp3CODIGOS4   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                           cdsImp3PRECO4     .AsString := cdsItensVALOR.AsString;
                           cdsImp3REFERECIA4 .AsString := cdsItensREFERENCIA.AsString;
                           cdsImp3CODBARRA4  .AsString := cdsItensCODBARRA.AsString;

                           Col := 5;
                        end
                        else
                        begin
                           if Col = 5 then
                           begin
                              cdsImp3DESCRICAO5 .AsString := cdsItensDESCRICAO.AsString;
                              cdsImp3CODIGOS5   .AsString := 'Fab.' + cdsItensCODFAB.AsString + ' ' + cdsItensOBS.AsString;
                              cdsImp3PRECO5     .AsString := cdsItensVALOR.AsString;
                              cdsImp3REFERECIA5 .AsString := cdsItensREFERENCIA.AsString;
                              cdsImp3CODBARRA5  .AsString := cdsItensCODBARRA.AsString;

                              Col := 1;
                              cdsImp3.Post;
                           end
                        end;
                     end;
                  end;
               end;

               Cod := Cod - 1;
            until Cod = 0;

            cdsItens.Next;
         end;

         if cdsImp3.State in [dsInsert] then
            cdsImp3.Post;

         rptModelo_03.Print;
      end;

      3:
      begin
         //Monta extrutura para impressão

         cdsItens.First;

         while not cdsItens.Eof do
         begin
            Cod := cdsItensQTD.AsInteger;

            repeat

               cdsImp4.Append;

               cdsImp4CodigoProduto.AsInteger   := cdsItensCODPRO.AsInteger;
               cdsImp4DescricaoProduto.AsString := cdsItensDESCRICAO.AsString;
               cdsImp4Referencia.AsString       := cdsItensREFERENCIA.AsString;
               cdsImp4Preco.AsFloat             := cdsItensVALOR.AsFloat;

               cdsImp4.Post;

               Cod := Cod - 1;
            until Cod = 0;

            cdsItens.Next;
         end;

         if cdsImp4.State in [dsInsert] then
            cdsImp4.Post;

         rptModelo_04.Print;
      end;

   end;

end;

procedure TfrmRL100102.ppLabel7GetText(Sender: TObject; var Text: String);
begin
   Text := Copy(cdsImpCODFAB.AsString,1,12);
end;

procedure TfrmRL100102.ppLabel8GetText(Sender: TObject; var Text: String);
begin
  if cdsimp2CODIGOS3.AsString <> '' then
      Text := cdsimp2CODIGOS3.AsString
end;

procedure TfrmRL100102.Button3Click(Sender: TObject);
begin
   if rdgModelo_Etiqueta.ItemIndex < 0 then
   begin
      Application.MessageBox('Selecione o modelo da etiqueta.','Atenção', MB_OK + MB_ICONEXCLAMATION);
      Exit;
   end;
   
   if edtDescProduto.Text = '' then
   begin
      edtCodProduto.SetFocus;
      Exit;
   end;

   cdsItens.Append;

   cdsItensDESCRICAO .AsString := Nome1;
   cdsItensQTD       .AsString := Edit1.Text;
   cdsItensCODPRO    .AsString := Cod1;
   cdsItensVALOR     .AsString := Valor1;
   cdsItensREFERENCIA.AsString := Ref1;
   cdsItensCODBARRA  .AsString := CodBarra1;

   case rdgModelo_Etiqueta.ItemIndex of
      0: cdsItensCODFAB.AsString := Fabrica1;
      1: cdsItensCODFAB.AsString := Fabricante1;
   end;

   cdsItensOBS.AsString := OBS1;

   cdsItens.Post;

   edtDescProduto.Clear;
   edtCodProduto.Text := '0';
   edtCodProduto.SetFocus;
end;

procedure TfrmRL100102.Excluir1Click(Sender: TObject);
begin
   cdsItens.Delete;
end;

procedure TfrmRL100102.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
   Label1.Caption := 'Total de registros: ' + IntToStr(cdsItens.RecordCount);
end;

procedure TfrmRL100102.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRL100102.edtCodProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 123 then
      SpeedButton1.Click;
end;

procedure TfrmRL100102.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

procedure TfrmRL100102.ppLabel11GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2DESCRICAO4.AsString <> '' then
      Text  := cdsimp2DESCRICAO4.AsString;
end;

procedure TfrmRL100102.ppLabel15GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2DESCRICAO5.AsString <> '' then
      Text  := cdsimp2DESCRICAO5.AsString;
end;

procedure TfrmRL100102.ppLabel20GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2CODIGOS4.AsString <> '' then
      Text := cdsimp2CODIGOS4.AsString
end;

procedure TfrmRL100102.ppLabel22GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2CODIGOS5.AsString <> '' then
      Text := cdsimp2CODIGOS5.AsString
end;

procedure TfrmRL100102.ppLabel17GetText(Sender: TObject; var Text: String);
begin
   Text := 'R$:' + FormatFloat('0.00',cdsimp2PRECO.AsFloat);
end;

procedure TfrmRL100102.ppLabel18GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2PRECO2.AsString <> '' then
      Text := 'R$:' + FormatFloat('0.00',cdsimp2PRECO2.AsFloat);
end;

procedure TfrmRL100102.ppLabel19GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2PRECO3.AsString <> '' then
      Text := 'R$:' + FormatFloat('0.00',cdsimp2PRECO3.AsFloat);
end;

procedure TfrmRL100102.ppLabel21GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2PRECO4.AsString <> '' then
      Text := 'R$:' + FormatFloat('0.00',cdsimp2PRECO4.AsFloat);
end;

procedure TfrmRL100102.ppLabel23GetText(Sender: TObject; var Text: String);
begin
   if cdsimp2PRECO5.AsString <> '' then
      Text := 'R$:' + FormatFloat('0.00',cdsimp2PRECO5.AsFloat);
end;

procedure TfrmRL100102.ppLabel45GetText(Sender: TObject; var Text: String);
begin
   Text := 'A Prazo R$ ' + FormatFloat('#,##0.00', cdsImp4Preco.AsFloat) + ' (3x sem juros)'
end;

procedure TfrmRL100102.ppLabel44GetText(Sender: TObject; var Text: String);
begin
   Text := 'A Vista R$ ' + FormatFloat('#,##0.00', cdsImp4Preco.AsFloat);
end;

procedure TfrmRL100102.ppLabel47GetText(Sender: TObject; var Text: String);
begin
   Text := StrZero(cdsImp4CodigoProduto.AsString,6) + '-' + cdsImp4DescricaoProduto.AsString;
end;

end.
