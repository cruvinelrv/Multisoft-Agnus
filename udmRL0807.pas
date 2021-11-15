unit udmRL0807;

interface

uses
  SysUtils, Classes, DBClient, Provider, DB, SqlExpr;

type
  TdmRL0807 = class(TDataModule)
    qryReceber: TSQLQuery;
    dspReceber: TDataSetProvider;
    cdsReceber: TClientDataSet;
    qryVendas: TSQLQuery;
    dspVendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    qryFatura: TSQLQuery;
    dspFatura: TDataSetProvider;
    cdsFatura: TClientDataSet;
    qryFaturaCODIGO_FATURA: TIntegerField;
    qryFaturaCODIGO_CLIENTE_FATURA: TIntegerField;
    qryFaturaEMISSAO_FATURA: TDateField;
    qryFaturaSERIE_FATURA: TStringField;
    qryFaturaNOTAFISCAL_FATURA: TIntegerField;
    qryFaturaVALOR_FATURA: TFMTBCDField;
    qryFaturaNOME_CLIENTE: TStringField;
    cdsFaturaCODIGO_FATURA: TIntegerField;
    cdsFaturaCODIGO_CLIENTE_FATURA: TIntegerField;
    cdsFaturaEMISSAO_FATURA: TDateField;
    cdsFaturaSERIE_FATURA: TStringField;
    cdsFaturaNOTAFISCAL_FATURA: TIntegerField;
    cdsFaturaVALOR_FATURA: TFMTBCDField;
    cdsFaturaNOME_CLIENTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0807: TdmRL0807;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
