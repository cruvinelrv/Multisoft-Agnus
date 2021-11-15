unit uIntegridade_Referencial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls;

function Verifica_Secao(pCodigo : String) : Boolean;
function Verifica_Grupo(pCodigo : String) : Boolean;
function Verifica_SubGrupo(pCodigo : String) : Boolean;
function Verifica_Produtos(pCodigo : String) : Boolean;
function Verifica_Clientes(pCodigo : String) : Boolean;
function Verifica_Fornecedores(pCodigo : String) : Boolean;
function Verifica_Vendedores(pCodigo : String) : Boolean;
function Verifica_CentroCusto(pCodigo : String) : Boolean;
function Verifica_Portador(pCodigo : String) : Boolean;
function Verifica_TipoPagamento(pCodigo : String) : Boolean;
function Verifica_TipoDocumento(pCodigo : String) : Boolean;
function Verifica_Conta(pCodigo : String) : Boolean;
function Verifica_ContaCorrente(pCodigo : String) : Boolean;


implementation

uses uDmPrincipal;

function Verifica_Secao(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select g.codigo_secao_grupo '+
                                   'from P_GRUPOS g '+
                                   'where g.codigo_secao_grupo = ' + QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Esta Seção não pode ser excluída,' + #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_Grupo(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select s.codigo_grupo_subgrupo '+
                                   'from P_SUBGRUPO s '+
                                   'where s.codigo_grupo_subgrupo =' + QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Este Grupo não pode ser excluído,' + #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_SubGrupo(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select p.subgrupo_produto '+
                                   'from P_PRODUTOS p '+
                                   'where p.subgrupo_produto = ' + QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Este SubGrupo não pode ser excluído,' + #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_Produtos(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select v.codigo_venda, i.produto_ivenda '+
                                   'from P_VENDAS v '+
                                   'left outer join p_vendas_itens i on (v.codigo_venda = i.codigo_ivenda) '+
                                   'left outer join p_produtos p on (i.produto_ivenda = p.codigo_produto) '+
                                   'left outer join p_subproduto s on (p.codigo_produto = s.produto_subproduto) '+
                                   'where i.produto_ivenda = ' + QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Este Produto não pode ser excluído,' +  #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_Clientes(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select c.codigo_cliente, v.codigo_venda, r.duplicata_receber '+
                                   'from E_CLIENTE c '+
                                   'left outer join p_vendas v on (c.codigo_cliente = v.cliente_venda) '+
                                   'left outer join p_receber r on (c.codigo_cliente = r.codigo_cliente_receber)'+
                                   'where ((v.cliente_venda = ' + QuotedStr(pCodigo) + ') or (r.codigo_cliente_receber = ' + QuotedStr(pCodigo) + '))'+
                                   'and c.tipo_cliente = ''0''');

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Este Cliente não pode ser excluído,' +  #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_Fornecedores(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select c.codigo_cliente, co.fornecedor_compra, p.fornecedor_pagar '+
                                   'from E_CLIENTE c '+
                                   'left outer join p_compra co on (c.codigo_cliente = co.fornecedor_compra) '+
                                   'left outer join p_pagar p on (c.codigo_cliente = p.fornecedor_pagar) '+
                                   'left outer join p_produtos pr on (c.codigo_cliente = pr.fabricante_produto) '+
                                   'where ((co.fornecedor_compra = '+ QuotedStr(pCodigo) +') or (p.fornecedor_pagar = '+ QuotedStr(pCodigo) +') '+
                                   'or (pr.fabricante_produto = '+ QuotedStr(pCodigo) +' )) and c.codigo_cliente = ''2''');

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Este Fornecedor não pode ser excluído,' +  #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;   
end;

function Verifica_Vendedores(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select v.codigo_vendedor, ve.vendedor_venda, r.codigo_vendedor_receber '+
                                   'from P_VENDEDOR v '+
                                   'left outer join p_vendas ve on (v.codigo_vendedor = ve.vendedor_venda) '+
                                   'left outer join p_receber r on (v.codigo_vendedor = r.codigo_vendedor_receber) '+
                                   'where ((ve.vendedor_venda = '+ QuotedStr(pCodigo) +') or (r.codigo_vendedor_receber = '+ QuotedStr(pCodigo) +')) ');

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Este Vendedor não pode ser excluído,' +  #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_CentroCusto(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select c.codigo_centro, r.codigo_centro_receber '+
                                   'from E_CENTRO c '+
                                   'left outer join p_receber r on (c.codigo_centro = r.codigo_centro_receber) '+
                                   'where r.codigo_centro_receber = '+ QuotedStr(pCodigo) +
                                   'union '+
                                   'select c.codigo_centro, p.centro_pagar '+
                                   'from E_CENTRO c '+
                                   'left outer join p_pagar p on (c.codigo_centro = p.centro_pagar) '+
                                   'where p.centro_pagar = '+ QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Este Centro de Custo não pode ser excluído,' + #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_Portador(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select p.codigo_portador, pa.portador_pagar '+
                                   'from E_PORTADOR p '+
                                   'left outer join p_pagar pa on (p.codigo_portador = pa.portador_pagar) '+
                                   'where pa.portador_pagar = '+ QuotedStr(pCodigo) +
                                   'union '+
                                   'select p.codigo_portador, r.codigo_portador_receber '+
                                   'from E_PORTADOR p '+
                                   'left outer join p_receber r on (p.codigo_portador = r.codigo_portador_receber) '+
                                   'where r.codigo_portador_receber = '+ QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Este Portador não pode ser excluído,' + #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_TipoPagamento(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select c.codigo_cpagamento, v.cpagamento_venda, c.descricao_cpagamento '+
                                   'from P_CPAGAMENTO c '+
                                   'left outer join p_vendas v on (c.codigo_cpagamento = v.cpagamento_venda) '+
                                   'where v.cpagamento_venda = ' + QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Esta Condição de Pagamento não pode ser excluída,' + #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_TipoDocumento(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select t.codigo_tipodocumento, p.tipodocumento_pagar '+
                                   'from E_TIPODOCUMENTO t '+
                                   'left outer join p_pagar p on (t.codigo_tipodocumento = p.tipodocumento_pagar) '+
                                   'where p.tipodocumento_pagar = '+ QuotedStr(pCodigo) +
                                   'union '+
                                   'select t.codigo_tipodocumento, r.tipo_documento_receber '+
                                   'from E_TIPODOCUMENTO t '+
                                   'left outer join p_receber r on (t.codigo_tipodocumento = r.tipo_documento_receber) '+
                                   'where r.tipo_documento_receber = '+ QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Este Tipo de Documento não pode ser excluído,' + #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_Conta(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select c.codigo_conta, p.conta_pagar '+
                                   'from E_CONTA c '+
                                   'left outer join p_pagar p on (c.codigo_conta = p.conta_pagar) '+
                                   'where p.conta_pagar = '+ QuotedStr(pCodigo) +
                                   'union '+
                                   'select c.codigo_conta, r.codigo_conta_receber '+
                                   'from E_CONTA c '+
                                   'left outer join p_receber r on (c.codigo_conta = r.codigo_conta_receber) '+
                                   'where r.codigo_conta_receber = '+ QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Esta Conta não pode ser excluída,' + #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

function Verifica_ContaCorrente(pCodigo : String) : Boolean;
begin
   Result := False;

   DmPrincipal.qryConsulta.Close;
   DmPrincipal.qryConsulta.SQL.Clear;
   DmPrincipal.qryConsulta.SQL.Add('select b.codigo_banco, p.corrente_pagar '+
                                   'from P_BANCO b '+
                                   'left outer join p_pagar p on (b.codigo_banco = p.corrente_pagar) '+
                                   'where p.corrente_pagar = '+ QuotedStr(pCodigo) +
                                   'union '+
                                   'select b.codigo_banco, r.codigo_corrente_receber '+
                                   'from P_BANCO b '+
                                   'left outer join p_receber r on (b.codigo_banco = r.codigo_corrente_receber) '+
                                   'where r.codigo_corrente_receber = '+ QuotedStr(pCodigo));

   DmPrincipal.qryConsulta.Open;

   if not DmPrincipal.qryConsulta.IsEmpty then
   begin
      Application.MessageBox('Esta Conta Corrente não pode ser excluída,' + #13 + 'outros dados estão vinculados', 'Informação', MB_OK+MB_ICONEXCLAMATION);
      Result := True;
   end;
end;

end.
