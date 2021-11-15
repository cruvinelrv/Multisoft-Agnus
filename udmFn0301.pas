unit udmFn0301;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TdmFn0301 = class(TDataModule)
    qryPredatado: TSQLQuery;
    dspPredatado: TDataSetProvider;
    qryGrid: TSQLQuery;
    dspGrid: TDataSetProvider;
    cdsGrid: TClientDataSet;
    cdsPredatado: TClientDataSet;
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
    cdsGridNOME_CLIENTE: TStringField;
    cdsGridDT_BAIXA: TDateField;
    cdsGridDT_LANCTO: TDateField;
    cdsGridCODIGO_CLIENTE: TIntegerField;
    qryPredatadoFORNECEDOR: TIntegerField;
    qryPredatadoCOD_VENDA: TIntegerField;
    qryPredatadoTELEFONE: TStringField;
    qryPredatadoAGENCIA: TStringField;
    qryPredatadoBANCO: TIntegerField;
    qryPredatadoCONTA: TStringField;
    qryPredatadoCHEQUE: TStringField;
    qryPredatadoVALOR: TFMTBCDField;
    qryPredatadoEMITENTE: TStringField;
    qryPredatadoVENCIMENTO: TDateField;
    qryPredatadoDEVOLUCAO1: TDateField;
    qryPredatadoDEVOLUCAO2: TDateField;
    qryPredatadoMOTIVO1: TStringField;
    qryPredatadoMOTIVO2: TStringField;
    qryPredatadoEMISSAO: TDateField;
    qryPredatadoLIQUIDACAO: TDateField;
    qryPredatadoOBSERVACAO: TStringField;
    qryPredatadoCON_BAIXA: TIntegerField;
    qryPredatadoCGC: TStringField;
    qryPredatadoNOME_CLIENTE: TStringField;
    qryPredatadoDT_BAIXA: TDateField;
    qryPredatadoDT_LANCTO: TDateField;
    qryPredatadoCODIGO_CLIENTE: TIntegerField;
    cdsPredatadoFORNECEDOR: TIntegerField;
    cdsPredatadoCOD_VENDA: TIntegerField;
    cdsPredatadoTELEFONE: TStringField;
    cdsPredatadoAGENCIA: TStringField;
    cdsPredatadoBANCO: TIntegerField;
    cdsPredatadoCONTA: TStringField;
    cdsPredatadoCHEQUE: TStringField;
    cdsPredatadoVALOR: TFMTBCDField;
    cdsPredatadoEMITENTE: TStringField;
    cdsPredatadoVENCIMENTO: TDateField;
    cdsPredatadoDEVOLUCAO1: TDateField;
    cdsPredatadoDEVOLUCAO2: TDateField;
    cdsPredatadoMOTIVO1: TStringField;
    cdsPredatadoMOTIVO2: TStringField;
    cdsPredatadoEMISSAO: TDateField;
    cdsPredatadoLIQUIDACAO: TDateField;
    cdsPredatadoOBSERVACAO: TStringField;
    cdsPredatadoCON_BAIXA: TIntegerField;
    cdsPredatadoCGC: TStringField;
    cdsPredatadoNOME_CLIENTE: TStringField;
    cdsPredatadoDT_BAIXA: TDateField;
    cdsPredatadoDT_LANCTO: TDateField;
    cdsPredatadoCODIGO_CLIENTE: TIntegerField;
    qryConsultaCliente: TSQLQuery;
    qryConsultaClienteTELEFONE: TStringField;
    qryConsultaClienteBANCO: TIntegerField;
    qryConsultaClienteAGENCIA: TStringField;
    qryConsultaClienteCONTA: TStringField;
    qryConsultaClienteCODIGO_CLIENTE: TIntegerField;
    dspConsultaCliente: TDataSetProvider;
    cdsConsultaCliente: TClientDataSet;
    cdsConsultaClienteTELEFONE: TStringField;
    cdsConsultaClienteBANCO: TIntegerField;
    cdsConsultaClienteAGENCIA: TStringField;
    cdsConsultaClienteCONTA: TStringField;
    cdsConsultaClienteCODIGO_CLIENTE: TIntegerField;
    qryConsultaCPF: TSQLQuery;
    dspConsultaCPF: TDataSetProvider;
    cdsConsultaCPF: TClientDataSet;
    qryConsultaCPFTELEFONE: TStringField;
    qryConsultaCPFBANCO: TIntegerField;
    qryConsultaCPFAGENCIA: TStringField;
    qryConsultaCPFCONTA: TStringField;
    qryConsultaCPFCODIGO_CLIENTE: TIntegerField;
    cdsConsultaCPFTELEFONE: TStringField;
    cdsConsultaCPFBANCO: TIntegerField;
    cdsConsultaCPFAGENCIA: TStringField;
    cdsConsultaCPFCONTA: TStringField;
    cdsConsultaCPFCODIGO_CLIENTE: TIntegerField;
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
    qryGridNOME_CLIENTE: TStringField;
    qryGridDT_BAIXA: TDateField;
    qryGridDT_LANCTO: TDateField;
    qryGridCODIGO_CLIENTE: TIntegerField;
    qryGridCGC: TStringField;
    cdsGridCGC: TStringField;
    qryConsultaClienteCGC: TStringField;
    cdsConsultaClienteCGC: TStringField;
    qryConsultaCPFCGC: TStringField;
    cdsConsultaCPFCGC: TStringField;
    qryConsultaCPFEMITENTE: TStringField;
    cdsConsultaCPFEMITENTE: TStringField;
    qryConsultaCheque: TSQLQuery;
    dspConsultaCheque: TDataSetProvider;
    cdsConsultaCheque: TClientDataSet;
    qryConsultaChequeCHEQUE: TStringField;
    cdsConsultaChequeCHEQUE: TStringField;
    qryGridCODIGO_PREDATAD: TIntegerField;
    cdsGridCODIGO_PREDATAD: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFn0301: TdmFn0301;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
