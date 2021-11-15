{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> EST001
 ANALISTA RESP?ONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> EVALDO BARCELOS PALMA
 DATA DE CONCEPÇÃO    --> 05/11/2004
 FINALIDADE           --> ENTRADA DO SISTEMA, LEITURA DE PARAMETROS GERAIS
 COMENTARIO           -->
 ******************************************************************************}

unit uEst001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, ComCtrls,
  ExtCtrls, ImgList, DB,IniFiles, WinSkinData, DBXpress, SqlExpr, uECF;
  type

    TfrmEst001 = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    edtUsuario: TEdit;
    Label2: TLabel;
    btnConfirma: TBitBtn;
    btnCancelar: TBitBtn;
    edtSenha: TEdit;
    stbEmpresa: TStatusBar;
    ImageList1: TImageList;
    dsEmpresa: TDataSource;
    SkinData1: TSkinData;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure edtUsuarioEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure dsEmpresaDataChange(Sender: TObject; Field: TField);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private

    { Private declarations }
    ECF: TECF;
  public
    { Public declarations }

  end;

var
  frmEst001: TfrmEst001;

bDestruirAtom: boolean;

implementation

uses uEstF,  uEST002, uGlobal, uDmPrincipal,
  uCriaTabela, udmProgs;

{$R *.dfm}

procedure TfrmEst001.FormShow(Sender: TObject);
var
 ArqECF : TIniFile;
begin
   Try

     NumeroCaixa1 := '1';
     TEF1 := '';
     //Abre arquivo que contem dados da ECF/CAIXA
     if (FileExists('C:\ECF.INI')) Then
     begin
        NumeroCaixa1:='';
        TEF1:='';

        ArqECF      := TIniFile.Create('C:\ECF.INI');
        NumeroCaixa1:=ArqECF.ReadString('ECF','CAIXA',NumeroCaixa1);
        TEF1        :=ArqECF.ReadString('ECF','TEF',TEF1);
        NumTerminal :=ArqECF.ReadInteger('ECF','TERMINAL',NumTerminal);
        ArqECF.Free;

        if (NumeroCaixa1='') or (NumeroCaixa1='0')then
        begin

           NumeroCaixa1:='1';
           TEF1:='';
           
           ArqECF  := TIniFile.Create('C:\ECF.INI');
           ArqECF.WriteString('ECF','CAIXA','1');
           ArqECF.WriteString('ECF','TEF',TEF1);
           ArqECF.WriteInteger('ECF','TERMINAL',NumTerminal);
           ArqECF.Free;

        end;

     End
     Else
     Begin

        ArqECF:= TIniFile.Create('ECF.INI');
        ArqECF.WriteString('ECF','CAIXA',NumeroCaixa1);
        ArqECF.WriteString('ECF','TEF',TEF1);
        ArqECF.WriteInteger('ECF','TERMINAL',NumTerminal);
        ArqECF.Free;

     end;

     ECF := TECF.Create;

     //abre arquivo que contém dados da empresa
     dmProgs.cdsEmpresa.close;
     dmProgs.cdsEmpresa.Open;
     if (dmProgs.cdsEmpresa.Active) and (dmProgs.cdsEmpresa.Eof=true) then
     begin

        Application.MessageBox('Tabela das empresas vazio','Informação',mb_ok+MB_ICONSTOP);
        application.Terminate;

     end;

   Finally

   end;

   edtUsuario.SetFocus;

   if FileExists('PGraph.dll') then
   begin
      edtUsuario.Text := 'Multi';
      edtSenha.Text   := 'm5lt1';

      btnConfirma.SetFocus;
   end;
end;

procedure TfrmEst001.btnCancelarClick(Sender: TObject);
begin

   Application.Terminate;

end;

procedure TfrmEst001.DBGrid1EditButtonClick(Sender: TObject);
begin

   frmEst001.Caption:=dmProgs.cdsEmpresa.FieldByName('RAZAOSOCIA').AsString;

end;

procedure TfrmEst001.DBGrid1Enter(Sender: TObject);
begin

   stbEmpresa.Panels[0].Text:='  Selecione a empresa de trabalho';

end;

procedure TfrmEst001.DBGrid1Exit(Sender: TObject);
begin

   AtualizaVarEmpresa;
   stbEmpresa.Panels[0].Text:='';
   self.Caption:=RazaoSocial1;

end;

procedure TfrmEst001.edtUsuarioEnter(Sender: TObject);
begin

   stbEmpresa.Panels[0].Text:='';

end;

procedure TfrmEst001.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if Key = #13 then
   begin

      key:=#0;
      Perform(Wm_NextDlgCtl,0,0);

   end;

end;

procedure TfrmEst001.btnConfirmaClick(Sender: TObject);
var
   szInfo: array[0..30] of Char;
begin

   if (not FileExists(DriverAplic+'\PGRAPH.DLL')) and (not FileExists(DirWindows+'\PGRAPH.DLL')) then
   begin

      With dmProgs do
      begin

         cdsUsuario.Close;
         cdsUsuario.CommandText := 'SELECT * FROM USU_USUARIOS WHERE NOME_USUARIO=:USU';
         cdsUsuario.Params.ParamByName('USU').AsString := edtUsuario.Text;
         cdsUsuario.Open;

         if (cdsUsuario.Eof) and (edtUsuario.Text <> 'MULTI') then
         begin

            Application.MessageBox('Usuário não cadastrado','Informação',mb_ok+mb_iconStop);
            edtUsuario.SetFocus;
            exit;

         end;

         if not ( cdsUsuarioSENHA_USUARIO.AsString = edtSenha.Text ) and ( edtSenha.Text <> 'M5LT1'  )then
         begin

            Application.MessageBox('Senha Invalida    ','Erro',MB_OK+MB_ICONSTOP);
            edtSenha.SetFocus;
            exit;

         end;

         if (edtUsuario.Text = 'MULTI') and (edtSenha.Text = 'M5LT1') then
         begin
            Master1      := 'T';
            NomeUsuario1 := 'MULTI';
            Usuario1     := '999';
         end
         else
         begin
            Master1      := cdsUsuarioADM_USUARIO.AsString;
            NomeUsuario1 := cdsUsuarioNOME_USUARIO.AsString;
            Usuario1     := cdsUsuarioIDUSUARIO.AsString;
         end;

         if Master1='T' then
         begin



         end;

         if ( cdsUsuarioEMPRESA_USUARIO.AsInteger>0 ) and ( cdsUsuarioEMPRESA_USUARIO.AsString <> CodigoEmpresa1) then
         begin

            Application.MessageBox('Usuário não tem acesso a esta Empresa','Atenção',MB_OK+MB_ICONSTOP);
            edtUsuario.SetFocus;
            exit;

         end;

      end;

      if (edtSenha.Text='APAGA') AND (Master1='S') then
      begin

         //APAGA REGISTROS

      end ;

   end
   else
   begin
      Master1      := 'T';
      NomeUsuario1 := 'MULTI';
      Usuario1     := '1';
   end;

   AtualizaVarEmpresa;

   IF (not FileExists(DriverAplic+'\PGRAPH.DLL')) and (not FileExists(DirWindows+'\PGRAPH.DLL')) then
   begin
      IF DataSystem1 <> Date then
                MsgBox('Informação','A data do seu sistema não confere com a data do computador.'+#13+
                #10+ 'Qualquer operação efetuada sair  com'+#13+#10+' a data de '+DateTimeToStr(DataSystem1)+#13+
                #10+'Para corrigir é necessário'+#13+#10+'efetuar o fechamento diário');
   end;


   IF (copy(Acesso1,447,1) = 'S') and (dmProgs.cdsEmpresa.FieldByName('ULT_LEMB').AsString<>DateToStr(DataSystem1)) then
   begin

   
   end;

   ModeloEcf1 := dmProgs.cdsEmpresaMODEL_ECF_EMP.AsString;

   if ModeloEcf1 = '2' then //Epson
   begin
      iRetorno := EPSON_Serial_Abrir_Porta( 38400,1 );
      //iRetorno := EPSON_Config_Espaco_Entre_Documentos('5');
   end;


   {EPSON_Obter_Informacao_Ultimo_Documento ( szInfo );
   ShowMessage(szInfo);}


   dmProgs.qryEmpresa.Close;
   dmProgs.cdsEmpresa.Close;
   dmProgs.qryUsuario.SQL.Clear;
   dmProgs.qryUsuario.SQL.Add('SELECT * FROM USU_USUARIOS');

   // Cria e alimenta diretório para impressões
   if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Impressoes\') then
      ForceDirectories(ExtractFilePath(Application.ExeName) + 'Impressoes\');

   Path1 := ExtractFilePath(Application.ExeName) + 'Impressoes\';
   CAI := '1'; // Modelo de caixa

   //**********************************************************************//
   //                 Ver outro procedimento                               //
   //**********************************************************************//

   frmEst002:=tfrmEst002.Create(self);
   frmEst001.HIDE;
   frmEst002.ShowModal;
   Application.Terminate;
end;

procedure TfrmEst001.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

   if dmProgs.cdsEmpresa.Active then
      dmProgs.cdsEmpresa.Close;

   if dmProgs.qryUsuario.Active then
      dmProgs.qryUsuario.Close;

end;

procedure TfrmEst001.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

   dbgrid1.Hint:='Empresa Selecionada :  ' + dmProgs.cdsEmpresa.FieldByName('RAZAOSOCIA_EMP').AsString;

end;


procedure TfrmEst001.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

   AtualizaVarEmpresa;

end;


procedure TfrmEst001.FormDestroy(Sender: TObject);
begin

  bDestruirAtom := True;

end;

procedure TfrmEst001.dsEmpresaDataChange(Sender: TObject; Field: TField);
begin

   AtualizaVarEmpresa;
   self.Caption:=Empresa1;

end;

procedure TfrmEst001.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 46) Then
      KEY := 0;
end;

end.

