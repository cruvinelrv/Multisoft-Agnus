unit udmAltF5;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TdmAltF5 = class(TDataModule)
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaDUPLICATA_RECEBER: TStringField;
    cdsConsultaCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsConsultaEMISSAO_RECEBER: TDateField;
    cdsConsultaVENCIMENTO_RECEBER: TDateField;
    cdsConsultaPREVISAO_RECEBER: TDateField;
    cdsConsultaVALOR_RECEBER: TFMTBCDField;
    cdsConsultaVALORPAGO_RECEBER: TFMTBCDField;
    cdsConsultaTIPO_BAIXA_RECEBER: TStringField;
    cdsConsultaHISTORICO_RECEBER: TMemoField;
    cdsGrid: TClientDataSet;
    cdsGridDUPLICATA_RECEBER: TStringField;
    cdsGridCODIGO_CLIENTE_RECEBER: TIntegerField;
    cdsGridEMISSAO_RECEBER: TDateField;
    cdsGridVENCIMENTO_RECEBER: TDateField;
    cdsGridPREVISAO_RECEBER: TDateField;
    cdsGridVALOR_RECEBER: TFloatField;
    cdsGridVALORPAGO_RECEBER: TFloatField;
    cdsGridTIPO_BAIXA_RECEBER: TStringField;
    cdsGridDIAS_ATRASO: TFloatField;
    cdsGridJUROS: TFloatField;
    cdsGridSALDO: TFloatField;
    qryEmpresa: TSQLQuery;
    qryEmpresaCODIGO_EMP: TIntegerField;
    qryEmpresaJUROS_EMP: TFMTBCDField;
    qryEmpresaDIAS_BLOQ_EMP: TIntegerField;
    qryEmpresaTIPO_JUR_EMP: TStringField;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaCODIGO_EMP: TIntegerField;
    cdsEmpresaJUROS_EMP: TFMTBCDField;
    cdsEmpresaDIAS_BLOQ_EMP: TIntegerField;
    cdsEmpresaTIPO_JUR_EMP: TStringField;
    cdsConsultaPARCIAL_RECEBER: TFMTBCDField;
    cdsConsultaDATA_BASE_RECEBER: TDateField;
    cdsGridHISTORICO_RECEBER: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAltF5: TdmAltF5;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
