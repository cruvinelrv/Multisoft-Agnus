unit udmShiftF4;

interface

uses
  SysUtils, Classes, DB, DBClient, FMTBcd, Provider, SqlExpr;

type
  TdmShiftF4 = class(TDataModule)
    cdsConsulta: TClientDataSet;
    cdsConsultaDATA_TABELA1: TDateField;
    cdsConsultaGRUPO_TABELA1: TStringField;
    cdsConsultaPERCENTUAL_TABELA: TStringField;
    cdsConsultaTIPO_TABELA1: TStringField;
    cdsConsultaPRECO_TABELA1: TStringField;
    cdsConsultaUSUARIO_TABELA1: TStringField;
    cdsConsultaCOD_EMPRESA: TIntegerField;
    cdsConsultaREAJUSTADO: TStringField;
    qryTabela01: TSQLQuery;
    dspTabela01: TDataSetProvider;
    cdsTabela01: TClientDataSet;
    cdsTabela01COD_EMPRESA: TIntegerField;
    cdsTabela01DATA_TABELA01: TDateField;
    cdsTabela01GRUPO_TABELA01: TIntegerField;
    cdsTabela01PERCENTUAL_TABELA01: TFMTBCDField;
    cdsTabela01TIPO_TABELA01: TStringField;
    cdsTabela01PRECO_TABELA01: TStringField;
    cdsTabela01USUARIO_TABELA01: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmShiftF4: TdmShiftF4;

implementation

uses uDmPrincipal;

{$R *.dfm}

end.
