{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> uRL0205
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> RAFAEL F. S. MOTA
 DATA DE CONCEPÇÃO    --> 22/05/07
 FINALIDADE           --> RELATORIO DE FICHA CADASTRAL DE CLIENTE
 COMENTARIO           --> 
 ******************************************************************************}

unit uRL0205;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DB, JvExStdCtrls,
  JvEdit, JvValidateEdit, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppStrtch,
  ppMemo;

type
  TfrmRL0205 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    rdgTipo: TRadioGroup;
    edtCodCliente: TJvValidateEdit;
    dtsClientes: TDataSource;
    edtNomeCliente: TEdit;
    edtCNPJ: TEdit;
    dbpRelatorio: TppDBPipeline;
    rptCompleto: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa2: TppLabel;
    ppLine1: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    rptSimples: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    lblEmpresa: TppLabel;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLine4: TppLine;
    ppLabel20: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBMemo1: TppDBMemo;
    lblCidade: TppLabel;
    lblCidadeProp: TppLabel;
    ppLabel18: TppLabel;
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
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel87: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText65: TppDBText;
    ppDBText68: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppLabel125: TppLabel;
    ppLine2: TppLine;
    lblData: TppLabel;
    ppLabel126: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtCodClienteExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblCidadeGetText(Sender: TObject; var Text: String);
    procedure lblCidadePropGetText(Sender: TObject; var Text: String);
    procedure Apura_Titulos;
    procedure ppLabel122GetText(Sender: TObject; var Text: String);
    procedure ppLabel123GetText(Sender: TObject; var Text: String);
    procedure ppLabel124GetText(Sender: TObject; var Text: String);
    procedure ppLabel125GetText(Sender: TObject; var Text: String);
    procedure ppDBText50GetText(Sender: TObject; var Text: String);
    procedure ppDBText45GetText(Sender: TObject; var Text: String);
    procedure ppDBText48GetText(Sender: TObject; var Text: String);
    procedure ppDBText105GetText(Sender: TObject; var Text: String);
    procedure ppDBText29GetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

    Vencidos1, AVencer1, Utilizado1: Double;
  public
    { Public declarations }
  end;

var
  frmRL0205: TfrmRL0205;

implementation

uses udmRL0205, uConsulta, uGlobal;

{$R *.dfm}

procedure TfrmRL0205.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0205.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0205.FormCreate(Sender: TObject);
begin
   dmRL0205 := TdmRL0205.Create(Self);
end;

procedure TfrmRL0205.SpeedButton1Click(Sender: TObject);
begin
   edtCodCliente.SetFocus;

   ConsultaCliente(edtCodCliente);
end;

procedure TfrmRL0205.edtCodClienteExit(Sender: TObject);
var Sql1: String;
begin
   if edtCodCliente.Value = 0 then
      Exit;

{SELECT E_CLIENTE.NOME_CLIENTE,
E_PROPRIEDADE.DESCRICAO_PRO, E_PROPRIEDADE.CLIENTE_PRO,
E_PROPRIEDADE.CODIGO_PRO, E_PROPRIEDADE.INSCEST_PRO, E_PROPRIEDADE.CIDADE_PRO, E_PROPRIEDADE.FONE_PRO,
E_CIDADE.DESCRICAO_CIDADE AS CIDADE_CLI, E_CIDADE.UF_CIDADE,
VEN1.nome_vendedor AS VENDEDOR1, VEN2.nome_vendedor AS VENDEDOR2
FROM E_CLIENTE
LEFT JOIN E_PROPRIEDADE ON E_CLIENTE.CODIGO_CLIENTE = E_PROPRIEDADE.CLIENTE_PRO
LEFT JOIN E_CIDADE ON E_CLIENTE.CIDADE_CLIENTE = E_CIDADE.CODIGO_CIDADE
LEFT JOIN P_VENDEDOR VEN1 ON E_cliente.vendedor_cliente  = VEN1.codigo_vendedor
LEFT JOIN P_VENDEDOR VEN2 ON E_cliente.vendedor1_cliente = VEN2.codigo_vendedor
WHERE CODIGO_CLIENTE = 3}

   Sql1 := 'SELECT E_CLIENTE.*, ' +
           'E_PROPRIEDADE.DESCRICAO_PRO, E_PROPRIEDADE.CLIENTE_PRO, E_PROPRIEDADE.CODIGO_PRO, E_PROPRIEDADE.INSCEST_PRO, E_PROPRIEDADE.CIDADE_PRO, E_PROPRIEDADE.FONE_PRO, ' +
           'E_CIDADE.DESCRICAO_CIDADE, E_CIDADE.UF_CIDADE, ' +
           'VEN1.NOME_VENDEDOR AS VENDEDOR1, VEN2.NOME_VENDEDOR AS VENDEDOR2, ' +
           'ATV1.DESCRICAO_ATIVIDADE AS ATIVIDADE1, ATV2.DESCRICAO_ATIVIDADE AS ATIVIDADE2, ATV3.DESCRICAO_ATIVIDADE AS ATIVIDADE3, ' +
           'P_CPAGAMENTO.DESCRICAO_CPAGAMENTO ' +
           'FROM E_CLIENTE ' +
           'LEFT JOIN E_PROPRIEDADE ON E_CLIENTE.CODIGO_CLIENTE = E_PROPRIEDADE.CLIENTE_PRO ' +
           'LEFT JOIN E_CIDADE ON E_CLIENTE.CIDADE_CLIENTE = E_CIDADE.CODIGO_CIDADE ' +
           'LEFT JOIN P_VENDEDOR VEN1 ON E_CLIENTE.VENDEDOR_CLIENTE  = VEN1.CODIGO_VENDEDOR ' +
           'LEFT JOIN P_VENDEDOR VEN2 ON E_CLIENTE.VENDEDOR1_CLIENTE = VEN2.CODIGO_VENDEDOR ' +
           'LEFT JOIN E_ATIVIDADE ATV1 ON E_CLIENTE.RAMO1_CLIENTE = ATV1.CODIGO_ATIVIDADE ' +
           'LEFT JOIN E_ATIVIDADE ATV2 ON E_CLIENTE.RAMO2_CLIENTE = ATV2.CODIGO_ATIVIDADE ' +
           'LEFT JOIN E_ATIVIDADE ATV3 ON E_CLIENTE.RAMO3_CLIENTE = ATV3.CODIGO_ATIVIDADE ' +
           'LEFT JOIN P_CPAGAMENTO ON E_CLIENTE.TPGTO_CLIENTE = P_CPAGAMENTO.CODIGO_CPAGAMENTO ' +
           'WHERE CODIGO_CLIENTE = ' + edtCodCliente.Text + ' AND TIPO_CLIENTE = 0';

   ExecutaSql(dmRL0205.cdsClientes, Sql1);

   if dmRL0205.cdsClientes.RecordCount = 0 then
   begin
      Application.MessageBox('Cliente não cadastrado','Atenção',MB_ICONERROR);
      edtCodCliente.SetFocus;
      Abort;
   end;

   edtNomeCliente.Text := dmRL0205.cdsClientes.FieldByName('FANTASIA_CLIENTE').Value;
   edtCNPJ.Text := dmRL0205.cdsClientes.FieldByName('CNPJ_CLIENTE').Value;
end;

procedure TfrmRL0205.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRL0205.FormShow(Sender: TObject);
begin
   edtCodCliente.SetFocus;
end;

procedure TfrmRL0205.btnImprimirClick(Sender: TObject);
begin
   if edtCodCliente.Value = 0 then
   begin
      Application.MessageBox('Informe o cliente','Atenção',MB_ICONWARNING);
      edtCodCliente.SetFocus;
      Exit;
   end;


   Apura_Titulos;

   lblEmpresa.Text  := Empresa1;
   lblEmpresa2.Text := Empresa1;

   if dmRL0205.cdsClientes.FieldByName('TIPOPESSOA_CLIENTE').Value  = 'F' then
   begin
      ppLabel44.Text    := 'Complemento Pessoa Física';
      pplabel47.Text    := 'CPF: ';
      ppLabel48.Text    := 'Pai: ';
      ppLabel49.Text    := 'Local Trab.: ';
      ppLabel50.Text    := 'Fone Trab.: ';
      ppLabel51.Text    := 'Conjuge: ';
      ppLabel52.Text    := 'Local Trab.: ';
      ppLabel53.Visible := True;
      ppLabel54.Text    := 'RG: ';
      ppLabel55.Text    := 'Mãe: ';
      ppLabel56.Text    := 'Função: ';
      ppLabel57.Text    := 'Salário: ';
      ppLabel58.Text    := 'Nasc.: ';
      ppLabel59.Text    := 'Função: ';
      ppLabel60.Visible := True;
      ppLabel61.Text    := 'Nasc.: ';
      ppLabel62.Text    := 'Outras Rendas: ';
   end
   else
   begin
      ppLabel44.Text    := 'Complemento Pessoa Jurídica';
      pplabel47.Text    := 'CNPJ: ';
      ppLabel48.Text    := 'Data Fund.: ';      ppDBText36.DataField := 'DATANASC_CLIENTE';
      ppLabel49.Text    := 'Contato: ';         ppDBText37.DataField := 'CONTATO_CLIENTE';
      ppLabel50.Text    := 'Sócio: ';           ppDBText38.DataField := 'SOCIO1_CLIENTE';
      ppLabel51.Text    := 'Sócio: ';           ppDBText39.DataField := 'SOCIO2_CLIENTE';
      ppLabel52.Text    := 'Gerente: ';         ppDBText40.DataField := 'GERENTE_CLIENTE';
      ppLabel53.Visible := False;               ppDBText41.Visible   := False;
      ppLabel54.Text    := 'Insc. Est.: ';
      ppLabel55.Text    := 'Junta Comerc.: ';   ppDBText43.DataField := 'JUNTACOMERCIAL_CLIENTE';
      ppLabel56.Text    := 'Contribuinte: ';    ppDBText44.DataField := 'CONTRIBUINTE_CLIENTE';
      ppLabel57.Text    := 'Dt. Nasc.: ';       ppDBText45.DataField := 'SOCIO1_DATANASC_CLIENTE';
      ppLabel58.Text    := 'Dt. Nasc.: ';       ppDBText46.DataField := 'SOCIO2_DATANASC_CLIENTE';
      ppLabel59.Text    := 'Dt. Nasc.: ';       ppDBText47.DataField := 'GERENTE_DATANASC_CLIENTE';
      ppLabel60.Visible := False;               ppDBText48.Visible   := False;
      ppLabel61.Text    := 'Capital Social: ';  ppDBText49.DataField := 'CAPITAL_CLIENTE';
      ppLabel62.Text    := 'Atacadista: ';      ppDBText50.DataField := 'ATACADO_CLIENTE';
   end;

   if rdgTipo.ItemIndex = 0 then
      rptSimples.Print
   else if rdgTipo.ItemIndex = 1 then
      rptCompleto.Print;
end;

procedure TfrmRL0205.lblCidadeGetText(Sender: TObject; var Text: String);
begin
   Text := Trim(dmRL0205.cdsClientes.FieldByName('DESCRICAO_CIDADE').AsString) + '-' + dmRL0205.cdsClientes.FieldByName('UF_CIDADE').AsString;
end;

procedure TfrmRL0205.lblCidadePropGetText(Sender: TObject;
  var Text: String);
var Sql1: String;
begin
   Text := '';

   if dmRL0205.cdsClientes.FieldByName('CIDADE_PRO').AsString <> '' then
   begin
      Sql1 := 'SELECT E_CIDADE.DESCRICAO_CIDADE, E_CIDADE.UF_CIDADE FROM E_CIDADE WHERE CODIGO_CIDADE = ' + dmRL0205.cdsClientes.FieldByName('CIDADE_PRO').AsString;

      ExecutaSql(dmRL0205.cdsPesquisa1, Sql1);
   end;

   if (dmRL0205.cdsPesquisa1.Active) and (dmRL0205.cdsPesquisa1.RecordCount > 0) then
      Text := Trim(dmRL0205.cdsPesquisa1.FieldByName('DESCRICAO_CIDADE').AsString) + '-' + dmRL0205.cdsPesquisa1.FieldByName('UF_CIDADE').AsString;
end;

procedure TfrmRL0205.Apura_Titulos;
var Sql1: String;
begin
   Vencidos1  := 0;
   AVencer1   := 0;
   Utilizado1 := 0;

   Sql1 := 'SELECT VALOR_RECEBER, PARCIAL_RECEBER FROM P_RECEBER WHERE CODIGO_CLIENTE_RECEBER = ' + edtCodCliente.Text +
           ' AND TIPO_BAIXA_RECEBER <> ''T'' ';

   ExecutaSql(dmRL0205.cdsPesquisa2, Sql1);

   if dmRL0205.cdsPesquisa2.RecordCount > 0 then
   begin
      dmRL0205.cdsPesquisa2.First;

      while not dmRL0205.cdsPesquisa2.Eof do
      begin
         Utilizado1 := Utilizado1 + ( dmRL0205.cdsPesquisa2.FieldByName('VALOR_RECEBER').Value - dmRL0205.cdsPesquisa2.FieldByName('PARCIAL_RECEBER').Value);

         if dmRL0205.cdsPesquisa2.FieldByName('VENCIMENTO').AsDateTime <= xData then
            Vencidos1 := Vencidos1 + ( dmRL0205.cdsPesquisa2.FieldByName('VALOR_RECEBER').Value - dmRL0205.cdsPesquisa2.FieldByName('PARCIAL_RECEBER').Value )
         else
            AVencer1  := AVencer1  + ( dmRL0205.cdsPesquisa2.FieldByName('VALOR_RECEBER').Value - dmRL0205.cdsPesquisa2.FieldByName('PARCIAL_RECEBER').Value);

         dmRL0205.cdsPesquisa2.Next;
      end;      // while
   end;
end;

procedure TfrmRL0205.ppLabel122GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, Vencidos1);
end;

procedure TfrmRL0205.ppLabel123GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, Utilizado1);
end;

procedure TfrmRL0205.ppLabel124GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, AVencer1);
end;

procedure TfrmRL0205.ppLabel125GetText(Sender: TObject; var Text: String);
var Valor1: Double;
begin
   Valor1 := dmRL0205.cdsClientes.FieldByName('CREDITO_CLIENTE').AsFloat - Utilizado1;

   Text := FormatFloat(MascaraPrecoVenda1, Valor1);
end;

procedure TfrmRL0205.ppDBText50GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0205.cdsClientes.FieldByName('TRAB_OUTRAS_CLIENTE').AsFloat);
end;

procedure TfrmRL0205.ppDBText45GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0205.cdsClientes.FieldByName('TRAB_SALARIO_CLIENTE').AsFloat);
end;

procedure TfrmRL0205.ppDBText48GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0205.cdsClientes.FieldByName('CONJUGE_SALARIO_CLIENTE').AsFloat);
end;

procedure TfrmRL0205.ppDBText105GetText(Sender: TObject; var Text: String);
begin
   Text := FormatFloat(MascaraPrecoVenda1, dmRL0205.cdsClientes.FieldByName('CONJUGE_OUTRAS_CLIENTE').AsFloat);
end;

procedure TfrmRL0205.ppDBText29GetText(Sender: TObject; var Text: String);
begin
   if dmRL0205.cdsClientes.FieldByName('STATUS_CLIENTE').AsString = 'T' then
      Text := 'Ativo'
   else if dmRL0205.cdsClientes.FieldByName('STATUS_CLIENTE').AsString = 'F' then
      Text := 'Inativo'
   else if dmRL0205.cdsClientes.FieldByName('STATUS_CLIENTE').AsString = 'A' then
      Text := 'Aguardando';
end;

procedure TfrmRL0205.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0205.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
