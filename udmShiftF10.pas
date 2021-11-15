unit udmShiftF10;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmShiftF10 = class(TDataModule)
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
    cdsGrid: TClientDataSet;
    cdsGridDOCUMENTO_PAGAR: TStringField;
    cdsGridFORNECEDOR_PAGAR: TIntegerField;
    cdsGridEMISSAO_PAGAR: TDateField;
    cdsGridVENCIMENTO_PAGAR: TDateField;
    cdsGridPREVISAO_PAGAR: TDateField;
    cdsGridVALOR_PAGAR: TWordField;
    cdsGridVALORPAGO_PAGAR: TFloatField;
    cdsGridTIPO_BAIXA_PAGAR: TStringField;
    cdsGridDIAS_ATRASO: TFloatField;
    cdsGridJUROS: TFloatField;
    cdsGridSALDO: TFloatField;
    qryConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    cdsConsultaDOCUMENTO_PAGAR: TStringField;
    cdsConsultaFORNECEDOR_PAGAR: TIntegerField;
    cdsConsultaEMISSAO_PAGAR: TDateField;
    cdsConsultaVENCIMENTO_PAGAR: TDateField;
    cdsConsultaPREVISAO_PAGAR: TDateField;
    cdsConsultaVALOR_PAGAR: TFMTBCDField;
    cdsConsultaVALORPAGO_PAGAR: TFMTBCDField;
    cdsConsultaTIPO_BAIXA_PAGAR: TStringField;
    cdsConsultaHISTORICO_PAGAR: TMemoField;
    cdsConsultaPARCIAL_PAGAR: TFMTBCDField;
    cdsGridMORA_DIA: TFloatField;
    cdsConsultaMORA_DIA_PAGAR: TFMTBCDField;
    cdsGridHISTORICO_PAGAR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmShiftF10: TdmShiftF10;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
