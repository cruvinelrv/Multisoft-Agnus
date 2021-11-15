unit uRL0323;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, Grids, DBGrids, ppParameter,
  ppModule, raCodMod;

type
  TfrmRL0323 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    rdgSequencia: TRadioGroup;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    edtGrupo: TJvValidateEdit;
    Edit1: TEdit;
    rptRel_Modelo: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel39: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    lblEmpresa: TppLabel;
    ppLine1: TppLine;
    lblNomeRel: TppLabel;
    lblParam1: TppLabel;
    lblParam2: TppLabel;
    ppLine2: TppLine;
    lblData: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine3: TppLine;
    ppVariable1: TppVariable;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppSummaryBand1: TppSummaryBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtGrupoExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRL0323: TfrmRL0323;

implementation

uses uConsulta, uGlobal, udmRL0323;

{$R *.dfm}

procedure TfrmRL0323.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0323.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0323.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRL0323.edtGrupoExit(Sender: TObject);
begin
   if btnFechar.Focused then
      Exit;

   if not Busca_Dados(edtGrupo, Edit1, 'P_GRUPOS', 'CODIGO_GRUPO', 'DESCRICAO_GRUPO') then
   begin
      edtGrupo.SetFocus;
      Exit;
   end;
end;

procedure TfrmRL0323.SpeedButton3Click(Sender: TObject);
begin
   edtGrupo.SetFocus;

   ConsultaGrupoProdutos(edtGrupo);
end;

procedure TfrmRL0323.btnImprimirClick(Sender: TObject);
begin
   dmRL0323.cdsProduto.Close;
   dmRL0323.cdsProduto.Params.ParamByName('CODGRU').AsString := edtGrupo.Text;

   Case rdgSequencia.ItemIndex of
      0: dmRL0323.cdsProduto.IndexFieldNames := 'DESCRICAO_PRODUTO';
      1: dmRL0323.cdsProduto.IndexFieldNames := 'CODIGO_PRODUTO';
      2: dmRL0323.cdsProduto.IndexFieldNames := 'FABRICANTE_PRODUTO';
   end;

   dmRL0323.cdsProduto.Open;

   lblEmpresa.Caption := Empresa1;
   rptRel_Modelo.Print;
end;

procedure TfrmRL0323.FormCreate(Sender: TObject);
begin
   dmRL0323 := TdmRL0323.Create(Self);
end;

procedure TfrmRL0323.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
