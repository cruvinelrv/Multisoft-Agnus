unit uRL0507;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvSpin, Mask, JvExMask, JvToolEdit,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppParameter, ppModule, raCodMod;

type
  TfrmRL0507 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label3: TLabel;
    edtDataIni: TJvDateEdit;
    Label1: TLabel;
    edtDataFim: TJvDateEdit;
    Label2: TLabel;
    edtPosicao: TJvSpinEdit;
    rptRel_Cliente: TppReport;
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
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppTot_Perc: TppVariable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDataIniExit(Sender: TObject);
    procedure edtDataFimExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure lblEmpresaGetText(Sender: TObject; var Text: String);
    procedure lblNomeRelGetText(Sender: TObject; var Text: String);
    procedure lblDataGetText(Sender: TObject; var Text: String);
    procedure ppVariable1Calc(Sender: TObject; var Value: Variant);
    procedure ppTot_PercCalc(Sender: TObject; var Value: Variant);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Valor_Total, Valor_Menor, Valor_Maior : Double;
    pColocacao, pContador : Integer;
  end;

var
  frmRL0507: TfrmRL0507;

implementation

uses udmRL0507, uGlobal, uProcesso2;

{$R *.dfm}

procedure TfrmRL0507.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0507.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0507.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      Key := #0;
   end;
end;

procedure TfrmRL0507.FormCreate(Sender: TObject);
begin
   dmRL0507 := TdmRL0507.Create(Self);
end;

procedure TfrmRL0507.edtDataIniExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataIni.Date = 0 then
   begin
      Application.MessageBox('Informa a data inicial', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataIni.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0507.edtDataFimExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if edtDataFim.Date = 0 then
   begin
      Application.MessageBox('Informa a data final', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      edtDataFim.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0507.btnImprimirClick(Sender: TObject);

   procedure Adiciona_Valor;
   begin
      with dmRL0507 do
      begin
         pColocacao := pColocacao + 1;

         cdsTemp_01.Append;

         cdsTemp_01COLOCACAO.AsString       := IntToStr(pColocacao) + 'º';
         cdsTemp_01NOME_CLIENTE.AsString    := cdsClienteNOME_CLIENTE.AsString;
         cdsTemp_01CODIGO_CLIENTE.AsInteger := cdsClienteCLIENTE_VENDA.AsInteger;
         cdsTemp_01TOTAL.AsFloat            := cdsClienteTOTAL_VENDA.AsFloat;
         cdsTemp_01QTD_DUP.AsInteger        := 1;
         cdsTemp_01VALOR_MAIOR.AsFloat      := cdsClienteTOTAL_VENDA.AsFloat;
         cdsTemp_01VALOR_MENOR.AsFloat      := cdsClienteTOTAL_VENDA.AsFloat;

         cdsTemp_01.Post;
      end;
   end;

   procedure Soma_Valor;
   begin
      with dmRL0507 do
      begin
         cdsTemp_01.Edit;

         cdsTemp_01COLOCACAO.AsString       := IntToStr(pColocacao) + 'º';
         cdsTemp_01NOME_CLIENTE.AsString    := cdsClienteNOME_CLIENTE.AsString;
         cdsTemp_01CODIGO_CLIENTE.AsInteger := cdsClienteCLIENTE_VENDA.AsInteger;
         cdsTemp_01TOTAL.AsFloat            := cdsTemp_01TOTAL.AsFloat + cdsClienteTOTAL_VENDA.AsFloat;
         cdsTemp_01QTD_DUP.AsInteger        := cdsTemp_01QTD_DUP.AsInteger + 1;

         if cdsClienteTOTAL_VENDA.AsFloat > cdsTemp_01VALOR_MAIOR.AsFloat then
            cdsTemp_01VALOR_MAIOR.AsFloat      := cdsClienteTOTAL_VENDA.AsFloat;

         if cdsClienteTOTAL_VENDA.AsFloat < cdsTemp_01VALOR_MENOR.AsFloat then
            cdsTemp_01VALOR_MENOR.AsFloat      := cdsClienteTOTAL_VENDA.AsFloat;

         cdsTemp_01.Post;
      end;
   end;

Var
  Sql1 : String;
begin
   Valor_Maior := 0;
   Valor_Menor := 0;
   pColocacao  := 0;
   Valor_Total := 0;
   pContador   := edtPosicao.AsInteger;

   Sql1 := 'select v. *, '+
           'Case when (not c.nome_cliente is null) '+
           'then c.nome_cliente '+
           'else ''Não Cadastrado'' '+
           'end as NOME_CLIENTE, '+
           'case when (not v.desconto_venda is null) '+
           'then (v.fatura_venda - v.desconto_venda) '+
           'else v.fatura_venda '+
           'end as TOTAL_VENDA '+
           'from P_VENDAS v '+
           'left outer join e_cliente c on (v.cliente_venda = c.codigo_cliente) '+
           'left outer join e_natureza n on (v.cfop_venda = n.codigo_nat) '+
           'where (v.exclusao_venda is null) and n.operacao_nat = ''5'' ';

   Sql1 := Sql1 + ' and v.data_venda >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataIni.Date));
   Sql1 := Sql1 + ' and v.data_venda <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', edtDataFim.Date));

   with dmRL0507 do
   begin
      frmProcesso2 := TfrmProcesso2.Create(Application);
      frmProcesso2.Show;
      frmProcesso2.Refresh;

      cdsCliente.Close;
      cdsCliente.CommandText := Sql1;
      cdsCliente.Open;

      cdsCliente.IndexFieldNames := 'CLIENTE_VENDA';

      cdsTemp_01.Close;
      cdsTemp_01.CreateDataSet;

      cdsCliente.First;
      while not cdsCliente.Eof do
      begin
         Valor_Total := Valor_Total + cdsClienteTOTAL_VENDA.AsFloat;

         cdsCliente.Next;
      end;

      cdsCliente.First;
      while not cdsCliente.Eof do
      begin
         if not cdsTemp_01.Locate('CODIGO_CLIENTE', cdsClienteCLIENTE_VENDA.AsInteger, []) then
            Adiciona_Valor
         else
            Soma_Valor;

         cdsCliente.Next;
      end;

      cdsTemp_02.Close;
      cdsTemp_02.CreateDataSet;

      cdsTemp_01.IndexFieldNames := 'TOTAL';
      cdsTemp_01.Last;

      while not cdsTemp_01.Bof do
      begin
         cdsTemp_02.Append;

         cdsTemp_02COLOCACAO.AsString       := cdsTemp_01COLOCACAO.AsString;
         cdsTemp_02NOME_CLIENTE.AsString    := cdsTemp_01NOME_CLIENTE.AsString;
         cdsTemp_02CODIGO_CLIENTE.AsInteger := cdsTemp_01CODIGO_CLIENTE.AsInteger;
         cdsTemp_02TOTAL.AsFloat            := cdsTemp_01TOTAL.AsFloat;
         cdsTemp_02QTD_DUP.AsInteger        := cdsTemp_01QTD_DUP.AsInteger;
         cdsTemp_02VALOR_MAIOR.AsFloat      := cdsTemp_01VALOR_MAIOR.AsFloat;
         cdsTemp_02VALOR_MENOR.AsFloat      := cdsTemp_01VALOR_MENOR.AsFloat;
         cdsTemp_02IND_PERC.AsFloat         := cdsTemp_01TOTAL.AsFloat * (100 / Valor_Total);

         cdsTemp_02.Post;

         pContador := pContador - 1;
         if pContador <= 0 then
            Break;

         cdsTemp_01.Prior;
      end;

      cdsTemp_02.First;
      frmProcesso2.Close;
      rptRel_Cliente.Print;
   end;
end;

procedure TfrmRL0507.lblEmpresaGetText(Sender: TObject; var Text: String);
begin
   Text := Empresa1;
end;

procedure TfrmRL0507.lblNomeRelGetText(Sender: TObject; var Text: String);
begin
   Text := 'Rank de Cliente de '+ edtDataIni.Text + ' a ' + edtDataFim.Text;
end;

procedure TfrmRL0507.lblDataGetText(Sender: TObject; var Text: String);
begin
   Text := DateToStr(DataSystem1);
end;

procedure TfrmRL0507.ppVariable1Calc(Sender: TObject; var Value: Variant);
begin
   ppVariable1.AsString := IntToStr(dmRL0507.cdsTemp_02.RecNo) + 'º';
end;

procedure TfrmRL0507.ppTot_PercCalc(Sender: TObject; var Value: Variant);
begin
   ppTot_Perc.AsDouble := ppTot_Perc.AsDouble + dmRL0507.cdsTemp_02TOTAL.AsFloat * (100 / Valor_Total);
end;

procedure TfrmRL0507.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
