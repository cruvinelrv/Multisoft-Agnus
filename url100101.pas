unit uRL100101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,
  Buttons, FMTBcd, DB, SqlExpr;

type
  TfrmRL100101 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    edtCodProduto: TJvValidateEdit;
    edtDescProduto: TEdit;
    rdgImpressora: TRadioGroup;
    Panel3: TPanel;
    edtQtd: TJvValidateEdit;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Button2: TButton;
    Button1: TButton;
    Label2: TLabel;
    Label4: TLabel;
    cbxGrade: TComboBox;
    cbxModelo_Etiqueta: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtCodProdutoExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    function  busca_grade(): Boolean;
    procedure Monta_Arq_ZEBRA();
    procedure Monta_mod_01(Mod1: Integer = 1);
    procedure Monta_mod_02();
    procedure Monta_mod_04();
    procedure Monta_mod_05();
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Vlr_avista, vlr_aprazo, Descricao, Barra, Cod_fab, Tipo_barra: String;
    Grade: Boolean;
  public
    { Public declarations }
  end;

var
  frmRL100101: TfrmRL100101;

implementation

uses uConsulta, uGlobal, uDmPrincipal;

{$R *.dfm}

procedure TfrmRL100101.SpeedButton1Click(Sender: TObject);
begin
   edtCodProduto.SetFocus;

   ConsultaProduto(edtCodProduto);
end;

procedure TfrmRL100101.edtCodProdutoExit(Sender: TObject);
var
   ComponenteSql: TSQLQuery;
begin
   if edtCodProduto.Value > 0 then
   begin
      ComponenteSql := TSQLQuery.Create(Application);
      ComponenteSql.SQLConnection := DmPrincipal.DbConexao; // conexao com o banco
      ComponenteSql.SQL.Add('SELECT PRECO_LISTA_PRODUTO, DESCRICAO_PRODUTO, BARRA_PRODUTO, FABRICANTE_PRODUTO, GRADE_PRODUTO FROM P_PRODUTOS WHERE CODIGO_PRODUTO = ' + QuotedStr(edtCodProduto.Text));
      ComponenteSql.Open;

      if ComponenteSql.IsEmpty then
      begin
         Application.MessageBox('O código informado é inválido', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         edtDescProduto.Clear;
         Exit;
      end
      else
      begin
         Vlr_avista := FormatFloat('#,##0.00',ComponenteSql.FieldByName('PRECO_LISTA_PRODUTO').AsFloat);
         vlr_aprazo := FormatFloat('#,##0.00',ComponenteSql.FieldByName('PRECO_LISTA_PRODUTO').AsFloat / 3);
         Descricao  := Copy(ComponenteSql.FieldByName('DESCRICAO_PRODUTO').AsString,1,20);
         Barra      := ComponenteSql.FieldByName('BARRA_PRODUTO').AsString;
         Cod_fab    := ComponenteSql.FieldByName('FABRICANTE_PRODUTO').AsString;
         edtDescProduto.Text := ComponenteSql.FieldByName('DESCRICAO_PRODUTO').AsString;
         Grade      := ComponenteSql.FieldByName('GRADE_PRODUTO').AsBoolean;

         // Preenche o Combobox se o produto possuir grade
         if Grade then
            busca_grade;
      end;
   end
   else
      edtDescProduto.Text := '';
end;

procedure TfrmRL100101.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmRL100101.Button1Click(Sender: TObject);
begin
   if rdgImpressora.ItemIndex < 0 then
   begin
      Application.MessageBox('Selecione a impressora.','Atenção', MB_OK + MB_ICONINFORMATION);
      rdgImpressora.SetFocus;
      Exit;
   end;

   if cbxModelo_Etiqueta.ItemIndex < 0 then
   begin
      Application.MessageBox('Selecione o modelo de etiqueta.','Atenção', MB_OK + MB_ICONINFORMATION);
      cbxModelo_Etiqueta.SetFocus;
      Exit;
   end;

   if edtDescProduto.Text = '' then
   begin
      Application.MessageBox('Selecione o produto.','Atenção', MB_OK + MB_ICONINFORMATION);
      cbxModelo_Etiqueta.SetFocus;
      Exit;
   end;

   if Grade then
   begin
      if cbxGrade.ItemIndex < 0 then
      begin
         Application.MessageBox('Selecione grade.','Atenção', MB_OK + MB_ICONINFORMATION);
         cbxGrade.SetFocus;
         Exit;
      end;
   end;

   case RadioGroup1.ItemIndex of
      0: Tipo_barra := 'E30';
      1: Tipo_barra := '1E';
   end;

   Case rdgImpressora.ItemIndex of
      1: Monta_Arq_ZEBRA;
   end;
end;

procedure TfrmRL100101.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   end;
end;

procedure TfrmRL100101.Monta_Arq_ZEBRA;
begin
   Case cbxModelo_Etiqueta.ItemIndex of
      0: Monta_mod_01; // .::. 5.0cm x 3.3cm;
      1: Monta_mod_02; // .::. Joia
      2: Monta_mod_01(2); // .::. 5.0cm x 3.3cm;  MOD.02
      3: Monta_mod_04;
      4: Monta_mod_05;
   end;
end;

// ETIQUETA PADRÃO TRÊS COLUNAS
procedure TfrmRL100101.Monta_mod_01(Mod1: Integer = 1);
Var
   Arq: TextFile;
   C1, CI {Coluna Inicial}: String;
   C2, C3: Integer;
   Finaliza: Boolean;
begin
   Finaliza := True;
   C1 := '7';
   C2 := 1;
   C3 := edtQtd.Value + 1;

   AssignFile(Arq,'LPT1');
   Rewrite(Arq);
   Writeln(Arq,'N');
   Writeln(Arq,'D15');

   Repeat
      case Mod1 of
         1:
         begin
            Writeln(Arq,'A' + IntToStr(StrToInt(C1) + 70) + ',30,0,4,1,1,N,"A VISTA"');
            Writeln(Arq,'A' + C1 + ',70,0,4,1,1,N,"R$' + Vlr_avista + '"');
            Writeln(Arq,'A' + C1 + ',100,0,3,1,1,N,"03x IGUAIS DE:"');
            Writeln(Arq,'A' + C1 + ',130,0,3,1,1,N,"R$' + vlr_aprazo + '"');
            Writeln(Arq,'A' + C1 + ',160,0,2,1,1,N,"ENTRADA, 30 E 60 DIAS"');
            Writeln(Arq,'A' + C1 + ',190,0,2,1,1,N,"TOTAL A PRAZO S/JUROS:"');
            Writeln(Arq,'A' + C1 + ',227,0,4,1,1,N,"R$' + Vlr_avista + '"');
            Writeln(Arq,'B' + IntToStr(StrToInt(C1) + 10) + ',260,0,' + Tipo_barra + ',2,20,50,B,"' + Barra + '"');
            Writeln(Arq,'A' + C1 + ',350,0,2,1,1,N,"' + Descricao + '"');
         end;
         2:
         begin
            Writeln(Arq,'A' + IntToStr(StrToInt(C1)) + ',10,0,3,1,2,R,"' + Copy(Empresa1,1,20) + '"');
            Writeln(Arq,'A' + C1 + ',70,0,2,1,1,N,"Ref.' + Cod_fab + '"');
            Writeln(Arq,'A' + C1 + ',100,0,1,1,2,N,"' + Descricao + '"');
            Writeln(Arq,'A' + C1 + ',130,0,1,2,2,N,"Tam.' + cbxGrade.Text + '"');
            Writeln(Arq,'B' + IntToStr(StrToInt(C1) + 5) + ',170,0,' + Tipo_barra + ',2,20,50,B,"' + Barra + '"');
            Writeln(Arq,'B' + IntToStr(StrToInt(C1) + 5) + ',260,0,' + Tipo_barra + ',2,20,50,B,"' + Barra + '"');
            Writeln(Arq,'A' + IntToStr(StrToInt(C1) + 15) + ',340,0,4,1,2,N,"R$' + Vlr_avista + '"');
         end;
      end; // Case

      if C1 = '583' then
      begin
         Writeln(Arq,'P1');
         Writeln(Arq,'PA');
         Writeln(Arq,'N');

         if (C2 + 1) <> C3 then
         begin
            Writeln(Arq,'N');
            Finaliza := True;
         end
         else
            Finaliza := False;
      end;

      if C1 = '7'   then C1 := '295' else
      if C1 = '295' then C1 := '583' else
      if C1 = '583' then C1 := '7';

      inc(C2);
   until C2 = C3;

   if Finaliza then
   begin
      Writeln(Arq,'P1');
      Writeln(Arq,'PA');
      Writeln(Arq,'N');
   end;

   CloseFile(Arq);
end;

procedure TfrmRL100101.Monta_mod_04();
Var
   Arq: TextFile;
   C1, CI {Coluna Inicial}: String;
   C2, C3: Integer;
   Finaliza: Boolean;
begin
   Finaliza := True;
   C1 := '20';
   C2 := 1;
   C3 := edtQtd.Value + 1;

   AssignFile(Arq,'LPT1');
   Rewrite(Arq);
   Writeln(Arq,'N');
   Writeln(Arq,'D15');

   Repeat
      Writeln(Arq,'A' + C1 + ',0,0,2,1,1,N,"' + Descricao + '"');
      Writeln(Arq,'B' + IntToStr(StrToInt(C1)) + ',32,0,' + Tipo_barra + ',2,20,25,N,"' + Barra + '"');

      if C1 = '573' then
      begin
         Writeln(Arq,'P1');
         Writeln(Arq,'PA');
         Writeln(Arq,'N');

         if (C2 + 1) <> C3 then
         begin
            Writeln(Arq,'N');
            Finaliza := True;
         end
         else
            Finaliza := False;
      end;

      if C1 = '20'   then C1 := '295' else
      if C1 = '295' then C1 := '573' else
      if C1 = '573' then C1 := '20';

      inc(C2);
   until C2 = C3;

   if Finaliza then
   begin
      Writeln(Arq,'P1');
      Writeln(Arq,'PA');
      Writeln(Arq,'N');
   end;

   CloseFile(Arq);
end;

procedure TfrmRL100101.Monta_mod_05();
Var
   Arq: TextFile;
   C1, CI {Coluna Inicial}: String;
   C2, C3: Integer;
   Finaliza: Boolean;
begin
   Finaliza := True;
   C1 := '20';
   C2 := 1;
   C3 := edtQtd.Value + 1;

   AssignFile(Arq,'LPT1');
   Rewrite(Arq);
   Writeln(Arq,'N');
   Writeln(Arq,'D15');

   Repeat
      Writeln(Arq,'B' + IntToStr(StrToInt(C1)) + ',30,0,' + Tipo_barra + ',2,20,50,N,"' + Barra + '"');
      Writeln(Arq,'A' + IntToStr(StrToInt(C1) + 210) + ',40,0,1,1,1,N,"Ref.' + Cod_fab + '"');
      Writeln(Arq,'A' + IntToStr(StrToInt(C1) + 210) + ',55,0,1,1,1,N,"' + Descricao + '"');
      Writeln(Arq,'A' + IntToStr(StrToInt(C1) + 210) + ',70,0,2,1,1,N,"R$' + Vlr_avista + '"');

      if C1 = '435' then
      begin
         Writeln(Arq,'P1');
         Writeln(Arq,'PA');
         Writeln(Arq,'N');

         if (C2 + 1) <> C3 then
         begin
            Writeln(Arq,'N');
            Finaliza := True;
         end
         else
            Finaliza := False;
      end;

      if C1 = '20'  then C1 := '435' else
      if C1 = '435' then C1 := '20';

      inc(C2);
   until C2 = C3;

   if Finaliza then
   begin
      Writeln(Arq,'P1');
      Writeln(Arq,'PA');
      Writeln(Arq,'N');
   end;

   CloseFile(Arq);
end;

procedure TfrmRL100101.Monta_mod_02;
Var
   Arq: TextFile;
   C1, CI {Coluna Inicial}: String;
   C2, C3: Integer;
begin
   C1 := '7';
   C2 := 1;
   C3 := edtQtd.Value + 1;

   AssignFile(Arq,'LPT1');
   Rewrite(Arq);

   Repeat
      Writeln(Arq,'N');
      Writeln(Arq,'D15');

      Writeln(Arq,'A20,5,0,1,1,1,N,"' + copy(Descricao,1,15) + '"');
      Writeln(Arq,'A20,25,0,3,1,1,N,"R$' + Vlr_avista + '"');
      Writeln(Arq,'A20,43,0,2,1,1,N,"A VISTA"');
      Writeln(Arq,'B183,0,0,' + Tipo_barra + ',1,2,30,B,"' + Barra + '"');

      Writeln(Arq,'P1');
      Writeln(Arq,'PA');
      Writeln(Arq,'N');

      inc(C2);
   until C2 = C3;

   CloseFile(Arq);
end;

function TfrmRL100101.busca_grade(): Boolean;
var
   ComponenteSql: TSQLQuery;
begin
   ComponenteSql := TSQLQuery.Create(Application);
   ComponenteSql.SQLConnection := DmPrincipal.DbConexao; // conexao com o banco
   ComponenteSql.SQL.Add('SELECT CODIGO_GRADE FROM P_PRODUTOS_GRADE WHERE PRODUTO_GRADE = ' +  QuotedStr(edtCodProduto.Text));
   ComponenteSql.Open;


   cbxGrade.Items.Clear;
   
   ComponenteSql.First;
   while not ComponenteSql.eof do
   begin
      cbxGrade.Items.Add(ComponenteSql.FieldByName('CODIGO_GRADE').AsString);
      ComponenteSql.Next;
   end;
   
   cbxGrade.ItemIndex := -1;

   if ComponenteSql.RecordCount > 0 then
      Result := True
   else
      Result := False;
end;

procedure TfrmRL100101.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
      Executa_CTRLF8;
end;

end.
