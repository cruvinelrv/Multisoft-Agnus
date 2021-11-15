{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> FIN018 (FIN014)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Flávio Scariot
 DATA DE CONCEPÇÃO    --> 02/04/2007
 FINALIDADE           --> Tela auxiliar de Baixar Contas a Receber
 COMENTARIO           -->

 *******************************************************************************}

unit uFn0202_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, JvExStdCtrls, JvEdit, JvValidateEdit,
  StdCtrls, ExtCtrls, FMTBcd, DBClient, Provider, DB, SqlExpr, Mask,
  DBCtrls;

type
  TfrmFn0202_01 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TJvValidateEdit;
    Edit4: TJvValidateEdit;
    Edit5: TJvValidateEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    lb: TLabel;
    edtValorTitulos: TJvValidateEdit;
    edtSelecionados: TJvValidateEdit;
    Label7: TLabel;
    RadioGroup1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Seleciona_Titulo;
    procedure Retorna_Titulo;
    procedure Filtrar_Duplicata;
    procedure Seta_DataSet(cdsTabela : TClientDataSet);
    
  public
    { Public declarations }
    ValorTitulos : Double;
    ContaTitulos : Integer;
    BaixaTitulos : Boolean;
    Sql1 : String;
    SomaVencidas,
    Dias_Bloq_Emp,
    SomaFechadas,
    SomaAVencer : Double;
  end;

var
  frmFn0202_01: TfrmFn0202_01;

implementation

uses uDmPrincipal, uFn0202, uGlobal, udmFn0202, uProcess;

{$R *.dfm}

procedure TfrmFn0202_01.FormShow(Sender: TObject);
begin
   Filtrar_Duplicata; // Procedure
end;

procedure TfrmFn0202_01.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmFn0202_01.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      frmFn0202_01.Tag := 1;

      if BaixaTitulos = True then
         Retorna_Titulo; // procedure

      Close;
   end;

   if Key = 77 then // = letra M ou m
      Seleciona_Titulo; // procedure

   if Key = 70 then  // F
      RadioGroup1.Visible := True;   
end;

procedure TfrmFn0202_01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if frmFn0202_01.Tag = 0 then
      dmFn0202.cdsGrid.Close;
end;

procedure TfrmFn0202_01.Seleciona_Titulo;
begin
   if not dmFn0202.cdsGrid.IsEmpty then
   begin
      if dmFn0202.cdsGridTIPO_BAIXA.AsString = 'P' then
      begin
         Application.MessageBox('Título com pagamento parcial, deve ser  pago individualmente', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Exit;
      end;

      if dmFn0202.cdsGridTIPO_BAIXA.AsString <> 'T' then
      begin
         dmFn0202.cdsGrid.Edit;

         if dmFn0202.cdsGridSELECIONADO.AsString = '' then
         begin
            ValorTitulos := ValorTitulos + dmFn0202.cdsGridSALDO.AsFloat;

            ContaTitulos := ContaTitulos + 1;

            dmFn0202.cdsGridSELECIONADO.AsString := 'X';

            dmFn0202.cdsGrid.Next;
         end
         else
         begin
            ValorTitulos := ValorTitulos - dmFn0202.cdsGridSALDO.AsFloat;

            ContaTitulos := ContaTitulos -1;

            dmFn0202.cdsGridSELECIONADO.AsString := '';

            dmFn0202.cdsGrid.Next;
         end;

         edtSelecionados.Value := ContaTitulos;

         edtValorTitulos.Value := ValorTitulos;

         if edtSelecionados.Value > 1 then
            BaixaTitulos := True
         else
            BaixaTitulos := False;

      end;
   end;
end;

procedure TfrmFn0202_01.Retorna_Titulo;
begin
   if not dmFn0202.cdsGrid.IsEmpty then
   begin
      dmFn0202.cdsGrid.First;
      
      frmProcess := TfrmProcess.Create(Self);
      frmProcess.JvgLabel1.Caption := 'Processando...';
      frmProcess.ProgressBar1.Max := dmFn0202.cdsGrid.RecordCount;
      frmProcess.Show;

      DBGrid1.DataSource.Enabled := False;

      while not dmFn0202.cdsGrid.Eof do
      begin
         frmProcess.ProgressBar1.Position := frmProcess.ProgressBar1.Position + 1;
         frmProcess.Refresh;

         if dmFn0202.cdsGridSELECIONADO.AsString = 'X' then
         begin
            dmFn0202.cdsBaixaTitulos.Append;

            dmFn0202.cdsBaixaTitulosDUPLICATA.AsString       := dmFn0202.cdsGridDUPLICATA.AsString;

            dmFn0202.cdsBaixaTitulosCODIGO_CLIENTE.AsInteger := dmFn0202.cdsGridCODIGO_CLIENTE.AsInteger;

            dmFn0202.cdsBaixaTitulosEMISSAO.AsDateTime       := dmFn0202.cdsGridEMISSAO.AsDateTime;

            dmFn0202.cdsBaixaTitulosVENCIMENTO.AsDateTime    := dmFn0202.cdsGridVENCIMENTO.AsDateTime;

            dmFn0202.cdsBaixaTitulosPREVISAO.AsDateTime      := dmFn0202.cdsGridPREVISAO.AsDateTime;

            dmFn0202.cdsBaixaTitulosVALOR.AsFloat            := dmFn0202.cdsGridSALDO.AsFloat;

            dmFn0202.cdsBaixaTitulosNOME_CLIENTE.AsString    := dmFn0202.cdsGridNOME_CLIENTE.AsString;

            dmFn0202.cdsBaixaTitulosDIAS_ATRASO.AsFloat      := dmFn0202.cdsGridDIAS_ATRASO.AsFloat;

            dmFn0202.cdsBaixaTitulosJUROS.AsFloat            := dmFn0202.cdsGridVALOR_JUROS.AsFloat;

            dmFn0202.cdsBaixaTitulos.Post;
         end;

         dmFn0202.cdsGrid.Next;
      end;

      frmProcess.Release;
      frmProcess := nil;
      
      DBGrid1.DataSource.Enabled := True;
   end;
end;

procedure TfrmFn0202_01.Filtrar_Duplicata;
begin
   Dias_Bloq_Emp:= 0;
   SomaVencidas := 0;
   SomaAVencer  := 0;
   ValorTitulos := 0;
   ContaTitulos := 0;
   SomaFechadas := 0;
   BaixaTitulos := False;

   dmFn0202.cdsBaixaTitulos.Open;

   dmFn0202.cdsGrid.Open;

   if dmFn0202.cdsBaixaTitulos.RecordCount > 0 then
      dmFn0202.cdsBaixaTitulos.EmptyDataSet;

   if dmFn0202.cdsGrid.RecordCount > 0 then
      dmFn0202.cdsGrid.EmptyDataSet;

   if (RadioGroup1.ItemIndex = 0) or (RadioGroup1.ItemIndex = -1) then
   begin
      dmFn0202.cdsReceberLocal.Close;
      dmFn0202.cdsReceberLocal.Params.ParamByName('CLIENTE').AsString    := frmFn0202.edtCliente.Text
      ;
      dmFn0202.cdsReceberLocal.Params.ParamByName('EMPRESA').AsString    := CodigoEmpresa1;
      dmFn0202.cdsReceberLocal.Params.ParamByName('TIPO_BAIXA').AsString := 'T'; // o que for diferente
      dmFn0202.cdsReceberLocal.Open;

      Seta_DataSet(dmFn0202.cdsReceberLocal);
   end;

   if RadioGroup1.ItemIndex = 1 then
   begin
      dmFn0202.cdsReceberLocal.Close;
      dmFn0202.cdsReceberLocal.Params.ParamByName('CLIENTE').AsString    := frmFn0202.edtCliente.Text;
      dmFn0202.cdsReceberLocal.Params.ParamByName('EMPRESA').AsString    := CodigoEmpresa1;
      dmFn0202.cdsReceberLocal.Params.ParamByName('TIPO_BAIXA').AsString := ''; // o que for diferente
      dmFn0202.cdsReceberLocal.Open;

      Seta_DataSet(dmFn0202.cdsReceberLocal);
   end;

   if RadioGroup1.ItemIndex = 2 then
   begin
      dmFn0202.cdsReceberLocal2.Close;
      dmFn0202.cdsReceberLocal2.Params.ParamByName('CLIENTE').AsString   := frmFn0202.edtCliente.Text;
      dmFn0202.cdsReceberLocal2.Params.ParamByName('EMPRESA').AsString    := CodigoEmpresa1;
      dmFn0202.cdsReceberLocal2.Params.ParamByName('TIPO_BAIXA').AsString := 'T'; // o que for igual
      dmFn0202.cdsReceberLocal2.Open;

      Seta_DataSet(dmFn0202.cdsReceberLocal2);
   end;


   // caucula o valor dos Títulos vencidos
   dmFn0202.cdsPesquisa2.Close;
   dmFn0202.cdsPesquisa2.Params.ParamByName('CLIENTE').AsString := frmFn0202.edtCliente.Text;
   dmFn0202.cdsPesquisa2.Params.ParamByName('VENCIMENTO').AsDate := DataSystem1;
   dmFn0202.cdsPesquisa2.Open;

   if dmFn0202.cdsPesquisa2.RecordCount > 0 then
   begin
      dmFn0202.cdsPesquisa2.First;
      while not dmFn0202.cdsPesquisa2.Eof do
      begin
         if dmFn0202.cdsPesquisa2TIPO_BAIXA_RECEBER.AsString <> 'T' then
         begin
            if dmFn0202.cdsPesquisa2VALORPAGO_RECEBER.AsFloat <= dmFn0202.cdsPesquisa2VALOR_RECEBER.AsFloat then
               SomaVencidas := SomaVencidas + (dmFn0202.cdsPesquisa2VALOR_RECEBER.AsFloat - dmFn0202.cdsPesquisa2VALORPAGO_RECEBER.AsFloat);
         end;

         dmFn0202.cdsPesquisa2.Next;
      end;

      Edit3.Text := FloatToStr(SomaVencidas);
   end
   else
      Edit3.Value := 0;

   // caucula o valor dos Títulos a vencer
   dmFn0202.cdsPesquisa3.Close;
   dmFn0202.cdsPesquisa3.Params.ParamByName('CLIENTE').AsString := frmFn0202.edtCliente.Text;
   dmFn0202.cdsPesquisa3.Params.ParamByName('VENCIMENTO').AsDate := DataSystem1;
   dmFn0202.cdsPesquisa3.Open;

   if dmFn0202.cdsPesquisa3.RecordCount > 0 then
   begin
      dmFn0202.cdsPesquisa3.First;
      while not dmFn0202.cdsPesquisa3.Eof do
      begin
         if dmFn0202.cdsPesquisa3TIPO_BAIXA_RECEBER.AsString <> 'T' then
         begin
            if dmFn0202.cdsPesquisa3VALORPAGO_RECEBER.AsFloat <= dmFn0202.cdsPesquisa3VALOR_RECEBER.AsFloat then
               SomaAVencer := SomaAVencer + dmFn0202.cdsPesquisa3.FieldByName('VALOR_RECEBER').AsFloat;
         end;

         dmFn0202.cdsPesquisa3.Next;
      end;

      Edit4.Text := FloatToStr(SomaAVencer);
   end;

   Edit5.Text := FloatToStr(SomaVencidas + SomaAVencer);

   if RadioGroup1.ItemIndex = 2 then
   begin
      // caucula o valor dos Títulos fechados
      dmFn0202.cdsPesquisa4.Close;
      dmFn0202.cdsPesquisa4.Params.ParamByName('CLIENTE').AsInteger := frmFn0202.edtCliente.Field.AsInteger;
      dmFn0202.cdsPesquisa4.Params.ParamByName('TIPO_BAIXA').AsString := 'T'; // traz tudo que for igual a 'T'
      dmFn0202.cdsPesquisa4.Open;

      if dmFn0202.cdsPesquisa4.RecordCount > 0 then
      begin
         while not dmFn0202.cdsPesquisa4.Eof do
         begin
            SomaFechadas := SomaFechadas + dmFn0202.cdsPesquisa4VALORPAGO_RECEBER.AsFloat;

            dmFn0202.cdsPesquisa4.Next;
         end;

         Label3.Caption := 'Fechados';

         Edit3.Text := FloatToStr(SomaFechadas);
      end;
   end
   else
      Label3.Caption := 'Vencidos';

   DBGrid1.SetFocus;
end;

procedure TfrmFn0202_01.RadioGroup1Click(Sender: TObject);
begin
   Filtrar_Duplicata;

   RadioGroup1.ItemIndex := -1;
   RadioGroup1.Visible   := False;
end;

procedure TfrmFn0202_01.Seta_DataSet(cdsTabela: TClientDataSet);
begin
   if not cdsTabela.IsEmpty then
   begin
      // busca taxa de juros para calculo e dias de tolerancia para cobrança de juros
      dmFn0202.cdsEmpresa.Close;
      dmFn0202.cdsEmpresa.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
      dmFn0202.cdsEmpresa.Open;

      dmFn0202.cdsBaixaTitulos.Open;

      while not cdsTabela.Eof do
      begin
         dmFn0202.cdsGrid.Append;

         dmFn0202.cdsGridDUPLICATA.AsString := cdsTabela.FieldByName('DUPLICATA_RECEBER').AsString;

         dmFn0202.cdsGridEMISSAO.AsDateTime := cdsTabela.FieldByName('EMISSAO_RECEBER').AsDateTime;

         dmFn0202.cdsGridVENCIMENTO.AsDateTime := cdsTabela.FieldByName('VENCIMENTO_RECEBER').AsDateTime;

         if cdsTabela.FieldByName('PREVISAO_RECEBER').AsString <> '' then
            dmFn0202.cdsGridPREVISAO.AsDateTime := cdsTabela.FieldByName('PREVISAO_RECEBER').AsDateTime;

         dmFn0202.cdsGridVALOR.AsFloat := cdsTabela.FieldByName('VALOR_RECEBER').AsFloat;

         dmFn0202.cdsGridVALORPAGO.AsFloat := cdsTabela.FieldByName('VALORPAGO_RECEBER').AsFloat;

         dmFn0202.cdsGridCODIGO_PORTADOR.AsInteger := cdsTabela.FieldByName('CODIGO_PORTADOR_RECEBER').AsInteger;

         if cdsTabela.FieldByName('TIPO_BAIXA_RECEBER').AsString = 'A' then // A = Titulo aberto
            dmFn0202.cdsGridTIPO_BAIXA.AsString := ''
         else
            dmFn0202.cdsGridTIPO_BAIXA.AsString := cdsTabela.FieldByName('TIPO_BAIXA_RECEBER').AsString;

         if cdsTabela.FieldByName('VALORPAGO_RECEBER').AsFloat <= cdsTabela.FieldByName('VALOR_RECEBER').AsFloat then
            dmFn0202.cdsGridSALDO.AsFloat := cdsTabela.FieldByName('VALOR_RECEBER').AsFloat - cdsTabela.FieldByName('VALORPAGO_RECEBER').AsFloat;

         dmFn0202.cdsGridCODIGO_CLIENTE.AsInteger := cdsTabela.FieldByName('CODIGO_CLIENTE_RECEBER').AsInteger;

         dmFn0202.cdsGridNOME_CLIENTE.AsString := cdsTabela.FieldByName('NOME_CLIENTE').AsString;

         dmFn0202.cdsGridCOD_EMPRESA.AsString := cdsTabela.FieldByName('COD_EMPRESA').AsString;

         if (cdsTabela.FieldByName('TIPO_BAIXA_RECEBER').AsString <> 'T') and (dmFn0202.cdsGridSALDO.AsFloat > 0) then
         begin
            if cdsTabela.FieldByName('PARCIAL_RECEBER').AsFloat > 0 then
            begin
               if cdsTabela.FieldByName('DATA_BASE_RECEBER').AsFloat < (DataSystem1 - dmFn0202.cdsEmpresaDIAS_BLOQ_EMP.AsFloat) then
               begin
                  dmFn0202.cdsGridDIAS_ATRASO.AsFloat := ArredondarDecimal((DataSystem1 - dmFn0202.cdsEmpresaDIAS_BLOQ_EMP.AsFloat), 0);

                  dmFn0202.cdsGridDIAS_ATRASO.AsFloat := dmFn0202.cdsGridDIAS_ATRASO.AsFloat - cdsTabela.FieldByName('DATA_BASE_RECEBER').AsFloat;

                  if dmFn0202.cdsGridDIAS_ATRASO.AsFloat > 0 then
                  begin
                     if dmFn0202.cdsEmpresaTIPO_JUR_EMP.AsString = 'C' then // juro composto ou simples
                        dmFn0202.cdsGridVALOR_JUROS.AsFloat := Calcula_Juro_Composto(dmFn0202.cdsGridDIAS_ATRASO.AsFloat, dmFn0202.cdsGridSALDO.AsFloat, dmFn0202.cdsEmpresaJUROS_EMP.AsFloat)
                     else
                        dmFn0202.cdsGridVALOR_JUROS.AsFloat := Calcula_Juro_Simples(dmFn0202.cdsGridDIAS_ATRASO.AsFloat, dmFn0202.cdsGridSALDO.AsFloat, dmFn0202.cdsEmpresaJUROS_EMP.AsFloat);
                  end;
               end;
            end
            else
            begin
               if cdsTabela.FieldByName('VENCIMENTO_RECEBER').AsFloat < (DataSystem1 - dmFn0202.cdsEmpresaDIAS_BLOQ_EMP.AsFloat) then
               begin
                  dmFn0202.cdsGridDIAS_ATRASO.AsFloat := ArredondarDecimal((DataSystem1 - dmFn0202.cdsEmpresaDIAS_BLOQ_EMP.AsFloat), 0);

                  dmFn0202.cdsGridDIAS_ATRASO.AsFloat := dmFn0202.cdsGridDIAS_ATRASO.AsFloat - cdsTabela.FieldByName('VENCIMENTO_RECEBER').AsFloat;

                  if dmFn0202.cdsGridDIAS_ATRASO.AsFloat > 0 then
                  begin
                     if dmFn0202.cdsEmpresaTIPO_JUR_EMP.AsString = 'C' then // juro composto ou simples
                        dmFn0202.cdsGridVALOR_JUROS.AsFloat := Calcula_Juro_Composto(dmFn0202.cdsGridDIAS_ATRASO.AsFloat, dmFn0202.cdsGridSALDO.AsFloat, dmFn0202.cdsEmpresaJUROS_EMP.AsFloat)
                     else
                        dmFn0202.cdsGridVALOR_JUROS.AsFloat := Calcula_Juro_Simples(dmFn0202.cdsGridDIAS_ATRASO.AsFloat, dmFn0202.cdsGridSALDO.AsFloat, dmFn0202.cdsEmpresaJUROS_EMP.AsFloat);
                  end;
               end;
            end;
         end;

         dmFn0202.cdsGrid.Post;

         cdsTabela.Next;
      end;

      dmFn0202.cdsGrid.First;
   end;
end;

end.
