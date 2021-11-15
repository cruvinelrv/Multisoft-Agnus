unit udmFn08;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TdmFn08 = class(TDataModule)
    qryResban: TSQLQuery;
    dspResban: TDataSetProvider;
    cdsResban: TClientDataSet;
    qryResbanCHAVE_RESBAN: TStringField;
    qryResbanDEBITO_RESBAN: TFMTBCDField;
    qryResbanCREDITO_RESBAN: TFMTBCDField;
    qryResbanCOD_EMPRESA: TIntegerField;
    cdsResbanCHAVE_RESBAN: TStringField;
    cdsResbanDEBITO_RESBAN: TFMTBCDField;
    cdsResbanCREDITO_RESBAN: TFMTBCDField;
    cdsResbanCOD_EMPRESA: TIntegerField;
    qryResban2: TSQLQuery;
    cdsResban2: TClientDataSet;
    dspResban2: TDataSetProvider;
    qryResban2CHAVE_RESBAN: TStringField;
    qryResban2DEBITO_RESBAN: TFMTBCDField;
    qryResban2CREDITO_RESBAN: TFMTBCDField;
    qryResban2COD_EMPRESA: TIntegerField;
    cdsResban2CHAVE_RESBAN: TStringField;
    cdsResban2DEBITO_RESBAN: TFMTBCDField;
    cdsResban2CREDITO_RESBAN: TFMTBCDField;
    cdsResban2COD_EMPRESA: TIntegerField;
    qryConlan: TSQLQuery;
    dspConlan: TDataSetProvider;
    cdsConlan: TClientDataSet;
    qryConlanCODIGO_CONLAN: TIntegerField;
    qryConlanCORRENTE_CONLAN: TIntegerField;
    qryConlanVALOR_CONLAN: TFMTBCDField;
    qryConlanDATA_CONLAN: TDateField;
    qryConlanCOD_EMPRESA: TIntegerField;
    qryConlanDOCUMENTO_CONLAN: TStringField;
    qryConlanHISTORICO_CONLAN: TStringField;
    qryConlanTIPO_CONLAN: TStringField;
    qryConlanMOVIMENTO_CONLAN: TDateField;
    cdsConlanCODIGO_CONLAN: TIntegerField;
    cdsConlanCORRENTE_CONLAN: TIntegerField;
    cdsConlanVALOR_CONLAN: TFMTBCDField;
    cdsConlanDATA_CONLAN: TDateField;
    cdsConlanCOD_EMPRESA: TIntegerField;
    cdsConlanDOCUMENTO_CONLAN: TStringField;
    cdsConlanHISTORICO_CONLAN: TStringField;
    cdsConlanTIPO_CONLAN: TStringField;
    cdsConlanMOVIMENTO_CONLAN: TDateField;
    qryConlan2: TSQLQuery;
    dspConlan2: TDataSetProvider;
    cdsConlan2: TClientDataSet;
    qryConlan2CODIGO_CONLAN: TIntegerField;
    qryConlan2CORRENTE_CONLAN: TIntegerField;
    qryConlan2VALOR_CONLAN: TFMTBCDField;
    qryConlan2DATA_CONLAN: TDateField;
    qryConlan2COD_EMPRESA: TIntegerField;
    qryConlan2DOCUMENTO_CONLAN: TStringField;
    qryConlan2HISTORICO_CONLAN: TStringField;
    qryConlan2TIPO_CONLAN: TStringField;
    qryConlan2MOVIMENTO_CONLAN: TDateField;
    cdsConlan2CODIGO_CONLAN: TIntegerField;
    cdsConlan2CORRENTE_CONLAN: TIntegerField;
    cdsConlan2VALOR_CONLAN: TFMTBCDField;
    cdsConlan2DATA_CONLAN: TDateField;
    cdsConlan2COD_EMPRESA: TIntegerField;
    cdsConlan2DOCUMENTO_CONLAN: TStringField;
    cdsConlan2HISTORICO_CONLAN: TStringField;
    cdsConlan2TIPO_CONLAN: TStringField;
    cdsConlan2MOVIMENTO_CONLAN: TDateField;
    qryBanco: TSQLQuery;
    qryBancoCODIGO_BANCO: TIntegerField;
    qryBancoCOD_EMPRESA: TIntegerField;
    qryBancoLIMITE_BANCO: TFMTBCDField;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    cdsBancoCODIGO_BANCO: TIntegerField;
    cdsBancoCOD_EMPRESA: TIntegerField;
    cdsBancoLIMITE_BANCO: TFMTBCDField;
    qryConlan3: TSQLQuery;
    dspConlan3: TDataSetProvider;
    cdsConlan3: TClientDataSet;
    qryConlan3CODIGO_CONLAN: TIntegerField;
    qryConlan3CORRENTE_CONLAN: TIntegerField;
    qryConlan3VALOR_CONLAN: TFMTBCDField;
    qryConlan3DATA_CONLAN: TDateField;
    qryConlan3COD_EMPRESA: TIntegerField;
    qryConlan3DOCUMENTO_CONLAN: TStringField;
    qryConlan3HISTORICO_CONLAN: TStringField;
    qryConlan3TIPO_CONLAN: TStringField;
    qryConlan3MOVIMENTO_CONLAN: TDateField;
    cdsConlan3CODIGO_CONLAN: TIntegerField;
    cdsConlan3CORRENTE_CONLAN: TIntegerField;
    cdsConlan3VALOR_CONLAN: TFMTBCDField;
    cdsConlan3DATA_CONLAN: TDateField;
    cdsConlan3COD_EMPRESA: TIntegerField;
    cdsConlan3DOCUMENTO_CONLAN: TStringField;
    cdsConlan3HISTORICO_CONLAN: TStringField;
    cdsConlan3TIPO_CONLAN: TStringField;
    cdsConlan3MOVIMENTO_CONLAN: TDateField;
    qryConlan4: TSQLQuery;
    qryConlan4CODIGO_CONLAN: TIntegerField;
    qryConlan4CORRENTE_CONLAN: TIntegerField;
    qryConlan4VALOR_CONLAN: TFMTBCDField;
    qryConlan4DATA_CONLAN: TDateField;
    qryConlan4COD_EMPRESA: TIntegerField;
    qryConlan4DOCUMENTO_CONLAN: TStringField;
    qryConlan4HISTORICO_CONLAN: TStringField;
    qryConlan4TIPO_CONLAN: TStringField;
    qryConlan4MOVIMENTO_CONLAN: TDateField;
    dspConlan4: TDataSetProvider;
    cdsConlan4: TClientDataSet;
    cdsConlan4CODIGO_CONLAN: TIntegerField;
    cdsConlan4CORRENTE_CONLAN: TIntegerField;
    cdsConlan4VALOR_CONLAN: TFMTBCDField;
    cdsConlan4DATA_CONLAN: TDateField;
    cdsConlan4COD_EMPRESA: TIntegerField;
    cdsConlan4DOCUMENTO_CONLAN: TStringField;
    cdsConlan4HISTORICO_CONLAN: TStringField;
    cdsConlan4TIPO_CONLAN: TStringField;
    cdsConlan4MOVIMENTO_CONLAN: TDateField;
    qryConsulta: TSQLQuery;
    qryResbanANTERIOR_RESBAN: TFMTBCDField;
    cdsResbanANTERIOR_RESBAN: TFMTBCDField;
    qryConlanORIGEM_CONLAN: TStringField;
    cdsConlanORIGEM_CONLAN: TStringField;
    qryConlan2ORIGEM_CONLAN: TStringField;
    cdsConlan2ORIGEM_CONLAN: TStringField;
    qryResbanBANCO_RESBAN: TIntegerField;
    cdsResbanBANCO_RESBAN: TIntegerField;
    qryResban2BANCO_RESBAN: TIntegerField;
    cdsResban2BANCO_RESBAN: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn08: TdmFn08;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
