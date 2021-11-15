unit uDmCd03;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmCd03 = class(TDataModule)
    qrySubGrupo: TSQLQuery;
    qrySubGrupoCODIGO_SUBGRUPO: TIntegerField;
    qrySubGrupoDESCRICAO_SUBGRUPO: TStringField;
    qrySubGrupoCODIGO_GRUPO_SUBGRUPO: TIntegerField;
    qrySubGrupoCOD_EMPRESA: TIntegerField;
    dspSubGrupo: TDataSetProvider;
    cdsSubGrupo: TClientDataSet;
    cdsSubGrupoCODIGO_SUBGRUPO: TIntegerField;
    cdsSubGrupoDESCRICAO_SUBGRUPO: TStringField;
    cdsSubGrupoCODIGO_GRUPO_SUBGRUPO: TIntegerField;
    cdsSubGrupoCOD_EMPRESA: TIntegerField;
    cdsGrupoProduto: TClientDataSet;
    cdsGrupoProdutoCODIGO_GRUPO: TIntegerField;
    cdsGrupoProdutoDESCRICAO_GRUPO: TStringField;
    cdsGrupoProdutoCOMISSAO_GRUPO: TFMTBCDField;
    cdsGrupoProdutoCOMISSAO1_GRUPO: TFMTBCDField;
    cdsGrupoProdutoFATOR_VEND_GRUPO: TFMTBCDField;
    cdsGrupoProdutoCODIGO_SECAO_GRUPO: TIntegerField;
    cdsGrupoProdutoSUSPENSO_GRUPO: TStringField;
    cdsGrupoProdutoTRANSFERE_GRUPO: TFMTBCDField;
    cdsGrupoProdutoOBSERVACAO_GRUPO: TStringField;
    cdsGrupoProdutoNEGATIVO_GRUPO: TStringField;
    cdsGrupoProdutoCOD_EMPRESA: TIntegerField;
    dspGrupoProduto: TDataSetProvider;
    qryGrupoProduto: TSQLQuery;
    qryGrupoProdutoCODIGO_GRUPO: TIntegerField;
    qryGrupoProdutoDESCRICAO_GRUPO: TStringField;
    qryGrupoProdutoCOMISSAO_GRUPO: TFMTBCDField;
    qryGrupoProdutoCOMISSAO1_GRUPO: TFMTBCDField;
    qryGrupoProdutoFATOR_VEND_GRUPO: TFMTBCDField;
    qryGrupoProdutoCODIGO_SECAO_GRUPO: TIntegerField;
    qryGrupoProdutoSUSPENSO_GRUPO: TStringField;
    qryGrupoProdutoTRANSFERE_GRUPO: TFMTBCDField;
    qryGrupoProdutoOBSERVACAO_GRUPO: TStringField;
    qryGrupoProdutoNEGATIVO_GRUPO: TStringField;
    qryGrupoProdutoCOD_EMPRESA: TIntegerField;
    qryConsulta: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCd03: TdmCd03;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
