unit uRL0330;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, DB, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppParameter, ppModule,
  raCodMod, ppVar, ppStrtch, ppSubRpt, ppRegion, Grids, DBGrids, Mask,
  DBCtrls, ComCtrls, JvExComCtrls, JvProgressBar, JvDBProgressBar;

type
  TfrmRL0330 = class(TForm)
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    rgpOrdem: TRadioGroup;
    rgpSeparador: TRadioGroup;
    edtSecao: TJvValidateEdit;
    edtGrupoIni: TJvValidateEdit;
    edtGrupoFim: TJvValidateEdit;
    edtCST: TJvValidateEdit;
    ComboBox1: TComboBox;
    edtFabricante: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    ppReportFabricante: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine2: TppLine;
    ppLabel20: TppLabel;
    ppLine3: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel35: TppLabel;
    ppLine4: TppLine;
    ppLine8: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    cbxGrade: TCheckBox;
    cbxZerados: TCheckBox;
    cbxVenda: TCheckBox;
    cbxCusto: TCheckBox;
    cbxCompra: TCheckBox;
    ppReportGrupo: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLine13: TppLine;
    ppLabel83: TppLabel;
    ppLine17: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppLabel103: TppLabel;
    ppLine20: TppLine;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine15: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine11: TppLine;
    ppSubReportGrade: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand6: TppDetailBand;
    ppLabel54: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel58: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel36: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppSubReportGradeF: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppReportNenhum: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLine5: TppLine;
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
    ppLabel39: TppLabel;
    ppLabel41: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppSubReportGrade2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel76: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel77: TppLabel;
    ppLine6: TppLine;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLine12: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppDBText45: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine7: TppLine;
    ppSummaryBand5: TppSummaryBand;
    ppLine9: TppLine;
    ppDBText26: TppDBText;
    ppReportGrupoM2: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLine10: TppLine;
    ppLabel48: TppLabel;
    ppLine14: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel55: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText46: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine16: TppLine;
    ppDBText47: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLabel72: TppLabel;
    ppLine18: TppLine;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLine19: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine21: TppLine;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppLabel73: TppLabel;
    rgpModelo: TRadioGroup;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure edtSecaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtGrupoIniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtGrupoFimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtFabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure ppLabel2GetText(Sender: TObject; var Text: String);
    procedure ppLabel4GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure edtCSTExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgpModeloClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0330: TfrmRL0330;

implementation

uses uGlobal, uConsulta, udmRL0330, uProcesso2;

{$R *.dfm}

procedure TfrmRL0330.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0330.FormShow(Sender: TObject);
begin
   edtSecao.SetFocus;
end;

procedure TfrmRL0330.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmRL0330.SpeedButton1Click(Sender: TObject);
begin
   edtSecao.SetFocus;

   ConsultaSecao(edtSecao);
end;

procedure TfrmRL0330.SpeedButton2Click(Sender: TObject);
begin
   edtGrupoIni.SetFocus;

   ConsultaGrupoProdutos(edtGrupoIni);
end;

procedure TfrmRL0330.SpeedButton3Click(Sender: TObject);
begin
   edtGrupoFim.SetFocus;

   ConsultaGrupoProdutos(edtGrupoFim);
end;

procedure TfrmRL0330.SpeedButton4Click(Sender: TObject);
begin
   edtFabricante.SetFocus;

   ConsultaFornecedor(edtFabricante);
end;

procedure TfrmRL0330.edtSecaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtSecao, Edit1, 'P_SECAO', 'CODIGO_SECAO', 'DESCRICAO_SECAO') then
      begin
         edtSecao.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0330.edtGrupoIniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtGrupoIni, Edit2, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
      begin
         if edtGrupoIni.Value = 0 then
         begin
            edtFabricante.SetFocus;
            Exit;
         end;
         
         edtGrupoIni.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0330.edtGrupoFimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtGrupoFim, Edit3, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
      begin
         edtGrupoFim.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0330.edtFabricanteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 13 then
   begin
      if not Busca_Dados(edtFabricante, Edit4, 'E_CLIENTE', 'CODIGO_CLIENTE', 'NOME_CLIENTE') then
      begin
         edtFabricante.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0330.btnImprimirClick(Sender: TObject);
begin
   dmRL0330.cdsConsulta.Close;

   frmProcesso2 := TfrmProcesso2.Create(Application);
   frmProcesso2.Show;
   frmProcesso2.Refresh;

   if edtSecao.Value > 0 then
   begin
      dmRL0330.cdsConsulta.Params.ParamByName('SECAO1').AsInteger := edtSecao.Value;
      dmRL0330.cdsConsulta.Params.ParamByName('SECAO2').AsInteger := edtSecao.Value;
   end
   else
   begin
      dmRL0330.cdsConsulta.Params.ParamByName('SECAO1').AsInteger := 0;
      dmRL0330.cdsConsulta.Params.ParamByName('SECAO2').AsInteger := 999999999;
   end;

   if edtGrupoIni.Value > 0 then
      dmRL0330.cdsConsulta.Params.ParamByName('GRUPO1').AsInteger := edtGrupoIni.Value
   else
      dmRL0330.cdsConsulta.Params.ParamByName('GRUPO1').AsInteger := 0;

   if edtGrupoFim.Value > 0 then
      dmRL0330.cdsConsulta.Params.ParamByName('GRUPO2').AsInteger := edtGrupoFim.Value
   else
      dmRL0330.cdsConsulta.Params.ParamByName('GRUPO2').AsInteger := 999999999;

   if edtFabricante.Value > 0 then
   begin
      dmRL0330.cdsConsulta.Params.ParamByName('FABRICA1').AsInteger := edtFabricante.Value;
      dmRL0330.cdsConsulta.Params.ParamByName('FABRICA2').AsInteger := edtFabricante.Value;
   end
   else
   begin
      dmRL0330.cdsConsulta.Params.ParamByName('FABRICA1').AsInteger := 0;
      dmRL0330.cdsConsulta.Params.ParamByName('FABRICA2').AsInteger := 999999999;
   end;

   if edtCST.EditText <> '' then
   begin
      if ComboBox1.ItemIndex = 0 then
      begin
         dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_DEN1').AsString := edtCST.EditText;
         dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_DEN2').AsString := edtCST.EditText;
      end
      else
      begin
         dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_DEN1').AsString := '0';
         dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_DEN2').AsString := '999';
      end;

      if ComboBox1.ItemIndex = 1 then
      begin
         dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_FOR1').AsString := edtCST.EditText;
         dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_FOR2').AsString := edtCST.EditText;
      end
      else
      begin
         dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_FOR1').AsString := '0';
         dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_FOR2').AsString := '999';
      end;
   end
   else
   begin
      dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_DEN1').AsString := '0';
      dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_DEN2').AsString := '999';
      dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_FOR1').AsString := '0';
      dmRL0330.cdsConsulta.Params.ParamByName('TRIBUT_FOR2').AsString := '999';
   end;

   // imprime também o estoque zerado

   if cbxZerados.Checked = True then
      dmRL0330.cdsConsulta.Params.ParamByName('ESTOQUE').AsInteger := 0
   else
      dmRL0330.cdsConsulta.Params.ParamByName('ESTOQUE').AsInteger := 1;

   dmRL0330.cdsConsulta.Open;

   frmProcesso2.Close;

   if dmRL0330.cdsConsulta.IsEmpty then
   begin
      Application.MessageBox('Dados não encontrados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Exit;
   end;

   if rgpOrdem.ItemIndex = 0 then
      dmRL0330.cdsConsulta.IndexFieldNames    := 'codigo_produto';

   if rgpOrdem.ItemIndex = 1 then
      dmRL0330.cdsConsulta.IndexFieldNames    := 'descricao_produto';

   if rgpOrdem.ItemIndex = 2 then
      dmRL0330.cdsConsulta.IndexFieldNames    := 'local_estoque_produto';

   if rgpOrdem.ItemIndex = 3 then
      dmRL0330.cdsConsulta.IndexFieldNames   := 'fabrica_produto';

   if rgpSeparador.ItemIndex = 0 then
      dmRL0330.cdsConsulta.IndexFieldNames   := 'grupo_produto';

   if rgpSeparador.ItemIndex = 2 then // com nehun tipo de separador
   begin
      ppDBText23.DisplayFormat  := MascaraPrecoVenda1;
      ppDBCalc13.DisplayFormat  := MascaraPrecoVenda1;

      ppDBText25.DisplayFormat  := MascaraPrecoCompra1;
      ppDBCalc15.DisplayFormat  := MascaraPrecoCompra1;

      if cbxVenda.Checked = False then
      begin
         ppLabel12.Visible  := False;
         ppDBText23.Visible := False;
         ppDBCalc13.Visible := False;
      end
      else
      begin
         ppLabel12.Visible  := True;
         ppDBText23.Visible := True;
         ppDBCalc13.Visible := True;
      end;

      if cbxCusto.Checked = False then
      begin
         ppLabel13.Visible  := False;
         ppDBText24.Visible := False;
         ppDBCalc14.Visible := False;
      end
      else
      begin
         ppLabel13.Visible  := True;
         ppDBText24.Visible := True;
         ppDBCalc14.Visible := True;
      end;

      if cbxCompra.Checked = False then
      begin
         ppLabel14.Visible  := False;
         ppDBText25.Visible := False;
         ppDBCalc15.Visible := False;
      end
      else
      begin
         ppLabel14.Visible  := True;
         ppDBText25.Visible := True;
         ppDBCalc15.Visible := True;
      end;

      if cbxGrade.Checked = True then
         ppSubReportGrade2.Visible := True
      else
         ppSubReportGrade2.Visible := False;

      ppReportNenhum.Print;
      Exit;
   end;

   if rgpSeparador.ItemIndex = 0 then // separa por grupo
   begin
      ppDBText31.DisplayFormat  := MascaraPrecoVenda1;
      ppDBCalc1.DisplayFormat   := MascaraPrecoVenda1;
      ppDBCalc1.DisplayFormat   := MascaraPrecoVenda1;
      ppDBText40.DisplayFormat  := MascaraPrecoVenda1;
      ppDBCalc20.DisplayFormat  := MascaraPrecoVenda1;
      ppDBCalc17.DisplayFormat  := MascaraPrecoVenda1;

      ppDBText33.DisplayFormat := MascaraPrecoCompra1;
      ppDBCalc3.DisplayFormat  := MascaraPrecoCompra1;
      ppDBCalc7.DisplayFormat  := MascaraPrecoCompra1;
      ppDBText42.DisplayFormat := MascaraPrecoCompra1;
      ppDBCalc22.DisplayFormat  := MascaraPrecoCompra1;
      ppDBCalc19.DisplayFormat  := MascaraPrecoCompra1;


      if cbxVenda.Checked = False then
      begin
         ppLabel96.Visible  := False;
         ppDBText31.Visible := False;
         ppDBCalc1.Visible  := False;
         ppDBCalc5.Visible  := False;
         ppLabel66.Visible  := False;
         ppDBText40.Visible := False;
         ppDBCalc20.Visible  := False;
         ppDBCalc17.Visible  := False;
      end
      else
      begin
         ppLabel96.Visible  := True;
         ppDBText31.Visible := True;
         ppDBCalc1.Visible  := True;
         ppDBCalc5.Visible  := True;
         ppLabel66.Visible  := True;
         ppDBText40.Visible := True;
         ppDBCalc20.Visible  := True;
         ppDBCalc17.Visible  := True;
      end;

      if cbxCusto.Checked = False then
      begin
         ppLabel97.Visible  := False;
         ppDBText32.Visible := False;
         ppDBCalc2.Visible  := False;
         ppDBCalc6.Visible  := False;
         ppLabel67.Visible  := False;
         ppDBText41.Visible := False;
         ppDBCalc21.Visible  := False;
         ppDBCalc18.Visible  := False;
      end
      else
      begin
         ppLabel97.Visible  := True;
         ppDBText32.Visible := True;
         ppDBCalc2.Visible  := True;
         ppDBCalc6.Visible  := True;
         ppLabel67.Visible  := True;
         ppDBText41.Visible := True;
         ppDBCalc21.Visible  := True;
         ppDBCalc18.Visible  := True;
      end;

      if cbxCompra.Checked = False then
      begin
         ppLabel98.Visible  := False;
         ppDBText33.Visible := False;
         ppDBCalc3.Visible  := False;
         ppDBCalc7.Visible  := False;
         ppLabel68.Visible  := False;
         ppDBText42.Visible := False;
         ppDBCalc22.Visible  := False;
         ppDBCalc19.Visible  := False;
      end
      else
      begin
         ppLabel98.Visible  := True;
         ppDBText33.Visible := True;
         ppDBCalc3.Visible  := True;
         ppDBCalc7.Visible  := True;
         ppLabel68.Visible  := True;
         ppDBText42.Visible := True;
         ppDBCalc22.Visible  := True;
         ppDBCalc19.Visible  := True;
      end;

      if cbxGrade.Checked = True then
      begin
         ppSubReportGrade.Visible := True;
         ppSubReport1.Visible     := True;
      end
      else
      begin
         ppSubReportGrade.Visible := False;
         ppSubReport1.Visible     := False;
      end;

      if rgpModelo.ItemIndex = 0 then
         ppReportGrupo.Print
      else
         ppReportGrupoM2.Print;
         
      Exit;
   end;

   if rgpSeparador.ItemIndex = 1 then // separa por Fabricante
   begin
      ppDBText8.DisplayFormat := MascaraPrecoVenda1;
      ppDBCalc9.DisplayFormat := MascaraPrecoVenda1;

      ppDBText10.DisplayFormat := MascaraPrecoCompra1;
      ppDBCalc11.DisplayFormat  := MascaraPrecoCompra1;

      if cbxVenda.Checked = False then
      begin
         ppLabel32.Visible := False;
         ppDBText8.Visible := False;
         ppDBCalc9.Visible := False;
      end
      else
      begin
         ppLabel32.Visible := True;
         ppDBText8.Visible := True;
         ppDBCalc9.Visible := True;
      end;

      if cbxCusto.Checked = False then
      begin
         ppLabel33.Visible  := False;
         ppDBText9.Visible  := False;
         ppDBCalc10.Visible := False;
      end
      else
      begin
         ppLabel33.Visible  := True;
         ppDBText9.Visible  := True;
         ppDBCalc10.Visible := True;
      end;

      if cbxCompra.Checked = False then
      begin
         ppLabel34.Visible  := False;
         ppDBText10.Visible := False;
         ppDBCalc11.Visible := False;
      end
      else
      begin
         ppLabel34.Visible  := True;
         ppDBText10.Visible := True;
         ppDBCalc11.Visible := True;
      end;

      if cbxGrade.Checked = True then
         ppSubReportGradeF.Visible := True
      else
         ppSubReportGradeF.Visible := False;

      ppReportFabricante.Print;
      Exit;
   end;
end;

procedure TfrmRL0330.FormCreate(Sender: TObject);
begin
   dmRL0330 := TdmRL0330.Create(Self);
end;

procedure TfrmRL0330.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0330.ppLabel2GetText(Sender: TObject; var Text: String);
begin
   Text := Edit2.Text;
end;

procedure TfrmRL0330.ppLabel4GetText(Sender: TObject; var Text: String);
begin
   Text := Edit3.Text;
end;

procedure TfrmRL0330.ppLabel6GetText(Sender: TObject; var Text: String);
begin
   Text := Edit4.Text;
end;

procedure TfrmRL0330.edtCSTExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtCST.EditText <> '' then
   begin
      dmRL0330.qryTemporaria.Close;
      dmRL0330.qryTemporaria.SQL.Clear;
      dmRL0330.qryTemporaria.SQL.Add('select s.codigo_situacao, s.descricao_situacao '+
                                     'from E_SITUACAO s '+
                                     'where s.codigo_situacao = ' + edtCST.EditText);

      dmRL0330.qryTemporaria.Open;

      if dmRL0330.qryTemporaria.IsEmpty then
      begin
         Application.MessageBox('O C.S.T. informado é inválido', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtCST.SetFocus;
         Exit;
      end;
   end;
end;

procedure TfrmRL0330.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0330.rgpModeloClick(Sender: TObject);
begin
   if rgpModelo.ItemIndex = 1 then
   begin
      rgpSeparador.ItemIndex := 0;
      rgpSeparador.Enabled   := False;
   end
   else
      rgpSeparador.Enabled   := True;
end;

procedure TfrmRL0330.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

end.
