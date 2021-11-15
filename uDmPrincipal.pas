
 {
  ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
  PROGRAMADOR          --> Evaldo Barcelos Palma
  ==============================================================================
  SISTEMA              --> MultiSoft
  Formulario           --> dmPrincipal
  UNIT                 --> udmPrincipal
  DATA DE CONCEPCAO    -->
  FINALIDADE           --> Data Modulo Principal
  COMENTARIO           -->
  ==============================================================================

  1- Capturando teclas genéricamente.
  Nesta dica utilizamos o evento InIdle do componente TApplicationEvents
  procedure TForm1.ApplicationEvents1IDle (Sender: TObject; var Done : Boolean);
  begin
    if (GetASyncKeyState (Vk_Control) <> 0) and  (GetASyncKeyState (Vk_F3) <> 0)  then
      Showmessage ('Tecla CRTL+F3');

    if (GetASyncKeyState (Vk_Menu) <> 0) and  (GetASyncKeyState ( Ord('A')) <> 0)  then
      Showmessage ('Tecla ALT+A');

    Done;

  end;

  }


unit uDmPrincipal;

interface

uses
  SysUtils, Windows, Messages,Classes, DBXpress, Variants, Graphics, Controls, Forms,
  DB, SqlExpr,IniFiles, FMTBcd, DBClient, Provider;

type
  TDmPrincipal = class(TDataModule)
    DbConexao: TSQLConnection;
    sdsTemporario: TSQLDataSet;
    qryTemp: TSQLQuery;
    dsFinanceiro: TDataSource;
    cdsFinanceiro: TClientDataSet;
    cdsFinanceiroSequencia: TIntegerField;
    cdsFinanceiroEmissao: TDateField;
    cdsFinanceiroVencimento: TDateField;
    cdsFinanceiroValor: TCurrencyField;
    qryPrincipal: TSQLQuery;
    dspPrincipal: TDataSetProvider;
    cdsPrincipal: TClientDataSet;
    qryConsulta: TSQLQuery;
    DBControle: TSQLConnection;
    qryAvuslso: TSQLQuery;
    dspAvuslso: TDataSetProvider;
    cdsAvuslso: TClientDataSet;
    cdsFinanceirotipo_documento: TIntegerField;
    cdsFinanceiroPortador: TIntegerField;
    cdsFinanceirocentro_custo: TIntegerField;
    cdsFinanceiroconta: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }


  end;

var
  DmPrincipal: TDmPrincipal;
  Transacao: TTransactionDesc;

implementation

uses uGlobal, uMedidor, uCriaTabela;

{$R *.dfm}

procedure TDmPrincipal.DataModuleCreate(Sender: TObject);
VAR
ArqLoja : TIniFile;
mCaminhoBase: String;
mArqDados : Textfile;
begin
Try
   /// Pega o local da base de dados
   if FileExists(ExtractFilePath(Application.ExeName)+'\MultiDados.txt') then
   begin

        AssignFile(mArqDados,ExtractFilePath(Application.ExeName)+'\MultiDados.txt');
        Reset(mArqDados);
        if not eof(mArqDados) Then
        begin
          ReadLn(mArqDados,mCaminhoBase);

        end;

        Closefile(mArqDados);

    End;
    if mCaminhoBase=''  then
    begin
        mCaminhoBase:='dbmulti.fdb';

    end ;

    Sistema1:='MULTISOFT Loja V4.12';
    Versao1:='Versão 4.11 - ' + DateToStr(Date);
    xProc:='1';

    DriverAplic:=ExtractFilePath(Application.ExeName);

    If Not(DirectoryExists(ExtractFileDrive(Application.ExeName )+'\temp')) then
    begin
        If Application.MessageBox('A pasta TEMP não existe, deseja cria-la? ','Confirmação',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES then
           CreateDir(ExtractFileDrive(Application.ExeName )+'\temp')

        else
           Application.Terminate;

    end;

    // verifica a estrutura dos arquivos de dados
    if NOT (FileExists(DriverAplic+'\LOJA.INI')) then
    begin

      If Application.MessageBox('Gerar Base de Dados do MULTISOFT Loja? ','',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES then
      Begin
          //CriaTabelas;
          // Abre o Processo de cricacao de base de dadso
          ArqLoja:= TIniFile.Create(DriverAplic+'\LOJA.INI');
          ArqLoja.WriteString('LOJA','VERSAO',Versao1);
          ArqLoja.Free;

      end Else
      begin

        Application.Terminate;

      end;
    end;

    if DbConexao.Connected=True then
    begin

       DbConexao.Close;

    end;
    // Paramento para conexao com o banco de dados
    DbConexao.Close;
    DbConexao.Params.Clear;
    DbConexao.Params.Add('DriverName=Interbase');
    DbConexao.Params.Add('DataBase='+TRIM(mCaminhoBase));
    DbConexao.Params.Add('User_Name=SYSDBA');
    DbConexao.Params.Add('Password=masterkey');
    DbConexao.Params.Add('SQLDialect=3');
    DbConexao.Open;

    // Paramento para conexao com o banco de dados
    DBControle.Close;
    DBControle.Params.Clear;
    DBControle.Params.Add('DriverName=Interbase');
    DBControle.Params.Add('DataBase='+TRIM(mCaminhoBase));
    DBControle.Params.Add('User_Name=SYSDBA');
    DBControle.Params.Add('Password=masterkey');
    DBControle.Params.Add('SQLDialect=3');
    DBControle.Open;

    if CodigoEmpresa1='' then CodigoEmpresa1:='1';

Except
    Application.MessageBox('base de dados','Erro',mb_ok+MB_ICONSTOP);
    Application.Terminate;

end;
end;

end.
