unit uDaruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms;


{Declaracao da Dll Integradora Daruma32.dll}

// M�todos do Cupom Fiscal

function Daruma_FI_AbreCupom( CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: String; Casas_Decimais: Integer; Valor_Unitario: String; Tipo_de_Desconto: String; Valor_do_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Valor_Unitario: String; Quantidade: String; Valor_do_Desconto: String; Valor_do_Acrescimo: String; Indice_Departamento: String; Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItemTresDecimais( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String;  Valor_Unitario: String; Acrescimo_ou_Desconto: String; Percentual_Acrescimo_ou_Desconto : String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaCupomResumido( Descricao_da_Forma_de_Pagamento: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IniciaFechamentoCupom( Acrescimo_ou_Desconto: String; Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamento( Descricao_da_Forma_Pagamento: String; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamentoDescricaoForma( Descricao_da_Forma_Pagamento: string; Valor_da_Forma_Pagamento: string; Texto_Livre: string ): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IdentificaConsumidor( Nome_do_Consumidor: String; Endereco: String; CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_TerminaFechamentoCupom( Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaCupom( Forma_de_Pagamento: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_Pago: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaItemAnterior: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaItemGenerico( Numero_Item: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaCupom: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AumentaDescricaoItem( Descricao_Extendida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UsaUnidadeMedida( Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EmitirCupomAdicional: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EstornoFormasPagamento( Forma_de_Origem: String; Nova_Forma: String; Valor_Total_Pago: String ): Integer; StdCall; External 'Daruma32.dll';

// M�todos para Recebimentos e Relat�rios

function Daruma_FI_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UsaComprovanteNaoFiscalVinculado( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RelatorioGerencial( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AbreRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EnviarTextoCNF( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RecebimentoNaoFiscal( Indice_do_Totalizador: String; Valor_do_Recebimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AbreRecebimentoNaoFiscal( Indice_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamentoNaoFiscal( Forma_de_Pagamento: String; Valor_da_Forma_Pagamento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Sangria( Valor_da_Sangria: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Suprimento( Valor_do_Suprimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FundoCaixa( Valor_do_Fundo_Caixa: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraX: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ReducaoZAjustaDataHora( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';

// M�todos Gaveta, Autentica e Outras

function Daruma_FI_VerificaDocAutenticacao: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_Autenticacao: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_Autenticacao';
function Daruma_FI_AutenticacaoStr( Autenticacao_Str :string ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_VerificaEstadoGaveta( Var Estado_Gaveta: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaEstadoGavetaStr( Estado_Gaveta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AcionaGaveta: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_AbrePortaSerial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaPortaSerial: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_AberturaDoDia( Valor_do_Suprimento: string; Forma_de_Pagamento: string ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechamentoDoDia: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_FechamentoDoDia';
function Daruma_FI_ImprimeConfiguracoesImpressora: Integer; StdCall; External 'Daruma32.dll'

// M�todos Prog e Config

function Daruma_FI_ProgramaAliquota( Valor_Aliquota: String; Tipo_Aliquota: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice_do_Totalizador: Integer; Nome_do_Totalizador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaFormasPagamento( Descricao_das_Formas_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaOperador( Nome_do_Operador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaArredondamento: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaTruncamento: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_ProgramaTruncamento';
function Daruma_FI_LinhasEntreCupons( Linhas_Entre_Cupons: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EspacoEntreLinhas( Espaco_Entre_Linhas: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaHorarioVerao: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EqualizaFormasPgto: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaVinculados( Vinculado: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgFormasPagtoSemVincular( Descricao_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';

// M�todos de Configura��o e Registry

function Daruma_FI_CfgFechaAutomaticoCupom( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgRedZAutomatico( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgImpEstGavVendas( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgLeituraXAuto( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgCalcArredondamento( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgHorarioVerao( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgSensorAut( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgCupomAdicional( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgPermMensPromCNF( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgEspacamentoCupons( DistanciaCupons: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgHoraMinReducaoZ( Hora_Min_para_ReducaoZ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgLimiarNearEnd( NumeroLinhas: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_Registry_AlteraRegistry( Chave: String; ValorChave: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Porta( Porta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Path( Path: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Status( Status: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_StatusFuncao( StatusFuncao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Retorno( Retorno: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ControlePorta( ControlePorta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ModoGaveta( ModoGaveta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Log( Log: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_NomeLog( NomeLog: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Separador( Separador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_SeparaMsgPromo( SeparaMsgPromo: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ZAutomatica( ZAutomatica: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_XAutomatica( XAutomatica: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_VendeItemUmaLinha( VendeItemUmaLinha: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Default: Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_RetornaValor( Produto: String; Chave: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TerminalServer( TerminalServer: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ErroExtendidoOk( ValorErro: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_AbrirDiaFiscal( AbrirDiaFiscal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_VendaAutomatica( VendaAutomatica: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_IgnorarPoucoPapel( IgnorarPoucoPapel: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ImprimeRegistry( Produto: String ): Integer; StdCall; External 'Daruma32.dll';

// M�todos de Informa��es e Status

function Daruma_FI_StatusCupomFiscal( StatusCupomFiscal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_StatusRelatorioGerencial( StatusRelGerencial: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_StatusComprovanteNaoFiscalVinculado( StatusCNFV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_StatusComprovanteNaoFiscalNaoVinculado( StatusCNFNV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaImpressoraLigada: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTotalizadoresNaoFiscaisEx( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTruncamento( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaStatusCheque( StatusCheque: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaModeloECF: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaDescricaoFormasPagamento( Descricao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaXPendente( XPendente: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaZPendente( ZPendente: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaDiaAberto( DiaAberto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaHorarioVerao( HoraioVerao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaFormasPagamentoEx( FormasEx: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FI_ClicheProprietario( Cliche: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ClicheProprietarioEx( ClicheEx: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroLoja( NumeroLoja: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VersaoFirmware( VersaoFirmware: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CGC_IE( CGC: String; IE: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LerAliquotasComIndice(AliquotasComIndice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_COO(Inicial: String; Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_MinutosImprimindo( Minutos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_MinutosLigada( Minutos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroSubstituicoesProprietario( NumeroSubstituicoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroIntervencoes( NumeroIntervencoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroReducoes( NumeroReducoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCuponsCancelados( NumeroCancelamentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataMovimento( Data: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ContadoresTotalizadoresNaoFiscais( Contadores: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FI_VendaBruta( VendaBruta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Descontos( ValorDescontos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Acrescimos( ValorAcrescimos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Cancelamentos( ValorCancelamentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DadosUltimaReducao( DadosReducao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ValorPagoUltimoCupom( ValorCupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ValorFormaPagamento( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ValorTotalizadorNaoFiscal( Totalizador: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UltimaFormaPagamento( Descricao_da_Forma: String; Valor_da_Forma: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_TipoUltimoDocumento(TipoUltimoDoc: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FI_MapaResumo: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_MapaResumo';
function Daruma_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Analitico';
function Daruma_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Mestre';
function Daruma_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_PalavraStatus( PalavraStatus: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_PalavraStatusBinario( PalavraStatusBinario: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaErroExtendido( ErroExtendido: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaAcrescimoNF( AcrescimoNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCFCancelados( CFCancelados: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCNFCancelados( CNFCancelados: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCLX(CLX: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCNFNV(CNFNV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCNFV(CNFV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCRO(CRO: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCRZ(CRZ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCRZRestante( CRZRestante: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCancelamentoNF( CancelamentoNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaDescontoNF( DescontoNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaGNF( GNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaTempoImprimindo( TempoImprimindo: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaTempoLigado( TempoLigado: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaTotalPagamentos( TotalPagamentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaTroco( Troco: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaZeros( Zeros: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaValorComprovanteNaoFiscal( Indice_CNF: String; Informacao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaIndiceComprovanteNaoFiscal( DescricaoRegistrCNF: String; RefIndice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaRegistradoresNaoFiscais( RegistrNaoFiscais: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaRegistradoresFiscais( RegistrFiscais: String ): Integer; StdCall; External 'Daruma32.dll';


// M�todos para TEF

function Daruma_TEF_EsperarArquivo( Path_Resp_TEF: String; Tempo_Espera: String; Travar: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TEF_ImprimirResposta( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_ImprimirRespostaCartao( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_FechaRelatorio: Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_SetFocus( TituloJanela: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_TravarTeclado( Travar: String ): Integer; StdCall; External 'Daruma32.dll'
{A Rotina Abaixo Analisa o Retorno da Funcao Chamada e nao do ECF}
Procedure Daruma_Analisa_Retorno(iRetorno: Integer);
{A Rotina Abaixo Analisa o Retorno da Impressora, do ECF}
Function Daruma_Retorno_Impressora(): Boolean;


  // Vari�vel geral para tratar o Retorno da Fun��o e tratamento de erros
var

  Daruma_iACK: Integer;
  Daruma_iST1: Integer;
  Daruma_iST2:Integer;
  Str_ErroExtendido   : String;
  intRetorno: Integer;

implementation


{A Rotina Abaixo Analisa o Retorno da Funcao Chamada e nao do ECF}
Procedure Daruma_Analisa_Retorno(iRetorno: Integer);
Begin

//    if dRetorno = -27 then
//      Daruma_Retorno_Impressora();

    if iRetorno = 0 then
       Application.MessageBox( 'Erro de comunica��o, a Fun��o nao conseguir enviar o comando', 'Daruma32.dll - Erro',
                                MB_IconError + MB_OK);

    If iRetorno = -1 Then
       Application.MessageBox( 'Erro de Execu��o da Fun��o', 'Daruma32.dll - Erro',
                                MB_IconError + MB_OK);

    if iRetorno = -2  then
       Application.MessageBox( 'Par�metro inv�lido passado na fun��o.!', 'Daruma32.dll - Erro',
                                MB_IconError + MB_OK);

    if iRetorno = -3  then
       Application.MessageBox( 'Al�quota n�o programada no ECF. !', 'Daruma32.dll - Aten��o',
                                MB_IconInformation + MB_OK);

    If iRetorno = -4 Then
       Application.MessageBox( 'A Chave ou Valor no Registry n�o Foi Encontado.!', 'Daruma32.dll - Aten��o',
                                MB_IconInformation + MB_OK);

    If iRetorno = -5 Then
       Application.MessageBox( 'Erro ao Abrir a Porta de Comunica��o', 'Daruma32.dll - Erro',
                                MB_IconError + MB_OK);

    If iRetorno = -6 Then
       Application.MessageBox( 'Impressora desligada ou cabo de comunica��o desconectado.', 'Daruma32.dll - Aten��o',
                                MB_IconInformation + MB_OK);

    If iRetorno = -7 Then
       Application.MessageBox( 'Banco n�o encontrado ou n�o cadastrado no Registry', 'Daruma32.dll - Aten��o',
                                MB_IconInformation + MB_OK);

    If iRetorno = -8 Then
       Application.MessageBox( ' Erro ao criar ou gravar no arquivo STATUS.TXT ou RETORNO.TXT.', 'Daruma32.dll - Erro',
                                MB_IconError + MB_OK);

  end;

{A Rotina Abaixo Analisa o Retorno da Impressora, do ECF}
Function Daruma_Retorno_Impressora(): Boolean;
  Var Daruma_iACK, Daruma_iST1, Daruma_iST2: Integer;
      Daruma_MSG: String;

  Begin
    Result:=false;
    Daruma_iACK := 0; //Variaveis devem ser inicializadas para Alocar Espaco
    Daruma_iST1 := 0;
    Daruma_iST2 := 0;
    Daruma_MSG :='';
    inTRetorno := Daruma_FI_RetornoImpressora(Daruma_iACK, Daruma_iST1, Daruma_iST2);
    If Daruma_iACK = 6 then
    begin
          // Verifica ST1

          IF Daruma_iST1 >= 128 Then BEGIN Daruma_iST1 := Daruma_iST1 - 128; Daruma_MSG := 'Papel Acabou!!' + #13 + #10;END;
          IF Daruma_iST1 >= 64  Then BEGIN Daruma_iST1 := Daruma_iST1 - 64;  Daruma_MSG := Daruma_MSG + 'Papel Acabando!!' + #13 + #10;END;
          IF Daruma_iST1 >= 32  Then BEGIN Daruma_iST1 := Daruma_iST1 - 32;  Daruma_MSG := Daruma_MSG + 'Erro no Relogio!!' + #13 + #10;END;
          IF Daruma_iST1 >= 16  Then BEGIN Daruma_iST1 := Daruma_iST1 - 16;  Daruma_MSG := Daruma_MSG + 'Impressora em Erro!!' + #13 + #10;END;
          IF Daruma_iST1 >= 8   Then BEGIN Daruma_iST1 := Daruma_iST1 - 8;   Daruma_MSG := Daruma_MSG + 'Falta o ESC no comando!!' + #13 + #10;END;
          IF Daruma_iST1 >= 4   Then BEGIN Daruma_iST1 := Daruma_iST1 - 4;   Daruma_MSG := Daruma_MSG + 'Nao existe o Comando!!' + #13 + #10;END;
          IF Daruma_iST1 >= 2   Then BEGIN Daruma_iST1 := Daruma_iST1 - 2;   Daruma_MSG := Daruma_MSG + 'Cupom Aberto!!' + #13 + #10;END;
          IF Daruma_iST1 >= 1   Then BEGIN Daruma_iST1 := Daruma_iST1 - 1;   Daruma_MSG := Daruma_MSG + 'Parametro Errado!!' + #13 + #10;END;
          // Verifica ST2
          IF Daruma_iST2 >= 128 Then BEGIN Daruma_iST2 := Daruma_iST2 - 128; Daruma_MSG := Daruma_MSG + 'Parametro Invalido!!' + #13 + #10;END;
          IF Daruma_iST2 >= 64  Then BEGIN Daruma_iST2 := Daruma_iST2 - 64;  Daruma_MSG := Daruma_MSG + 'Memoria Fisca Lotada!!' + #13 + #10;END;
          IF Daruma_iST2 >= 32  Then BEGIN Daruma_iST2 := Daruma_iST2 - 32;  Daruma_MSG := Daruma_MSG + 'Erro na Ram!!' + #13 + #10;END;
          IF Daruma_iST2 >= 16  Then BEGIN Daruma_iST2 := Daruma_iST2 - 16;  Daruma_MSG := Daruma_MSG + 'Aliquota Nao Programada!!' + #13 + #10;END;
          IF Daruma_iST2 >= 8   Then BEGIN Daruma_iST2 := Daruma_iST2 - 8;   Daruma_MSG := Daruma_MSG + 'N�o cabe mais Aliquota!!' + #13 + #10;END;
          IF Daruma_iST2 >= 4   Then BEGIN Daruma_iST2 := Daruma_iST2 - 4;   Daruma_MSG := Daruma_MSG + 'Cancelamento. N�o Permitido!!' + #13 + #10;END;
          IF Daruma_iST2 >= 2   Then BEGIN Daruma_iST2 := Daruma_iST2 - 2;   Daruma_MSG := Daruma_MSG + 'CNPJ n�o Programado!!' + #13 + #10;END;
          IF Daruma_iST2 >= 1   Then BEGIN Daruma_iST2 := Daruma_iST2 - 1;   Daruma_MSG := Daruma_MSG + 'Comando N�o Executado!!' + #13 + #10;END;
          if Length(Daruma_MSG) > 1 then
          begin
             Application.MessageBox(pchar(Daruma_MSG),'Messagem',mb_ok);
             Result:= False;
          end;

       End;

    If Daruma_iACK = 21 Then BEGIN
       Application.MessageBox('Daruma32.dll - Erro Fatal na Impressora','Erro',mb_ok);
       result:= False;
       Exit;

    End;
    Result:=true;

end;














end.
