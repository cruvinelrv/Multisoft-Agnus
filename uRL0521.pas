unit uRL0521;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Mask, JvExMask, JvToolEdit, ppBands, ppClass, ppCtrls,
  ppPrnabl, ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TfrmRL0521 = class(TForm)
    Panel1: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    edtDataIni: TJvDateEdit;
    edtDataFim: TJvDateEdit;
    Label5: TLabel;
    edtUsuario: TEdit;
    rptAcesso: TppReport;
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
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine3: TppLine;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
  frmRL0521: TfrmRL0521;

implementation

uses udmRL0521, uGlobal;

{$R *.dfm}

procedure TfrmRL0521.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TfrmRL0521.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL0521.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfrmRL0521.btnImprimirClick(Sender: TObject);
var
   Nome: String;
begin
   dmRL0521.cdsAcesso.Close;

   if edtUsuario.Text = '' then
   begin
      dmRL0521.cdsAcesso.Params.ParamByName('USU1').AsString := '%%';
      Nome := 'Todos';
   end
   else
   begin
      dmRL0521.cdsAcesso.Params.ParamByName('USU1').AsString := edtUsuario.Text;
      Nome := edtUsuario.Text;
   end;

   dmRL0521.cdsAcesso.Params.ParamByName('DATA1').AsDate := edtDataIni.Date;
   dmRL0521.cdsAcesso.Params.ParamByName('DATA2').AsDate := edtDataFim.Date;

   dmRL0521.cdsAcesso.Open;

   lblEmpresa .Caption := Empresa1;
   lblParam1  .Caption := Nome + ' / ' + edtDataIni.Text + ' a ' + edtDataFim.Text;
   rptAcesso.Print; 
end;

procedure TfrmRL0521.FormCreate(Sender: TObject);
begin
   dmRL0521 := TdmRL0521.Create(Self);
end;

procedure TfrmRL0521.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
