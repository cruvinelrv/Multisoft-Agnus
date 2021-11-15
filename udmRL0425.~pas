unit udmRL0425;

interface

uses
  SysUtils, Classes, DB, DBClient, Provider, SqlExpr;

type
  TdmRL0425 = class(TDataModule)
    dspDoc_Simples: TDataSetProvider;
    cdsDoc_Simples: TClientDataSet;
    sqlDoc_Simples: TSQLQuery;
    dtsDoc_Simples: TDataSource;
    dspItens_Doc_Simples: TDataSetProvider;
    cdsItens_Doc_Simples: TClientDataSet;
    qryItens_Doc_Simples: TSQLQuery;
    dstItens_Doc_Simples: TDataSource;
    procedure dtsDoc_SimplesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRL0425: TdmRL0425;

implementation

uses uDmPrincipal;

{$R *.dfm}

procedure TdmRL0425.dtsDoc_SimplesDataChange(Sender: TObject;
  Field: TField);
begin
   if dmRL0425 <> nil then
   begin
      if cdsDoc_Simples.FieldByName('CODIGO_VENDA').Value > 0 then
      begin
         cdsItens_Doc_Simples.Close;
         cdsItens_Doc_Simples.Params.ParamByName('VENDA').AsString := cdsDoc_Simples.FieldByName('CODIGO_VENDA').AsString;
         cdsItens_Doc_Simples.Open;
      end;
   end;
end;

end.
