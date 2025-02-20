unit uRL0511;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExMask, JvToolEdit, Mask,
  JvExStdCtrls, JvEdit, JvValidateEdit, ppBands, ppClass, ppCtrls,
  ppPrnabl, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmRL0511 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cbxTipo: TComboBox;
    edtFORCLI: TJvValidateEdit;
    SpeedButton6: TSpeedButton;
    Edit1: TEdit;
    edtCFOP: TMaskEdit;
    Edit2: TEdit;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cbxTipoRel: TComboBox;
    edtProduto: TJvValidateEdit;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
    rptRel_Sintetico: TppReport;
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
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    rptRel_Analitico: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine5: TppLine;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel22: TppLabel;
    ppDBText16: TppDBText;
    ppLabel24: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLabel27: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel31: TppLabel;
    ppDBText17: TppDBText;
    ppLabel32: TppLabel;
    ppDBText18: TppDBText;
    ppLabel33: TppLabel;
    ppDBText19: TppDBText;
    ppLabel34: TppLabel;
    ppDBText20: TppDBText;
    ppLabel35: TppLabel;
    ppDBText21: TppDBText;
    ppLabel36: TppLabel;
    ppDBText22: TppDBText;
    ppLabel37: TppLabel;
    ppDBText23: TppDBText;
    ppLabel38: TppLabel;
    ppDBText24: TppDBText;
    ppLabel40: TppLabel;
    ppDBText25: TppDBText;
    ppLabel41: TppLabel;
    ppDBText26: TppDBText;
    ppLabel42: TppLabel;
    ppDBText27: TppDBText;
    ppLabel43: TppLabel;
    ppDBText28: TppDBText;
    ppLabel44: TppLabel;
    ppDBText29: TppDBText;
    ppLabel47: TppLabel;
    ppDBText30: TppDBText;
    ppLabel48: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLabel49: TppLabel;
    ppLine7: TppLine;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel50: TppLabel;
    ppDBText33: TppDBText;
    ppLabel51: TppLabel;
    ppDBText34: TppDBText;
    ppLabel52: TppLabel;
    ppDBText35: TppDBText;
    ppLabel53: TppLabel;
    ppDBText36: TppDBText;
    ppLabel54: TppLabel;
    ppDBText37: TppDBText;
    ppLabel55: TppLabel;
    ppDBText38: TppDBText;
    ppLabel56: TppLabel;
    ppDBText39: TppDBText;
    ppLabel57: TppLabel;
    ppDBText40: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel29: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel30: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine6: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cbxTipoChange(Sender: TObject);
    procedure edtFORCLIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblParam1GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0511: TfrmRL0511;

implementation

uses udmRL0511, uConsulta, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0511.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0511.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0511.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);

      Key := #0;
   end;
end;

procedure TfrmRL0511.FormCreate(Sender: TObject);
begin
   dmRL0511 := TdmRL0511.Create(Self);

   Label1.Caption := cbxTipo.Text;
end;

procedure TfrmRL0511.cbxTipoChange(Sender: TObject);
begin
   Label1.Caption := cbxTipo.Text;
end;

procedure TfrmRL0511.edtFORCLIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if cbxTipo.ItemIndex = 0  then
      begin
         if not Busca_Dados(edtFORCLI, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
         begin
            edtFORCLI.SetFocus;
            Exit;
         end
         else
         begin
            if Tipo_Cliente = 0 then
            begin
               Edit1.Clear;
               Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               edtFORCLI.SetFocus;
               Exit;
            end;
         end;
      end;

      if cbxTipo.ItemIndex = 1  then
      begin
         if not Busca_Dados(edtFORCLI, Edit1, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
         begin
            edtFORCLI.SetFocus;
            Exit;
         end
         else
         begin
            if Tipo_Cliente = 2 then
            begin
               Edit1.Clear;
               Application.MessageBox('O c�digo informado � inv�lido', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               edtFORCLI.SetFocus;
               Exit;
            end;
         end;
      end;
   end;
end;

procedure TfrmRL0511.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtProduto, Edit3, 'P_PRODUTOS', 'CODIGO_PRODUTO', 'DESCRICAO_PRODUTO') then
      begin
         edtProduto.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0511.edtCFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtCFOP, Edit2, 'E_NATUREZA', 'CODIGO_NAT', 'DESCRICAO_NAT') then
      begin
         edtCFOP.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0511.SpeedButton6Click(Sender: TObject);
begin
   edtFORCLI.SetFocus;

   if cbxTipo.ItemIndex = 0 then
      ConsultaFornecedor(edtFORCLI)
   else
      ConsultaCliente(edtFORCLI);
end;

procedure TfrmRL0511.SpeedButton3Click(Sender: TObject);
begin
   edtCFOP.SetFocus;

   ConsultaCFOP(edtCFOP);
end;

procedure TfrmRL0511.SpeedButton2Click(Sender: TObject);
begin
   edtProduto.SetFocus;

   ConsultaProduto(edtProduto);
end;

procedure TfrmRL0511.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informe a data inicial do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0511.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informe a data final do per�odo', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0511.btnImprimirClick(Sender: TObject);
begin
   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   dmRL0511.cdsConsulta.Close;

   if edtFORCLI.Value > 0 then
   begin
      dmRL0511.cdsConsulta.Params.ParamByName('FORCLI1').AsInteger := edtFORCLI.Value;
      dmRL0511.cdsConsulta.Params.ParamByName('FORCLI2').AsInteger := edtFORCLI.Value;
   end
   else
   begin
      dmRL0511.cdsConsulta.Params.ParamByName('FORCLI1').AsInteger := 0;
      dmRL0511.cdsConsulta.Params.ParamByName('FORCLI2').AsInteger := 999999999;
   end;

   if edtCFOP.Text <> '' then
   begin
      dmRL0511.cdsConsulta.Params.ParamByName('CFOP1').AsString := edtCFOP.Text;
      dmRL0511.cdsConsulta.Params.ParamByName('CFOP2').AsString := edtCFOP.Text;
   end
   else
   begin
      dmRL0511.cdsConsulta.Params.ParamByName('CFOP1').AsString := '1';
      dmRL0511.cdsConsulta.Params.ParamByName('CFOP2').AsString := '9999';
   end;

   dmRL0511.cdsConsulta.Params.ParamByName('ENTRADA1').AsDate := edtDataIni.Date;
   dmRL0511.cdsConsulta.Params.ParamByName('ENTRADA2').AsDate := edtDataFim.Date;

   if edtProduto.Value > 0 then
   begin
      dmRL0511.cdsConsulta.Params.ParamByName('PRODUTO1').AsInteger := edtProduto.Value;
      dmRL0511.cdsConsulta.Params.ParamByName('PRODUTO2').AsInteger := edtProduto.Value;
   end
   else
   begin
      dmRL0511.cdsConsulta.Params.ParamByName('PRODUTO1').AsInteger := 0;
      dmRL0511.cdsConsulta.Params.ParamByName('PRODUTO2').AsInteger := 999999999;
   end;

   dmRL0511.cdsConsulta.Open;

   dmRL0511.cdsConsulta.IndexFieldNames := 'codigo_compra; entrada_compra';

   frmProcesso2.Close;

   if cbxTipoRel.ItemIndex = 0 then
      rptRel_Sintetico.Print
   else
      rptRel_Analitico.Print;

end;

procedure TfrmRL0511.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0511.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Entradas do Per�odo de ' + edtDataIni.Text + ' a '+ edtDataFim.Text; 
end;

procedure TfrmRL0511.lblParam1GetText(Sender: TObject; var Text: String);
begin
   if cbxTipoRel.ItemIndex = 0 then
      Text := '             - Sint�tico'
   else
      Text := '             - Anal�tico';
end;

procedure TfrmRL0511.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0511.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
