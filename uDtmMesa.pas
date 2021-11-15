unit uDtmMesa;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TDtmMesa = class(TDataModule)
    SQLConnection1: TSQLConnection;
    sqlMesa: TSQLQuery;
    dspMesa: TDataSetProvider;
    cdsMesa: TClientDataSet;
    sqlI_Mesa: TSQLQuery;
    dspI_Mesa: TDataSetProvider;
    cdsI_Mesa: TClientDataSet;
    sqlCli_Mesa: TSQLQuery;
    dspCli_Mesa: TDataSetProvider;
    cdsCli_Mesa: TClientDataSet;
    sqlReserva: TSQLQuery;
    dspReserva: TDataSetProvider;
    cdsReserva: TClientDataSet;
    sqlMesaCODIGO: TIntegerField;
    sqlMesaNUM_MESA: TIntegerField;
    sqlMesaGARCOM: TIntegerField;
    sqlMesaCLIENTE: TIntegerField;
    sqlMesaTIPO_PAGAM: TIntegerField;
    sqlMesaDESCONTO: TFMTBCDField;
    sqlMesaACRESCIMO: TFMTBCDField;
    sqlMesaJUNCAO: TIntegerField;
    sqlMesaSTATUS: TStringField;
    cdsMesaCODIGO: TIntegerField;
    cdsMesaNUM_MESA: TIntegerField;
    cdsMesaGARCOM: TIntegerField;
    cdsMesaCLIENTE: TIntegerField;
    cdsMesaTIPO_PAGAM: TIntegerField;
    cdsMesaDESCONTO: TFMTBCDField;
    cdsMesaACRESCIMO: TFMTBCDField;
    cdsMesaJUNCAO: TIntegerField;
    cdsMesaSTATUS: TStringField;
    sqlI_MesaCODIGO: TIntegerField;
    sqlI_MesaPRODUTO: TIntegerField;
    sqlI_MesaVALOR_UNIT: TFMTBCDField;
    sqlI_MesaQUANTIDADE: TFMTBCDField;
    sqlI_MesaCLIENTE: TIntegerField;
    sqlI_MesaNOME_CLI: TStringField;
    cdsI_MesaCODIGO: TIntegerField;
    cdsI_MesaPRODUTO: TIntegerField;
    cdsI_MesaVALOR_UNIT: TFMTBCDField;
    cdsI_MesaQUANTIDADE: TFMTBCDField;
    cdsI_MesaCLIENTE: TIntegerField;
    cdsI_MesaNOME_CLI: TStringField;
    sqlCli_MesaCODIGO: TIntegerField;
    sqlCli_MesaNUM_MESA: TIntegerField;
    sqlCli_MesaCLIENTE: TIntegerField;
    sqlCli_MesaNOME_CLI: TStringField;
    cdsCli_MesaCODIGO: TIntegerField;
    cdsCli_MesaNUM_MESA: TIntegerField;
    cdsCli_MesaCLIENTE: TIntegerField;
    cdsCli_MesaNOME_CLI: TStringField;
    sqlReservaCODIGO: TIntegerField;
    sqlReservaNUM_MESA: TIntegerField;
    sqlReservaCLIENTE: TIntegerField;
    sqlReservaATENDENTE: TIntegerField;
    sqlReservaDATA_RES: TDateField;
    sqlReservaHORA_RES: TTimeField;
    sqlReservaDATA_USO: TDateField;
    sqlReservaHORA_USO: TTimeField;
    cdsReservaCODIGO: TIntegerField;
    cdsReservaNUM_MESA: TIntegerField;
    cdsReservaCLIENTE: TIntegerField;
    cdsReservaATENDENTE: TIntegerField;
    cdsReservaDATA_RES: TDateField;
    cdsReservaHORA_RES: TTimeField;
    cdsReservaDATA_USO: TDateField;
    cdsReservaHORA_USO: TTimeField;
    sqlPrincipal: TSQLQuery;
    dspPrincipal: TDataSetProvider;
    cdsPrincipal: TClientDataSet;
    sqlI_MesaSTATUS: TStringField;
    cdsI_MesaSTATUS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmMesa: TDtmMesa;

implementation

{$R *.dfm}

end.
