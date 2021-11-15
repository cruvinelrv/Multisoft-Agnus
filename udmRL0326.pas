unit udmRL0326;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, ppComm,
  ppRelatv, ppDB, ppDBPipe;

type
  TdmRL0326 = class(TDataModule)
    qryProdutos: TSQLQuery;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    dsProdutos: TDataSource;
    pplProdutos: TppDBPipeline;
    qryGrade: TSQLQuery;
    qryGradePRODUTO_GRADE: TIntegerField;
    qryGradeDESCRICAO_GRADE: TStringField;
    qryGradeCODIGO_GRADE: TStringField;
    qryGradeESTOQUE_GRADE: TFMTBCDField;
    cdsGrade: TClientDataSet;
    cdsGradePRODUTO_GRADE: TIntegerField;
    cdsGradeDESCRICAO_GRADE: TStringField;
    cdsGradeCODIGO_GRADE: TStringField;
    cdsGradeESTOQUE_GRADE: TFMTBCDField;
    dsGrade: TDataSource;
    ppDBGrade: TppDBPipeline;
    dspGrade: TDataSetProvider;
    cdsProdutosCODIGO_PRODUTO: TIntegerField;
    cdsProdutosDESCRICAO_PRODUTO: TStringField;
    cdsProdutosUNIDADE_PRODUTO: TStringField;
    cdsProdutosREFERENCIA_PRODUTO: TStringField;
    cdsProdutosESTOQUE_PRODUTO: TFMTBCDField;
    cdsProdutosNOME_FABRICANTE: TStringField;
    cdsProdutosGRUPO_PRODUTO: TIntegerField;
    cdsProdutosDESCRICAO_GRUPO: TStringField;
    cdsProdutosPRECO_CUSTO_PRODUTO: TFMTBCDField;
    cdsProdutosPRECO_COMPRA_PRODUTO: TFMTBCDField;
    cdsProdutosBARRA_PRODUTO: TStringField;
    cdsProdutosFABRICANTE_PRODUTO: TStringField;
    cdsProdutosPRAT1_PRODUTO: TStringField;
    cdsProdutosPRAT2_PRODUTO: TStringField;
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0326: TdmRL0326;

implementation

uses uDmPrincipal, uRL0326;

{$R *.dfm}

procedure TdmRL0326.dsProdutosDataChange(Sender: TObject; Field: TField);
begin
   if frmRL0326.cbxGrade.ItemIndex = 1 then
   begin
      cdsGrade.Close;
      cdsGrade.Params.ParamByName('CODIGO_PRODUTO').AsInteger := cdsProdutosCODIGO_PRODUTO.AsInteger;
      cdsGrade.Open;
   end;
end;

end.
