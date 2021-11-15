// Arquivo Modificado: AppConn.pas > Linha 5425

unit uCx05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvComponent, JvgLabel, StdCtrls, ExtCtrls, Buttons,
  Mask, JvExMask, JvToolEdit, ComCtrls, JvSpin, WinSkinData, DB, ApoQSet,
  SqlExpr, Variants, FMTBcd, ApoDSet;

type
  TfrmCx05 = class(TForm)
    Panel1: TPanel;
    btnIniciar: TBitBtn;
    btnSair: TBitBtn;
    Panel2: TPanel;
    JvgLabel1: TJvgLabel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtNumCaixa: TEdit;
    edtTurnoCaixa: TEdit;
    edtDataCaixa: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtFuncionario: TEdit;
    edtSenha: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtProxCaixa: TJvDateEdit;
    edtProxTurno: TJvSpinEdit;
    lblEncerrando: TLabel;
    sqlCaiMov: TSQLQuery;
    sqlReceber: TSQLQuery;
    sqlTipoPagam: TSQLQuery;
    sqlVendas: TSQLQuery;
    sqlCaixa: TSQLQuery;
    sqlGravaVendas: TSQLQuery;
    sqlGeral: TSQLQuery;
    sqlVendasCODIGO_VENDA: TIntegerField;
    sqlVendasVENDEDOR_VENDA: TIntegerField;
    sqlVendasPARCEIRO_VENDA: TIntegerField;
    sqlVendasCLIENTE_VENDA: TIntegerField;
    sqlVendasPROPRIEDADE_VENDA: TIntegerField;
    sqlVendasNOMECLIENTE_VENDA: TStringField;
    sqlVendasDATA_VENDA: TDateField;
    sqlVendasEXCLUSAO_VENDA: TDateField;
    sqlVendasHORA_VENDA: TStringField;
    sqlVendasFATURA_VENDA: TFMTBCDField;
    sqlVendasDESCONTO_VENDA: TFMTBCDField;
    sqlVendasDESCON_ESP_VENDA: TFMTBCDField;
    sqlVendasCPAGAMENTO_VENDA: TFMTBCDField;
    sqlVendasCHAVE_VENDA: TStringField;
    sqlVendasCAIXA_VENDA: TFMTBCDField;
    sqlVendasTIPO_PRECO_VENDA: TStringField;
    sqlVendasCFOP_VENDA: TStringField;
    sqlVendasNOTAFISCAL_VENDA: TIntegerField;
    sqlVendasSERIE_VENDA: TStringField;
    sqlVendasCONFIRMA_VENDA: TStringField;
    sqlVendasEMISSAO_VENDA: TDateField;
    sqlVendasDATASAIDA_VENDA: TDateField;
    sqlVendasHORASAIDA_VENDA: TStringField;
    sqlVendasVALORNOTA_VENDA: TFMTBCDField;
    sqlVendasBASEICMS_VENDA: TFMTBCDField;
    sqlVendasICMS_VENDA: TFMTBCDField;
    sqlVendasBASEICMSSB_VENDA: TFMTBCDField;
    sqlVendasICMSSB_VENDA: TFMTBCDField;
    sqlVendasIPI_VENDA: TFMTBCDField;
    sqlVendasTRANSPORTA_VENDA: TIntegerField;
    sqlVendasPESOBRUTO_VENDA: TFMTBCDField;
    sqlVendasPESOLIQUIDO_VENDA: TFMTBCDField;
    sqlVendasOBSERVACAO_VENDA: TStringField;
    sqlVendasPARCELAS_VENDA: TIntegerField;
    sqlVendasVALOR01_VENDA: TFMTBCDField;
    sqlVendasVALOR02_VENDA: TFMTBCDField;
    sqlVendasVALOR03_VENDA: TFMTBCDField;
    sqlVendasVALOR04_VENDA: TFMTBCDField;
    sqlVendasVALOR05_VENDA: TFMTBCDField;
    sqlVendasVALOR06_VENDA: TFMTBCDField;
    sqlVendasVALOR07_VENDA: TFMTBCDField;
    sqlVendasVALOR08_VENDA: TFMTBCDField;
    sqlVendasVALOR09_VENDA: TFMTBCDField;
    sqlVendasVALOR10_VENDA: TFMTBCDField;
    sqlVendasVALOR11_VENDA: TFMTBCDField;
    sqlVendasVALOR12_VENDA: TFMTBCDField;
    sqlVendasVALOR13_VENDA: TFMTBCDField;
    sqlVendasVALOR14_VENDA: TFMTBCDField;
    sqlVendasVALOR15_VENDA: TFMTBCDField;
    sqlVendasVENCIMEN01_VENDA: TDateField;
    sqlVendasVENCIMEN02_VENDA: TDateField;
    sqlVendasVENCIMEN03_VENDA: TDateField;
    sqlVendasVENCIMEN04_VENDA: TDateField;
    sqlVendasVENCIMEN05_VENDA: TDateField;
    sqlVendasVENCIMEN06_VENDA: TDateField;
    sqlVendasVENCIMEN07_VENDA: TDateField;
    sqlVendasVENCIMEN08_VENDA: TDateField;
    sqlVendasVENCIMEN09_VENDA: TDateField;
    sqlVendasVENCIMEN10_VENDA: TDateField;
    sqlVendasVENCIMEN11_VENDA: TDateField;
    sqlVendasVENCIMEN12_VENDA: TDateField;
    sqlVendasVENCIMEN13_VENDA: TDateField;
    sqlVendasVENCIMEN14_VENDA: TDateField;
    sqlVendasVENCIMEN15_VENDA: TDateField;
    sqlVendasCOMISSAO_VENDA: TFMTBCDField;
    sqlVendasTIPO_VENDA: TStringField;
    sqlVendasTIPO1_VENDA: TStringField;
    sqlVendasDEVOLVE_VENDA: TStringField;
    sqlVendasENTREGA_VENDA: TStringField;
    sqlVendasTROCO_VENDA: TFMTBCDField;
    sqlVendasFRETE_VENDA: TFMTBCDField;
    sqlVendasSEGURO_VENDA: TFMTBCDField;
    sqlVendasOUTROS_VENDA: TFMTBCDField;
    sqlVendasROMANEIO_VENDA: TIntegerField;
    sqlVendasPLACASAIDA_VENDA: TStringField;
    sqlVendasESTADOSAIDA_VENDA: TStringField;
    sqlVendasNRFATURA_VENDA: TIntegerField;
    sqlVendasAUTONOMO_VENDA: TStringField;
    sqlVendasEXPORTADO_VENDA: TStringField;
    sqlVendasTIPO_DOC_VENDA: TStringField;
    sqlVendasINFOADICIONA_VENDA: TStringField;
    sqlVendasMACHO_4_VENDA: TIntegerField;
    sqlVendasMACHO_4_12_VENDA: TIntegerField;
    sqlVendasMACHO_12_24_VENDA: TIntegerField;
    sqlVendasMACHO_24_36_VENDA: TIntegerField;
    sqlVendasMACHO_M36_VENDA: TIntegerField;
    sqlVendasFEMEA_4_VENDA: TIntegerField;
    sqlVendasFEMEA_4_12_VENDA: TIntegerField;
    sqlVendasFEMEA_12_24_VENDA: TIntegerField;
    sqlVendasFEMEA_24_36_VENDA: TIntegerField;
    sqlVendasFEMEA_M36_VENDA: TIntegerField;
    sqlVendasBUFALOS_VENDA: TIntegerField;
    sqlVendasCAPRINOS_VENDA: TIntegerField;
    sqlVendasOVINOS_VENDA: TIntegerField;
    sqlVendasSUINOS_VENDA: TIntegerField;
    sqlVendasTROCA_VENDA: TIntegerField;
    sqlVendasOS_VENDA: TIntegerField;
    sqlVendasCNPJCLIENTE_VENDA: TStringField;
    sqlVendasRGCLIENTE_VENDA: TStringField;
    sqlVendasENDCLIENTE_VENDA: TStringField;
    sqlVendasBAICLIENTE_VENDA: TStringField;
    sqlVendasCIDCLIENTE_VENDA: TStringField;
    sqlVendasESTCLIENTE_VENDA: TStringField;
    sqlVendasCEPCLIENTE_VENDA: TStringField;
    sqlVendasFONECLIENTE_VENDA: TStringField;
    sqlVendasCARNE_VENDA: TStringField;
    sqlVendasUSUARIO_VENDA: TStringField;
    sqlVendasUSUALTERA_VENDA: TStringField;
    sqlVendasCOD_EMPRESA: TIntegerField;
    sqlVendasOBS1: TStringField;
    sqlVendasOBS2: TStringField;
    sqlVendasOBS3: TStringField;
    sqlVendasOBS4: TStringField;
    sqlVendasNF_SERV: TIntegerField;
    function Apura_Receb(Arg: TDate): Double;
    function Ent_Cheq(Arg: String): Double;
    function Saida_Cheq(Arg: String): Double;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIniciarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ExecutaQRY(Query: TSQLQuery; Comando: String; pGrava: Boolean = False);
    procedure edtFuncionarioExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    xOpnvd, xOpncp, Tur2, Tur1, Ger1, Dev2, Cai2, Chc1, Fat1: String;
    Ncx1, xCaixa: Word;
    Dat1, Dat2, Dat3: TDate;
    AVI1, PRE1, PRA1, CVN1, OUT1, ENT1, TTR1, TEN1, DEV1, TCH1, Rec1, Rec2, Tax1, Rec3, Rec4, Car1, Sal1, Ret1, Ent2: Double;
    Cai1, Ok1: Integer;
  end;

var
  frmCx05: TfrmCx05;

implementation

uses udmProgs, DateUtils, uDmPrincipal, uGlobal, uDmCx01;

{$R *.dfm}

procedure TfrmCx05.btnSairClick(Sender: TObject);
begin
   if not btnSair.Enabled then
      Exit;

   Close;
end;

procedure TfrmCx05.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmCx05.btnIniciarClick(Sender: TObject);
var Cha1, VAR9, Sql1: String;
    Ok1: Boolean;
    VAR3, Var11: TDate;
    Atu1, VAR5, VAR6, VAR8, VAR10, Var12: Double;
    Acc1: Integer;
    Cursor1: TCursor;
begin
   if edtProxCaixa.Date = 0 then
   begin
      Application.MessageBox('Data do próximo caixa inválida','Atenção',MB_ICONERROR);
      edtProxCaixa.SetFocus;
      Exit;
   end;

   if DayOfTheWeek(edtProxCaixa.Date) = 7 then
   if Application.MessageBox('Tem certeza que o próximo dia é DOMINGO?','Atenção',MB_ICONEXCLAMATION+MB_YESNO) = mrNo then
   begin
      edtProxCaixa.SetFocus;
      Exit;
   end;


   //   ^ fim das validações ^

   Dat2 := edtProxCaixa.Date;

   //   pesquisa se já existe este caixa

   Sql1 := 'select p_caixa.* from p_caixa where SUBSTRING(p_caixa.chave_caixa from 1 for 11) = ' + QuotedStr(edtProxCaixa.Text + '_' + edtProxTurno.Text + '_');

   {sqlGeral       .DatabaseName := dtmDados.dtbDados.DataPath;
   sqlTipoPagam   .DatabaseName := dtmDados.dtbDados.DataPath;
   sqlReceber     .DatabaseName := dtmDados.dtbDados.DataPath;
   sqlCaiMov      .DatabaseName := dtmDados.dtbDados.DataPath;
   sqlGravaVendas .DatabaseName := dtmDados.dtbDados.DataPath;}

   ExecutaQRY(sqlGeral,Sql1);

   if not sqlGeral.IsEmpty then
   begin
      Application.MessageBox('Caixa já existe             ','Atenção',MB_ICONERROR);
      edtProxCaixa.SetFocus;
      Exit;
   end;

   //   verifica se o caixa e inferior

   Ok1 := False;

   if edtProxCaixa.Date < StrToDate(edtDataCaixa.Text)  then
      Ok1 := True;

   if (edtProxCaixa.Date = StrToDate(edtDataCaixa.Text)) and (edtProxTurno.Value < StrToInt(edtTurnoCaixa.Text)) then
      Ok1 := True;

   if Ok1 then
   begin
      Application.MessageBox('Caixa com data inferior','Atenção',MB_ICONERROR);
      edtProxCaixa.SetFocus;
      Exit;
   end;


   if Application.MessageBox('Confirma o encerramento?                    ','Confirmação',MB_ICONQUESTION+MB_YESNO) = mrNo then
      Exit;

   btnIniciar    .Enabled := False;
   btnSair       .Enabled := False;
   Panel3        .Enabled := False;
   lblEncerrando .Visible := True;

   Cursor1       := Screen.Cursor;
   Screen.Cursor := crHourGlass;

   Self.Refresh;

   Atu1 := 0;
   AVI1 := 0; CAR1 := 0; PRE1 := 0; PRA1 := 0; CVN1 := 0; OUT1 := 0; ENT1 := 0;
   TTR1 := 0; TEN1 := 0; DEV1 := 0; TCH1 := 0;

   //    atualiza arquivo de vendas

   Sql1 := 'select p_vendas.* from p_vendas where p_vendas.chave_venda is null and p_vendas.caixa_venda = ' + edtNumCaixa.Text;

   ExecutaQRY(sqlVendas,Sql1);

   if not sqlVendas.IsEmpty then
   begin
      while not sqlVendas.Eof do
      begin
         if sqlVendasEXCLUSAO_VENDA.AsDateTime > 0 then
         begin
            sqlVendas.Next;
            Continue;   
         end;

         VAR3  := sqlVendasDATA_VENDA.Value;
         VAR5  := sqlVendasFATURA_VENDA.AsFloat;
         VAR6  := sqlVendasDESCONTO_VENDA.AsFloat;
         VAR8  := sqlVendasCPAGAMENTO_VENDA.AsFloat;
         VAR9  := sqlVendasENTREGA_VENDA.Value;
         VAR10 := sqlVendasTROCO_VENDA.AsFloat;

         if Ger1 = 'F' then
         begin
            Var11 := sqlVendasVENCIMEN01_VENDA.AsDateTime;
            Var12 := sqlVendasVALOR01_VENDA.asFloat;
         end
         else
         begin
            Var11 := 0;
            Var12 := 0;
         end;

         //   verifica se operacao e venda, se nao for nao considera

         if Pos(sqlVendasCFOP_VENDA.Value, xOpnvd) > 0 then
            Acc1 := 1
         else
            Acc1 := 0;

         //   verifica se nao e devolucao

         if (Pos(sqlVendasTIPO_DOC_VENDA.Value, '3_4_5') > 0) and (Dev2 = 'F') then
            Acc1 := 1;

         //   obtem o resumo do caixa

         Sql1 := 'select codigo_CPAGAMENTO, descricao_CPAGAMENTO, caixa_CPAGAMENTO from P_CPAGAMENTO where codigo_CPAGAMENTO = ' + FloatToStr(Var8);

         ExecutaQRY(sqlTipoPagam,Sql1);

         if not sqlTipoPagam.IsEmpty then
            Cai1 := sqlTipoPagam.FieldByName('CAIXA_CPAGAMENTO').Value
         else
            Cai1 := 6;

         if Acc1 = 0 then
         begin
{
if (sqlVendasCOD_VENDA.Value = 1363) or (sqlVendasCOD_VENDA.Value = 1364) or (sqlVendasCOD_VENDA.Value = 1365) or (sqlVendasCOD_VENDA.Value = 1379) or (sqlVendasCOD_VENDA.Value = 1380) or (sqlVendasCOD_VENDA.Value = 1381) or (sqlVendasCOD_VENDA.Value = 1382) or (sqlVendasCOD_VENDA.Value = 1383) then
begin
   ShowMessage(sqlVendasExclusao.AsString + ' - ' + sqlVendasTipo_DOC.AsString + ' - ' + sqlVendasCod_VENDA.AsString);
end;
}
{
            if (sqlVendasEXCLUSAO.Value <> null) and (Pos(sqlVendasTIPO_DOC.AsString,'3_4_5') = 0) then
               Dev1 := Dev1 + (Var5 - Var6)
            else if Pos(sqlVendasTIPO_DOC.Value,'3_4_5') > 0 then
               Dev1 := Dev1 + (Var5 - Var6)
            else
}

            if Pos(sqlVendasTIPO_DOC_VENDA.Value,'3_4_5') > 0 then
               Dev1 := Dev1 + (Var5 - Var6)
            else
            begin
               if Var9 <> 'T' then
               begin
                  if Cai1 = 1 then
                     Avi1 := Avi1 + (Var5 - Var6)
                  else if Cai1 = 2 then
                     Car1 := Car1 + (Var5 - Var6)
                  else if Cai1 = 3 then
                  begin
                     Pre1 := Pre1 + (Var5 - Var6);

                     if Var11 = Var3 then
                     begin
                        Ent1 := Ent1 + Var12;
                        Pre1 := Pre1 - Var12;
                     end;
                  end
                  else if Cai1 = 4 then
                  begin
                     Cvn1 := Cvn1 + (Var5 - Var6);

                     if Var11 = Var3 then
                     begin
                        Ent1 := Ent1 + Var12;
                        Cvn1 := Cvn1 - Var12;
                     end;
                  end
                  else if Cai1 = 5 then
                  begin
                     Pra1 := Pra1 + (Var5 - Var6);

                     if Var11 = Var3 then
                     begin
                        Ent1 := Ent1 + Var12;
                        Pra1 := Pra1 - Var12;
                     end;
                  end
                  else if Cai1 = 7 then
                     //   não faz nada
                  else
                  begin
                     Out1 := Out1 + (Var5 - Var6);

                     if Var11 = Var3 then
                     begin
                        Ent1 := Ent1 + Var12;
                        Out1 := Out1 + Var12;
                     end;
                  end;
               end
               else
               begin
                  Ten1 := Ten1 + (Var5 - Var6);
                  TTR1 := TTR1 + (Var10 - (Var5 - Var6));
               end;
            end;
         end;

         if Var9 = 'T' then
            Sql1 := 'update p_vendas set chave_venda = ' + QuotedStr('ENTREGA') + ' where p_vendas.codigo_venda = ' + sqlVendasCODIGO_VENDA.AsString
         else
            Sql1 := 'update p_vendas set chave_venda = ' + QuotedStr(FormatDateTime('dd/mm/yy',Dat1) + '_' + Tur1 + '_' + edtFuncionario.Text) + ' where p_vendas.codigo_venda = ' + sqlVendasCODIGO_VENDA.AsString;

         ExecutaQRY(sqlGravaVendas,Sql1,True);


         if sqlVendasEXCLUSAO_VENDA.Value > 0 then
         begin
            Sql1 := 'update p_vendas set chave_venda = ' + QuotedStr(FormatDateTime('dd/mm/yy',Dat1) + '_' + Tur1 + '_' + Trim(edtFuncionario.Text) + '-DEV') + ' where p_vendas.codigo_venda = ' + sqlVendasCODIGO_VENDA.AsString;

            ExecutaQRY(sqlGravaVendas,Sql1,True);
         end;

         sqlVendas.Next;
      end;  // while/do

      if Cai2 = '2' then
         Ent1 := Apura_Receb(Dat3);

      //   atualiza arquivo de caixa

      Cha1 := sqlCaixa.FieldByName('chave_caixa').Value;
      Tch1 := sqlCaixa.FieldByName('SALDOINICHEQUE').Value + (Pre1 + Ent_Cheq(Cha1)) - Saida_Cheq(Cha1);

      Sql1 := 'update p_caixa set CHAVE_CAIXA = ' + QuotedStr(TRIM(sqlCaixa.FieldByName('CHAVE_CAIXA').Value + edtFuncionario.Text)) + ', ' +
              'CODIGO_CAIXA = '         + QuotedStr(NumeroCaixa1) + ', ' +
              'DINHEIRO_TUR_CAIXA = '   + PontoDecimal(AVI1) + ', ' +
              'CARTAO_TUR_CAIXA = '     + PontoDecimal(CAR1) + ', ' +
              'PREDATADO_TUR_CAIXA = '  + PontoDecimal(PRE1) + ', ' +
              'CONVENIO_TUR_CAIXA = '   + PontoDecimal(CVN1) + ', ' +
              'PRAZO_TUR_CAIXA = '      + PontoDecimal(PRA1) + ', ' +
              'OUTRASTUR_CAIXA = '      + PontoDecimal(OUT1) + ', ' +
              'ENTRADA_TUR_CAIXA = '    + PontoDecimal(ENT1) + ', ' +
              'ENTREGA_CAIXA = '        + PontoDecimal(TEN1) + ', ' +
              'TROCO_ENTREGA_CAIXA = '  + PontoDecimal(TTR1) + ', ' +
              'DEVOLUCAOTUR_CAIXA = '   + PontoDecimal(DEV1) + ', ' +
              'CHEQUES_CAIXA = '        + PontoDecimal(TCH1);

      if Cai2 = '2' then
      begin
         Sql1 := Sql1 + ',PRESTRECEBIDA_CAIXA = ' + PontoDecimal(REC1) + ', ' +
                        'PRESTATRAZO_CAIXA = '    + PontoDecimal(REC2) + ', ' +
                        'TAXA_CAIXA = '           + PontoDecimal(TAX1) + ', ' +
                        'PRESTANT_CAIXA = '       + PontoDecimal(REC3);
      end;

      //Sql1 := Sql1 + ' where length(Trim(both " " from p_caixa.chave_caixa)) = 11 and p_caixa.codigo_caixa = ' + IntToStr(xCaixa);
      Sql1 := Sql1 + ' where SUBSTRING(p_caixa.chave_caixa from 12 for 10) = ' + QuotedStr('') + ' and p_caixa.codigo_caixa = ' + NumeroCaixa1;

      ExecutaQRY(sqlCaixa, Sql1, True);


      // calcula o saldo de transporte se virar o saldo de um dia para o outro
      // nao deduz o troco da entrega pois o mesmo ja e deduzido na consulta

      if Fat1 = 'S' then
      begin
         Atu1 := SAL1 + ENT2 + AVI1 + ENT1 - RET1;

         if Cai2 = '2' then
            ATU1 := ATU1 + CAR1 + REC1 + REC2 + TAX1 + REC3;

         if Chc1 = 'S' then
            ATU1 := Atu1 + PRE1;
      end
      else
         ATU1 := 0;

      // faz a abertura do novo caixa
//      Sql1 := 'insert into caixa (chave, saldo_inic, caixa, sd_ini_che) values (' + QuotedStr(FormatDateTime('dd/mm/yy',Dat2) + '_' + edtProxTurno.Text + '_') + ', ' + QuotedStr(PontoDecimal(Atu1)) + ', ' + QuotedStr(IntToStr(xCaixa)) + ', ' + QuotedStr(PontoDecimal(TCH1)) +')';
//      ExecutaQRY(sqlCaixa, Sql1, True);

      //   coloca em aberto as entregas
//      Sql1 := 'update vendas set chave = " "  where vendas.chave = "ENTREGA" and vendas.caixa = ' + IntToStr(xCaixa);
//      ExecutaQRY(sqlGravaVendas, Sql1, True);
   end
   else
   begin
      Sql1 := 'update p_caixa set CHAVE_CAIXA = ' + QuotedStr(TRIM(sqlCaixa.FieldByName('CHAVE_CAIXA').AsString + edtFuncionario.Text));
      //Sql1 := Sql1 + ' where length(Trim(both " " from p_caixa.chave_caixa)) = 11 and p_caixa.codigo_caixa = ' + IntToStr(xCaixa);
      Sql1 := Sql1 + ' where SUBSTRING(p_caixa.chave_caixa from 12 for 10) = '''' and p_caixa.codigo_caixa = ' + QuotedStr(NumeroCaixa1);

      ExecutaQRY(sqlCaixa, Sql1, True);
   end;

   if Fat1 = 'S' then
   begin
      Atu1 := SAL1 + ENT2 + AVI1 + ENT1 - RET1;
   end
   else
      ATU1 := 0;

   //   faz a abertura do novo caixa
   Sql1 := 'insert into p_caixa (COD_EMPRESA, chave_caixa, SALDO_INICIAL_CAIXA, codigo_caixa, SALDOINICHEQUE) values (' + QuotedStr(CodigoEmpresa1) + ', ' + QuotedStr(FormatDateTime('dd/mm/yy',Dat2) + '_' + edtProxTurno.Text + '_') + ', ' + QuotedStr(PontoDecimal(Atu1)) + ', ' + QuotedStr(NumeroCaixa1) + ', ' + QuotedStr(PontoDecimal(TCH1)) +')';
   ExecutaQRY(sqlCaixa, Sql1, True);

   //   coloca em aberto as entregas
   Sql1 := 'update p_vendas set chave_venda = ' + QuotedStr(' ') + '  where p_vendas.chave_venda = ' + QuotedStr('ENTREGA') + ' and p_vendas.codigo_venda = ' + QuotedStr(NumeroCaixa1);
   ExecutaQRY(sqlGravaVendas, Sql1, True);

   Screen.Cursor         := Cursor1;
   lblEncerrando.Visible := False;

   Self.Refresh;

   Application.MessageBox('Concluído','',MB_ICONINFORMATION);

   btnSair.Enabled := True;
   btnSair.Click;
end;

procedure TfrmCx05.FormShow(Sender: TObject);
var Sql1: String;
begin
   dmProgs.cdsEmpresa.Open;

   Fat1 := dmProgs.cdsEmpresaCAIXA_FAT_EMP.Value;
   Ger1 := dmProgs.cdsEmpresaENTRAD_GER_EMP.Value;
   Dev2 := dmProgs.cdsEmpresaDEV_CAIXA_EMP.Value;
   Cai2 := dmProgs.cdsEmpresaREL_CAIXA_EMP.Value;
   Chc1 := dmProgs.cdsEmpresaCHEQ_CASH_EMP.Value;

   // abre arquivos de dados
   //tblECF.Open;

   // alimenta variável de caixa
                                          
   //xCaixa := tblECFCAIXA.Value;

   {if xCaixa = null then
      xCaixa := 1
   else
      xCaixa := tblECFCAIXA.Value;

   if xCaixa = 0 then
      xCaixa := 1;}

   //tblECF.Close;


   //Sql1 := 'select p_caixa.* from p_caixa where length(Trim(both " " from p_caixa.chave_caixa)) = 11 and p_caixa.codigo_caixa = ' + IntToStr(xCaixa);
   Sql1 := 'select * from p_caixa where SUBSTRING(p_caixa.chave_caixa from 12 for 10) = '''' and p_caixa.codigo_caixa = ' + NumeroCaixa1;

   ExecutaQRY(sqlCaixa,Sql1);

   if sqlCaixa.IsEmpty then
   begin
      Application.MessageBox(PChar('Caixa: ' + NumeroCaixa1 + ', não foi localizado'),'Atenção',MB_ICONERROR);
      Close;
      Exit;
   end;

   //   forma o caixa atual

   Dat1 := StrToDate(Copy(sqlCaixa.FieldByName('Chave_caixa').Value,1,8));
   Dat3 := Dat1;

   Tur1 := Copy(sqlCaixa.FieldByName('Chave_caixa').Value,10,1);

   edtDataCaixa.Text  := DateToStr(Dat1);
   edtTurnoCaixa.Text := Tur1;
   edtNumCaixa.Text   := IntToStr(sqlCaixa.FieldByName('codigo_caixa').value);

   //   obtem os valores fixos

   Ent2 := sqlCaixa.FieldByName('entradas_caixa')      .AsFloat +
           sqlCaixa.FieldByName('RECOUTALOJA_CAIXA')   .AsFloat +
           sqlCaixa.FieldByName('PRESTRECEBIDA_CAIXA') .AsFloat +
           sqlCaixa.FieldByName('PRESTATRAZO_CAIXA')   .AsFloat +
           sqlCaixa.FieldByName('taxa_caixa')          .AsFloat +
           sqlCaixa.FieldByName('PRESTANT_CAIXA')      .AsFloat;

   Ret1 := sqlCaixa.FieldByName('RETIRADAS_CAIXA')     .AsFloat +
           sqlCaixa.FieldByName('REMECABANCO_CAIXA')   .AsFloat +
           sqlCaixa.FieldByName('TRANSGERENCIA_CAIXA') .AsFloat +
           sqlCaixa.FieldByName('DESPESADIA_CAIXA')    .AsFloat +
           sqlCaixa.FieldByName('DINHEIRO_CAIXA')      .AsFloat +
           sqlCaixa.FieldByName('RETCARTAO_CAIXA')     .AsFloat;

   Sal1 := sqlCaixa.FieldByName('SALDO_INICIAL_CAIXA').AsFloat;

   //   sugere o proximo caixa

   if Tur1 = '1' then
   begin
      Dat2 := Dat1 + 1;
      Tur2 := '1';
   end
   else if Tur1 = '2' then
   begin
      Dat2 := Dat1;
      Tur2 := '3'
   end
   else if Tur1 = '3' then
   begin
      Dat2 := Dat1;
      Tur2 := '4'
   end
   else if Tur1 = '4' then
   begin
      Dat2 := Dat1 + 1;
      Tur2 := '1';
   end
   else
   begin
      Dat2 := xData;
      Tur2 := '1';
   end;

   edtProxCaixa.Date  := Dat2;
   edtProxTurno.Value := StrToInt(Tur2);
     
   Rec1 := 0;
   Rec2 := 0;
   Tax1 := 0;
   Rec3 := 0;
   Rec4 := 0;
   Car1 := 0;

   Ncx1 := StrToInt(NumeroCaixa1);

   //xOpnvd := Vcfo();

   Ok1 := 0;
end;

function TfrmCx05.Apura_Receb(Arg: TDate): Double;
var xDat1, Sql1: String;
    Ret1: Double;
begin
   if Arg = 0 then
   begin
      Result := 0;
      Exit;
   end;


   Ret1 := 0;
   xDat1 := FormatDateTime('dd/mm/yy',Arg);

   Sql1 := 'select receber.valor, receber.vencimento, receber.movimento, receber.caixa, receber.tipo, receber.valorpago from receber where receber.movimento = #' + DateToStr(Arg) + '# ' +
           'and receber.caixa = ' + NumeroCaixa1 + ' and not (receber.movimento is null)';

   ExecutaQRY(sqlreceber, Sql1);

   if not sqlReceber.IsEmpty then
   begin
      sqlReceber.First;
      
      while not sqlreceber.Eof do
      begin

         //   verifica se e entrada

         if sqlReceber.FieldByName('TIPO_DOCUMENTO_RECEBER').Value = 13 then
         begin
            Ret1 := Ret1 + sqlReceber.FieldByName('VALORPAGO_RECEBER').Value;

            sqlReceber.Next;
            Continue;
         end;

         //   prestacoes atrasadas

         if sqlReceber.FieldByName('MOVIMENTO_RECEBER').Value >= sqlReceber.FieldByName('vencimento').Value then
         begin
            //   prestacao do mes

            if Copy(sqlReceber.FieldByName('VENCIMENTO_RECEBER').AsString,4,5) = Copy(xDat1,4,5) then
            begin
               //   prestacoes do mes

               if sqlReceber.FieldByName('VALORPAGO_RECEBER').Value < sqlReceber.FieldByName('VALOR_RECEBER').Value then
                  Rec1 := Rec1 + sqlReceber.FieldByName('VALORPAGO_RECEBER').Value
               else
                  Rec1 := Rec1 + sqlReceber.FieldByName('VALOR_RECEBER').Value;

               // prestacao do mes anterior
               if sqlReceber.FieldByName('VENCIMENTO_RECEBER').Value < FirstDayofMonth(Arg) then
               begin
                  if sqlReceber.FieldByName('VALORPAGO_RECEBER').Value < sqlReceber.FieldByName('VALOR_RECEBER').Value then
                     Rec2 := Rec2 + sqlReceber.FieldByName('VALORPAGO_RECEBER').Value
                  else
                     Rec2 := Rec2 + sqlReceber.FieldByName('VALOR_RECEBER').Value;
               end;

               //   juros
               if sqlReceber.FieldByName('VALORPAGO_RECEBER').Value > sqlReceber.FieldByName('VALOR_RECEBER').Value then
                  Tax1 := Tax1 + (sqlReceber.FieldByName('VALORPAGO_RECEBER').Value - sqlReceber.FieldByName('VALOR_RECEBER').Value);

               // prestacoes antecipadas
               if sqlReceber.FieldByName('MOVIMENTO_RECEBER').Value < sqlReceber.FieldByName('VENCIMENTO_RECEBER').Value  then
               begin

                  //   prestacoes antecipadas dentro do mes
                  if sqlReceber.FieldByName('VENCIMENTO_RECEBER').Value <= LastDayOfMonth(sqlReceber.FieldByName('MOVIMENTO_RECEBER').Value) then
                  begin //   verifica se foi recebido com valor menor
                     if sqlReceber.FieldByName('VALORPAGO_RECEBER').Value < sqlReceber.FieldByName('VALOR_RECEBER').Value then
                        Rec1 := Rec1 + sqlReceber.FieldByName('VALORPAGO_RECEBER').Value;
                  end
                  else
                     Rec1 := Rec1 + sqlReceber.FieldByName('VALOR_RECEBER').Value;

                  //   prestacoes antecipadas do mes seguinte

                  if sqlReceber.FieldByName('VENCIMENTO_RECEBER').Value > LastDayofMonth(sqlReceber.FieldByName('MOVIMENTO_RECEBER').Value) then
                  begin //   verifica se foi recebido com valor menor
                     if sqlReceber.FieldByName('VALORPAGO_RECEBER').Value < sqlReceber.FieldByName('VALOR_RECEBER').Value then
                        Rec3 := Rec3 + sqlReceber.FieldByName('VALORPAGO_RECEBER').Value
                     else
                        Rec3 := Rec3 + sqlReceber.FieldByName('VALOR_RECEBER').Value;
                  end;
               end;
            end;
         end;

         sqlReceber.Next;
      end;    // while
   end;

   Result := Ret1;
end;

function TfrmCx05.Ent_Cheq(Arg: String): Double;
// PARAMETROS:
// ARG = CHAVE DO CAIXA NO FORMATO: DD/MM/AA_1
   var xRet: Double;
   Sql1: String;
begin
   xRet := 0;

   Sql1 := 'select p_caixa_mov.* from p_caixa_mov where p_caixa_mov.TIPO_CAIXAMOV = ' + QuotedStr('E') + ' and p_caixa_mov.CHAVE_CAIXAMOV = ' + QuotedStr(Copy(Arg,1,10))  +
           ' and p_caixa_mov.CAIXA_CAIXAMOV = ' + NumeroCaixa1 + ' and p_caixa_mov.TIPO_PAG_CAIXAMOV = ' + QuotedStr('C');

   ExecutaQRY(sqlCaiMov,Sql1);

   if not sqlCaiMov.IsEmpty then
   begin
      while not sqlCaiMov.Eof do
      begin
         xRet := xRet + sqlCaiMov.FieldByName('VALOR_CAIXAMOV').Value;

         sqlCaiMov.Next;
      end;    // while
   end;

   Result := xRet;
end;

function TfrmCx05.Saida_Cheq(Arg: String): Double;
// PARAMETROS:
// ARG = CHAVE DO CAIXA NO FORMATO: DD/MM/AA_1
   var xRet: Double;
   Sql1: String;
begin
   xRet := 0;

   Sql1 := 'select p_caixa_mov.* from p_caixa_mov where p_caixa_mov.TIPO_CAIXAMOV = ' + QuotedStr('R') + ' and p_caixa_mov.CHAVE_CAIXAMOV = ' + QuotedStr(Copy(Arg,1,10))+
           ' and p_caixa_mov.CAIXA_CAIXAMOV = ' + QuotedStr(NumeroCaixa1) + ' and p_caixa_mov.TIPO_PAG_CAIXAMOV = ' + QuotedStr('C');

   ExecutaQRY(sqlCaiMov,Sql1);

   if not sqlCaiMov.IsEmpty then
   begin
      while not sqlCaiMov.Eof do
      begin
         xRet := xRet + sqlCaiMov.FieldByName('VALOR_CAIXAMOV').Value;

         sqlCaiMov.Next;
      end;    // while
   end;

   Result := xRet;
end;

procedure TfrmCx05.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Key := #0;
      Perform(WM_NextDlgCtl,0,0);
   end;
end;

procedure TfrmCx05.ExecutaQRY(Query: TSQLQuery; Comando: String; pGrava: Boolean = False);
begin
   if pGrava then
   begin
      Query.Close;
      Query.SQL.Clear;
      Query.SQL.Text := Comando;
      Query.ExecSQL;
   end
   else
   begin
      Query.Close;
      Query.SQL.Clear;
      Query.SQL.Text := Comando;
      Query.Open;
   end;
end;


procedure TfrmCx05.edtFuncionarioExit(Sender: TObject);
begin
   if btnSair.Focused then
      Exit;

   if edtFuncionario.Text <> NomeUsuario1 then
   begin
      Application.MessageBox('Funcionário informado está incorreto', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtFuncionario.SetFocus;
      Abort;
   end;
end;

procedure TfrmCx05.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
