{ Projeto     : TEFDelphi
  Unit        : unFuncoesTEF
  Versão      : 4.0.0
  Função      : Agrega todas as funções do TEF
  Autor       : Mariano Rosa em 11/07/2003
  Alterações  : Mariano Rosa em 17/10/2003 - Inclusão do Tecban
}
unit unFuncoesTEF;

interface

uses
  Windows,
  SysUtils,
  Controls,
  Forms,
  {$IFDEF VER130}  // Delphi 5
    FileCtrl,
  {$ELSE}
    IdGlobal,
    DateUtils,
  {$ENDIF}
  Dialogs,
  unMensagem,
  unImpressao;

type
  // ---< Registro TEFParam >---
  regTEFParam = record
                NSU: integer;
                end;

  // ---< Procedures usadas internamente >---
  procedure TEFVerificaArquivosPendentes;
//  procedure TEFVerificaTEFTmp(sExibeErro: string);  // rafael - 02/03/07
  procedure TEFVerificaTEFTmp(sExibeErro:string = 'N');  // rafael - 02/03/07
  procedure TEFVerificaTEFParam;
  procedure TEFProximoNSU;
  procedure TEFCriaArquivoREQIntPos001;
  procedure TEFVerificaIntPosSts (sOperacao: string; iNSU: integer);
  procedure TEFVerificaIntPos001 (sOperacao: string; iNSU: integer);
  procedure TEFGravaOperacao (sOperacao : string);
  procedure TEFImprimeTransacao;

  // ---< Procedures usadas pelo sistema de automação >---
  procedure TEFLimpaVariaveis;
  procedure TEFConfirmaOperacao;
  procedure TEFNaoConfirmaOperacao;
  procedure TEFVerificaOperacaoPendente;
  procedure TEFVerificaGerenciadorAtivo;
  procedure TEFModoAdministrativo;
  procedure TEFPedidoAutorizacaoCartao;
  procedure TEFPedidoAutorizacaoCheque;
  procedure TEFVendaCartao;
  procedure TEFVendaCheque;
  procedure TEFCancelaTransacao;
  procedure TEFFechaOperacao;
//  procedure TEFMensagem (sLinha1,sLinha2,sLinha3,sLinha4: string);
  procedure TEFMensagem (sLinha1,sLinha2,sLinha3,sLinha4: string; aBotaoOk: Boolean = False);  // rafael - 12/03/07

var
  // ---< Variáveis Gerais >---
  iTEFTempoEspera    : integer = 7; // Tempo em seg. para esperar resposta do GP
  iTEFTempoMensagem  : integer = 5; // Tempo em seg. para exibição de mensagens
  iTEFProximoNSU     : integer = 0; // Nº sequencial único da transação gerado pelo TEFDelphi
  iTEFTecban         : integer = 0; // 0 = Usar o GP das redes - 1 = Usar o GP Tecban
  sTEFPath           : string  = 'C:\TEF_DIAL\';
  sTEFKoneKPath      : string  = 'C:\MsTEF\';
  sTEFRetorno        : string;

  // ---< Variáveis da transação >---
  sTEFDoctoVinculado : string;    // 002-000  DOCUMENTO FISCAL VINCULADO
  sTEFValorTotal     : string;    // 003-000	VALOR TOTAL
  sTEFMoeda          : string;    // 004-000	MOEDA - "0" = Real / "1" = Dollar
  sTEFCMC7           : string;    // 005-000	CMC-7
  sTEFTipoDePessoa   : string;    // 006-000	TIPO DE PESSOA - "F"ísica / "J"uridica
  sTEFDoctoPessoa    : string;    // 007-000	DOCUMENTO DA PESSOA
  sTEFDataDoCheque   : string;    // 008-000	DATA DO CHEQUE
  sTEFStatusTransac  : string;    // 009-000	STATUS DA TRANSAÇÃO
  sTEFNomeDaRede     : string;    // 010-000	NOME DA REDE
  sTEFTipoTransac    : string;    // 011-000	TIPO DA TRANSAÇÃO
  sTEFNSUTransacao   : string;    // 012-000	NÚMERO DA TRANSAÇÃO - NSU
  sTEFCodAutorizacao : string;    // 013-000	CÓDIGO DE AUTORIZAÇÃO DA TRANSAÇÃO
  sTEFNumeroLote     : string;    // 014-000	NÚMERO DO LOTE DA TRANSAÇÃO
  sTEFTsTransacaoH   : string;    // 015-000	TIMESTAMP DA TRANSAÇÃO - HOST
  sTEFTsTransacaoL   : string;    // 016-000	TIMESTAMP DA TRANSAÇÃO - LOCAL
  sTEFTipoParcela    : string;    // 017-000	TIPO PARCELAMENTO
  sTEFDataTransacao  : string;    // 022-000	DATA DA TRANSAÇÃO - COMPROVANTE
  sTEFHoraTransacao  : string;    // 023-000	HORA DA TRANSAÇÃO - COMPROVANTE
  sTEFDataPreDatado  : string;    // 024-000	DATA PRÉ-DATADO
  sTEFNumTransCanc   : string;    // 025-000	NÚMERO DA TRANSAÇÃO CANCELADA - NSU
  sTEFTsTransCanc    : string;    // 026-000	TIMESTAMP DA TRANSAÇÃO CANCELADA
  sTEFFinalizacao    : string;    // 027-000	FINALIZAÇÃO
  sTEFMensOperador   : string;    // 030-000	TEXTO ESPECIAL OPERADOR
  sTEFMensCliente    : string;    // 031-000	TEXTO ESPECIAL CLIENTE
  sTEFAutenticacao   : string;    // 032-000	AUTENTICAÇÃO
  sTEFBanco          : string;    // 033-000	BANCO
  sTEFAgencia        : string;    // 034-000	AGÊNCIA
  sTEFAgenciaDC      : string;    // 035-000	AGÊNCIA - DC
  sTEFCtaCorrente    : string;    // 036-000	CONTA CORRENTE
  sTEFCtaCorrenteDC  : string;    // 037-000	CONTA CORRENTE - DC
  sTEFNumCheque      : string;    // 038-000	NÚMERO DO CHEQUE
  sTEFNumChequeDC    : string;    // 039-000	NÚMERO DO CHEQUE  - DC
  sTEFAdministradora : string;    // 040-000	NOME DA ADMINISTRADORA

implementation

uses uBandeiras, uDaruma;

var
  // ---< Arquivo TEFParam >---
  TEFParam : file of regTEFParam;
  Param : regTEFParam;
  NomeParam : string;

// ---< Retorna os caracteres a direita a partir da posição iPos >---
function RightFromPos (sString: string; iPos: integer) : string;
begin
  result := Trim(Copy(sString,iPos,(Length(sString)-iPos+1)));
end;  {RightFromPos}

// ---< Remove as aspas iniciais e finais da string >---
function RemoveAspas(sString: String): String;
begin
  Result := Trim(sString);
  if IsDelimiter('"', Result, 1) then
    Delete(Result,1,1);
  if IsDelimiter('"', Result, Length(Result)) then
    Delete(Result,Length(Result),1);
end; {RemoveAspas}

// ---< Exibe uma mensagem por iTempo segundos sem intervenção do usuário >---
procedure TEFMensagem (sLinha1,sLinha2,sLinha3,sLinha4: string; aBotaoOk: Boolean = False);
var
  fMensagem : TfrmMensagem;
begin
  fMensagem := TfrmMensagem.Create(Application);

//  fMensagem.Show;  // rafael - 13/03/07

  fMensagem.lblLinha1.Caption := sLinha1;
  fMensagem.lblLinha2.Caption := sLinha2;
  fMensagem.lblLinha3.Caption := sLinha3;
  fMensagem.lblLinha4.Caption := sLinha4;
//  fMensagem.Refresh;  // rafael - 13/03/07 

  if aBotaoOk then // rafael - 12/03/07
  begin
     fMensagem.Height := 172;
     fMensagem.Tag    := 1;
     fMensagem.btnOk.Enabled := True;
     fMensagem.ShowModal // rafael - 12/03/07
  end
  else  // rafael - 12/03/07
  begin // rafael - 13/03/07
     fMensagem.Show; // rafael - 13/03/07
     fMensagem.Refresh; // rafael - 13/03/07
     Sleep(iTEFTempoMensagem * 1000); // rafael - 12/03/07
  end; // rafael - 13/03/07

  fMensagem.Free;
end;  {TEFMensagem}

// ---< Retorna os segundos da hora >---
function SegundosDaHora(const DateTime: TDateTime): Integer;
var
   H, M, S, MS: Word;
begin
   DecodeTime(DateTime, H, M, S, MS);
   Result := (H * 3600) + (M * 60) + S;
end;

// ---< Verifica se existe algum arquivo temporário indevidamente >---
procedure TEFVerificaArquivosPendentes;
var
  aArquivo : TextFile;
begin

  sTEFRetorno := '0';

  try
    if FileExists(sTEFPath + 'REQ\IntPos.Tmp') then
      DeleteFile(sTEFPath + 'REQ\IntPos.Tmp');

    if FileExists(sTEFPath + 'REQ\IntPos.001') then
      DeleteFile(sTEFPath + 'REQ\IntPos.001');

    if FileExists(sTEFPath + 'RESP\IntPos.001') then // .::. Jeter 28/08/2005
      DeleteFile(sTEFPath + 'RESP\IntPos.001');      // .::. Jeter 28/08/2005

    if FileExists(sTEFPath + 'RESP\MSTef.001') then // .::. Jeter 28/08/2005
      DeleteFile(sTEFPath + 'RESP\MSTef.001');      // .::. Jeter 28/08/2005

    if FileExists(sTEFPath + 'RESP\IntPos.Sts') then
      DeleteFile(sTEFPath + 'RESP\IntPos.Sts');

    if FileExists(sTEFKoneKPath + 'TEF.Imp') then
      DeleteFile(sTEFKoneKPath + 'TEF.Imp');

    if FileExists(sTEFKoneKPath + 'TEFParc.Txt') then
      DeleteFile(sTEFKoneKPath + 'TEFParc.Txt');

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {VerificaArquivosPendentes}

// ---< Limpa as variáveis do TEF >---
procedure TEFLimpaVariaveis;
begin
  sTEFDoctoVinculado := '';
  sTEFValorTotal     := '';
  sTEFMoeda          := '';
  sTEFCMC7           := '';
  sTEFTipoDePessoa   := '';
  sTEFDoctoPessoa    := '';
  sTEFDataDoCheque   := '';
  sTEFStatusTransac  := '';
  sTEFNomeDaRede     := '';
  sTEFTipoTransac    := '';
  sTEFNSUTransacao   := '';
  sTEFCodAutorizacao := '';
  sTEFNumeroLote     := '';
  sTEFTsTransacaoH   := '';
  sTEFTsTransacaoL   := '';
  sTEFTipoParcela    := '';
  sTEFDataTransacao  := '';
  sTEFHoraTransacao  := '';
  sTEFDataPreDatado  := '';
  sTEFNumTransCanc   := '';
  sTEFTsTransCanc    := '';
  sTEFFinalizacao    := '';
  sTEFMensOperador   := '';
  sTEFMensCliente    := '';
  sTEFAutenticacao   := '';
  sTEFBanco          := '';
  sTEFAgencia        := '';
  sTEFAgenciaDC      := '';
  sTEFCtaCorrente    := '';
  sTEFCtaCorrenteDC  := '';
  sTEFNumCheque      := '';
  sTEFNumChequeDC    := '';
  sTEFAdministradora := '';
  if iTEFTecban = 0 then
    sTEFPath := 'C:\TEF_DIAL\'
  else
    sTEFPath := 'C:\TEF_DISC\';
end;  {TEFLimpaVariaveis}

// ---< Verifica e abre arquivo TEF.tmp >---
// sExibeErro : 'S" = exibe mensagem, 'N' = Não exibe
//procedure TEFVerificaTEFTmp(sExibeErro:string); // rafael - 02/03/07
procedure TEFVerificaTEFTmp(sExibeErro:string = 'N'); // rafael - 02/03/07
var
  aIntPos001 : TextFile;
  sNomeArquivo : string;
begin

  sTEFRetorno := '0';

  Try
    sNomeArquivo := sTEFPath + 'RESP\IntPos.001';

    if FileExists(sNomeArquivo) then
      begin
        AssignFile(aIntPos001,sNomeArquivo);
        Reset(aIntPos001);
        if EOF(aIntPos001) then
          sTEFRetorno := '1';
        Close(aIntPos001);
      end
    else
      sTEFRetorno := '1';

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

  if (sTEFRetorno <> '0') and (sExibeErro = 'S') then
//    ShowMessage('Não existe nenhuma operação pendente');  // rafael - 02/03/07

end;  {TEFVerificaTEFTmp}

// ---< Verifica se existe o arquivo TEFParam e cria se necessário >---
procedure TEFVerificaTEFParam;
begin

  sTEFRetorno := '0';
  NomeParam :=  sTEFKoneKPath + 'TEFDelphi.dat';

  try
    Assign(TEFParam,NomeParam);
    // ---> Se arquivo não existe, cria
    if not FileExists(NomeParam) then
      begin
        Rewrite(TEFParam);
        Param.NSU := 0;
        Write(TEFParam,Param);
        Close(TEFParam);
      end;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {VerificaTEFParam}

// ---< Retorna o próximo NSU para arquivos de mensagens >---
procedure TEFProximoNSU;
begin

  NomeParam :=  sTEFKoneKPath + 'TEFDelphi.dat';

  try
    TEFVerificaTEFParam;
    if sTEFRetorno = '0' then
      begin
        Assign(TEFParam,NomeParam);
        Reset(TEFParam);
        Read(TEFParam,Param);
        Inc(Param.NSU);
        Seek(TEFParam,0);
        Write(TEFParam,Param);
        Close(TEFParam);
        iTEFProximoNSU := Param.NSU;
      end
    else
      sTEFRetorno := '1';

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFProximoNSU}

// ---< Cria o arquivo IntPos.tmp para receber comandos >---
procedure TEFCriaArquivoREQIntPos001;
var
  IntPosTmp : TextFile;
begin

  sTEFRetorno := '0';

  try
    AssignFile(IntPosTmp,sTEFPath + 'REQ\IntPos.tmp');
    Rewrite(IntPosTmp);
    CloseFile(IntPosTmp);

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFCriaArquivoREQIntPos001}

// ---< Verifica se alguma operação ficou pendente (queda do sistema) >---
procedure TEFVerificaOperacaoPendente;
var
  aArquivo : TextFile;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaArquivosPendentes;
    if sTEFRetorno = '0' then
      begin
        TEFVerificaTEFTmp('N');
        if sTEFRetorno = '0' then
          TEFNaoConfirmaOperacao;
      end;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVerificaOperacaoPendente}

// ---< Verifica a integridade do arquivo resposta IntPos.Sts >---
procedure TEFVerificaIntPosSts (sOperacao:string; iNSU:integer);
var
  IntPosSts : TextFile;
  sNomeArquivo, sLinha : string;
  iInicio, iFim, iTempo : integer;

begin

  sTEFRetorno := '0';

  try
    Screen.Cursor := crHourGlass;
    sNomeArquivo := sTEFPath + 'RESP\IntPos.Sts';
    AssignFile(IntPosSts,sNomeArquivo);
    {$IFDEF VER130}  // Delphi 5
      iInicio := SegundosDaHora(Now);
    {$ELSE}
      iInicio := SecondOf(Now());
    {$ENDIF}

    repeat
      {$IFDEF VER130}  // Delphi 5
        iFim := SegundosDaHora(Now);
      {$ELSE}
        iFim := SecondOf(Now());
      {$ENDIF}
    until (FileExists(sNomeArquivo) or (iFim - iInicio > iTEFTempoEspera));

    Sleep(1000); // rafael - 27/12/06

    if FileExists(sNomeArquivo) then
      begin
        Reset(IntPosSts);
        if not EOF(IntPosSts) then
          begin
            ReadLn(IntPosSts, sLinha);
            if Trim(sLinha) <> '000-000 = ' + sOperacao then
              sTEFRetorno := '1';
            ReadLn(IntPosSts, sLinha);
            if Copy(Trim(sLinha),1,7) = '001-000'then
              if StrToInt(RightFromPos(sLinha,11)) <> iNSU then
                sTEFRetorno := '1';
          end
        else
          sTEFRetorno := '1';
        CloseFile(IntPosSts);
        DeleteFile(sNomeArquivo);
      end
    else
      sTEFRetorno := '1';

    Screen.Cursor := crDefault;
    if sTEFRetorno <> '0' then
       TefMensagem('','Não houve resposta do Gerenciador Padrão','','', True); // rafael - 12/03/07
//      ShowMessage('Não houve resposta do Gerenciador Padrão');  // rafael - 12/03/07

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVerificaIntPosSts}

// ---< Verifica a integridade do arquivo retorno IntPos.001 >---
procedure TEFVerificaIntPos001 (sOperacao: string; iNSU: integer);
var
  bRet : boolean;
  IntPos001, TEFParc : TextFile;
  sNomeArquivo, sLinha, sDoctoRet, sValorRet, sLinhas, sParcela : string;
  sRedeRet, sVencParcela, sValorParcela, sNSUParcela : string;
  iParcelas, i : integer;
begin
  sTEFRetorno := '0';

  try
    Screen.Cursor := crHourGlass;
    sDoctoRet := '';
    sValorRet := '';
    sRedeRet := '';
    sNomeArquivo := sTEFPath + 'RESP\IntPos.001';

    repeat
    until FileExists(sNomeArquivo);
    AssignFile(IntPos001,sNomeArquivo);
    Reset(IntPos001);

    if not EOF(IntPos001) then
      begin
        ReadLn(IntPos001, sLinha);
        if Trim(sLinha) <> '000-000 = ' + sOperacao then
          sTEFRetorno := '1';
        ReadLn(IntPos001, sLinha);
        if Copy(Trim(sLinha),1,7) = '001-000' then
          if StrToInt(RightFromPos(sLinha,11)) <> iNSU then
            sTEFRetorno := '1';

        if sTEFRetorno = '0' then
          repeat
            ReadLn(IntPos001, sLinha);
            if Copy(Trim(sLinha),1,7) = '002-000' then
              sTEFDoctoVinculado := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '003-000' then
              sTEFValorTotal := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '004-000' then
              sTEFMoeda := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '005-000' then
              sTEFCMC7 := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '006-000' then
              sTEFTipoDePessoa := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '007-000' then
              sTEFDoctoPessoa := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '008-000' then
              sTEFDataDoCheque := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '009-000' then
              sTEFStatusTransac := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '010-000' then
              sTEFNomeDaRede := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '011-000' then
              sTEFTipoTransac := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '012-000' then
              sTEFNSUTransacao := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '013-000' then
              sTEFCodAutorizacao := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '014-000' then
              sTEFNumeroLote := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '015-000' then
              sTEFTsTransacaoH := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '016-000' then
              sTEFTsTransacaoL := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '017-000' then
              sTEFTipoParcela := RightFromPos(sLinha,11);

            // ---> Se existe parcelamento
            if Copy(Trim(sLinha),1,7) = '018-000' then
              begin
                iParcelas := StrToInt(RightFromPos(sLinha,11));
                AssignFile(TEFParc,sTEFKoneKPath + 'TEFParc.txt');
                Rewrite(TEFParc);
                for i := 1 to iParcelas do
                  begin
                    if i < 10 then
                      sParcela := '0' + IntToStr(i)
                    else
                      sParcela := IntToStr(i);
                    sVencParcela := '';
                    sValorParcela := '';
                    sNSUParcela := '';
                    ReadLn(IntPos001, sLinha);
                    if Copy(Trim(sLinha),1,3) = '019' then
                      sVencParcela := RightFromPos(sLinha,11);
                    ReadLn(IntPos001, sLinha);
                    if Copy(Trim(sLinha),1,3) = '020' then
                      sValorParcela := RightFromPos(sLinha,11);
                    ReadLn(IntPos001, sLinha);
                    if Copy(Trim(sLinha),1,3) = '021' then
                      sNSUParcela := RightFromPos(sLinha,11);
                    while Length(sValorParcela) < 12 do
                      sValorParcela := sValorParcela + ' ';
                    while Length(sNSUParcela) < 12 do
                      sNSUParcela := sNSUParcela + ' ';
                    if (sParcela <> '') and
                       (sVencParcela <> '') and
                       (sValorParcela <> '') and
                       (sNSUParcela <> '') then
                       WriteLn(TEFParc,sParcela + sVencParcela + sValorParcela + sNSUParcela);
                  end;
                Close(TEFParc);
              end;

            if Copy(Trim(sLinha),1,7) = '022-000' then
              sTEFDataTransacao := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '023-000' then
              sTEFHoraTransacao := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '024-000' then
              sTEFDataPreDatado := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '025-000' then
              sTEFNumTransCanc := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '026-000' then
              sTEFTsTransCanc := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '027-000' then
              sTEFFinalizacao := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '028-000' then
              sLinhas := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '030-000' then
              sTEFMensOperador := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '031-000' then
              sTEFMensCliente := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '032-000' then
              sTEFAutenticacao := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '033-000' then
              sTEFBanco := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '034-000' then
              sTEFAgencia := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '035-000' then
              sTEFAgenciaDC := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '036-000' then
              sTEFCtaCorrente := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '037-000' then
              sTEFCtaCorrenteDC := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '038-000' then
              sTEFNumCheque := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '039-000' then
              sTEFNumChequeDC := RightFromPos(sLinha,11);
            if Copy(Trim(sLinha),1,7) = '040-000' then
              sTEFAdministradora := RightFromPos(sLinha,11);
          until EOF(IntPos001);
      end
    else
      sTEFRetorno := '1';

    CloseFile(IntPos001);

    Screen.Cursor := crDefault;

    if Trim(sTEFMensOperador) <> '' then
      begin
        if sTEFDoctoVinculado <> '' then
          sDoctoRet := 'Docto No: '+ Trim(sTEFDoctoVinculado);
        if sTEFValorTotal <> '' then
//          sValorRet := 'Valor: '+ FloatToStr(StrToInt(sTEFValorTotal)/100);
          sValorRet := 'Valor: '+ FloatToStr(StrToFloat(sTEFValorTotal)/100); // rafael - 28/12/06
        if sTEFNomeDaRede <> '' then
          sRedeRet := 'Rede: '+ sTEFNomeDaRede;
        if sTEFStatusTransac <> '0' then
          sTEFMensOperador := sTEFMensOperador + ' - Status ' + sTEFStatusTransac;
        if (sTEFStatusTransac <> '0') or (sLinhas = '0') then
            TEFMensagem(sDoctoRet, sValorRet, sRedeRet, sTEFMensOperador, True)  // rafael - 12/03/07
//          ShowMessage(sDoctoRet + #13#10 +  // rafael - 12/03/07
//                      sValorRet + #13#10 +  // rafael - 12/03/07
//                      sRedeRet + #13#10 +   // rafael - 12/03/07
//                      sTEFMensOperador)     // rafael - 12/03/07
        else
          TEFMensagem(sRedeRet,sDoctoRet,sValorRet,sTEFMensOperador);
      end;

    if sTEFStatusTransac <> '0' then
      begin
        sTEFRetorno := '1';
        DeleteFile(sNomeArquivo);
      end;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVerificaIntPos001}

// ---< Grava a operação no arquivo IntPos.001 >---
procedure TEFGravaOperacao (sOperacao : string);
var
  bRet : boolean;
  IntPosTmp, IntPos001 : TextFile;
  sLinha : string;
begin
  sTEFRetorno := '0';

  try
    TEFCriaArquivoREQIntPos001;

    if sTEFRetorno = '0' then
      begin
        // ---< Verifica se existe operação pendente >---
        if (sOperacao = 'CNF') or (sOperacao = 'NCN') then
          begin
            TEFVerificaTEFTmp('S');
            if sTEFRetorno = '0' then
              begin
                AssignFile(IntPos001,sTEFPath + 'RESP\IntPos.001');
                Reset(IntPos001);
                Repeat
                  ReadLn(IntPos001,sLinha);
                  if Copy(Trim(sLinha),1,7) = '002-000' then
                    sTEFDoctoVinculado := RightFromPos(sLinha,11);
                  if Copy(Trim(sLinha),1,7) = '010-000' then
                    sTEFNomeDaRede := RightFromPos(sLinha,11);
                  if Copy(Trim(sLinha),1,7) = '012-000' then
                    sTEFNSUTransacao := RightFromPos(sLinha,11);
                  if Copy(Trim(sLinha),1,7) = '027-000' then
                    sTEFFinalizacao := RightFromPos(sLinha,11);
                until EOF(IntPos001);

                Close(IntPos001);
                DeleteFile(sTEFPath + 'RESP\IntPos.001');
              end;
          end;

        AssignFile(IntPosTmp,sTEFPath + 'REQ\IntPos.tmp');
        Append(IntPosTmp);
        TEFProximoNSU();

        WriteLn(IntPosTmp,('000-000 = ' + sOperacao));
        WriteLn(IntPosTmp,('001-000 = ' + IntToStr(iTEFProximoNSU)));

        if (sOperacao = 'CHQ') or
           (sOperacao = 'CRT') or
           (sOperacao = 'CNC') or
           (sOperacao = 'CNF') or
           (sOperacao = 'NCN') then
           if Trim(sTEFDoctoVinculado) <> '' then
             WriteLn(IntPosTmp,('002-000 = ' + sTEFDoctoVinculado));

        if (sOperacao = 'CHQ') or
           (sOperacao = 'CRT') or
           (sOperacao = 'CNC') then
          if Trim(sTEFValorTotal) <> '' then
            WriteLn(IntPosTmp,('003-000 = ' + sTEFValorTotal));

        if (sOperacao = 'CRT') then
          if Trim(sTEFMoeda) <> '' then
            WriteLn(IntPosTmp,('004-000 = ' + sTEFMoeda));

        if (sOperacao = 'CHQ') or
           (sOperacao = 'CNC') then
          begin
            if Trim(sTEFCMC7) <> '' then
              WriteLn(IntPosTmp,('005-000 = ' + sTEFCMC7));
            if Trim(sTEFTipoDePessoa) <> '' then
              WriteLn(IntPosTmp,('006-000 = ' + sTEFTipoDePessoa));
            if Trim(sTEFDoctoPessoa) <> '' then
              WriteLn(IntPosTmp,('007-000 = ' + sTEFDoctoPessoa));
            if Trim(sTEFDataDoCheque) <> '' then
              WriteLn(IntPosTmp,('008-000 = ' + sTEFDataDoCheque));
          end;

        if (sOperacao = 'CNC') or
           (sOperacao = 'CNF') or
           (sOperacao = 'NCN') then
          begin
            if Trim(sTEFNomeDaRede) <> '' then
              WriteLn(IntPosTmp,('010-000 = ' + sTEFNomeDaRede));
            if Trim(sTEFNSUTransacao) <> '' then
              WriteLn(IntPosTmp,('012-000 = ' + sTEFNSUTransacao));
          end;

        if (sOperacao = 'CNC') then
          begin
            if Trim(sTEFDataTransacao) <> '' then
              WriteLn(IntPosTmp,('022-000 = ' + sTEFDataTransacao));
            if Trim(sTEFHoraTransacao) <> '' then
              WriteLn(IntPosTmp,('023-000 = ' + sTEFHoraTransacao));
          end;

        if (sOperacao = 'CNF') or
           (sOperacao = 'NCN') then
          if Trim(sTEFFinalizacao) <> '' then
            WriteLn(IntPosTmp,('027-000 = ' + sTEFFinalizacao));

        if (sOperacao = 'CHQ') or
           (sOperacao = 'CNC') then
          begin
            if Trim(sTEFBanco) <> '' then
              WriteLn(IntPosTmp,('033-000 = ' + sTEFBanco));
            if Trim(sTEFAgencia) <> '' then
              WriteLn(IntPosTmp,('034-000 = ' + sTEFAgencia));
            if Trim(sTEFAgenciaDC) <> '' then
              WriteLn(IntPosTmp,('035-000 = ' + sTEFAgenciaDC));
            if Trim(sTEFCtaCorrente) <> '' then
              WriteLn(IntPosTmp,('036-000 = ' + sTEFCtaCorrente));
            if Trim(sTEFCtaCorrenteDC) <> '' then
              WriteLn(IntPosTmp,('037-000 = ' + sTEFCtaCorrenteDC));
            if Trim(sTEFNumCheque) <> '' then
              WriteLn(IntPosTmp,('038-000 = ' + sTEFNumCheque));
            if Trim(sTEFNumChequeDC) <> '' then
              WriteLn(IntPosTmp,('039-000 = ' + sTEFNumChequeDC));
          end;

        WriteLn(IntPosTmp,'999-999 = 0');
        Close(IntPosTmp);
        {$IFDEF VER130}  // Delphi 5
           bRet := CopyFile(pchar(sTEFPath + 'REQ\IntPos.tmp'),pChar(sTEFPath + 'REQ\IntPos.001'),true);
       {$ELSE}
           bRet := CopyFileTo(sTEFPath + 'REQ\IntPos.tmp',sTEFPath + 'REQ\IntPos.001');
        {$ENDIF}
        DeleteFile(sTEFPath + 'REQ\IntPos.tmp');

        if sOperacao = 'CRT' then
        begin
           if iTEFTecban = 0 then
              Daruma_TEF_SetFocus('TEF DISCADO - Versão 3.0');
        end;

        if (sOperacao  = 'CRT') or (sOperacao  = 'CNC') or (sOperacao  = 'ADM')then  // rafael - 27/12/06
        begin
           while True do            // rafael - 10/01/07
           begin                    // rafael - 10/01/07
   // estas 2 linhas comentadas abaixo tambem dao certo mas fiquei receoso que durante a homologacao esta mensagem nao fosse aceita - rafael - 10/01/07
   //           if Application.MessageBox('A transação foi concluida?','Confirmação',MB_ICONQUESTION+MB_YESNO+MB_DEFBUTTON2) = mrYes then // rafael - 10/01/07
   //              Break;           // rafael 10/01/07
               if FileExists(sTefPath + 'Resp\IntPos.001') then // rafael - 10/01/07
                  Break;             // rafael - 10/01/07

           end;    // while  // rafael - 10/01/07
        end;

        // ---> Verifica se houve resposta do GP
        TEFVerificaIntPosSts(sOperacao,iTEFProximoNSU);

// comandos para simular a aprovacao da venda //////////////////////////////////////////////////////////
{                                                                                                     //
if (sOperacao  = 'CRT') then                                                                          //
begin                                                                                                 //
   DeleteFile('C:\tef_dial\resp\intpos.001');                                                         //
   CopyFileTo('C:\tef_dial\resp\intpos_venda_autorizada_visanet.001','C:\tef_dial\resp\intpos.001');  //
   iTEFProximoNSU := 44;                                                                              //
   ShowMessage('Ok');                                                                                 //
end;                                                                                                  //
}                                                                                                     //
////////////////////////////////////////////////////////////////////////////////////////////////////////

        if (FileExists(sTefPath + 'Resp\MSTef.001')) and (FileExists(sTefPath + 'Resp\IntPos.001')) then  // rafael - 10/05/07
           DeleteFile(sTefPath + 'Resp\MSTef.001');  // rafael - 10/05/07

        if FileExists(sTefPath + 'Resp\IntPos.001') then  // rafael - 10/05/07
        begin
           CopyFileTo(sTefPath + 'Resp\IntPos.001', sTefPath + 'Resp\MSTef.001');  // rafael - 10/05/07
           DeleteFile(sTefPath + 'req\IntPos.001'); // .::. Jeter 05/09/2007
        end;
           //apagar aqui o intpos.001
        // ---> Verifica arquivo de retorno do GP
        if (sTEFRetorno = '0') and
           ((sOperacao = 'ADM') or
            (sOperacao = 'CHQ') or
            (sOperacao = 'CRT') or
            (sOperacao = 'CNC')) then
            TEFVerificaIntPos001(sOperacao,iTEFProximoNSU);

      end; // sTEFRetorno = '0'

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFGravaOperacao}

// ---< Imprime a transação >---
procedure TEFImprimeTransacao;
var
  fImpressao : TfrmImpressao;
  iRet : integer;
begin

  sTEFRetorno := '0';

  try
    fImpressao := TfrmImpressao.Create(Application);
    fImpressao.Show;
    fImpressao.memEditor.Lines.LoadFromFile(sTEFKoneKPath + 'TEF.IMP');
    fImpressao.Refresh;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFImprimeTransacao}

// ---< Executa a confirmação da transação por meio de cartão >---
procedure TEFConfirmaOperacao;
var
  IntPos001, TEFImp : TextFile;
  iLinhas : integer;
  sLinha : string;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaTEFTmp('S');

    if sTEFRetorno = '0' then
      begin
        iLinhas := 0;
//        AssignFile(IntPos001,sTEFPath + 'RESP\IntPos.001');  // rafael - 10/05/07
        AssignFile(IntPos001,sTEFPath + 'RESP\MSTef.001');  // rafael - 10/05/07
        Reset(IntPos001);
        AssignFile(TEFImp,sTEFKoneKPath + 'TEF.Imp');
        Rewrite(TEFImp);
        Repeat
          ReadLn(IntPos001,sLinha);
          if Copy(Trim(sLinha),1,3) = '029' then
            begin
              WriteLn(TEFImp,RemoveAspas(RightFromPos(sLinha,11)));
              Inc(iLinhas);
            end;
        until EOF(IntPos001);
        Close(IntPos001);
        Close(TEFImp);
        if iLinhas = 0 then
          DeleteFile(sTEFKoneKPath + 'TEF.Imp')
        else
// ---> Envia o comprovante para o vídeo. Remover esta linha na versão final
//          TEFImprimeTransacao;  // rafael - 30/12/06   
      end;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFConfirmaOperacao}

// ---< Executa a não confirmação da transação por meio de cartão >---
procedure TEFNaoConfirmaOperacao;
var
  IntPos001 : TextFile;
  sLinha, sDocto, sValor, sRede, sTextoValor : string;
begin

  sTEFRetorno := '0';

  try

    TEFVerificaTEFTmp('S');

    if sTEFRetorno = '0' then
      begin
        AssignFile(IntPos001,sTEFPath + 'RESP\IntPos.001');
        Reset(IntPos001);
        Repeat
          ReadLn(IntPos001,sLinha);
          if Copy(Trim(sLinha),1,7) = '002-000' then
            sDocto := RightFromPos(sLinha,11);
          if Copy(Trim(sLinha),1,7) = '003-000' then
            sValor := RightFromPos(sLinha,11);
          if Copy(Trim(sLinha),1,7) = '010-000' then
            sRede := RightFromPos(sLinha,11);
        until EOF(IntPos001);
        Close(IntPos001);
        if sValor <> '' then
          sTextoValor := 'Valor:' + FloatToStr(StrToFloat(sValor)/100)  // rafael - 29/12/06
        else
          sTextoValor := '';
        TEFMensagem('Cancelada a transação:',('Doc No: '+Trim(sDocto)),('Rede: ' + Trim(sRede)),sTextoValor);
        TEFGravaOperacao('NCN');
      end

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFNaoConfirmaOperacao}

// ---< Verifica se o Gerenciador Padrão está ativo >---
procedure TEFVerificaGerenciadorAtivo;
var
  Ativo001 : TextFile;
  iRet : integer;
  sLinha : string;
begin
  sTEFRetorno := '0';
  //Exit;  // rafael - 08/03/07 - retirar esta linha quando for homologado
  try
    Screen.Cursor := crHourGlass;

    if not DirectoryExists(sTEFKoneKPath) then
      CreateDir(sTEFKoneKPath);

    TEFGravaOperacao('ATV');

    //if sTEFRetorno <> '0' then .::. Jeter 29/08/2007
    if not FileExists(sTEFPath + 'RESP\ATIVO.001') then // .::. Jeter 29/08/2007
    begin
       //Application.MessageBox('Gerenciador Padrão parece não estar ativo' ,'Atenção',MB_ICONWARNING); // rafael - 28/02/07
       //sTEFRetorno := '0';                                                                             // rafael - 28/02/07

// o bloco abaixo deve ser descomentado, e o bloco acima comentado,  quando for fazer a homologação - rafael - 28/02/07
//{
       try
          ShowMessage('Gerenciador Padrão não está ativo e será ativado automaticamente');
          if iTEFTecban = 0 then
            iRet := WinExec(pChar('C:\TEF_DIAL\TEF_DIAL.EXE'),SW_HIDE)
          else
            iRet := WinExec(pChar('C:\TEF_DISC\TEF_DISC.EXE'),SW_HIDE);
          sTEFRetorno := '0';
       except
          on E: Exception do
             begin
                ShowMessage('Gerenciador Padrão NÃO foi ativado...');
                sTEFRetorno := '1';
                Exit;
             end;
       end;
//}
   end;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

  Screen.Cursor := crDefault;

end;  {TEFVerificaGerenciadorAtivo}

// ---< Executa o Módulo Administrativo do GP >---
procedure TEFModoAdministrativo;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaGerenciadorAtivo;
    if sTEFRetorno = '0' then
      TEFGravaOperacao('ADM');
    if sTEFRetorno = '0' then
      TEFConfirmaOperacao;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFModoAdministrativo}

// ---< Executa pedido de autorização para transação por meio de cartão >---
procedure TEFPedidoAutorizacaoCartao;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaArquivosPendentes;
    TEFVerificaGerenciadorAtivo;

    if sTEFRetorno = '0' then
      TEFGravaOperacao('CRT');
//...aqui brasilcard
  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFPedidoAutorizacaoCartao}

// ---< Executa pedido de autorização para transação por meio de cheque >---
procedure TEFPedidoAutorizacaoCheque;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaGerenciadorAtivo;
    if sTEFRetorno = '0' then
      TEFGravaOperacao('CHQ');

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFPedidoAutorizacaoCheque}

// ---< Executa a venda por meio de cartão >---
procedure TEFVendaCartao;
begin

  sTEFRetorno := '0';

  try
    TEFPedidoAutorizacaoCartao;
    if sTEFRetorno = '0' then
      TEFConfirmaOperacao;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVendaCartao}

// ---< Executa a venda por meio de cheque >---
procedure TEFVendaCheque;
begin

  sTEFRetorno := '0';

  try
    TEFPedidoAutorizacaoCheque;
    if sTEFRetorno = '0' then
      TEFConfirmaOperacao;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVendaCheque}

// ---< Cancela Transação efetivada >---
procedure TEFCancelaTransacao;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaGerenciadorAtivo;
    if sTEFRetorno = '0' then
      TEFGravaOperacao('CNC');
    if sTEFRetorno = '0' then
      TEFConfirmaOperacao;

  except
    on E: Exception do
      begin
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFCancelaTransacao}

// ---< Confirma e encerra a transação do TEF >---
procedure TEFFechaOperacao;
begin

  sTEFRetorno := '0';
  TEFGravaOperacao('CNF');
  if (sTEFRetorno = '0') and (FileExists(sTEFKoneKPath + 'TEF.Imp')) then
    DeleteFile(sTEFKoneKPath + 'TEF.Imp');

end;  {TEFFechaOperacao}

end.
