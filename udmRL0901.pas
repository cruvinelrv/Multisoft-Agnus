unit udmRL0901;

interface

uses
  SysUtils, Classes, FMTBcd, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0901 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dtsConsulta: TDataSource;
    cdsConsultaCODIGO_CONLAN: TIntegerField;
    cdsConsultaCORRENTE_CONLAN: TIntegerField;
    cdsConsultaDESCRICAO_BANCO: TStringField;
    cdsConsultaDATA_CONLAN: TDateField;
    cdsConsultaVALOR_CONLAN: TFMTBCDField;
    cdsConsultaTIPO_CONLAN: TStringField;
    cdsConsultaHISTORICO_CONLAN: TStringField;
    cdsConsultaHISTORIC2_CONLAN: TStringField;
    cdsConsultaMOVIMENTO_CONLAN: TDateField;
    cdsConsultaBANCO_RESBAN: TIntegerField;
    cdsConsultaANTERIOR_RESBAN: TFMTBCDField;
    cdsConsultaDEBITO_RESBAN: TFMTBCDField;
    cdsConsultaCREDITO_RESBAN: TFMTBCDField;
    cdsConsultaSaldo_Atual: TFMTBCDField;
    cdsConsultaDOCUMENTO_CONLAN: TStringField;
    cdsConsultaCONTA_CONLAN: TStringField;
    ppDBConsulta: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0901: TdmRL0901;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
