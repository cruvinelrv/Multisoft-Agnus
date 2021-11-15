unit udmFn0302;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmFn0302 = class(TDataModule)
    qryGrid: TSQLQuery;
    dspGrid: TDataSetProvider;
    cdsGrid: TClientDataSet;
    qryConlan: TSQLQuery;
    dspConlan: TDataSetProvider;
    cdsConlan: TClientDataSet;
    qryConlanCODIGO_CONLAN: TIntegerField;
    qryConlanCORRENTE_CONLAN: TIntegerField;
    qryConlanDATA_CONLAN: TDateField;
    qryConlanMOVIMENTO_CONLAN: TDateField;
    qryConlanVALOR_CONLAN: TFMTBCDField;
    qryConlanTIPO_CONLAN: TStringField;
    qryConlanHISTORICO_CONLAN: TStringField;
    qryConlanDOCUMENTO_CONLAN: TStringField;
    qryConlanORIGEM_CONLAN: TStringField;
    qryConlanCOD_EMPRESA: TIntegerField;
    cdsConlanCODIGO_CONLAN: TIntegerField;
    cdsConlanCORRENTE_CONLAN: TIntegerField;
    cdsConlanDATA_CONLAN: TDateField;
    cdsConlanMOVIMENTO_CONLAN: TDateField;
    cdsConlanVALOR_CONLAN: TFMTBCDField;
    cdsConlanTIPO_CONLAN: TStringField;
    cdsConlanHISTORICO_CONLAN: TStringField;
    cdsConlanDOCUMENTO_CONLAN: TStringField;
    cdsConlanORIGEM_CONLAN: TStringField;
    cdsConlanCOD_EMPRESA: TIntegerField;
    qryGridFORNECEDOR: TIntegerField;
    qryGridCOD_VENDA: TIntegerField;
    qryGridTELEFONE: TStringField;
    qryGridAGENCIA: TStringField;
    qryGridBANCO: TIntegerField;
    qryGridCONTA: TStringField;
    qryGridCHEQUE: TStringField;
    qryGridVALOR: TFMTBCDField;
    qryGridEMITENTE: TStringField;
    qryGridVENCIMENTO: TDateField;
    qryGridDEVOLUCAO1: TDateField;
    qryGridDEVOLUCAO2: TDateField;
    qryGridMOTIVO1: TStringField;
    qryGridMOTIVO2: TStringField;
    qryGridEMISSAO: TDateField;
    qryGridLIQUIDACAO: TDateField;
    qryGridOBSERVACAO: TStringField;
    qryGridCON_BAIXA: TIntegerField;
    qryGridCGC: TStringField;
    qryGridNOME_CLIENTE: TStringField;
    qryGridDT_BAIXA: TDateField;
    qryGridDT_LANCTO: TDateField;
    qryGridCODIGO_CLIENTE: TIntegerField;
    qryGridCAMPO_BUSCA: TStringField;
    cdsGridFORNECEDOR: TIntegerField;
    cdsGridCOD_VENDA: TIntegerField;
    cdsGridTELEFONE: TStringField;
    cdsGridAGENCIA: TStringField;
    cdsGridBANCO: TIntegerField;
    cdsGridCONTA: TStringField;
    cdsGridCHEQUE: TStringField;
    cdsGridVALOR: TFMTBCDField;
    cdsGridEMITENTE: TStringField;
    cdsGridVENCIMENTO: TDateField;
    cdsGridDEVOLUCAO1: TDateField;
    cdsGridDEVOLUCAO2: TDateField;
    cdsGridMOTIVO1: TStringField;
    cdsGridMOTIVO2: TStringField;
    cdsGridEMISSAO: TDateField;
    cdsGridLIQUIDACAO: TDateField;
    cdsGridOBSERVACAO: TStringField;
    cdsGridCON_BAIXA: TIntegerField;
    cdsGridCGC: TStringField;
    cdsGridNOME_CLIENTE: TStringField;
    cdsGridDT_BAIXA: TDateField;
    cdsGridDT_LANCTO: TDateField;
    cdsGridCODIGO_CLIENTE: TIntegerField;
    cdsGridCAMPO_BUSCA: TStringField;
    qryGridDESCRICAO_BANCO: TStringField;
    cdsGridDESCRICAO_BANCO: TStringField;
    qryGridCODIGO_PREDATAD: TIntegerField;
    cdsGridCODIGO_PREDATAD: TIntegerField;
    qryGrid2: TSQLQuery;
    dspGrid2: TDataSetProvider;
    cdsGrid2: TClientDataSet;
    cdsGrid2FORNECEDOR: TIntegerField;
    cdsGrid2COD_VENDA: TIntegerField;
    cdsGrid2TELEFONE: TStringField;
    cdsGrid2AGENCIA: TStringField;
    cdsGrid2BANCO: TIntegerField;
    cdsGrid2CONTA: TStringField;
    cdsGrid2CHEQUE: TStringField;
    cdsGrid2VALOR: TFMTBCDField;
    cdsGrid2EMITENTE: TStringField;
    cdsGrid2VENCIMENTO: TDateField;
    cdsGrid2DEVOLUCAO1: TDateField;
    cdsGrid2DEVOLUCAO2: TDateField;
    cdsGrid2MOTIVO1: TStringField;
    cdsGrid2MOTIVO2: TStringField;
    cdsGrid2EMISSAO: TDateField;
    cdsGrid2LIQUIDACAO: TDateField;
    cdsGrid2OBSERVACAO: TStringField;
    cdsGrid2CON_BAIXA: TIntegerField;
    cdsGrid2CGC: TStringField;
    cdsGrid2NOME_CLIENTE: TStringField;
    cdsGrid2DT_BAIXA: TDateField;
    cdsGrid2DT_LANCTO: TDateField;
    cdsGrid2CODIGO_CLIENTE: TIntegerField;
    cdsGrid2CAMPO_BUSCA: TStringField;
    cdsGrid2DESCRICAO_BANCO: TStringField;
    cdsGrid2CODIGO_PREDATAD: TIntegerField;
    qryGrid2FORNECEDOR: TIntegerField;
    qryGrid2COD_VENDA: TIntegerField;
    qryGrid2TELEFONE: TStringField;
    qryGrid2AGENCIA: TStringField;
    qryGrid2BANCO: TIntegerField;
    qryGrid2CONTA: TStringField;
    qryGrid2CHEQUE: TStringField;
    qryGrid2VALOR: TFMTBCDField;
    qryGrid2EMITENTE: TStringField;
    qryGrid2VENCIMENTO: TDateField;
    qryGrid2DEVOLUCAO1: TDateField;
    qryGrid2DEVOLUCAO2: TDateField;
    qryGrid2MOTIVO1: TStringField;
    qryGrid2MOTIVO2: TStringField;
    qryGrid2EMISSAO: TDateField;
    qryGrid2LIQUIDACAO: TDateField;
    qryGrid2OBSERVACAO: TStringField;
    qryGrid2CON_BAIXA: TIntegerField;
    qryGrid2CGC: TStringField;
    qryGrid2NOME_CLIENTE: TStringField;
    qryGrid2DT_BAIXA: TDateField;
    qryGrid2DT_LANCTO: TDateField;
    qryGrid2CODIGO_CLIENTE: TIntegerField;
    qryGrid2CAMPO_BUSCA: TStringField;
    qryGrid2DESCRICAO_BANCO: TStringField;
    qryGrid2CODIGO_PREDATAD: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn0302: TdmFn0302;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
