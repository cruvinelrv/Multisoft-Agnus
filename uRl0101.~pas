{
 SISTEMA              --> MultWin
 PROGRAMA             --> frmRl0101 (estr32)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> RAFAEL F. S. MOTA
 DATA DE CONCEPCAO    --> 06/02/2007
 FINALIDADE           --> Relatorio de grupos / funcionarios / fornecedor
 COMENTARIO           --> Tag: 0  -> Grupos
                               1  -> funcionarios
                               2  -> fornecedor
                               3  -> tipo de pagamento
                               4  -> centro de custo
                               5  -> conta contabil
                               6  -> tipos de documento
                               7  -> parceiros
                               8  -> ramo de atividade
                               9  -> veiculos
                               10 -> autoridades
                               11 -> associações
}

unit uRl0101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTela_Imp, StdCtrls, Buttons, ExtCtrls, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, DB, ppBands, ppCache, ppCtrls,
  ppPrnabl, ppVar, ppStrtch, ppMemo;

type
  TfrmRL0101 = class(TfrmTela_Imp)
    rdgOrdem: TRadioGroup;
    dbpRelatorio: TppDBPipeline;
    dtsRelatorio: TDataSource;
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
    ppLine2: TppLine;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    rptRelFunc: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    lblEmpFunc: TppLabel;
    ppLine3: TppLine;
    lblNomeRelFunc: TppLabel;
    lblParamFunc: TppLabel;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    lblFuncao: TppDBText;
    lblSituacao: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDBText7: TppDBText;
    rptRelFor: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    lblEmpFor: TppLabel;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    lblParamFor: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand3: TppFooterBand;
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
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine6: TppLine;
    rptRelPag: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel37: TppLabel;
    lblEmpPag: TppLabel;
    ppLine7: TppLine;
    ppLabel40: TppLabel;
    lblParamPag: TppLabel;
    ppLabel42: TppLabel;
    ppLine8: TppLine;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel49: TppLabel;
    rptRelCen: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel38: TppLabel;
    ppLabel41: TppLabel;
    ppLabel50: TppLabel;
    lblEmpCen: TppLabel;
    ppLine9: TppLine;
    lblNomeRelCen: TppLabel;
    lblParamCen: TppLabel;
    ppLabel54: TppLabel;
    ppLine10: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDetailBand5: TppDetailBand;
    lblCodCen: TppDBText;
    lblDescCen: TppDBText;
    ppFooterBand5: TppFooterBand;
    rptRelCon: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLabel51: TppLabel;
    ppLabel53: TppLabel;
    ppLabel57: TppLabel;
    lblEmpCon: TppLabel;
    ppLine11: TppLine;
    ppLabel59: TppLabel;
    lblParamCon: TppLabel;
    ppLabel61: TppLabel;
    ppLine12: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppFooterBand6: TppFooterBand;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    rptRelParceiro: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppSystemVariable20: TppSystemVariable;
    ppSystemVariable21: TppSystemVariable;
    ppLabel52: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    lblEmpParceiro: TppLabel;
    ppLine13: TppLine;
    ppLabel67: TppLabel;
    lblParamParceiro: TppLabel;
    ppLabel69: TppLabel;
    ppLine14: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDBText31: TppDBText;
    ppLabel74: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    rptRelRamo: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    lblEmpRamo: TppLabel;
    ppLine15: TppLine;
    ppLabel79: TppLabel;
    lblParamRamo: TppLabel;
    ppLabel81: TppLabel;
    ppLine16: TppLine;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppFooterBand8: TppFooterBand;
    ppLabel84: TppLabel;
    ppDBText36: TppDBText;
    rptRelVeic: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppSystemVariable26: TppSystemVariable;
    ppSystemVariable27: TppSystemVariable;
    ppLabel78: TppLabel;
    ppLabel80: TppLabel;
    ppLabel85: TppLabel;
    lblEmpVeic: TppLabel;
    ppLine17: TppLine;
    ppLabel87: TppLabel;
    lblParamVeic: TppLabel;
    ppLabel89: TppLabel;
    ppLine18: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText37: TppDBText;
    ppDBText39: TppDBText;
    ppFooterBand9: TppFooterBand;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    rptRelAut: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppSystemVariable29: TppSystemVariable;
    ppSystemVariable30: TppSystemVariable;
    ppLabel86: TppLabel;
    ppLabel88: TppLabel;
    ppLabel93: TppLabel;
    lblEmpAut: TppLabel;
    ppLine19: TppLine;
    ppLabel97: TppLabel;
    lblParamAut: TppLabel;
    ppLabel99: TppLabel;
    ppLine20: TppLine;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText38: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppFooterBand10: TppFooterBand;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppDBText47: TppDBText;
    ppLabel96: TppLabel;
    ppLine21: TppLine;
    ppDBMemo1: TppDBMemo;
    rptRelAssoc: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppSystemVariable32: TppSystemVariable;
    ppSystemVariable33: TppSystemVariable;
    ppLabel98: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    lblEmpAssoc: TppLabel;
    ppLabel111: TppLabel;
    lblParamAssoc: TppLabel;
    ppLabel113: TppLabel;
    ppLine22: TppLine;
    ppDetailBand11: TppDetailBand;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppLine23: TppLine;
    ppFooterBand11: TppFooterBand;
    ppDBMemo2: TppDBMemo;
    lblData: TppLabel;
    ppLabel110: TppLabel;
    ppLabel112: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblFuncaoGetText(Sender: TObject; var Text: String);
    procedure lblSituacaoGetText(Sender: TObject; var Text: String);
    procedure ppLabel49GetText(Sender: TObject; var Text: String);
    procedure ppLabel60GetText(Sender: TObject; var Text: String);
    procedure ppLabel74GetText(Sender: TObject; var Text: String);
    procedure ppLabel107GetText(Sender: TObject; var Text: String);
    procedure FormCreate(Sender: TObject);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure ppLabel134GetText(Sender: TObject; var Text: String);
    procedure ppLabel135GetText(Sender: TObject; var Text: String);
    procedure ppLabel136GetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0101: TfrmRL0101;

implementation

uses uGlobal, udmRL0101;

{$R *.dfm}

procedure TfrmRL0101.BitBtn1Click(Sender: TObject);
var Ordem1, Titulo1: String;
    Sql1: AnsiString;
begin
  inherited;

   if frmRl0101.Tag = 0 then // relatorio de grupos
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'P_GRUPOS.DESCRICAO_GRUPO';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1  := 'P_GRUPOS.CODIGO_GRUPO';
         Titulo1 := 'Ordem de Código';
      end;

      Sql1 := 'SELECT CODIGO_GRUPO, DESCRICAO_GRUPO, COMISSAO_GRUPO, COMISSAO1_GRUPO, CODIGO_SECAO_GRUPO, P_SECAO.DESCRICAO_SECAO FROM P_GRUPOS LEFT JOIN P_SECAO ' +
              'ON P_GRUPOS.CODIGO_SECAO_GRUPO = P_SECAO.CODIGO_SECAO AND P_SECAO.COD_EMPRESA = ' + CodigoEmpresa1 + ' WHERE P_GRUPOS.COD_EMPRESA = ' + QuotedStr(CodigoEmpresa1) +
              ' ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpresa.Caption := Empresa1;
      lblParam1.Caption  := Titulo1;

      rptRelatorio.Print;
   end
   else if frmRl0101.Tag = 1 then  // relatorio de funcionarios
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'NOME_VENDEDOR';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_VENDEDOR';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_VENDEDOR, NOME_VENDEDOR, FUNCAO_VENDEDOR, SITUACAO_VENDEDOR FROM P_VENDEDOR WHERE P_VENDEDOR.COD_EMPRESA = ' + QuotedStr(CodigoEmpresa1) +
              ' ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpFunc.Caption   := Empresa1;
      lblParamFunc.Caption := Titulo1;

      rptRelFunc.Print;
   end
   else if frmRl0101.Tag = 2 then  // relatorio de fornecedor
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'NOME_CLIENTE';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_CLIENTE';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_CLIENTE, NOME_CLIENTE, FANTASIA_CLIENTE, ENDERECO_CLIENTE, EMAIL_CLIENTE, CONTATO_CLIENTE, CNPJ_CLIENTE, INSCRICAO_CLIENTE, TELEFONE_CLIENTE, FAX_CLIENTE, CEP_CLIENTE, BAIRRO_CLIENTE, CIDADE_CLIENTE, ESTADO_CLIENTE,' +
              ' DDG_CLIENTE, PAIS_CLIENTE, E_CIDADE.DESCRICAO_CIDADE, E_CIDADE.UF_CIDADE FROM E_CLIENTE  LEFT JOIN E_CIDADE ON E_CLIENTE.CIDADE_CLIENTE = E_CIDADE.CODIGO_CIDADE  WHERE E_CLIENTE.TIPO_CLIENTE = 2 ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpFor.Caption   := Empresa1;
      lblParamFor.Caption := Titulo1;

      rptRelFor.Print;
   end
   else if frmRl0101.Tag = 3 then  // relatorio de tipo de pagamento
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'DESCRICAO_CPAGAMENTO';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_CPAGAMENTO';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_CPAGAMENTO, DESCRICAO_CPAGAMENTO, DESCONTO_CPAGAMENTO, CAIXA_CPAGAMENTO, COD_EMPRESA FROM P_CPAGAMENTO WHERE P_CPAGAMENTO.COD_EMPRESA = ' + CodigoEmpresa1 +
              'ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpPag.Caption   := Empresa1;
      lblParamPag.Caption := Titulo1;

      rptRelPag.Print;
   end
   else if frmRl0101.Tag = 4 then  // relatorio de centro de custo
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'DESCRICAO_CENTRO';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_CENTRO';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_CENTRO, DESCRICAO_CENTRO FROM E_CENTRO ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpCen.Caption   := Empresa1;
      lblParamCen.Caption := Titulo1;

      rptRelCen.Print;
   end
   else if frmRl0101.Tag = 5 then  // relatorio de conta contabil
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'DESCRICAO_CONTA';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_CONTA';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_CONTA, DESCRICAO_CONTA, TIPO_CONTA, TITULO_CONTA FROM E_CONTA ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpCon.Caption   := Empresa1;
      lblParamCon.Caption := Titulo1;

      rptRelCon.Print;
   end
   else if frmRl0101.Tag = 6 then  // relatorio de tipos de documento
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'DESCRICAO_TIPODOCUMENTO';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_TIPODOCUMENTO';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_TIPODOCUMENTO, DESCRICAO_TIPODOCUMENTO FROM E_TIPODOCUMENTO ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpCen.Caption     := Empresa1;
      lblParamCen.Caption   := Titulo1;
      lblNomeRelCen.Caption := 'Relatório de Tipos de Documentos';
      lblCodCen.DataField   := 'CODIGO_TIPODOCUMENTO';
      lblDescCen.DataField  := 'DESCRICAO_TIPODOCUMENTO';

      rptRelCen.Print;
   end
   else if frmRl0101.Tag = 7 then  // relatorio de parceiros
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'NOME_PARCEIRO';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_PARCEIRO';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_PARCEIRO, NOME_PARCEIRO, ENDERECO_PARCEIRO, CIDADE_PARCEIRO, ESTADO_PARCEIRO, TELEFONE_PARCEIRO, CONTATO_PARCEIRO, COD_EMPRESA FROM P_PARCEIRO ' +
              'WHERE P_PARCEIRO.COD_EMPRESA = ' + CodigoEmpresa1 + ' ' +
              'ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpParceiro.Caption     := Empresa1;
      lblParamParceiro.Caption   := Titulo1;

      rptRelParceiro.Print;
   end
   else if frmRl0101.Tag = 8 then  // relatorio de ramo de atividade
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'DESCRICAO_ATIVIDADE';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_ATIVIDADE';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_ATIVIDADE, DESCRICAO_ATIVIDADE, TIPO_ATIVIDADE FROM E_ATIVIDADE ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpRamo.Caption     := Empresa1;
      lblParamRamo.Caption   := Titulo1;

      rptRelRamo.Print;
   end
   else if frmRl0101.Tag = 9 then  // relatorio de veiculos
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'DESCRICAO_VEICULO';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_VEICULO';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_VEICULO, DESCRICAO_VEICULO, CAPACIDADE_VEICULO, FABRICA_VEICULO, ANO_VEICULO, COD_EMPRESA FROM P_VEICULOS ' +
              'WHERE P_VEICULOS.COD_EMPRESA = ' + CodigoEmpresa1  + ' ' +
              'ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpVeic.Caption     := Empresa1;
      lblParamVeic.Caption   := Titulo1;

      rptRelVeic.Print;
   end
   else if frmRl0101.Tag = 10 then  // relatorio de autoridades
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'NOME_AUTORIDADE';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_AUTORIDADE';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_AUTORIDADE, NOME_AUTORIDADE, OBSEVACAO_AUTORIDADE, ENDERECO_AUTORIDADE, BAIRRO_AUTORIDADE, CIDADE_AUTORIDADE, ESTADO_AUTORIDADE, CEP_AUTORIDADE, FONE_AUTORIDADE FROM E_AUTORIDADE ' +
              'ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpAut.Caption     := Empresa1;
      lblParamAut.Caption   := Titulo1;

      rptRelAut.Print;
   end
   else if frmRl0101.Tag = 11 then  // relatorio de associações
   begin
      if rdgOrdem.ItemIndex = 0 then
      begin
         Ordem1  := 'DESCRICAO_ASSOCIACAO';
         Titulo1 := 'Ordem Alfabética';
      end
      else if rdgOrdem.ItemIndex = 1 then
      begin
         Ordem1 := 'CODIGO_ASSOCIACAO';
         Titulo1 := 'Ordem de Código';
      end;


      Sql1 := 'SELECT CODIGO_ASSOCIACAO, DESCRICAO_ASSOCIACAO, REPRESENTA_ASSOCIACAO, ENDERECO_ASSOCIACAO, BAIRRO_ASSOCIACAO, CIDADE_ASSOCIACAO, ESTADO_ASSOCIACAO, CEP_ASSOCIACAO, FONE_ASSOCIACAO, FAX_ASSOCIACAO, OBSERVACAO_ASSOCIACAO FROM E_ASSOCIACAO ' +
              'ORDER BY ' + Ordem1;

      ExecutaSql(dmRL0101.cdsPesquisa1, Sql1);

      lblEmpAssoc.Caption     := Empresa1;
      lblParamAssoc.Caption   := Titulo1;

      rptRelAssoc.Print;
   end;

end;

procedure TfrmRL0101.BitBtn2Click(Sender: TObject);
begin
  inherited;

   Close;
end;

procedure TfrmRL0101.FormShow(Sender: TObject);
begin
  inherited;

   dmRL0101.cdsSecao.Open;

   if frmRl0101.Tag  = 0 then
      frmRl0101.Caption := 'Relatório de Grupos'
   else if frmRl0101.Tag = 1 then
      frmRl0101.Caption := 'Relatório de Funcionário'
   else if frmRl0101.Tag = 2 then
      frmRl0101.Caption := 'Relatório de Fornecedor'
   else if frmRl0101.Tag = 3 then
      frmRl0101.Caption := 'Relatório de Tipo de Pagamento'
   else if frmRl0101.Tag = 4 then
      frmRl0101.Caption := 'Relatório de Centro de Custo'
   else if frmRl0101.Tag = 5 then
      frmRl0101.Caption := 'Relatório de Conta Contábil'
   else if frmRl0101.Tag = 6 then
      frmRl0101.Caption := 'Relatório de Tipos de Documento'
   else if frmRl0101.Tag = 7 then
      frmRl0101.Caption := 'Relatório de Parceiros'
   else if frmRl0101.Tag = 8 then
      frmRl0101.Caption := 'Relatório de Ramo de Atividade'
   else if frmRl0101.Tag = 9 then
      frmRl0101.Caption := 'Relatório de Veículos da Empresa'
   else if frmRl0101.Tag = 10 then
      frmRl0101.Caption := 'Relatório de Autoridades'
   else if frmRl0101.Tag = 11 then
      frmRl0101.Caption := 'Relatório de Associações';
end;

procedure TfrmRL0101.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

   dmRL0101.cdsSecao.Close;

end;

procedure TfrmRL0101.lblFuncaoGetText(Sender: TObject; var Text: String);
begin
  inherited;

   if dmRL0101.cdsPesquisa1.FieldByName('FUNCAO_VENDEDOR').AsString = 'V' then
      Text := 'Vendedor'
   else if dmRL0101.cdsPesquisa1.FieldByName('FUNCAO_VENDEDOR').AsString = 'P' then
      Text := 'Produtivo'
   else if dmRL0101.cdsPesquisa1.FieldByName('FUNCAO_VENDEDOR').AsString = 'A' then
      Text := 'Atendente'
   else if dmRL0101.cdsPesquisa1.FieldByName('FUNCAO_VENDEDOR').AsString = 'E' then
      Text := 'Entregador'
end;

procedure TfrmRL0101.lblSituacaoGetText(Sender: TObject; var Text: String);
begin
  inherited;

   if dmRL0101.cdsPesquisa1.FieldByName('SITUACAO_VENDEDOR').AsString = 'T' then
      Text := 'Ativo'
   else if dmRL0101.cdsPesquisa1.FieldByName('SITUACAO_VENDEDOR').AsString = 'F' then
      Text := 'Demitido';     
end;

procedure TfrmRL0101.ppLabel49GetText(Sender: TObject; var Text: String);
begin
  inherited;

   if dmRL0101.cdsPesquisa1.FieldByName('CAIXA_CPAGAMENTO').Value = 1 then
      Text := 'A Vista'
   else if dmRL0101.cdsPesquisa1.FieldByName('CAIXA_CPAGAMENTO').Value = 2 then
      Text := 'Cartao de Crédito'
   else if dmRL0101.cdsPesquisa1.FieldByName('CAIXA_CPAGAMENTO').Value = 3 then
      Text := 'Cheque Pré-Datado'
   else if dmRL0101.cdsPesquisa1.FieldByName('CAIXA_CPAGAMENTO').Value = 4 then
      Text := 'Convênio'
   else if dmRL0101.cdsPesquisa1.FieldByName('CAIXA_CPAGAMENTO').Value = 5 then
      Text := 'A Prazo'
   else if dmRL0101.cdsPesquisa1.FieldByName('CAIXA_CPAGAMENTO').Value = 6 then
      Text := 'Outros'
   else if dmRL0101.cdsPesquisa1.FieldByName('CAIXA_CPAGAMENTO').Value = 7 then
      Text := 'Não Entra no Caixa'
   else
      Text := '';
end;

procedure TfrmRL0101.ppLabel60GetText(Sender: TObject; var Text: String);
begin
  inherited;

  if dmRL0101.cdsPesquisa1.FieldByName('TIPO_CONTA').Value = 'R' then
     Text := 'Receita'
  else if dmRL0101.cdsPesquisa1.FieldByName('TIPO_CONTA').Value = 'D' then
     Text := 'Despesa'
  else if dmRL0101.cdsPesquisa1.FieldByName('TIPO_CONTA').Value = 'I' then
     Text := 'Imobilizado'
  else if dmRL0101.cdsPesquisa1.FieldByName('TIPO_CONTA').Value = 'O' then
     Text := 'Outros'
  else if dmRL0101.cdsPesquisa1.FieldByName('TIPO_CONTA').Value = 'T' then
     Text := 'Título';
end;

procedure TfrmRL0101.ppLabel74GetText(Sender: TObject; var Text: String);
begin
  inherited;

   Text := Trim(dmRL0101.cdsPesquisa1.FieldByName('CIDADE_PARCEIRO').AsString) + '-' + dmRL0101.cdsPesquisa1.FieldByName('ESTADO_PARCEIRO').AsString;
end;

procedure TfrmRL0101.ppLabel107GetText(Sender: TObject; var Text: String);
begin
  inherited;

   Text := Trim(dmRL0101.cdsPesquisa1.FieldByName('CIDADE_AUTORIDADE').AsString) + '-' + dmRL0101.cdsPesquisa1.FieldByName('ESTADO_AUTORIDADE').AsString;
end;

procedure TfrmRL0101.FormCreate(Sender: TObject);
begin
  inherited;
   dmRL0101 := TdmRL0101.Create(Self);
end;

procedure TfrmRL0101.lblDataGetText(Sender: TObject; var Text: String);
begin
  inherited;
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0101.ppLabel134GetText(Sender: TObject; var Text: String);
begin
  inherited;
   Text := dmRL0101.cdsPesquisa1.FieldByName('TITULO_CONTA').AsString;
end;

procedure TfrmRL0101.ppLabel135GetText(Sender: TObject; var Text: String);
begin
  inherited;
   Text := dmRL0101.cdsPesquisa1.FieldByName('CODIGO_CONTA').AsString;
end;

procedure TfrmRL0101.ppLabel136GetText(Sender: TObject; var Text: String);
begin
  inherited;
   Text := dmRL0101.cdsPesquisa1.FieldByName('DESCRICAO_CONTA').AsString;
end;

procedure TfrmRL0101.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
