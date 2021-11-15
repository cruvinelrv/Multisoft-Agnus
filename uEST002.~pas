{
 SISTEMA              --> MultWin
 PROGRAMA             --> EST002
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA (O GRANDE)
 PROGRAMADOR          --> Evaldo Barcelos Palma
 DATA DE CONCEPCAO    --> 10/11/2004
 FINALIDADE           --> MENU PRINCIPAL DO SISTEMA
 COMENTARIO           -->
}

unit uEST002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Menus, jpeg, ExtCtrls, StdCtrls, JvComponent,
  JvBaseDlg, JvAddPrinter, JvPageSetupTitled, JvPageSetup, Buttons,
  JvExButtons, JvButtons, JvWinDialogs, JvDSADialogs, JvComponentBase,
  ImgList, JvBalloonHint, uECF, JvExControls, JvgLabel, MachineID, IniFiles,
  StrUtils, WinSkinData, ShellApi;

type
  TfrmEST002 = class(TForm)
    MainMenu1: TMainMenu;
    Vendas1: TMenuItem;
    Caixa1: TMenuItem;
    Cadastros1: TMenuItem;
    Financeiro1: TMenuItem;
    Relatorios1: TMenuItem;
    Utilitarios1: TMenuItem;
    Sair1: TMenuItem;
    staPrincipal: TStatusBar;
    CTRLMenu: TPopupMenu;
    PesquisadeClientes1: TMenuItem;
    Help1: TMenuItem;
    Grupos1: TMenuItem;
    Funcionrios1: TMenuItem;
    CaixadoTurno1: TMenuItem;
    Fornecedor1: TMenuItem;
    ipodePagamento1: TMenuItem;
    PedidosdeMercadoria1: TMenuItem;
    LembretesGerais1: TMenuItem;
    abeladePreosProdutos1: TMenuItem;
    N1: TMenuItem;
    Calculadora1: TMenuItem;
    Seo1: TMenuItem;
    ReajustedePreo1: TMenuItem;
    AjustedeEstoque1: TMenuItem;
    NotaFiscalCupomFiscal1: TMenuItem;
    Ordemdeservio1: TMenuItem;
    ObservaesdeNotaFiscal1: TMenuItem;
    EntradaMercadoria1: TMenuItem;
    rocaMercadoria1: TMenuItem;
    N2: TMenuItem;
    abeladeDlar1: TMenuItem;
    Cidades1: TMenuItem;
    ContasaReceber1: TMenuItem;
    N3: TMenuItem;
    Portador1: TMenuItem;
    ContaCorrenteCaixa1: TMenuItem;
    ipodeDocumento1: TMenuItem;
    CentrodeCusto1: TMenuItem;
    Conta1: TMenuItem;
    RamodeAtividade1: TMenuItem;
    Parceiros1: TMenuItem;
    N4: TMenuItem;
    Oramentos1: TMenuItem;
    NaturezaOperao1: TMenuItem;
    SituaoTributria1: TMenuItem;
    GeraPreodecustovenda1: TMenuItem;
    SubGrupo1: TMenuItem;
    VendassemCarn1: TMenuItem;
    Usurios1: TMenuItem;
    GerarSenhaEspecial1: TMenuItem;
    MudaEmpresa1: TMenuItem;
    LocaisdeEstoque1: TMenuItem;
    ReidexaodosArquivos1: TMenuItem;
    Seo2: TMenuItem;
    Grupos2: TMenuItem;
    SubGrupo2: TMenuItem;
    Servios1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    FuncionariosVendedores1: TMenuItem;
    Financeiro2: TMenuItem;
    CentrodeCustos1: TMenuItem;
    Portador2: TMenuItem;
    TipodePagamento2: TMenuItem;
    ipodeDocumento2: TMenuItem;
    ContaFluxoFinanceiro1: TMenuItem;
    ContaBancoCaixa1: TMenuItem;
    LancaSaldoInicial1: TMenuItem;
    InformaEntrada1: TMenuItem;
    RetiradaCaixaTransfernciaFinanceiro1: TMenuItem;
    CancelaVendacomCaixaencerrado1: TMenuItem;
    EnceramentodoCaixa1: TMenuItem;
    RecebimentodeEntregas1: TMenuItem;
    ExclusodeLancamentonoCaixa1: TMenuItem;
    Gerencia1: TMenuItem;
    ReajustedePeos1: TMenuItem;
    EntradadeMercadoria1: TMenuItem;
    N5: TMenuItem;
    LanaBalano1: TMenuItem;
    AlterapreosLocaoIndividual1: TMenuItem;
    AumentofuturodeProduto1: TMenuItem;
    PedidodeMercadoria1: TMenuItem;
    CancelaPedido1: TMenuItem;
    Imprimerecibodeentregadepedido1: TMenuItem;
    N6: TMenuItem;
    OutrosCadastros1: TMenuItem;
    abeladeDolar1: TMenuItem;
    Estados1: TMenuItem;
    Contratos1: TMenuItem;
    RamosdeAtividade1: TMenuItem;
    Veculos1: TMenuItem;
    Associaes1: TMenuItem;
    Autoridades1: TMenuItem;
    ObservaesdeNF1: TMenuItem;
    CFOPNaturezadeOperao1: TMenuItem;
    Parceiros2: TMenuItem;
    N8: TMenuItem;
    ConfiguraImpressora1: TMenuItem;
    psdConfiguraImpressora: TPrinterSetupDialog;
    ConfiguraImpressora2: TMenuItem;
    AdicionaNovaImpressora1: TMenuItem;
    N9: TMenuItem;
    PaineldeControle1: TMenuItem;
    SuporteTcnico1: TMenuItem;
    ChamadoSuporteTcnico1: TMenuItem;
    RelatriodeVisita1: TMenuItem;
    ImprimePedido1: TMenuItem;
    Cidades2: TMenuItem;
    EmitieCupomFiscal1: TMenuItem;
    EmiteNotaFiscalVarejo1: TMenuItem;
    EmiteNotaFiscalAtacado1: TMenuItem;
    N10: TMenuItem;
    ManutenoNotaFiscal1: TMenuItem;
    ConsultadeVendas1: TMenuItem;
    ImportaOramento1: TMenuItem;
    N11: TMenuItem;
    Cancelamentos1: TMenuItem;
    Reimpresso1: TMenuItem;
    Oramento1: TMenuItem;
    OutrasNotasFiscais1: TMenuItem;
    Balco1: TMenuItem;
    N12: TMenuItem;
    CupomFiscalSimples1: TMenuItem;
    NotaFIscalSimples1: TMenuItem;
    N13: TMenuItem;
    ImprimeCarnParcela1: TMenuItem;
    ImportaVenda1: TMenuItem;
    CancelaCupomFiscal1: TMenuItem;
    CAncelaVEnda1: TMenuItem;
    CancelaNotaFiscal1: TMenuItem;
    CancelaNFcomplementar1: TMenuItem;
    Reimpresso2: TMenuItem;
    ReimprimeNotaFiscal1: TMenuItem;
    NotaFiscalComplementar1: TMenuItem;
    EspelhoNFVenda1: TMenuItem;
    IncluiOramento1: TMenuItem;
    AlteraOramento1: TMenuItem;
    ReimprimeOramento1: TMenuItem;
    ExcluiOramento1: TMenuItem;
    DevoluovendaNFEntrada1: TMenuItem;
    DevoluoCompra1: TMenuItem;
    CancelaDevoluoVEnda1: TMenuItem;
    CancelaDevoluoCompra1: TMenuItem;
    N14: TMenuItem;
    NotaFiscaldeRemessa1: TMenuItem;
    CancelaNFdeRemessa1: TMenuItem;
    Venda1: TMenuItem;
    Caixa2: TMenuItem;
    N15: TMenuItem;
    ImportarExportarprodutos1: TMenuItem;
    OrdemServio1: TMenuItem;
    Contas1: TMenuItem;
    ContasaReceber2: TMenuItem;
    ChequeCliente1: TMenuItem;
    N7: TMenuItem;
    LanamentodeSaldoInicial1: TMenuItem;
    DbitosCrditosVista1: TMenuItem;
    LanamentoFinanceiro1: TMenuItem;
    ConsultaSaldoContaCorrente1: TMenuItem;
    ransfernciaEntreContas1: TMenuItem;
    N16: TMenuItem;
    EncerramentoDirio1: TMenuItem;
    ClculoFinanceiro1: TMenuItem;
    N17: TMenuItem;
    Faturamento1: TMenuItem;
    CancelaFaturamento1: TMenuItem;
    N18: TMenuItem;
    EmissodeCheques1: TMenuItem;
    Cobrana1: TMenuItem;
    EmissodeRecibo1: TMenuItem;
    CadastraContasaPagar1: TMenuItem;
    BaixaContasaPagar1: TMenuItem;
    CadastraContasaReceber1: TMenuItem;
    BaixaContasaReceber1: TMenuItem;
    JunodeTtulos1: TMenuItem;
    CadastrChequeCliente1: TMenuItem;
    BaixaChequeCliente1: TMenuItem;
    ImprimeCobranadosContratos1: TMenuItem;
    GeraCobranadosContratos1: TMenuItem;
    EditaBoletoBancrio1: TMenuItem;
    ImprimeBoletoBancrio1: TMenuItem;
    BaixaBoletoBancrio1: TMenuItem;
    Cadastro1: TMenuItem;
    N1Grupo1: TMenuItem;
    N2Funcionrios1: TMenuItem;
    N3Fornecedorr1: TMenuItem;
    N4Cliente1: TMenuItem;
    Incluso1: TMenuItem;
    Alterao1: TMenuItem;
    Movimentao1: TMenuItem;
    FechaOS1: TMenuItem;
    ReabreOS1: TMenuItem;
    Reimprime1: TMenuItem;
    Reimprime2: TMenuItem;
    N19: TMenuItem;
    DevolveOS1: TMenuItem;
    HorasTrabalhadas1: TMenuItem;
    BaixarContasaPagar1: TMenuItem;
    Parametrosdosistema1: TMenuItem;
    N51: TMenuItem;
    N6FornecedorAlfaxCdigo1: TMenuItem;
    N7TipodePagamento1: TMenuItem;
    N8Seo1: TMenuItem;
    N9ContasCorrente1: TMenuItem;
    N0CentrosdeCusto1: TMenuItem;
    AContaContbil1: TMenuItem;
    BTiposdeDocumento1: TMenuItem;
    CPortador1: TMenuItem;
    DParceiros1: TMenuItem;
    ERamodeAtividade1: TMenuItem;
    FVeculos1: TMenuItem;
    GAutoridades1: TMenuItem;
    HAssociaes1: TMenuItem;
    IFichaCadastralFornecedor1: TMenuItem;
    JSubProdutos1: TMenuItem;
    N4Produtos1: TMenuItem;
    N20: TMenuItem;
    BSubprodutos1: TMenuItem;
    JvBalloonHint1: TJvBalloonHint;
    ImageList1: TImageList;
    N5ComandosECF1: TMenuItem;
    N1LeituraX1: TMenuItem;
    N2ReduoZ1: TMenuItem;
    N3LeituradasAlquotas1: TMenuItem;
    N4ProgramaAlquota1: TMenuItem;
    N5LeituraMemriaFiscal1: TMenuItem;
    N6UtilitrioFbrica1: TMenuItem;
    N7ComandosNCR1: TMenuItem;
    N8ProgramaFormasPagtoBematechDaruma1: TMenuItem;
    N9AcertaHorrioSCHALTER1: TMenuItem;
    spbImpressora: TPanel;
    Image2: TImage;
    ContasaPagar1: TMenuItem;
    CoolBar1: TCoolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    N2Clientes1: TMenuItem;
    N3Produtos1: TMenuItem;
    N21: TMenuItem;
    N4Vendas1: TMenuItem;
    N5Gerenciais1: TMenuItem;
    N6Caixa1: TMenuItem;
    N7Contasapagar1: TMenuItem;
    N8Contassreceber1: TMenuItem;
    N9Financeiro1: TMenuItem;
    N22: TMenuItem;
    N0Etiquetas1: TMenuItem;
    AProtocolos1: TMenuItem;
    N23: TMenuItem;
    BOrdemdeservio1: TMenuItem;
    N1Zerados11: TMenuItem;
    N2Negativos1: TMenuItem;
    N3AcimadoMximo1: TMenuItem;
    N4AbaixodoMnimo1: TMenuItem;
    N5Inativos1: TMenuItem;
    N1ClientesInativos1: TMenuItem;
    N2ClientesSemLimitedeCrdito1: TMenuItem;
    N3ClientesComExcessodeCompras1: TMenuItem;
    N4ClientesNegativados1: TMenuItem;
    N5FichaCadastraldeCliente1: TMenuItem;
    N6Aniversariantes1: TMenuItem;
    N7DependentesAniversariantes1: TMenuItem;
    N8Contratos1: TMenuItem;
    N9ClientesporRamodeAtividade1: TMenuItem;
    N0ClientesPropriedade1: TMenuItem;
    AClientesVendedor1: TMenuItem;
    BClientesTipoPagamento1: TMenuItem;
    CVeculosdeClientes1: TMenuItem;
    N6SemValidade1: TMenuItem;
    N7Vencimento1: TMenuItem;
    N8AVencer1: TMenuItem;
    N9EmDesuso1: TMenuItem;
    N0Empromoo1: TMenuItem;
    ASemCdigodeBarra1: TMenuItem;
    BSemPreos1: TMenuItem;
    CApenascomEstoque1: TMenuItem;
    DProdsCadastPerodo1: TMenuItem;
    EEtiquetaSimples1: TMenuItem;
    FDadosBsicos1: TMenuItem;
    GTabelaPreosNormal1: TMenuItem;
    HPreosporFabricante1: TMenuItem;
    IMovimentaoAnual1: TMenuItem;
    JEtiquetaPrateleira1: TMenuItem;
    KProdutoscomComisso1: TMenuItem;
    LMovimentoProdutoCliente1: TMenuItem;
    MPreosporGrupo1: TMenuItem;
    NPreosporDistribuidor1: TMenuItem;
    OZerados21: TMenuItem;
    PListagemParaBalano1: TMenuItem;
    QRelaoParaInventrio1: TMenuItem;
    RLocaisdeEstoque1: TMenuItem;
    SListadePreos21: TMenuItem;
    Produtoestoque1: TMenuItem;
    UMovimentaoGrupoPerodo1: TMenuItem;
    VDatadaltimaVenda1: TMenuItem;
    WProdutosporDataEntrada1: TMenuItem;
    N5VendasCliente1: TMenuItem;
    N6VendasCanceladas1: TMenuItem;
    N7ComisVddorGrupoProdVda1: TMenuItem;
    N8ComisVendedorProduto1: TMenuItem;
    N9ProdutosVendidosnoPerodo1: TMenuItem;
    N0VendasporDezena1: TMenuItem;
    ABalanoProdutosVendidosPerodo1: TMenuItem;
    BVendasDataVendaParceiro1: TMenuItem;
    CComissoVendedorProdFlxCaixa1: TMenuItem;
    DVendasCdigodeOperao1: TMenuItem;
    EEspelhodeVendasDevoluoPerodo1: TMenuItem;
    GVendasVendedorSeo1: TMenuItem;
    HGrficodeVendasporVendedor1: TMenuItem;
    IVendasClienteVendedorProduto1: TMenuItem;
    JNotasFiscaisdeRemessa1: TMenuItem;
    KOramentos1: TMenuItem;
    LAcompanhamentodeVendas1: TMenuItem;
    MVendasporDepartamento1: TMenuItem;
    O1: TMenuItem;
    N1DistdasVendasdoPerodoCaixa1: TMenuItem;
    N2TotalEstoqueSinttico1: TMenuItem;
    N3TotalEstoqueAnalticoGrupo1: TMenuItem;
    N4TotalEstoqueAnalticoFabricante1: TMenuItem;
    N5MovimentodeProdutoFabricante1: TMenuItem;
    N6RankdeProduto1: TMenuItem;
    N7RankdeCliente1: TMenuItem;
    N8RankdeVendedor1: TMenuItem;
    N9SugestodeCompra1: TMenuItem;
    N0EntradasCanceladas1: TMenuItem;
    AEntradasdoPerodo1: TMenuItem;
    BPedidosdoPerodo1: TMenuItem;
    CInventriodeEstoque1: TMenuItem;
    DDescontosConcedidos1: TMenuItem;
    EFluxodeCaixaGerencial1: TMenuItem;
    FFluxodeCaixacomPlanejamento1: TMenuItem;
    GRomaneiosporPerodoeVendedor1: TMenuItem;
    HTransfernciainternademercadorias1: TMenuItem;
    IItensApuradosLanadosnoBalano1: TMenuItem;
    JTrocasdeMercadorias1: TMenuItem;
    KAcessosdeUsurios1: TMenuItem;
    LSugestodeCompra21: TMenuItem;
    N1ConfernciadeCaixa1: TMenuItem;
    N2MapadeCaixa1: TMenuItem;
    N3CaixasdoDia1: TMenuItem;
    N4CaixasdoPerodoTurno1: TMenuItem;
    N5RetiradasdoPerodoTurno1: TMenuItem;
    N6EntradasdoPerodo1: TMenuItem;
    N7RetiradasdoPerodo1: TMenuItem;
    N1PrevisodePagamentoDirio1: TMenuItem;
    N2Fornecedor1: TMenuItem;
    N3Conta1: TMenuItem;
    N4Portador1: TMenuItem;
    N5CentrodeCusto1: TMenuItem;
    N6TipodeDocumento1: TMenuItem;
    N7DatadePagamento1: TMenuItem;
    N8RelaodeConferncia1: TMenuItem;
    N1PrevisodeRecebimentoDirio1: TMenuItem;
    N2Cliente1: TMenuItem;
    N3PortadorTipoDocVendedorParceiro1: TMenuItem;
    N4CobranaporCidade1: TMenuItem;
    N5ImprimeBloqueteBancrio1: TMenuItem;
    N6ImprimeDuplicata1: TMenuItem;
    N7RelatriodeFaturamento1: TMenuItem;
    N8ComissosobreRecebimento1: TMenuItem;
    N9RelaodeFaturamento1: TMenuItem;
    N0ExtratodeCliente1: TMenuItem;
    AParcelasaReceber1: TMenuItem;
    BResumoGerencialemAberto1: TMenuItem;
    CResumodoPerodoemAberto1: TMenuItem;
    DResumoGerencRecebimentoFluxo1: TMenuItem;
    ERelaodeConferncia1: TMenuItem;
    FRelaoGeraldeRecebimento1: TMenuItem;
    GRecebimentosdoPerodo1: TMenuItem;
    HParcelasemAberto1: TMenuItem;
    ICentrodeCusto1: TMenuItem;
    JRelaoparaNegativao1: TMenuItem;
    KPagamentosParciais1: TMenuItem;
    LJunodeTtulos1: TMenuItem;
    N1FluxoCCorrenteCaixa1: TMenuItem;
    N2ExtratoCCorrenteCaixa1: TMenuItem;
    N3ChequeClienteData1: TMenuItem;
    N3ChequeClienteData2: TMenuItem;
    N5ChequeClienteBaixado1: TMenuItem;
    N6MovimentoContaContbil1: TMenuItem;
    N7MovimentoCentrodeCusto1: TMenuItem;
    N8ChequesEmitidosSimples1: TMenuItem;
    N9ChequesEmitidosCompleto1: TMenuItem;
    N0MovimentodeProdutos1: TMenuItem;
    APrevisoFinanceira1: TMenuItem;
    N5ReimpremePedido1: TMenuItem;
    N6ReimprimeNotaFiscal1: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    Incluso2: TMenuItem;
    Reimpresso3: TMenuItem;
    edtDescDataSistema: TJvgLabel;
    edtDataSistema: TJvgLabel;
    N1VendasTipodePagamento1: TMenuItem;
    N2VendasVendedor1: TMenuItem;
    N6TEFADM1: TMenuItem;
    SpeedButton9: TSpeedButton;
    pnlDemo: TPanel;
    Image3: TImage;
    JvgLabel1: TJvgLabel;
    JvgLabel2: TJvgLabel;
    BitBtn1: TBitBtn;
    N29: TMenuItem;
    FDiriodeProdutos1: TMenuItem;
    SpeedButton10: TSpeedButton;
    MachineID1: TMachineID;
    Image1: TImage;
    pnlImprimindo2: TPanel;
    Image4: TImage;
    N5Cdigode1: TMenuItem;
    CdigodeBarraTrmica1: TMenuItem;
    N210: TMenuItem;
    N3VendasVendedorComisTipoPgto1: TMenuItem;
    N4VendasGrupodeProduto1: TMenuItem;
    SpeedButton11: TSpeedButton;
    N30: TMenuItem;
    DCpiadeSeguranaBakcup1: TMenuItem;
    Ajuda1: TMenuItem;
    N1Ajuda1: TMenuItem;
    N2Sobre1: TMenuItem;
    CMarcas: TMenuItem;
    N31: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CFOPNaturezadeOperao1Click(Sender: TObject);
    procedure Grupos2Click(Sender: TObject);
    procedure Seo2Click(Sender: TObject);
    procedure SubGrupo2Click(Sender: TObject);
    procedure CentrodeCustos1Click(Sender: TObject);
    procedure Portador2Click(Sender: TObject);
    procedure ipodeDocumento2Click(Sender: TObject);
    procedure ContaFluxoFinanceiro1Click(Sender: TObject);
    procedure ContaBancoCaixa1Click(Sender: TObject);
    procedure FuncionariosVendedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure RamosdeAtividade1Click(Sender: TObject);
    procedure TipodePagamento2Click(Sender: TObject);
    procedure ReidexaodosArquivos1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Parceiros2Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Contratos1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure Associaes1Click(Sender: TObject);
    procedure Autoridades1Click(Sender: TObject);
    procedure ObservaesdeNF1Click(Sender: TObject);
    procedure abeladeDolar1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure ConfiguraImpressora2Click(Sender: TObject);
    procedure AdicionaNovaImpressora1Click(Sender: TObject);
    procedure PaineldeControle1Click(Sender: TObject);
    procedure ChamadoSuporteTcnico1Click(Sender: TObject);
    procedure RelatriodeVisita1Click(Sender: TObject);
    procedure ReajustedePeos1Click(Sender: TObject);
    procedure LanaBalano1Click(Sender: TObject);
    procedure AumentofuturodeProduto1Click(Sender: TObject);
    procedure EntradadeMercadoria1Click(Sender: TObject);
    procedure PedidodeMercadoria1Click(Sender: TObject);
    procedure ImprimePedidoClick(Sender: TObject);
    procedure CancelaPedido1Click(Sender: TObject);
    procedure AlterapreosLocaoIndividual1Click(Sender: TObject);
    procedure LancaSaldoInicial1Click(Sender: TObject);
    procedure InformaEntrada1Click(Sender: TObject);
    procedure RetiradaCaixaTransfernciaFinanceiro1Click(Sender: TObject);
    procedure Cidades2Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure ImportarExportarprodutos1Click(Sender: TObject);
    procedure RecebimentodeEntregas1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure alCalculadoraExecute(Sender: TObject);
    procedure alSecaoExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Calculadora1Click(Sender: TObject);
    procedure PesquisadeClientes1Click(Sender: TObject);
    procedure abeladePreosProdutos1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure CaixadoTurno1Click(Sender: TObject);
    procedure NotaFiscalCupomFiscal1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure ipodePagamento1Click(Sender: TObject);
    procedure PedidosdeMercadoria1Click(Sender: TObject);
    procedure Seo1Click(Sender: TObject);
    procedure ReajustedePreo1Click(Sender: TObject);
    procedure AjustedeEstoque1Click(Sender: TObject);
    procedure Ordemdeservio1Click(Sender: TObject);
    procedure ObservaesdeNotaFiscal1Click(Sender: TObject);
    procedure EntradaMercadoria1Click(Sender: TObject);
    procedure rocaMercadoria1Click(Sender: TObject);
    procedure abeladeDlar1Click(Sender: TObject);
    procedure CadastraContasaPagar1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Portador1Click(Sender: TObject);
    procedure ContaCorrenteCaixa1Click(Sender: TObject);
    procedure N1Grupo1Click(Sender: TObject);
    procedure ipodeDocumento1Click(Sender: TObject);
    procedure CentrodeCusto1Click(Sender: TObject);
    procedure Conta1Click(Sender: TObject);
    procedure RamodeAtividade1Click(Sender: TObject);
    procedure Parceiros1Click(Sender: TObject);
    procedure NaturezaOperao1Click(Sender: TObject);
    procedure SituaoTributria1Click(Sender: TObject);
    procedure GeraPreodecustovenda1Click(Sender: TObject);
    procedure SubGrupo1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure MudaEmpresa1Click(Sender: TObject);
    procedure GerarSenhaEspecial1Click(Sender: TObject);
    procedure N2Funcionrios1Click(Sender: TObject);
    procedure N3Fornecedorr1Click(Sender: TObject);
    procedure N4Cliente1Click(Sender: TObject);
    procedure CancelaVendacomCaixaencerrado1Click(Sender: TObject);
    procedure EnceramentodoCaixa1Click(Sender: TObject);
    procedure ExclusodeLancamentonoCaixa1Click(Sender: TObject);
    procedure EmitieCupomFiscal1Click(Sender: TObject);
    procedure EmiteNotaFiscalVarejo1Click(Sender: TObject);
    procedure EmiteNotaFiscalAtacado1Click(Sender: TObject);
    procedure ManutenoNotaFiscal1Click(Sender: TObject);
    procedure ConsultadeVendas1Click(Sender: TObject);
    procedure ImportaOramento1Click(Sender: TObject);
    procedure CancelaCupomFiscal1Click(Sender: TObject);
    procedure CAncelaVEnda1Click(Sender: TObject);
    procedure CancelaNotaFiscal1Click(Sender: TObject);
    procedure CancelaNFcomplementar1Click(Sender: TObject);
    procedure Reimpresso2Click(Sender: TObject);
    procedure ReimprimeNotaFiscal1Click(Sender: TObject);
    procedure NotaFiscalComplementar1Click(Sender: TObject);
    procedure EspelhoNFVenda1Click(Sender: TObject);
    procedure IncluiOramento1Click(Sender: TObject);
    procedure AlteraOramento1Click(Sender: TObject);
    procedure ReimprimeOramento1Click(Sender: TObject);
    procedure ExcluiOramento1Click(Sender: TObject);
    procedure DevoluovendaNFEntrada1Click(Sender: TObject);
    procedure DevoluoCompra1Click(Sender: TObject);
    procedure CancelaDevoluoVEnda1Click(Sender: TObject);
    procedure CancelaDevoluoCompra1Click(Sender: TObject);
    procedure NotaFiscaldeRemessa1Click(Sender: TObject);
    procedure CancelaNFdeRemessa1Click(Sender: TObject);
    procedure Caixa2Click(Sender: TObject);
    procedure CupomFiscalSimples1Click(Sender: TObject);
    procedure NotaFIscalSimples1Click(Sender: TObject);
    procedure ImprimeCarnParcela1Click(Sender: TObject);
    procedure ImportaVenda1Click(Sender: TObject);
    procedure Incluso1Click(Sender: TObject);
    procedure Alterao1Click(Sender: TObject);
    procedure Movimentao1Click(Sender: TObject);
    procedure FechaOS1Click(Sender: TObject);
    procedure ReabreOS1Click(Sender: TObject);
    procedure Reimprime1Click(Sender: TObject);
    procedure Reimprime2Click(Sender: TObject);
    procedure DevolveOS1Click(Sender: TObject);
    procedure HorasTrabalhadas1Click(Sender: TObject);
    procedure ImprimePedido1Click(Sender: TObject);
    procedure Imprimerecibodeentregadepedido1Click(Sender: TObject);
    procedure BaixaContasaPagar1Click(Sender: TObject);
    procedure CadastraContasaReceber1Click(Sender: TObject);
    procedure BaixaContasaReceber1Click(Sender: TObject);
    procedure JunodeTtulos1Click(Sender: TObject);
    procedure CadastrChequeCliente1Click(Sender: TObject);
    procedure BaixaChequeCliente1Click(Sender: TObject);
    procedure LanamentodeSaldoInicial1Click(Sender: TObject);
    procedure DbitosCrditosVista1Click(Sender: TObject);
    procedure LanamentoFinanceiro1Click(Sender: TObject);
    procedure ConsultaSaldoContaCorrente1Click(Sender: TObject);
    procedure ransfernciaEntreContas1Click(Sender: TObject);
    procedure EncerramentoDirio1Click(Sender: TObject);
    procedure ClculoFinanceiro1Click(Sender: TObject);
    procedure Faturamento1Click(Sender: TObject);
    procedure CancelaFaturamento1Click(Sender: TObject);
    procedure EmissodeCheques1Click(Sender: TObject);
    procedure ImprimeCobranadosContratos1Click(Sender: TObject);
    procedure GeraCobranadosContratos1Click(Sender: TObject);
    procedure EditaBoletoBancrio1Click(Sender: TObject);
    procedure ImprimeBoletoBancrio1Click(Sender: TObject);
    procedure BaixaBoletoBancrio1Click(Sender: TObject);
    procedure EmissodeRecibo1Click(Sender: TObject);
    procedure BaixarContasaPagar1Click(Sender: TObject);
    procedure Parametrosdosistema1Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N6FornecedorAlfaxCdigo1Click(Sender: TObject);
    procedure N7TipodePagamento1Click(Sender: TObject);
    procedure N8Seo1Click(Sender: TObject);
    procedure N9ContasCorrente1Click(Sender: TObject);
    procedure N0CentrosdeCusto1Click(Sender: TObject);
    procedure AContaContbil1Click(Sender: TObject);
    procedure BTiposdeDocumento1Click(Sender: TObject);
    procedure CPortador1Click(Sender: TObject);
    procedure DParceiros1Click(Sender: TObject);
    procedure ERamodeAtividade1Click(Sender: TObject);
    procedure FVeculos1Click(Sender: TObject);
    procedure GAutoridades1Click(Sender: TObject);
    procedure HAssociaes1Click(Sender: TObject);
    procedure IFichaCadastralFornecedor1Click(Sender: TObject);
    procedure JSubProdutos1Click(Sender: TObject);
    procedure N4Produtos1Click(Sender: TObject);
    procedure BSubprodutos1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure N1LeituraX1Click(Sender: TObject);
    procedure N2ReduoZ1Click(Sender: TObject);
    procedure JvBalloonHint1Close(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure N5FichaCadastraldeCliente1Click(Sender: TObject);
    procedure N5ReimpremePedido1Click(Sender: TObject);
    procedure N6ReimprimeNotaFiscal1Click(Sender: TObject);
    procedure Incluso2Click(Sender: TObject);
    procedure GTabelaPreosNormal1Click(Sender: TObject);
    procedure Reimpresso3Click(Sender: TObject);
    procedure LMovimentoProdutoCliente1Click(Sender: TObject);
    procedure CoolBar1Resize(Sender: TObject);
    procedure Produtoestoque1Click(Sender: TObject);
    procedure N2VendasVendedor1Click(Sender: TObject);
    procedure N8ComisVendedorProduto1Click(Sender: TObject);
    procedure N6TEFADM1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure N8ProgramaFormasPagtoBematechDaruma1Click(Sender: TObject);
    procedure N9ProdutosVendidosnoPerodo1Click(Sender: TObject);
    procedure EEspelhodeVendasDevoluoPerodo1Click(Sender: TObject);
    procedure HGrficodeVendasporVendedor1Click(Sender: TObject);
    procedure IVendasClienteVendedorProduto1Click(Sender: TObject);
    procedure Verifica_Prot;
    procedure N5VendasCliente1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure KOramentos1Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure N9SugestodeCompra1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure AEntradasdoPerodo1Click(Sender: TObject);
    procedure KAcessosdeUsurios1Click(Sender: TObject);
    procedure N2MapadeCaixa1Click(Sender: TObject);
    procedure N6EntradasdoPerodo1Click(Sender: TObject);
    procedure N7RetiradasdoPerodo1Click(Sender: TObject);
    procedure N1PrevisodePagamentoDirio1Click(Sender: TObject);
    procedure N1ConfernciadeCaixa1Click(Sender: TObject);
    procedure N2Fornecedor1Click(Sender: TObject);
    procedure N1PrevisodeRecebimentoDirio1Click(Sender: TObject);
    procedure N2Cliente1Click(Sender: TObject);
    procedure N7RelatriodeFaturamento1Click(Sender: TObject);
    procedure KPagamentosParciais1Click(Sender: TObject);
    procedure LJunodeTtulos1Click(Sender: TObject);
    procedure N1FluxoCCorrenteCaixa1Click(Sender: TObject);
    procedure N2ExtratoCCorrenteCaixa1Click(Sender: TObject);
    procedure N3ChequeClienteData1Click(Sender: TObject);
    procedure N6MovimentoContaContbil1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N7MovimentoCentrodeCusto1Click(Sender: TObject);
    function Aluguel(): Boolean;
    function Libera_Aluguel(): Boolean;
    procedure Ultima_Entrada(Arg: String);
    procedure Msg_Irregular(aCodigo:Byte);
    function Gera_Senha(aCodigo: Byte; aProx_Vcto: TDate; aLib_Temp: String): Boolean;
    procedure CdigodeBarraTrmica1Click(Sender: TObject);
    procedure N2ClientesSemLimitedeCrdito1Click(Sender: TObject);
    procedure N3ClientesComExcessodeCompras1Click(Sender: TObject);
    procedure N4ClientesNegativados1Click(Sender: TObject);
    procedure N1ClientesInativos1Click(Sender: TObject);
    procedure N1Zerados11Click(Sender: TObject);
    procedure N2Negativos1Click(Sender: TObject);
    procedure N3AcimadoMximo1Click(Sender: TObject);
    procedure N4AbaixodoMnimo1Click(Sender: TObject);
    procedure CApenascomEstoque1Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure IMovimentaoAnual1Click(Sender: TObject);
    procedure MPreosporGrupo1Click(Sender: TObject);
    procedure PListagemParaBalano1Click(Sender: TObject);
    procedure QRelaoParaInventrio1Click(Sender: TObject);
    procedure UMovimentaoGrupoPerodo1Click(Sender: TObject);
    procedure WProdutosporDataEntrada1Click(Sender: TObject);
    procedure N1VendasTipodePagamento1Click(Sender: TObject);
    procedure N3VendasVendedorComisTipoPgto1Click(Sender: TObject);
    procedure DVendasCdigodeOperao1Click(Sender: TObject);
    procedure N4VendasGrupodeProduto1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FDiriodeProdutos1Click(Sender: TObject);
    procedure N7RankdeCliente1Click(Sender: TObject);
    procedure DCpiadeSeguranaBakcup1Click(Sender: TObject);
    procedure DDescontosConcedidos1Click(Sender: TObject);
    procedure N2Sobre1Click(Sender: TObject);
    procedure CMarcasClick(Sender: TObject);

  private
    { Private declarations }
    ECF: TECF;
    Procedure AtivaPermissoes;

  public
    { Public declarations }
    mOpcaoEmpresa, Bandeira1: String;
    Canc_cf_no_tef: Boolean;

  end;

var
  frmEST002: TfrmEST002;

implementation

uses uEst001, uEstF, uGlobal,  uCx01, uCx02, uCd01, uCd02, uCd03, uCd04, uCd06,
  uCd05, uCd07, uCd08, uCd0901, uCd0902, uCd0903, uCd0904, uCd1001,
  uCd1002, uCd1003, uCd1005, uCd1006, uCd1006_1, uCd1007, uCd1008, uCd1010, uCd11, uGr01, uGr02, uGr03, uGr04, uGr05, uGr06, uGr07, uGr08,
  uUt08, uUt0301, uUt0302, uCd01_2, uVd05, uF4, uF5, uF6, uF7, uCd0905, uCd0906, uCd1004, uVd1101, uCd1011, uCx06, uF12,
  uF3, uF8, uF9, DB, uShiftF3, uShiftF4, uShiftF5, uShiftF7, uShiftF8,
  uShiftF12, uAltF1, uFn0101, uAltF2, uAltF6, uAltF7, uRl0101, uAltF8,
  uAltF9, uAltF10, uAltF11, uAltF12, uCtrlF3, uCtrlF4, uCtrlF5, uCtrlF7,
  uCtrlF9, uCtrlF8, uRL0104, uFn0102, uCtrlF11, uVd1101_2, uParametros,
  uRL0105, uRL0108, uRl0119, uRL0120, uCd12, uFn15_1, uFn0201, uAltF5,
  uFn0202, uFn0203, uVd1101_8, uShiftF10, uFn05, uFn0301, uFn0302, uFn04,
  uFn06, udmImpNF, uRL0205, uFn08, uFn07, uFn10, uFn09, uFn1101, uVd0701,
  uCtrlF2, uVd0703, uRL0317, uFn1102, uCx07, uRL0322, uCx05, uVd1102,
  uGr09, uRL0330, uRL0402, uRL0408, uBandeiras2, unFuncoesTEF, uDaruma, uBandeiras,
  uForm_Receber, udmCd0903, uRL0409, uRL0415, uRL0413, uRL0418, uRl0405,
  uEST002_1, uRl0421, uRL0425, uRL0509, uRL0511, uRL0521, uRL0602, uRL0606,
  uRL0701, uRL0601, uRL0702, uRL0801, uRL0802, uRL0807, uRL0821, uRL0822,
  uRL0901, uRL0902, uRL0903, uRL0908, uRL0906, uRL0907, uEST002_2,
  DateUtils, uRL100101, udmProgs, uRL0202, uRL0301, uRL0313, uRL100102,
  udmCtrlF2, uDmCd02, uDmF3, uDMCd01, uDmCd03, udmCd0901, udmCd0902,
  udmCd0904, udmCd0905, udmCd0906, uDmCd08, udmCd06, udmCd1004, uDmCd07,
  udmCd1010, udmCd1002, udmCd1003, udmCd1005, udmCd1006, udmCd1008,
  udmCd1001, uDmCd05, udmGr01, udmGr03, udmGr05, udmGr02, udmGr09, udmGr04,
  udmGr07, uDmCx01, uDmCx02, udmCd1011, uDmVd1101, udmCd11, udmCx06, udmF7,
  uDmF12, udmF4, udmF5, uDmVd05, udmF6, uDmF8, udmF9, uDmShiftF3,
  udmShiftF4, udmShiftF5, udmShiftF7, udmShiftF8, udmShiftF12, uDmAltF1,
  udmFn0101, uDmAltF2, udmAltF6, udmAltF7, udmRL0101, udmAltF8, udmAltF9,
  udmAltF10, uDmAltF11, uDmAltF12, uDmCtrlF3, udmCtrlF5, udmRL0104,
  udmCx07, udmVd0701, udmVd0703, udmVd1102, udmFn0102, udmFn0201,
  udmFn0202, udmFn0203, udmFn0301, udmFn0302, udmFn04, udmFn05, udmFn06,
  udmFn07, udmFn08, udmFn09, udmFn10, udmFn1102, udmRL0105, udmRL0108,
  udmRL0119, uDmRL0120, uDmCd04, udmCd12, udmAltF5, udmShiftF10, udmRL0205,
  udmFn1101, udmRL0317, udmRL0322, udmRL0330, udmRL0402, udmRL0408,
  udmRL0409, udmRL0415, udmRL0413, udmRL0418, udmRl0405, udmRL0421,
  udmRL0425, udmRL0509, udmRL0511, udmRL0521, udmRL0602, udmRL0606,
  udmRL0701, udmRL0601, udmRL0702, udmRL0801, udmRL0802, udmRL0807,
  udmRL0821, udmRL0822, udmRL0901, udmRL0902, udmRL0903, udmRL0906,
  udmRL0907, udmRL0202, udmRL0301, udmRL0313, uRL0319, udmRL0319, uRL0323,
  udmRL0323, uRL0326, udmRL0326, uRL0327, udmRL0327, uRL0331, udmRL0331,
  uRL0333, udmRL0333, uRL0401, udmRL0401, uRL0403, udmRL0403, uRL0414,
  udmRL0414, uRL0404, udmRL0404, udmRL0416, uRL0416, uRL0507, uRL0514,
  udmRL0507, udmRL0514, uUt06, uAj02, uCd13, udmCd13;

{$R *.dfm}

procedure TfrmEST002.Sair1Click(Sender: TObject);
begin
   close;
end;

procedure TfrmEST002.FormShow(Sender: TObject);
begin
   staPrincipal.Panels[0].Text := 'Usuário : ' + NomeUsuario1;
   staPrincipal.Panels[1].Text := DateToStr(DataSystem1);

   AtivaPermissoes;
   mOpcaoEmpresa:=' And cod_empresa=' + CodigoEmpresa1;
   mOpcaoEmpresa:=' And cod_empresa=' + CodigoEmpresa1;

   edtDataSistema.Caption := DateToStr(DataSystem1);

   Verifica_Prot;  // verifica protecao

   if FileExists(sTEFPath + 'RESP\IntPos.001') then
   begin
      TEFNaoConfirmaOperacao;
      DeleteFile(sTEFPath + 'RESP\IntPos.001');
   end;

   if Demo1 then
      pnlDemo.Visible := True;
end;


Procedure TfrmEST002.AtivaPermissoes;
begin

   // se o usuario for master nao excecuta proximo passo
   if Master1='S' then
   begin
      Exit;
   end;
end;
procedure TfrmEST002.CFOPNaturezadeOperao1Click(Sender: TObject);
begin
   if not Verifica_acesso(51) then
      exit;

   frmCtrlF2:=tfrmCtrlF2.Create(Self);
   frmCtrlF2.ShowModal;
   frmCtrlF2.Release;
   frmCtrlF2:=nil;
   FreeAndNil(dmCtrlF2);
end;

procedure TfrmEST002.Grupos2Click(Sender: TObject);
begin
   if not Verifica_acesso(28) then
   exit;
   
   frmCd02 := TfrmCd02.Create(Self);
   frmCd02.ShowModal;
   frmCd02.Release;
   frmCd02 := nil;
   FreeAndNil(dmCd02);
end;

procedure TfrmEST002.Seo2Click(Sender: TObject);
begin
   if not Verifica_acesso(27) then
   exit;

   frmCd01 := TfrmCd01.Create(Self);
   frmCd01.ShowModal;
   frmCd01.Release;
   frmCd01 :=nil;
   FreeAndNil(dmCd01);
end;

procedure TfrmEST002.SubGrupo2Click(Sender: TObject);
begin
   if not Verifica_acesso(29) then
   exit;
   
   frmCd03 := TfrmCd03.Create(Self);
   frmCd03.ShowModal;
   frmCd03.Release;
   frmCd03 := nil;
   FreeAndNil(dmCd03);

end;

procedure TfrmEST002.CentrodeCustos1Click(Sender: TObject);
begin
   if not Verifica_acesso(37) then
   exit;

   frmCd0901 := TfrmCd0901.Create(Self);
   frmCd0901.ShowModal;
   frmCd0901.Release;
   frmCd0901 := nil;
   FreeAndNil(dmCd0901);
end;

procedure TfrmEST002.Portador2Click(Sender: TObject);
begin
   if not Verifica_acesso(38) then
   exit;

   frmCd0902 := TfrmCd0902.Create(Self);
   frmCd0902.ShowModal;
   frmCd0902.Release;
   frmCd0902 := nil;
   FreeAndNil(dmCd0902);
end;

procedure TfrmEST002.ipodeDocumento2Click(Sender: TObject);
begin
   if not Verifica_acesso(40) then
   exit;

   frmCd0904 := TfrmCd0904.Create(Self);
   frmCd0904.ShowModal;
   frmCd0904.Release;
   frmCd0904 := nil;
   FreeAndNil(dmCd0904);
end;

procedure TfrmEST002.ContaFluxoFinanceiro1Click(Sender: TObject);
begin
   if not Verifica_acesso(41) then
   exit;

   frmCd0905 := TfrmCd0905.Create(Self);
   frmCd0905.ShowModal;
   frmCd0905.Release;
   frmCd0905 := nil;
   FreeAndNil(dmCd0905);
end;

procedure TfrmEST002.ContaBancoCaixa1Click(Sender: TObject);
begin
   if not Verifica_acesso(42) then
   exit;

   frmCd0906 := TfrmCd0906.Create(Self);
   frmCd0906.ShowModal;
   frmCd0906.Release;
   frmCd0906 := nil;
   FreeAndNil(dmCd0906);
end;

procedure TfrmEST002.FuncionariosVendedores1Click(Sender: TObject);
begin
   if not Verifica_acesso(34) then
   exit;

   frmCd08 := TfrmCd08.Create(self);
   frmCd08.ShowModal;
   frmCd08.Release;
   frmCd08 := nil;
   FreeAndNil(dmCd08);
end;

procedure TfrmEST002.Clientes1Click(Sender: TObject);
begin
   if not Verifica_acesso(32) then
   exit;

   frmCd06 := TfrmCd06.cREATE(SELF);
   frmCd06.ShowModal;
   frmCd06.Release;
   frmCd06 := nil;
   FreeAndNil(dmCd06);
end;

procedure TfrmEST002.RamosdeAtividade1Click(Sender: TObject);
begin
   if not Verifica_acesso(46) then
   exit;

   frmCd1004 := tfrmCd1004.Create(Self);
   frmCd1004.ShowModal;
   frmCd1004.Release;
   frmCd1004 := nil;
   FreeAndNil(dmCd1004); 
end;

procedure TfrmEST002.TipodePagamento2Click(Sender: TObject);
begin
   if not Verifica_acesso(39) then
   exit;

   frmCd0903:=TfrmCd0903.Create(Self);
   frmCd0903.ShowModal;
   frmCd0903.Release;
   frmCd0903:=nil;
   FreeAndNil(dmCd0903);  
end;

procedure TfrmEST002.ReidexaodosArquivos1Click(Sender: TObject);
begin
   if not Verifica_acesso(133) then
      exit;

   frmUt08:=tfrmUt08.Create(Self);
   frmUt08.ShowModal;
   frmUt08.Release;
   frmUt08:=nil;
   // dmProgs istanciado automático
end;

procedure TfrmEST002.Fornecedores1Click(Sender: TObject);
begin
   if not Verifica_acesso(33) then
   exit;

   frmCd07:=tfrmCd07.Create(Self);
   frmCd07.ShowModal;
   frmCd07.Release;
   frmCd07:=nil;
   FreeAndNil(dmCd07);
end;

procedure TfrmEST002.Parceiros2Click(Sender: TObject);
begin
   if not Verifica_acesso(52) then
      exit;

   frmCd1010:=TfrmCd1010.create(self);
   frmCd1010.ShowModal;
   frmCd1010.Release;
   frmCd1010:=nil;
   FreeAndNil(dmCd1010);
end;

procedure TfrmEST002.Estados1Click(Sender: TObject);
begin
   if not Verifica_acesso(44) then
      exit;

   frmCd1002:=tfrmCd1002.Create(self);
   frmCd1002.ShowModal;
   frmCd1002.Release;
   frmCd1002:=nil;
   FreeAndNil(dmCd1002);
end;

procedure TfrmEST002.Contratos1Click(Sender: TObject);
begin
   if not Verifica_acesso(45) then
   exit;

   frmCd1003:=TfrmCd1003.Create(Self);
   frmCd1003.ShowModal;
   frmCd1003.Release;
   frmCd1003:=nil;
   FreeAndNil(dmCd1003);
end;

procedure TfrmEST002.Veculos1Click(Sender: TObject);
begin
   if not Verifica_acesso(47) then
   exit;

   frmCd1005:=TfrmCd1005.Create(Self);
   frmCd1005.ShowModal;
   frmCd1005.Release;
   frmCd1005:=nil;
   FreeAndNil(dmCd1005);
end;

procedure TfrmEST002.Associaes1Click(Sender: TObject);
begin
   if not Verifica_acesso(48) then
      exit;
      
   frmCd1006:=TfrmCd1006.Create(Self);
   frmCd1006.ShowModal;
   frmCd1006.Release;
   frmCd1006:=nil;
   FreeAndNil(dmCd1006);
end;

procedure TfrmEST002.Autoridades1Click(Sender: TObject);
begin
   if not Verifica_acesso(49) then
      exit;

   frmCd1007:=TfrmCd1007.Create(Self);
   frmCd1007.ShowModal;
   frmCd1007.Release;
   frmCd1007:=nil;
end;

procedure TfrmEST002.ObservaesdeNF1Click(Sender: TObject);
begin
   if not Verifica_acesso(50) then
      exit;

   frmCd1008:=TfrmCd1008.Create(Self);
   frmCd1008.ShowModal;
   frmCd1008.Release;
   frmCd1008:=nil;
   FreeAndNil(dmCd1008);
end;

procedure TfrmEST002.abeladeDolar1Click(Sender: TObject);
begin
   if not Verifica_acesso(43) then
   exit;

   frmCd1001:=TfrmCd1001.Create(Self);
   frmCd1001.ShowModal;
   frmCd1001.Release;
   frmCd1001:=nil;
   FreeAndNil(dmCd1001);
end;

procedure TfrmEST002.Servios1Click(Sender: TObject);
begin
   if not Verifica_acesso(31) then
   exit;

   frmCd05 := TfrmCd05.Create(self);
   frmCd05.ShowModal;
   frmCd05.Release;
   frmCd05 := nil;
   FreeAndNil(dmCd05);
end;

procedure TfrmEST002.ConfiguraImpressora2Click(Sender: TObject);
begin
   psdConfiguraImpressora.Execute;
end;

procedure TfrmEST002.AdicionaNovaImpressora1Click(Sender: TObject);
begin
//   japNovaImpressora.Execute;
end;

procedure TfrmEST002.PaineldeControle1Click(Sender: TObject);
begin
//   jadPainelControle.Execute;
end;

procedure TfrmEST002.ChamadoSuporteTcnico1Click(Sender: TObject);
begin
   frmUt0301:=tfrmUt0301.Create(self);
   frmUt0301.ShowModal;
   frmUt0301:=nil;
end;

procedure TfrmEST002.RelatriodeVisita1Click(Sender: TObject);
begin
   frmUt0302:=tfrmUt0302.Create(self);
   frmUt0302.ShowModal;
   frmUt0302:=nil;
end;

procedure TfrmEST002.ReajustedePeos1Click(Sender: TObject);
begin
   if not Verifica_acesso(209) then
      exit;

   frmGr01:=TfrmGr01.create(self);
   frmGr01.ShowModal;
   frmGr01.release;
   frmGr01:=nil;
   FreeAndNil(dmGr01);
end;

procedure TfrmEST002.LanaBalano1Click(Sender: TObject);
begin
   if not Verifica_acesso(211) then
      exit;

   frmGr03:=TfrmGr03.create(self);
   frmGr03.ShowModal;
   frmGr03.Release;
   frmGr03:=nil;
   FreeAndNil(dmGr03);
end;

procedure TfrmEST002.AumentofuturodeProduto1Click(Sender: TObject);
begin
   if not Verifica_acesso(213) then
      exit;

   frmGr05:=tfrmGr05.create(self);
   frmGr05.ShowModal;
   frmGr05.Release;
   frmGr05:=nil;
   FreeAndNil(dmGr05);
end;

procedure TfrmEST002.EntradadeMercadoria1Click(Sender: TObject);
begin
   if not Verifica_acesso(210) then
      exit;

   frmGr02:=TfrmGr02.create(self);
   frmGr02.ShowModal;
   frmGr02.Release;
   frmGr02:=nil;
   FreeAndNil(dmGr02);
end;

procedure TfrmEST002.PedidodeMercadoria1Click(Sender: TObject);
begin
   if not Verifica_acesso(214) then
      exit;

   frmGr06:=tfrmGr06.create(self);
   frmGr06.ShowModal;
   frmGr06.Release;
   frmGr06:=nil;
end;

procedure TfrmEST002.ImprimePedidoClick(
  Sender: TObject);
begin
   if not Verifica_acesso(217) then
      exit;

   frmGr09 := TfrmGr09.Create(Self);
   frmGr09.ShowModal;
   frmGr09.Release;
   frmGr09 := nil;
   FreeAndNil(dmGr09);
end;

procedure TfrmEST002.CancelaPedido1Click(Sender: TObject);
begin
   if not Verifica_acesso(215) then
      exit;

   frmGr07 :=TfrmGr07.create(self);
   frmGr07.ShowModal;
   frmGr07.Release;
   frmGr07:=nil;
   FreeAndNil(dmGr07);
end;

procedure TfrmEST002.AlterapreosLocaoIndividual1Click(Sender: TObject);
begin
   if not Verifica_acesso(212) then
      exit;

   frmGr04:=tfrmGr04.create(self);
   frmGr04.ShowModal;
   frmGr04.Release;
   frmGr04:=nil;
   FreeAndNil(dmGr04);
end;

procedure TfrmEST002.LancaSaldoInicial1Click(Sender: TObject);
begin
   if not Verifica_acesso(20) then
      exit;

   frmCx01     :=TfrmCx01.create(self);
   frmCx01.Tag :=1; // para entradas
   frmCx01.ShowModal;
   frmCx01.Release;
   frmCx01     :=nil;
   FreeAndNil(dmCx01);
end;

procedure TfrmEST002.InformaEntrada1Click(Sender: TObject);
begin
   if not Verifica_acesso(21) then
      exit;
      
   frmCx02     := TfrmCx02.create(self);
   frmCx02.Tag := 1; // para entradas
   frmCx02.ShowModal;
   frmCx02.Release;
   frmCx02     := nil;
   FreeAndNil(dmCx02);
end;

procedure TfrmEST002.RetiradaCaixaTransfernciaFinanceiro1Click(
  Sender: TObject);
begin
   if not Verifica_acesso(22) then
      exit;

   frmCx02 := TfrmCx02.create(self);

   frmCx02.Tag := 2; // para Retiradas
   frmCx02.Caption := 'Informa retiradas';
   frmCx02.cobTipOperacao1.Items.Clear;
   frmCx02.cobTipOperacao1.Items.Add('Pagamento de Outras Lojas');
   frmCx02.cobTipOperacao1.Items.Add('Outras Saídas');

   frmCx02.ShowModal;
   frmCx02.Release;
   frmCx02     := nil;
   FreeAndNil(dmCx02);
end;

procedure TfrmEST002.Cidades2Click(Sender: TObject);
begin
   if not Verifica_acesso(157) then
      exit;

   frmCd1011 := TfrmCd1011.Create(Self);
   frmCd1011.ShowModal;
   frmCd1011.Release;
   frmCd1011 := nil;
   FreeAndNil(dmCd1011);
end;

procedure TfrmEST002.Venda1Click(Sender: TObject);
begin
   if not Verifica_acesso(194) then
      exit;

  frmVd1101 := TfrmVd1101.Create(Self);

  frmVd1101.PEM                := 'A1';
  frmVd1101.Tipo_lancamento1   := 'V';
  frmVd1101.Serie2             := '';
  frmVd1101.edSerie.Enabled    := False;
  frmVd1101.GroupBox10.Visible := False;

  frmVd1101.GroupBox1.Left  := 3;
  frmVd1101.GroupBox1.Width := frmVd1101.GroupBox1.Width + 62;

  frmVd1101.RadioButton4.Checked := True;
  frmVd1101.RadioButton4.Enabled := False;
  frmVd1101.RadioButton3.Enabled := False;

  frmVd1101.ShowModal;
  frmVd1101.Release;
  frmVd1101 := nil;
  FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.ImportarExportarprodutos1Click(Sender: TObject);
begin
   if not Verifica_acesso(156) then
      exit;

   frmCd11 := TfrmCd11.Create(Self);
   frmCd11.ShowModal;
   frmCd11.Release;
   frmCd11 := nil;
   FreeAndNil(dmCd11);
end;

procedure TfrmEST002.RecebimentodeEntregas1Click(Sender: TObject);
begin
   if not Verifica_acesso(25) then
      exit;

   frmCx06 := TfrmCx06.Create(Self);
   frmCx06.ShowModal;
   frmCx06.Release;
   frmCx06 := nil;
   FreeAndNil(dmCx06);
end;

procedure TfrmEST002.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if Application.MessageBox('        Confirma a Saida do Sistema                   ','Confirmação   ',MB_YESNO+MB_ICONQUESTION)=idNo then
      Abort;

   Action := caFree;
end;

procedure TfrmEST002.alCalculadoraExecute(Sender: TObject);
begin
   WinExec('calc.exe', SW_SHOW);
end;

procedure TfrmEST002.alSecaoExecute(Sender: TObject);
begin
   frmCd01_2:=TfrmCd01_2.create(application);
   frmCd01_2.ShowModal;
   frmCd01_2.Release;
end;

procedure TfrmEST002.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    Teclas(key,Self);
end;

procedure TfrmEST002.Calculadora1Click(Sender: TObject);
begin
   WinExec('calc.exe', SW_SHOW);
end;

procedure TfrmEST002.PesquisadeClientes1Click(Sender: TObject);
begin
   frmF7:=tfrmF7.Create(Application);
   frmF7.ShowModal;
   frmF7.Release;
   frmF7:=nil;
   FreeAndNil(dmF7);
end;

procedure TfrmEST002.abeladePreosProdutos1Click(Sender: TObject);
begin
   frmF12:=TfrmF12.Create(Self);
   frmF12.ShowModal;
   frmF12.Release;
   frmF12:=nil;
   FreeAndNil(dmF12);
end;

procedure TfrmEST002.Funcionrios1Click(Sender: TObject);
begin
   frmF4:=tfrmF4.Create(Application);
   frmF4.ShowModal;
   frmF4.Release;
   FreeAndNil(dmF4);
end;

procedure TfrmEST002.CaixadoTurno1Click(Sender: TObject);
begin
   frmF5:=TfrmF5.Create(application);
   frmF5.ShowModal;
   frmF5.Release;
   FreeAndNil(dmF5);
end;

procedure TfrmEST002.NotaFiscalCupomFiscal1Click(Sender: TObject);
begin
   frmVd05:=TfrmVd05.create(application);
   frmVd05.ShowModal;
   frmVd05.Release;
   FreeAndNil(dmVd05);
end;

procedure TfrmEST002.Fornecedor1Click(Sender: TObject);
begin
   frmF6:=TfrmF6.Create(Application);
   frmF6.ShowModal;
   frmF6.Release;
   FreeAndNil(dmF6);
end;

procedure TfrmEST002.Grupos1Click(Sender: TObject);
begin
   frmF3 := TfrmF3.create(self);
   frmF3.ShowModal;
   frmF3.Release;
   frmF3 := nil;
   FreeAndNil(DmF3);
end;

procedure TfrmEST002.ipodePagamento1Click(Sender: TObject);
begin
  frmF8 := TfrmF8.Create(Self);
  frmF8.ShowModal;
  frmF8.Release;
  frmF8 := nil;
  FreeAndNil(dmF8);
end;

procedure TfrmEST002.PedidosdeMercadoria1Click(Sender: TObject);
begin
   frmF9 := TfrmF9.Create(self);
   frmF9.ShowModal;
   frmF9.Release;
   frmF9 := nil;
   FreeAndNil(dmF9);
end;

procedure TfrmEST002.Seo1Click(Sender: TObject);
begin
  frmShiftF3 := TfrmShiftF3.Create(Self);
  frmShiftF3.ShowModal;
  frmShiftF3.Release;
  frmShiftF3 := nil;
  FreeAndNil(dmShiftF3);
end;

procedure TfrmEST002.ReajustedePreo1Click(Sender: TObject);
begin
  frmShiftF4 := TfrmShiftF4.Create(Self);
  frmShiftF4.ShowModal;
  frmShiftF4.Release;
  frmShiftF4 := nil;
  FreeAndNil(dmShiftF4);
end;

procedure TfrmEST002.AjustedeEstoque1Click(Sender: TObject);
begin
  frmShiftF5 := TfrmShiftF5.Create(Self);
  frmShiftF5.ShowModal;
  frmShiftF5.Release;
  frmShiftF5 := nil;
  FreeAndNil(dmShiftF5);
end;

procedure TfrmEST002.Ordemdeservio1Click(Sender: TObject);
begin
   frmShiftF7 := TfrmShiftF7.Create(Self);
   frmShiftF7.ShowModal;
   frmShiftF7.Release;
   frmShiftF7 := nil;
   FreeAndNil(dmShiftF7);
end;

procedure TfrmEST002.ObservaesdeNotaFiscal1Click(Sender: TObject);
begin
   frmShiftF8 := TfrmShiftF8.Create(Self);
   frmShiftF8.ShowModal;
   frmShiftF8.Release;
   frmShiftF8 := nil;
   FreeAndNil(dmShiftF8); 
end;

procedure TfrmEST002.EntradaMercadoria1Click(Sender: TObject);
begin
   frmGr02:=TfrmGr02.create(self);
   frmGr02.ShowModal;
   frmGr02.Release;
   frmGr02:=nil;
   FreeAndNil(dmGr02);
end;

procedure TfrmEST002.rocaMercadoria1Click(Sender: TObject);
begin
   frmShiftF12 := TfrmShiftF12.Create(Self);
   frmShiftF12.ShowModal;
   frmShiftF12.Release;
   frmShiftF12 := nil;
   FreeAndNil(dmShiftF12);
end;

procedure TfrmEST002.abeladeDlar1Click(Sender: TObject);
begin
   frmAltF1 := TfrmAltF1.Create(Self);
   frmAltF1.ShowModal;
   frmAltF1.Release;
   frmAltF1 := nil;
   FreeAndNil(dmAltF1);
end;

procedure TfrmEST002.CadastraContasaPagar1Click(Sender: TObject);
begin
   if not Verifica_acesso(220) then
      exit;

   frmFn0101 := TfrmFn0101.Create(Self);
   frmFn0101.ShowModal;
   frmFn0101.Release;
   frmFn0101 := nil;
   FreeAndNil(dmFn0101);
end;

procedure TfrmEST002.Cidades1Click(Sender: TObject);
begin
   frmAltF2 := TfrmAltF2.Create(Self);
   frmAltF2.ShowModal;
   frmAltF2.Release;
   frmAltF2 := nil;
   FreeAndNil(dmAltF2);
end;

procedure TfrmEST002.Portador1Click(Sender: TObject);
begin
   frmAltF6 := TfrmAltF6.Create(Self);
   frmAltF6.ShowModal;
   frmAltF6.Release;
   frmAltF6 := nil;
   FreeAndNil(dmAltF6);
end;

procedure TfrmEST002.ContaCorrenteCaixa1Click(Sender: TObject);
begin
   frmAltF7 := TfrmAltF7.Create(Self);
   frmAltF7.ShowModal;
   frmAltF7.Release;
   frmAltF7 := nil;
   FreeAndNil(dmAltF7);
end;

procedure TfrmEST002.N1Grupo1Click(Sender: TObject);
begin
   if not Verifica_acesso(247) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.ipodeDocumento1Click(Sender: TObject);
begin
   frmAltF8 := TfrmAltF8.Create(Self);
   frmAltF8.ShowModal;
   frmAltF8.Release;
   frmAltF8 := nil;
   FreeAndNil(dmAltF8);
end;

procedure TfrmEST002.CentrodeCusto1Click(Sender: TObject);
begin
   frmAltF9 := TfrmAltF9.Create(Self);
   frmAltF9.ShowModal;
   frmAltF9.Release;
   frmAltF9 := nil;
   FreeAndNil(dmAltF9);
end;

procedure TfrmEST002.Conta1Click(Sender: TObject);
begin
   frmAlt10 := TfrmAlt10.Create(Self);
   frmAlt10.ShowModal;
   frmAlt10.Release;
   frmAlt10 := nil;
   FreeAndNil(dmAltF10);
end;

procedure TfrmEST002.RamodeAtividade1Click(Sender: TObject);
begin
   frmAltF11 := TfrmAltF11.Create(Self);
   frmAltF11.ShowModal;
   frmAltF11.Release;
   frmAltF11 := nil;
   FreeAndNil(dmAltF11);
end;

procedure TfrmEST002.Parceiros1Click(Sender: TObject);
begin
   frmAltF12 := TfrmAltF12.Create(Self);
   frmAltF12.ShowModal;
   frmAltF12.Release;
   frmAltF12 := nil;
   FreeAndNil(dmAltF12);
end;

procedure TfrmEST002.NaturezaOperao1Click(Sender: TObject);
begin
   frmCtrlF2:=tfrmCtrlF2.Create(Self);
   frmCtrlF2.ShowModal;
   frmCtrlF2.Release;
   frmCtrlF2:=nil;
   FreeAndNil(dmCtrlF2);
end;

procedure TfrmEST002.SituaoTributria1Click(Sender: TObject);
begin
   frmCtrlF3 := TfrmCtrlF3.Create(Self);
   frmCtrlF3.ShowModal;
   frmCtrlF3.Release;
   frmCtrlF3 := nil;
   FreeAndNil(dmCtrlF3);
end;

procedure TfrmEST002.GeraPreodecustovenda1Click(Sender: TObject);
begin
   frmCtrlF4 := TfrmCtrlF4.Create(Self);
   frmCtrlF4.ShowModal;
   frmCtrlF4.Release;
   frmCtrlF4 := nil;
   // não istancia nenhum datamodule
end;

procedure TfrmEST002.SubGrupo1Click(Sender: TObject);
begin
   frmCtrlF5 := TfrmCtrlF5.Create(Self);
   frmCtrlF5.ShowModal;
   frmCtrlF5.Release;
   frmCtrlF5 := nil;
   FreeAndNil(dmCtrlF5);
end;

procedure TfrmEST002.Usurios1Click(Sender: TObject);
begin
   frmCtrlF7 := TfrmCtrlF7.Create(Self);
   frmCtrlF7.ShowModal;
   frmCtrlF7.Release;
   frmCtrlF7 := nil;
   // dmProgs
end;

procedure TfrmEST002.MudaEmpresa1Click(Sender: TObject);
begin
   frmCtrlF9 := TfrmCtrlF9.Create(Self);
   frmCtrlF9.ShowModal;
   frmCtrlF9.Release;
   frmCtrlF9 := nil;
   // dmProgs
end;

procedure TfrmEST002.GerarSenhaEspecial1Click(Sender: TObject);
begin
   frmCtrlF8 := TfrmCtrlF8.Create(Self);
   frmCtrlF8.ShowModal;
   frmCtrlF8.Release;
   frmCtrlF8 := nil;
   // dmProgs
end;

procedure TfrmEST002.N2Funcionrios1Click(Sender: TObject);
begin
   if not Verifica_acesso(248) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 1;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.N3Fornecedorr1Click(Sender: TObject);
begin
   if not Verifica_acesso(249) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 2;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.N4Cliente1Click(Sender: TObject);
begin
   if not Verifica_acesso(250) then
      exit;

   frmRL0104 := TfrmRL0104.Create(Self);
   frmRL0104.ShowModal;
   frmRL0104.Release;
   frmRL0104 := nil;
   FreeAndNil(dmRL0104);
end;

procedure TfrmEST002.CancelaVendacomCaixaencerrado1Click(Sender: TObject);
begin
   if not Verifica_acesso(23) then
      exit;

   frmCx06 := TfrmCx06.Create(Self);
   frmCx06.Caption := 'Cancela venda com caixa encerrado';
   frmCx06.Tag := 1;
   frmCx06.ShowModal;
   frmCx06.Release;
   frmCx06 := nil;
   FreeAndNil(dmCx06);
end;

procedure TfrmEST002.EnceramentodoCaixa1Click(Sender: TObject);
begin
   if not Verifica_acesso(24) then
      exit;

   frmCx05 := TfrmCx05.Create(Self);
   frmCx05.ShowModal;
   frmCx05.Release;
   frmCx05 := nil;
   // dmProgs
end;

procedure TfrmEST002.ExclusodeLancamentonoCaixa1Click(Sender: TObject);
begin
   if not Verifica_acesso(26) then
      exit;

   frmCx07 := TfrmCx07.Create(Self);
   frmCx07.ShowModal;
   frmCx07.Release;
   frmCx07 := nil;
   FreeAndNil(dmCx07);
end;

procedure TfrmEST002.EmitieCupomFiscal1Click(Sender: TObject);
begin
   if not Verifica_acesso(163) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Self);

   frmVd1101.PEM               := '1';
   frmVd1101.Caption           := 'CUPOM FISCAL';
   {frmVd1101.edPesquisa.Width  := 241;
   frmVd1101.edPesquisa.Left   := 136;
   frmVd1101.RadioButton1.Left := 136;
   frmVd1101.RadioButton2.Left := 206;

   frmVd1101.GroupBox9.Visible := True;}

   frmVd1101.Serie2            := 'CF';
   frmVd1101.edSerie.Enabled   := False;
   frmVd1101.Tipo_lancamento1  := 'V';

   frmVd1101.edtCFOPInd .Enabled := False;
   frmVd1101.edtCFOPInd .Color   := clBtnFace;
   frmVd1101.edCFOP     .Enabled := False;
   frmVd1101.edCFOP     .Color   := clBtnFace;

   spbImpressora.Visible := True;

   frmVd1101.ShowModal;

   spbImpressora.Visible := False;

   frmVd1101.Release;
   frmVd1101 := nil;
   FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.EmiteNotaFiscalVarejo1Click(Sender: TObject);
begin
   if not Verifica_acesso(164) then
      exit;

  frmVd1101 := TfrmVd1101.Create(Self);

  frmVd1101.PEM                  := '2';
  frmVd1101.Tipo_lancamento1     := 'V';

  frmVd1101.RadioButton4.Checked := True; // Tipo de preço no varejo
  frmVd1101.RadioButton4.Enabled := False;
  frmVd1101.RadioButton3.Enabled := False;

  frmVd1101.Serie2               := 'NF';
  frmVd1101.edSerie.Enabled      := True;

  frmVd1101.ShowModal;
  frmVd1101.Release;
  frmVd1101 := nil;
  FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.EmiteNotaFiscalAtacado1Click(Sender: TObject);
begin
   if not Verifica_acesso(165) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Self);

   frmVd1101.PEM                  := '3';
   frmVd1101.Tipo_lancamento1     := 'V';

   frmVd1101.Serie2               := 'NF';
   frmVd1101.edSerie.Enabled      := True;

   frmVd1101.ShowModal;
   frmVd1101.Release;
   frmVd1101 := nil;
   FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.ManutenoNotaFiscal1Click(Sender: TObject);
begin
   if not Verifica_acesso(166) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Self);
      
   frmVd1101_2     := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '4';
   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Venda a corrigir?';
   //--------------------------------
   frmVd1101_2.Tipo1 := 'V';
   frmVd1101_2.ShowModal;
   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.ConsultadeVendas1Click(Sender: TObject);
begin
   if not Verifica_acesso(167) then
      exit;

   frmVd05:=TfrmVd05.create(application);
   frmVd05.ShowModal;
   frmVd05.Release;
   FreeAndNil(dmVd05);
end;

procedure TfrmEST002.ImportaOramento1Click(Sender: TObject);
begin
   if not Verifica_acesso(168) then
      exit;
   frmVd1101 := TfrmVd1101.Create(Application);

   frmVd1101_2 := TfrmVd1101_2.Create(self);
   
   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Orçamento a importar?';
   frmVd1101_2.Tipo1 := 'O';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.CancelaCupomFiscal1Click(Sender: TObject);
begin
   if not Verifica_acesso(170) then
      exit;

   frmVd0701 := TfrmVd0701.Create(Self);
   frmVd0701.ShowModal;
   frmVd0701.Release;
   frmVd0701 := nil;
   FreeAndNil(dmVd0701);
end;

procedure TfrmEST002.CAncelaVEnda1Click(Sender: TObject);
begin
   if not Verifica_acesso(171) then
      exit;

   frmVd1101         := TfrmVd1101.Create(Self);
   frmVd1101.Caption := 'CANCELAR VENDA';

   frmVd1101_2   := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '72';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Venda a cancelar?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'V';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.CancelaNotaFiscal1Click(Sender: TObject);
begin
   if not Verifica_acesso(172) then
      exit;

   frmVd0703 := TfrmVd0703.Create(Self);
   frmVd0703.ShowModal;
   frmVd0703.Release;
   frmVd0703 := nil;
   FreeAndNil(dmVd0703);
end;

procedure TfrmEST002.CancelaNFcomplementar1Click(Sender: TObject);
begin
   if not Verifica_acesso(173) then
      exit;
end;

procedure TfrmEST002.Reimpresso2Click(Sender: TObject);
begin
   if not Verifica_acesso(175) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Application);
   frmVd1101_2   := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '81';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Pedido a reimprimir?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'V';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.ReimprimeNotaFiscal1Click(Sender: TObject);
begin
   if not Verifica_acesso(176) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Application);
   frmVd1101_2   := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '82';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Venda a reimprimir?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'V';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.NotaFiscalComplementar1Click(Sender: TObject);
begin
   if not Verifica_acesso(177) then
      exit;
end;

procedure TfrmEST002.EspelhoNFVenda1Click(Sender: TObject);
begin
   if not Verifica_acesso(178) then
      exit;
end;

procedure TfrmEST002.IncluiOramento1Click(Sender: TObject);
begin
   if not Verifica_acesso(180) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Self);

   frmVd1101.PEM               := '91';
   frmVd1101.Caption           := 'ORÇAMENTO';
   frmVd1101.Tipo_lancamento1  := 'O';
   frmVd1101.Serie2            := 'OR';
   frmVd1101.edSerie.Enabled   := False;

   // Bloco de componetes relacionado a busca de parceiros
   frmVd1101.Panel7.Visible         := False;
   frmVd1101.SpeedButton4.Visible   := False;
   frmVd1101.edtCodParceiro.Visible := False;
   frmVd1101.Label20.Visible        := False;

   frmVd1101.ShowModal;
   frmVd1101.Release;
   frmVd1101 := nil;
   FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.AlteraOramento1Click(Sender: TObject);
begin
   if not Verifica_acesso(181) then
      exit;

   frmVd1101     := TfrmVd1101.Create(Application);

   frmVd1101_2   := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '92';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Orçamento a alterar?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'O';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.ReimprimeOramento1Click(Sender: TObject);
begin
   if not Verifica_acesso(182) then
      exit;
      
   frmVd1101 := TfrmVd1101.Create(Application);

   frmVd1101_2 := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '93';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Orçamento a Imprimir?';
   //---------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'O';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.ExcluiOramento1Click(Sender: TObject);
begin
   if not Verifica_acesso(184) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Application);

   frmVd1101_2 := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '94';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Orçamento a Excluir?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'O';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.DevoluovendaNFEntrada1Click(Sender: TObject);
begin
   if not Verifica_acesso(187) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Self);

   frmVd1101_8 := TfrmVd1101_8.Create(Self);
   frmVd1101_8.ShowModal;

   if frmVd1101_8.Tag = 1 then
      frmVd1101.ShowModal;

   frmVd1101_8.Release;
   frmVd1101_8 := nil;

   frmVd1101.Release;
   frmVd1101 := nil;
   FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.DevoluoCompra1Click(Sender: TObject);
begin
   if not Verifica_acesso(188) then
      exit;

  frmVd1101 := TfrmVd1101.Create(Self);

  frmVd1101.PEM              := '02';
  frmVd1101.Tipo_lancamento1 := 'D';

  frmVd1101.RadioButton4.Checked := True; // Tipo de preço no varejo
  frmVd1101.RadioButton4.Enabled := False;
  frmVd1101.RadioButton3.Enabled := False;

  frmVd1101.Serie2          := 'NF';
  frmVd1101.edSerie.Enabled := True;

  frmVd1101.Caption := 'DEVOLUÇÃO DE COMPRA';

  frmVd1101.GroupBox2.Caption := 'Fornecedor';

  frmVd1101.ShowModal;
  frmVd1101.Release;
  frmVd1101 := nil;
  FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.CancelaDevoluoVEnda1Click(Sender: TObject);
begin
   if not Verifica_acesso(189) then
   exit;

   frmVd1101         := TfrmVd1101.Create(Self);
   frmVd1101.Caption := 'CANCELAR DEVOLUÇÃO DE VENDA';

   frmVd1101_2   := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '03';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Dev. Venda a cancelar?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'D';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.CancelaDevoluoCompra1Click(Sender: TObject);
begin
   if not Verifica_acesso(190) then
      exit;
   frmVd1101         := TfrmVd1101.Create(Self);
   frmVd1101.Caption := 'CANCELAR DEVOLUÇÃO DE COMPRA';

   frmVd1101_2   := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '04';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Dev. Compra a cancelar?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'D';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.NotaFiscaldeRemessa1Click(Sender: TObject);
begin
   if not Verifica_acesso(191) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Self);

   frmVd1101.PEM              := '05';
   frmVd1101.Tipo_lancamento1 := 'R';

   frmVd1101.RadioButton4.Checked := True; // Tipo de preço no varejo
   frmVd1101.RadioButton4.Enabled := False;
   frmVd1101.RadioButton3.Enabled := False;

   frmVd1101.Serie2          := 'NF';
   frmVd1101.edSerie.Enabled := True;

   frmVd1101.Caption := 'NOTA FISCAL DE REMESSA';

   frmVd1101.GroupBox2.Caption := 'Fornecedor';

   frmVd1101.ShowModal;
   frmVd1101.Release;
   frmVd1101 := nil;
   FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.CancelaNFdeRemessa1Click(Sender: TObject);
begin
   if not Verifica_acesso(192) then
      exit;

   frmVd1101         := TfrmVd1101.Create(Self);
   frmVd1101.Caption := 'CANCELA NOTA FISCAL DE REMESSA';

   frmVd1101_2   := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '06';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'NF remessa a cancelar?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'R';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.Caixa2Click(Sender: TObject);
begin
   if not Verifica_acesso(195) then
      exit;

   frmVd1102 := TfrmVd1102.Create(Self);
   frmVd1102.ShowModal;
   frmVd1102.Release;
   frmVd1102 := nil;
   FreeAndNil(dmVd1102);
end;

procedure TfrmEST002.CupomFiscalSimples1Click(Sender: TObject);
begin
   if not Verifica_acesso(196) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Self);

   frmVd1101.PEM               := 'B';
   frmVd1101.Caption           := 'CUPOM FISCAL SIMPLES';
   frmVd1101.Serie2            := 'CF';
   frmVd1101.edSerie.Enabled   := False;
   frmVd1101.Tipo_lancamento1  := 'V';

   frmVd1101.edtCFOPInd .Enabled := False;
   frmVd1101.edtCFOPInd .Color   := clBtnFace;
   frmVd1101.edCFOP     .Enabled := False;
   frmVd1101.edCFOP     .Color   := clBtnFace;

   frmVd1101.ShowModal;
   frmVd1101.Release;
   frmVd1101 := nil;
   FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.NotaFIscalSimples1Click(Sender: TObject);
begin
   if not Verifica_acesso(197) then
      exit;

   frmVd1101 := TfrmVd1101.Create(Self);

   frmVd1101.PEM               := 'C';
   frmVd1101.Caption           := 'NOTA FISCAL SIMPLES';
   frmVd1101.Serie2            := 'NF';
   frmVd1101.edSerie.Enabled   := False;
   frmVd1101.Tipo_lancamento1  := 'V';

   frmVd1101.ShowModal;
   frmVd1101.Release;
   frmVd1101 := nil;
   FreeAndNil(dmVd1101);
end;

procedure TfrmEST002.ImprimeCarnParcela1Click(Sender: TObject);
begin
   if not Verifica_acesso(198) then
      exit;
end;

procedure TfrmEST002.ImportaVenda1Click(Sender: TObject);
begin
   if not Verifica_acesso(199) then
      exit;
end;

procedure TfrmEST002.Incluso1Click(Sender: TObject);
begin
   if not Verifica_acesso(200) then
      exit;
end;

procedure TfrmEST002.Alterao1Click(Sender: TObject);
begin
   if not Verifica_acesso(201) then
      exit;
end;

procedure TfrmEST002.Movimentao1Click(Sender: TObject);
begin
   if not Verifica_acesso(202) then
      exit;
end;

procedure TfrmEST002.FechaOS1Click(Sender: TObject);
begin
   if not Verifica_acesso(203) then
      exit;
end;

procedure TfrmEST002.ReabreOS1Click(Sender: TObject);
begin
   if not Verifica_acesso(204) then
      exit;
end;

procedure TfrmEST002.Reimprime1Click(Sender: TObject);
begin
   if not Verifica_acesso(205) then
      exit;
end;

procedure TfrmEST002.Reimprime2Click(Sender: TObject);
begin
   if not Verifica_acesso(206) then
      exit;
end;

procedure TfrmEST002.DevolveOS1Click(Sender: TObject);
begin
   if not Verifica_acesso(207) then
      exit;
end;

procedure TfrmEST002.HorasTrabalhadas1Click(Sender: TObject);
begin
   if not Verifica_acesso(208) then
      exit;
end;

procedure TfrmEST002.ImprimePedido1Click(Sender: TObject);
begin
   if not Verifica_acesso(217) then
      exit;

   
end;

procedure TfrmEST002.Imprimerecibodeentregadepedido1Click(Sender: TObject);
begin
   if not Verifica_acesso(216) then
      exit;

   frmGr08 := tfrmGr08.create(self);
   frmGr08.ShowModal;
   frmGr08.Release;
   frmGr08 := nil;
end;

procedure TfrmEST002.BaixaContasaPagar1Click(Sender: TObject);
begin
   if not Verifica_acesso(221) then
      exit;

   frmFn0102 := TfrmFn0102.Create(Self);
   frmFn0102.ShowModal;
   frmFn0102.Release;
   frmFn0102 := nil;
   FreeAndNil(dmFn0102);
end;

procedure TfrmEST002.CadastraContasaReceber1Click(Sender: TObject);
begin
   if not Verifica_acesso(223) then
      exit;

   frmFn0201 := TfrmFn0201.Create(Self);
   frmFn0201.ShowModal;
   frmFn0201.Release;
   frmFn0201 := nil;
   FreeAndNil(dmFn0201);
end;

procedure TfrmEST002.BaixaContasaReceber1Click(Sender: TObject);
begin
   if not Verifica_acesso(224) then
      exit;

   frmFn0202 := TfrmFn0202.Create(Self);
   frmFn0202.ShowModal;
   frmFn0202.Release;
   frmFn0202 := nil;
   FreeAndNil(dmFn0202);
end;

procedure TfrmEST002.JunodeTtulos1Click(Sender: TObject);
begin
   if not Verifica_acesso(225) then
      exit;

   frmFn0203 := TfrmFn0203.Create(Self);
   frmFn0203.ShowModal;
   frmFn0203.Release;
   frmFn0203 := nil;
   FreeAndNil(dmFn0203);
end;

procedure TfrmEST002.CadastrChequeCliente1Click(Sender: TObject);
begin
   if not Verifica_acesso(227) then
      exit;

   frmFn0301 := TfrmFn0301.Create(Self);
   frmFn0301.ShowModal;
   frmFn0301.Release;
   frmFn0301 := nil;
   FreeAndNil(dmFn0301);
end;

procedure TfrmEST002.BaixaChequeCliente1Click(Sender: TObject);
begin
   if not Verifica_acesso(228) then
      exit;

   frmFn0302 := TfrmFn0302.Create(Self);
   frmFn0302.ShowModal;
   frmFn0302.Release;
   frmFn0302 := nil;
   FreeAndNil(dmFn0302);
end;

procedure TfrmEST002.LanamentodeSaldoInicial1Click(Sender: TObject);
begin
   if not Verifica_acesso(229) then
      exit;

   frmFn04 := TfrmFn04.Create(Self);
   frmFn04.ShowModal;
   frmFn04.Release;
   frmFn04 := nil;
   FreeAndNil(dmFn04);
end;

procedure TfrmEST002.DbitosCrditosVista1Click(Sender: TObject);
begin
   if not Verifica_acesso(230) then
      exit;

   frmFn05 := TfrmFn05.Create(Self);
   frmFn05.ShowModal;
   frmFn05.Release;
   frmFn05 := nil;
   FreeAndNil(dmFn05);
end;

procedure TfrmEST002.LanamentoFinanceiro1Click(Sender: TObject);
begin
   if not Verifica_acesso(231) then
      exit;

   frmFn06 := TfrmFn06.Create(Self);
   frmFn06.ShowModal;
   frmFn06.Release;
   frmFn06 := nil;
   FreeAndNil(dmFn06);
end;

procedure TfrmEST002.ConsultaSaldoContaCorrente1Click(Sender: TObject);
begin
   if not Verifica_acesso(232) then
      exit;

   frmFn07 := TfrmFn07.Create(Self);
   frmFn07.ShowModal;
   frmFn07.Release;
   frmFn07 := nil;
   FreeAndNil(dmFn07);
end;

procedure TfrmEST002.ransfernciaEntreContas1Click(Sender: TObject);
begin
   if not Verifica_acesso(233) then
      exit;

   frmFn08 := TfrmFn08.Create(Self);
   frmFn08.ShowModal;
   frmFn08.Release;
   frmFn08 := nil;
   FreeAndNil(dmFn08);
end;

procedure TfrmEST002.EncerramentoDirio1Click(Sender: TObject);
begin
   if not Verifica_acesso(234) then
      exit;

   frmFn09 := TfrmFn09.Create(Self);
   frmFn09.ShowModal;
   frmFn09.Release;
   frmFn09 := nil;
   FreeAndNil(dmFn09);
end;

procedure TfrmEST002.ClculoFinanceiro1Click(Sender: TObject);
begin
   if not Verifica_acesso(235) then
      exit;

   frmFn10 := TfrmFn10.Create(Self);
   frmFn10.ShowModal;
   frmFn10.Release;
   frmFn10 := nil;
   FreeAndNil(dmFn10);
end;

procedure TfrmEST002.Faturamento1Click(Sender: TObject);
begin
   if not Verifica_acesso(236) then
      exit;

end;

procedure TfrmEST002.CancelaFaturamento1Click(Sender: TObject);
begin
   if not Verifica_acesso(237) then
      exit;

   frmFn1102 := TfrmFn1102.Create(Self);
   frmFn1102.Tag := 1;
   frmFn1102.ShowModal;
   frmFn1102.Release;
   frmFn1102 := nil;
   FreeAndNil(dmFn1102);
end;

procedure TfrmEST002.EmissodeCheques1Click(Sender: TObject);
begin
   if not Verifica_acesso(238) then
      exit;

end;

procedure TfrmEST002.ImprimeCobranadosContratos1Click(Sender: TObject);
begin
   if not Verifica_acesso(240) then
      exit;

end;

procedure TfrmEST002.GeraCobranadosContratos1Click(Sender: TObject);
begin
   if not Verifica_acesso(241) then
      exit;

end;

procedure TfrmEST002.EditaBoletoBancrio1Click(Sender: TObject);
begin
   if not Verifica_acesso(242) then
      exit;

end;

procedure TfrmEST002.ImprimeBoletoBancrio1Click(Sender: TObject);
begin
   if not Verifica_acesso(243) then
      exit;

end;

procedure TfrmEST002.BaixaBoletoBancrio1Click(Sender: TObject);
begin
   if not Verifica_acesso(244) then
      exit;

end;

procedure TfrmEST002.EmissodeRecibo1Click(Sender: TObject);
begin
   if not Verifica_acesso(245) then
      exit;

   frmFn15_1 := TfrmFn15_1.Create(Self);
   frmFn15_1.ShowModal;
   frmFn15_1.Release;
   frmFn15_1 := nil;
end;

procedure TfrmEST002.BaixarContasaPagar1Click(Sender: TObject);
begin
   frmCtrlF11 := TfrmCtrlF11.Create(Self);
   frmCtrlF11.ShowModal;
   frmCtrlF11.Release;
   frmCtrlF11 := nil;
end;

procedure TfrmEST002.Parametrosdosistema1Click(Sender: TObject);
begin
   if not Verifica_acesso(371) then
      exit;

   frmParametros := TfrmParametros.Create(self);
   frmParametros.ShowModal;
   frmParametros.Release;
   frmParametros := nil;
end;

procedure TfrmEST002.N51Click(Sender: TObject);
begin
   if not Verifica_acesso(290) then
      exit;

   frmRL0105 := TfrmRL0105.Create(Self);
   frmRL0105.ShowModal;
   frmRL0105.Release;
   frmRL0105 := nil;
   FreeAndNil(dmRL0105);
end;

procedure TfrmEST002.N6FornecedorAlfaxCdigo1Click(Sender: TObject);
begin
   if not Verifica_acesso(290) then
      exit;

   frmRL0105 := TfrmRL0105.Create(Self);
   frmRL0105.Tag := 1;
   frmRL0105.ShowModal;
   frmRL0105.Release;
   frmRL0105 := nil;
   FreeAndNil(dmRL0105);
end;

procedure TfrmEST002.N7TipodePagamento1Click(Sender: TObject);
begin
   if not Verifica_acesso(291) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 3;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.N8Seo1Click(Sender: TObject);
begin
   if not Verifica_acesso(292) then
      exit;

   frmRl0108 := TfrmRl0108.Create(Self);
   frmRl0108.ShowModal;
   frmRl0108.Release;
   frmRl0108 := nil;
   FreeAndNil(dmRL0108);
end;

procedure TfrmEST002.N9ContasCorrente1Click(Sender: TObject);
begin
   if not Verifica_acesso(293) then
      exit;

   frmRL0105 := TfrmRL0105.Create(Self);
   frmRL0105.Tag := 2;
   frmRL0105.ShowModal;
   frmRL0105.Release;
   frmRL0105 := nil;
   FreeAndNil(dmRL0105);
end;

procedure TfrmEST002.N0CentrosdeCusto1Click(Sender: TObject);
begin
   if not Verifica_acesso(294) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 4;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.AContaContbil1Click(Sender: TObject);
begin
   if not Verifica_acesso(295) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 5;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.BTiposdeDocumento1Click(Sender: TObject);
begin
   if not Verifica_acesso(296) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 6;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.CPortador1Click(Sender: TObject);
begin
   if not Verifica_acesso(297) then
      exit;

   frmRL0105     := TfrmRL0105.Create(Self);
   frmRl0105.Tag := 3;
   frmRL0105.ShowModal;
   frmRL0105.Release;
   frmRL0105 := nil;
   FreeAndNil(dmRL0105);
end;

procedure TfrmEST002.DParceiros1Click(Sender: TObject);
begin
   if not Verifica_acesso(298) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 7;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.ERamodeAtividade1Click(Sender: TObject);
begin
   if not Verifica_acesso(299) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 8;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.FVeculos1Click(Sender: TObject);
begin
   if not Verifica_acesso(300) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 9;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.GAutoridades1Click(Sender: TObject);
begin
   if not Verifica_acesso(301) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 10;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.HAssociaes1Click(Sender: TObject);
begin
   if not Verifica_acesso(302) then
      exit;

   frmRl0101 := TfrmRl0101.Create(Self);
   frmRl0101.Tag := 11;
   frmRl0101.ShowModal;
   frmRl0101.Release;
   frmRl0101 := nil;
   FreeAndNil(dmRL0101);
end;

procedure TfrmEST002.IFichaCadastralFornecedor1Click(Sender: TObject);
begin
   if not Verifica_acesso(303) then
      exit;

   frmRl0119 := TfrmRl0119.Create(Self);
   frmRl0119.ShowModal;
   frmRl0119.Release;
   frmRl0119 := nil;
   FreeAndNil(dmRL0119);
end;

procedure TfrmEST002.JSubProdutos1Click(Sender: TObject);
begin
   if not Verifica_acesso(304) then
      exit;

   frmRl0120 := TfrmRl0120.Create(Self);
   frmRl0120.ShowModal;
   frmRl0120.Release;
   frmRl0120 := nil;
   FreeAndNil(dmRL0120);
end;

procedure TfrmEST002.N4Produtos1Click(Sender: TObject);
begin
   if not Verifica_acesso(30) then
   exit;

   frmCd04 := tfrmCd04.Create(self);
   frmCd04.ShowModal;
   frmCd04.Release;
   frmCd04 :=nil;
   FreeAndNil(dmCd04);
end;

procedure TfrmEST002.BSubprodutos1Click(Sender: TObject);
begin
   if not Verifica_acesso(305) then
   exit;

   frmCd12 := tfrmCd12.Create(self);
   frmCd12.ShowModal;
   frmCd12.Release;
   frmCd12 :=nil;
   FreeAndNil(dmCd12);
end;

procedure TfrmEST002.ContasaReceber1Click(Sender: TObject);
begin
   frmAltF5 := TfrmAltF5.Create(Self);
   frmAltF5.ShowModal;
   frmAltF5.Release;
   frmAltF5 := nil;
   FreeAndNil(dmAltF5);
end;

procedure TfrmEST002.N1LeituraX1Click(Sender: TObject);
begin
   if StrToInt(ModeloEcf1) = 1 then
   begin
      ECF.Executa := Bematech_FI_LeituraX;
      ECF.Analisa;
   end
   else if StrToInt(ModeloEcf1) = 2 then
   begin
      ECF.Executa := EPSON_RelatorioFiscal_LeituraX;
      ECF.Analisa;
   end
   else if StrToInt(ModeloEcf1) = 5 then
   begin
      ECF.Executa := Daruma_FI_LeituraX;
      ECF.Analisa;
   end
   else
      Application.MessageBox('Modelo de ECF informado nos parâmetros não é válido. Verifique.','Atenção', MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmEST002.N2ReduoZ1Click(Sender: TObject);
begin
   if StrToInt(ModeloEcf1) = 1 then
   begin
      ECF.Executa := Bematech_FI_ReducaoZ(DateToStr(DataSystem1),TimeToStr(Time));
      ECF.Analisa;
   end
   else if StrToInt(ModeloEcf1) = 2 then
   begin
      ECF.Executa := EPSON_RelatorioFiscal_RZ( pchar( DateToStr(DataSystem1) ),pchar( TimeToStr(Time) ),0,'');
      ECF.Analisa;
   end
   else if StrToInt(ModeloEcf1) = 1 then
   begin
      ECF.Executa := Daruma_FI_ReducaoZ(DateToStr(DataSystem1),TimeToStr(Time));
      ECF.Analisa;
   end
   else
      Application.MessageBox('Modelo de ECF informado nos parâmetros não é válido. Verifique.','Atenção', MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmEST002.JvBalloonHint1Close(Sender: TObject);
begin
   spbImpressora.Visible := False;
end;

procedure TfrmEST002.ContasaPagar1Click(Sender: TObject);
begin
   frmShiftF10 := TfrmShiftF10.Create(Self);
   frmShiftF10.ShowModal;
   frmShiftF10.Release;
   frmShiftF10 := nil;
   FreeAndNil(dmShiftF10);
end;

procedure TfrmEST002.N5FichaCadastraldeCliente1Click(Sender: TObject);
begin
   if not Verifica_acesso(313) then
      exit;

   frmRL0205 := TfrmRL0205.Create(Self);
   frmRL0205.ShowModal;
   frmRL0205.Release;
   frmRL0205 := nil;
   FreeAndNil(dmRL0205);
end;

procedure TfrmEST002.N5ReimpremePedido1Click(Sender: TObject);
begin
   frmVd1101 := TfrmVd1101.Create(Application);
   frmVd1101_2   := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '85';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Pedido a reimprimir?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'V';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.N6ReimprimeNotaFiscal1Click(Sender: TObject);
begin
   frmVd1101 := TfrmVd1101.Create(Application);
   frmVd1101_2   := TfrmVd1101_2.Create(self);
   frmVd1101.PEM := '86';

   // Não alterar a caption abaixo sem antes alterar no frmVd1101_2.
   frmVd1101_2.Label1.Caption := 'Venda a reimprimir?';
   //--------------------------------------------------------------

   frmVd1101_2.Tipo1 := 'V';

   frmVd1101_2.ShowModal;

   frmVd1101_2.Release;
   frmVd1101_2 := nil;
end;

procedure TfrmEST002.Incluso2Click(Sender: TObject);
begin
   if not Verifica_acesso(310) then
   exit;

   frmFn1101 := TfrmFn1101.Create(Self);
   frmFn1101.ShowModal;
   frmFn1101.Release;
   frmFn1101 := nil;
   FreeAndNil(dmFn1101);
end;

procedure TfrmEST002.GTabelaPreosNormal1Click(Sender: TObject);
begin
   if not Verifica_acesso(315) then
      exit;

   frmRL0317 := TfrmRL0317.Create(Self);
   frmRL0317.ShowModal;
   frmRL0317.Release;
   frmRL0317 := nil;
   FreeAndNil(dmRL0317);
end;

procedure TfrmEST002.Reimpresso3Click(Sender: TObject);
begin
   if not Verifica_acesso(311) then
      exit;

   frmFn1102 := TfrmFn1102.Create(Self);
   frmFn1102.Tag := 0;
   frmFn1102.ShowModal;
   frmFn1102.Release;
   frmFn1102 := nil;
   FreeAndNil(dmFn1102);
end;

procedure TfrmEST002.LMovimentoProdutoCliente1Click(Sender: TObject);
begin
   if not Verifica_acesso(316) then
      exit;

   frmRL0322 := TfrmRL0322.Create(Self);
   frmRL0322.ShowModal;
   frmRL0322.Release;
   frmRL0322 := nil;
   FreeAndNil(dmRL0322);
end;

procedure TfrmEST002.CoolBar1Resize(Sender: TObject);
begin
   edtDescDataSistema.Left := CoolBar1.Width - 90;
   edtDataSistema.Left     := CoolBar1.Width - 90;
end;

procedure TfrmEST002.Produtoestoque1Click(Sender: TObject);
begin
  if not Verifica_acesso(317) then
     exit;

  frmRL0330 := TfrmRL0330.Create(Self);
  frmRL0330.ShowModal;
  frmRL0330.Release;
  frmRL0330 := nil;
  FreeAndNil(dmRL0330);
end;

procedure TfrmEST002.N2VendasVendedor1Click(Sender: TObject);
begin
  if not Verifica_acesso(320) then
     exit;

  frmRL0402 := TfrmRL0402.Create(Self);
  frmRL0402.ShowModal;
  frmRL0402.Release;
  frmRL0402 := nil;
  FreeAndNil(dmRL0402);
end;

procedure TfrmEST002.N8ComisVendedorProduto1Click(Sender: TObject);
begin
   if not Verifica_acesso(321) then
     exit;

   frmRL0408 := TfrmRL0408.Create(Self);
   frmRL0408.ShowModal;
   frmRL0408.Release;
   frmRL0408 := nil;
   FreeAndNil(dmRL0408);
end;

procedure TfrmEST002.N6TEFADM1Click(Sender: TObject);
var Ok1: Boolean;
begin
   frmBandeiras2 := TfrmBandeiras2.Create ( Application );
   frmBandeiras2.ShowModal;

   if Bandeira1 <> '' then
   begin
      if Bandeira1 = 'T' then
      begin
         iTEFTecban := 1;
         sTEFPath   := 'C:\TEF_DISC\';
      end
      else
      begin
         iTEFTecban := 0;
         sTEFPath   := 'C:\TEF_DIAL\';
      end;

      TEFModoAdministrativo;

      Ok1 := True;

      if Bandeira1 = 'R' then
      begin
         if not FileExists('C:\TEF_DIAL\RESP\Intpos.001') then
            Ok1 := False;
      end
      else if Bandeira1 = 'T' then
      begin
         if not FileExists('C:\TEF_DISC\RESP\Intpos.001') then
            Ok1 := False;
      end;


      if Ok1 then
      begin
         TEFConfirmaOperacao;

         if sTEFRetorno = '0' then
         begin
            if FileExists('C:\MsTEF\tef.imp') then
            begin
               frmBandeiras := TfrmBandeiras.Create(Self);

               pnlImprimindo2.Visible := True;
               Application.ProcessMessages;

               frmBandeiras.ImpReciboCupom('0','R');

               frmBandeiras.Release;
               frmBandeiras := nil;

               pnlImprimindo2.Visible := False;
            end;
         end;
      end
   end;
end;

procedure TfrmEST002.SpeedButton9Click(Sender: TObject);
begin
   if not Verifica_acesso(374) then
     exit;

   frmReceber := TfrmReceber.Create( Application );
   frmReceber.ShowModal;
end;

procedure TfrmEST002.N8ProgramaFormasPagtoBematechDaruma1Click(
  Sender: TObject);
var
   CCD: Boolean;
begin
   if Application.MessageBox('Confirma programação de formas de pagamento?','Confirmação', MB_YESNO + MB_ICONQUESTION) = id_yes then
   begin
      dmCd0903 := TdmCd0903.Create(Self);
      with dmCd0903 do
      begin
         cdsTipoPagamento.Close;
         cdsTipoPagamento.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
         cdsTipoPagamento.Open;

         if not cdsTipoPagamento.IsEmpty then
         begin
            cdsTipoPagamento.First;
            while not cdsTipoPagamento.Eof do
            begin
               if StrToInt(ModeloEcf1) = 2 then
               begin
                  if (cdsTipoPagamentoTEF_CPAGAMENTO.AsBoolean) or (cdsTipoPagamentoCAIXA_CPAGAMENTO.Value = 5) then
                     // Comprovante Credito ou Débito
                     CCD := True;
                  EPSON_Config_Forma_Pagamento(CCD,pchar(cdsTipoPagamentoCODIGO_CPAGAMENTO.AsString),pchar(cdsTipoPagamentoDESCRICAO_CPAGAMENTO.AsString));
               end
               else
                  Application.MessageBox('Modelo de ECF informado nos parâmetros não é válido. Verifique.','Atenção', MB_OK + MB_ICONINFORMATION);

               cdsTipoPagamento.Next;
            end;
         end
         else
            Application.MessageBox('Não existe nenhum tipo de pagamento cadastrado.','Ãtenção', MB_YESNO + MB_ICONEXCLAMATION);
      end;

      FreeAndNil(dmCd0903);
   end;
end;

procedure TfrmEST002.N9ProdutosVendidosnoPerodo1Click(Sender: TObject);
begin
   if not Verifica_acesso(322) then
     exit;

   frmRL0409 := TfrmRL0409.Create(Self);
   frmRL0409.ShowModal;
   frmRL0409.Release;
   frmRL0409 := nil;
   FreeAndNil(dmRL0409);
end;

procedure TfrmEST002.EEspelhodeVendasDevoluoPerodo1Click(Sender: TObject);
begin
   if not Verifica_acesso(323) then
     exit;

   frmRL0415 := TfrmRL0415.Create(Self);
   frmRL0415.ShowModal;
   frmRL0415.Release;
   frmRL0415 := nil;
   FreeAndNil(dmRL0415);
end;

procedure TfrmEST002.HGrficodeVendasporVendedor1Click(Sender: TObject);
begin
   if not Verifica_acesso(324) then
     exit;

   frmRL0413 := TfrmRL0413.Create(Self);
   frmRL0413.ShowModal;
   frmRL0413.Release;
   frmRL0413 := nil;
   FreeAndNil(dmRL0413);
end;

procedure TfrmEST002.IVendasClienteVendedorProduto1Click(Sender: TObject);
begin
   if not Verifica_acesso(325) then
     exit;

   frmRL0418 := TfrmRL0418.Create(Self);
   frmRL0418.ShowModal;
   frmRL0418.Release;
   frmRL0418 := nil;
   FreeAndNil(dmRL0418);
end;

procedure TfrmEST002.Verifica_Prot; // verifica protecao do sistema
var Arq1: TIniFile;
    Arq2, Serial1: String;
begin
   if (FileExists('\windows\myprot.mts')) or (FileExists('myprot.mts'))  then
      Exit;

   //........................................protecao de aluguel
   dmProgs.cdsProtecao.Open;

   if dmProgs.cdsProtecaoALUGUEL.AsString <> '' then
   begin
      if not Aluguel() then
      begin
         if not Libera_Aluguel() then
            Application.Terminate;
      end;

      Exit;
   end;

   dmProgs.cdsProtecao.Close;


   //.....................protecao via serial

   Demo1 := False;

   Arq2 := PegaSysDir + '\msprot.ini';

   // verifica se existe o arquivo
   if not FileExists(Arq2) then
   begin
      Demo1 := True;
      Exit;
   end;

   Arq1 := TIniFile.Create(Arq2);

   try
      Serial1  := Arq1.ReadString('Prot','Serial',Serial1);
   finally // wrap up
      Arq1.Free;
   end;    // tryqfinally

   // verifica se existe o serial
   if Serial1 = '' then
   begin
      Demo1 := True;
      Exit;
   end;

   // compara o serial encontrado com o serial atual da maquina
   if Desencripta(Serial1) <> MachineID1.GetMachineID then
   begin
      Demo1 := True;
      Exit;
   end;
end;


procedure TfrmEST002.N5VendasCliente1Click(Sender: TObject);
begin
   if not Verifica_acesso(326) then
     exit;

   frmRl0405 := TfrmRl0405.Create(Self);
   frmRl0405.ShowModal;
   frmRl0405.Release;
   frmRl0405 := nil;
   FreeAndNil(dmRl0405);
end;

procedure TfrmEST002.BitBtn1Click(Sender: TObject);
begin
   frmEst002_1 := TfrmEst002_1.Create(Self);
   frmEst002_1.ShowModal;
   frmEst002_1.Release;
   frmEst002_1 := nil;
end;

procedure TfrmEST002.KOramentos1Click(Sender: TObject);
begin
   if not Verifica_acesso(327) then
     exit;

   frmRl0421 := TfrmRl0421.Create(Self);
   frmRl0421.ShowModal;
   frmRl0421.Release;
   frmRl0421 := nil;
   FreeAndNil(dmRL0421);
end;

procedure TfrmEST002.O1Click(Sender: TObject);
begin
   if not Verifica_acesso(328) then
     exit;

   frmRl0425 := TfrmRl0425.Create(Self);
   frmRl0425.ShowModal;
   frmRl0425.Release;
   frmRl0425 := nil;
   FreeAndNil(dmRL0425);
end;

procedure TfrmEST002.N9SugestodeCompra1Click(Sender: TObject);
begin
   if not Verifica_acesso(329) then
     exit;

   frmRL0509 := TfrmRL0509.Create(Self);
   frmRL0509.ShowModal;
   frmRL0509.Release;
   frmRL0509 := nil;
   FreeAndNil(dmRL0509);
end;

procedure TfrmEST002.SpeedButton10Click(Sender: TObject);
begin
   Application.MessageBox('Versão de Demonstração' + #13 + #13 +
                          'Esta versão destina-se apenas a demonstração do sistema.' + #13 +
                          'É uma versão completa porém com algumas limitações' + #13 +
                          'em relação ao total de registros que serão gravados:' + #13 +
                          'Clientes: 10 registros' + #13 +
                          'Fornecedores: 10 registros' + #13 +
                          'Produtos: 10 registros' + #13 +
                          'Serviços: 10 registros' + #13 +
                          'Vendas: 10 registros' + #13 +
                          'Contas a Pagar: 10 registros' + #13 +
                          'Contas a Receber: 10 registros' + #13 + #13 +
                          'Para obter a versão completa entre em contato com a' + #13 +
                          'MultiSoft Sistemas - (64)3621-4579' + #13 +
                          'E-mail: multisoft@multisoftnet.com.br' + #13 +
                          'www.multisoftnet.com.br', 'Informação',MB_ICONINFORMATION)
end;

procedure TfrmEST002.AEntradasdoPerodo1Click(Sender: TObject);
begin
   if not Verifica_acesso(331) then
     exit;

   frmRL0511 := TfrmRL0511.Create(Self);
   frmRL0511.ShowModal;
   frmRL0511.Release;
   frmRL0511 := nil;
   FreeAndNil(dmRL0511);   
end;

procedure TfrmEST002.KAcessosdeUsurios1Click(Sender: TObject);
begin
   if not Verifica_acesso(332) then
     exit;

   frmRL0521 := TfrmRL0521.Create(Self);
   frmRL0521.ShowModal;
   frmRL0521.Release;
   frmRL0521 := nil;
   FreeAndNil(dmRL0521);
end;

procedure TfrmEST002.N2MapadeCaixa1Click(Sender: TObject);
begin
   if not Verifica_acesso(335) then
     exit;

   frmRL0602 := TfrmRL0602.Create(Self);
   frmRL0602.ShowModal;
   frmRL0602.Release;
   frmRL0602 := nil;
   FreeAndNil(dmRL0602);
end;

procedure TfrmEST002.N6EntradasdoPerodo1Click(Sender: TObject);
begin
   if not Verifica_acesso(336) then
     exit;

   frmRL0606 := TfrmRL0606.Create(Self);
   frmRL0606.ShowModal;
   frmRL0606.Release;
   frmRL0606 := nil;
   FreeAndNil(dmRL0606);
end;

procedure TfrmEST002.N7RetiradasdoPerodo1Click(Sender: TObject);
begin
   if not Verifica_acesso(337) then
     exit;

   frmRL0606 := TfrmRL0606.Create(Self);
   frmRL0606.Tag := 1;
   frmRL0606.ShowModal;
   frmRL0606.Release;
   frmRL0606 := nil;
   FreeAndNil(dmRL0606);
end;

procedure TfrmEST002.N1PrevisodePagamentoDirio1Click(Sender: TObject);
begin
   if not Verifica_acesso(339) then
     exit;

   frmRL0701 := TfrmRL0701.Create(Self);
   frmRL0701.ShowModal;
   frmRL0701.Release;
   frmRL0701 := nil;
   FreeAndNil(dmRL0701);   
end;

procedure TfrmEST002.N1ConfernciadeCaixa1Click(Sender: TObject);
begin
   if not Verifica_acesso(334) then
      exit;

   frmRL0601 := TfrmRL0601.Create(Self);
   frmRL0601.ShowModal;
   frmRL0601.Release;
   frmRL0601 := nil;
   FreeAndNil(dmRL0601);
end;

procedure TfrmEST002.N2Fornecedor1Click(Sender: TObject);
begin
   if not Verifica_acesso(340) then
      exit;

   frmRL0702 := TfrmRL0702.Create(Self);
   frmRL0702.ShowModal;
   frmRL0702.Release;
   frmRL0702 := nil;
   FreeAndNil(dmRL0702);
end;

procedure TfrmEST002.N1PrevisodeRecebimentoDirio1Click(Sender: TObject);
begin
   if not Verifica_acesso(342) then
      exit;

   frmRL0801 := TfrmRL0801.Create(Self);
   frmRL0801.ShowModal;
   frmRL0801.Release;
   frmRL0801 := nil;
   FreeAndNil(dmRL0801);
end;

procedure TfrmEST002.N2Cliente1Click(Sender: TObject);
begin
   if not Verifica_acesso(343) then
      exit;

   frmRL0802 := TfrmRL0802.Create(Self);
   frmRL0802.ShowModal;
   frmRL0802.Release;
   frmRL0802 := nil;
   FreeAndNil(dmRL0802);
end;

procedure TfrmEST002.N7RelatriodeFaturamento1Click(Sender: TObject);
begin
   if not Verifica_acesso(344) then
      exit;

   frmRL0807 := TfrmRL0807.Create(Self);
   frmRL0807.ShowModal;
   frmRL0807.Release;
   frmRL0807 := nil;
   FreeAndNil(dmRL0807);
end;

procedure TfrmEST002.KPagamentosParciais1Click(Sender: TObject);
begin
   if not Verifica_acesso(345) then
      exit;

   frmRL0821 := TfrmRL0821.Create(Self);
   frmRL0821.ShowModal;
   frmRL0821.Release;
   frmRL0821 := nil;
   FreeAndNil(dmRL0821);
end;

procedure TfrmEST002.LJunodeTtulos1Click(Sender: TObject);
begin
   if not Verifica_acesso(346) then
      exit;

   frmRL0822 := TfrmRL0822.Create(Self);
   frmRL0822.ShowModal;
   frmRL0822.Release;
   frmRL0822 := nil;
   FreeAndNil(dmRL0822);
end;

procedure TfrmEST002.N1FluxoCCorrenteCaixa1Click(Sender: TObject);
begin
   if not Verifica_acesso(348) then
      exit;

   frmRL0901 := TfrmRL0901.Create(Self);
   frmRL0901.ShowModal;
   frmRL0901.Release;
   frmRL0901 := nil;
   FreeAndNil(dmRL0901);
end;

procedure TfrmEST002.N2ExtratoCCorrenteCaixa1Click(Sender: TObject);
begin
   if not Verifica_acesso(349) then
      exit;

   frmRL0902 := TfrmRL0902.Create(Self);
   frmRL0902.ShowModal;
   frmRL0902.Release;
   frmRL0902 := nil;
   FreeAndNil(dmRL0902);
end;

procedure TfrmEST002.N3ChequeClienteData1Click(Sender: TObject);
begin
   if not Verifica_acesso(350) then
      exit;

   frmRL0903 := TfrmRL0903.Create(Self);
   frmRL0903.ShowModal;
   frmRL0903.Release;
   frmRL0903 := nil;
   FreeAndNil(dmRL0903);
end;

procedure TfrmEST002.N6MovimentoContaContbil1Click(Sender: TObject);
begin
   if not Verifica_acesso(351) then
      exit;

   frmRL0906 := TfrmRL0906.Create(Self);
   frmRL0906.ShowModal;
   frmRL0906.Release;
   frmRL0906 := nil;
   FreeAndNil(dmRL0906);
end;

procedure TfrmEST002.FormCreate(Sender: TObject);
begin
   Canc_cf_no_tef := False;
   ECF := TECF.Create;
end;

procedure TfrmEST002.N7MovimentoCentrodeCusto1Click(Sender: TObject);
begin
   if not Verifica_acesso(352) then
      exit;

   frmRL0907 := TfrmRL0907.Create(Self);
   frmRL0907.ShowModal;
   frmRL0907.Release;
   frmRL0907 := nil;
   FreeAndNil(dmRL0907);
end;

function TfrmEst002.Aluguel(): Boolean;
var Aluguel1, Controle1, Temp1, Temp2: String;
    Ult_Entrada1, Prox_Vcto1: TDate;
    Status1: Byte;
begin
   Status1 := 7;

   Result := False;

   Aluguel1  := dmProgs.cdsProtecaoALUGUEL.AsString;
   Temp1     := dmProgs.cdsProtecaoTEMP.AsString;

   Controle1    := Desencripta(Aluguel1);

   Ult_Entrada1 := StrToDate(Copy(Controle1,1,10));
   Prox_Vcto1   := StrToDate(Copy(Controle1,12,10));

   if Temp1 <> '' then // verifica se ja tem alguma liberacao temporaria
   begin
      Temp2 := Desencripta(Temp1);

      if Date <= StrToDate(Temp2) then
      begin
         Ultima_Entrada(Controle1);

         Result := True;
      end
      else
      begin
         if not Gera_Senha(9, Prox_Vcto1, Temp1) then
            Exit
         else
            Result := True;
      end;
   end
   else
   begin
      if Date < Ult_Entrada1 then // verifica se a data da ultima entrada e inferior a data atual (tentativa de atrasar a data)
      begin
         Status1 := 10;

         Msg_Irregular(10);
         Exit;
      end
      else if Date > Prox_Vcto1 then // verifica a data do vencimento
      begin
         // atraso de ate 3 dias gera codigo 11 para aceitar passar sem inserir senha
         if (Date - Prox_Vcto1) <= 3 then
         begin
            Status1 := 11;

            if not Gera_Senha(11, Prox_Vcto1, Temp1) then
               Exit
            else
               Result := True;
         end
         else
         begin
            Status1 := 9;

            if not Gera_Senha(9, Prox_Vcto1, Temp1) then
               Exit
            else
               Result := True;
         end;
      end;

      if Status1 = 7 then
      begin
         Ultima_Entrada(Controle1);
         Result := True;
      end;

   end;

{
   // verifica se existe o serial ou aluguel
   if (Serial1 = '') and (Aluguel1 = '') then
   begin
      Demo1 := True;
      Exit;
   end;

   // compara o serial encontrado com o serial atual da maquina
   if (Serial1 = '') then
   begin
      if Desencripta(Serial1) <> MachineID1.GetMachineID then
      begin
         Demo1 := True;
         Exit;
      end;
   end;
}
end;

function TfrmEST002.Libera_Aluguel(): Boolean;
begin
   Result := False;
end;

procedure TfrmEST002.Ultima_Entrada(Arg: String);  // grava a ultima vez que acessou o sistema
var Controle1: String;
begin
   // 11/11/1111_11/11/1111
   //      \        \
   //       \        \-> DATA DO VENCIMENTO DO PROXIMO ALUGUEL
   //        \--> DATA DA ULTIMA VEZ QUE ENTROU NO SISTEMA

   Controle1 := FormatDateTime('dd/mm/yyyy',Date) + '_' + Copy(Arg,12,10);
   Controle1 := Encripta(Controle1);

   dmProgs.cdsProtecao.Edit;
   dmProgs.cdsProtecaoALUGUEL.AsString := Controle1;
   dmProgs.cdsProtecao.Post;
   dmProgs.cdsProtecao.ApplyUpdates(0);

   dmProgs.cdsProtecao.Close;
end;

procedure TfrmEST002.Msg_Irregular(aCodigo:Byte);
// Parametros;
// aCodigo: Codigo do erro

var Linha1: PChar;
begin
   Linha1 := '';

   if aCodigo = 9 then
      Linha1 := 'Código do erro: 9 (Cópia já vencida, limite excedido)'
   else if aCodigo = 10 then
      Linha1 := 'Código do erro: 10 (Tentativa de atraso de data)'
   else if aCodigo = 11 then
      Linha1 := 'Código do erro: 11 (Cópia já vencida dentro do limite)';

   Application.MessageBox(PChar('                 Cópia irregular' + #13 +
                          '      Para regularizar esta cópia contate o'  + #13 +
                          '            suporte técnico MULTISOFT' + #13 +
                          '           suporte@multisoftnet.com.br' + #13 +
                          '                      - o -'  + #13 +
                          '                (0xx64)3621-4579'  + #13 +
                          Linha1),PChar('Irregular'),MB_ICONERROR);
end;

function TfrmEST002.Gera_Senha(aCodigo: Byte; aProx_Vcto: TDate; aLib_Temp: String): Boolean;
// Parametros:
// aCodigo    = codigo do erro
// aProx_Vcto = data do proximo vencimento do aluguel
// aLib_Temp  = campo que contem o valor da liberacao temporaria (se tiver)
var Mes1, Ano1, Chave2, Chave3: Integer;
  I: Integer;
    Prox_Vcto2, Chave1: String;
begin
//   Result := False;

   Msg_Irregular(aCodigo);

   Mes1 := MonthOf(aProx_Vcto);
   Ano1 := YearOf(aProx_Vcto);

   if Mes1 = 12 then
   begin
      Mes1 := 1;
      Ano1 := Ano1 + 1;
   end
   else
      Mes1 := Mes1 + 1;

   Prox_Vcto2 := FormatDateTime('dd/mm/yyyy', aProx_Vcto);
   Prox_Vcto2 := LeftStr(Prox_Vcto2,2) + '/' + StrZero(IntToStr(Mes1),2) + '/' + IntToStr(Ano1) ;

   if xCnpj <> '' then
      Chave1 := Remove(xCnpj,'1')
   else
      Chave1 := TimeToStr(Time);

   Chave1 := Chave1 + StringReplace(Empresa1, ' ','',[rfReplaceAll]) + DateToStr(Date);

   Chave2 := 0;
   Chave3 := 0;

   for I := 0 to Length(Chave1) do    // Iterate
   begin
      Chave2 := Chave2 + Ord(Chave1[I]) * I;
      Chave3 := Chave3 + Ord(Chave1[I]) * (I*2);
   end;    // for

   Chave2 := StrToInt( LeftStr(IntToStr(Chave2) + IntToStr(Chave3),7) );

   if Length(IntToStr(Chave2)) <= 5 then
   begin
      Chave2 := StrToInt( LeftStr( IntToStr(Chave2) + IntToStr(Chave2) + Remove(TimeToStr(Time),'1'), 7) );
   end;

   frmEst002_2 := TfrmEst002_2.Create(Self);

   frmEst002_2.lblVctoAtual.Caption := DateToStr(aProx_Vcto);
   frmEst002_2.lblProxVcto.Caption  := Prox_Vcto2;
   frmEst002_2.lblSenha1.Caption    := IntToStr(Chave2);
   frmEst002_2.Lib_Temp1            := aLib_Temp;
   frmEst002_2.Codigo1              := aCodigo;

   frmEst002_2.ShowModal;

   Result := frmEst002_2.Retorno1;

   frmEst002_2.Release;
   frmEst002_2 := nil;

end;

procedure TfrmEST002.CdigodeBarraTrmica1Click(Sender: TObject);
begin
   if not Verifica_acesso(355) then
      exit;

   frmRL100101 := TfrmRL100101.Create(Self);
   frmRL100101.ShowModal;
   frmRL100101.Release;
   frmRL100101 := nil;

end;

procedure TfrmEST002.N1ClientesInativos1Click(Sender: TObject);
begin
   if not Verifica_acesso(356) then
      exit;

   frmRL0202 := TfrmRL0202.Create(Self);
   frmRL0202.ShowModal; // Clientes inativos
   FreeAndNil(dmRL0202);
end;

procedure TfrmEST002.N2ClientesSemLimitedeCrdito1Click(Sender: TObject);
begin
   if not Verifica_acesso(357) then
      exit;

   frmRL0202 := TfrmRL0202.Create(Self);
   frmRL0202.Tag := 1;
   frmRL0202.ShowModal; // Clientes sem limite de créditos
   FreeAndNil(dmRL0202);
end;

procedure TfrmEST002.N3ClientesComExcessodeCompras1Click(Sender: TObject);
begin
   if not Verifica_acesso(358) then
      exit;

   frmRL0202 := TfrmRL0202.Create(Self);
   frmRL0202.Tag := 2;
   frmRL0202.ShowModal;  // Clientes com excesso de compras
   FreeAndNil(dmRL0202);
end;

procedure TfrmEST002.N4ClientesNegativados1Click(Sender: TObject);
begin
   if not Verifica_acesso(359) then
      exit;

   frmRL0202 := TfrmRL0202.Create(Self);
   frmRL0202.Tag := 3;
   frmRL0202.ShowModal; // Clientes negativados
   FreeAndNil(dmRL0202);
end;

procedure TfrmEST002.N1Zerados11Click(Sender: TObject);
begin
   if not Verifica_acesso(360) then
      exit;

   frmRL0301 := TfrmRL0301.Create(Self);
   frmRL0301.ShowModal; // Zerados (01)
   FreeAndNil(dmRL0301);
end;

procedure TfrmEST002.N2Negativos1Click(Sender: TObject);
begin
   if not Verifica_acesso(361) then
      exit;

   frmRL0301 := TfrmRL0301.Create(Self);
   frmRL0301.Tag := 1;
   frmRL0301.ShowModal; // Negativos
   FreeAndNil(dmRL0301);
end;

procedure TfrmEST002.N3AcimadoMximo1Click(Sender: TObject);
begin
   if not Verifica_acesso(362) then
      exit;

   frmRL0301 := TfrmRL0301.Create(Self);
   frmRL0301.Tag := 2;
   frmRL0301.ShowModal; // acima do máximo
   FreeAndNil(dmRL0301);
end;

procedure TfrmEST002.N4AbaixodoMnimo1Click(Sender: TObject);
begin
   if not Verifica_acesso(363) then
      exit;

   frmRL0301 := TfrmRL0301.Create(Self);
   frmRL0301.Tag := 3;
   frmRL0301.ShowModal; // abaixo do mínimo
   FreeAndNil(dmRL0301);
end;

procedure TfrmEST002.CApenascomEstoque1Click(Sender: TObject);
begin
   if not Verifica_acesso(364) then
      exit;

   frmRL0313 := TfrmRL0313.Create(Self);
   frmRL0313.ShowModal;
   FreeAndNil(dmRL0313);
end;

procedure TfrmEST002.N210Click(Sender: TObject);
begin
   frmRL100102 := TfrmRL100102.Create(Self);
   frmRL100102.ShowModal;
   frmRL100102.Release;
   frmRL100102 := nil;
end;

procedure TfrmEST002.IMovimentaoAnual1Click(Sender: TObject);
begin
   if not Verifica_acesso(365) then
      exit;

   frmRL0319 := TfrmRL0319.Create(Self);
   frmRL0319.ShowModal;
   FreeAndNil(dmRL0319);
end;

procedure TfrmEST002.MPreosporGrupo1Click(Sender: TObject);
begin
   frmRL0323 := TfrmRL0323.Create(Self);
   frmRL0323.ShowModal;
   frmRL0323.Release;
   frmRL0323 := nil;
   FreeAndNil(dmrl0323);
end;

procedure TfrmEST002.PListagemParaBalano1Click(Sender: TObject);
begin
   frmRL0326 := TfrmRL0326.Create(Self);
   frmRL0326.ShowModal;
   frmRL0326.Release;
   frmRL0326 := nil;
   FreeAndNil(dmRL0326);
end;

procedure TfrmEST002.QRelaoParaInventrio1Click(Sender: TObject);
begin
   if not Verifica_acesso(365) then
      exit;

   frmRL0327 := TfrmRL0327.Create(Self);
   frmRL0327.ShowModal;
   frmRL0327.Release;
   frmRL0327 := nil;
   FreeAndNil(dmRL0327);
end;

procedure TfrmEST002.UMovimentaoGrupoPerodo1Click(Sender: TObject);
begin
   if not Verifica_acesso(366) then
      exit;

   frmRL0331 := TfrmRL0331.Create(Self);
   frmRL0331.ShowModal;
   frmRL0331.Release;
   frmRL0331 := nil;
   FreeAndNil(dmRL0331);
end;

procedure TfrmEST002.WProdutosporDataEntrada1Click(Sender: TObject);
begin
   if not Verifica_acesso(367) then
      exit;

   frmRL0333 := TfrmRL0333.Create(Self);
   frmRL0333.ShowModal;
   frmRL0333.Release;
   frmRL0333 := nil;
   FreeAndNil(dmRL0333);
end;

procedure TfrmEST002.N1VendasTipodePagamento1Click(Sender: TObject);
begin
   if not Verifica_acesso(368) then
      exit;

   frmRL0401 := TfrmRL0401.Create(Self);
   frmRL0401.ShowModal;
   frmRL0401.Release;
   frmRL0401 := nil;
   FreeAndNil(dmRL0401);
end;

procedure TfrmEST002.N3VendasVendedorComisTipoPgto1Click(Sender: TObject);
begin
   if not Verifica_acesso(368) then
      exit;

   frmRL0403 := TfrmRL0403.Create(Self);
   frmRL0403.ShowModal;
   frmRL0403.Release;
   frmRL0403 := nil;
   FreeAndNil(dmRL0403);
end;

procedure TfrmEST002.DVendasCdigodeOperao1Click(Sender: TObject);
begin
   if not Verifica_acesso(369) then
      exit;

   frmRL0414 := TfrmRL0414.Create(Self);
   frmRL0414.ShowModal;
   frmRL0414.Release;
   frmRL0414 := nil;
   FreeAndNil(dmRL0414); 
end;

procedure TfrmEST002.N4VendasGrupodeProduto1Click(Sender: TObject);
begin
   if not Verifica_acesso(370) then
      exit;

   frmRL0404 := TfrmRL0404.Create(Self);
   frmRL0404.ShowModal;
   frmRL0404.Release;
   frmRL0404 := nil;
   FreeAndNil(dmRL0404);
end;

procedure TfrmEST002.SpeedButton11Click(Sender: TObject);
var Caminho1: String;
begin
   Caminho1 := ExtractFilePath(Application.ExeName);
   Caminho1 := Caminho1 + 'Agnus_Help.chm';

   if not FileExists('Agnus_Help.chm') then
   begin
      Application.MessageBox('Arquivo de ajuda não localizado','',MB_ICONERROR);
      Exit;
   end;

   ShellExecute(0, nil, PChar(Caminho1), '', nil, SW_SHOWMAXIMIZED);
end;

procedure TfrmEST002.FDiriodeProdutos1Click(Sender: TObject);
begin
   if not Verifica_acesso(372) then
      exit;

   frmRL0416 := TfrmRL0416.Create(Self);
   frmRL0416.ShowModal;
   frmRL0416.Release;
   frmRL0416 := nil;
   FreeAndNil(dmRL0416);
end;

procedure TfrmEST002.N7RankdeCliente1Click(Sender: TObject);
begin
   if not Verifica_acesso(373) then
      exit;

   frmRL0507 := TfrmRL0507.Create(Self);
   frmRL0507.ShowModal;
   frmRL0507.Release;
   frmRL0507 := nil;
   FreeAndNil(dmRL0507);
end;

procedure TfrmEST002.DCpiadeSeguranaBakcup1Click(Sender: TObject);
begin
   if not Verifica_acesso(375) then
      exit;

   frmUt06 := TfrmUt06.Create(Self);
   frmUt06.ShowModal;
   frmUt06.Release;
   frmUt06 := nil;
end;

procedure TfrmEST002.DDescontosConcedidos1Click(Sender: TObject);
begin
   if not Verifica_acesso(376) then
      exit;

   frmRL0514 := TfrmRL0514.Create(Self);
   frmRL0514.ShowModal;
   frmRL0514.Release;
   frmRL0514 := nil;
   FreeAndNil(dmRL0514);
end;

procedure TfrmEST002.N2Sobre1Click(Sender: TObject);
begin
   frmAj02 := tfrmAj02.Create(Self);
   frmAj02.ShowModal;
   frmAj02.Release;
   frmAj02 := nil;
end;

procedure TfrmEST002.CMarcasClick(Sender: TObject);
begin
   frmCd13 := TfrmCd13.Create(Self);
   frmCd13.ShowModal;
   frmCd13.Release;
   frmCd13 := nil;
   FreeAndNil(dmCd13);
end;

end.
