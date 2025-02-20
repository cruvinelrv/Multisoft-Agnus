unit uRL0317;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, Grids, DBGrids;

type
  TfrmRL0317 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    chkImpPrecoCusto: TCheckBox;
    chkApenasEstoque: TCheckBox;
    grpTipoPreco: TRadioGroup;
    grpModelo: TRadioGroup;
    edtGrupoInicial: TJvValidateEdit;
    edtGrupoFinal: TJvValidateEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    edtNomeGrupoInicial: TEdit;
    edtNomeGrupoFinal: TEdit;
    edtFornecedor: TJvValidateEdit;
    SpeedButton3: TSpeedButton;
    edtNomeFornecedor: TEdit;
    grpSequencia: TRadioGroup;
    dtsProdutos: TDataSource;
    dbpRelatorio: TppDBPipeline;
    rptModelo1: TppReport;
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
    ppFooterBand2: TppFooterBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel1: TppLabel;
    rptModelo2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    lblEmpresa2: TppLabel;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    lblParam_2_1: TppLabel;
    lblParam_2_2: TppLabel;
    ppLine4: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel25: TppLabel;
    ppFooterBand1: TppFooterBand;
    rptModelo3: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    lblEmpresa3: TppLabel;
    ppLine5: TppLine;
    ppLabel26: TppLabel;
    lblParam_3_1: TppLabel;
    lblParam_3_2: TppLabel;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel37: TppLabel;
    ppFooterBand3: TppFooterBand;
    ppLabel21: TppLabel;
    ppLabel27: TppLabel;
    ppDBText80: TppDBText;
    rptModelo4: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel28: TppLabel;
    ppLabel33: TppLabel;
    ppLabel38: TppLabel;
    lblEmpresa4: TppLabel;
    ppLine7: TppLine;
    ppLabel41: TppLabel;
    lblParam_4_1: TppLabel;
    lblParam_4_2: TppLabel;
    ppLine8: TppLine;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText17: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel54: TppLabel;
    ppFooterBand4: TppFooterBand;
    ppLabel50: TppLabel;
    ppDBText8: TppDBText;
    rptModelo5: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel40: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    lblEmpresa5: TppLabel;
    ppLine9: TppLine;
    ppLabel56: TppLabel;
    lblParam_5_1: TppLabel;
    lblParam_5_2: TppLabel;
    ppLine10: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel67: TppLabel;
    ppFooterBand5: TppFooterBand;
    ppDBText30: TppDBText;
    lblData: TppLabel;
    ppLabel55: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel68: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edtGrupoInicialExit(Sender: TObject);
    procedure edtGrupoFinalExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtFornecedorExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ppLabel1GetText(Sender: TObject; var Text: String);
    procedure ppDBText6GetText(Sender: TObject; var Text: String);
    procedure ppDBText7GetText(Sender: TObject; var Text: String);
    procedure ppDBText8GetText(Sender: TObject; var Text: String);
    procedure FormShow(Sender: TObject);
    procedure ppLabel21GetText(Sender: TObject; var Text: String);
    procedure ppDBText80GetText(Sender: TObject; var Text: String);
    procedure ppLabel50GetText(Sender: TObject; var Text: String);
    procedure ppDBText30GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    PalavraCusto1: String;
  public
    { Public declarations }
  end;

var
  frmRL0317: TfrmRL0317;

implementation

uses uConsulta, udmRL0317, uGlobal, udmProgs;

{$R *.dfm}

procedure TfrmRL0317.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0317.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0317.FormCreate(Sender: TObject);
begin
   dmRL0317 := TdmRL0317.Create(Self);
end;

procedure TfrmRL0317.SpeedButton1Click(Sender: TObject);
begin
   edtGrupoInicial.SetFocus;

   ConsultaGrupoProdutos(edtGrupoInicial);
end;

procedure TfrmRL0317.SpeedButton2Click(Sender: TObject);
begin
   edtGrupoFinal.SetFocus;

   ConsultaGrupoProdutos(edtGrupoFinal);
end;

procedure TfrmRL0317.edtGrupoInicialExit(Sender: TObject);
var Sql1: String;
begin
   if edtGrupoInicial.Value = 0 then
      Exit;

   Sql1 := 'SELECT CODIGO_GRUPO, DESCRICAO_GRUPO FROM P_GRUPOS WHERE CODIGO_GRUPO = ' + edtGrupoInicial.Text +
           ' AND COD_EMPRESA = ' + CodigoEmpresa1;

   ExecutaSql(dmRL0317.cdsPesquisa1, Sql1);

   if dmRL0317.cdsPesquisa1.RecordCount = 0 then
   begin
      Application.MessageBox('Grupo n�o cadastrado','Aten��o',MB_ICONERROR);
      edtGrupoInicial.SetFocus;
      Abort;
   end;

   edtNomeGrupoInicial.Text := dmRL0317.cdsPesquisa1.FieldByName('DESCRICAO_GRUPO').AsString;
end;

procedure TfrmRL0317.edtGrupoFinalExit(Sender: TObject);
var Sql1: String;
begin
   if edtGrupoFinal.Value = 0 then
      Exit;

   if edtGrupoFinal.Value < edtGrupoInicial.Value then
   begin
      edtGrupoFinal.SetFocus;
      Abort;
   end;

   Sql1 := 'SELECT CODIGO_GRUPO, DESCRICAO_GRUPO FROM P_GRUPOS WHERE CODIGO_GRUPO = ' + edtGrupoFinal.Text +
           ' AND COD_EMPRESA = ' + CodigoEmpresa1;

   ExecutaSql(dmRL0317.cdsPesquisa1, Sql1);

   if dmRL0317.cdsPesquisa1.RecordCount = 0 then
   begin
      Application.MessageBox('Grupo n�o cadastrado','Aten��o',MB_ICONERROR);
      edtGrupoFinal.SetFocus;
      Abort;
   end;

   edtNomeGrupoFinal.Text := dmRL0317.cdsPesquisa1.FieldByName('DESCRICAO_GRUPO').AsString;
end;

procedure TfrmRL0317.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRL0317.SpeedButton3Click(Sender: TObject);
begin
   edtFornecedor.SetFocus;

   ConsultaFornecedor(edtFornecedor);
end;

procedure TfrmRL0317.edtFornecedorExit(Sender: TObject);
var Sql1: String;
begin
   if edtFornecedor.Value = 0 then
      Exit;

   Sql1 := 'SELECT CODIGO_CLIENTE, FANTASIA_CLIENTE FROM E_CLIENTE WHERE CODIGO_CLIENTE = ' + edtFornecedor.Text +
           ' AND TIPO_CLIENTE = 2';

   ExecutaSql(dmRL0317.cdsPesquisa1, Sql1);

   if dmRL0317.cdsPesquisa1.RecordCount = 0 then
   begin
      Application.MessageBox('Fornecedor n�o cadastrado','Aten��o',MB_ICONERROR);
      edtFornecedor.SetFocus;
      Abort;
   end;

   edtNomeFornecedor.Text := dmRL0317.cdsPesquisa1.FieldByName('FANTASIA_CLIENTE').AsString;

end;

procedure TfrmRL0317.btnImprimirClick(Sender: TObject);
var Sql1, Sql2, Parametro1, Parametro2: String;
begin
   // validacao

   if edtGrupoFinal.Value < edtGrupoInicial.Value then
   begin
      Application.MessageBox('Grupo Final Inv�lido','Aten��o',MB_ICONERROR);
      edtGrupoFinal.SetFocus;
      Exit;
   end;
      
   // ^ fim validacao ^


   Sql2       := 'WHERE P_PRODUTOS.COD_EMPRESA = ' + CodigoEmpresa1 + ' ';
   Parametro1 := ' ';
   Parametro2 := ' ';

   if edtGrupoInicial.Value > 0 then
   begin
      Sql2 := Sql2 + 'AND GRUPO_PRODUTO >= ' + edtGrupoInicial.Text + ' AND GRUPO_PRODUTO <= ' + edtGrupoFinal.Text + ' ';
      Parametro1 := Parametro1 + 'Grupo Inicial: ' + edtGrupoInicial.Text + ' / Grupo Final: ' + edtGrupoFinal.Text + ' ';
   end;

   if edtFornecedor.Value > 0 then
   begin
      Sql2 := Sql2 + 'AND FABRICA_PRODUTO = ' + edtFornecedor.Text + ' ';
      Parametro2 := Parametro2 + 'Fornecedor: ' + edtFornecedor.Text;
   end;

   if chkApenasEstoque.Checked then
      Sql2 := Sql2 + 'AND ESTOQUE_PRODUTO > 0 ';


      case grpSequencia.ItemIndex of      //
         0: Sql2 := Sql2 + 'ORDER BY DESCRICAO_PRODUTO';
         1: Sql2 := Sql2 + 'ORDER BY CODIGO_PRODUTO';
         2: Sql2 := Sql2 + 'ORDER BY FABRICANTE_PRODUTO';
         3: Sql2 := Sql2 + 'ORDER BY BARRA_PRODUTO';
      end;      // case

   Sql1 := 'SELECT CODIGO_PRODUTO, GRUPO_PRODUTO, DESCRICAO_PRODUTO, UNIDADE_PRODUTO, PRECOUNIT_PRODUTO, PRECO_CUSTO_PRODUTO, PROMOCAO_PRODUTO, VLRATACADO_PRODUTO, FABRICANTE_PRODUTO, FABRICA_PRODUTO, BARRA_PRODUTO, ESTOQUE_PRODUTO, PRAT1_PRODUTO, ' +
           'E_CLIENTE.FANTASIA_CLIENTE, ' +
           'P_GRUPOS.CODIGO_GRUPO, P_GRUPOS.DESCRICAO_GRUPO ' +
           'FROM P_PRODUTOS ' +
           'LEFT JOIN E_CLIENTE ON E_CLIENTE.CODIGO_CLIENTE = P_PRODUTOS.FABRICA_PRODUTO ' +
           'LEFT JOIN P_GRUPOS  ON P_GRUPOS.CODIGO_GRUPO = P_PRODUTOS.GRUPO_PRODUTO ' +
           Sql2;

   ExecutaSql(dmRL0317.cdsProdutos, Sql1);

   if dmRL0317.cdsProdutos.RecordCount = 0 then
   begin
      Application.MessageBox('Dados n�o localizados','Aten��o',MB_ICONEXCLAMATION);
      Exit;
   end;

   if grpTipoPreco.ItemIndex = 0 then  // preco varejo
   begin
      ppLabel64.Text       := 'Pr�. Venda';
      ppLabel7.Text        := 'Pr�. Venda';
      ppLabel51.Text       := 'Pr�. Venda';
      ppDBText28.DataField := 'PRECOUNIT_PRODUTO';
      ppDBText6.DataField  := 'PRECOUNIT_PRODUTO';
      ppDBText23.DataField := 'PRECOUNIT_PRODUTO';
   end
   else if grpTipoPreco.ItemIndex = 1 then  // preco atacado
   begin
      ppLabel64.Text       := 'Pr�. Atac.';
      ppLabel7.Text        := 'Pr�. Atac.';
      ppLabel51.Text       := 'Pr�. Atac.';
      ppDBText28.DataField := 'VLRATACADO_PRODUTO';
      ppDBText6.DataField  := 'VLRATACADO_PRODUTO';
      ppDBText23.DataField := 'VLRATACADO_PRODUTO';
   end;


   // titulo da coluna e valor de custo rel. modelo 1
   ppLabel9.Visible   := chkImpPrecoCusto.Checked;
   ppLabel21.Visible  := chkImpPrecoCusto.Checked;
   ppLabel27.Visible  := chkImpPrecoCusto.Checked;
   ppDBText80.Visible := chkImpPrecoCusto.Checked;
   ppLabel53.Visible  := chkImpPrecoCusto.Checked;
   ppDBText8.Visible  := chkImpPrecoCusto.Checked;


   // nome da empresa e parametros do relatorio
   lblEmpresa.Text   := Empresa1;
   lblEmpresa2.Text  := Empresa1;
   lblEmpresa3.Text  := Empresa1;
   lblEmpresa4.Text  := Empresa1;
   lblEmpresa5.Text  := Empresa1;
   lblParam1.Text    := Parametro1;
   lblParam_2_1.Text := Parametro1;
   lblParam_3_1.Text := Parametro1;
   lblParam_4_1.Text := Parametro1;
   lblParam_5_1.Text := Parametro1;
   lblParam2.Text    := Parametro2;
   lblParam_2_2.Text := Parametro2;
   lblParam_3_2.Text := Parametro2;
   lblParam_4_2.Text := Parametro2;
   lblParam_5_2.Text := Parametro2;

   // imprime relatorio
   
   case grpModelo.ItemIndex of      //
      0: rptModelo1.Print;
      1: rptModelo2.Print;
      2: rptModelo3.Print;
      3: rptModelo4.Print;
      4: rptModelo5.Print;
   end;      // case
      
end;

procedure TfrmRL0317.ppLabel1GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0317.cdsProdutos.FieldByName('CODIGO_PRODUTO').AsString + '-' + dmRL0317.cdsProdutos.FieldByName('DESCRICAO_PRODUTO').AsString;
end;

procedure TfrmRL0317.ppDBText6GetText(Sender: TObject; var Text: String);
begin
   if Text <> '' then
      Text := FormatFloat(MascaraPrecoVenda1, StrToFloat(Text))
   else
      Text := '0,00'
end;

procedure TfrmRL0317.ppDBText7GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0317.cdsProdutos.FieldByName('PROMOCAO_PRODUTO').AsFloat);
end;

procedure TfrmRL0317.ppDBText8GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0317.cdsProdutos.FieldByName('VLRATACADO_PRODUTO').AsFloat);
end;

procedure TfrmRL0317.FormShow(Sender: TObject);
var Sql1: String;
begin
   PalavraCusto1 := '          ';

   Sql1 := 'SELECT PALAV_CUST_EMP FROM EMPRESA WHERE CODIGO_EMP = ' + CodigoEmpresa1;

   ExecutaSql(dmRL0317.cdsPesquisa2, Sql1);

   if dmRL0317.cdsPesquisa2.RecordCount > 0 then
      if Length(Trim(dmRL0317.cdsPesquisa2.FieldByName('PALAV_CUST_EMP').AsString)) = 10 then
         PalavraCusto1 := dmRL0317.cdsPesquisa2.FieldByName('PALAV_CUST_EMP').AsString;
end;

procedure TfrmRL0317.ppLabel21GetText(Sender: TObject; var Text: String);
begin
   if dmRL0317.cdsProdutos.FieldByName('PRECO_CUSTO_PRODUTO').AsFloat > 0 then
      Text := CodificaCusto(dmRL0317.cdsProdutos.FieldByName('PRECO_CUSTO_PRODUTO').AsString, PalavraCusto1, 'NP')
   else
      Text := CodificaCusto('0,00', PalavraCusto1, 'NP');

   Text := Text;
end;

procedure TfrmRL0317.ppDBText80GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0317.cdsProdutos.FieldByName('PRECO_CUSTO_PRODUTO').AsFloat);
end;


procedure TfrmRL0317.ppLabel50GetText(Sender: TObject; var Text: String);
begin
   Text := dmRL0317.cdsProdutos.FieldByName('CODIGO_GRUPO').AsString + '-' + dmRL0317.cdsProdutos.FieldByName('DESCRICAO_GRUPO').AsString;
end;

procedure TfrmRL0317.ppDBText30GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat('#,##0.00', dmRL0317.cdsProdutos.FieldByName('ESTOQUE_PRODUTO').AsFloat);
end;

procedure TfrmRL0317.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0317.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
