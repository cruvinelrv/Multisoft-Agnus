unit uCx07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Menus, DB, DBCtrls,
  JvExDBGrids, JvDBGrid;

type
  TfrmCx07 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Button1: TButton;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Executarexcluso1: TMenuItem;
    StatusBar1: TStatusBar;
    lblTurno: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Executarexcluso1Click(Sender: TObject);
    procedure Executa_exclusao();
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCx07: TfrmCx07;

implementation

uses udmCx07, uGlobal;

{$R *.dfm}

procedure TfrmCx07.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmCx07.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 27 then
      close;

   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

procedure TfrmCx07.Executarexcluso1Click(Sender: TObject);
begin
   Executa_exclusao;
end;

procedure TfrmCx07.Executa_exclusao;
var
   ENT1, RET1: Real;
   Titulo: String;
begin
   if not dmCx07.cdsCai_Mov.IsEmpty then
   begin
      if Application.MessageBox('Confirma exclus�o?','Confirma��o', MB_YESNO + MB_ICONQUESTION) = id_yes then
      begin
         with dmCx07 do
         begin
            Titulo := cdsCai_MovTITULO_CAIXAMOV.AsString;

            cdsCaixa.Close;
            cdsCaixa.Params.ParamByName('CHAVE').AsString := cdsCai_MovCHAVE_CAIXAMOV.AsString;
            cdsCaixa.Open;

            if (cdsCai_MovTIPO_CAIXAMOV.AsString = 'E') {and (CAI1 = '1')} then
            begin
               ENT1 := cdsCaixaENTRADAS_CAIXA.AsFloat - cdsCai_MovVALOR_CAIXAMOV.AsFloat;

               cdsCaixa.Edit;

               cdsCaixaCOD_EMPRESA  .AsString := CodigoEmpresa1;
               cdsCaixaCODIGO_CAIXA .AsString := NumeroCaixa1;
               cdsCaixaCHAVE_CAIXA  .AsString := cdsCai_MovCHAVE_CAIXAMOV.AsString;
               cdsCaixaENTRADAS_CAIXA .AsFloat  := ENT1;

               cdsCaixa.Post;
               cdsCaixa.ApplyUpdates(0);

               // Verifica no receber
               cdsReceber.Close;
               cdsReceber.Params.ParamByName('TITULO').AsString := Titulo;
               cdsReceber.Open;

               if not cdsReceber.IsEmpty then
               begin
                  cdsReceber.Edit;

                  cdsReceberTIPO_BAIXA_RECEBER .Clear;
                  cdsReceberMOVIMENTO_RECEBER  .Clear;
                  cdsReceberVALORPAGO_RECEBER  .AsFloat := 0;
                  cdsReceberPREVISAO_RECEBER   .AsDateTime := cdsReceberVENCIMENTO_RECEBER.AsDateTime;

                  cdsReceber.Post;
                  cdsReceber.ApplyUpdates(0);
               end
               else
                  Application.MessageBox('N�o encontrado no receber.','Aten��o', MB_OK + MB_ICONWARNING);
            end
            else
            begin
               if cdsCai_MovTIPO_CAIXAMOV.AsString = 'R' then
               begin
                  RET1 := cdsCaixaRETIRADAS_CAIXA.AsFloat - cdsCai_MovVALOR_CAIXAMOV.AsFloat;

                  cdsCaixa.Edit;

                  cdsCaixaCODIGO_CAIXA.AsInteger  := cdsCaixaCODIGO_CAIXA.AsInteger; 
                  cdsCaixaCOD_EMPRESA.AsString    := CodigoEmpresa1;
                  cdsCaixaCHAVE_CAIXA.AsString    := cdsCai_MovCHAVE_CAIXAMOV.AsString;
                  cdsCaixaRETIRADAS_CAIXA.AsFloat := RET1;

                  cdsCaixa.Post;
                  cdsCaixa.ApplyUpdates(0);

                  // Verifica no receber
                  cdsPagar.Close;
                  cdsPagar.Params.ParamByName('TITULO').AsString := Titulo;
                  cdsPagar.Open;

                  if not cdsPagar.IsEmpty then
                  begin
                     cdsPagar.Edit;

                     cdsPagarTIPO_BAIXA_PAGAR .Clear;
                     cdsPagarMOVIMENTO_PAGAR  .Clear;
                     cdsPagarVALORPAGO_PAGAR  .AsFloat := 0;
                     cdsPagarPREVISAO_PAGAR   .AsDateTime := cdsPagarVENCIMENTO_PAGAR.AsDateTime;

                     cdsPagar.Post;
                     cdsPagar.ApplyUpdates(0);
                  end
                  else
                     Application.MessageBox('N�o encontrado no receber.','Aten��o', MB_OK + MB_ICONWARNING);
               end;
            end;

            // Verifica a tabela de Controle de lan�amentos
            cdsConLan.Close;
            cdsConLan.Params.ParamByName('TITULO').AsString := Titulo;
            cdsConLan.Open;

            if not cdsConLan.IsEmpty then
            begin
               cdsConLan.Delete;
               cdsConLan.ApplyUpdates(0);
            end
            else
               Application.MessageBox('N�o encontrado no CONLAN','Aten��o', MB_OK + MB_ICONWARNING);

            // Verifica a tebala de resumo banc�rio
            cdsResBan.Close;
            cdsResBan.Params.ParamByName('CHAVE').AsString := Copy(cdsCai_MovCHAVE_CAIXAMOV.AsString,1,10) + '-999';
            cdsResBan.Open;

            if not cdsResBan.IsEmpty then
            begin
               cdsResBan.Edit;

               if cdsCai_MovTIPO_CAIXAMOV.AsString = 'E' then
                  cdsResBanCREDITO_RESBAN.AsFloat := cdsResBanCREDITO_RESBAN.AsFloat -  cdsCai_MovVALOR_CAIXAMOV.AsFloat
               else
                  cdsResBanDEBITO_RESBAN.AsFloat := cdsResBanDEBITO_RESBAN.AsFloat   -  cdsCai_MovVALOR_CAIXAMOV.AsFloat;

               cdsResBan.Post;
               cdsResBan.ApplyUpdates(0);
            end
            else
               Application.MessageBox('N�o encontrado no RESBAN','Aten��o', MB_OK + MB_ICONWARNING);

            // Apaga lan�amento no caixa
            cdsCai_Mov.Delete;
            cdsCai_Mov.ApplyUpdates(0);
         end;
      end;
   end
   else
      Application.MessageBox('N�o existe nenhuma lan�amento.','Aten��o', MB_OK + MB_ICONWARNING);
end;

procedure TfrmCx07.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 46 then
      Executa_exclusao;
end;

procedure TfrmCx07.FormCreate(Sender: TObject);
begin
   dmCx07 := TdmCx07.Create(Self);

   dmCx07.cdsCai_Mov.Close;
   dmCx07.cdsCai_Mov.Params.ParamByName('DATA').AsString := FormatDateTime('dd/mm/yy',DataSystem1) + '%';
   dmCx07.cdsCai_Mov.Open;
end;

procedure TfrmCx07.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  lblTurno.Caption := copy(dmCx07.cdsCai_MovCHAVE_CAIXAMOV.Value,12,1);
end;

end.
