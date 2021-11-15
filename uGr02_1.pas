unit uGr02_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DB, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, Buttons;

type
  TfrmGr02_1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBText1: TDBText;
    dsProduto: TDataSource;
    DBText2: TDBText;
    DBText3: TDBText;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtValorCompra: TJvCalcEdit;
    edtCustoDesconto: TJvCalcEdit;
    edtCustoICMS: TJvCalcEdit;
    edtCustoFrete: TJvCalcEdit;
    edtCustoIPI: TJvCalcEdit;
    edtCustoEmbalagem: TJvCalcEdit;
    edtCustoFinanceiro: TJvCalcEdit;
    edtCustoOutros: TJvCalcEdit;
    edtCustoSeguro: TJvCalcEdit;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edtVendaFixo: TJvCalcEdit;
    edtVendaComissao: TJvCalcEdit;
    edtVendaICMS: TJvCalcEdit;
    edtVendaPIS: TJvCalcEdit;
    edtVendaConfins: TJvCalcEdit;
    edtVendaContr: TJvCalcEdit;
    edtVendaADM: TJvCalcEdit;
    edtVendaImposto: TJvCalcEdit;
    edtVendaLucro: TJvCalcEdit;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    edtValorCusto: TJvCalcEdit;
    GroupBox7: TGroupBox;
    Label20: TLabel;
    edtPrecoVenda: TJvCalcEdit;
    BitBtn1: TBitBtn;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    procedure edtCustoICMSExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    Procedure Total_custo;
  public
    { Public declarations }
  end;

var
  frmGr02_1: TfrmGr02_1;

implementation

uses uDmPrincipal, udmGr02, uGlobal;

{$R *.dfm}

Procedure TfrmGr02_1.Total_custo;
var
  mValorDesc,mValorICMS,mValorFrete,mValorEmb,mValorFinan,mValorOutros,mValorIPI,mValorSeguro,mValorCusto: Currency;
  mVendaFixo,mVendaComissao,mVendaICMS,mVendaPIS,mVendaConfins,mVendaContr,mVendaADM,mVendaImposto,mVendaLucro,mValorVenda: Currency;
begin

   mValorCusto:=edtValorCompra.Value;

   if edtCustoDesconto.Value>0 then
   begin

       mValorDesc  := mValorCusto * (edtCustoDesconto.Value / 100);
       mValorCusto := mValorCusto - mValorDesc;

   end ;

   if edtCustoICMS.Value>0 then
   begin

      mValorICMS  := mValorCusto * (edtCustoICMS.Value / 100);
      mValorCusto := mValorCusto - mValorICMS;

    end ;

    if edtCustoFrete.Value>0 then
    begin

       mValorFrete := mValorCusto * (edtCustoFrete.Value / 100);
       mValorCusto := mValorCusto + mValorFrete;

    end ;

    if edtCustoIPI.Value>0 then
    begin

       mValorIPI   := mValorCusto * (edtCustoIPI.Value   / 100);
       mValorCusto := mValorCusto + mValorIPI;

    end ;

    if edtCustoEmbalagem.Value>0 then
    begin

       mValorEmb   := mValorCusto * (edtCustoEmbalagem.Value / 100);
       mValorCusto := mValorCusto + mValorEmb;

    end;

    if edtCustoFinanceiro.Value>0 then
    begin

       mValorFinan := mValorCusto * (edtCustoFinanceiro.Value / 100);
       mValorCusto := mValorCusto + mValorFinan;

    end ;

    if edtCustoOutros.Value>0 then
    begin

       mValorOutros:= mValorCusto * (edtCustoOutros.Value  / 100);
       mValorCusto := mValorCusto + mValorOutros;

    end ;

    if edtCustoSeguro.Value>0 then
    begin

       mValorSeguro:= mValorCusto * (edtCustoSeguro.Value   / 100);
       mValorCusto := mValorCusto + mValorSeguro;

    end ;

    edtValorCusto.Value:=mValorCusto;

    // calcula o preco de venda

    mValorVenda := mValorCusto;

    if edtVendaFixo.Value>0 then
    begin

        mVendaFixo  := mValorVenda * (edtVendaFixo.Value / 100);
        mValorVenda := mValorVenda + mVendaFixo;

    end ;

    if edtVendaComissao.value>0 then
    begin

        mVendaComissao:= mValorVenda * (edtVendaComissao.value / 100);
        mValorVenda   := mValorVenda + mVendaComissao;

    end ;

    if edtVendaICMS.Value>0 then
    begin

        mVendaICMS  := mValorVenda * (edtVendaICMS.Value / 100);
        mValorVenda := mValorVenda + mVendaICMS;

    end ;

    if edtVendaPIS.Value>0 then
    begin

        mVendaPIS   := mValorVenda * (edtVendaPIS.Value   / 100);
        mValorVenda := mValorVenda + mVendaPIS;

    end ;

    if edtVendaConfins.Value>0 then
    begin

        mVendaConfins := mValorVenda * (edtVendaConfins.Value / 100);
        mValorVenda   := mValorVenda + mVendaConfins;

    end ;

    if edtVendaContr.Value>0 then
    begin

        mVendaContr := mValorVenda * (edtVendaContr.Value / 100);
        mValorVenda := mValorVenda + mVendaContr;

    end ;

    if edtVendaADM.Value>0 then
    begin

        mVendaADM   := mValorVenda * (edtVendaADM.Value  / 100) ;
        mValorVenda := mValorVenda + mVendaADM;

    end ;

    if edtVendaImposto.Value>0 then
    begin

        mVendaImposto := mValorVenda * (edtVendaImposto.Value  / 100);
        mValorVenda   := mValorVenda + mVendaImposto;

    end ;


    if edtVendaLucro.Value>0 then
    begin

       mVendaLucro := mValorVenda * (edtVendaLucro.Value / 100);
       mValorVenda := mValorVenda + mVendaLucro;

    end ;

    edtPrecoVenda.Value:=mValorVenda;

end ;

procedure TfrmGr02_1.edtCustoICMSExit(Sender: TObject);
begin

    Total_custo;

end;

procedure TfrmGr02_1.BitBtn1Click(Sender: TObject);
begin

   Close;

end;

procedure TfrmGr02_1.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if Key = #13 then
   begin

      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

   end;

end;

procedure TfrmGr02_1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
