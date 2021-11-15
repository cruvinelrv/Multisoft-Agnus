unit udmShiftF12;

interface

uses
  SysUtils, Classes, FMTBcd, Provider, DBClient, DB, SqlExpr;

type
  TdmShiftF12 = class(TDataModule)
    qryTroca: TSQLQuery;
    qryTrocaCOD_VENDA: TIntegerField;
    qryTrocaDATA: TDateField;
    qryTrocaHORA: TStringField;
    qryTrocaPRODUTO1: TIntegerField;
    qryTrocaPRODUTO2: TIntegerField;
    qryTrocaPRODUTO3: TIntegerField;
    qryTrocaPRODUTO4: TIntegerField;
    qryTrocaPRODUTO5: TIntegerField;
    qryTrocaQUANT1: TIntegerField;
    qryTrocaQUANT2: TIntegerField;
    qryTrocaQUANT3: TIntegerField;
    qryTrocaQUANT4: TIntegerField;
    qryTrocaQUANT5: TIntegerField;
    qryTrocaPRECO1: TFMTBCDField;
    qryTrocaPRECO2: TFMTBCDField;
    qryTrocaPRECO3: TFMTBCDField;
    qryTrocaPRECO4: TFMTBCDField;
    qryTrocaPRECO5: TFMTBCDField;
    qryTrocaCHAVE: TStringField;
    qryTrocaUSUARIO: TStringField;
    qryTrocaGRADE1: TStringField;
    qryTrocaGRADE2: TStringField;
    qryTrocaGRADE3: TStringField;
    qryTrocaGRADE4: TStringField;
    qryTrocaGRADE5: TStringField;
    cdsTroca: TClientDataSet;
    cdsTrocaCOD_VENDA: TIntegerField;
    cdsTrocaDATA: TDateField;
    cdsTrocaHORA: TStringField;
    cdsTrocaPRODUTO1: TIntegerField;
    cdsTrocaPRODUTO2: TIntegerField;
    cdsTrocaPRODUTO3: TIntegerField;
    cdsTrocaPRODUTO4: TIntegerField;
    cdsTrocaPRODUTO5: TIntegerField;
    cdsTrocaQUANT1: TIntegerField;
    cdsTrocaQUANT2: TIntegerField;
    cdsTrocaQUANT3: TIntegerField;
    cdsTrocaQUANT4: TIntegerField;
    cdsTrocaQUANT5: TIntegerField;
    cdsTrocaPRECO1: TFMTBCDField;
    cdsTrocaPRECO2: TFMTBCDField;
    cdsTrocaPRECO3: TFMTBCDField;
    cdsTrocaPRECO4: TFMTBCDField;
    cdsTrocaPRECO5: TFMTBCDField;
    cdsTrocaCHAVE: TStringField;
    cdsTrocaUSUARIO: TStringField;
    cdsTrocaGRADE1: TStringField;
    cdsTrocaGRADE2: TStringField;
    cdsTrocaGRADE3: TStringField;
    cdsTrocaGRADE4: TStringField;
    cdsTrocaGRADE5: TStringField;
    dspTroca: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmShiftF12: TdmShiftF12;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
