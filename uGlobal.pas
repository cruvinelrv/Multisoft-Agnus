{
   SISTEMA              --> MultWin
   PROGRAMA             --> uGLOBAL
   ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
   PROGRAMADOR          --> Evaldo B. Palma
   DATA DE CONCEPCAO    --> 10/11/2004
   FINALIDADE           --> UNIT DA VARIAVES E FUNCOES GLOBAIS
   COMENTARIO           -->
}
unit uGlobal;

interface

uses
  Windows,DBiProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, DBCtrls, ComCtrls, StdCtrls, Buttons, db, Math,ShellApi, Inifiles,
  registry, SqlExpr, DBClient, Variants, uECF;

 {Auxiliares}
type
   Tuf = array[0..27] of string[2];
   yTMasterSource = record
   yMasterFields: string;
   yIndexFieldNames: string;

end;


const
  uf: Tuf=('AC','AM','AL','AP','BA','CE','DF','ES','FN','GO','MA','MG','MS','MT','PA','PR', 'PI','PE','PB','RJ','RN','RO','RR','RS','SC','SE','SP','TO');

var
  { Public declarations }
  Empresa1,CodigoEmpresa1,RazaoSocial1, Senha1, Senha2, Senha3, Senha4, Senha5,
  Sistema1,Versao1,MudaDiretorio1,DirDados1,Usuario1,NomeUsuario1,Acesso1,Master1,CGCEmpresa1,
  xPict,Altera1,Rotina1,ModeloOS1,GeraBaseDados1,InscEstadual1,InscMunicipal1,
  EnderecoEmpresa1,CidadeEmpresa1,EstadoEmpresa1,CepEmpresa1,FoneEmpresa1,CodigoCidadeEmpresa1,
  TipoConsulta1,FaxEmpresa1,DriverECF1,NumeroCaixa1,TEF1,DriverAplic,mOpcaoEmpresa,
  ClienteBloqueado, MascaraPrecoVenda1, MascaraPrecoCompra1 : string;
  DataSystem1: TDateTime;
  NumTerminal,ModeloCaixa1, CodigoSugerido1 : Integer;
  xRsp_Ipi1,xProc,xCon1,xSnfs1, xfax,Sai2, Drv_Ecf, xCaixa,
  xTef1, XOpnvd, XOpncp, XDirDad1, xMos, Pre_Pict, GeraBase, Sugere_Titulo_Rotina : String;
  Protecao1,Controle1,PerguntaECF1,CargaEmpresa1,ComplementoNF1,ConfirmaAliq1,
  CupomAnexo1,VendaNegativo1,QuebraComitancia1,ConfirmaCliente1,ObsOrcamento1,
  ObsOrcamento2,VendaParceiro1, Cod_busca{Recebe valores vindo de formulários de pesquisa},
  Path1,CAI: string;
  DataCaixa1 : TDateTime;
  Contador, Busca_venda, pData_Retro, Tipo_Cliente : integer;
  Utilizado, ValorParcial : Double;
  //ECF: TECF;
  Demo1: Boolean;

  //xPict : Mascara1;

 Procedure GravaIni(aArquivo: String; aSecao, aCampo: String; aTexto: String = ''; aNumero: Double = 0; aInteiro: Integer = 0);
 Procedure LeIni(aArquivo, aSecao, aCampo:String; Var aNumero: Double ; Var aTexto: String);
 Function Empty(inString:String): Boolean; //Testa se a variavel está vazia ou não
 function PegaSysDir: string;  // funcao que retorna o caminho do diretorio \system32
 function Encripta(Texto: String):String;  // funcao de encriptacao de string
 function Desencripta(Texto: String):String;  // funcao de desencriptacao de string
 Function IsInteger(const S: string): boolean; //Verificar se uma string contém um valor numérico válido
 procedure AtualizaVarEmpresa;   //Atualiza variaveis temporaria da empresa
 Procedure MsgBox(Titulo: String;message: String);
 Function  Busca_Proximo(Tabela: String; Campo: String; Temp: Boolean=False): Integer;
 Function ValidaCnpjCpf(Numero : String) : String; // Verifica CNPJ/CPF
 Procedure ExecutaSql(pTabela: TClientDataSet; pComando: String);
 Procedure ControleDeBotao(Form: TForm; pOpcao: Boolean ); // controla status do botão do formulario
 Function ValidaCNPJ(num: string; MostraMsg: boolean = true): boolean;
 Function ValidaCPF(num: string; MostraMsg: boolean = true): boolean;
 function TiraMascara(text:string): String;     //Retira mascaras
 Procedure Teclas(mKey: Word; mForm : TForm);   //
 Function ValidaData(Data: String):Boolean;     // Valida data
 Function StrIsFloat(const S: string): boolean; // Verifica se uma string contem valor
 Function TrocaSepar(Valor: string): String;    // Troca '.'  ou ',' para separador padrao
 function Verifica_acesso(Num_acesso1:integer):Boolean; //Verifica nível de acesso
 function Verifica_acesso_sem_msn(Num_acesso1:integer):Boolean;
 function StrZero(Zeros:string;Quant:integer):String; {Insere Zeros à frente de uma string}
 procedure GravaLogUser(Form:TForm;Historico:String); //Grava a movimentação do usuário   ,
 function StringToInt(s : string) : Integer;
 procedure CodigoSugerido(Tabela, Campo : String);
 function StringToFloat(s : string) : Extended; //Filtra uma string qualquer, convertendo as suas partes numéricas para sua representação decimal
 procedure ExecutaDataSet(DataSetSql : TClientDataset; Comando : String; pGrava : Boolean = False);
 procedure ExecutaSqlParams(FechaDataSet: TClientDataSet; Sql : TSqlQuery; Comando : String;
                            Parametro : String; Valor : String; AbreDataSet: TClientDataSet);
 function Remove(arg: string ; arg2: string = '1'): string;  // retorna cnpj e cpf com ou sem mascara
 function Space(Tam: Integer): string;  // preenche com espacos em branco
 function cgc(num: string): boolean; // valida um cnpj
 function Existe(Expressao:String; Caracteres: String):Boolean;
 function GeraCodigo(Consulta : TSqlQuery; Campo : String; pGrava : Boolean = False) : Integer;
 function RemoveInteiro(Const Texto : String) : String;
 function RemoveDecimal(Const Texto : String) : String;
 function ArredondarDecimal(Valor : Double; Dec : Integer) : Double;
 function ContaZero(Const Texto : String) : Integer;
 function RemoveString(Const Texto : String) : String;
 function TrataData(Const Texto : String) : String;
 function Extenso (valor: real): string;
 function DataExtenso (dData : TDateTime) : string;
 function MesExtenso (xMes : Variant) : string;
 function AuxDataExtenso(Const Texto : String) : String;
 function RetornaFornecedor(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function RetornaCliente(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function RetornaPagar(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function RetornaPagarDocumento(Codigo : TCustomEdit): Boolean;
 function RetornaConta(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function RetornaCentroCusto(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function RetornaFornecedorFn15_3(Codigo, Nome : TCustomEdit): Boolean;
 function RetornaClienteFn15_3(Codigo, Nome : TCustomEdit): Boolean;
 function RetornaPortador(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function RetornaContaCorrenteCaixa(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 procedure SqlTemporaria(Comando : String; pGrava : Boolean = False);
 function RetornaTipoDocumento(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function RetornaVendedor(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function RetornaPagarDocumentoFn0101(Codigo : TCustomEdit): Boolean;
 function RetornaReceber(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function RetornaContaReceber(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
 function Calcula_Juro_Composto(Dias_em_Atrazo, Valor, Taxa : Double) : Double;
 function Calcula_Juro_Simples(Dias_em_Atrazo, Valor, Taxa : Double) : Double;
 function Texto_incorreto(s: String): Boolean;
 function Busca_Serie(Consulta : TSqlQuery; Campo, Tabela : String) : Integer;
 function CodificaCusto(aValor1, aPalavra1, aTipo1: String): String;
 function Verifica_CFOP(CFOP : String) : String;
 function Verifica_Data_Anterior(DataAtual, ProximaData : TDateTime) : Integer;
 function Verifica_Data(DataAtual, ProximaData : TDateTime) : Integer;
 procedure Chama_Backup;
 function FirstDayOfMonth (Data : TDateTime; lSabDom : Boolean = False) : TDateTime; // retorna o ultima dia do mes
 function LastDayOfMonth (Data : TDateTime; lSabDom : Boolean = False) : TDateTime; // retorna o ultimo dia do mes
 function PontoDecimal(Arg: Double): String;
 Function Porcento(pValorMenor, pValorMaior: Double): Double; // retorna o percentual do valor menor dentro do valor maior
 function Busca_Dados(Codigo, Descricao : TCustomEdit; Tabela, CampoBusca, CampoRetorno : String; pVerif_Codigo: Boolean = False) : Boolean;
 function RemoveChar(Const Texto : String) : String;
 procedure RetiraVirgula(Var Texto: String);
 function RemoveTracos(pTexto1: String): String;  //  remove tracos da uma string deixando apenas caracteres
 procedure Executa_CTRLF8;


var Empresa: Integer;
var Retorno: Boolean;

// variaveis globais

var xEstado    : String;
var xData      : TDateTime;
var xUsuario   : String;
var xEmpresa   : String;
var xEndereco  : String;
var xInscricao : String;
var xCnpj      : String;
var xTelefone  : String;
var xVersao    : String;
var xMaster    : String;
var xAcesso    : String;
var ModeloEcf1 : String;
var iRetorno   : Integer;         // Variável com o retorno da função

 var xConfirma1 : Integer;
implementation

uses uDmPrincipal, uMessagem, udmProgs, uCd0902, uCd0906,
  uCd0904, uCd0901, uCd0905, uCd1004, uCd1010, uCd02, uVd05,
  uCd01_2, uF5, uF6, uF7, uF4, uAltF8, uCtrlF8;


procedure Executa_CTRLF8;
begin
   frmCtrlF8 := TfrmCtrlF8.Create(Application);
   frmCtrlF8.ShowModal;
   frmCtrlF8.Release;
   frmCtrlF8 := nil;
end;

Procedure GravaIni(aArquivo: String; aSecao, aCampo: String; aTexto: String = ''; aNumero: Double = 0; aInteiro: Integer = 0);
var
   ArqIni : TIniFile;
begin
   ArqIni := TIniFile.Create(aArquivo);

   Try
      if aInteiro > 0 then
         ArqIni.WriteInteger(aSecao, aCampo, aInteiro);

      if aNumero > 0 then
         ArqIni.WriteFloat(aSecao, aCampo, aNumero);

      if aTexto <> '' then
         ArqIni.WriteString(aSecao, aCampo, aTexto);
   Finally
      ArqIni.Free;
   end;
end;

Procedure LeIni(aArquivo, aSecao, aCampo:String; Var aNumero: Double ; Var aTexto: String);
var
   Arq1 : tIniFile;
begin
   Arq1 := tIniFile.Create(aArquivo);

   Try
      if aNumero > 0 then
         aNumero   := Arq1.ReadFloat(aSecao, aCampo, aNumero );

      if aTexto <> '' then
         aTexto    := Arq1.ReadString(aSecao, aCampo, aTexto );
   Finally
      Arq1.Free;
   end;
end;

procedure RetiraVirgula(Var Texto: String);
Var
   temp: String;
   num: integer;
begin
   num := 1;
   repeat
      if (copy(Texto,num,1) <> ',') and (copy(Texto,num,1) <> '.') then
         temp := temp + copy(Texto,num,1);

      inc(num);
   until (num - 1) = Length(Texto);

   Texto := temp;
end;


function RemoveTracos(pTexto1: String): String;  //  remove tracos da uma string deixando apenas caracteres
var I: Integer; Retorno1: String;
begin
  Retorno1 := '';

  for I := 1 to Length(pTexto1) do      // Iterate
  begin
     if pTexto1[I] <> '-' then
        Retorno1 := Retorno1 + pTexto1[I]
  end;      // for

  Result := Retorno1;
end;


function RemoveChar(Const Texto : String) : String;
var
  I: integer;
  S: string;
  begin
     S := '';
     for I := 1 To Length(Texto) Do
     begin
        if (Texto[I] in ['0'..'9']) then
        begin
           S := S + Copy(Texto, I, 1);
        end;
     end;

     if S = '' then
        Result := '0'
     else
        Result := S;

end;

Function Porcento(pValorMenor, pValorMaior: Double): Double;  // retorna o percentual do valor menor dentro do valor maior
// parametros:
// pValorMenor = VALOR A EXTRAIR O PERCENTUAL (VALOR MENOR)
// pValorMaior = VALOR TOTAL DO NUMERO A SER EXTRAIDO O PERCENTUAL
var xRetorno : Double;
begin
   if pValorMaior = 0 then
   begin
      Result := 0;
      Exit;
   end;

   xRetorno := (pValorMenor * 100) / pValorMaior;

   Result := xRetorno;
end;

procedure Chama_Backup;
begin
   Application.MessageBox('Rotina ainda não desenvolvida', 'Informação', MB_OK+MB_ICONEXCLAMATION);
end;

function Verifica_Data(DataAtual, ProximaData : TDateTime) : Integer;
begin
   Result := 0;

   // verifica se o dia é domingo

   if DayOfWeek(ProximaData) = 1 then // 1 corresponde ao Domingo
   begin
      if Application.MessageBox('Tem certeza que o próximo dia é Domingo?','Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
         Result := 1 // Sim
      else
         Result := 2; // Não
   end;

   // verifica se a diferenca de dia é maior que 1

   if ((ProximaData - DataAtual) >= 2) and (DayOfWeek(ProximaData) <> 1) then
   begin
      if Application.MessageBox(pChar('Confirma o encerramento para esta data » ' + DateToStr(ProximaData) + '?'),'Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
         Result := 1 // Sim
      else
         Result := 2; // Não
   end;
end;


function Verifica_Data_Anterior(DataAtual, ProximaData : TDateTime) : Integer;
Var Contador1 : Integer;
begin
   Result := 0; // se o resultado for zero a data está correta

   // verifica se o dia e retroativo a data atual

   if ProximaData < DataAtual then
   begin
      if Application.MessageBox('Tem certeza que o próximo dia é anterior a data atual?','Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
      begin
         if Application.MessageBox('Confirma a data do próximo dia anterior a data atual?','Confirmação', MB_YESNO+MB_ICONQUESTION) = mrYes then
            Result := 1 // se o resultado for 1 confirma a data retroativa
         else
            Result := 2; // se o resultado for 2 não confirma data retroativa
      end
      else
         Result := 2;
   end;

   pData_Retro := Result;
end;

function Verifica_CFOP(CFOP : String) : String;
begin
   DmPrincipal.cdsPrincipal.Close;
   DmPrincipal.cdsPrincipal.CommandText := 'select n.codigo_nat, n.descricao_nat, n.operacao_nat from e_natureza n where n.codigo_nat =:CODIGO';
   DmPrincipal.cdsPrincipal.Params.ParamByName('CODIGO').AsString := CFOP;
   DmPrincipal.cdsPrincipal.Open;

   if not DmPrincipal.cdsPrincipal.IsEmpty then
      Result := DmPrincipal.cdsPrincipal.FieldByName('operacao_nat').AsString
   else
      Result := '';
end;

function CodificaCusto(aValor1, aPalavra1, aTipo1: String): String;
// Parametros:
// aValor1   = numero ou palavra que sera codificado
// aPalavra1 = palavra de referencia para a codificacao
// aTipo1    = 'np' codifica de numero p/ palavra  /  'pn' codifica de palavra p/ numero
var xRet1: String;
    xPos1: Integer;
    I: Integer;
begin
   xRet1 := '';

   aTipo1 := UpperCase(aTipo1);

   if aValor1 = '' then
   begin
      if aTipo1 = 'NP' then
      begin
         Result := '          ';
         Exit;
      end
      else
      begin
         Result := '';
         Exit;
      end;
   end;

   // converte de numero p/ palavra

   if aTipo1 = 'NP' then
   begin
      for I := 1 to Length(aValor1) do      // Iterate
      begin
         if Copy(aValor1,I,1) = ' ' then
            xRet1 := xRet1 + ' '
         else if (Copy(aValor1,I,1) = ',') or (Copy(aValor1,I,1) = '.') then
            xRet1 := xRet1 + '.'
         else if Copy(aValor1,I,1) = '0' then
            xRet1 := xRet1 + Copy(aPalavra1,10,1)
         else
         begin
            xPos1 := StrToInt(Copy(aValor1,I,1));
            xRet1 := xRet1 + Copy(aPalavra1, xPos1,1);
         end;
      end;      // for
   end
   else if aTipo1 = 'PN' then
   begin
      // converte de palavra p/ numero

      for I := 1 to Length(aValor1) do      // Iterate
      begin
         if Copy(aValor1,I,1) = ' ' then
            xRet1 := xRet1 + ' '
         else if (Copy(aValor1,I,1) = ',') or (Copy(aValor1,I,1) = '.') then
            xRet1 := xRet1 + '.'
         else if Copy(aValor1,I,1) = Copy(aPalavra1,10,1) then
            xRet1 := xRet1 + '0'
         else
            xRet1 := xRet1 + Trim(IntToStr(Pos(Copy(aValor1,I,1), aPalavra1))); 
      end;  // for
   end;

   Result := xRet1;
end;

function Busca_Serie(Consulta : TSqlQuery; Campo, Tabela : String) : Integer;
begin
   With consulta do
   Begin
      Close;
      SQL.Clear;
      SQL.Add(' SELECT MAX(' + campo + ') CAMPO FROM ' + tabela);
      // If condicao<>'' Then SQL.Add(' WHERE ' + condicao);
      Open;
      Busca_Serie := 1;
      If Not Eof Then Busca_Serie := FieldByName('CAMPO').asInteger + 1;
   End;
end;

function Texto_incorreto(s: String): Boolean;
var
  i, i2 :Integer;
  t : string;
  SeenSgn,SeeNum : Boolean;
begin
   t      := '';
   SeeNum := False;

   {Percorre os caracteres da string:}
   for i := Length(s) downto 0 do
   begin
     if i > 0 then
     begin
        {Filtra a string, aceitando somente números}
        if (s[i] in ['0'..'9']) then
        begin
           {if (s[i] <> '0') and (i > 1) then
           begin}
             t := s[i] + t;
             SeeNum := True;
           //end;
        end;
     end;
   end;

   if SeeNum then
   begin
      // Bloco abaixo verifica a quantidade de zero a esquerda
      i := 1; // posição do caracter
      i2 := 1;// quantidade vezes que o zero aparece a esquerda
      repeat
         if t[i] = '0' then
            i2 := i2 + 1
         else
            break;
         i := i + 1;
      until i = Length(t);
      //=====================
                                               
      if {(Length(t) <= 6) or }(StrToInt(Copy(t,i2,9)) > 999999999) then
         Result := True // Possui texto incorreto
      else
         Result := False; // Não possui texto incorreto
   end
   else
      result := False; // Não possui números

   {if Result = True then
      Application.MessageBox('Numeração incorreta.','Atenção', MB_OK + MB_ICONSTOP); }
end;

function Calcula_Juro_Composto(Dias_em_Atrazo, Valor, Taxa : Double) : Double;
Var
  J, I, B, D: Real;
begin
  I := (Taxa / 100);

  B := (1) + I;

  D := Power(B, (Dias_em_Atrazo / 30)); // Base e Expoente

  Valor := StrToFloat(FloatToStrF(Valor, fffixed,18,2)); // função (FloatToStrF) não permite estouro de pilha

  J := (Valor * D) - Valor;

  Result := StrToFloat(FloatToStrF(J, fffixed,18,2));
end;


function Calcula_Juro_Simples(Dias_em_Atrazo, Valor, Taxa : Double) : Double;
begin
   Result := Valor * (Taxa / 100 / 30) * Dias_em_Atrazo;
end;


procedure CodigoSugerido(Tabela, Campo : String);
Var
  Verifica1  : Boolean;
  FSql1 : TSQLQuery;
begin
   Verifica1            := False;
   CodigoSugerido1      := 0;
   Sugere_Titulo_Rotina := '';

    // se o parâmetro SUGERE_TIT_EMP estiver habilitado na tabela
    // EMPRESA o sistema irá sugerir um codigo ao usuário quando
    // for feiro o lançamento  de um novo título
    FSql1 := TSQLQuery.Create(Application);
    try
     FSql1.SQLConnection := DmPrincipal.DbConexao;
     FSql1.Close;
     FSql1.SQL.Clear;
     FSql1.SQL.Add(' SELECT * FROM EMPRESA WHERE CODIGO_EMP = ' + CodigoEmpresa1);

     FSql1.Open;

     if FSql1.FieldByName('SUGERE_TIT_EMP').AsString <> '' then
        Sugere_Titulo_Rotina := FSql1.FieldByName('SUGERE_TIT_EMP').AsString;

     if (FSql1.FieldByName('SUGERE_TIT_EMP').AsString = 'R') or
        (FSql1.FieldByName('SUGERE_TIT_EMP').AsString = 'P') or
        (FSql1.FieldByName('SUGERE_TIT_EMP').AsString = 'A') then
     begin
        while Verifica1 = False do
        begin
           CodigoSugerido1 := Busca_Proximo(Tabela, Campo); // caregando a variável publica com o parametro

           // verifica se já existe um codigo na tabela P_PAGAR igual ao sugerido pelo sistema
           // se existir o sistema sugere outro codigo
           if IntToStr(CodigoSugerido1) <> '' then
           begin
              FSql1.Close;
              FSql1.SQL.Clear;
              FSql1.SQL.Add(' SELECT P.' + Campo + ' FROM ' + Tabela + ' P WHERE P. ' + Campo + ' = ' + IntToStr(CodigoSugerido1));

              FSql1.Open;

              if not FSql1.IsEmpty then
                 Verifica1 := False
              else
                 Verifica1 := True;
           end;
        end;
     end;

    finally
     FreeAndNil(FSql1);
   end;
end;


function StringToInt(s : string) : Integer;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação inteira, por exemplo:
  'R$ 1.200' para 1200 '1AB34TZ' para 134 ou ABCDE para 0}
var
  i :Integer;
  t : string;
  SeenSgn,SeeNum : Boolean;
begin
  t           := '';
  SeeNum      := False;
  SeenSgn     := False;

  {Percorre os caracteres da string:}
  for i := Length(s) downto 0 do
  begin
     if i > 0 then
     begin
        {Filtra a string, aceitando somente números e separador decimal:}
        if (s[i] in ['0'..'9', '-','+']) then
        begin
            if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
            begin
              t := s[i] + t;
              SeenSgn := True;
            end
            else
            begin
              if s[i] in ['0'..'9'] then
              begin
                 t := s[i] + t;
                 SeeNum := True;
              end;
            end;
        end;
     end;
  end;
  if SeeNum = True then
     Result := StrToInt(t)
  else
     result := 0; 
end;

function StringToFloat(s : string) : Extended;
{ Filtra uma string qualquer, convertendo as suas partes
  numéricas para sua representação decimal, por exemplo:
  'R$ 1.200,00' para 1200,00 '1AB34TZ' para 134 ou ABCDE para 0}
var
  i :Integer;
  t : string;
  SeenDecimal,SeenSgn,SeeNum : Boolean;
begin
  t           := '';
  SeeNum      := False;
  SeenSgn     := False;
  SeenDecimal := False;

  {Percorre os caracteres da string:}
  for i := Length(s) downto 0 do
  begin
     if i > 0 then
     begin
        {Filtra a string, aceitando somente números e separador decimal:}
        if (s[i] in ['0'..'9', '-','+',DecimalSeparator]) then
        begin
           if (s[i] = DecimalSeparator) and (not SeenDecimal) then
           begin
              t := s[i] + t;
              SeenDecimal := True;
           end
           else
           begin
              if (s[i] in ['+','-']) and (not SeenSgn) and (i = 1) then
              begin
                 t := s[i] + t;
                 SeenSgn := True;
              end
              else
              begin
                 if s[i] in ['0'..'9'] then
                 begin
                    t := s[i] + t;
                    SeeNum := True;
                 end;
              end;
           end;
        end;
     end;
  end;
  if SeeNum = True then
     Result := StrToFloat(t)
  else
     result := 0; 
end;

function Remove(arg: string ; arg2: string = '1'): string;  // retorna cnpj e cpf com ou sem mascara
var ret1: String; I: Integer;
begin
{ parametros:
   arg2 = 1: retorna somente numeros e letras
   arg2 = 2: retorna o formado de cpf
   arg2 = 3: retorna o formato de cnpj
}
   ret1 := '';

   for I := 0 to Length(arg) do    // Iterate
   begin
      if pos(arg[I],'1234567890') <> 0 then
         ret1 := ret1 + arg[I];
   end;    // for

   if arg2 = '2' then // formato de cpf
   begin
      ret1 := ret1 + Space(14 - Length(Trim(ret1)));
      ret1 := Copy(ret1,1,3) + '.' + Copy(ret1,4,3) + '.' + Copy(ret1,7,3) + '-' + Copy(ret1,10,2) + Space(4);
   end
   else if arg2 = '3' then
   begin
      ret1 := ret1 + Space(18 - Length(Trim(ret1)));
      ret1 := Copy(ret1,1,2) + '.' + Copy(ret1,3,3) + '.' + Copy(ret1,6,3) + '/' + Copy(ret1,9,4) + '-' + Copy(ret1,13,2);
   end;

   Remove := ret1;
end;

function Space(Tam: Integer): string;  // preenche com espacos em branco
var ret1: String;
    I: Integer;
begin
   ret1 := '';

   for I := 0 to Tam - 1 do    // Iterate
   begin
      ret1 := ret1 + ' ';
   end;    // for

   Space := ret1
end;

function cgc(num: string): boolean; // valida um cnpj
var
n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
d1,d2: integer;
digitado, calculado: string;
begin
  n1:=StrToInt(num[1]);
  n2:=StrToInt(num[2]);
  n3:=StrToInt(num[3]);
  n4:=StrToInt(num[4]);
  n5:=StrToInt(num[5]);
  n6:=StrToInt(num[6]);
  n7:=StrToInt(num[7]);
  n8:=StrToInt(num[8]);
  n9:=StrToInt(num[9]);
  n10:=StrToInt(num[10]);
  n11:=StrToInt(num[11]);
  n12:=StrToInt(num[12]);
  d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
  d1:=11-(d1 mod 11);

  if d1>=10 then
     d1:=0;

  d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
  d2:=11-(d2 mod 11);

  if d2>=10 then
     d2:=0;

  calculado:=inttostr(d1)+inttostr(d2);
  digitado:=num[13]+num[14];

  if calculado=digitado then
    cgc:=true
  else
    cgc:=false;
end;

//Verifica se o usuário possui acesso
function Verifica_acesso(Num_acesso1:integer):Boolean;
begin
   if Master1 = 'T' then
      Result := True
   else
   begin
      dmProgs.cdsPermissoes.Close;
      dmProgs.cdsPermissoes.CommandText := 'SELECT * FROM USU_PERMISSOES WHERE USUARIO=:COD_USUARIO AND PERMISSAO=:COD_PERMISSAO AND EMPRESA=:COD_EMPRESA';
      dmProgs.cdsPermissoes.Params.ParamByName('COD_USUARIO').AsString    := Usuario1;
      dmProgs.cdsPermissoes.Params.ParamByName('COD_PERMISSAO').AsInteger := Num_acesso1;
      dmProgs.cdsPermissoes.Params.ParamByName('COD_EMPRESA').AsString    := CodigoEmpresa1;
      dmProgs.cdsPermissoes.Open;

      if dmProgs.cdsPermissoes.IsEmpty then
      begin
         Application.MessageBox('Este usuário não tem permissão acessar essa rotina.','Segurança', + MB_OK + MB_ICONSTOP);
         Result := False;
      end
      else
         Result := True;
   end;
end;

//Verifica se o usuário possui acesso BLOQUEIA O ACESSO SEM USO DA MESSAGEBOX
function Verifica_acesso_sem_msn(Num_acesso1:integer):Boolean;
begin
   if Master1 = 'T' then
      Result := True
   else
   begin
      dmProgs.cdsPermissoes.Close;
      dmProgs.cdsPermissoes.CommandText := 'SELECT * FROM USU_PERMISSOES WHERE USUARIO=:COD_USUARIO AND PERMISSAO=:COD_PERMISSAO AND EMPRESA=:COD_EMPRESA';
      dmProgs.cdsPermissoes.Params.ParamByName('COD_USUARIO').AsString    := Usuario1;
      dmProgs.cdsPermissoes.Params.ParamByName('COD_PERMISSAO').AsInteger := Num_acesso1;
      dmProgs.cdsPermissoes.Params.ParamByName('COD_EMPRESA').AsString    := CodigoEmpresa1;
      dmProgs.cdsPermissoes.Open;

      if dmProgs.cdsPermissoes.RecordCount = 0 then
      begin
         Result := False;
      end
      else
         Result := True;
   end;
end;

function StrZero(Zeros:string;Quant:integer):String; {Insere Zeros à frente de uma string}
var
  I,Tamanho:integer;
  aux: string;
begin
  Zeros   := Trim(Zeros);
  aux     := zeros;
  Tamanho := length(ZEROS);
  ZEROS   := '';

  for I := 1 to (quant-tamanho) do
     ZEROS := ZEROS + '0';

     aux := zeros + aux;

     StrZero := aux;
end;


{Testa se a variavel está vazia ou não}
function Empty(inString:String): Boolean;
Var
  index : Byte;
Begin
  index := 1;
  Empty := True;
  while (index <= Length(inString))and (index <> 0) do
  begin
  if inString[index] = ' ' Then
  begin
 inc(index)
  end
  else
Begin
  Empty := False;
  index := 0
end;
  end;
end;


function PegaSysDir: string;  // funcao que retorna o caminho do diretorio \system32
var
   MeuBuffer: Array [1..128] of Char;
   retorno: Integer;
Begin
   retorno := GetSystemDirectory(@MeuBuffer,128);

   if (retorno>128) OR (retorno=0) then
      PegaSysDir:=''
   else
      PegaSysDir:=StrPas(@MeuBuffer);
End;


function Encripta(Texto: String):String;  // funcao de encriptacao de string
var
   r : string;
   i : integer;
begin
   For i := 1 to Length(texto) do
      r := r + chr(Ord(Texto[i]) + i + 17);

   result:= r;
end;

function Desencripta(Texto: String):String;  // funcao de desencriptacao de string
var w : string;
    i : integer;
begin
   for i := 1 TO Length(texto) do
      w := w + chr( Ord(texto[i]) - i - 17 );

   result:= w;
end;


//Verificar se uma string contém um valor numérico válido
function IsInteger(const S: string): boolean;
begin
  try
  StrToInt(S);
  Result := true;
  except
  Result := false;
  end;
end;

procedure GravaLogUser(Form:TForm;Historico:String);//Grava a movimentação do usuário
begin
   dmProgs.cdsAcesso.Open;
   dmProgs.cdsAcesso.Append;
   dmProgs.cdsAcessoHORA_ACESSO.Value := Time;
   dmProgs.cdsAcessoDATA_ACESSO.Value := DataSystem1;
   dmProgs.cdsAcessoUSUARIO_ACESSO.AsString := NomeUsuario1;
   dmProgs.cdsAcessoROTINA_ACESSO.Value := Form.Name;
   dmProgs.cdsAcessoHISTORICO_ACESSO.Value := Historico;
   dmProgs.cdsAcessoEMPRESA_ACESSO.AsString := CodigoEmpresa1;
   dmProgs.cdsAcesso.Post;
   dmProgs.cdsAcesso.close;
end;

//Atualiza variaveis temporaria da empresa
procedure AtualizaVarEmpresa;
begin

   With dmProgs do
   begin

      if cdsEmpresa.Eof = false then
      begin

          CodigoEmpresa1   := cdsEmpresa.fieldByName('CODIGO_EMP').AsString;
          Empresa1         := cdsEmpresa.fieldByName('EMPRESA')   .AsString;
          DataSystem1      := cdsEmpresa.fieldByName('DATASYSTEM_EMP').AsDateTime;
          RazaoSocial1     := cdsEmpresa.fieldByName('RAZAOSOCIA_EMP').AsString;
          CargaEmpresa1    := cdsEmpresa.fieldByName('CARGA_EMP')  .AsString;
          xPict            := cdsEmpresa.fieldByName('FORMATO_EMP').AsString;
          Altera1          := cdsEmpresa.fieldByName('ALTERA_EMP') .AsString;
          ModeloOS1        := cdsEmpresa.fieldByName('OS_EMP') .AsString;
          CGCEmpresa1      := cdsEmpresa.fieldByName('CGC_EMP').AsString;
          InscEstadual1    := cdsEmpresa.fieldByName('INSCRICAO_EMP')  .AsString;
          InscMunicipal1   := cdsEmpresa.fieldByName('INSCR_M_EMP')    .AsString;
          EnderecoEmpresa1 := cdsEmpresa.fieldByName('ENDERECO_EMP')   .AsString + ', ' + cdsEmpresa.fieldByName('NUMERO_EMP').AsString +
                           ' - ' + cdsEmpresa.fieldByName('BAIRRO_EMP').AsString;
          CidadeEmpresa1   := cdsEmpresa.fieldByName('CIDADE_EMP').AsString;
          EstadoEmpresa1   := cdsEmpresa.fieldByName('ESTADO_EMP').AsString;
          CEPEmpresa1      := cdsEmpresa.fieldByName('CEP_EMP')   .AsString;
          FoneEmpresa1     := cdsEmpresa.fieldByName('TELEFONE_EMP') .AsString;
          FaxEmpresa1      := cdsEmpresa.fieldByName('FAX_EMP')      .AsString;
          TipoConsulta1    := cdsEmpresa.fieldByName('TIPO_CONS_EMP').AsString;
          ComplementoNF1   := cdsEmpresa.fieldByName('COMPL_NF_EMP') .AsString;
          PerguntaECF1     := cdsEmpresa.fieldByName('PERG_ECF_EMP') .AsString;
          ConfirmaAliq1    := cdsEmpresa.fieldByName('CONF_ALI_EMP') .AsString;
          CupomAnexo1      := cdsEmpresa.fieldByName('CUP_ANEX_EMP') .AsString;
          QuebraComitancia1:= cdsEmpresa.fieldByName('QUEB_CON_EMP') .AsString;
          VendaNegativo1   := cdsEmpresa.fieldByName('VEN_NEGAT_EMP').AsString;
          ModeloCaixa1     := 2; // verificar o campo
          // observa‡äes do or‡amento
          ObsOrcamento1       := cdsEmpresa.fieldByName('OBS_ORC1_EMP') .AsString;
          ObsOrcamento2       := cdsEmpresa.fieldByName('OBS_ORC2_EMP') .AsString;
          ConfirmaCliente1    := cdsEmpresa.fieldByName('CONF_CLI_EMP') .AsString;
          DriverECF1          := cdsEmpresa.fieldByName('DRIVE_ECF_EMP').AsString;
          VendaParceiro1      := cdsEmpresa.fieldByName('VEN_PARC_EMP') .AsString;
          CodigoCidadeEmpresa1:= cdsEmpresa.fieldByName('CODIGO_CIDADE_EMPRESA').AsString;
          mOpcaoEmpresa       := ' AND COD_EMPRESA=' + CodigoEmpresa1;

          if cdsEmpresa.FieldByName('DECIMAL_EMP').AsInteger = 3 then
             MascaraPrecoVenda1  := '#,##0.000'
          else if cdsEmpresa.FieldByName('DECIMAL_EMP').AsInteger = 4 then
             MascaraPrecoVenda1  := '#,##0.0000'
          else
             MascaraPrecoVenda1  := '#,##0.00';

          if cdsEmpresa.FieldByName('DEC_COM_EMP').AsInteger = 3 then
             MascaraPrecoCompra1  := '#,##0.000'
          else if cdsEmpresa.FieldByName('DEC_COM_EMP').AsInteger = 4 then
             MascaraPrecoCompra1  := '#,##0.0000'
          else
             MascaraPrecoCompra1  := '#,##0.00';

      end ;

   end;

end;


Procedure MsgBox(Titulo: String;Message: String);
begin

   frmMessagem:=TfrmMessagem.Create(application);
   frmMessagem.rchTexto.Text:=Message;
   frmMessagem.Caption:=Titulo;
   frmMessagem.ShowModal;
   frmMessagem.Release;
   frmMessagem:=nil;

end;


///////////////////////////////////////////////////////////////////////////////////////////////////
// Busca o ultimo codigo em SQL onde:  consulta = query                                          //
//                                     tabela   = nome da tabela                                 //
//                                     campo    = nome do campo da tabela                        //
//                                     temp     = não retornar com valor adicionado              //
///////////////////////////////////////////////////////////////////////////////////////////////////
Function Busca_Proximo(Tabela: String; Campo: String; Temp: Boolean=False): Integer;
Var
  Sql1 : String;
  Codigo1 : Integer;
  pTabela, pCampo : TStringList;
begin
   Codigo1 := 0;
   pTabela := TStringList.Create;
   pCampo := TStringList.Create;

   with DmPrincipal do
   begin
      DBControle.Close;
      DBControle.Open;

      DBControle.GetTableNames(pTabela);
      if (pTabela.IndexOf(Tabela) = -1) then // se for igual a -1 tabela não encontrada
      begin
         Application.MessageBox('Ocorreu um erro de incrementação de código,'+ #13 + 'Contate a Multisoft Sistemas', 'Informação', MB_OK+MB_ICONEXCLAMATION);
         Abort;
      end
      else
      begin
         DBControle.GetFieldNames(Tabela, pCampo);
         if (pCampo.IndexOf(Campo)= -1) then // se for igual a -1 campo da tabela não encontrado
         begin
            Application.MessageBox('Ocorreu um erro de incrementação de código,'+ #13 + 'Contate a Multisoft Sistemas', 'Informação', MB_OK+MB_ICONEXCLAMATION);
            Abort;
         end;
      end;

      cdsPrincipal.Close;
      cdsPrincipal.CommandText := 'SELECT * FROM CONTROLE ' +
                                  'WHERE TABELA =:TABELA AND CAMPO =:CAMPO ';

      cdsPrincipal.Params.ParamByName('TABELA').AsString := Tabela;
      cdsPrincipal.Params.ParamByName('CAMPO').AsString  := Campo;
      cdsPrincipal.Open;

      // A variavel Temp diz que e pra retornar valor atual. E não acrecido de mais 1
      if not Temp then
      begin
         if cdsPrincipal.IsEmpty then
         begin
            Codigo1 := 1;
            Sql1    := 'INSERT INTO CONTROLE (TABELA, CAMPO, CODIGO) VALUES (:TABELA, :CAMPO, :CODIGO)';
         end
         else
         begin
            Codigo1 := cdsPrincipal.FieldByName('CODIGO').AsInteger + 1;
            Sql1    := 'UPDATE CONTROLE SET CODIGO =:CODIGO WHERE TABELA =:TABELA AND CAMPO =:CAMPO';
         end;

         cdsPrincipal.Close;
         cdsPrincipal.CommandText := Sql1;
         cdsPrincipal.Params.ParamByName('TABELA').AsString  := Tabela;
         cdsPrincipal.Params.ParamByName('CAMPO').AsString   := Campo;
         cdsPrincipal.Params.ParamByName('CODIGO').AsInteger := Codigo1;
         cdsPrincipal.Execute;
      end
      else
         Codigo1 := cdsPrincipal.FieldByName('CODIGO').AsInteger;

      Result := Codigo1;
   end;
end;

// Verifica CNPJ/CPF
Function ValidaCnpjCpf(Numero : String) : String;
var
  i,j,k, Soma, Digito : Integer;
  CNPJ : Boolean;
begin
  Result := Numero;
  case Length(Numero) of
  9:
  CNPJ := False;
  12:
  CNPJ := True;
  else
  Exit;
  end;
  for j := 1 to 2 do
  begin
  k := 2;
  Soma := 0;
  for i := Length(Result) downto 1 do
  begin
  Soma := Soma + (Ord(Result[i])-Ord('0'))*k;
  Inc(k);
  if (k > 9) and CNPJ then
  k := 2;
  end;
  Digito := 11 - Soma mod 11;
  if Digito >= 10 then
  Digito := 0;
  Result := Result + Chr(Digito + Ord('0'));
  end;

end;

Procedure ExecutaSql(pTabela: TClientDataSet; pComando: String);
begin
   pTabela.Close;
   pTabela.CommandText := pComando;
   ptabela.Open;
end;

// controla status do botão do formulario
Procedure ControleDeBotao(Form: TForm; pOpcao: Boolean );
var
  i: integer;

begin
  With form do
  begin

      for I:= 0 to ComponentCount -1 do
      begin

          if Components[I] is TBitBtn then
          begin
             if pOpcao=True then
             begin
                 if (Components[I] as TBitBtn).Name='btnExcluir'  then
                    (Components[I] as TBitBtn).Enabled:=false ;

                 if (Components[I] as TBitBtn).Name='btnAlterar'  then
                    (Components[I] as TBitBtn).Enabled:=false ;

                 if (Components[I] as TBitBtn).Name='btnImprimir'  then
                    (Components[I] as TBitBtn).Enabled:=False ;

             end else
             begin
                 if (Components[I] as TBitBtn).Name='btnExcluir'  then
                    (Components[I] as TBitBtn).Enabled:=True ;

                 if (Components[I] as TBitBtn).Name='btnAlterar'  then
                    (Components[I] as TBitBtn).Enabled:=True ;

                 if (Components[I] as TBitBtn).Name='btnImprimir'  then
                    (Components[I] as TBitBtn).Enabled:=True ;

             end;

         end;

      end;

  end;

end;

// se pVerif_Codigo = True não retorna ">>TODOS<<" e a mensagem de verificação
function Busca_Dados(Codigo, Descricao : TCustomEdit; Tabela, CampoBusca, CampoRetorno : String; pVerif_Codigo: Boolean = False) : Boolean;
Var ComponenteSql : TSQLQUERY;
begin
   Tipo_Cliente := -1;

   Result := True;

   if ((Codigo.Text = '0') or (Codigo.Text = '')) and (pVerif_Codigo = False) then
   begin
      if Descricao is TEdit then
         Descricao.Text := '>> TODOS <<';

      Exit;
   end;

   ComponenteSql := TSQLQuery.Create(Application);

   ComponenteSql.SQLConnection := DmPrincipal.DbConexao; // conexao com o banco

   ComponenteSql.Close;
   ComponenteSql.SQL.Clear;
   ComponenteSql.SQL.Add('SELECT * FROM ' + Tabela + ' WHERE ' + CampoBusca + ' = ' + QuotedStr(Codigo.Text));

   ComponenteSql.Open;

   if (ComponenteSql.IsEmpty) and (pVerif_Codigo = False) then
   begin
      Application.MessageBox('O código informado é inválido', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := False;
      Exit;
   end;

   if Descricao is TEdit then
      Descricao.Text := ComponenteSql.FieldByName(CampoRetorno).AsString;

   if Descricao is TDBEdit then
      TDBEdit(Descricao).Field.AsString := ComponenteSql.FieldByName(CampoRetorno).AsString;

   if CampoRetorno = 'NOME_CLIENTE' then
      Tipo_Cliente := ComponenteSql.FieldByName('tipo_cliente').AsInteger;

   FreeAndNil(ComponenteSql);
end;

//Retira mascaras
function TiraMascara(text:string): String;
var
 aux:string;
 i:integer;
begin
    Aux := '';
    for i :=1 to Length(text) do
    begin
        if(copy(text,i,1)<>'.') and (copy(text,i,1)<>'-') and
          (copy(text,i,1)<>'/') and (copy(text,i,1)<>'\') then
        begin
            Aux := Aux + copy(text,i,1);
        end;
    end;
    Result := Aux;
end;

Function ValidaCNPJ(num: string; MostraMsg: boolean = true): boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
   d1,d2: integer;
   digitado, calculado: string;
begin
   n1 := StringToInt(num[1]);
   n2 := StringToInt(num[2]);
   n3 := StringToInt(num[3]);
   n4 := StringToInt(num[4]);
   n5 := StringToInt(num[5]);
   n6 := StringToInt(num[6]);
   n7 := StringToInt(num[7]);
   n8 := StringToInt(num[8]);
   n9 := StringToInt(num[9]);
   n10 := StringToInt(num[10]);
   n11 := StringToInt(num[11]);
   n12 := StringToInt(num[12]);

   d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5 * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;

   d1 := 11 - (d1 mod 11);

   if d1 >= 10 then
      d1 := 0;

   d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6 * 9 + n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6;
   d2 := 11 - (d2 mod 11);

   if d2 >= 10 then
      d2 := 0;

   calculado := inttostr(d1) + inttostr(d2);
   digitado  := num[13] + num[14];

   if calculado = digitado then
     Result := True
   else
   begin
     Result := False;
     if MostraMsg then
        Application.MessageBox('Número de CNPJ inválido!','Atenção',mb_TaskModal + mb_IconWarning);
   end;
end;

Function ValidaCPF(num: string; MostraMsg: boolean = true): boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
   d1,d2: integer;
   digitado, calculado: string;
begin
   n1 := StringToInt(num[1]);
   n2 := StringToInt(num[2]);
   n3 := StringToInt(num[3]);
   n4 := StringToInt(num[4]);
   n5 := StringToInt(num[5]);
   n6 := StringToInt(num[6]);
   n7 := StringToInt(num[7]);
   n8 := StringToInt(num[8]);
   n9 := StringToInt(num[9]);

   d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10;
   d1 := 11 -(d1 mod 11);

   if d1 >= 10 then
      d1 := 0;

   d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11;
   d2 := 11 - (d2 mod 11);

   if d2 >= 10 then
      d2 := 0;

   calculado := inttostr(d1)+inttostr(d2);
   digitado  := num[10] + num[11];

   if calculado = digitado then
     result := True
   else
   begin
     result := False;
     if MostraMsg then
        Application.MessageBox('Número de CPF inválido!','Atenção',mb_TaskModal + mb_IconWarning);
   end;
end;

Procedure Teclas(mKey: Word; mForm : TForm);
var
  Erro: Word;
begin

     //verifica se o Alt esta precionando 

    if (((GetKeyState(VK_MENU) shr 16) and KF_UP)>0) then
    begin
       if mkey=vk_f5 then
       begin
          {frm0335:=Tfrm0335.create(application);
          frm0335.ShowModal;
          frm0335.Release; }

       end;

       if mkey=vk_f6 then  // Pesquisa de Portadores
       begin
          frmCd0902:=TfrmCd0902.create(application);
          With frmCd0902 do
          begin
             btnIncluir.Visible:=false;
             btnAlterar.Visible:=false;
             btnExcluir.Visible:=false;
             btnFechar.Top:=btnIncluir.Top;

          end ;
          frmCd0902.ShowModal;
          frmCd0902.Release;

       end;
       if mkey=vk_f7 then  // Pesquisa de Conta corrente
       begin
          frmcd0906:=Tfrmcd0906.create(application);
          With frmcd0906 do
          begin
             btnIncluir.Visible:=false;
             btnAlterar.Visible:=false;
             btnExcluir.Visible:=false;
             btnFechar.Top:=btnIncluir.Top;

          end ;
          frmcd0906.ShowModal;
          frmcd0906.Release;

       end;
       if mkey=vk_f8 then  // Pesquisa do Tipo de documento
       begin
          frmCd0904:=TfrmCd0904.create(application);
          With frmCd0904 do
          begin
             btnIncluir.Visible:=false;
             btnAlterar.Visible:=false;
             btnExcluir.Visible:=false;
             btnFechar.Top:=btnIncluir.Top;

          end ;
          frmCd0904.ShowModal;
          frmCd0904.Release;

       end;

       if mkey=vk_f9 then  // Pesquisa do Centro de custos
       begin
          frmCd0901:=TfrmCd0901.create(application);
          With frmCd0901 do
          begin
             btnIncluir.Visible:=false;
             btnAlterar.Visible:=false;
             btnExcluir.Visible:=false;
             btnFechar.Top:=btnIncluir.Top;

          end ;
          frmCd0901.ShowModal;
          frmCd0901.Release;

       end;

       if mkey=vk_f10 then  // Pesquisa de Conta Fluxo
       begin
          frmCd0905:=TfrmCd0905.create(application);
          With frmCd0905 do
          begin
             btnIncluir.Visible:=false;
             btnAlterar.Visible:=false;
             btnExcluir.Visible:=false;
             btnFechar.Top:=btnIncluir.Top;

          end ;
          frmCd0905.ShowModal;
          frmCd0905.Release;

       end;

       if mkey=vk_f11 then  // Pesquisa do Ramo de atividade do cliente
       begin
          frmCd1004:=TfrmCd1004.create(application);
          With frmCd1004 do
          begin
             btnIncluir.Visible:=false;
             btnAlterar.Visible:=false;
             btnExcluir.Visible:=false;
             btnFechar.Top:=btnIncluir.Top;

          end ;
          frmCd1004.ShowModal;
          frmCd1004.Release;

       end;

       if mkey=vk_f12 then  // Pesquisa de Parceiros
       begin
          frmCd1010:=TfrmCd1010.create(application);
          With frmCd1010 do
          begin
             btnIncluir.Visible:=false;
             btnAlterar.Visible:=false;
             btnExcluir.Visible:=false;
             btnFechar.Top:=btnIncluir.Top;

          end ;
          frmCd1010.ShowModal;
          frmCd1010.Release;

       end;
       
      Exit;

    end ;
    // Shift

    if (((GetKeyState(VK_SHIFT) shr 16) and KF_UP)>0) then
    begin
       if mkey=vk_f1 then
       begin
          WinExec('calc.exe', SW_SHOW);

       end ;

       {if (mkey=vk_f3) and (mForm.Name<>Copy('frmCd01_2',1,7)) then
       begin
           frmCd01_2:=TfrmCd01_2.create(application);
           frmCd01_2.ShowModal;
           frmCd01_2.Release;

       end ;

       if (mkey=vk_f4) and (mForm.Name<>Copy('frm0334',1,7)) then
       begin

          frm0334:=Tfrm0334.create(application);
          frm0334.ShowModal;
          frm0334.Release;



           //frm0328:=Tfrm0328.create(application);
           //frm0328.ShowModal;
           //frm0328.Release;

       end ;

       if (mkey=vk_f5) and (mForm.Name<>Copy('frm0329',1,7)) then
       begin
           frm0329:=Tfrm0329.create(application);
           frm0329.ShowModal;
           frm0329.Release;

       end ;

       if (mkey=vk_f6) and (mForm.Name<>Copy('frmCd05',1,7)) then
       begin
           frmVd05:=TfrmVd05.create(application);
           frmVd05.ShowModal;
           frmVd05.Release;

       end ;

       if (mkey=vk_f7) and (mForm.Name<>Copy('frm0331',1,7)) then
       begin
           frm0331:=Tfrm0331.create(application);
           frm0331.ShowModal;
           frm0331.Release;

       end ;

       if (mkey=vk_f8) and (mForm.Name<>Copy('frm0332',1,7)) then
       begin
           frm0332:=Tfrm0332.create(application);
           frm0332.ShowModal;
           frm0332.Release;

       end ;

       if (mkey=vk_f11) and (mForm.Name<>Copy('frm0333',1,7)) then
       begin
           frm0333 := Tfrm0333.create(application);
           frm0333.ShowModal;
           frm0333.Release;

       end ; }

       Exit;

    end ;
    {if mkey=vk_f3 then // Pesquisa de Grupos
    begin

    end;
    if (mkey=vk_f4) and (mForm.Name<>Copy('frm0308',1,7))    then // Pesquisa de Vendedores
    begin
       frmF4:=tfrmF4.Create(Application);
       frmF4.ShowModal;
       frmF4.Release;

    end;

    if (mkey=vk_f5) and (mForm.Name<>Copy('frm0327',1,7))    then // Resumo de Caixa
    begin
        frmF5:=TfrmF5.Create(application);
        frmF5.ShowModal;
        frmF5.Release;

    end ;

    if (mKey=vk_f6) and (mForm.Name<>Copy('frm0307',1,7))  then  //Pesquisa de fornecedores
    begin
        frmF6:=TfrmF6.Create(Application);
        frmF6.ShowModal;
        frmF6.Release;

    end;

    if (mkey=vk_f7)  and (mForm.Name<>Copy('frm0306',1,7)) then  // F7 - Pesquisa de Cliente
    begin
        frmF7:=tfrmF7.Create(Application);
        frmF7.ShowModal;
        frmF7.Release;
        frmF7:=nil;

    end;
//    if (mkey=vk_f12) and (mForm.Name<>Copy('frm030903',1,7)) then  // F8 - Pesquisa de Tipo de Pagamento
//    begin
//        frm03011_2:=tfrm03011_2.Create(Application);
//        frm03011_2.ShowModal;
//        frm03011_2.Release;
//        frm03011_2:=nil;

//    end;

    if (mkey=vk_f8) and (mForm.Name<>Copy('frm0304',1,7)) then  // F8 - Pesquisa de Tipo de Pagamento
    begin
        frmF8:=tfrmF8.Create(Application);
        frmF8.ShowModal;
        frmF8.Release;
        frmF8:=nil;

    end; }

end;

Function ValidaData(Data: String):Boolean;
var
TesteData: TDateTime;
begin
Result:=True;
try
  TesteData := StrToDate(Data);
except
  Result := False;
end;
end;

// Verfica se uma string contem valor moeda
Function StrIsFloat(const S: string): boolean;
begin
try
  StrToFloat(S);
  Result := true;
except
  Result := false;
end;
end;

// Troca '.'  ou ',' para separador padrao
Function TrocaSepar(Valor: string): String;
var i:integer;
begin
   result := Valor;
   if Valor <> ' ' then
   begin
      for i := 0 to Length(Valor) do
      begin
         if Valor[i]= '.' then
         begin
            Valor[i]:=',';

         end else if Valor[i] = ',' then
         begin
              Valor[i]:='.';

         end ;

      end ;
      Result:= Valor
   end;

end;

procedure ExecutaDataSet(DataSetSql : TClientDataset; Comando : String; pGrava : Boolean = False);
begin
   if pGrava = True then
   begin
      DataSetSql.Close;
      DataSetSql.CommandText := Comando;
      DataSetSql.Execute;
   end
   else
   begin
      DataSetSql.Close;
      DataSetSql.CommandText := Comando;
      DataSetSql.Open;
   end;
end;

procedure ExecutaSqlParams(FechaDataSet: TClientDataSet; Sql : TSqlQuery; Comando : String;
Parametro : String; Valor : String; AbreDataSet: TClientDataSet);
begin
   FechaDataSet.Close;
   Sql.Close;
   Sql.SQL.Clear;
   Sql.SQL.Add(Comando);
   Sql.ParamByName(Parametro).AsString := Valor;
   Sql.Open;
   AbreDataSet.Open;
end;

function Existe(Expressao:String; Caracteres: String):Boolean;
var
   Num1, Num2, Num3, Num4: integer;
begin
   Num1   := Length(Expressao);
   Num2   := 1;
   Num3   := Length(Caracteres);
   Num4   := 1;

   Result := False;


   while Num2 <= Num1 do
   begin

      repeat
         if copy(Expressao,Num2,1) = copy(Caracteres,Num4,1) then
         begin
            Result := True;
            break;
         end;
         inc(Num4);

         Num3 := Num3 - 1;
      until Num3 = 0;

      inc(Num2);
   end;
end;

function GeraCodigo(Consulta : TSqlQuery; Campo : String; pGrava : Boolean = False) : Integer;
Var
  Codigo1 : Integer;
begin
   With consulta do
   begin
      Close;
      SQL.Clear;
      SQL.Add(' SELECT C.' + campo + ' FROM CONTROLE C ');
      Open;

      if FieldByName(campo).AsInteger > 0 then
      begin
         Codigo1 := FieldByName(campo).AsInteger + 1;

         if pGrava = True then
         begin
            Close;
            SQL.Clear;
            SQL.Add(' UPDATE CONTROLE SET ' + Campo + ' = ' + IntToStr(Codigo1));
            ExecSQL();
         end;
      end
      else
      begin
         Codigo1 := 1;

         if pGrava = True then
         begin
            Close;
            SQL.Clear;
            SQL.Add(' INSERT INTO CONTROLE (' + Campo + ') VALUES (' + IntToStr(Codigo1) + ')');
            ExecSQL();
         end;
      end;
   end;

   Result := Codigo1;
end;

// Remove números deixando apenas letras
function RemoveInteiro(Const Texto : String) : String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['A'..'Z','a'..'z','à','â','ê','ô','û','ã','õ','á',
          'é','í','ó','ú','ç','ü','À','Â','Ê','Ô','Û','Ã','Õ','Á','É','Í',
          'Ó','Ú','Ç','Ü', ' ']) then
      begin
         S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;

end;

function RemoveDecimal(Const Texto : String) : String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['A'..'Z', 'a'..'z', '0'..'9']) then
      begin
         S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;

end;

function ArredondarDecimal(Valor : Double; Dec : Integer) : Double;
var
   Valor1,
   Numero1,
   Numero2,
   Numero3: Double;
begin
   Valor1  := Exp(Ln(10) * (Dec + 1));
   Numero1 := Int(Valor * Valor1);
   Numero2 := (Numero1 / 10);
   Numero3 := Round(Numero2);

   Result  := (Numero3 / (Exp(Ln(10) * Dec)));
end;

function ContaZero(Const Texto : String) : Integer;
var
  I, A: integer;
begin
   A := 0;
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['0']) then
      begin
         A := A + 1;
      end;
   end;

   Result := A;

end;

function RemoveString(const Texto : String) : String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['0'..'9']) then
      begin
         S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;

end;

function TrataData(Const Texto : String) : String;
var
  I: integer;
  S: string;
begin
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['/', '0'..'9']) then
      begin
         S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;

end;

procedure SqlTemporaria(Comando : String; pGrava : Boolean = False);
Var
  FSQL : TSQLQuery;
begin
   FSQL := TSQLQuery.Create(Application);
   try
   
    FSQL.SQLConnection := DmPrincipal.DbConexao;

    if pGrava = True then
    begin
       FSQL.Close;
       FSQL.SQL.Clear;
       FSQL.SQL.Add(Comando);
       FSQL.ExecSQL();
    end
    else
    begin
       FSQL.Close;
       FSQL.SQL.Clear;
       FSQL.SQL.Add(Comando);
       FSQL.Open;

       if FSQL.IsEmpty then
          ShowMessage('Nenhum registro encontrado');
    end;

    finally
    FreeAndNil(FSQL);
   end;
end;

function RetornaFornecedor(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select c.codigo_cliente, c.tipo_cliente, c.nome_cliente ' +
                       ' from E_CLIENTE c ' +
                       ' where c.codigo_cliente = ' + Codigo.Text +
                       ' and c.tipo_cliente = ' + QuotedStr('2'));
     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Fornecedor não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

     if Nome is TDBText then
        TDBText(Nome).Field.AsString := FSQLQuery.FieldByname('nome_cliente').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;


function Extenso (valor: real): string;
var
  Centavos, Centena, Milhar, Milhao, Texto, msg: string;
const
Unidades: array[1..9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');

function ifs(Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
begin
   if Expressao then
      Result:=CasoVerdadeiro
   else
      Result:=CasoFalso;
end;

function MiniExtenso (trio: string): string;
var
  Unidade, Dezena, Centena: string;
begin
   Contador := 1;
   Unidade:='';
   Dezena:='';
   Centena:='';
   if (trio[2]='1') and (trio[3]<>'0') then
   begin
      Unidade:=Dez[strtoint(trio[3])];
      Dezena:='';
   end
   else
   begin
      if trio[2]<>'0' then
         Dezena:=Dezenas[strtoint(trio[2])];

      if trio[3]<>'0' then
          Unidade:=Unidades[strtoint(trio[3])];
   end;

   if (trio[1]='1') and (Unidade='') and (Dezena='') then
      Centena:='cem'
   else
     if trio[1]<>'0' then
       Centena:=Centenas[strtoint(trio[1])]
     else
       Centena:='';

       Result:= Centena + ifs((Centena<>'') and ((Dezena<>'') or (Unidade<>'')), ' e ', '')
      + Dezena + ifs((Dezena<>'') and (Unidade<>''),' e ', '') + Unidade;
   end;

   begin
   if (valor>999999.99) or (valor<0) then
   begin
      msg:='O valor está fora do intervalo permitido.';
      msg:=msg+'O número deve ser maior ou igual a zero e menor que 999.999,99.';
      msg:=msg+' Se não for corrigido o número não será escrito por extenso.';
      showmessage(msg);
      Result:='';
      exit;
   end;
   if valor=0 then
   begin
      Result:='';
      Exit;
   end;

   Texto:=formatfloat('000000.00',valor);
   Milhar:=MiniExtenso(Copy(Texto,1,3));
   Centena:=MiniExtenso(Copy(Texto,4,3));
   Centavos:=MiniExtenso('0'+Copy(Texto,8,2));
   Result:=Milhar;

   if Milhar<>'' then
      if copy(texto,4,3)='000' then
         Result:=Result+' Mil Reais'
      else
         Result:=Result+' Mil, ';

      if (((copy(texto,4,2)='00') and (Milhar<>'')
      and (copy(texto,6,1)<>'0')) or (centavos=''))
      and (Centena<>'') and (Contador > 1) then
         Result:=Result+' e ';

      if (Milhar+Centena <>'') then
         Result:=Result+Centena;

      if (Milhar='') and (copy(texto,4,3)='001') then
         Result:=Result+' Real'
      else
         if (copy(texto,4,3)<>'000') then Result:=Result+' Reais';
            if Centavos='' then
            begin
               Result:=Result+'.';
               Exit;
            end
            else
            begin
               if Milhar+Centena='' then
                  Result:=Centavos
               else
                  Result:=Result+', e '+Centavos;

               if (copy(texto,8,2)='01') and (Centavos<>'') then
                  Result:=Result+' Centavo.'
              else
                  Result:=Result+' Centavos.';

            end;
            
end;

function RetornaClienteFn15_3(Codigo, Nome : TCustomEdit): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select c.codigo_cliente, c.tipo_cliente, c.nome_cliente ' +
                       ' from E_CLIENTE c ' +
                       ' where c.codigo_cliente = ' + Codigo.Text +
                       ' and c.tipo_cliente = ' + QuotedStr('0'));
     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Cliente não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
        Result := False;
        Exit;
     end;

     if Nome is TDBEdit then
        TDBEdit(Nome).Field.AsString := FSQLQuery.FieldByname('nome_cliente').AsString
     else
        Nome.Text := FSQLQuery.FieldByname('nome_cliente').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function DataExtenso (dData : TDateTime) : string;
var
  Ano, Mes, Dia : word;
  Dia1 : String;
begin
   DecodeDate(dData, Ano, Mes, Dia);
   Dia1 := AuxDataExtenso(DateToStr(DataSystem1));
   DataExtenso := Dia1 + ' de ' + MesExtenso(Mes) + ' de ' + IntToStr(Ano);
end;


function AuxDataExtenso(Const Texto : String) : String;
var
  I : integer;
  S , B: string;
begin
   B := '';
   S := '';
   for I := 1 To Length(Texto) Do
   begin
      if (Texto[I] in ['0'..'9', '/']) then
      begin
         B := Copy(Texto, I, 1);

         if B = '/' then
            Break
         else
            S := S + Copy(Texto, I, 1);
      end;
   end;

   Result := S;
end;


Function MesExtenso (xMes : Variant) : string;
Var
  Dia, Mes, Ano : Word;
begin
   Mes := 0;

   Case VarType(xMes) of
      VarDate : DecodeDate (xMes, Ano, Mes, Dia);
      VarString :
      Try
      Mes := StrToInt (xMes);
      Except
   end;
   else
      Try
      Mes := Round (xMes);
      Except
   end;
   end;
   case Mes of
      1: Result := 'Janeiro';
      2: Result := 'Fevereiro';
      3: Result := 'Março';
      4: Result := 'Abril';
      5: Result := 'Maio';
      6: Result := 'Junho';
      7: Result := 'Julho';
      8: Result := 'Agosto';
      9: Result := 'Setembro';
      10: Result := 'Outubro';
      11: Result := 'Novembro';
      12: Result := 'Dezembro';
   else
     Result := '';
   end;
end;

function RetornaCliente(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   Utilizado        := 0;
   ClienteBloqueado := '';

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select c.codigo_cliente, c.tipo_cliente, c.nome_cliente, ' +
                       ' c.utilizado_cliente, c.databloqueio_cliente ' +
                       ' from E_CLIENTE c ' +
                       ' where c.codigo_cliente = ' + Codigo.Text +
                       ' and c.tipo_cliente = ' + QuotedStr('0'));
     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Cliente não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

     if Nome is TDBText then
     begin
        TDBText(Nome).Field.AsString := FSQLQuery.FieldByname('nome_cliente').AsString;
     end;

        // variável a ser declarada no baixa de contas a receber
        Utilizado := FSQLQuery.FieldByname('utilizado_cliente').AsFloat;

        ClienteBloqueado := FSQLQuery.FieldByname('databloqueio_cliente').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function RetornaTipoDocumento(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select t.codigo_tipodocumento, t.descricao_tipodocumento '+
                       ' from e_tipodocumento t '+
                       ' where t.codigo_tipodocumento = ' + Codigo.Text);

     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Tipo de documento não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

     if Nome is TDBText then
        TDBText(Nome).Field.AsString := FSQLQuery.FieldByname('descricao_tipodocumento').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function RetornaPagar(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select p.fornecedor_pagar, p.cod_empresa_pagar ' +
                       ' from p_pagar p ' +
                       ' where p.fornecedor_pagar = ' + Codigo.Text +
                       ' and p.cod_empresa_pagar = ' + CodigoEmpresa1);
     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Nehum documento cadastrado para esse fornecedor', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function RetornaPagarDocumento(Codigo : TCustomEdit): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   ValorParcial := 0;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select p.documento_pagar, p.cod_empresa_pagar, p.tipo_baixa_pagar ' +
                       ' from p_pagar p ' +
                       ' where p.documento_pagar = ' + QuotedStr(Codigo.Text) +
                       ' and p.cod_empresa_pagar = ' + CodigoEmpresa1);
     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Documento não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
        Result := False;
        Exit;
     end;

     if FSQLQuery.FieldByName('TIPO_BAIXA_PAGAR').AsString = 'T' then
     begin
        Application.MessageBox('Documento já liquidado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
        Result := False;
        Exit;
     end;

     if FSQLQuery.FieldByName('TIPO_BAIXA_PAGAR').AsString = 'P' then
     begin
        FSQLQuery.Close;
        FSQLQuery.SQL.Clear;
        FSQLQuery.SQL.Add(' select * from p_parcial where duplicata_parcial = ' + QuotedStr(Codigo.Text));

        FSQLQuery.Open;

        if not FSQLQuery.IsEmpty then
        begin
           FSQLQuery.First;
           while (FSQLQuery.FieldByName('duplicata_parcial').AsString = Codigo.Text) and (not FSQLQuery.Eof) do
           begin
              ValorParcial := ValorParcial + FSQLQuery.FieldByName('valor_parcial').AsFloat;

              FSQLQuery.Next;
           end;
        end;
     end;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function RetornaConta(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select c.codigo_conta, c.descricao_conta, c.tipo_conta ' +
                       ' from e_conta c ' +
                       ' where c.codigo_conta = ' + QuotedStr(Codigo.Text));
     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Conta não cadastrada', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

     if FSQLQuery.FieldByName('tipo_conta').AsString = 'T' then
     begin
        Application.MessageBox(' Conta Título não pode ter lançamento','Informação', MB_OK+MB_ICONEXCLAMATION);        if Nome is TDBText then        TDBText(Nome).Field.AsString := '';        Result := False;        Exit;     end;

     if Nome is TDBText then
        TDBText(Nome).Field.AsString := FSQLQuery.FieldByname('descricao_conta').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function RetornaCentroCusto(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select c.codigo_centro, c.descricao_centro ' +
                       ' from e_centro c ' +
                       ' where c.codigo_centro = ' + Codigo.Text);
     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Centro de custo não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

     if Nome is TDBText then
        TDBText(Nome).Field.AsString := FSQLQuery.FieldByname('descricao_centro').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;


function RetornaPortador(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select p.codigo_portador, p.descricao_portador, p.tipo_portador ' +
                       ' from e_portador p  ' +
                       ' where p.codigo_portador = ' + Codigo.Text);

     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Portador não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

     if Nome is TDBText then
        TDBText(Nome).Field.AsString := FSQLQuery.FieldByname('descricao_portador').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function RetornaContaCorrenteCaixa(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   if Codigo.Text = '999' then
   begin
      if Nome is TDBText then
        TDBText(Nome).Field.AsString := 'CAIXA FATURAMENTO';
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select b.codigo_banco, b.descricao_banco, b.cod_empresa ' +
                       ' from p_banco b ' +
                       ' where b.codigo_banco = ' + Codigo.Text +
                       ' and b.cod_empresa = ' + CodigoEmpresa1);

     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Conta Corrente / Caixa não cadastrada', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

     if Nome is TDBText then
        TDBText(Nome).Field.AsString := FSQLQuery.FieldByname('descricao_banco').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function RetornaPagarDocumentoFn0101(Codigo : TCustomEdit): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select p.documento_pagar, p.cod_empresa_pagar, p.tipo_baixa_pagar ' +
                       ' from p_pagar p ' +
                       ' where p.documento_pagar = ' + Codigo.Text +
                       ' and p.cod_empresa_pagar = ' + CodigoEmpresa1);
     FSQLQuery.Open;

     if not FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Documento já cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
        Result := False;
        Exit;
     end;

     if FSQLQuery.FieldByName('TIPO_BAIXA_PAGAR').AsString = 'T' then
     begin
        Application.MessageBox('Documento já liquidado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
        Result := False;
        Exit;
     end;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function RetornaVendedor(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add('select p.codigo_vendedor, p.nome_vendedor ' +
                       'from p_vendedor p ' + 
                       'where p.codigo_vendedor = ' + Codigo.Text);

     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Vendedor não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

     if Nome is TDBText then
        TDBText(Nome).Field.AsString := FSQLQuery.FieldByname('nome_vendedor').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function RetornaReceber(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select r.codigo_cliente_receber, r.cod_empresa ' +
                       ' from p_receber r ' +
                       ' where r.codigo_cliente_receber = ' + Codigo.Text +
                       ' and r.cod_empresa = ' + CodigoEmpresa1);

     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Não existe movimento para este cliente', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;


function RetornaContaReceber(Codigo : TCustomEdit; Nome : TCustomLabel): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select c.codigo_conta, c.descricao_conta, c.tipo_conta ' +
                       ' from e_conta c ' +
                       ' where c.codigo_conta = ' + QuotedStr(Codigo.Text));
     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Conta não cadastrada', 'Informação', MB_OK+MB_ICONEXCLAMATION);

        if Nome is TDBText then
        TDBText(Nome).Field.AsString := '';

        Result := False;
        Exit;
     end;

     if FSQLQuery.FieldByName('tipo_conta').AsString = 'T' then
     begin
        Application.MessageBox(' Conta Título não pode ter lançamento','Informação', MB_OK+MB_ICONEXCLAMATION);        if Nome is TDBText then        TDBText(Nome).Field.AsString := '';        Result := False;        Exit;     end;

     if FSQLQuery.FieldByName('tipo_conta').AsString = 'D' then
     begin
        Application.MessageBox(' Conta não é Crédito','Informação', MB_OK+MB_ICONEXCLAMATION);
        if Nome is TDBText then        TDBText(Nome).Field.AsString := '';        Result := False;        Exit;
     end;

     if Nome is TDBText then
        TDBText(Nome).Field.AsString := FSQLQuery.FieldByname('descricao_conta').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;


function RetornaFornecedorFn15_3(Codigo, Nome : TCustomEdit): Boolean;
var
  FSQLQuery: TSQLQuery;
begin
   Result := True;

   if Codigo.Text = '' then
   begin
      MessageDlg('Informe o codigo!', mtInformation, [mbOK], 0);
      Result := False;
      Exit;
   end;

   FSQLQuery := TSQLQuery.Create(Application);
   try
     FSQLQuery.SQLConnection := DmPrincipal.DbConexao;
     FSQLQuery.Close;
     FSQLQuery.SQL.Clear;
     FSQLQuery.SQL.Add(' select c.codigo_cliente, c.tipo_cliente, c.nome_cliente ' +
                       ' from E_CLIENTE c ' +
                       ' where c.codigo_cliente = ' + QuotedStr(Codigo.Text) +
                       ' and c.tipo_cliente = ' + QuotedStr('2'));
     FSQLQuery.Open;

     if FSQLQuery.IsEmpty then
     begin
        Application.MessageBox('Fornecedor não cadastrado', 'Informação', MB_OK+MB_ICONEXCLAMATION);
        Result := False;
        Exit;
     end;

     if Nome is TDBEdit then
        TDBEdit(Nome).Field.AsString := FSQLQuery.FieldByname('nome_cliente').AsString;

   finally
     FreeAndNil(FSQLQuery);
   end;
end;

function PontoDecimal(Arg: Double): String;
var Var1, Ret1: String;
  I: Integer;
begin
   Var1 := '';
   Ret1 := '';

   if Arg = null then
   begin
      Result := '0';
      Exit;
   end;

   Var1 := FloatToStr(Arg);

   for I := 1 to Length(Var1) do    // Iterate
   begin
      if Var1[I] = ',' then
         Ret1 := Ret1 + '.'
      else
         Ret1 := Ret1 + Var1[I];
   end;    // for

   Result := Ret1;
end;

Function FirstDayOfMonth (Data : TDateTime; lSabDom : Boolean = False) : TDateTime; // retorna o ultima dia do mes
var Ano, Mes, Dia : word;
    DiaDaSemana : Integer;
begin
   DecodeDate (Data, Ano, Mes, Dia);
   Dia := 1;

   if lSabDom Then // se lSabDom = True, entao retorna o primeiro dia util do mes
   begin
      DiaDaSemana := DayOfWeek (Data);

      if DiaDaSemana = 1 Then
         Dia := 2
      else
         if DiaDaSemana = 7 Then

      Dia := 3;
   end;

   FirstDayOfMonth := EncodeDate (Ano, Mes, Dia);
end;

Function LastDayOfMonth (Data : TDateTime; lSabDom : Boolean = False) : TDateTime; // retorna o ultimo dia do mes
var Ano, Mes, Dia : word;
    AuxData : TDateTime;
    DiaDaSemana : Integer;
begin
   AuxData := FirstDayOfMonth(IncMonth(Data), False) - 1;

   if lSabDom Then // se lSabDom = True, entao retorna o ultimo dia util do mes
   begin
      DecodeDate (Auxdata, Ano, Mes, Dia);
      DiaDaSemana := DayOfWeek (AuxData);

      if DiaDaSemana = 1 Then
         Dia := Dia - 2
      else
         if DiaDaSemana = 7 Then

      Dec (Dia);
      AuxData := EnCodeDate (Ano, Mes, Dia);
   end;

   LastDayOfMonth := AuxData;
end;

end.
