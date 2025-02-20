unit uMultiClasses;

interface
Uses DBClient, SysUtils, Forms, Windows, Dialogs, SqlExpr, Provider, DB;

type
   TParametros_Venda = Class
      Procedure Carregar(Tipo_lancamento: String = 'V');
      Function Qtd_decimal(): Integer;
      Function Decimal(): Integer;
      Function Confirma_Aliquota(): Boolean;
      Function CFOP_Padrao():String;
      Function Alterar_preco(): Boolean;
      function Limite_desconto(): real;
      function Vende_negativo(): Boolean;
      function UF_Local(): String;
      function Utiliza_IPI(): Boolean;
      function Cliente_sem_CNPJ(): Boolean;
      function Cliente_dados_incompleto(): Boolean;
      procedure Informacao_cliente();
      function VERIF_CHE(Arg1: String):Boolean;
      function VERIF_TIT(Arg1: String):Boolean;
      function OBS(): Boolean;
      function Nao_vende_produto_com_servico(): Boolean;
      function Nao_vende_tributacao_diferente(): Boolean;
      function Qtd_Produto_NF(): integer;
      function Qtd_Servico_NF(): integer;
      function OBS_orcamento(Ref: integer):string;
      function Cliente_negativado(): Boolean;
      function Pula_Quantidade(): Boolean;
      function Nao_repete_produto(): Boolean;
      function Multi_pagina_na_NF(): Boolean;
      function Obriga_tipo_pagamento(): Boolean;
      function Mostra_produto_desuso(): Boolean;
      function Parcela_Max_Livre(): Integer;
      function NF_servico(): Boolean;
      function Nome_Fantasia(): String;
      function Modelo_orcamento(Serie: String): String;
      function Modelo_nota_fiscal(): String;
      function Msn_linha(Num: Integer): String;
      function Aliq_ECF(Cod_item,Cod_cli1: integer; Produto_temp: Boolean=False): String;
      function Modelo_ECF(): Integer;
      function Altera_num_nf: Boolean;
      function Usa_TEF(): Boolean;
      function Multiplos_ECFs(): Boolean;
      function Modelo_Bematech(): Integer;
      function Mostra_Dados_cliente(): Boolean;
      function Serie_padrao(): String;
   private
    { Private declarations }
        Tipo_lanc1, Classe1, CHEAB, CHEAT, TITAB, TITAT: String;
   public
    { Public declarations }
   end;

implementation
Uses uGlobal, udmProgs, uVd1101, uDMVd1101, uDmPrincipal, Classes,
  uVd1101_9, JvValidateEdit, StdCtrls;

{ TParametros_Venda }

function TParametros_Venda.Alterar_preco: Boolean;
begin
   // Verifica se pode alterar o pre�o
   if Existe(dmProgs.cdsEmpresaALTERA_EMP.AsString,Tipo_lanc1 + 'A') then
      Result := False
   else
      Result := True;
end;

procedure TParametros_Venda.Carregar(Tipo_lancamento: String = 'V');
begin
   dmProgs.cdsEmpresa.Open;
   if dmProgs.cdsEmpresa.Locate('CODIGO_EMP',CodigoEmpresa1,[]) then
   begin
      if Tipo_lancamento <> '' then
         Tipo_lanc1 := Tipo_lancamento;
    end;
end;

function TParametros_Venda.CFOP_Padrao: String;
begin
   Result := dmProgs.cdsEmpresaCFOP_PAD_EMP.AsString;
end;

function TParametros_Venda.Confirma_Aliquota: Boolean;
begin
   //Habilita confirma��o de al�quota
   if Existe(dmProgs.cdsEmpresaCONF_ALI_EMP.AsString,Tipo_lanc1 + 'A') then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Decimal: Integer;
begin
   Result := StrToInt(dmProgs.cdsEmpresaDECIMAL_EMP.AsString);
end;

function TParametros_Venda.Limite_desconto: real;
begin
   result := StringToFloat(dmProgs.cdsEmpresaLIMITE2_EMP.AsString)
end;

Function TParametros_Venda.Qtd_decimal():Integer;
begin
   //Estoque descimal
   if TrimRight(dmProgs.cdsEmpresaFORMATO_EMP. AsString) = 'S' then
   begin
       Result := 3;
       dmvd1101.cdsVendasItemQUANTIDADE_IVENDAS.DisplayFormat := '.000';
   end
   else
   begin
      Result := 0;
      dmvd1101.cdsVendasItemQUANTIDADE_IVENDAS.DisplayFormat := '';
   end;
end;

function TParametros_Venda.UF_Local: String;
begin
   Result := dmProgs.cdsEmpresaESTADO_EMP.AsString;
end;

function TParametros_Venda.Utiliza_IPI: Boolean;
begin
   if dmProgs.cdsEmpresaIPI_EMP.AsString = 'N' then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Cliente_sem_CNPJ: Boolean;
var
   CPF1: String;
   Erro: Integer;
begin
   // Bloqueia venda para cliente que possue cnpj/cpf
   Result := False;
   if dmProgs.cdsEmpresaCADASTRO1_EMP.AsString = 'N' then
   begin
      erro := 0;
      CPF1 := dmvd1101.cdsClienteCNPJ_CLIENTE.Value;

      if length(CPF1) > 0 then
      begin
         if CPF1[1] = ' ' then
            inc(erro);
      end
      else
         inc(erro);

      if erro > 0 then
      begin
         Application.MessageBox('Cliente n�o possue CNPJ/CPF','Aten��o',mb_TaskModal + mb_IconWarning);
         Result := True;
      end;
   end;
end;

function TParametros_Venda.Vende_negativo: Boolean;
begin
   if Existe(dmProgs.cdsEmpresaNEGATIVO_EMP.AsString,'A' + Tipo_lanc1) then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Cliente_dados_incompleto: Boolean;
var
   Erro: integer;
begin
   // Verifica se os dados principais n�o est�o imcompletos
   Result := False;
   erro := 0;
   if dmProgs.cdsEmpresaCADASTRO_EMP.AsString = 'N' then
   begin
      if Length(dmvd1101.cdsClienteTELEFONE_CLIENTE.AsString) <> 13 then
         inc(erro);

      if Length(dmvd1101.cdsClienteENDERECO_CLIENTE.AsString) < 3 then
         inc(erro);

      if Length(dmvd1101.cdsClienteCIDADE_CLIENTE.AsString) = 0 then
         inc(erro);

      if erro > 0 then
      begin
         Application.MessageBox('Dados cadastrais incompletos.','Aten��o', MB_OK + MB_ICONWARNING);
         Result := True;
      end;
   end;
end;

procedure TParametros_Venda.Informacao_cliente;
var
   INF1: String;
begin
   INF1:= dmProgs.cdsEmpresaCLI_VENDA_EMP  . AsString;

   if (Length(INF1) <> 0) and (Tipo_lanc1 <> 'O') then
   begin
      CHEAB    := '';
      CHEAT    := '';
      TITAB    := '';
      TITAT    := '';

      // exibe as informacoes do clientes informadas nos parametros
      if copy(INF1,1,1) = '1' then
      begin
         if VERIF_CHE('AB') then
            CHEAB := '=> Existe(m) Cheque(s) em ABERTO deste cliente.';
      end;
      if copy(INF1,2,1) = '2' then
      begin
         if VERIF_CHE('AT') then
            CHEAT := '=> Existe(m) Cheque(s) em ATRASO deste cliente.';
      end;

      if copy(INF1,3,1) = '3' then
      begin
         if VERIF_TIT('AB') then
            TITAT := '=> Existe(m) T�tulo(s) em ABERTO deste cliente.';
      end;

      if copy(INF1,4,1) = '4' then
      begin
         if VERIF_TIT('AT') then
            TITAT := '=> Existe(m) T�tulo(s) em ATRASO deste cliente.';
      end;

      if Length(CHEAB + CHEAT + TITAT + TITAT) > 0 then
         Application.MessageBox(pchar(CHEAB + #13 + CHEAT + #13 + TITAB + #13 + TITAT),'Aten��o', MB_OK + MB_ICONWARNING);

      if (copy(INF1,5,1) = '5') and (dmvd1101.cdsClienteOBSEVACAO_CLIENTE.Value <> '') then
      begin
         Application.MessageBox(pchar('     ' + dmvd1101.cdsClienteOBSEVACAO_CLIENTE.Value),'OBSERVA��O NO CADASTRO DO CLIENTE', MB_OK + MB_ICONINFORMATION);
      end;
   end;
end;


function TParametros_Venda.VERIF_CHE(Arg1: String): Boolean;
var
   ok: integer;
begin
   dmvd1101.cdsPredatad.Close;
   dmvd1101.cdsPredatad.CommandText := 'SELECT * FROM P_PREDATAD WHERE CGC=:CPFCLI';
   dmvd1101.cdsPredatad.Params.ParamByName('CPFCLI').AsString := dmvd1101.cdsClienteCNPJ_CLIENTE.AsString;
   dmvd1101.cdsPredatad.Open;

   ok := 0;

   dmvd1101.cdsPredatad.First;
   while not dmvd1101.cdsPredatad.Eof do
   begin
      // verifica cheques em aberto que nao esteja atrasado
      if Arg1 = 'AB' then
      begin
         if dmvd1101.cdsPredatadDT_BAIXA.IsNull then
         begin
            if dmvd1101.cdsPredatadVENCIMENTO.Value >= DataSystem1 then
               inc(ok);
         end;
      end
      else
      begin
         // verifica cheques em atraso
         if Arg1 = 'AT' then
         begin
            if dmvd1101.cdsPredatadDT_BAIXA.IsNull then
            begin
               if dmvd1101.cdsPredatadVENCIMENTO.Value < DataSystem1 then
                  inc(ok);
            end;
         end
      end;
      dmvd1101.cdsPredatad.Next;
   end;

   if ok > 0 then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.VERIF_TIT(Arg1: String): Boolean;
var
   ok: integer;
begin
   dmvd1101.cdsReceber.Close;
   dmvd1101.cdsReceber.Params.ParamByName('COD_CLI').AsString := dmvd1101.cdsClienteCODIGO_CLIENTE.AsString;
   dmvd1101.cdsReceber.Open;

   ok := 0;

   dmvd1101.cdsReceber.First;
   while not dmvd1101.cdsReceber.Eof do
   begin
      // verifica T�TULOS em aberto que nao esteja atrasado
      if Arg1 = 'AB' then
      begin
         if dmvd1101.cdsReceberTIPO_BAIXA_RECEBER.IsNull then
         begin
            if dmvd1101.cdsReceberVENCIMENTO_RECEBER.Value >= DataSystem1 then
               inc(ok);
         end;
      end
      else
      begin
         // verifica TITULOS em atraso
         if Arg1 = 'AT' then
         begin
            if  dmvd1101.cdsReceberTIPO_BAIXA_RECEBER.IsNull then
            begin
               if dmvd1101.cdsReceberVENCIMENTO_RECEBER.Value < DataSystem1 then
                  inc(ok);
            end;
         end
      end;
      dmvd1101.cdsReceber.Next;
   end;

   if ok > 0 then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.OBS: Boolean;
begin
   if Existe(dmProgs.cdsEmpresaOBSERVACAO_EMP.AsString, Tipo_lanc1 + 'A') then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Nao_vende_produto_com_servico: Boolean;
begin
   // verifica produtos e servicos na mesma nota
   if dmProgs.cdsEmpresaSER_PRO_EMP.AsString = 'N' then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Nao_vende_tributacao_diferente: Boolean;
begin
   // Verifica diferentes tributa��es
   if dmProgs.cdsEmpresaTRI_DIF_EMP.AsString = 'N' then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Qtd_Produto_NF: integer;
begin
   Result := StringToInt(dmProgs.cdsEmpresaQTD_PRO_EMP.AsString);
end;

function TParametros_Venda.Qtd_Servico_NF: integer;
begin
   Result := StringToInt(dmProgs.cdsEmpresaQTD_SRV_EMP.AsString);
end;

function TParametros_Venda.OBS_orcamento(Ref: integer): string;
begin
   if Tipo_lanc1 = 'O' then
   begin
      if Ref = 1 then
         Result := dmProgs.cdsEmpresaOBS_ORC1_EMP.AsString
      else
      begin
         if Ref = 2 then
            Result := dmProgs.cdsEmpresaOBS_ORC2_EMP.AsString
         else
            Application.MessageBox('Referencia inv�lida na fun��o "OBS_orcamento"','Erro - uMultClasses',MB_OK + MB_ICONERROR);
      end;
   end;
end;

function TParametros_Venda.Cliente_negativado: Boolean;
begin
   if Existe(dmProgs.cdsEmpresaVEN_NEGAT_EMP.AsString,Tipo_lanc1 + 'A') then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Pula_Quantidade: Boolean;
begin
   if dmProgs.cdsEmpresaQTDE_VND_EMP.AsString = 'S' then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Nao_repete_produto: Boolean;
begin
   // Verifica duplica��o de itens
   if Existe(dmProgs.cdsEmpresaREP_PROD_EMP.AsString,'T' + Tipo_lanc1) then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Multi_pagina_na_NF: Boolean;
begin
   if dmProgs.cdsEmpresaNF_MULT_PAGINA_EMP.AsString = 'S' then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Obriga_tipo_pagamento: Boolean;
begin
   if (dmProgs.cdsEmpresaOBR_FP_CLI_EMP.AsString <> 'N') and (Tipo_lanc1 <> 'O') then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Mostra_produto_desuso: Boolean;
begin
   if (Existe(dmProgs.cdsEmpresaPROD_NEG_EMP.AsString,Tipo_lanc1 + 'A') = False) then
      result := True
   else
      result := False;
end;

function TParametros_Venda.Parcela_Max_Livre: Integer;
begin
   Result := StringToInt(dmProgs.cdsEmpresaLIVRE_EMP.AsString);
end;

function TParametros_Venda.NF_servico: Boolean;
begin
   // Verifica se a empresa imprime nota fiscal de servi�o pelo programa
   if dmProgs.cdsEmpresaNF_SERV_EMP.AsString = 'S' then
      Result := True
   else
      Result := False;
end;

function TParametros_Venda.Nome_Fantasia: String;
begin
   Result := dmProgs.cdsEmpresaEMPRESA.AsString;
end;

function TParametros_Venda.Modelo_orcamento(Serie: String): String;
var
   qrySerie: TSQLQuery;
begin
   //Produto
   qrySerie := TSQLQuery.Create(Application);
   qrySerie.SQLConnection := DmPrincipal.DbConexao;
   qrySerie.Close;
   qrySerie.SQL.Clear;
   qrySerie.SQL.Add('SELECT * FROM P_SERIE WHERE SERIE_SERIE=' + QuotedStr(Serie));
   qrySerie.ExecSQL;
   qrySerie.Open;

   Result := qrySerie.FieldByName('IMPRESSAO').Value;

   FreeAndNil(qrySerie);
end;

function TParametros_Venda.Msn_linha(Num: Integer): String;
begin
   if num = 1 then
      Result  := dmProgs.cdsEmpresaLINHA1_EMP.AsString;

   if num = 2 then
      Result  := dmProgs.cdsEmpresaLINHA2_EMP.AsString;

   if num = 3 then
      Result  := dmProgs.cdsEmpresaLINHA3_EMP.AsString;

   if num = 4 then
      Result  := dmProgs.cdsEmpresaLINHA4_EMP.AsString;

   if num = 5 then
      Result  := dmProgs.cdsEmpresaLINHA5_EMP.AsString;
end;


function TParametros_Venda.Aliq_ECF(Cod_item,Cod_cli1: integer; Produto_temp: Boolean=False): String;
Var
 Ali: String;
 ICM_SAI, REDU_DENTR, ICMS_VD_CT, ICMS_VD_NC, REDU_FORA: real;
 qryProduto, qryCliente, qryEstado: TSQLQuery;
 dspEstado: TProvider;
 cdsEstado: TClientDataSet;
 Trib_dentro, Trib_fora, UF_cliente, ICM_saida, ALI_CONTRI_PRODUTO: String;
 Contribuinte, RED_CONTRI_PRODUTO: Boolean;
begin
   Try
      // ==== BLOCO DE BUSCAS ===
      //Produto
      qryProduto := TSQLQuery.Create(Application);
      qryProduto.SQLConnection := DmPrincipal.DbConexao;
      qryProduto.Close;
      qryProduto.SQL.Clear;
      qryProduto.SQL.Add('SELECT TRIB_DENTRO_PRODUTO,' +
                         ' ICMSAIDA_PRODUTO,'   +
                         ' RED_CONTRI_PRODUTO,' +
                         ' ALI_CONTRI_PRODUTO,' +
                         ' REDU_DENTR_PRODUTO,' +
                         ' REDU_FORA_PRODUTO'   +
                         ' FROM P_PRODUTOS WHERE CODIGO_PRODUTO=' + IntToStr(Cod_item));
      qryProduto.ExecSQL;
      qryProduto.Open;

      //Cliente
      qryCliente := TSQLQuery.Create(Application);
      qryCliente.SQLConnection := DmPrincipal.DbConexao;
      qryCliente.Close;
      qryCliente.SQL.Clear;
      qryCliente.SQL.Add('SELECT' +
                         ' CONTRIBUINTE_CLIENTE,' +
                         ' ESTADO_CLIENTE'        +
                         ' FROM E_CLIENTE WHERE CODIGO_CLIENTE=' + IntToStr(Cod_cli1));
      qryCliente.ExecSQL;
      qryCliente.Open;

      // Estados
      qryEstado := TSQLQuery.Create(Application);
      dspEstado := TProvider.Create(Application);
      cdsEstado := TClientDataSet.Create(Application);
      qryEstado.SQLConnection := DmPrincipal.DbConexao;
      qryEstado.Close;
      qryEstado.SQL.Clear;
      qryEstado.SQL.Add('SELECT' +
                         ' ICMS_VD_CT,' +
                         ' ICMS_VD_NC'  +
                         ' FROM E_ESTADOS WHERE CODIGO_ESTADO=:UF');

      dspEstado.Name := 'dspEstados1';
      dspEstado.DataSet := qryEstado;
      cdsEstado.ProviderName := dspEstado.Name;
      qryEstado.Params.ParamByName('UF').AsString := qryCliente.FieldByName('ESTADO_CLIENTE').AsString;
      cdsEstado.Open;
      // === FIM BLOCO DE BUSCAS ===

      if Produto_temp then
      begin
         Trib_dentro        := Copy(frmVd1101_9.cbxCST.Text,1,3);
         UF_cliente         := UF_Local;
         ICM_saida          := frmVd1101_9.edtAliquota.Text;
         Contribuinte       := False;
         RED_CONTRI_PRODUTO := False;
         ALI_CONTRI_PRODUTO := frmVd1101_9.edtAliquota.Text;;
         ICMS_VD_CT         := frmVd1101_9.edtAliquota.Value;
         ICMS_VD_NC         := frmVd1101_9.edtAliquota.Value;
      end
      else
      begin
         Trib_dentro        := qryProduto.FieldByName('TRIB_DENTRO_PRODUTO').AsString;
         UF_cliente         := qryCliente.FieldByName('ESTADO_CLIENTE').AsString;
         ICM_saida          := qryProduto.FieldByName('ICMSAIDA_PRODUTO').AsString;
         Contribuinte       := qryCliente.FieldByName('CONTRIBUINTE_CLIENTE').AsBoolean;
         RED_CONTRI_PRODUTO := qryProduto.FieldByName('RED_CONTRI_PRODUTO').AsBoolean;
         ALI_CONTRI_PRODUTO := qryProduto.FieldByName('ALI_CONTRI_PRODUTO').AsString;
         ICMS_VD_CT         := cdsEstado.fieldByName('ICMS_VD_CT').AsFloat;
         ICMS_VD_NC         := cdsEstado.fieldByName('ICMS_VD_NC').AsFloat;
      end;

      // ==== CR�TICAS SOBRE AL�QUOTAS ====
      if Trib_dentro = '000' then
      begin
         if UF_Local = UF_cliente then
         begin
            Ali := ICM_saida;

            // se o cliente for contribuinte e o produto tiver reducao de aliquota
            // para este tipo de cliente, entao aplica-se a aliquota reduzida
            if (Contribuinte) and (RED_CONTRI_PRODUTO) then
               Ali := ALI_CONTRI_PRODUTO;
         end
         else
         begin
            if cdsEstado.RecordCount > 0 then
            begin
               if Contribuinte then
                  Ali := FloatToStr(ICMS_VD_CT)
               else
                  Ali := FloatToStr(ICMS_VD_NC);
            end
            else
               Ali := '0';
         end;
      end
      else
      begin
         if Trib_dentro = '020' then
         begin
            ICM_SAI    := qryProduto.FieldByName('ICMSAIDA_PRODUTO').AsFloat;
            REDU_DENTR := qryProduto.FieldByName('REDU_DENTR_PRODUTO').AsFloat;
            REDU_FORA  := qryProduto.FieldByName('REDU_FORA_PRODUTO').AsFloat;

            if UF_Local = UF_cliente then
               Ali := FloatToStr(Round(ICM_SAI * REDU_DENTR / 100))
            else
            begin
               if cdsEstado.RecordCount > 0 then
               begin
                  ICMS_VD_CT := cdsEstado.fieldByName('ICMS_VD_CT').AsFloat;
                  ICMS_VD_NC := cdsEstado.fieldByName('ICMS_VD_NC').AsFloat;

                  if Contribuinte then
                     Ali := FloatToStr(ICMS_VD_CT * REDU_FORA / 100)
                  else
                     Ali := FloatToStr(ICMS_VD_NC * REDU_FORA / 100);
               end
               else
                  Ali := '0';
            end;
         end
         else
         begin
            if Trib_dentro = '040' then
               Result := dmProgs.cdsEmpresaALIQ01_EMP.Value
            else
            begin
               if Trib_dentro = '060' then
                  Result := dmProgs.cdsEmpresaALIQ02_EMP.Value
               else
               begin
                  if Trib_dentro = '999' then
                     Result := dmProgs.cdsEmpresaALIQ03_EMP.Value
                  else
                  begin
                     if Trib_dentro = 'SSS' then
                        Ali := qryProduto.FieldByName('ISS_PRODUTO').AsString
                     else
                        Application.MessageBox('C�digo de CST Inexistente.','Aten��o', MB_OK + MB_ICONERROR);
                  end;
               end;
            end;
         end;
      end;

      // Verifica se a aliquota esta cadastrada
      if (Trib_dentro = '000') or (Trib_dentro = '020') or (Trib_dentro = 'SSS') then
      begin
         if Ali = '0' then
         begin
          if UF_Local = UF_cliente then
              Application.MessageBox('Al�quota n�o informada no cadastro de produtos.','Aten��o', MB_OK + MB_ICONERROR)
          else
             Application.MessageBox('Al�quota n�o informada no cadastro de estados.','Aten��o', MB_OK + MB_ICONERROR);
         end
         else
         begin
            if FloatToStrF(StrToFloat(Ali),ffFixed,10,2) = FloatToStrF(dmProgs.cdsEmpresaVALOR04_EMP.AsFloat,ffFixed,18,2) then
               Result := dmProgs.cdsEmpresaALIQ04_EMP.Value
            else
            begin
               if FloatToStrF(StrToFloat(Ali),ffFixed,10,2) = FloatToStrF(dmProgs.cdsEmpresaVALOR05_EMP.AsFloat,ffFixed,18,2) then
                  Result := dmProgs.cdsEmpresaALIQ05_EMP.Value
               else
               begin
                  if FloatToStrF(StrToFloat(Ali),ffFixed,10,2) = FloatToStrF(dmProgs.cdsEmpresaVALOR06_EMP.AsFloat,ffFixed,18,2) then
                     Result := dmProgs.cdsEmpresaALIQ06_EMP.Value
                  else
                  begin
                     if FloatToStrF(StrToFloat(Ali),ffFixed,10,2) = FloatToStrF(dmProgs.cdsEmpresaVALOR07_EMP.AsFloat,ffFixed,18,2) then
                        Result := dmProgs.cdsEmpresaALIQ07_EMP.Value
                     else
                     begin
                        if FloatToStrF(StrToFloat(Ali),ffFixed,10,2) = FloatToStrF(dmProgs.cdsEmpresaVALOR08_EMP.AsFloat,ffFixed,18,2) then
                           Result := dmProgs.cdsEmpresaALIQ08_EMP.Value
                        else
                           Application.MessageBox('Al�quota n�o informada nos par�metros da empresa.','Aten��o', MB_OK + MB_ICONERROR);
                     end;
                  end;
               end;
            end;
         end;
      end;
   finally
      FreeAndNil(cdsEstado);
      FreeAndNil(dspEstado);
      FreeAndNil(qryEstado);
      FreeAndNil(qryCliente);
      FreeAndNil(qryProduto);
   end;
end;

function TParametros_Venda.Modelo_ECF: Integer;
begin
   if dmProgs.cdsEmpresaMODEL_ECF_EMP.AsString = '' then
      Result := 0
   else
      Result := dmProgs.cdsEmpresaMODEL_ECF_EMP.AsInteger;
end;

function TParametros_Venda.Altera_num_nf: Boolean;
begin
   Result := dmProgs.cdsEmpresaALTERA_NUM_NF_EMP.AsBoolean;
end;

function TParametros_Venda.Modelo_nota_fiscal: String;
begin
   Result := dmProgs.cdsEmpresaMODELO_NF_EMP.Value;
end;

function TParametros_Venda.Usa_TEF: Boolean;
begin
   Result := dmProgs.cdsEmpresaTEF_MULTI.AsBoolean; 
end;

function TParametros_Venda.Multiplos_ECFs: Boolean;
begin
   Result := dmProgs.cdsEmpresaVARIOS_ECF_EMP.AsBoolean;
end;

function TParametros_Venda.Modelo_Bematech: Integer;
begin
   if dmProgs.cdsEmpresaMODE_BEMA_EMP.AsString <> '' then
      Result := dmProgs.cdsEmpresaMODE_BEMA_EMP.AsInteger
   else
      Result := 0;
end;

function TParametros_Venda.Mostra_Dados_cliente: Boolean;
begin
   Result := dmProgs.cdsEmpresaALTERA_CLI_EMP.AsBoolean;
end;

function TParametros_Venda.Serie_padrao: String;
begin
   Result := dmProgs.cdsEmpresaSER_PAD_EMP.AsString;
end;

end.
