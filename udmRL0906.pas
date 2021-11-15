unit udmRL0906;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0906 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    cdsConsultaCODIGO_CONLAN: TIntegerField;
    cdsConsultaCORRENTE_CONLAN: TIntegerField;
    cdsConsultaCONTA_CONLAN: TStringField;
    cdsConsultaDESCRICAO_CONTA: TStringField;
    cdsConsultaTIPO_CONTA: TStringField;
    cdsConsultaTITULO_CONTA: TStringField;
    cdsConsultaHISTORICO_CONLAN: TStringField;
    cdsConsultaVALOR_CONLAN: TFMTBCDField;
    cdsConsultaMOVIMENTO_CONLAN: TDateField;
    cdsConsultaCENTRO_CONLAN: TIntegerField;
    cdsConsultaDOCUMENTO_CONLAN: TStringField;
    cdsConsultaORIGEM_CONLAN: TStringField;
    cdsConsultaTIPO_CONLAN: TStringField;
    qryCaixa999: TSQLQuery;
    dspCaixa999: TDataSetProvider;
    cdsCaixa999: TClientDataSet;
    dtsCaixa999: TDataSource;
    ppDBCaixa999: TppDBPipeline;
    qryCaixa999CODIGO_CONLAN: TIntegerField;
    qryCaixa999CORRENTE_CONLAN: TIntegerField;
    qryCaixa999CONTA_CONLAN: TStringField;
    qryCaixa999DATA_CONLAN: TDateField;
    qryCaixa999DESCRICAO_CONTA: TStringField;
    qryCaixa999TIPO_CONTA: TStringField;
    qryCaixa999TITULO_CONTA: TStringField;
    qryCaixa999HISTORICO_CONLAN: TStringField;
    qryCaixa999VALOR_CONLAN: TFMTBCDField;
    qryCaixa999MOVIMENTO_CONLAN: TDateField;
    qryCaixa999CENTRO_CONLAN: TIntegerField;
    qryCaixa999DOCUMENTO_CONLAN: TStringField;
    qryCaixa999ORIGEM_CONLAN: TStringField;
    qryCaixa999TIPO_CONLAN: TStringField;
    qryCaixa999Credito: TFMTBCDField;
    qryCaixa999Debito: TFMTBCDField;
    cdsCaixa999CODIGO_CONLAN: TIntegerField;
    cdsCaixa999CORRENTE_CONLAN: TIntegerField;
    cdsCaixa999CONTA_CONLAN: TStringField;
    cdsCaixa999DATA_CONLAN: TDateField;
    cdsCaixa999DESCRICAO_CONTA: TStringField;
    cdsCaixa999TIPO_CONTA: TStringField;
    cdsCaixa999TITULO_CONTA: TStringField;
    cdsCaixa999HISTORICO_CONLAN: TStringField;
    cdsCaixa999VALOR_CONLAN: TFMTBCDField;
    cdsCaixa999MOVIMENTO_CONLAN: TDateField;
    cdsCaixa999CENTRO_CONLAN: TIntegerField;
    cdsCaixa999DOCUMENTO_CONLAN: TStringField;
    cdsCaixa999ORIGEM_CONLAN: TStringField;
    cdsCaixa999TIPO_CONLAN: TStringField;
    cdsCaixa999Credito: TFMTBCDField;
    cdsCaixa999Debito: TFMTBCDField;
    cdsConsultaDATA_CONLAN: TDateField;
    cdsConsultaCredito: TFMTBCDField;
    cdsConsultaDebito: TFMTBCDField;
    ppDBConsulta: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0906: TdmRL0906;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
