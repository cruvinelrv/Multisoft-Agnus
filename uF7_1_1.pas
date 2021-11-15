{
   SISTEMA              --> MultWin
   PROGRAMA             --> EST0306_3
   ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
   PROGRAMADOR          --> EVALDO BARCELOS PALMA
   DATA DE CONCEPÇÃO    --> 02/01/2006
   FINALIDADE           --> Cadastro de Propriedades
   COMENTARIO           -->
}

unit uF7_1_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DBActns, StdCtrls, Buttons, DB, Mask, DBCtrls,
  ExtCtrls, ComCtrls, JvBaseEdits, JvDBControls, JvExMask, JvToolEdit,
  JvSpin, JvDBSpinEdit;

type
  TfrmF7_1_1 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tabArrendatario: TTabSheet;
    dbeDescricao: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    dsPropriedade: TDataSource;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    CobCidade: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    chkArrentada: TDBCheckBox;
    rdgTipo: TDBRadioGroup;
    Label13: TLabel;
    edtNome: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    edtCNPJ: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Label22: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBMemo2: TDBMemo;
    DBEdit19: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    dsCidade: TDataSource;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit17: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit20: TDBEdit;
    GroupBox1: TGroupBox;
    JvDBSpinEdit1: TJvDBSpinEdit;
    JvDBSpinEdit2: TJvDBSpinEdit;
    JvDBSpinEdit3: TJvDBSpinEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure chkArrentadaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rdgTipoClick(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure dsCidadeDataChange(Sender: TObject; Field: TField);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  frmF7_1_1: TfrmF7_1_1;

implementation

uses uDmPrincipal, uFsplhas, uEstF, uGlobal, udmF7;



{$R *.dfm}

procedure TfrmF7_1_1.BitBtn2Click(Sender: TObject);
begin
    close;
end;

procedure TfrmF7_1_1.BitBtn1Click(Sender: TObject);
begin
   Try
     With dmF7 do
     begin
         if dbeDescricao.Text='' then
         begin
             Application.MessageBox('descrição não foi informada','Informação',mb_ok+mb_iconinformation);
             dbeDescricao.SetFocus;
             exit;

         end;
         if cdsPropriedade.State=dsInsert then
         begin
             cdsPropriedadeCODIGO_PRO.AsInteger := Busca_Proximo('E_PROPRIEDADE','CODIGO_PRO');
             cdsPropriedadeCLIENTE_PRO.AsInteger := dmF7.cdsPesqClienteCODIGO_CLIENTE.AsInteger;

         end;
         cdsPropriedade.Post;
         cdsPropriedade.ApplyUpdates(0);
         CLOSE;

     end;

Finally

end;

end;

procedure TfrmF7_1_1.BitBtn3Click(Sender: TObject);
begin

   With dmF7 do
   begin
     if cdsPropriedade.State in[DsEdit,DsInsert] then
     begin

         cdsPropriedade.Cancel;

     end;

     Close;

   end;

end;

procedure TfrmF7_1_1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);

  end;

end;

procedure TfrmF7_1_1.chkArrentadaClick(Sender: TObject);
begin
   if chkArrentada.Checked=true then
   begin
       tabArrendatario.TabVisible:=true;

   end else
   begin
       tabArrendatario.TabVisible:=False;

   end;


end;

procedure TfrmF7_1_1.FormCreate(Sender: TObject);
begin
   PageControl1.TabIndex:=0;
   tabArrendatario.TabVisible:=false;
   With dmF7 do
   begin
      cdsCidade.Open;

       if cdsPropriedade.State=DsEdit then
       begin
           if chkArrentada.Checked=true then
              tabArrendatario.TabVisible:=true
           else
              tabArrendatario.TabVisible:=False;
       end else
       begin
           rdgTipo.ItemIndex:=0;

       end;
   end;

end;

procedure TfrmF7_1_1.rdgTipoClick(Sender: TObject);
begin
    With dmF7 do
    begin
        if rdgTipo.ItemIndex=0 then cdsPropriedadeARRENDACNPJ_PRO.EditMask:='99\.999\.999\/9999\-99;1; ';
        if rdgTipo.ItemIndex=1 then cdsPropriedadeARRENDACNPJ_PRO.EditMask:='999\.999\.999\-99;1; ';

    end;

end;

procedure TfrmF7_1_1.PageControl1Enter(Sender: TObject);
begin
    if PageControl1.TabIndex=0 then dbeDescricao.SetFocus;
    if PageControl1.TabIndex=1 then edtNome.SetFocus;

end;

procedure TfrmF7_1_1.dsCidadeDataChange(Sender: TObject; Field: TField);
begin
    With dmF7 do
    begin
        if (cdsPropriedade.Active) and (cdsPropriedade.State in [dsEdit,dsInsert]) then
            cdsPropriedadeESTADO_PRO.AsString:=cdsCidadeUF_CIDADE.AsString;

    end;

end;

procedure TfrmF7_1_1.DBMemo1Enter(Sender: TObject);
begin
    self.KeyPreview:=false;
end;

procedure TfrmF7_1_1.DBMemo1Exit(Sender: TObject);
begin
    self.KeyPreview:=True;
    
end;

procedure TfrmF7_1_1.DBMemo2Enter(Sender: TObject);
begin
     self.KeyPreview:=false;
     
end;

procedure TfrmF7_1_1.DBMemo2Exit(Sender: TObject);
begin
    self.KeyPreview:=true;

end;

procedure TfrmF7_1_1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
