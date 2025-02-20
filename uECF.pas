unit uECF;

interface
uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, uMultiClasses,DBClient,SqlExpr;


const
  DLL_EPSON = 'InterfaceEpson.1.2.1.dll';

// Grupo da porta serial

function EPSON_Serial_Abrir_Porta(dwVelocidade: Longword; wPorta: Word): LongWord; stdcall; external DLL_EPSON; // Abre porta serial e reserva recursos de hardware e software.
function EPSON_Serial_Abrir_PortaEx: LongWord; stdcall; external DLL_EPSON; // Detecta e abre porta serial e reserva recursos de hardware e software.
function EPSON_Serial_Fechar_Porta: LongWord; stdcall; external DLL_EPSON; // Fecha porta serial e libera recursos.
function EPSON_Serial_Obter_Estado_Com: LongWord; stdcall; external DLL_EPSON; // Verifica o status da porta serial.

// Grupo do cupom fiscal
function EPSON_Fiscal_Abrir_Cupom(pszCNPJ, pszRazaoSocial, pszEndereco1, pszEndereco2: PAnsiChar; dwPosicao: LongWord): LongWord; stdcall; external DLL_EPSON; // Abre um cupom fiscal.
// perguntar para o suporte, pois consta apenas no �ndice do grupo function EPSON_Fiscal_Dados_Usuario: LongWord; stdcall; external DLL_EPSON; // Envia dados do cliente para que sejam impressos no cupom.
function EPSON_Fiscal_Vender_Item(pszCodigo, pszDescricao, pszQuantidade: PAnsiChar; dwQuantCasasDecimais: LongWord; pszUnidade, pszPrecoUnidade: PAnsiChar; dwPrecoCasasDecimais: LongWord; pszAliquotas: PAnsiChar; dwLinhas: LongWord): LongWord; stdcall; external DLL_EPSON; // Vende um item no cupom fiscal.
function EPSON_Fiscal_Obter_SubTotal(pszSubTotal: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Recupera o subtotal do ticket.
function EPSON_Fiscal_Pagamento(pszNumeroPagamento, pszValorPagamento: PAnsiChar; dwCasasDecimais: LongWord; pszDescricao1, pszDescricao2: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Processa o pagamento do ticket.
function EPSON_Fiscal_Desconto_Acrescimo_Item(pszValor: PAnsiChar; dwCasasDecimais: LongWord; bDesconto, bPercentagem: Boolean): LongWord; stdcall; external DLL_EPSON; // Efetua acr�scimo ou desconto do item.
function EPSON_Fiscal_Desconto_Acrescimo_Subtotal(pszValor: PAnsiChar; dwCasasDecimais: LongWord; bDesconto, bPercentagem: Boolean): LongWord; stdcall; external DLL_EPSON; // Efetua acr�scimo ou desconto no subtotal.
function EPSON_Fiscal_Cancelar_Cupom: LongWord; stdcall; external DLL_EPSON; // Cancela o �ltimo cupom fiscal.
function EPSON_Fiscal_Cancelar_Item(pszNumeroItem: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Cancela um item vendido.
function EPSON_Fiscal_Cancelar_Ultimo_Item: LongWord; stdcall; external DLL_EPSON; // Cancela o �ltimo item vendido.
function EPSON_Fiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto: Boolean): LongWord; stdcall; external DLL_EPSON; // Cancela o acr�scimo ou desconto do item.
function EPSON_Fiscal_Cancelar_Acrescimo_Desconto_Subtotal(bDesconto: Boolean): LongWord; stdcall; external DLL_EPSON; // Cancela acr�scimo ou desconto do subtotal.
function EPSON_Fiscal_Cancelar_Item_Parcial(pszNumeroItem, pszQuantidade: PAnsiChar; dwQuantCasasDecimais: LongWord): LongWord; stdcall; external DLL_EPSON; // Cancela parcialmente um item.
function EPSON_Fiscal_Imprimir_Mensagem(pszLinhaTexto1, pszLinhaTexto2, pszLinhaTexto3, pszLinhaTexto4, pszLinhaTexto5, pszLinhaTexto6, pszLinhaTexto7, pszLinhaTexto8: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Imprime uma linha de texto no cupom fiscal.
function EPSON_Fiscal_Configurar_Codigo_Barras_Mensagem(dwLinha, dwTipo, dwAltura, dwLargura, dwPosicao, dwCaracter: LongWord): LongWord; stdcall; external DLL_EPSON; // Configura c�digo de barras a ser impresso na mensagem promocional.
function EPSON_Fiscal_Fechar_CupomEx(pszTotalCupom: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Fecha o cupom fiscal com pagamento total em dinheiro.
function EPSON_Fiscal_Fechar_Cupom(bCortarPapel, bAdicional: Boolean): LongWord; stdcall; external DLL_EPSON; // Fecha o cupom fiscal atual.
function EPSON_Fiscal_Mensagem_Aplicacao(pszLinha01, pszLinha02: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Imprime informa��es da aplica��o no final do cupom fiscal.

// Grupo do comprovante n�o-fiscal
function EPSON_NaoFiscal_Abrir_Comprovante(pszCNPJ, pszRazaoSocial, pszEndereco1, pszEndereco2: PAnsiChar; dwPosicao: LongWord): LongWord; stdcall; external DLL_EPSON; // Abre um Comprovante N�o-Fiscal.
function EPSON_NaoFiscal_Vender_Item(pszNumeroOperacao, pszValorOperacao: PAnsiChar; dwCasasDecimais: LongWord): LongWord; stdcall; external DLL_EPSON; // Registra um item N�o-Fiscal.
function EPSON_NaoFiscal_Desconto_Acrescimo_Item(pszValor: PAnsiChar; dwCasasDecimais: LongWord; bDesconto, bPercentagem: Boolean): LongWord; stdcall; external DLL_EPSON; // Acr�scimo ou desconto de item.
function EPSON_NaoFiscal_Desconto_Acrescimo_Subtotal(pszValor: PAnsiChar; dwCasasDecimais: LongWord; bDesconto, bPercentagem: Boolean): LongWord; stdcall; external DLL_EPSON; // Acr�scimo ou desconto de subtotal.
function EPSON_NaoFiscal_Pagamento(pszNumeroPagamento, pszValorPagamento: PAnsiChar; dwCasasDecimais: LongWord; pszDescricao1, pszDescricao2: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Processa o pagamento do comprovante.
function EPSON_NaoFiscal_Cancelar_Item(pszItem: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Cancela um item.
function EPSON_NaoFiscal_Cancelar_Ultimo_Item: LongWord; stdcall; external DLL_EPSON; // Cancela o �ltimo item.
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto: Boolean): LongWord; stdcall; external DLL_EPSON; //  Cancela o acr�scimo ou desconto de um item.
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Subtotal(bDesconto: Boolean): LongWord; stdcall; external DLL_EPSON; // Cancela o acr�scimo ou desconto do subtotal.
function EPSON_NaoFiscal_Cancelar_Comprovante: LongWord; stdcall; external DLL_EPSON; // Cancela o �ltimo Comprovante N�o Fiscal.
function EPSON_NaoFiscal_Fechar_Comprovante(bCortarPapel: Boolean): LongWord; stdcall; external DLL_EPSON; // Fecha o Comprovante N�o-Fiscal.
function EPSON_NaoFiscal_Abrir_CCD(pszNumeroPagamento, pszValor: PAnsiChar; dwCasasDecimais: LongWord; pszParcelas: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Abre um Comprovante de Cr�dito ou D�bito.
function EPSON_NaoFiscal_Abrir_Relatorio_Gerencial(pszNumeroRelatorio: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Abre um Relat�rio Gerencial.
function EPSON_NaoFiscal_Imprimir_Linha(pszLinha: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Imprime uma linha de texto.
function EPSON_NaoFiscal_Fechar_CCD(bCortarPapel: Boolean): LongWord; stdcall; external DLL_EPSON; // Fecha o Comprovante de Cr�dito ou D�bito.
function EPSON_NaoFiscal_Fechar_Relatorio_Gerencial(bCortarPapel: Boolean): LongWord; stdcall; external DLL_EPSON; // Fecha o Relat�rio Gerencial.
function EPSON_NaoFiscal_Cancelar_CCD(pszNumeroPagamento, pszValor: PAnsiChar; dwCasasDecimais: LongWord; pszParcelas, pszNumeroCupom: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Cancela o Comprovante de Cr�dito e D�bito.
function EPSON_NaoFiscal_Cancelar_Pagamento(pszFormaPagamento, pszNovaFormaPagamento, pszValor: PAnsiChar; dwCasasDecimais: LongWord): LongWord; stdcall; external DLL_EPSON; // Troca forma de pagamento.
function EPSON_NaoFiscal_Nova_Parcela_CCD: LongWord; stdcall; external DLL_EPSON; // Imprime nova parcela de Cr�dito ou D�bito.
function EPSON_NaoFiscal_Nova_Via_CCD(): LongWord; stdcall; external DLL_EPSON; // Imprime nova via da parcela.
function EPSON_NaoFiscal_Reimprimir_CCD: LongWord; stdcall; external DLL_EPSON; // Reimprime parcela.
function EPSON_NaoFiscal_Sangria(pszValor: PAnsiChar; dwCasasDecimais: LongWord): LongWord; stdcall; external DLL_EPSON; // Retira dinheiro da gaveta.
function EPSON_NaoFiscal_Fundo_Troco(pszValor: PAnsiChar; dwCasasDecimais: LongWord): LongWord; stdcall; external DLL_EPSON; // Adiciona Fundo de Troca � gaveta.
function EPSON_NaoFiscal_Imprimir_Codigo_Barras(dwTipo, dwAltura, dwLargura, dwPosicao, dwCaracter: LongWord; pszCodigo: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Imprime c�digo de barras no cupom.
function EPSON_NaoFiscal_Obter_SubTotal(pszSubTotal: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Esta fun��o retorna o subtotal do cupom.

// Grupo de relat�rios fiscais
function EPSON_RelatorioFiscal_LeituraX: LongWord; stdcall; external DLL_EPSON; // Imprime uma Leitura X.
function EPSON_RelatorioFiscal_RZ(pszData, pszHora: PAnsiChar ; dwHorarioVerao: LongWord; pszCRZ: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Imprime uma Redu��o Z (fechamento da Jornada Fiscal).
function EPSON_RelatorioFiscal_Leitura_MF(pszInicio, pszFim: PAnsiChar; dwTipoImpressao: LongWord; pszBuffer, pszArquivo: PAnsiChar; var pdwTamanhoBuffer: LongWord; dwTamBuffer: LongWord): LongWord; stdcall; external DLL_EPSON; // Imprime uma Leitura da Mem�ria Fiscal ou a recebe pela porta serial.
function EPSON_RelatorioFiscal_Salvar_LeituraX(pszArquivo: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Armazena uma Leitura X em disco.
function EPSON_RelatorioFiscal_Abrir_Dia: LongWord; stdcall; external DLL_EPSON; // Abre a Jornada Fiscal.

// Grupo obter informa��es da impressora
function EPSON_Obter_Dados_Usuario(pszDadosUsuario: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� a data atual.
function EPSON_Obter_Tabela_Aliquotas(pszTabelaAliquotas: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� a tabela de al�quotas.
function EPSON_Obter_Tabela_Pagamentos(pszTabelaPagamentos: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� a tabela de pagamentos
function EPSON_Obter_Tabela_NaoFiscais(pszTabelaNaoFiscais: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� a tabela de totalizadores n�o fiscais
function EPSON_Obter_Tabela_Relatorios_Gerenciais(pszTabelaRelatoriosGerenciais: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� a tabela de relat�rios gerenciais
function EPSON_Obter_Total_Cancelado(pszTotalCancelado: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o valor total cancelado.
function EPSON_Obter_Total_Aliquotas(pszAliquotasTotal: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o somat�rio do total vendido para nas al�quotas de ICMS, ISS e N�o-Fiscais.
function EPSON_Obter_Total_Bruto(pszVendaBruta: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o total bruto vendido no dia.
function EPSON_Obter_Total_Descontos(pszTotalDescontos: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o valor total de descontos.
function EPSON_Obter_Total_Acrescimos(pszTotalAcrescimos: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o valor total de acr�scimos.
function EPSON_Obter_Dados_Impressora(pszDadosImpressora: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� os dados de serializa��o da impressora.
function EPSON_Obter_Cliche_Usuario(pszDadosUsuario: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o nome do usu�rio.
function EPSON_Obter_Data_Hora_Jornada(pszDataHora: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� a data e hora da Jornada Fiscal.
function EPSON_Obter_Numero_ECF_Loja(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� os n�meros da loja e da impressora.
function EPSON_Obter_Hora_Relogio(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� a hora atual.
function EPSON_Obter_Simbolo_Moeda(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o s�mbolo da moeda.
function EPSON_Obter_Casas_Decimais(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� a configura��o de casas decimais.
function EPSON_Obter_Contadores(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o valor dos contadores.
function EPSON_Obter_Estado_Impressora(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o estado atual da impressora.
function EPSON_Obter_GT(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o valor do Grande Total (GT) atual.
function EPSON_Obter_Linhas_Impressas(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o n�mero de linhas impressas.
function EPSON_Obter_Linhas_Impressas_RG(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o n�mero de linhas impressas em Relat�rios Gerenciais.
function EPSON_Obter_Linhas_Impressas_CCD(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o n�mero de linhas impressas em Cupons de Cr�dito ou D�bito.
function EPSON_Obter_Dados_Jornada(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� dados da jornada fiscal atual.
function EPSON_Obter_Caracteres_Linha(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o n�mero de caracteres que a impressora imprime por linha.
function EPSON_Obter_Operador(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� dados do operador atual.
function EPSON_Obter_Numero_Ultimo_Item(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o n�mero do �ltimo item vendido.
function EPSON_Obter_Informacao_Item(pszNumeroItem, pszDadosItem: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� informa��es de um item vendido no Cupom Fiscal.
function EPSON_Obter_Estado_Cupom(pszEstado: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� informa��es do documento atual.
function EPSON_Obter_Informacao_Ultimo_Documento(pszInfo: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� Informa��es do documento anterior.
function EPSON_Obter_Estado_Corte_Papel(bHabilitado: Boolean): LongWord; stdcall; external DLL_EPSON; // L� o estado do corte de papel.
function EPSON_Obter_Linhas_Impressas_Vendas(pszLinhasImpressas: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o total de mensagens de venda impressas.
function EPSON_Obter_Linhas_Impressas_Pagamentos(pszLinhasImpressas: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o total de mensagens de pagamentos impressos.
function EPSON_Obter_Total_Itens_Vendidos(pszItens: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o total de itens vendidos.
function EPSON_Obter_Estado_Memoria_Fiscal(pszEstado: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o tamanho total e o total utilizado da Mem�ria Fiscal.
function EPSON_Obter_Estado_MFD(pszEstado: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o tamanho total e o total utilizado da Mem�ria Fita Detalhe.
function EPSON_Obter_Total_Leituras_X_Impressas(pszLeituras: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o total de Leituras X impressas.
function EPSON_Obter_Estado_Horario_Verao(bEstado: Boolean): LongWord; stdcall; external DLL_EPSON; // L� o estado atual do hor�rio de ver�o.
function EPSON_Obter_Venda_Bruta(pszBrutAmount, pszLastBrutAmount: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Obtem os valores de Venda Bruta da jornada atual e da jornada anterior
function EPSON_Obter_Mensagem_Erro(pszCodigoErro, pszMensagemErro: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Traduz um c�digo de erro para uma mansagem de erro.
function EPSON_Obter_Dados_MF_MFD(pszInicio, pszFinal: PAnsiChar; dwTipoEntrada, dwEspelhos, dwAtoCotepe, dwSintegra: LongWord; pszArquivoSaida: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Esta fun��o gera os seguintes arquivos: Espelhos dos Documentos (Fita-detalhe em meio digital), ATO/COTEPE 17/04 (arquivo de interface utilizado pelo Fisco) e Sintegra.
function EPSON_Obter_Versao_DLL(pszVersao: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� a vers�o da DLL.

// Grupo de configura��o
function EPSON_Config_Aliquota(pszTaxa: PAnsiChar; bTipoISS: Boolean): LongWord; stdcall; external DLL_EPSON; // Adiciona uma al�quota
function EPSON_Config_Relatorio_Gerencial(pszReportDescription: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Adiciona um Relat�rio Gerencial
function EPSON_Config_Forma_Pagamento(bVinculado: Boolean; pszNumeroMeio, pszDescricao: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Adiciona um meio de pagamento
function EPSON_Config_Totalizador_NaoFiscal(pszDescricao: PAnsiChar; var pdwNumeroTotalizador: LongWord): LongWord; stdcall; external DLL_EPSON; // Adiciona um totalizador n�o-fiscal
function EPSON_Config_Horario_Verao: LongWord; stdcall; external DLL_EPSON; // Habilita/desabilita o hor�rio de ver�o
function EPSON_Config_Espaco_Entre_Documentos(pszLinhas: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Configura o n�mero de linhas entre cupons
function EPSON_Config_Espaco_Entre_Linhas(pszEspacos: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Configura o espa�o entre linhas
function EPSON_Config_Logotipo(pszDados: PAnsiChar; dwTamDados: LongWord; pszLinha: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Configura o logotipo do cabe�alho
function EPSON_Config_Habilita_Logotipo(bHabilita: Boolean): LongWord; stdcall; external DLL_EPSON; // Habilita/desabilita impress�o do logotipo do cabe�alho
function EPSON_Config_Operador(pszDados: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Configura o operador
function EPSON_Config_Corte_Papel(bHabilitado: Boolean): LongWord; stdcall; external DLL_EPSON; // Habilita/desabilita corte de papel
function EPSON_Config_Serial_Impressora(pszVelocidade: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Configura a velocidade de comunica��o da impressora

// Grupo do cheque
function EPSON_Cheque_Configurar_Moeda(pszSingular, pszPlural: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Configura o nome da moeda.
function EPSON_Cheque_Configurar_Parametros1(pszNumeroRegistro, pszValorX, pszValorY, pszDescricao1X, pszDescricao1Y, pszDescricao2X, pszDescricao2Y: PAnsiChar): LongWord; stdcall; external DLL_EPSON; //Configura a posi��o de impress�o do valor do cheque, e as duas linhas de descri��o.
function EPSON_Cheque_Configurar_Parametros2(pszNumeroRegistro, pszParaX, pszParaY, pszCidadeX, pszCidadeY, pszOffsetDia, pszOffsetMes, pszOffsetAno, pszAdicionalX, pszAdicionalY: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Configura a posi��o de impress�o do nome, cidade, data e linhas adicionais.
function EPSON_Cheque_Imprimir(pszNumeroRegistro, pszValor: PAnsiChar; dwCasasDecimais: LongWord; pszPara, pszCidade, pszDados, pszTexto: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Imprime os campos do cheque.
function EPSON_Cheque_Preparar_Endosso: LongWord; stdcall; external DLL_EPSON; // Prepara o cheque para impress�o de endosso.
function EPSON_Cheque_Imprimir_Endosso(pszLinhaTexto: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Imprime o texto de endosso.
function EPSON_Cheque_Ejetar_Endosso: LongWord; stdcall; external DLL_EPSON; // Ejeta o cheque.
function EPSON_Cheque_Cancelar_Impressao: LongWord; stdcall; external DLL_EPSON; // Cancela impress�o ou endosso de cheque.
function EPSON_Cheque_Ler_MICR(pszMICR: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // L� o c�digo MICR do cheque.

// Grupo da impressora
function EPSON_Impressora_Abrir_Gaveta: LongWord; stdcall; external DLL_EPSON; // Abre a gaveta
function EPSON_Impressora_Cortar_Papel: LongWord; stdcall; external DLL_EPSON; // Corta papel
function EPSON_Impressora_Avancar_Papel(dwLines: LongWord): LongWord; stdcall; external DLL_EPSON; // Avan�a papel

// Grupo de autentica��o
function EPSON_Autenticar_Imprimir(pszMensagem: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Imprime a autentica��o.
function EPSON_Autenticar_Reimprimir: LongWord; stdcall; external DLL_EPSON; // Reimprime a autentica��o.

// Grupo do display
function EPSON_Display_Enviar_Texto(pszTexto: PAnsiChar): LongWord; stdcall; external DLL_EPSON; // Envia linha de texto para o display conectado � impressora fiscal
function EPSON_Display_Cursor(dwAcao, dwColuna, dwLinha: LongWord): LongWord; stdcall; external DLL_EPSON; // Posiciona e configura as propriedades do cursor no display
function EPSON_Display_Apagar_Texto(dwLinha: LongWord): LongWord; stdcall; external DLL_EPSON; // Apaga linha de texto do display
function EPSON_Display_Configurar(dwBrilho, dwLampejo, dwRolagem: LongWord): LongWord; stdcall; external DLL_EPSON; // Configura as prefer�ncias de visualiza��o do display
function EPSON_Display_Inicializar(dwAcao: LongWord): LongWord; stdcall; external DLL_EPSON; // Inicializa e executa teste de diagn�stico no display

// Grupo de fun��es de sistema
function EPSON_Sys_Informar_Handle_Janela(hHandle: HWND): LongWord; stdcall; external DLL_EPSON; // Configura o ponteiro para a janela da aplica��o
function EPSON_Sys_Atualizar_Janela: LongWord; stdcall; external DLL_EPSON; // Redesenha a janela da aplica��o
function EPSON_Sys_Aguardar_Arquivo(pszArquivo: PAnsiChar; dwTimeout: LongWord; bBloqueiaEntradas, bSincrono: Boolean): LongWord; stdcall; external DLL_EPSON; // Aguarda a condi��o de exist�ncia de um arquivo.
function EPSON_Sys_Bloquear_Entradas(bBloqueiaEntradas: Boolean): LongWord; stdcall; external DLL_EPSON; // Bloqueia entradas de comandos do teclado e mouse.
function EPSON_Sys_Log(pszPath: PAnsiChar; dwAction: LongWord): LongWord; stdcall; external DLL_EPSON; // Configura propriedades de grava��o do Log de opera��es


{===============================================================================
********************************************************************************

                      DECLARA��O DAS FUN��ES DA BEMAFI32.DLL

********************************************************************************
===============================================================================}

// Fun��es de Inicializa��o 

function Bematech_FI_AlteraSimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NomeiaDepartamento( Indice: Integer; Departamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaArredondamento: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaTruncamento: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento'; 
function Bematech_FI_LinhasEntreCupons( Linhas: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EspacoEntreLinhas( Dots: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ForcaImpactoAgulhas( ForcaImpacto: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaModoTEF: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FinalizaModoTEF: Integer; StdCall; External 'BEMAFI32.DLL';



// Fun��es do Cupom Fiscal 

function Bematech_FI_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FechaCupomResumido( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ResetaImpressora: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EfetuaFormaPagamentoDescricaoForma( FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EstornoFormasPagamento( FormaOrigem: String; FormaDestino: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UsaUnidadeMedida( UnidadeMedida: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AumentaDescricaoItem( Descricao: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoImpAntiga( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es dos Relat�rios Fiscais 

function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ; 
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es das Opera��es N�o Fiscais 

function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Informa��es da Impressora 

function Bematech_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraXSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VersaoFirmware( VersaoFirmware: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CGC_IE( CGC: String; IE: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Cancelamentos( ValorCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Descontos( ValorDescontos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCuponsCancelados( NumeroCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroIntervencoes( NumeroIntervencoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroReducoes( NumeroReducoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroSubstituicoesProprietario( NumeroSubstituicoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ClicheProprietario( Cliche: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroLoja( NumeroLoja: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_SimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MinutosLigada( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MinutosImprimindo( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorPagoUltimoCupom( ValorCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ContadoresTotalizadoresNaoFiscais( Contadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataMovimento( Data: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTruncamento( Flag: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Acrescimos( ValorAcrescimos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ContadorBilhetePassagem( ContadorPassagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaDepartamentos( Departamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DadosUltimaReducao( DadosReducao: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MonitoramentoPapel( Var Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorFormaPagamento( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorTotalizadorNaoFiscal( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Autentica��o e Gaveta de Dinheiro 

function Bematech_FI_Autenticacao:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao'; 
function Bematech_FI_ProgramaCaracterAutenticacao( Parametros: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta'; 
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es para a Impressora Restaurante

function Bematech_FIR_AbreCupomRestaurante( Mesa: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RegistraVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_CancelaVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ConferenciaMesa( Mesa: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_AbreConferenciaMesa( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaConferenciaMesa( FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_TransferenciaMesa( MesaOrigem: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ContaDividida( NumeroCupons: String; ValorPago: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomContaDividida( NumeroCupons: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; FormasPagamento: String; ValorFormasPagamento: String; ValorPagoCliente: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_TransferenciaItem( MesaOrigem: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RelatorioMesasAbertas( TipoRelatorio: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ImprimeCardapio: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RelatorioMesasAbertasSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_CardapioPelaSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RegistroVendaSerial( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_VerificaMemoriaLivre( Bytes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomRestaurante( FormaPagamento: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorFormaPagto: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomResumidoRestaurante( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��o para a Impressora Bilhete de Passagem 

function Bematech_FI_AbreBilhetePassagem( ImprimeValorFinal: string; ImprimeEnfatizado: string; Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string; Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Impress�o de Cheques 

function Bematech_FI_ProgramaMoedaSingular( MoedaSingular: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaMoedaPlural( MoedaPlural: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaImpressaoCheque: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaStatusCheque( Var StatusCheque: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCopiaCheque: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque'; 

// Outras Fun��es 

function Bematech_FI_AbrePortaSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FechaPortaSerial: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechaPortaSerial'; 
function Bematech_FI_MapaResumo:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo'; 
function Bematech_FI_AberturaDoDia( ValorCompra: string; FormaPagamento: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechamentoDoDia: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
function Bematech_FI_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
function Bematech_FI_ImprimeDepartamentos: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeDepartamentos';
function Bematech_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_VerificaImpressoraLigada: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';
//function Bematech_FI_DadosSintegra( DataInicial: string; DataFinal: string ): integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es da Impressora Fiscal MFD

function Bematech_FI_AbreCupomMFD(CGC: string; Nome: string; Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupomMFD(CGC, Nome, Endereco: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: String) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoMFD(FormaPagamento, ValorFormaPagamento, Parcelas, DescricaoFormaPagto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CupomAdicionalMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoItemMFD (Item, AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimoDesconto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioGerencialMFD (Indice, Descricao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AutenticacaoMFD(Linhas, Texto : string) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculadoMFD(FormaPagamento, Valor, NumeroCupom, CGC, nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReimpressaoNaoFiscalVinculadoMFD() : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaRecebimentoNaoFiscalMFD(IndiceTotalizador, ValorRecebimento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupomMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoRecebimentoNaoFiscalMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRecebimentoNaoFiscalMFD(Mensagem : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRelatorioGerencialMFD(Indice : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaRelatorioGerencialMFD(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaRelatorioGerencialMFDTEF(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoNaoFiscalVinculadoMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMFD(NumeroSerie : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmwareMFD(VersaoFirmware : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CNPJMFD(CNPJ : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoEstadualMFD(InscricaoEstadual : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoMunicipalMFD(InscricaoMunicipal : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoOperacionalMFD(TempoOperacional : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosEmitindoDocumentosFiscaisMFD(Minutos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscaisMFD(Contadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamentoMFD(FormasPagamento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscalMFD(Recebimentos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRelatorioGerencialMFD(Relatorios : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorComprovantesCreditoMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorRelatoriosGerenciaisMFD (Relatorios : String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorCupomFiscalMFD(CuponsEmitidos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorFitaDetalheMFD(ContadorFita : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMemoriaMFD(NumeroSerieMFD : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReducoesRestantesMFD(Reducoes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducaoMFD(DadosReducao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraChequeMFD(CodigoCMC7 : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeChequeMFD(NumeroBanco, Valor, Favorecido, Cidade, Data, Mensagem, ImpressaoVerso, Linhas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD(var ACK, ST1, ST2, ST3 : Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreBilhetePassagemMFD(Embarque, Destino, Linha, Agencia, Data, Hora, Poltrona, Plataforma, TipoPassagem: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoItemMFD( cFlag, cItem: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TamanhoTotalMFD( cTamanhoMFD: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalRecebimentoMFD( cFlag, cTipo, cValor: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalMFD( cFlag, cTipo, cValor: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalMFD( cFlag: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalRecebimentoMFD( cFlag: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_PercentualLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraUltimoDocumentoMFD( cDataHora: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumoMFD:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumoMFD';
function Bematech_FI_RelatorioTipo60AnaliticoMFD: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60AnaliticoMFD';
function Bematech_FI_ValorFormaPagamentoMFD( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorTotalizadorNaoFiscalMFD( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioSintegraMFD( iRelatorios : Integer; 
                                           cArquivo    : String;
                                           cMes        : String; 
                                           cAno        : String; 
                                           cRazaoSocial: String;
                                           cEndereco   : String;
                                           cNumero     : String;
                                           cComplemento: String;
                                           cBairro     : String;
                                           cCidade     : String;
                                           cCEP        : String;
                                           cTelefone   : String;
                                           cFax        : String;
                                           cContato    : String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMF( Arquivo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RegistrosTipo60: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RegistrosTipo60';
function Bematech_FI_FormatoDadosMFD( ArquivoOrigem   : String;
                                      ArquivoDestino  : String;
                                      TipoFormato     : String;
                                      TipoDownload    : String;
                                      ParametroInicial: String;
                                      ParametroFinal  : String;
                                      UsuarioECF      : String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es dispon�veis somente na impressora fiscal MP-2000 TH FI vers�o 01.00.02
function Bematech_FI_AtivaDesativaVendaUmaLinhaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaAlinhamentoEsquerdaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaCorteProximoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaTratamentoONOFFLineMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_StatusEstendidoMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFlagCorteMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoRestanteComprovanteMFD( cTempo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UFProprietarioMFD( cUF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotalUltimaReducaoMFD( cGT: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimentoUltimaReducaoMFD( cData: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalComprovanteNaoFiscalMFD( cSubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimCOOsMFD( cCOOIni, cCOOFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimGTsMFD( cGTIni, cGTFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es para a impress�o de C�digo de Barras

function Bematech_FI_TerminaFechamentoCupomCodigoBarrasMFD( cMensagem: string;
                                                            cTipoCodigo: string;
                                                            cCodigo: string;
                                                            iAltura: integer;
                                                            iLargura: integer;
                                                            iPosicaoCaracteres: integer;
                                                            iFonte: integer;
                                                            iMargem: integer;
                                                            iCorrecaoErros: integer;
                                                            iColunas: integer ): Integer; StdCall; External 'BEMAFI32.DLL';

{ Fim da Declara��o }
type
   TECF = class
   Suprimir_msn: Boolean;
   function Analisa: Boolean;
   function Retorno_Impressora: Boolean;
   function Abre_cupom(Serie: String): Boolean;
   function Vende_item(Cod1, Nome1, Cod_cliente: string; Qtd1, Vlr1, Desc1: Real; Produto_temp: Boolean=False): Boolean;
   function Fecha_cupom(Forma_pgt, Cod_venda, Cod_vendedor, Nome_vendedor:String; vlr_prod_liquid, Vlr_Acr_Desc:Real; Venda_a_prazo, V_simples: Boolean; V_balcao: Boolean=False):String;
   function Arq_Tef(aEnd,NumCupom1,FormaPgto,CodPgt,msnPromocional: String; ValorFinal, vlrDesconto: Real): Boolean;
   function EPSON_Numero_cupom(Var pNum: String): Integer;
   procedure EPSON_Processa_Estado(Var Estado: String);
   function Mensagem_daruma(Codigo: String): String;
   constructor Create;
  private
    { Private declarations }
    Str_ErroExtendido   : String;
    Int_Retorno: integer;
    Int_RetornoMetodo: integer;
    Int_ErroExtendido:integer;
  public
    { Public declarations }
    Executa: Integer;
    Papel: Boolean;
  end;

var
   bRetornoEstendido: Boolean;
   //ECF: TECF;
   Parametro: TParametros_Venda;
   TextoTEF: String;


implementation

uses  uEst002, uGlobal, uDmPrincipal, unFuncoesTEF, uBandeiras, uDaruma,
  DB, udmProgs;

function TECF.Abre_cupom(Serie: String): Boolean;
begin
   Try
      //ECF := TECF.Create;
      Parametro  := TParametros_Venda.Create;

      Result := True; // Fecha formul�rio caso n�o abra o cupom
      if (Serie = 'CF') or (copy(Serie,1,1) = 'E') then
      begin
         if ModeloEcf1 <> '' then
         begin
            if Application.MessageBox('Confirma a abertura do cupom fiscal?','Confirma��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = id_yes then
            begin
               Result := False;
               case StrToInt(ModeloEcf1) of
                  1: // Bematech
                  begin
                     Executa := Bematech_FI_AbreCupom( Pchar( '' ) );
                     if not Analisa then
                        Result := True;
                  end;
                  2: // Epson
                  begin
                     EPSON_RelatorioFiscal_Abrir_Dia;

                     Executa := EPSON_Fiscal_Abrir_Cupom('','','','',1);
                     if not Analisa then
                        Result := True;
                  end;
                  5: // Daruma
                  begin
                     Executa := Daruma_FI_AbreCupom( pchar( '' ) );
                     if not analisa then
                        Result := True;
                  end
                  else
                     Application.MessageBox('Modelo de ECF informado nos par�metros n�o � v�lido. Verifique.','Aten��o', MB_OK + MB_ICONINFORMATION);
               end;
            end
            else
               Result := True;
         end
         else
            Application.MessageBox('Modelo de ECF n�o informado nos par�metros.','Aten��o', MB_OK + MB_ICONINFORMATION);
      end
      else
         Result := False;
   finally
      //FreeAndNil(ECF);
      FreeAndNil(Parametro);
   end;
end;

function TECF.Analisa;
var
   MsnErro, Exec: String;
Begin
   case StrToInt(ModeloEcf1) of
      1:
      begin
         if not Suprimir_msn then
         begin
            if Executa < 1 then
               Bematech_FI_FinalizaModoTEF;

            if Executa = 0 then
               Application.MessageBox( 'Erro de Comunica��o !', 'Erro',MB_IconError + MB_OK);

            If Executa = -1 Then
               Application.MessageBox( 'Erro de Execu��o na Fun��o. Verifique!', 'Erro', MB_IconError + MB_OK);

            if Executa = -2  then
               Application.MessageBox( 'Par�metro Inv�lido !', 'Erro',MB_IconError + MB_OK);

            if Executa = -3  then
               Application.MessageBox( 'Al�quota n�o programada !', 'Aten��o',MB_IconInformation + MB_OK);

            If Executa = -4 Then
               Application.MessageBox( 'Arquivo BemaFI32.INI n�o encontrado. Verifique!', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            If Executa = -5 Then
               Application.MessageBox( 'Erro ao Abrir a Porta de Comunica��o', 'Erro',
                                         MB_IconError + MB_OK);

            If Executa = -6 Then
               Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            If Executa = -7 Then
               Application.MessageBox( 'Banco N�o Cadastrado no Arquivo BemaFI32.ini', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            If Executa = -8 Then
               Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                         MB_IconError + MB_OK);

            if Executa = -18 then
               Application.MessageBox( 'N�o foi poss�vel abrir arquivo INTPOS.001 !', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            if Executa = -19 then
               Application.MessageBox( 'Par�metro diferentes !', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            if Executa = -20 then
               Application.MessageBox( 'Transa��o cancelada pelo Operador !', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            if Executa = -21 then
               Application.MessageBox( 'A Transa��o n�o foi aprovada !', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            if Executa = -22 then
               Application.MessageBox( 'N�o foi poss�vel terminal a Impress�o !', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            if Executa = -23 then
               Application.MessageBox( 'N�o foi poss�vel terminal a Opera��o !', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            if Executa = -24 then
               Application.MessageBox( 'Forma de pagamento n�o programada.', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            if Executa = -25 then
               Application.MessageBox( 'Totalizador n�o fiscal n�o programado.', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            if Executa = -26 then
               Application.MessageBox( 'Transa��o j� Efetuada !', 'Aten��o',
                                         MB_IconInformation + MB_OK);

            if Executa = -28 then
               Application.MessageBox( 'N�o h� Informa��es para serem Impressas !', 'Aten��o',
                                         MB_IconInformation + MB_OK);
         end;
      end;
      2:
      begin
         //if Executa > 0 then
         //begin
            EPSON_Processa_Estado(Exec);

            if UpperCase(Exec) = '0001' then MsnErro := 'Erro interno' else
            if UpperCase(Exec) = '0002' then MsnErro := 'Erro de inicia��o do equipamento' else
            if UpperCase(Exec) = '0003' then MsnErro := 'Erro de processo interno' else
            if UpperCase(Exec) = '0101' then MsnErro := 'Comando inv�lido para o estado atual' else
            if UpperCase(Exec) = '0102' then MsnErro := 'Comando inv�lido para o documento atual' else
            if UpperCase(Exec) = '0106' then MsnErro := 'Comando aceito apenas fora de interven��o' else
            if UpperCase(Exec) = '0107' then MsnErro := 'Comando aceito apenas dentro de interven��o' else
            if UpperCase(Exec) = '0108' then MsnErro := 'Comando inv�lido durante processo de scan' else
            if UpperCase(Exec) = '0109' then MsnErro := 'Excesso de interven��es' else
            if UpperCase(Exec) = '0201' then MsnErro := 'Comando com frame inv�lido' else
            if UpperCase(Exec) = '0202' then MsnErro := 'Comando inv�lido' else
            if UpperCase(Exec) = '0203' then MsnErro := 'Campos em excesso' else
            if UpperCase(Exec) = '0204' then MsnErro := 'Campos em falta' else
            if UpperCase(Exec) = '0205' then MsnErro := 'Campo n�o opcional' else
            if UpperCase(Exec) = '0206' then MsnErro := 'Campo alfanum�rico inv�lido' else
            if UpperCase(Exec) = '0207' then MsnErro := 'Campo alfab�tico inv�lido' else
            if UpperCase(Exec) = '0208' then MsnErro := 'Campo num�rico inv�lido' else
            if UpperCase(Exec) = '0209' then MsnErro := 'Campo bin�rio inv�lido' else
            if UpperCase(Exec) = '020A' then MsnErro := 'Campo imprim�vel inv�lido' else
            if UpperCase(Exec) = '020B' then MsnErro := 'Campo hexadecimal inv�lido' else
            if UpperCase(Exec) = '020C' then MsnErro := 'Campo data inv�lido' else
            if UpperCase(Exec) = '020D' then MsnErro := 'Campo hora inv�lido' else
            if UpperCase(Exec) = '020E' then MsnErro := 'Campo com atributos de impress�o inv�lidos' else
            if UpperCase(Exec) = '020F' then MsnErro := 'Campo booleano inv�lido' else
            if UpperCase(Exec) = '0210' then MsnErro := 'Campo com tamanho inv�lido' else
            if UpperCase(Exec) = '0211' then MsnErro := 'Extens�o de comando inv�lida' else
            if UpperCase(Exec) = '0212' then MsnErro := 'C�digo de barra n�o permitido' else
            if UpperCase(Exec) = '0213' then MsnErro := 'Atributos de impress�o n�o permitidos' else
            if UpperCase(Exec) = '0214' then MsnErro := 'Atributos de impress�o inv�lidos' else
            if UpperCase(Exec) = '0215' then MsnErro := 'C�digo de barras incorretamente definido' else
            if UpperCase(Exec) = '0217' then MsnErro := 'Comando invalido para a porta selecionada' else
            if UpperCase(Exec) = '0301' then MsnErro := 'Erro de hardware' else
            if UpperCase(Exec) = '0302' then MsnErro := 'Impressora n�o est� pronta' else
            if UpperCase(Exec) = '0303' then MsnErro := 'Erro de Impress�o' else
            if UpperCase(Exec) = '0304' then MsnErro := 'Falta de papel' else
            if UpperCase(Exec) = '0305' then MsnErro := 'Pouco papel dispon�vel' else
            if UpperCase(Exec) = '0306' then MsnErro := 'Erro em carga ou expuls�o do papel' else
            if UpperCase(Exec) = '0307' then MsnErro := 'Caracter�stica n�o suportada pela impressora' else
            if UpperCase(Exec) = '0308' then MsnErro := 'Erro de display' else
            if UpperCase(Exec) = '0309' then MsnErro := 'Seq��ncia de scan inv�lida' else
            if UpperCase(Exec) = '030A' then MsnErro := 'N�mero de �rea de recorte inv�lido' else
            if UpperCase(Exec) = '030B' then MsnErro := 'Scanner n�o preparado' else
            if UpperCase(Exec) = '030C' then MsnErro := 'Qualidade de Logotipo n�o suportada pela impressora' else
            if UpperCase(Exec) = '030E' then MsnErro := 'Erro de leitura do microc�digo' else
            if UpperCase(Exec) = '0401' then MsnErro := 'N�mero de s�rie inv�lido' else
            if UpperCase(Exec) = '0402' then MsnErro := 'Requer dados de fiscaliza��o j� configurados' else
            if UpperCase(Exec) = '0501' then MsnErro := 'Data / Hora n�o configurada' else
            if UpperCase(Exec) = '0502' then MsnErro := 'Data inv�lida' else
            if UpperCase(Exec) = '0503' then MsnErro := 'Data em intervalo inv�lido' else
            if UpperCase(Exec) = '0504' then MsnErro := 'Nome operador inv�lido' else
            if UpperCase(Exec) = '0505' then MsnErro := 'N�mero de caixa inv�lido' else
            if UpperCase(Exec) = '0508' then MsnErro := 'Dados de Cabe�alho ou rodap� inv�lidos' else
            if UpperCase(Exec) = '0509' then MsnErro := 'Excesso de fiscaliza��o' else
            if UpperCase(Exec) = '050C' then MsnErro := 'N�mero m�ximo de meios de pagamento j� definidos' else
            if UpperCase(Exec) = '050D' then MsnErro := 'Meio de pagamento j� definido' else
            if UpperCase(Exec) = '050E' then MsnErro := 'Meio de pagamento inv�lido' else
            if UpperCase(Exec) = '050F' then MsnErro := 'Descri��o do meio de pagamento inv�lido' else
            if UpperCase(Exec) = '0510' then MsnErro := 'Valor m�ximo de desconto inv�lido' else
            if UpperCase(Exec) = '0513' then MsnErro := 'Logotipo do usu�rio inv�lido' else
            if UpperCase(Exec) = '0514' then MsnErro := 'Seq��ncia de logotipo inv�lido' else
            if UpperCase(Exec) = '0515' then MsnErro := 'Configura��o de display inv�lida' else
            if UpperCase(Exec) = '0516' then MsnErro := 'Dados do MICR inv�lidos' else
            if UpperCase(Exec) = '0517' then MsnErro := 'Campo de endere�o inv�lido' else
            if UpperCase(Exec) = '0518' then MsnErro := 'Nome da loja n�o definido' else
            if UpperCase(Exec) = '0519' then MsnErro := 'Dados fiscais n�o definidos' else
            if UpperCase(Exec) = '051A' then MsnErro := 'N�mero seq�encial do ECF inv�lido' else
            if UpperCase(Exec) = '051B' then MsnErro := 'Simbologia do GT inv�lida, devem ser todos diferentes' else
            if UpperCase(Exec) = '051C' then MsnErro := 'N�mero de CNPJ inv�lido' else
            if UpperCase(Exec) = '051D' then MsnErro := 'Senha de fiscaliza��o inv�lida' else
            if UpperCase(Exec) = '051E' then MsnErro := '�ltimo documento deve ser uma redu��o Z' else
            if UpperCase(Exec) = '051F' then MsnErro := 'S�mbolo da moeda igual ao atualmente cadastrado' else
            if UpperCase(Exec) = '0520' then MsnErro := 'Identifica��o da al�quota n�o cadastrada' else
            if UpperCase(Exec) = '0521' then MsnErro := 'Al�quota n�o cadastrada' else
            if UpperCase(Exec) = '0601' then MsnErro := 'Mem�ria de Fita-detalhe esgotada' else
            if UpperCase(Exec) = '0605' then MsnErro := 'N�mero de s�rie invalido para a Mem�ria de Fita-detalhe' else
            if UpperCase(Exec) = '0606' then MsnErro := 'Mem�ria de Fita-detalhe n�o iniciada' else
            if UpperCase(Exec) = '0607' then MsnErro := 'Mem�ria de Fita-detalhe n�o pode estar iniciada' else
            if UpperCase(Exec) = '0608' then MsnErro := 'N�mero de s�rie da Mem�ria de Fita-detalhe n�o confere' else
            if UpperCase(Exec) = '0609' then MsnErro := 'Erro Interno na Mem�ria de Fita-detalhe' else
            if UpperCase(Exec) = '0701' then MsnErro := 'Valor inv�lido para o n�mero do registro' else
            if UpperCase(Exec) = '0702' then MsnErro := 'Valor inv�lido para o n�mero do item' else
            if UpperCase(Exec) = '0703' then MsnErro := 'Intervalo inv�lido para a leitura da MFD' else
            if UpperCase(Exec) = '0704' then MsnErro := 'N�mero de usu�rio inv�lido para MFD' else
            if UpperCase(Exec) = '0801' then MsnErro := 'Comando inv�lido com jornada fiscal fechada' else
            if UpperCase(Exec) = '0802' then MsnErro := 'Comando inv�lido com jornada fiscal aberta' else
            if UpperCase(Exec) = '0803' then MsnErro := 'Mem�ria Fiscal esgotada' else
            if UpperCase(Exec) = '0804' then MsnErro := 'Jornada fiscal deve ser fechada' else
            if UpperCase(Exec) = '0805' then MsnErro := 'N�o h� meios de pagamento definidos' else
            if UpperCase(Exec) = '0806' then MsnErro := 'Excesso de meios de pagamento utilizados na jornada fiscal' else
            if UpperCase(Exec) = '0807' then MsnErro := 'Jornada fiscal sem movimento de vendas' else
            if UpperCase(Exec) = '0808' then MsnErro := 'Intervalo de jornada fiscal inv�lido' else
            if UpperCase(Exec) = '0809' then MsnErro := 'Existem mais dados para serem lidos' else
            if UpperCase(Exec) = '080A' then MsnErro := 'N�o existem mais dados para serem lidos' else
            if UpperCase(Exec) = '080B' then MsnErro := 'N�o pode abrir jornada fiscal' else
            if UpperCase(Exec) = '080C' then MsnErro := 'N�o pode fechar jornada fiscal' else
            if UpperCase(Exec) = '080D' then MsnErro := 'Limite m�ximo do per�odo fiscal atingido' else
            if UpperCase(Exec) = '080E' then MsnErro := 'Limite m�ximo do per�odo fiscal n�o atingido' else
            if UpperCase(Exec) = '080F' then MsnErro := 'Abertura da jornada fiscal n�o permitida' else
            if UpperCase(Exec) = '0901' then MsnErro := 'Valor muito grande' else
            if UpperCase(Exec) = '0902' then MsnErro := 'Valor muito pequeno' else
            if UpperCase(Exec) = '0903' then MsnErro := 'Itens em excesso' else
            if UpperCase(Exec) = '0904' then MsnErro := 'Al�quotas em excesso' else
            if UpperCase(Exec) = '0905' then MsnErro := 'Desconto ou acr�scimos em excesso' else
            if UpperCase(Exec) = '0906' then MsnErro := 'Meios de pagamento em excesso' else
            if UpperCase(Exec) = '0907' then MsnErro := 'Item n�o encontrado' else
            if UpperCase(Exec) = '0908' then MsnErro := 'Meio de pagamento n�o encontrado' else
            if UpperCase(Exec) = '0909' then MsnErro := 'Total nulo' else
            if UpperCase(Exec) = '090C' then MsnErro := 'Tipo de pagamento n�o definido' else
            if UpperCase(Exec) = '090F' then MsnErro := 'Al�quota n�o encontrada' else
            if UpperCase(Exec) = '0910' then MsnErro := 'Al�quota inv�lida' else
            if UpperCase(Exec) = '0911' then MsnErro := 'Excesso de meios de pagamento com CDC' else
            if UpperCase(Exec) = '0912' then MsnErro := 'Meio de pagamento com CDC j� emitido' else
            if UpperCase(Exec) = '0913' then MsnErro := 'Meio de pagamento com CDC ainda n�o emitido' else
            if UpperCase(Exec) = '0914' then MsnErro := 'Leitura da Mem�ria Fiscal � intervalo CRZ inv�lido' else
            if UpperCase(Exec) = '0915' then MsnErro := 'Leitura da Mem�ria Fiscal � intervalo de data inv�lido' else
            if UpperCase(Exec) = '0A01' then MsnErro := 'Opera��o n�o permitida ap�s desconto / acr�scimo' else
            if UpperCase(Exec) = '0A02' then MsnErro := 'Opera��o n�o permitida ap�s registro de pagamentos' else
            if UpperCase(Exec) = '0A03' then MsnErro := 'Tipo de item inv�lido' else
            if UpperCase(Exec) = '0A04' then MsnErro := 'Linha de descri��o em branco' else
            if UpperCase(Exec) = '0A05' then MsnErro := 'Quantidade muito pequena' else
            if UpperCase(Exec) = '0A06' then MsnErro := 'Quantidade muito grande' else
            if UpperCase(Exec) = '0A07' then MsnErro := 'Total do item com valor muito alto' else
            if UpperCase(Exec) = '0A08' then MsnErro := 'Opera��o n�o permitida antes do registro de pagamentos' else
            if UpperCase(Exec) = '0A09' then MsnErro := 'Registro de pagamento incompleto' else
            if UpperCase(Exec) = '0A0A' then MsnErro := 'Registro de pagamento finalizado' else
            if UpperCase(Exec) = '0A0B' then MsnErro := 'Valor pago inv�lido' else
            if UpperCase(Exec) = '0A0C' then MsnErro := 'Valor de desconto ou acr�scimo n�o permitido' else
            if UpperCase(Exec) = '0A0E' then MsnErro := 'Valor n�o pode ser zero' else
            if UpperCase(Exec) = '0A0F' then MsnErro := 'Opera��o n�o permitida antes do registro de itens' else
            if UpperCase(Exec) = '0A11' then MsnErro := 'Cancelamento de desconto e acr�scimo somente para item atual' else
            if UpperCase(Exec) = '0A12' then MsnErro := 'N�o foi poss�vel cancelar �ltimo Cupom Fiscal' else
            if UpperCase(Exec) = '0A13' then MsnErro := '�ltimo Cupom Fiscal n�o encontrado' else
            if UpperCase(Exec) = '0A14' then MsnErro := '�ltimo Comprovante N�o-Fiscal n�o encontrado' else
            if UpperCase(Exec) = '0A15' then MsnErro := 'Cancelamento de CDC necess�ria' else
            if UpperCase(Exec) = '0A16' then MsnErro := 'N�mero de item em Cupom Fiscal inv�lido' else
            if UpperCase(Exec) = '0A17' then MsnErro := 'Opera��o somente permitida ap�s subtotaliza��o' else
            if UpperCase(Exec) = '0A18' then MsnErro := 'Opera��o somente permitida durante a venda de itens' else
            if UpperCase(Exec) = '0A19' then MsnErro := 'Opera��o n�o permitida em item com desconto ou acr�scimo' else
            if UpperCase(Exec) = '0A1A' then MsnErro := 'D�gitos de quantidade inv�lidos' else
            if UpperCase(Exec) = '0A1B' then MsnErro := 'D�gitos de valor unit�rio inv�lido' else
            if UpperCase(Exec) = '0A1C' then MsnErro := 'N�o h� desconto ou acr�scimo a cancelar' else
            if UpperCase(Exec) = '0A1D' then MsnErro := 'N�o h� item para cancelar' else
            if UpperCase(Exec) = '0A1E' then MsnErro := 'Desconto ou acr�scimo somente no item atual' else
            if UpperCase(Exec) = '0A1F' then MsnErro := 'Desconto ou acr�scimo j� efetuado' else
            if UpperCase(Exec) = '0A20' then MsnErro := 'Desconto ou acr�scimo nulo n�o permitido' else
            if UpperCase(Exec) = '0A21' then MsnErro := 'Valor unit�rio inv�lido' else
            if UpperCase(Exec) = '0A22' then MsnErro := 'Quantidade inv�lida' else
            if UpperCase(Exec) = '0A23' then MsnErro := 'C�digo de item inv�lido' else
            if UpperCase(Exec) = '0A24' then MsnErro := 'Descri��o inv�lida' else
            if UpperCase(Exec) = '0A25' then MsnErro := 'Opera��o de desconto ou acr�scimo n�o permitida' else
            if UpperCase(Exec) = '0A26' then MsnErro := 'Mensagem promocional j� impressa' else
            if UpperCase(Exec) = '0A27' then MsnErro := 'Mensagem promocional n�o pode ser impressa' else
            if UpperCase(Exec) = '0A28' then MsnErro := 'Dados do consumidor j� impresso' else
            if UpperCase(Exec) = '0A29' then MsnErro := 'Dados do consumidor somente no fim do documento' else
            if UpperCase(Exec) = '0A2A' then MsnErro := 'Dados do consumidor somente no inicio do documento' else
            if UpperCase(Exec) = '0A2B' then MsnErro := 'Comando Inv�lido para o item' else
            if UpperCase(Exec) = '0E01' then MsnErro := 'N�mero de linhas em documento excedido' else
            if UpperCase(Exec) = '0E02' then MsnErro := 'N�mero do relat�rio inv�lido' else
            if UpperCase(Exec) = '0E03' then MsnErro := 'Opera��o n�o permitida ap�s registro de itens' else
            if UpperCase(Exec) = '0E04' then MsnErro := 'Registro de valor nulo n�o permitido' else
            if UpperCase(Exec) = '0E05' then MsnErro := 'N�o h� desconto a cancelar' else
            if UpperCase(Exec) = '0E06' then MsnErro := 'N�o h� acr�scimo a cancelar' else
            if UpperCase(Exec) = '0E07' then MsnErro := 'Opera��o somente permitida ap�s subtotaliza��o' else
            if UpperCase(Exec) = '0E08' then MsnErro := 'Opera��o somente permitida durante registro de itens' else
            if UpperCase(Exec) = '0E09' then MsnErro := 'Opera��o n�o-fiscal inv�lida' else
            if UpperCase(Exec) = '0E0A' then MsnErro := '�ltimo comprovante N�o-Fiscal n�o encontrado' else
            if UpperCase(Exec) = '0E0B' then MsnErro := 'Meio de pagamento n�o encontrado' else
            if UpperCase(Exec) = '0E0C' then MsnErro := 'N�o foi poss�vel imprimir nova via' else
            if UpperCase(Exec) = '0E0D' then MsnErro := 'N�o foi poss�vel realizar reimpress�o' else
            if UpperCase(Exec) = '0E0E' then MsnErro := 'N�o foi poss�vel imprimir nova parcela' else
            if UpperCase(Exec) = '0E0F' then MsnErro := 'N�o h� mais parcelas a imprimir' else
            if UpperCase(Exec) = '0E10' then MsnErro := 'Registro de item N�o-Fiscal inv�lido' else
            if UpperCase(Exec) = '0E11' then MsnErro := 'Desconto ou acr�scimo j� efetuado' else
            if UpperCase(Exec) = '0E12' then MsnErro := 'Valor de desconto ou acr�scimo inv�lido' else
            if UpperCase(Exec) = '0E13' then MsnErro := 'N�o foi poss�vel cancelar o item' else
            if UpperCase(Exec) = '0E14' then MsnErro := 'Itens em excesso' else
            if UpperCase(Exec) = '0E15' then MsnErro := 'Opera��o N�o-Fiscal n�o cadastrada' else
            if UpperCase(Exec) = '0E16' then MsnErro := 'Excesso de relat�rios / opera��es n�o-fiscais cadastradas' else
            if UpperCase(Exec) = '0E17' then MsnErro := 'Relat�rio n�o encontrado' else
            if UpperCase(Exec) = '0E18' then MsnErro := 'Comando n�o permitido' else
            if UpperCase(Exec) = '0E19' then MsnErro := 'Comando n�o permitido em opera��es n�o-fiscais para movimento de monet�rio' else
            if UpperCase(Exec) = '0E1A' then MsnErro := 'Comando permitido apenas em opera��es n�o-fiscais para' else
            if UpperCase(Exec) = '0E1B' then MsnErro := 'N�mero de parcelas inv�lido para a emiss�o de CCD' else
            if UpperCase(Exec) = '0E1C' then MsnErro := 'Opera��o n�o fiscal j� cadastrada' else
            if UpperCase(Exec) = '0E1D' then MsnErro := 'Relat�rio gerencial j� cadastrado' else
            if UpperCase(Exec) = '0E1E' then MsnErro := 'Relat�rio Gerencial Inv�lido' else
            if UpperCase(Exec) = '3001' then MsnErro := 'Configura��o de cheque n�o registrada' else
            if UpperCase(Exec) = '3002' then MsnErro := 'Configura��o de cheque n�o encontrada' else
            if UpperCase(Exec) = '3003' then MsnErro := 'Valor do cheque j� impresso' else
            if UpperCase(Exec) = '3004' then MsnErro := 'Nominal ao cheque j� impresso' else
            if UpperCase(Exec) = '3005' then MsnErro := 'Linhas adicionais no cheque j� impresso' else
            if UpperCase(Exec) = '3006' then MsnErro := 'Autentica��o j� impressa' else
            if UpperCase(Exec) = '3007' then MsnErro := 'N�mero m�ximo de autentica��es j� impresso' else
            if UpperCase(Exec) = 'FFFF' then MsnErro := 'Erro desconhecido' else
            if UpperCase(Exec) <>'0000' then MsnErro := 'Erro de Comunica��o!';

            if MsnErro <> '' then
            begin
               Bematech_FI_FinalizaModoTEF;
               Application.MessageBox( pchar(MsnErro), 'Aten��o',
                                         MB_ICONERROR + MB_OK);
            end;
      end;
      5:
      begin
         //Variaveis devem ser inicializadas
         Daruma_iACK := 0;
         Daruma_iST1 := 0;
         Daruma_iST2 := 0;
         //Int_Retorno := 0;
         Int_RetornoMetodo:=0;
         Int_ErroExtendido:=0;

         Int_RetornoMetodo := Daruma_FI_RetornoImpressora(Daruma_iACK, Daruma_iST1, Daruma_iST2);

         SetLength(Str_ErroExtendido,4);

         Int_ErroExtendido := Daruma_FI_RetornaErroExtendido ( Str_ErroExtendido );

         if Daruma_FI_VerificaImpressoraLigada = 1 then
         begin
            MsnErro := Mensagem_daruma(Str_ErroExtendido);

            if MsnErro <> '' then
            begin
               Bematech_FI_FinalizaModoTEF;
               Application.MessageBox( pchar(MsnErro), 'Aten��o',
                                         MB_ICONERROR + MB_OK);
               Result := False
            end
            else
               Result := True;
         end
         else
            Result := False;

         {Application.MessageBox( Pchar('Retorno do metodo = ' + IntToStr(Executa) + #13 +
                                       'ACK = ' + IntToStr(Daruma_iACK) + #13 +
                                       'ST1 = ' + IntToStr(Daruma_iST1) + #13 +
                                       'ST2 = ' + IntToStr(Daruma_iST2) + #13 +
                                       'Erro extendido = ' + Str_ErroExtendido
                                       ), 'Daruma Framework Retorno do Metodo', mb_ok);}
      end;
   end;

   Case StrToInt(ModeloEcf1) of
      1:
      begin
         if Executa > 0 then
         begin
            Retorno_Impressora;
            if Papel then
               Result := True
            else
               Result := False;
         end
         else
            Result := False;
      end;
      2:
      begin
         if MsnErro = '' then
            Result := True
         else
            Result := False;
      end;
   end;
End;

function TECF.Arq_Tef(aEnd,NumCupom1,FormaPgto,CodPgt,msnPromocional: String; ValorFinal,vlrDesconto: Real): Boolean;
var xDec1: Integer; ArqNum, ArqTef, ArqRet: TextFile; Linha1, xCGC, xDesc2, xCli, xEnd, xVdd, xTrib: String;
    xProd, xVal1, xQtd1, xDescricao: String;
    xValCartao: Double;
begin
   xValCartao := ValorFinal;

   frmBandeiras := TfrmBandeiras.Create ( Application );

   frmBandeiras.cFormaPgto        := FormaPgto;
   frmBandeiras.CodPgt            := CodPgt;
   frmBandeiras.cValorPago        := FloatToStr(ValorFinal);
   frmBandeiras.msnPromocional    := msnPromocional;
   frmBandeiras.vlrDesconto       := FloatToStr(vlrDesconto);
   frmBandeiras.edtVlrVenda.Text  := FloatToStr(ValorFinal);
   frmBandeiras.edtVlrCartao.Text := FloatToStr(xValCartao);
   frmBandeiras.edtNumCupom.Text  := NumCupom1;
   frmBandeiras.Tag               := 1;
   frmBandeiras.ShowModal;

   if sTEFRetorno = '0' then
      Arq_Tef := True
   else
   begin
      TEFNaoConfirmaOperacao;

      Arq_Tef := False;
   end;
end;

constructor TECF.Create;
begin
   Suprimir_msn := False;
   Papel := True;
end;

function TECF.EPSON_Numero_cupom(var pNum: String): Integer;
Var
   szDados: array[0..70] of Char;
   inicio, final: integer;
begin
   inicio := 58;
   final  := 63;

   Result := EPSON_Obter_Dados_Jornada(szDados);
   repeat
      pNum := pNum + szDados[inicio];
      inc(inicio);
   until (inicio - 1) = Final;
end;

procedure TECF.EPSON_Processa_Estado(var Estado: String);
Var
   szDados: array[0..20] of Char;
   inicio, final: integer;
begin
   inicio := 16;
   final  := 19;

   EPSON_Obter_Estado_Impressora(szDados);
   repeat
      Estado := Estado + szDados[inicio];
      inc(inicio);
   until (inicio - 1) = Final;
end;

function TECF.Fecha_cupom(Forma_pgt, Cod_venda, Cod_vendedor, Nome_vendedor:String; vlr_prod_liquid, Vlr_Acr_Desc:Real; Venda_a_prazo, V_simples: Boolean; V_balcao: Boolean=False): String;
Var
   qryVenda, qryPgt: TSQLQuery;
   cMsgPromocional,NumeroCupom, Num_espaco, Nome_tabela1,
   SQL1, Endereco1, Cidade1, Estado1, Insc_est1,
   Venc1, Venc2, Venc3, Venc4, Venc5, Venc6, Vlr1, Vlr2, Vlr3, Vlr4, Vlr5, Vlr6, ValorPgt, Desconto: String;
   iConta: integer;
   CortarPapel: Boolean;
begin
   Try
      if V_balcao then
      begin
         SQL1 := 'SELECT' +
                 ' B.CODIGO_BALCAO,'      +
                 ' B.CLIENTE_BALCAO,'     +
                 ' B.VENCIMEN01_BALCAO,'  +
                 ' B.VALOR01_BALCAO,'     +
                 ' B.VENCIMEN02_BALCAO,'  +
                 ' B.VALOR02_BALCAO,'     +
                 ' B.VENCIMEN03_BALCAO,'  +
                 ' B.VALOR03_BALCAO,'     +
                 ' B.VENCIMEN04_BALCAO,'  +
                 ' B.VALOR04_BALCAO,'     +
                 ' B.VENCIMEN05_BALCAO,'  +
                 ' B.VALOR05_BALCAO,'     +
                 ' B.VENCIMEN06_BALCAO,'  +
                 ' B.VALOR06_BALCAO,'     +
                 ' B.OBS1,'               +
                 ' B.CPAGAMENTO_BALCAO AS COD_PGT,' +

                 ' CASE B.USUALTERA_BALCAO'        +
                 ' WHEN ' + QuotedStr('T') + '  then A.CIDADE_ALT' +
                 '     ELSE CI2.DESCRICAO_CIDADE'  +
                 ' END AS NOME_CIDADE,'            +
                 '' +
                 ' CASE B.USUALTERA_BALCAO'        +
                 '     WHEN ' + QuotedStr('T') + '  then A.ESTADO_ALT' +
                 '     ELSE C.ESTADO_CLIENTE'      +
                 ' END AS ESTADO_CLIENTE,'         +
                 '' +
                 ' CASE B.USUALTERA_BALCAO'        +
                 '     WHEN ' + QuotedStr('T') + '  then A.CNPJ_ALT' +
                 '     ELSE C.CNPJ_CLIENTE'        +
                 ' END AS CNPJ_CLIENTE,'           +
                 '' +
                 ' CASE B.USUALTERA_BALCAO'        +
                 '     WHEN ' + QuotedStr('T') + '  then A.NOME_ALT' +
                 '     ELSE C.NOME_CLIENTE'        +
                 ' END AS NOME_CLIENTE,'           +

                 ' CASE B.USUALTERA_BALCAO'        +
                 '     WHEN ' + QuotedStr('T') + '  then A.ENDERECO_ALT' +
                 '     ELSE C.ENDERECO_CLIENTE'                          +
                 ' END AS ENDERECO_CLIENTE,'                             +

                 ' CASE B.USUALTERA_BALCAO'                              +
                 '     WHEN ' + QuotedStr('T') + '  then A.INSC_ALT'     +
                 '     ELSE C.INSCRICAO_CLIENTE'   +
                 ' END AS INSCRICAO_CLIENTE,'      +
                 '' +
                 ' CASE B.USUALTERA_BALCAO'        +
                 '' +
                 '     WHEN ' + QuotedStr('T') + '  then A.CEP'   +
                 '     ELSE C.CEP_CLIENTE'                        +
                 ' END AS CEP_CLIENTE,'                           +

                 ' PR.DESCRICAO_PRO,'                             +
                 ' PR.BAIRRO_PRO,'                                +
                 ' PR.CEP_PRO,'                                   +
                 ' CI.DESCRICAO_CIDADE AS CIDADE_PRO,'            +
                 ' PR.FONE_PRO,'                                  +
                 ' PR.ESTADO_PRO,'                                +
                 ' PR.INSCEST_PRO'                                +
                 ' FROM P_BALCAO B'                               +
                 ' LEFT OUTER JOIN E_CLIENTE C      ON (C.CODIGO_CLIENTE  = B.CLIENTE_BALCAO)'     +
                 ' LEFT OUTER JOIN E_PROPRIEDADE PR ON (PR.CODIGO_PRO     = B.PROPRIEDADE_BALCAO)' +
                 ' LEFT OUTER JOIN E_CIDADE CI      ON (CI.CODIGO_CIDADE  = PR.CIDADE_PRO)'        +
                 ' LEFT OUTER JOIN E_CIDADE CI2     ON (CI2.CODIGO_CIDADE = C.CIDADE_CLIENTE)'     +
                 ' LEFT OUTER JOIN E_ALTERA A       ON (A.COD_VENDA_ALT   = B.CODIGO_BALCAO)'     +
                 ' WHERE CODIGO_BALCAO=' + Cod_venda;

         Venc1 := 'VENCIMEN01_BALCAO';
         Venc2 := 'VENCIMEN02_BALCAO';
         Venc3 := 'VENCIMEN03_BALCAO';
         Venc4 := 'VENCIMEN04_BALCAO';
         Venc5 := 'VENCIMEN05_BALCAO';
         Venc6 := 'VENCIMEN06_BALCAO';
         Vlr1  := 'VALOR01_BALCAO';
         Vlr2  := 'VALOR02_BALCAO';
         Vlr3  := 'VALOR03_BALCAO';
         Vlr4  := 'VALOR04_BALCAO';
         Vlr5  := 'VALOR05_BALCAO';
         Vlr6  := 'VALOR06_BALCAO';
      end
      else
      begin
         if V_simples then
            Nome_tabela1 := 'P_DOC_SIMPLES'
         else
            Nome_tabela1 := 'P_VENDAS';

         SQL1 := 'SELECT' +
                 ' V.CODIGO_VENDA,'     +
                 ' V.CLIENTE_VENDA,'    +
                 ' V.VENCIMEN01_VENDA,' +
                 ' V.VALOR01_VENDA,'    +
                 ' V.VENCIMEN02_VENDA,' +
                 ' V.VALOR02_VENDA,'    +
                 ' V.VENCIMEN03_VENDA,' +
                 ' V.VALOR03_VENDA,'    +
                 ' V.VENCIMEN04_VENDA,' +
                 ' V.VALOR04_VENDA,'    +
                 ' V.VENCIMEN05_VENDA,' +
                 ' V.VALOR05_VENDA,'    +
                 ' V.VENCIMEN06_VENDA,' +
                 ' V.VALOR06_VENDA,'    +
                 ' V.OBS1,'             +
                 ' V.CPAGAMENTO_VENDA AS COD_PGT,' +

                 ' CASE V.USUALTERA_VENDA'        +
                 ' WHEN ' + QuotedStr('T') + '  then A.CIDADE_ALT' +
                 '     ELSE CI2.DESCRICAO_CIDADE'  +
                 ' END AS NOME_CIDADE,'            +
                 '' +
                 ' CASE V.USUALTERA_VENDA'        +
                 '     WHEN ' + QuotedStr('T') + '  then A.ESTADO_ALT' +
                 '     ELSE C.ESTADO_CLIENTE'      +
                 ' END AS ESTADO_CLIENTE,'         +
                 '' +
                 ' CASE V.USUALTERA_VENDA'        +
                 '     WHEN ' + QuotedStr('T') + '  then A.CNPJ_ALT' +
                 '     ELSE C.CNPJ_CLIENTE'        +
                 ' END AS CNPJ_CLIENTE,'           +
                 '' +
                 ' CASE V.USUALTERA_VENDA'        +
                 '     WHEN ' + QuotedStr('T') + '  then A.NOME_ALT' +
                 '     ELSE C.NOME_CLIENTE'        +
                 ' END AS NOME_CLIENTE,'           +

                 ' CASE V.USUALTERA_VENDA'        +
                 '     WHEN ' + QuotedStr('T') + '  then A.ENDERECO_ALT' +
                 '     ELSE C.ENDERECO_CLIENTE'                          +
                 ' END AS ENDERECO_CLIENTE,'                             +

                 ' CASE V.USUALTERA_VENDA'                              +
                 '     WHEN ' + QuotedStr('T') + '  then A.INSC_ALT'     +
                 '     ELSE C.INSCRICAO_CLIENTE'   +
                 ' END AS INSCRICAO_CLIENTE,'      +
                 '' +
                 ' CASE V.USUALTERA_VENDA'        +
                 '' +
                 '     WHEN ' + QuotedStr('T') + '  then A.CEP'   +
                 '     ELSE C.CEP_CLIENTE'                        +
                 ' END AS CEP_CLIENTE,'                           +
                 ' PR.DESCRICAO_PRO,'   +
                 ' PR.BAIRRO_PRO,'      +
                 ' PR.CEP_PRO,'         +
                 ' CI.DESCRICAO_CIDADE AS CIDADE_PRO,' +
                 ' PR.FONE_PRO,'        +
                 ' PR.ESTADO_PRO,'      +
                 ' PR.INSCEST_PRO'      +
                 ' FROM '               +
                   Nome_tabela1 + ' V'  +
                 ' LEFT OUTER JOIN E_CLIENTE C      ON (C.CODIGO_CLIENTE  = V.CLIENTE_VENDA)'     +
                 ' LEFT OUTER JOIN E_PROPRIEDADE PR ON (PR.CODIGO_PRO     = V.PROPRIEDADE_VENDA)' +
                 ' LEFT OUTER JOIN E_CIDADE CI      ON (CI.CODIGO_CIDADE  = PR.CIDADE_PRO)'       +
                 ' LEFT OUTER JOIN E_CIDADE CI2     ON (CI2.CODIGO_CIDADE = C.CIDADE_CLIENTE)'    +
                 ' LEFT OUTER JOIN E_ALTERA A       ON (A.COD_VENDA_ALT   = V.CODIGO_VENDA)'     +
                 ' WHERE CODIGO_VENDA=' + Cod_venda;

         Venc1 := 'VENCIMEN01_VENDA';
         Venc2 := 'VENCIMEN02_VENDA';
         Venc3 := 'VENCIMEN03_VENDA';
         Venc4 := 'VENCIMEN04_VENDA';
         Venc5 := 'VENCIMEN05_VENDA';
         Venc6 := 'VENCIMEN06_VENDA';
         Vlr1  := 'VALOR01_VENDA';
         Vlr2  := 'VALOR02_VENDA';
         Vlr3  := 'VALOR03_VENDA';
         Vlr4  := 'VALOR04_VENDA';
         Vlr5  := 'VALOR05_VENDA';
         Vlr6  := 'VALOR06_VENDA';
      end;

      // === Bloco de Buscas ===
      qryVenda := TSQLQuery.Create(Application);
      qryVenda.SQLConnection := DmPrincipal.DbConexao;
      qryVenda.Close;
      qryVenda.SQL.Clear;
      qryVenda.SQL.Add(SQL1);
      qryVenda.ExecSQL;
      qryVenda.Open;

      qryPgt := TSQLQuery.Create(Application);
      qryPgt.SQLConnection := DmPrincipal.DbConexao;
      qryPgt.Close;
      qryPgt.SQL.Clear;                                                                                                                                       //CODIGO_CPAGAMENTO              {qryVenda.FieldByName('COD_PGT').AsString}
      qryPgt.SQL.Add( 'SELECT TEF_CPAGAMENTO, DESCRICAO_CPAGAMENTO, CODIGO_CPAGAMENTO, COD_EMPRESA, CAIXA_CPAGAMENTO, ECF_CPAGAMENTO FROM P_CPAGAMENTO WHERE DESCRICAO_CPAGAMENTO=' + QuotedStr( Forma_pgt ) + ' AND COD_EMPRESA=' + QuotedStr(CodigoEmpresa1) );
      qryPgt.ExecSQL;
      qryPgt.Open;

      // Habilita corte do papel para impressora EPSON
      CortarPapel := True;

      // === FIM Bloco de buscas
      if qryVenda.FieldByName('DESCRICAO_PRO').AsString = '' then
      begin
         Endereco1 := 'ENDERECO_CLIENTE';
         Cidade1   := 'NOME_CIDADE';
         Estado1   := 'ESTADO_CLIENTE';
         Insc_est1 := 'INSCRICAO_CLIENTE';
      end
      else
      begin
         Endereco1 := 'DESCRICAO_PRO';
         Cidade1   := 'CIDADE_PRO';
         Estado1   := 'ESTADO_PRO';
         Insc_est1 := 'INSCEST_PRO';
      end;

      if qryPgt.FieldByName('CAIXA_CPAGAMENTO').AsString = '5' then // A prazo
      begin
         // Mensagem no final do cupom
         cMsgPromocional := format('%-48s',['Nr Venda: ' + StrZero(Cod_venda,6) + ' / ' + copy(qryVenda.FieldByName('NOME_CLIENTE').AsString,1,29)]) +
                            format('%-48s',[copy(qryVenda.FieldByName(Endereco1).AsString,1,48)]) +
                            format('%-48s',[copy(qryVenda.FieldByName(Cidade1).AsString  + '-' + qryVenda.FieldByName(Estado1).AsString,1,48)]) +
                            format('%-48s',[copy(qryVenda.FieldByName('CNPJ_CLIENTE').AsString + ' Vend.: ' + Cod_vendedor + '-' + Nome_vendedor,1,36)]) +
                            format('%-48s',['Venc --> ' + qryVenda.FieldByName(Venc1).AsString + '-' + qryVenda.FieldByName(Vlr1).AsString + ' ' + qryVenda.FieldByName(Venc2).AsString + '-' + qryVenda.FieldByName(Vlr2).AsString]) +
                            format('%-48s',['         ' + qryVenda.FieldByName(Venc3).AsString + '-' + qryVenda.FieldByName(Vlr3).AsString + ' ' + qryVenda.FieldByName(Venc4).AsString + '-' + qryVenda.FieldByName(Vlr4).AsString]) +
                            format('%-48s',['         ' + qryVenda.FieldByName(Venc5).AsString + '-' + qryVenda.FieldByName(Vlr5).AsString + ' ' + qryVenda.FieldByName(Venc6).AsString + '-' + qryVenda.FieldByName(Vlr6).AsString]) +
                            format('%-48s',[copy(qryVenda.FieldByName('OBS1').AsString,1,48)]);
      end
      else
      begin
         cMsgPromocional := format('%-48s',[copy(qryVenda.FieldByName('NOME_CLIENTE').AsString,1,48)])   +
                            format('%-48s',[copy(qryVenda.FieldByName(Endereco1).AsString,1,48)]) +
                            format('%-48s',[copy(qryVenda.FieldByName('CNPJ_CLIENTE').AsString + '   I.E.: ' + qryVenda.FieldByName(Insc_est1).AsString,1,48)]) +
                            format('%-48s',['Vendedor.: ' + Cod_vendedor + '-' + copy(Nome_vendedor,1,33)]) +
                            format('%-48s',[copy(qryVenda.FieldByName('OBS1').AsString,1,48)]);
      end;

      // Obtem o n�mero do cupom
      for iConta := 1 to 6 do
      NumeroCupom := NumeroCupom + ' ';

      Case StrToInt(ModeloEcf1) of
         1: // Bematech
         begin
            Executa := Bematech_FI_NumeroCupom(NumeroCupom);
            Analisa;
         end;
         2: // Epson
         begin
            Executa := EPSON_Numero_cupom(NumeroCupom);
            Analisa;
         end;
         5: // Daruma
         begin
            Executa := Daruma_FI_NumeroCupom(NumeroCupom);
            Analisa;
         end;
      end;

       Result := NumeroCupom;
      //------------------------

      if (Parametro.Usa_TEF) {and not (V_balcao)} and (qryPgt.FieldByName('CAIXA_CPAGAMENTO').AsString = '2') then
      begin
         // inicia fechamento do cupom
         case StrToInt(ModeloEcf1) of
            1: // Bematech
            begin
               if qryPgt.FieldByName('CAIXA_CPAGAMENTO').AsString = '2' then
                  Forma_pgt := 'CARTAO';

               Desconto := FormatFloat( '0.00',Vlr_Acr_Desc );
               //ShowMessage('(' + FloatToStr(Vlr_Acr_Desc) + ')' + ' ' + Desconto);
               sleep(1000);
               Executa  := Bematech_FI_IniciaFechamentoCupom( 'D',
                                                              '$',
                                                              Desconto );
                                                              //FloatToStr(Vlr_Acr_Desc) );
               Analisa;
            end;
            2: // Epson
            begin
               //Na impressora EPSON inicia o fechamento na fun��o de pagamento
            end;
            5: // Daruma
            begin
               if qryPgt.FieldByName('CAIXA_CPAGAMENTO').AsString = '2' then
                  Forma_pgt := 'CARTAO';

               Desconto := FormatFloat( '0.00',Vlr_Acr_Desc );
               //ShowMessage('(' + FloatToStr(Vlr_Acr_Desc) + ')' + ' ' + Desconto);
               sleep(1000);
               Executa := Daruma_FI_IniciaFechamentoCupom( 'D',
                                                           '$',
                                                           Desconto );
               Analisa;
            end;
         end; //case

         Desconto := FormatFloat( '0.00',Vlr_Acr_Desc );
         sleep(1000);
         if Arq_Tef('',NumeroCupom,
                     'CARTAO',
                     qryPgt.FieldByName('ECF_CPAGAMENTO').AsString,
                     cMsgPromocional,
                     vlr_prod_liquid,
                     StrToFloat(Desconto) ) then
         begin
            //-*-*-*-*-*-*-*-*- fazer tratamento para quando nao autoriza venda -*-*-*-*-*-*-*-*-//
         end;
      end
      else
      begin
         // Fechamento do cupom
         case StrToInt(ModeloEcf1) of
            1: // Bamatech
            begin
               Executa := Bematech_FI_FechaCupom(Forma_pgt, // Forma de pagamento
                                                       'D', // AcrescimoDesconto
                                                       '$', // AcrescimoDesconto
                                                       FloatToStrF(Vlr_Acr_Desc,ffFixed,18,2),    // ValorAcrescimoDesconto
                                                       FloatToStrF(vlr_prod_liquid,ffFixed,18,2), // ValorPago
                                                       cMsgPromocional); // Mensagem
               Analisa;
            end;
            2: // Epson
            begin
               ValorPgt := FloatToStrF(vlr_prod_liquid,ffFixed,18,2);
               RetiraVirgula(ValorPgt);

               Executa := EPSON_Fiscal_Pagamento(pchar(qryPgt.fieldByName('CODIGO_CPAGAMENTO').AsString),pchar(ValorPgt),2,'','');
               Analisa;

               if (qryPgt.fieldByName('CAIXA_CPAGAMENTO').AsString = '2') or (qryPgt.fieldByName('CAIXA_CPAGAMENTO').Value = 5) then
               // Comprovante Credito ou D�bito
                  CortarPapel := False;

               Executa := EPSON_Fiscal_Fechar_Cupom(CortarPapel,False);
               Analisa;
            end;
            5: // Daruma
            begin
               Executa := Daruma_FI_FechaCupom(Forma_pgt, // Forma de pagamento
                                                       'D', // AcrescimoDesconto
                                                       '$', // AcrescimoDesconto
                                                       FloatToStrF(Vlr_Acr_Desc,ffFixed,18,2),    // ValorAcrescimoDesconto
                                                       FloatToStrF(vlr_prod_liquid,ffFixed,18,2), // ValorPago
                                                       cMsgPromocional); // Mensagem
               Analisa;
            end;
         end;
      end;


      // Emiti cupom n�o fiscal vinculado caso seja a prazo
      if (qryPgt.FieldByName('CAIXA_CPAGAMENTO').AsString = '5'){ or (qryPgt.FieldByName('CAIXA_CPAGAMENTO').AsString = '2')} then // A prazo , Cart�o
      begin
         case StrToInt(ModeloEcf1) of
            1:
            begin
               Bematech_FI_AbreComprovanteNaoFiscalVinculado(Forma_pgt, // Forma de pagamento
                                                             FloatToStrF(vlr_prod_liquid,ffFixed,18,2), // Valor Pago
                                                             NumeroCupom); // Numero do ultimo cupom

               Num_espaco := FloatToStr( Trunc( (48 - length(Copy(qryVenda.FieldByName('NOME_CLIENTE').AsString,1,46)) ) / 2));

               Bematech_FI_UsaComprovanteNaoFiscalVinculado(format('%-48s',[' ']) +
                                                            format('%-48s',['RECEBEMOS DE ' + copy(RazaoSocial1,1,35)])       +
                                                            format('%-48s',['OS PRODUTOS CONTANTES NO CUPOM FISCAL ACIMA'])   +
                                                            format('%-48s',['MENCIONADO EM PERFEITO ESTADO E DECLARO ESTAR']) +
                                                            format('%-48s',['CIENTE DE EFETUAR SEU PAGAMENTO NOS DEVIDOS'])   +
                                                            format('%-48s',['VENCIMENTOS.']) +
                                                            format('%-48s',[' ']) +
                                                            format('%-48s',[' ']) +
                                                            format('%-48s',['    ----------------------------------------'])  +
                                                            format('%-' + Num_espaco + 's',[' ']) +
                                                            format('%-48s',[ copy(qryVenda.FieldByName('NOME_CLIENTE').AsString,1,47) ]));

               Bematech_FI_FechaComprovanteNaoFiscalVinculado;
            end;
            2:
            begin
               EPSON_NaoFiscal_Abrir_CCD(pchar(qryPgt.fieldByName('CODIGO_CPAGAMENTO').AsString),pchar(ValorPgt),2,'1');

               EPSON_NaoFiscal_Imprimir_Linha(' ');
               EPSON_NaoFiscal_Imprimir_Linha(pchar( 'RECEBEMOS DE ' + copy(RazaoSocial1,1,35) ) );
               EPSON_NaoFiscal_Imprimir_Linha( 'OS PRODUTOS CONTANTES NO CUPOM FISCAL ACIMA');
               EPSON_NaoFiscal_Imprimir_Linha( 'MENCIONADO EM PERFEITO ESTADO E DECLARO ESTAR');
               EPSON_NaoFiscal_Imprimir_Linha('CIENTE DE EFETUAR SEU PAGAMENTO NOS DEVIDOS');
               EPSON_NaoFiscal_Imprimir_Linha('VENCIMENTOS.');
               EPSON_NaoFiscal_Imprimir_Linha(' ');
               EPSON_NaoFiscal_Imprimir_Linha(' ');
               EPSON_NaoFiscal_Imprimir_Linha('    ----------------------------------------');
               EPSON_NaoFiscal_Imprimir_Linha(' ');
               EPSON_NaoFiscal_Imprimir_Linha(pchar( copy(qryVenda.FieldByName('NOME_CLIENTE').AsString,1,47) ));

               EPSON_NaoFiscal_Fechar_CCD(True);
            end;
            5:
            begin
               Daruma_FI_AbreComprovanteNaoFiscalVinculado(Forma_pgt,//Forma de pagamdneo
                                                             FloatToStrF(vlr_prod_liquid,ffFixed,18,2), //Valor Pago
                                                             NumeroCupom);//Numero do ultimo cupom

               Num_espaco := FloatToStr( Trunc( (48 - length(Copy(qryVenda.FieldByName('NOME_CLIENTE').AsString,1,46)) ) / 2));

               Daruma_FI_UsaComprovanteNaoFiscalVinculado(format('%-48s',[' ']) +
                                                            format('%-48s',['RECEBEMOS DE ' + copy(RazaoSocial1,1,35)])       +
                                                            format('%-48s',['OS PRODUTOS CONTANTES NO CUPOM FISCAL ACIMA'])   +
                                                            format('%-48s',['MENCIONADO EM PERFEITO ESTADO E DECLARO ESTAR']) +
                                                            format('%-48s',['CIENTE DE EFETUAR SEU PAGAMENTO NOS DEVIDOS'])   +
                                                            format('%-48s',['VENCIMENTOS.']) +
                                                            format('%-48s',[' ']) +
                                                            format('%-48s',[' ']) +
                                                            format('%-48s',['    ----------------------------------------'])  +
                                                            format('%-' + Num_espaco + 's',[' ']) +
                                                            format('%-48s',[ copy(qryVenda.FieldByName('NOME_CLIENTE').AsString,1,47) ]));

               Daruma_FI_FechaComprovanteNaoFiscalVinculado;
            end;
         end
      end;
   finally
       FreeAndNil(qryVenda);
       FreeAndNil(qryPgt);
   end;
end;



// ------------------- Analisa Retorno da Impressora --------------------

function TECF.Mensagem_daruma(Codigo: String): String;
var
   Cod: Integer;
begin
   Cod := StrToInt(Codigo);
   Result := '';
   //if Cod = 00 then Result := 'IF em modo Manuten��o. Foi ligada sem o Jumper de Opera��o' else
   if Cod = 01 then Result := 'M�todo dispon�vel somente em modo Manuten��o' else
   if Cod = 02 then Result := 'Erro durante a grava��o da Mem�ria Fiscal' else
   if Cod = 03 then Result := 'Mem�ria Fiscal esgotada' else
   if Cod = 04 then Result := 'Erro no rel�gio interno da IF' else
   if Cod = 05 then Result := 'Falha mec�nica na IF' else
   if Cod = 06 then Result := 'Erro durante a leitura da Mem�ria Fiscal' else
   if Cod = 07 then Result := 'Metodo permitido apenas em modo fiscal (IF sem jmper)' else
   if Cod = 10 then Result := 'Documento sendo emitido' else
   if Cod = 11 then Result := 'Documento n�o foi aberto' else
   if Cod = 12 then Result := 'N�o existe documento a cancelar' else
   if Cod = 13 then Result := 'D�gito n�o num�rico n�o esperado, foi encontrado nos Par�metros do M�todo' else
   if Cod = 14 then Result := 'N�o h� mais mem�ria dispon�vel para esta opera��o/N�o h� nenhuma posi��o de m�ria dispon�vel.' else
   if Cod = 15 then Result := 'Item a cancelar n�o foi encontrado' else
   if Cod = 16 then Result := 'Erro de sintaxe no m�todo' else
   if Cod = 17 then Result := '"Estouro" de capacidade num�rica (overflow)' else
   if Cod = 18 then Result := 'Selecionado totalizador tributado com al�quota de imposto n�o definida' else
   if Cod = 19 then Result := 'Mem�ria Fiscal vazia' else
   if Cod = 20 then Result := 'N�o existem campos que requerem atualiza��o' else
   if Cod = 21 then Result := 'Detectado proximidade do final da bobina de papel' else
   if Cod = 22 then Result := 'Cupom de Redu��o Z j� foi emitido. IF inoperante at� 0:00h do pr�ximo dia' else
   if Cod = 23 then Result := 'Redu��o Z do per�odo anterior ainda pendente. IF inoperante' else
   if Cod = 24 then Result := 'Valor de desconto ou acr�scimo inv�lido (limitado a 100%)' else
   if Cod = 25 then Result := 'Car�ctere inv�lido foi encontrado nos Par�metros do M�todos' else
   if Cod = 26 then Result := 'M�doto n�o pode ser executado' else
   if Cod = 27 then Result := 'Impressora fora de Linha/Nenhum perif�rico conectado a interface auxiliar' else
   if Cod = 28 then Result := 'Foi encontrado um campo em zero' else
   if Cod = 29 then Result := 'Documento anterior n�o foi Cupom Fiscal. N�o pode emitir Cupom Adicional' else
   if Cod = 30 then Result := 'Acumulador N�o Fiscal selecionado n�o � v�lido ou n�o est� dispon�vel' else
   if Cod = 31 then Result := 'N�o pode autenticar. Excedeu 4 repeti��es ou n�o � permitida nesta fase' else
   if Cod = 32 then Result := 'Cupom adicional inibido por configura��o' else
   if Cod = 35 then Result := 'Rel�gio Interno Inoperante' else
   if Cod = 36 then Result := 'Vers�o do firmware gravada na Mem�ria Fiscal n�o � a esperada' else
   if Cod = 37 then Result := 'Al�quota de imposto informada j� est� carregada na mem�ria' else
   if Cod = 38 then Result := 'Forma de pagamento selecionada n�o � v�lida' else
   if Cod = 39 then Result := 'Erro na seq��ncia de fechamento do Cupom Fiscal' else
   if Cod = 40 then Result := 'IF em Jornada Fiscal. Altera��o da configura��o n�o � permitida' else
   if Cod = 41 then Result := 'Data inv�lida. Data fornecida � inferior � �ltima gravada na Mem�ria Fiscal' else
   if Cod = 42 then Result := 'Leitura X inicial ainda n�o foi emitida' else
   if Cod = 43 then Result := 'N�o pode emitir Comprovante Vinculado' else
   if Cod = 44 then Result := 'Cupom de Or�amento n�o permitido para este estabelecimento(Mensagem do Aplicativo N�o Programada)' else
   if Cod = 45 then Result := 'Campo obrigat�rio em branco' else
   if Cod = 48 then Result := 'N�o pode estornar' else
   if Cod = 49 then Result := 'Forma de pagamento indicada n�o encontrada' else
   if Cod = 50 then Result := 'Fim da bobina de papel' else
   if Cod = 51 then Result := 'Nenhum usu�rio cadastrado na MF' else
   if Cod = 52 then Result := 'MF n�o instalada ou n�o inicializada' else
   if Cod = 56 then Result := 'Documento j� aberto' else
   if Cod = 61 then Result := 'Queda de energia durante a emiss�o de Cupom Fiscal' else
   if Cod = 75 then Result := 'Opera��o com ISS n�o permitida (se a sua impressora for uma FS600 ou FS2100T, ent�o ser� preciso ter uma inscri��o municipal gravada em sua impressora para que seja poss�vel programar/utilizar al�quota de servi�o).' else
   if Cod = 76 then Result := 'Desconto em ISS n�o permitido neste ECF (a programa��o dever� ser feita por meio de interven��o t�cnica e caso o Estado permita)' else
   if Cod = 77 then Result := 'Acr�scimo em IOF inibido' else
   if Cod = 80 then Result := 'Perif�rico na interface auxiliar n�o pode ser reconhecido' else
   if Cod = 81 then Result := 'Solicitado preenchimento de cheque de banco desconhecido' else
   if Cod = 82 then Result := 'Solicitado transmiss�o de mensagem nula pela interface auxiliar' else
   if Cod = 83 then Result := 'Extenso do cheque n�o cabe no espa�o dispon�vel' else
   if Cod = 84 then Result := 'Erro na comunica��o com a interface auxiliar' else
   if Cod = 85 then Result := 'Erro no d�gito verificador durante comunica��o com a PertoCheck' else
   if Cod = 86 then Result := 'Falha na carga de geometria de folha de cheque' else
   if Cod = 87 then Result := 'Par�metros do M�todo: inv�llido para o campo de data do cheque' else
   if Cod = 90 then Result := 'Sequ�ncia de valida��o de n�mero de s�rie inv�lida' else
   if Cod = 180 then Result := 'Mensagem do aplicativo n�o programada.' else
   if Cod = 181 then Result := 'N�o � possivel realizar Redu��o Z entre 00:00am e 02:00am (Meia Noite e Duas da Manh�) nesta vers�o de firmware da FS600';
end;

function TECF.Retorno_Impressora: Boolean;
  var iACK, iST1, iST2, iST3: Integer;
  Retorno: Boolean;
  StrRetorno: String;
Begin
   case StrToInt(ModeloEcf1) of
      1:
      begin
         iACK := 0;
         iST1 := 0;
         iST2 := 0;
         iST3 := 0;
         StrRetorno := '';
         Result     := False;

         if ( bRetornoEstendido = true ) then
            Executa := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 )
         else
            Executa := Bematech_FI_RetornoImpressora( iACK, iST1, iST2 );

         if iACK = 21 then
         begin
            frmEST002.JvBalloonHint1.DefaultHeader := 'NAK - Resposta da impressora';
            Application.MessageBox( 'A Impressora retornou NAK. O programa ser� abortado!', 'Erro', MB_IconError + MB_OK );
            Result := False;
            Application.Terminate;
            Exit;
         end
         else
         begin
           if bRetornoEstendido then
              Application.MessageBox( pchar( 'ACK = 6, ST1 = ' + inttostr( iSt1 ) +
                                                    ', ST2 = ' + inttostr( iSt2 ) +
                                                    ', ST3 = ' + inttostr( iSt3 ) ), 'Retorno da Impressora', MB_IconInformation + MB_OK );
         //end;

         {if iACK = 6 then
         begin
            frmEST002.JvBalloonHint1.DefaultHeader := 'ACK - Impressora fiscal';
         }
            if ( iST1 <> 0 ) or ( iST2 <> 0 ) then
            begin
               // Verifica ST1
               Papel := True; // Seta a vari�vel que informa q a impressora est� alimentada com papel
               if iST1 >= 128 then
               begin
                  iST1 := iST1 - 128;
                  StrRetorno := 'BIT 7 - Fim de Papel' + #13;

                  Papel := False; // Diz que a impressora esta sem papel
                  Bematech_FI_FinalizaModoTEF;
                  Application.MessageBox('A impressoa est� sem papel.','Aten��o', MB_OK + MB_ICONEXCLAMATION);
               end;

               if iST1 >= 64  then
               begin
                  iST1 := iST1 - 64;
                  StrRetorno := StrRetorno + 'BIT 6 - Pouco Papel' + #13;
               end;

               if iST1 >= 32 then
               begin
                  iST1 := iST1 - 32;
                  StrRetorno := StrRetorno + 'BIT 5 - Erro no Rel�gio' + #13;
               end;

               if iST1 >= 16 then
               begin
                  iST1 := iST1 - 16;
                  StrRetorno := StrRetorno + 'BIT 4 - Impressora em ERRO' + #13;
               end;

               if iST1 >= 8 then
               begin
                  iST1 := iST1 - 8;
                  StrRetorno := StrRetorno + 'BIT 3 - CMD n�o iniciado com ESC' + #13;
               end;

               if iST1 >= 4 then
               begin
                  iST1 := iST1 - 4;
                  StrRetorno := StrRetorno + 'BIT 2 - Comando Inexistente' + #13;
               end;

               if iST1 >= 2 then                                                  
               begin
                  iST1 := iST1 - 2;
                  StrRetorno := StrRetorno + 'BIT 1 - Cupom Aberto' + #13;
               end;

               if iST1 >= 1 then
               begin
                  iST1 := iST1 - 1;
                  StrRetorno := StrRetorno + 'BIT 0 - N� de Par�metros Inv�lidos' + #13;
               end;

               // Verifica ST2
               if iST2 >= 128 then
               begin
                  iST2 := iST2 - 128;
                  StrRetorno := StrRetorno + 'BIT 7 - [Tipo de Par�metro Inv�lido]' + #13;
               end;

               if iST2 >= 64 then
               begin
                  iST2 := iST2 - 64;
                  StrRetorno := StrRetorno + 'BIT 6 - [Mem�ria Fiscal Lotada]' + #13;
               end;

               if iST2 >= 32 then
               begin
                  iST2 := iST2 - 32;
                  StrRetorno := StrRetorno + 'BIT 5 - [CMOS n�o Vol�til]' + #13;
               end;

               if iST2 >= 16 then
               begin
                  iST2 := iST2 - 16;
                  StrRetorno := StrRetorno + 'BIT 4 - [Al�quota N�o Programada]' + #13;
               end;

               if iST2 >= 8 then
               begin
                  iST2 := iST2 - 8;
                  StrRetorno := StrRetorno + 'BIT 3 - [Al�quotas lotadas]' + #13;
               end;

               if iST2 >= 4 then
               begin
                  iST2 := iST2 - 4;
                  StrRetorno := StrRetorno + 'BIT 2 - [Cancelamento n�o Permitido]' + #13;
               end;

               if iST2 >= 2 then
               begin
                  iST2 := iST2 - 2;
                  StrRetorno := StrRetorno + 'BIT 1 - [CGC/IE n�o Programados]' + #13;
               end;

               if iST2 >= 1 then
               begin
                  iST2 := iST2 - 1;
                  StrRetorno := StrRetorno + 'BIT 0 - [Comando n�o Executado]' + #13;
               end;

               if StrRetorno <> '' then
               begin
                  frmEST002.spbImpressora.Visible := True;
                  frmEST002.JvBalloonHint1.ActivateHint(frmEST002.spbImpressora,StrRetorno);
                  Result := False;
               end
            end
            else
               Result := True;
         end;
      end;
   end; // case
End;

function TECF.Vende_item(Cod1, Nome1, Cod_cliente: string; Qtd1, Vlr1, Desc1: Real; Produto_temp: Boolean=False): Boolean;
Var
   Ali, preco, quantidade: String;
begin
   Case StrToInt(ModeloEcf1) of
      1: // Bematech
      begin
         Desc1 := 0;
         Executa := Bematech_FI_VendeItem( StrZero(copy(Cod1,1,13),6),
                                          copy(Nome1,1,29),
                                          Parametro.Aliq_ECF(StringToInt(Cod1),StrToInt(Cod_cliente),Produto_temp),
                                          'F',
                                          FloatToStrF(Qtd1,ffFixed,7,3),
                                          Parametro.Decimal,
                                          FloatToStrF(Vlr1,ffFixed,8 - Parametro.Decimal,Parametro.Decimal),
                                          '$',
                                          FloatToStrF(Desc1 * Qtd1,ffFixed,6,2) );
         Analisa;
      end;
      2: // Epson
      begin
         Ali := Parametro.Aliq_ECF(StringToInt(Cod1),StrToInt(Cod_cliente),Produto_temp);
         preco := FloatToStrF(Vlr1,ffFixed,8 - Parametro.Decimal,Parametro.Decimal);
         quantidade := FloatToStrF(Qtd1,ffFixed,7,3);

         RetiraVirgula(preco);
         RetiraVirgula(quantidade);

         Executa := EPSON_Fiscal_Vender_Item ( pchar(StrZero(copy(Cod1,1,13),6)), // C�digo do produto
                                              pchar(copy(Nome1,1,29)),   // descri��o do produto
                                              pchar(quantidade),   // Quantidade SEM VIRGULA OU PONTO
                                              3,                   // Casas decimais quantidade
                                              '',                  // Unidade de medida
                                              pchar(preco),        // Pre�o SEM VIRGULA OU PONTO
                                              Parametro.Decimal,   // Casas decimais pre�o
                                              pchar(Ali),          // Al�quota
                                              1{Tipo de impress�o} );

      end;
      5: // Daruma
      begin
         Desc1 := 0;
         Executa := Daruma_FI_VendeItem( StrZero(copy(Cod1,1,13),6),
                                         copy(Nome1,1,29),
                                         Parametro.Aliq_ECF(StringToInt(Cod1),StrToInt(Cod_cliente),Produto_temp),
                                         'F',
                                         FloatToStrF(Qtd1,ffFixed,7,3),
                                         Parametro.Decimal,
                                         FloatToStrF(Vlr1,ffFixed,8 - Parametro.Decimal,Parametro.Decimal),
                                         '$',
                                         FloatToStrF(Desc1 * Qtd1,ffFixed,6,2) );
         Analisa;
      end;
   end;
end;

end.
