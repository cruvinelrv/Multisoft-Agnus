unit udmRL0902;

interface

uses
  SysUtils, Classes, FMTBcd, ppDB, ppComm, ppRelatv, ppDBPipe, DB,
  DBClient, Provider, SqlExpr;

type
  TdmRL0902 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
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
    dtsConsulta: TDataSource;
    ppDBConsulta: TppDBPipeline;
    ppDBConsultappField1: TppField;
    ppDBConsultappField2: TppField;
    ppDBConsultappField3: TppField;
    ppDBConsultappField4: TppField;
    ppDBConsultappField5: TppField;
    ppDBConsultappField6: TppField;
    ppDBConsultappField7: TppField;
    ppDBConsultappField8: TppField;
    ppDBConsultappField9: TppField;
    ppDBConsultappField10: TppField;
    ppDBConsultappField11: TppField;
    ppDBConsultappField12: TppField;
    ppDBConsultappField13: TppField;
    ppDBConsultappField14: TppField;
    ppDBConsultappField15: TppField;
    ppDBConsultappField16: TppField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0902: TdmRL0902;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
