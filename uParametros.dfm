object frmParametros: TfrmParametros
  Left = 190
  Top = 102
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '.:: MultiSoft Loja :: Par'#226'metros do Sistema :: '
  ClientHeight = 554
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 2
    Top = 1
    Width = 788
    Height = 531
    BevelInner = bvLowered
    BevelWidth = 2
    TabOrder = 0
    object Label94: TLabel
      Left = 464
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Label94'
    end
    object PageControl1: TPageControl
      Left = 9
      Top = 9
      Width = 772
      Height = 464
      ActivePage = TabSheet2
      DockSite = True
      HotTrack = True
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = '&1 - Empresa'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 764
          Height = 436
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label1: TLabel
            Left = 387
            Top = 9
            Width = 40
            Height = 13
            Caption = 'Fantasia'
            FocusControl = edtFantasia
          end
          object Label2: TLabel
            Left = 315
            Top = 56
            Width = 62
            Height = 13
            Caption = '&Respons'#225'vel'
            FocusControl = edtResponsavel
          end
          object Label3: TLabel
            Left = 17
            Top = 9
            Width = 63
            Height = 13
            Caption = 'R&az'#227'o Social'
            FocusControl = edtRazaoSocial
          end
          object Label4: TLabel
            Left = 29
            Top = 90
            Width = 46
            Height = 13
            Caption = '&Endere'#231'o'
            FocusControl = edtEndereco
          end
          object Label5: TLabel
            Left = 438
            Top = 90
            Width = 12
            Height = 13
            Caption = '&N'#186
            FocusControl = edtNumero
          end
          object Label6: TLabel
            Left = 532
            Top = 90
            Width = 64
            Height = 13
            Caption = '&Complemento'
            FocusControl = edtComplemento
          end
          object Label7: TLabel
            Left = 48
            Top = 117
            Width = 27
            Height = 13
            Caption = '&Bairro'
            FocusControl = edtBairro
          end
          object Label8: TLabel
            Left = 42
            Top = 143
            Width = 33
            Height = 13
            Caption = 'Ci&dade'
            FocusControl = edtCidade
          end
          object Label9: TLabel
            Left = 436
            Top = 143
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label10: TLabel
            Left = 429
            Top = 117
            Width = 21
            Height = 13
            Caption = 'CE&P'
            FocusControl = edtCep
          end
          object Label11: TLabel
            Left = 16
            Top = 169
            Width = 27
            Height = 13
            Caption = 'CNPJ'
            FocusControl = edtCNPJ
          end
          object Label12: TLabel
            Left = 192
            Top = 169
            Width = 87
            Height = 13
            Caption = 'Inscri'#231#227'o Estadual'
            FocusControl = edtInscEst
          end
          object Label13: TLabel
            Left = 326
            Top = 169
            Width = 69
            Height = 13
            Caption = '&Inscr. Municip.'
            FocusControl = estInscMuni
          end
          object Label14: TLabel
            Left = 480
            Top = 169
            Width = 42
            Height = 13
            Caption = 'Telefone'
            FocusControl = edtTelefone
          end
          object Label15: TLabel
            Left = 628
            Top = 169
            Width = 20
            Height = 13
            Caption = '&FAX'
            FocusControl = edtFax
          end
          object Bevel1: TBevel
            Left = 3
            Top = 79
            Width = 758
            Height = 9
            Shape = bsTopLine
          end
          object Bevel2: TBevel
            Left = 3
            Top = 165
            Width = 758
            Height = 9
            Shape = bsTopLine
          end
          object Bevel3: TBevel
            Left = 3
            Top = 214
            Width = 758
            Height = 9
            Shape = bsTopLine
          end
          object edtFantasia: TDBEdit
            Left = 384
            Top = 25
            Width = 345
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'EMPRESA'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object edtResponsavel: TDBEdit
            Left = 384
            Top = 52
            Width = 345
            Height = 21
            Color = clInfoBk
            DataField = 'NOME_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object edtRazaoSocial: TDBEdit
            Left = 16
            Top = 25
            Width = 345
            Height = 21
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'RAZAOSOCIA_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object edtEndereco: TDBEdit
            Left = 80
            Top = 86
            Width = 337
            Height = 21
            Color = clInfoBk
            DataField = 'ENDERECO_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object edtNumero: TDBEdit
            Left = 455
            Top = 86
            Width = 69
            Height = 21
            Color = clInfoBk
            Ctl3D = True
            DataField = 'NUMERO_EMP'
            DataSource = dtsFirm
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object edtComplemento: TDBEdit
            Left = 601
            Top = 86
            Width = 153
            Height = 21
            DataField = 'COMPLEMENT_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
          object edtBairro: TDBEdit
            Left = 80
            Top = 113
            Width = 337
            Height = 21
            Color = clInfoBk
            DataField = 'BAIRRO_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
          end
          object edtCidade: TDBEdit
            Left = 80
            Top = 139
            Width = 337
            Height = 21
            Color = clInfoBk
            DataField = 'CIDADE_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 8
          end
          object edtCep: TDBEdit
            Left = 455
            Top = 113
            Width = 73
            Height = 21
            DataField = 'CEP_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
          end
          object edtCNPJ: TDBEdit
            Left = 16
            Top = 184
            Width = 137
            Height = 21
            Color = clInfoBk
            DataField = 'CGC_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 10
            OnExit = edtCNPJExit
          end
          object edtInscEst: TDBEdit
            Left = 190
            Top = 184
            Width = 105
            Height = 21
            Color = clInfoBk
            DataField = 'INSCRICAO_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 11
          end
          object estInscMuni: TDBEdit
            Left = 328
            Top = 184
            Width = 113
            Height = 21
            DataField = 'INSCR_M_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 12
          end
          object edtTelefone: TDBEdit
            Left = 480
            Top = 184
            Width = 118
            Height = 21
            DataField = 'TELEFONE_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
          end
          object edtFax: TDBEdit
            Left = 628
            Top = 184
            Width = 118
            Height = 21
            DataField = 'FAX_EMP'
            DataSource = dtsFirm
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
          end
          object GroupBox1: TGroupBox
            Left = 8
            Top = 220
            Width = 561
            Height = 153
            Caption = ' Mensagens Publicit'#225'rias do Pedido / Nota Fiscal '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
            object Label16: TLabel
              Left = 8
              Top = 21
              Width = 35
              Height = 13
              Caption = 'Linha 1'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 8
              Top = 47
              Width = 35
              Height = 13
              Caption = 'Linha 2'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 8
              Top = 73
              Width = 35
              Height = 13
              Caption = '&Linha 3'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 8
              Top = 98
              Width = 35
              Height = 13
              Caption = 'Lin&ha 4'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 8
              Top = 124
              Width = 35
              Height = 13
              Caption = 'Linha &5'
              FocusControl = DBEdit5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 48
              Top = 17
              Width = 505
              Height = 21
              DataField = 'LINHA1_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 48
              Top = 43
              Width = 505
              Height = 21
              DataField = 'LINHA2_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 48
              Top = 69
              Width = 505
              Height = 21
              DataField = 'LINHA3_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 48
              Top = 94
              Width = 505
              Height = 21
              DataField = 'LINHA4_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 48
              Top = 120
              Width = 505
              Height = 21
              DataField = 'LINHA5_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
          object GroupBox2: TGroupBox
            Left = 8
            Top = 374
            Width = 751
            Height = 53
            Caption = ' Observa'#231#245'es do Or'#231'amento '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            object Label21: TLabel
              Left = 8
              Top = 12
              Width = 35
              Height = 13
              Caption = 'Linha 1'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 384
              Top = 12
              Width = 35
              Height = 13
              Caption = 'Linha 2'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit6: TDBEdit
              Left = 8
              Top = 27
              Width = 369
              Height = 21
              DataField = 'OBS_ORC1_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 384
              Top = 27
              Width = 361
              Height = 21
              DataField = 'OBS_ORC2_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object cmbEstado: TDBLookupComboBox
            Left = 456
            Top = 138
            Width = 148
            Height = 21
            DataField = 'ESTADO_EMP'
            DataSource = dtsFirm
            KeyField = 'CODIGO_ESTADO'
            ListField = 'NOME_ESTADO'
            ListSource = dtsEstados
            TabOrder = 9
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = '&2 - Vendas'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 764
          Height = 436
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object PageControl2: TPageControl
            Left = 8
            Top = 6
            Width = 748
            Height = 427
            ActivePage = TabSheet8
            TabOrder = 0
            object TabSheet7: TTabSheet
              Caption = '1'#170' Se'#231#227'o'
              object Panel5: TPanel
                Left = 0
                Top = 0
                Width = 740
                Height = 399
                Align = alClient
                BevelInner = bvRaised
                BevelOuter = bvLowered
                TabOrder = 0
                object Bevel4: TBevel
                  Left = 304
                  Top = -33
                  Width = 6
                  Height = 430
                  Shape = bsLeftLine
                end
                object Bevel5: TBevel
                  Left = 306
                  Top = 250
                  Width = 431
                  Height = 8
                  Shape = bsBottomLine
                end
                object chkPerg_Ecf: TDBCheckBox
                  Left = 8
                  Top = 5
                  Width = 235
                  Height = 17
                  Caption = '&Pergunta Antes de Abrir Cupom Fiscal'
                  DataField = 'PERG_ECF_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkBarra: TDBCheckBox
                  Left = 8
                  Top = 21
                  Width = 235
                  Height = 17
                  Caption = 'Bai&xa Apenas por C'#243'digo'
                  DataField = 'BARRA_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkData_Ped: TDBCheckBox
                  Left = 8
                  Top = 37
                  Width = 235
                  Height = 17
                  Caption = '&Altera Data do Pedido'
                  DataField = 'DATA_PED_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkEntrad_Ger: TDBCheckBox
                  Left = 8
                  Top = 53
                  Width = 235
                  Height = 17
                  Caption = '1'#170' Parcela a Prazo Gera &Contas a Receber'
                  DataField = 'ENTRAD_GER_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkCadastro: TDBCheckBox
                  Left = 8
                  Top = 69
                  Width = 235
                  Height = 17
                  Caption = '&Venda para Cliente com Cadastro Incompleto'
                  DataField = 'CADASTRO_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 4
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkCadastro1: TDBCheckBox
                  Left = 8
                  Top = 85
                  Width = 235
                  Height = 17
                  Caption = 'Venda para Cliente sem CNP&J / CPF'
                  DataField = 'CADASTRO1_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkTri_Dif: TDBCheckBox
                  Left = 8
                  Top = 102
                  Width = 235
                  Height = 17
                  Caption = 'Vende com &Tributa'#231#227'o Diferente'
                  DataField = 'TRI_DIF_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 6
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkSer_Pro: TDBCheckBox
                  Left = 8
                  Top = 118
                  Width = 235
                  Height = 17
                  Caption = 'V&ende Servi'#231'o com Produto'
                  DataField = 'SER_PRO_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 7
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkVer_Nf: TDBCheckBox
                  Left = 8
                  Top = 134
                  Width = 235
                  Height = 17
                  Caption = 'Visualiza NF antes de &Imprimir'
                  DataField = 'VER_NF_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 8
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkVen_Parc: TDBCheckBox
                  Left = 8
                  Top = 150
                  Width = 235
                  Height = 17
                  Caption = 'Vende c&om Parceiro'
                  DataField = 'VEN_PARC_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 9
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkDes_Ct_Rec: TDBCheckBox
                  Left = 8
                  Top = 167
                  Width = 235
                  Height = 17
                  Caption = 'Desabilita Contas a &Receber'
                  DataField = 'DES_CT_REC_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 10
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkCompl_Nf: TDBCheckBox
                  Left = 8
                  Top = 183
                  Width = 235
                  Height = 17
                  Caption = 'Imprime Complemento na N&F'
                  DataField = 'COMPL_NF_EMP'
                  DataSource = dtsFirm
                  TabOrder = 11
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkQtde_Vnd: TDBCheckBox
                  Left = 8
                  Top = 199
                  Width = 235
                  Height = 17
                  Caption = '&Habilita Quantidade na Venda'
                  DataField = 'QTDE_VND_EMP'
                  DataSource = dtsFirm
                  TabOrder = 12
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkConf_Cli: TDBCheckBox
                  Left = 8
                  Top = 215
                  Width = 235
                  Height = 17
                  Caption = 'Grava Cliente na Venda'
                  DataField = 'CONF_CLI_EMP'
                  DataSource = dtsFirm
                  TabOrder = 13
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkAltera_Cli: TDBCheckBox
                  Left = 8
                  Top = 231
                  Width = 235
                  Height = 17
                  Caption = 'Altera Dados do Cliente na Venda'
                  DataField = 'ALTERA_CLI_EMP'
                  DataSource = dtsFirm
                  TabOrder = 14
                  ValueChecked = 'T'
                  ValueUnchecked = 'F'
                end
                object DBCheckBox2: TDBCheckBox
                  Left = 8
                  Top = 247
                  Width = 209
                  Height = 17
                  Caption = 'Verifica a Distrib&ui'#231#227'o das Parcelas'
                  DataField = 'VERIF_DIST_EMP'
                  DataSource = dtsFirm
                  TabOrder = 15
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkNf_Serv: TDBCheckBox
                  Left = 8
                  Top = 263
                  Width = 217
                  Height = 17
                  Caption = 'Utili&za N.F. de Presta'#231#227'o de Servi'#231'os'
                  DataField = 'NF_SERV_EMP'
                  DataSource = dtsFirm
                  TabOrder = 16
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object GroupBox9: TGroupBox
                  Left = 318
                  Top = 264
                  Width = 185
                  Height = 105
                  Caption = 'Informa'#231#245'es de clientes na Venda'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 25
                  object chkCheqAberto: TCheckBox
                    Left = 8
                    Top = 16
                    Width = 169
                    Height = 17
                    Caption = 'Cheques em A&berto'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                  object chkCheqAtraso: TCheckBox
                    Left = 8
                    Top = 32
                    Width = 169
                    Height = 17
                    Caption = 'Cheques em Atraso'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                  object chkConRecAberto: TCheckBox
                    Left = 8
                    Top = 48
                    Width = 169
                    Height = 17
                    Caption = 'Contas a Receber em Aberto'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                  end
                  object chkConRecAtraso: TCheckBox
                    Left = 8
                    Top = 64
                    Width = 169
                    Height = 17
                    Caption = 'Contas a Receber em Atraso'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 3
                  end
                  object chkObsCadastro: TCheckBox
                    Left = 8
                    Top = 80
                    Width = 169
                    Height = 17
                    Caption = 'Observa'#231#245'es do Cadastro'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 4
                  end
                end
                object DBCheckBox3: TDBCheckBox
                  Left = 8
                  Top = 295
                  Width = 249
                  Height = 17
                  Caption = 'Controla Limite de Cr'#233'dito de Cliente em Venda'
                  DataField = 'CONT_LIM_EMP'
                  DataSource = dtsFirm
                  TabOrder = 17
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox17: TDBCheckBox
                  Left = 8
                  Top = 311
                  Width = 169
                  Height = 17
                  Caption = 'Confirma N'#186' da Venda no Final'
                  DataField = 'NUM_VENDA_EMP'
                  DataSource = dtsFirm
                  TabOrder = 18
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox8: TDBCheckBox
                  Left = 8
                  Top = 327
                  Width = 265
                  Height = 17
                  Caption = 'Quantidade em Venda fica em Reserva de Estoque'
                  DataField = 'VDA_RESER_EMP'
                  DataSource = dtsFirm
                  TabOrder = 19
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox23: TDBCheckBox
                  Left = 8
                  Top = 344
                  Width = 249
                  Height = 17
                  Caption = 'N'#227'o vende Subst. Trib. com outras tributa'#231#245'es'
                  DataField = 'TRIB_DIF_EMP'
                  DataSource = dtsFirm
                  TabOrder = 20
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox10: TDBCheckBox
                  Left = 8
                  Top = 361
                  Width = 185
                  Height = 17
                  Caption = 'Permite Alterar N'#250'mero da Venda'
                  DataField = 'ALT_NUM_VD_EMP'
                  DataSource = dtsFirm
                  TabOrder = 21
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox19: TDBCheckBox
                  Left = 312
                  Top = 8
                  Width = 209
                  Height = 17
                  Caption = 'Arredonda Pre'#231'o de Produto na Venda'
                  DataField = 'ARRED_PREC_EMP'
                  DataSource = dtsFirm
                  TabOrder = 22
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox9: TDBCheckBox
                  Left = 312
                  Top = 24
                  Width = 225
                  Height = 17
                  Caption = 'Obriga Forma de Pagamento de Cliente'
                  DataField = 'OBR_FP_CLI_EMP'
                  DataSource = dtsFirm
                  TabOrder = 23
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox28: TDBCheckBox
                  Left = 312
                  Top = 40
                  Width = 225
                  Height = 17
                  Caption = 'Emite Bloquete Banc'#225'rio na Venda'
                  DataField = 'BLOQ_VENDA'
                  DataSource = dtsFirm
                  TabOrder = 24
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox32: TDBCheckBox
                  Left = 312
                  Top = 56
                  Width = 185
                  Height = 17
                  Caption = 'Vende com senha para cliente'
                  DataField = 'SENHA_VDA'
                  DataSource = dtsFirm
                  TabOrder = 26
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object chkIDENT_CHAM: TDBCheckBox
                  Left = 8
                  Top = 279
                  Width = 203
                  Height = 17
                  Caption = 'Usa identificador de chamadas (BINA)'
                  DataField = 'IDENT_CHAM'
                  DataSource = dtsFirm
                  TabOrder = 27
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object GroupBox13: TGroupBox
                  Left = 312
                  Top = 104
                  Width = 289
                  Height = 41
                  Caption = 'M'#243'dulo de Controle de Mesas'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 28
                  object Label108: TLabel
                    Left = 184
                    Top = 16
                    Width = 60
                    Height = 13
                    Caption = 'N'#186' de mesas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBCheckBox35: TDBCheckBox
                    Left = 8
                    Top = 16
                    Width = 145
                    Height = 17
                    Caption = 'Utiliza controle de mesas'
                    DataField = 'MOD_MESA'
                    DataSource = dtsFirm
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    ValueChecked = 'S'
                    ValueUnchecked = 'N'
                  end
                  object edtTotal_Mesa: TDBEdit
                    Left = 248
                    Top = 14
                    Width = 33
                    Height = 21
                    DataField = 'TOTAL_MESA'
                    DataSource = dtsFirm
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                end
                object GroupBox15: TGroupBox
                  Left = 312
                  Top = 152
                  Width = 289
                  Height = 65
                  Caption = 'M'#243'dulo T.E.F.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 29
                  object chkMod_Int: TDBCheckBox
                    Left = 8
                    Top = 16
                    Width = 129
                    Height = 17
                    Caption = 'Utiliza &M'#243'dulo T.E.F.'
                    DataField = 'MOD_INT_EMP'
                    DataSource = dtsFirm
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    ValueChecked = 'S'
                    ValueUnchecked = 'N'
                  end
                  object DBCheckBox36: TDBCheckBox
                    Left = 152
                    Top = 16
                    Width = 129
                    Height = 17
                    Caption = 'Utiliza TEF na bandeja'
                    DataField = 'TEF_BAND'
                    DataSource = dtsFirm
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                    ValueChecked = 'S'
                    ValueUnchecked = 'N'
                  end
                  object DBCheckBox37: TDBCheckBox
                    Left = 8
                    Top = 40
                    Width = 129
                    Height = 17
                    Cursor = crHandPoint
                    Caption = 'TEF Multisoft'
                    DataField = 'TEF_MULTI'
                    DataSource = dtsFirm
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                    ValueChecked = 'T'
                    ValueUnchecked = 'F'
                  end
                end
                object DBCheckBox38: TDBCheckBox
                  Left = 8
                  Top = 377
                  Width = 217
                  Height = 17
                  Caption = 'Imprime nota fiscal em multiplas p'#225'ginas'
                  DataField = 'NF_MULT_PAGINA_EMP'
                  DataSource = dtsFirm
                  TabOrder = 30
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox39: TDBCheckBox
                  Left = 312
                  Top = 72
                  Width = 161
                  Height = 17
                  Caption = 'Altera o n'#250'mero da NF'
                  DataField = 'ALTERA_NUM_NF_EMP'
                  DataSource = dtsFirm
                  TabOrder = 31
                  ValueChecked = 'F'
                  ValueUnchecked = 'T'
                end
              end
            end
            object TabSheet8: TTabSheet
              Caption = '2'#170' Se'#231#227'o'
              ImageIndex = 1
              OnShow = TabSheet8Show
              object Panel6: TPanel
                Left = 0
                Top = 0
                Width = 740
                Height = 399
                Align = alClient
                BevelInner = bvRaised
                BevelOuter = bvLowered
                TabOrder = 0
                object Label34: TLabel
                  Left = 92
                  Top = 87
                  Width = 97
                  Height = 13
                  Caption = 'Altera Pre'#231'o Unit'#225'rio'
                  FocusControl = cbxAltera
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label41: TLabel
                  Left = 63
                  Top = 110
                  Width = 126
                  Height = 13
                  Caption = 'Habilita Observ. no Pedido'
                  FocusControl = cboObservacao
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label43: TLabel
                  Left = 41
                  Top = 134
                  Width = 148
                  Height = 13
                  Caption = 'Vende para Cliente Negativado'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label46: TLabel
                  Left = 52
                  Top = 14
                  Width = 137
                  Height = 13
                  Hint = '|Confirma al'#237'quota do ICMS do produto'
                  Caption = 'Confirma Al'#237'q. da Mercadoria'
                  FocusControl = cmbConf_Ali
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label48: TLabel
                  Left = 115
                  Top = 257
                  Width = 74
                  Height = 13
                  Caption = 'C.F.OP. Padr'#227'o'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label52: TLabel
                  Left = 473
                  Top = 14
                  Width = 95
                  Height = 13
                  Caption = 'Carga M'#233'dia / Peso'
                  FocusControl = cmbCarga
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label53: TLabel
                  Left = 51
                  Top = 38
                  Width = 138
                  Height = 13
                  Caption = 'Modelo de Ordem de Servi'#231'o'
                  FocusControl = cmbOS
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label54: TLabel
                  Left = 128
                  Top = 232
                  Width = 61
                  Height = 13
                  Caption = 'S'#233'rie Padr'#227'o'
                  FocusControl = cmbSer_Pad
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label55: TLabel
                  Left = 84
                  Top = 159
                  Width = 105
                  Height = 13
                  Caption = 'Modelo do Or'#231'amento'
                  FocusControl = cmbOR
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label59: TLabel
                  Left = 13
                  Top = 61
                  Width = 176
                  Height = 13
                  Caption = 'Altera o Valor das Parcelas na Venda'
                  FocusControl = cmbAlt_Vl_Par
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label33: TLabel
                  Left = 126
                  Top = 184
                  Width = 63
                  Height = 13
                  Caption = 'Modelo da CI'
                  FocusControl = cmbImpressao
                end
                object Label32: TLabel
                  Left = 8
                  Top = 307
                  Width = 181
                  Height = 13
                  Caption = '&N'#186' M'#225'ximo de Parcelas no Plano Livre'
                  FocusControl = edtLivre
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label47: TLabel
                  Left = 42
                  Top = 282
                  Width = 147
                  Height = 13
                  Caption = '&Limite de Desconto de Gerente'
                  FocusControl = edtLimite2
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label50: TLabel
                  Left = 42
                  Top = 333
                  Width = 147
                  Height = 13
                  Caption = '&Quantidade de Produtos na NF'
                  FocusControl = edtQtd_Pro
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label51: TLabel
                  Left = 43
                  Top = 357
                  Width = 146
                  Height = 13
                  Caption = 'Quantidade &de Servi'#231'os na NF'
                  FocusControl = edtQtd_Srv
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Label31: TLabel
                  Left = 247
                  Top = 284
                  Width = 8
                  Height = 13
                  Caption = '%'
                end
                object Label37: TLabel
                  Left = 387
                  Top = 39
                  Width = 182
                  Height = 13
                  Caption = 'Vende Produto com Estoque Negativo'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object Bevel13: TBevel
                  Left = 372
                  Top = 2
                  Width = 6
                  Height = 393
                  Shape = bsLeftLine
                end
                object Label109: TLabel
                  Left = 119
                  Top = 208
                  Width = 67
                  Height = 13
                  Caption = 'Modelo da NF'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object cbxAltera: TDBComboBox
                  Left = 194
                  Top = 83
                  Width = 153
                  Height = 21
                  DataField = 'ALTERA_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'V - Apenas em venda'
                    'O - Apenas em Or'#231'amento'
                    'A - Em Ambos'
                    'N - N'#227'o Altera')
                  ParentFont = False
                  TabOrder = 3
                end
                object cboObservacao: TDBComboBox
                  Left = 194
                  Top = 107
                  Width = 153
                  Height = 21
                  DataField = 'OBSERVACAO_EMP'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    'V - Apenas em Vendas'
                    'O - Apenas em Or'#231'amento'
                    'A - Em Ambos'
                    'N - Nenhum')
                  TabOrder = 4
                end
                object DBComboBox1: TDBComboBox
                  Left = 194
                  Top = 131
                  Width = 153
                  Height = 21
                  DataField = 'VEN_NEGAT_EMP'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    'V - Apenas em Venda'
                    'O - Apenas em Or'#231'amento'
                    'A - Ambos'
                    'N - N'#227'o Vende')
                  TabOrder = 5
                end
                object cmbConf_Ali: TDBComboBox
                  Left = 194
                  Top = 11
                  Width = 169
                  Height = 21
                  DataField = 'CONF_ALI_EMP'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    'V - Apenas em Venda'
                    'D - Apenas em Devolu'#231#227'o'
                    'A - Em Ambas'
                    'N - N'#227'o Confirma')
                  TabOrder = 0
                end
                object DBLookupComboBox1: TDBLookupComboBox
                  Left = 194
                  Top = 254
                  Width = 57
                  Height = 21
                  DataField = 'CFOP_PAD_EMP'
                  DataSource = dtsFirm
                  KeyField = 'CODIGO_NAT'
                  ListField = 'CODIGO_NAT'
                  ListSource = dtsNatureza
                  TabOrder = 10
                end
                object cmbSer_Pad: TDBLookupComboBox
                  Left = 194
                  Top = 229
                  Width = 57
                  Height = 21
                  DataField = 'SER_PAD_EMP'
                  DataSource = dtsFirm
                  KeyField = 'SERIE_SERIE'
                  ListField = 'SERIE_SERIE'
                  ListSource = dtsSerie
                  TabOrder = 9
                  OnExit = cmbSer_PadExit
                end
                object cmbCarga: TDBComboBox
                  Left = 573
                  Top = 12
                  Width = 105
                  Height = 21
                  DataField = 'CARGA_EMP'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    'M - M'#233'dia'
                    'P - Peso')
                  TabOrder = 6
                end
                object cmbOS: TDBComboBox
                  Left = 194
                  Top = 35
                  Width = 169
                  Height = 21
                  DataField = 'OS_EMP'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    '1 - Oficina Mec'#226'nica 1'
                    '2 - Oficina Mec'#226'nica 2'
                    '3 - Refrigera'#231#227'o / Inform'#225'tica'
                    '4 - Torneadora'
                    '5 - Ind'#250'stria'
                    '6 - Oficina Mec'#226'nica 3'
                    '7 - Oficina Maq. Agric.'
                    '8 - Modelo 3 em '#189' folha')
                  TabOrder = 1
                end
                object cmbImpressao: TDBComboBox
                  Left = 194
                  Top = 180
                  Width = 153
                  Height = 21
                  DataField = 'IMP_VENDA_EMP'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    '0 - Modelo '#39'0'#39
                    '1 - Modelo '#39'1'#39
                    '2- Modelo '#39'2'#39
                    '3 - Modelo '#39'3'#39
                    '4 - Modelo '#39'4'#39
                    '5 - Modelo '#39'5'#39
                    '6 - Modelo '#39'6'#39
                    '7 - Modelo '#39'7'#39
                    '8 - Modelo '#39'8'#39
                    '9 - Modelo '#39'9'#39
                    'A - Modelo '#39'A'#39
                    'B - Modelo '#39'B'#39
                    'C - Modelo '#39'C'#39
                    'D - Modelo '#39'D'#39
                    'E - Modelo '#39'E'#39
                    'F - Modelo '#39'F'#39
                    'G - Modelo '#39'G'#39
                    'H - Modelo '#39'H'#39
                    'I - Modelo '#39'I'#39
                    'J - Bematech MP20 CI'
                    'K - Modelo '#39'K'#39
                    ''
                    'N - Modelo '#39'N'#39)
                  TabOrder = 7
                end
                object cmbOR: TDBComboBox
                  Left = 194
                  Top = 156
                  Width = 153
                  Height = 21
                  DataField = 'IMP_ORCA_EMP'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    '0 - Modelo '#39'0'#39
                    '1 - Modelo '#39'1'#39
                    '2 - Modelo '#39'2'#39
                    '3 - Modelo '#39'3'#39
                    '4 - Modelo '#39'4'#39
                    '5 - Modelo '#39'5'#39
                    '6 - Modelo '#39'6'#39
                    '7 - Modelo '#39'7'#39
                    '8 - Modelo '#39'8'#39
                    '9 - Modelo '#39'9'#39
                    'A - Modelo '#39'A'#39
                    'B - Modelo '#39'B'#39
                    'C - Modelo '#39'C'#39
                    'D - Modelo '#39'D'#39
                    'E - Modelo '#39'E'#39
                    'F - Modelo '#39'F'#39' - Petrorio')
                  TabOrder = 8
                end
                object cmbAlt_Vl_Par: TDBComboBox
                  Left = 194
                  Top = 59
                  Width = 153
                  Height = 21
                  DataField = 'ALT_VL_PAR_EMP'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    'S - Sim'
                    'N - N'#227'o'
                    '1 - Apenas a 1'#170' Parcela')
                  TabOrder = 2
                end
                object edtLivre: TDBEdit
                  Left = 194
                  Top = 304
                  Width = 26
                  Height = 21
                  Hint = 
                    'N'#186' de parcelas (1 a 36)|Informe o n'#250'mero m'#225'ximo de parcelas no p' +
                    'lano livre (1 a 36)'
                  DataField = 'LIVRE_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 12
                end
                object edtLimite2: TDBEdit
                  Left = 194
                  Top = 279
                  Width = 49
                  Height = 21
                  DataField = 'LIMITE2_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 11
                end
                object edtQtd_Pro: TDBEdit
                  Left = 194
                  Top = 328
                  Width = 26
                  Height = 21
                  Hint = '|Numero m'#225'ximo de '#237'tens que poder'#227'o ser impressos na Nota Fiscal'
                  DataField = 'QTD_PRO_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 13
                end
                object edtQtd_Srv: TDBEdit
                  Left = 194
                  Top = 353
                  Width = 26
                  Height = 21
                  Hint = 
                    '|Numero m'#225'ximo de '#237'tens de servi'#231'o que poder'#227'o ser impressos na ' +
                    'Nota Fiscal'
                  DataField = 'QTD_SRV_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 14
                end
                object cmbNegativo: TDBComboBox
                  Left = 574
                  Top = 36
                  Width = 154
                  Height = 21
                  Hint = '|Permitir Venda de Produto com Estoque Negativo'
                  DataField = 'NEGATIVO_EMP'
                  DataSource = dtsFirm
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ItemHeight = 13
                  Items.Strings = (
                    'V - Apenas em Venda'
                    'O - Apenas em Or'#231'amento'
                    'A - Em Ambos'
                    'N - N'#227'o Vende')
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 15
                end
                object cmbImp_NF: TDBComboBox
                  Left = 194
                  Top = 204
                  Width = 55
                  Height = 21
                  DataField = 'MODELO_NF_EMP'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    '01 - Bravel'
                    '02 - Agrocaldas'
                    '03 - Moremaxx')
                  TabOrder = 16
                end
                object Button1: TButton
                  Left = 253
                  Top = 204
                  Width = 91
                  Height = 19
                  Caption = 'Formatar nota'
                  TabOrder = 17
                  OnClick = Button1Click
                end
              end
            end
            object TabSheet9: TTabSheet
              Caption = 'M'#243'dulo de Vendas'
              ImageIndex = 2
              OnShow = TabSheet9Show
              object Panel15: TPanel
                Left = 0
                Top = 0
                Width = 740
                Height = 399
                Align = alClient
                BevelInner = bvRaised
                BevelOuter = bvLowered
                TabOrder = 0
                object Label103: TLabel
                  Left = 8
                  Top = 8
                  Width = 69
                  Height = 13
                  Caption = 'Cliente Padr'#227'o'
                end
                object Label104: TLabel
                  Left = 8
                  Top = 208
                  Width = 136
                  Height = 13
                  Caption = 'Forma de pagamento padr'#227'o'
                end
                object Label105: TLabel
                  Left = 8
                  Top = 256
                  Width = 146
                  Height = 13
                  Caption = 'Ordem da Procura de Produtos'
                end
                object Bevel11: TBevel
                  Left = 296
                  Top = 2
                  Width = 6
                  Height = 393
                  Shape = bsLeftLine
                end
                object edtCli_Padrao: TDBEdit
                  Left = 8
                  Top = 24
                  Width = 49
                  Height = 21
                  DataField = 'CLI_PADRAO'
                  DataSource = dtsFirm
                  TabOrder = 0
                  OnExit = edtCli_PadraoExit
                end
                object edtCliente: TDBEdit
                  Left = 64
                  Top = 24
                  Width = 209
                  Height = 21
                  TabStop = False
                  Color = clScrollBar
                  DataField = 'NOME_CLIENTE'
                  DataSource = dtsClientes
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBCheckBox29: TDBCheckBox
                  Left = 8
                  Top = 128
                  Width = 209
                  Height = 17
                  Cursor = crHandPoint
                  Caption = 'Mant'#233'm vendedor durante as vendas'
                  DataField = 'MANTEM_VDD'
                  DataSource = dtsFirm
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBRadioGroup6: TDBRadioGroup
                  Left = 8
                  Top = 56
                  Width = 265
                  Height = 57
                  Caption = 'Ao concluir a venda'
                  DataField = 'FIM_VENDA'
                  DataSource = dtsFirm
                  Items.Strings = (
                    'Volta ao in'#237'cio (1'#170' tela)'
                    'Volta a tela de produtos (2'#170' tela)')
                  TabOrder = 2
                  Values.Strings = (
                    '1'
                    '2')
                end
                object DBCheckBox30: TDBCheckBox
                  Left = 8
                  Top = 152
                  Width = 209
                  Height = 17
                  Cursor = crHandPoint
                  Caption = 'Ignora desconto'
                  DataField = 'IGNORA_DSC'
                  DataSource = dtsFirm
                  TabOrder = 4
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox31: TDBCheckBox
                  Left = 8
                  Top = 176
                  Width = 209
                  Height = 17
                  Cursor = crHandPoint
                  Caption = 'Ignora observa'#231#245'es'
                  DataField = 'IGNORA_OBS'
                  DataSource = dtsFirm
                  TabOrder = 5
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object edtPgt_Padrao: TDBEdit
                  Left = 8
                  Top = 224
                  Width = 41
                  Height = 21
                  DataField = 'PGT_PADRAO'
                  DataSource = dtsFirm
                  TabOrder = 6
                  OnExit = edtPgt_PadraoExit
                end
                object edtPgtoDescricao: TDBEdit
                  Left = 56
                  Top = 224
                  Width = 209
                  Height = 21
                  TabStop = False
                  Color = clScrollBar
                  DataField = 'DESCRICAO_CPAGAMENTO'
                  DataSource = dtsCondPgto
                  ReadOnly = True
                  TabOrder = 7
                end
                object DBComboBox2: TDBComboBox
                  Left = 8
                  Top = 272
                  Width = 169
                  Height = 21
                  DataField = 'ORDEM_PROD'
                  DataSource = dtsFirm
                  ItemHeight = 13
                  Items.Strings = (
                    '0-C'#243'digo de Barra'
                    '1-C'#243'digo Produto'
                    '2-C'#243'digo Fabrica'
                    '3-Descri'#231#227'o')
                  TabOrder = 8
                end
                object DBCheckBox33: TDBCheckBox
                  Left = 8
                  Top = 304
                  Width = 169
                  Height = 17
                  Caption = 'Utiliza gaveta'
                  DataField = 'USA_GAVETA'
                  DataSource = dtsFirm
                  TabOrder = 9
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
            end
            object TabSheet10: TTabSheet
              Caption = 'Balan'#231'a'
              ImageIndex = 3
              object GroupBox14: TGroupBox
                Left = 0
                Top = 0
                Width = 740
                Height = 399
                Caption = 'Balan'#231'a'
                TabOrder = 0
                object Label107: TLabel
                  Left = 16
                  Top = 304
                  Width = 237
                  Height = 13
                  Caption = 'Diret'#243'rio onde ser'#225' gravado o arquivo PESO.TXT:'
                end
                object Bevel7: TBevel
                  Left = 408
                  Top = 7
                  Width = 9
                  Height = 389
                  Shape = bsLeftLine
                end
                object rdgPorta_Bal: TDBRadioGroup
                  Left = 232
                  Top = 88
                  Width = 161
                  Height = 57
                  Caption = 'Porta de Comunica'#231#227'o'
                  Columns = 2
                  DataField = 'PORTA_BAL'
                  DataSource = dtsFirm
                  Items.Strings = (
                    'COM1'
                    'COM2'
                    'COM3'
                    'COM4')
                  TabOrder = 1
                  Values.Strings = (
                    '1'
                    '2'
                    '3'
                    '4')
                end
                object rdgBaud_Bal: TDBRadioGroup
                  Left = 16
                  Top = 88
                  Width = 201
                  Height = 57
                  Caption = 'Baud Rate'
                  Columns = 3
                  DataField = 'BAUD_BAL'
                  DataSource = dtsFirm
                  Items.Strings = (
                    '2400'
                    '4800'
                    '9600')
                  TabOrder = 2
                  Values.Strings = (
                    '0'
                    '1'
                    '2')
                end
                object rdgBits_Bal: TDBRadioGroup
                  Left = 232
                  Top = 160
                  Width = 161
                  Height = 57
                  Caption = 'Bits de Dados'
                  DataField = 'BITS_BAL'
                  DataSource = dtsFirm
                  Items.Strings = (
                    '7 Bits de dados'
                    '8 Bits de dados')
                  TabOrder = 3
                  Values.Strings = (
                    '0'
                    '1')
                end
                object rdgEscrit_Bal: TDBRadioGroup
                  Left = 16
                  Top = 160
                  Width = 201
                  Height = 57
                  Caption = 'Disponibilizar peso'
                  DataField = 'ESCRIT_BAL'
                  DataSource = dtsFirm
                  Items.Strings = (
                    'Arquivo de Texto'
                    #193'rea de Tranfer'#234'ncia')
                  TabOrder = 4
                  Values.Strings = (
                    '0'
                    '1')
                  OnClick = rdgEscrit_BalClick
                end
                object rdgParid_Bal: TDBRadioGroup
                  Left = 16
                  Top = 232
                  Width = 201
                  Height = 57
                  Caption = 'Paridade'
                  Columns = 2
                  DataField = 'PARID_BAL'
                  DataSource = dtsFirm
                  Items.Strings = (
                    'Nenhuma'
                    #205'mpar'
                    'Par'
                    'Espa'#231'o')
                  TabOrder = 5
                  Values.Strings = (
                    '0'
                    '1'
                    '2'
                    '3')
                end
                object edtLocal_Bal: TDBEdit
                  Left = 16
                  Top = 320
                  Width = 241
                  Height = 21
                  TabStop = False
                  DataField = 'LOCAL_BAL'
                  DataSource = dtsFirm
                  Enabled = False
                  TabOrder = 6
                end
                object rdgMode_Balan: TDBRadioGroup
                  Left = 16
                  Top = 26
                  Width = 201
                  Height = 55
                  Caption = 'Modelo de Balan'#231'a'
                  Columns = 2
                  DataField = 'MODE_BALAN'
                  DataSource = dtsFirm
                  Items.Strings = (
                    'Nenhum'
                    'Toledo - On-line'
                    'Toledo - Etiq.')
                  TabOrder = 0
                  Values.Strings = (
                    ' '
                    '1'
                    '2')
                  OnClick = rdgMode_BalanClick
                end
                object chkMulti_Bal: TDBCheckBox
                  Left = 232
                  Top = 45
                  Width = 161
                  Height = 17
                  Caption = 'Utiliza Multiplas Impressoras'
                  DataField = 'MULTI_BAL'
                  DataSource = dtsFirm
                  TabOrder = 7
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object rdgEtiq_Balan: TDBRadioGroup
                  Left = 424
                  Top = 16
                  Width = 305
                  Height = 73
                  Caption = 'Padr'#227'o de Etiqueta'
                  DataField = 'ETIQ_BALAN'
                  DataSource = dtsFirm
                  Items.Strings = (
                    'A1 - | 2 | C | C | C | C | 0 | T | T | T | T | T | T | DV |'
                    'B1 - | 2 | C | C | C | C | 0 | 0 | P | P | P | P | P | DV |'
                    'E1 - | 2 | C | C | C | C | C | C | P | P | P | P | P | DV |')
                  TabOrder = 8
                  Values.Strings = (
                    '1'
                    '2'
                    '3')
                end
                object Memo1: TMemo
                  Left = 424
                  Top = 184
                  Width = 209
                  Height = 113
                  BorderStyle = bsNone
                  Color = clBtnFace
                  Ctl3D = False
                  Lines.Strings = (
                    'Onde:'
                    ''
                    '2 '#187' Caracter padr'#227'o de etiquetas balan'#231'a'
                    'C '#187' C'#243'digo do produto'
                    'T '#187' Total a pagar do produto (pre'#231'o)'
                    'P '#187' Peso (sempre 5 d'#237'gitos)'
                    '0 '#187' Zero fixo'
                    'DV '#187' D'#237'gito verificador EAN-13'
                    '')
                  ParentCtl3D = False
                  ReadOnly = True
                  TabOrder = 9
                end
                object rdgBALAN_CAI: TDBRadioGroup
                  Left = 424
                  Top = 96
                  Width = 305
                  Height = 73
                  Caption = 'Padr'#227'o da Balan'#231'a do Caixa'
                  DataField = 'BALAN_CAI'
                  DataSource = dtsFirm
                  Items.Strings = (
                    'A1 - | 2 | C | C | C | C | 0 | T | T | T | T | T | T | DV |'
                    'B1 - | 2 | C | C | C | C | 0 | 0 | P | P | P | P | P | DV |'
                    'E1 - | 2 | C | C | C | C | C | C | P | P | P | P | P | DV |')
                  TabOrder = 10
                  Values.Strings = (
                    '1'
                    '2'
                    '3')
                end
              end
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = '&3 - Ctas Receber / Custos'
        ImageIndex = 2
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 764
          Height = 436
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label24: TLabel
            Left = 8
            Top = 100
            Width = 143
            Height = 13
            Caption = 'Dias para bloqueio autom'#225'tico'
            FocusControl = edtBloqueio
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 8
            Top = 207
            Width = 89
            Height = 13
            Caption = 'Juros de Cobran'#231'a'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 8
            Top = 233
            Width = 98
            Height = 13
            Caption = 'Modelo de Duplicata'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 8
            Top = 126
            Width = 131
            Height = 13
            Caption = '&Taxa de Juros de Cobran'#231'a'
            FocusControl = edtJuros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 8
            Top = 153
            Width = 122
            Height = 13
            Caption = 'Juro M'#237'nimo de Cobran'#231'a'
            FocusControl = edtJuro_Min
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 8
            Top = 177
            Width = 137
            Height = 13
            Caption = '&Dias para toler'#226'ncia de Juros'
            FocusControl = edtDias
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 235
            Top = 126
            Width = 8
            Height = 13
            Caption = '%'
          end
          object Label30: TLabel
            Left = 235
            Top = 155
            Width = 8
            Height = 13
            Caption = '%'
          end
          object Label42: TLabel
            Left = 8
            Top = 74
            Width = 161
            Height = 13
            Caption = 'Bloqueia Cliente Automaticamente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 8
            Top = 46
            Width = 136
            Height = 13
            Caption = '% Comiss'#227'o Contas Receber'
            FocusControl = edtPORCEN_REC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 320
            Top = 24
            Width = 225
            Height = 13
            Caption = 'Conta Cont'#225'bil para baixa no Contas a Receber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label70: TLabel
            Left = 320
            Top = 72
            Width = 232
            Height = 13
            Caption = 'Centro de Custo para baixa no Contas a Receber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label71: TLabel
            Left = 320
            Top = 128
            Width = 175
            Height = 13
            Caption = 'C/C para baixa no Contas a Receber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label72: TLabel
            Left = 320
            Top = 176
            Width = 174
            Height = 26
            Caption = 'Dias para Bloquear Recebimento de Contas a Receber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Bevel12: TBevel
            Left = 311
            Top = 7
            Width = 9
            Height = 349
            Shape = bsLeftLine
          end
          object edtBloqueio: TDBEdit
            Left = 176
            Top = 96
            Width = 32
            Height = 21
            Hint = '|Dias para bloqueio autom'#225'tico de clientes'
            DataField = 'BLOQUEIO_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object edtJuros: TDBEdit
            Left = 176
            Top = 122
            Width = 55
            Height = 21
            DataField = 'JUROS_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edtJuro_Min: TDBEdit
            Left = 176
            Top = 150
            Width = 55
            Height = 21
            DataField = 'JURO_MIN_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object edtDias: TDBEdit
            Left = 176
            Top = 177
            Width = 55
            Height = 21
            DataField = 'DIAS_BLOQ_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object chkComiss_Rec: TDBCheckBox
            Left = 8
            Top = 20
            Width = 185
            Height = 17
            Hint = 
              'Gera comiss'#227'o via Contas a Receber|Gera comiss'#227'o quando se quita' +
              ' um t'#237'tulo no Contas a Receber'
            Caption = '&Comiss'#227'o via Contas a Receber'
            DataField = 'COMISS_REC_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = chkComiss_RecClick
          end
          object cbxTipo_Jur: TDBComboBox
            Left = 176
            Top = 203
            Width = 81
            Height = 21
            Hint = '|Juros a serem usados na cobran'#231'a de t'#237'tulos em atraso'
            DataField = 'TIPO_JUR_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'Simples'
              'Composto')
            ParentFont = False
            TabOrder = 7
          end
          object cbxDuplicata: TDBComboBox
            Left = 176
            Top = 230
            Width = 81
            Height = 21
            DataField = 'DUPLICATA_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'A - Modelo '#39'A'#39
              'C - Modelo '#39'C'#39
              'M - Modelo '#39'M'#39
              #199' - Modelo '#39#199#39)
            ParentFont = False
            TabOrder = 8
          end
          object cmbBloq_Cli: TDBComboBox
            Left = 176
            Top = 70
            Width = 121
            Height = 21
            DataField = 'BLOQ_CLI_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'S - Sim'
              'N - N'#227'o'
              'P - Pergunta Antes')
            ParentFont = False
            TabOrder = 2
          end
          object edtPORCEN_REC: TDBEdit
            Left = 176
            Top = 42
            Width = 49
            Height = 21
            Hint = 
              '% Comiss'#227'o via Contas a Receber|Percentual de Comiss'#227'o a ser pag' +
              'o na quita'#231#227'o de um t'#237'tulo via contas a receber'
            DataField = 'PORCEN_REC_EMP'
            DataSource = dtsFirm
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object GroupBox11: TGroupBox
            Left = 8
            Top = 353
            Width = 737
            Height = 63
            Caption = 'Custos Fixos'
            TabOrder = 15
            object Label73: TLabel
              Left = 8
              Top = 16
              Width = 86
              Height = 13
              Caption = 'Imposto de Venda'
              FocusControl = edtIMP_VENDA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label74: TLabel
              Left = 192
              Top = 16
              Width = 95
              Height = 13
              Caption = 'Custo Administrativo'
              FocusControl = edtFIN_ADM
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label75: TLabel
              Left = 392
              Top = 16
              Width = 49
              Height = 13
              Caption = 'Custo Fixo'
              FocusControl = edtCUSTO_FIXO
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label76: TLabel
              Left = 544
              Top = 16
              Width = 83
              Height = 13
              Caption = 'Margem de Lucro'
              FocusControl = edtLUCRO
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label77: TLabel
              Left = 56
              Top = 40
              Width = 38
              Height = 13
              Caption = 'I.C.M.S.'
              FocusControl = edtICMS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label83: TLabel
              Left = 261
              Top = 40
              Width = 26
              Height = 13
              Caption = 'P.I.S.'
              FocusControl = edtPIS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label84: TLabel
              Left = 412
              Top = 40
              Width = 29
              Height = 13
              Caption = 'Cofins'
              FocusControl = edtCOFINS
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label85: TLabel
              Left = 536
              Top = 40
              Width = 91
              Height = 13
              Caption = 'Contribui'#231#227'o Social'
              FocusControl = edtCONT_SOCIA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label86: TLabel
              Left = 168
              Top = 16
              Width = 8
              Height = 13
              Caption = '%'
              FocusControl = edtIMP_VENDA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label87: TLabel
              Left = 699
              Top = 40
              Width = 8
              Height = 13
              Caption = '%'
              FocusControl = edtIMP_VENDA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label88: TLabel
              Left = 515
              Top = 40
              Width = 8
              Height = 13
              Caption = '%'
              FocusControl = edtIMP_VENDA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label89: TLabel
              Left = 360
              Top = 40
              Width = 8
              Height = 13
              Caption = '%'
              FocusControl = edtIMP_VENDA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label90: TLabel
              Left = 168
              Top = 40
              Width = 8
              Height = 13
              Caption = '%'
              FocusControl = edtIMP_VENDA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label91: TLabel
              Left = 699
              Top = 16
              Width = 8
              Height = 13
              Caption = '%'
              FocusControl = edtIMP_VENDA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label92: TLabel
              Left = 360
              Top = 16
              Width = 8
              Height = 13
              Caption = '%'
              FocusControl = edtIMP_VENDA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label93: TLabel
              Left = 515
              Top = 16
              Width = 8
              Height = 13
              Caption = '%'
              FocusControl = edtIMP_VENDA
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object edtIMP_VENDA: TDBEdit
              Left = 99
              Top = 12
              Width = 65
              Height = 21
              DataField = 'IMP_VENDA_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnExit = edtIMP_VENDAExit
            end
            object edtFIN_ADM: TDBEdit
              Left = 291
              Top = 12
              Width = 65
              Height = 21
              DataField = 'FIN_ADM_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnExit = edtFIN_ADMExit
            end
            object edtCUSTO_FIXO: TDBEdit
              Left = 448
              Top = 12
              Width = 65
              Height = 21
              DataField = 'CUSTO_FIXO_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnExit = edtCUSTO_FIXOExit
            end
            object edtLUCRO: TDBEdit
              Left = 632
              Top = 12
              Width = 65
              Height = 21
              DataField = 'LUCRO_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnExit = edtLUCROExit
            end
            object edtICMS: TDBEdit
              Left = 99
              Top = 36
              Width = 65
              Height = 21
              DataField = 'ICMS_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnExit = edtICMSExit
            end
            object edtPIS: TDBEdit
              Left = 291
              Top = 36
              Width = 65
              Height = 21
              DataField = 'PIS_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnExit = edtPISExit
            end
            object edtCOFINS: TDBEdit
              Left = 448
              Top = 36
              Width = 65
              Height = 21
              DataField = 'COFINS_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnExit = edtCOFINSExit
            end
            object edtCONT_SOCIA: TDBEdit
              Left = 632
              Top = 36
              Width = 65
              Height = 21
              DataField = 'CONT_SOCIA_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              OnExit = edtCONT_SOCIAExit
            end
          end
          object DBCheckBox22: TDBCheckBox
            Left = 8
            Top = 256
            Width = 169
            Height = 17
            Caption = 'Autentica T'#237'tulo na Quita'#231#227'o'
            DataField = 'AUTEN_REC_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox14: TDBCheckBox
            Left = 8
            Top = 281
            Width = 249
            Height = 17
            Caption = 'Imprime Recibo na Baixa de Contas a Receber'
            DataField = 'RECIBO_REC_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object cmbCONTA_REC: TDBLookupComboBox
            Left = 320
            Top = 40
            Width = 241
            Height = 21
            DataField = 'CONTA_REC_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CODIGO_CONTA'
            ListField = 'CODIGO_CONTA;DESCRICAO_CONTA'
            ListFieldIndex = 1
            ListSource = dtsConta
            ParentFont = False
            TabOrder = 11
            OnExit = cmbCONTA_RECExit
          end
          object cmbCentro_Rec: TDBLookupComboBox
            Left = 320
            Top = 88
            Width = 233
            Height = 21
            DataField = 'CENTRO_REC_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CODIGO_CENTRO'
            ListField = 'CODIGO_CENTRO;DESCRICAO_CENTRO'
            ListFieldIndex = 1
            ListSource = dtsCentro
            ParentFont = False
            TabOrder = 12
          end
          object cmbC_C_REC: TDBLookupComboBox
            Left = 320
            Top = 144
            Width = 209
            Height = 21
            DataField = 'C_C_REC_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyField = 'CODIGO_BANCO'
            ListField = 'CODIGO_BANCO;DESCRICAO_BANCO'
            ListFieldIndex = 1
            ListSource = dtsBanco
            ParentFont = False
            TabOrder = 13
          end
          object edtDias_Bloq: TDBEdit
            Left = 320
            Top = 204
            Width = 33
            Height = 21
            DataField = 'DIAS_BLOQ_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnExit = edtDias_BloqExit
          end
          object DBCheckBox40: TDBCheckBox
            Left = 8
            Top = 307
            Width = 113
            Height = 17
            Caption = 'Altera Data Base'
            DataField = 'ALTERA_DATA_BASE_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = '&4 - Cadastro'
        ImageIndex = 5
        object GroupBox4: TGroupBox
          Left = 0
          Top = 0
          Width = 761
          Height = 428
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label35: TLabel
            Left = 480
            Top = 33
            Width = 200
            Height = 13
            Caption = 'N'#186' de Casas Decimais no Pre'#231'o de Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 480
            Top = 59
            Width = 205
            Height = 13
            Caption = 'N'#186' de Casas Decimais no Pre'#231'o de Compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 405
            Top = 199
            Width = 156
            Height = 13
            Caption = 'Forma de Apura'#231#227'o de Comiss'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 8
            Top = 235
            Width = 155
            Height = 13
            Caption = 'Mensagem da Etiqueta de Pre'#231'o'
            FocusControl = edtEtiqueta
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 392
            Top = 91
            Width = 169
            Height = 13
            Caption = 'Tipo de C'#225'lculo de Pre'#231'o de Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 28
            Top = 286
            Width = 135
            Height = 13
            Caption = 'Mensagem Padr'#227'o do Carn'#234
            FocusControl = edtMens_Carne
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 446
            Top = 228
            Width = 115
            Height = 13
            Caption = 'Transfere Custo / Grupo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label61: TLabel
            Left = 525
            Top = 254
            Width = 36
            Height = 13
            Caption = 'Markup'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 421
            Top = 171
            Width = 140
            Height = 13
            Caption = 'Tipo de Consulta de Produtos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 52
            Top = 260
            Width = 111
            Height = 13
            Caption = 'S'#233'rie da NF de Entrada'
            FocusControl = edtCmp_Aux
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 439
            Top = 144
            Width = 122
            Height = 13
            Caption = 'Exibe Produto em Desuso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 44
            Top = 211
            Width = 119
            Height = 13
            Caption = '&Palavra para Codifica'#231#227'o'
            FocusControl = edtPalav_Cust
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Bevel6: TBevel
            Left = 374
            Top = 8
            Width = 9
            Height = 416
            Shape = bsLeftLine
          end
          object Bevel9: TBevel
            Left = 378
            Top = 77
            Width = 379
            Height = 7
            Shape = bsBottomLine
          end
          object Label60: TLabel
            Left = 6
            Top = 311
            Width = 156
            Height = 13
            Caption = '% de &Renda em Limite de Cr'#233'dito'
            FocusControl = edtPerc_Renda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 461
            Top = 118
            Width = 100
            Height = 13
            Caption = 'Sugere N'#186' de T'#237'tulos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label95: TLabel
            Left = 236
            Top = 311
            Width = 8
            Height = 13
            Caption = '%'
            FocusControl = edtPerc_Renda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label100: TLabel
            Left = 21
            Top = 336
            Width = 141
            Height = 13
            Caption = 'Mens. Padr'#227'o do Bloquete (1)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label101: TLabel
            Left = 21
            Top = 360
            Width = 141
            Height = 13
            Caption = 'Mens. Padr'#227'o do Bloquete (2)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtEtiqueta: TDBEdit
            Left = 166
            Top = 232
            Width = 113
            Height = 21
            DataField = 'ETIQUETA_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object edtMens_Carne: TDBEdit
            Left = 166
            Top = 282
            Width = 204
            Height = 21
            DataField = 'MENS_CARNE_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object edtCmp_Aux: TDBEdit
            Left = 166
            Top = 257
            Width = 56
            Height = 21
            DataField = 'CMP_AUX_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object edtPalav_Cust: TDBEdit
            Left = 166
            Top = 208
            Width = 105
            Height = 21
            DataField = 'PALAV_CUST_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = edtPalav_CustEnter
          end
          object cmbTipo_Com: TDBComboBox
            Left = 566
            Top = 196
            Width = 103
            Height = 21
            DataField = 'TIPO_COM_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'G - Por Grupo'
              'P - Por Produto'
              'V - Por Vendas')
            ParentFont = False
            TabOrder = 21
          end
          object cmbTipo_Prc: TDBComboBox
            Left = 566
            Top = 88
            Width = 171
            Height = 21
            DataField = 'TIPO_PRC_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              '0 - Utiliza Fator de Multiplica'#231#227'o'
              '1 - Calcula Pre'#231'o de Custo'
              '2 - Calcula Pre'#231'o de Custo sem Repassar')
            ParentFont = False
            TabOrder = 17
          end
          object GroupBox5: TGroupBox
            Left = 8
            Top = 160
            Width = 302
            Height = 43
            Caption = ' Rotinas em que n'#227'o poder'#225' repetir Produtos '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnExit = GroupBox5Exit
            object chkRep_Orc: TCheckBox
              Left = 8
              Top = 16
              Width = 75
              Height = 17
              Caption = '&Or'#231'amento'
              TabOrder = 0
            end
            object chkRep_Ent: TCheckBox
              Left = 158
              Top = 16
              Width = 66
              Height = 17
              Caption = '&Entradas'
              TabOrder = 2
            end
            object chkRep_Ven: TCheckBox
              Left = 88
              Top = 16
              Width = 60
              Height = 17
              Caption = '&Vendas'
              TabOrder = 1
            end
            object chkRep_Ped: TCheckBox
              Left = 236
              Top = 16
              Width = 62
              Height = 17
              Caption = 'Ped&idos'
              TabOrder = 3
            end
          end
          object chkSug_Cod_Ba: TDBCheckBox
            Left = 8
            Top = 68
            Width = 137
            Height = 17
            Caption = 'Sugere C'#243'digo de &Barra'
            DataField = 'SUG_COD_BA_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object cmbTransfere: TDBComboBox
            Left = 567
            Top = 224
            Width = 81
            Height = 21
            DataField = 'TRANSFERE_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'C - Custo'
              'G - Grupo')
            ParentFont = False
            TabOrder = 22
          end
          object chkManequin: TDBCheckBox
            Left = 8
            Top = 10
            Width = 166
            Height = 17
            Hint = '|Habilita tamanhos dos manequins dos Clientes no Cadastro'
            Caption = 'Controla &Manequim de Cliente'
            DataField = 'MANEQUIN_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object chkObriga_Cpf: TDBCheckBox
            Left = 8
            Top = 48
            Width = 177
            Height = 17
            Hint = '|Obriga informar CPF / CNPJ de todo clientes que for cadastrado'
            Caption = 'Obriga CP&F / CNPJ de Cliente'
            DataField = 'OBRIGA_CPF_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            ValueChecked = 'T'
            ValueUnchecked = 'F'
          end
          object chkIPI: TDBCheckBox
            Left = 8
            Top = 29
            Width = 183
            Height = 17
            Caption = '&Utiliza IPI no custo da Mercadoria'
            DataField = 'IPI_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object chkCusto_Letr: TDBCheckBox
            Left = 8
            Top = 87
            Width = 202
            Height = 17
            Caption = 'Codifica Pre'#231'o de Custo dos Produtos'
            DataField = 'CUSTO_LETR_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = chkCusto_LetrClick
          end
          object cmbMarkup: TDBComboBox
            Left = 567
            Top = 251
            Width = 79
            Height = 21
            Hint = '|Informe como ser'#225' controlado o Markup'
            DataField = 'MARKUP_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'G - Grupo'
              'P - Produto')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 23
          end
          object cmbTipo_Cons: TDBComboBox
            Left = 566
            Top = 168
            Width = 145
            Height = 21
            Hint = '|Tipo de Consulta de Produtos na Tabela de Pre'#231'os'
            DataField = 'TIPO_CONS_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              '1 - C'#243'digo do Produto'
              '2 - C'#243'digo do Fabricante')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 20
          end
          object cmbProd_Neg: TDBComboBox
            Left = 566
            Top = 140
            Width = 149
            Height = 21
            DataField = 'PROD_NEG_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'V - Apenas em Vendas'
              'O - Apenas em Or'#231'amento'
              'A - Em Ambos'
              'N - Nenhum')
            ParentFont = False
            TabOrder = 19
          end
          object chkEstoqDecimal: TCheckBox
            Left = 480
            Top = 11
            Width = 201
            Height = 17
            Caption = 'Estoque com Decima&l'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 14
            OnClick = chkEstoqDecimalClick
          end
          object speDecimal: TSpinEdit
            Left = 691
            Top = 30
            Width = 41
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 4
            MinValue = 2
            ParentFont = False
            TabOrder = 15
            Value = 2
          end
          object speDec_com: TSpinEdit
            Left = 691
            Top = 56
            Width = 41
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 4
            MinValue = 2
            ParentFont = False
            TabOrder = 16
            Value = 2
          end
          object edtPerc_Renda: TDBEdit
            Left = 166
            Top = 307
            Width = 67
            Height = 21
            DataField = 'PERC_RENDA_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object cmbSUGERE_TIT: TDBComboBox
            Left = 566
            Top = 114
            Width = 163
            Height = 21
            DataField = 'SUGERE_TIT_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'P - Apenas em Ctas. a Pagar'
              'R - Apenas em Ctas. a Receber'
              'A - Ambos'
              'N - Nenhum')
            ParentFont = False
            TabOrder = 18
          end
          object edtMSG_BLOQ1: TDBEdit
            Left = 166
            Top = 332
            Width = 204
            Height = 21
            DataField = 'MSG_BLOQ1_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object edtMSG_BLOQ2: TDBEdit
            Left = 166
            Top = 356
            Width = 204
            Height = 21
            DataField = 'MSG_BLOQ2_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object DBRadioGroup5: TDBRadioGroup
            Left = 64
            Top = 383
            Width = 209
            Height = 41
            Caption = 'Modelo do Cadastro de Clientes'
            Columns = 2
            DataField = 'CAD_CLIE_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Modelo 1'
              'Modelo 2')
            ParentFont = False
            TabOrder = 13
            Values.Strings = (
              '1'
              '2')
          end
          object DBCheckBox26: TDBCheckBox
            Left = 8
            Top = 106
            Width = 265
            Height = 17
            Caption = 'Limpa Loca'#231#227'o quando zerar estoque do produto'
            DataField = 'LIMPA_PROD_P'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 24
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox27: TDBCheckBox
            Left = 8
            Top = 126
            Width = 313
            Height = 17
            Caption = 'Calcula Pre'#231'o de Venda de Produtos na Inclus'#227'o/Altera'#231#227'o'
            DataField = 'PRC_VENDA'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 25
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object Panel16: TPanel
            Left = 384
            Top = 296
            Width = 329
            Height = 49
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 26
            object DBCheckBox11: TDBCheckBox
              Left = 8
              Top = 8
              Width = 289
              Height = 17
              Caption = 'Controla Estoque de Produtos em Metros C'#250'bicos (M'#179')'
              DataField = 'CONTROL_M3_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox34: TDBCheckBox
              Left = 8
              Top = 24
              Width = 297
              Height = 17
              Caption = 'Imprime controle de entrega ap'#243's Cupom Fiscal'
              DataField = 'CONT_ENT'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = '&5 - E.C.F.'
        ImageIndex = 3
        OnShow = TabSheet4Show
        object GroupBox6: TGroupBox
          Left = 1
          Top = -3
          Width = 759
          Height = 433
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label44: TLabel
            Left = 23
            Top = 83
            Width = 124
            Height = 13
            Caption = 'Porta da Impressora Fiscal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 74
            Top = 54
            Width = 73
            Height = 13
            Caption = 'Modelo de ECF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label58: TLabel
            Left = 8
            Top = 24
            Width = 139
            Height = 13
            Caption = 'C'#243'digo do Produto no Cupom'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Bevel10: TBevel
            Left = 435
            Top = 8
            Width = 9
            Height = 421
            Shape = bsLeftLine
          end
          object Label97: TLabel
            Left = 216
            Top = 296
            Width = 117
            Height = 13
            Caption = 'N'#250'mero de S'#233'rie da ECF'
            FocusControl = edtSERIAL_ECF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label98: TLabel
            Left = 472
            Top = 271
            Width = 124
            Height = 13
            Caption = 'Tipo de Driver (Bematech)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label99: TLabel
            Left = 487
            Top = 300
            Width = 109
            Height = 13
            Caption = 'Modelo ECF Bematech'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label102: TLabel
            Left = 472
            Top = 327
            Width = 123
            Height = 13
            Caption = 'Drive para gerar o arquivo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cmbPorta_Ecf: TDBComboBox
            Left = 152
            Top = 79
            Width = 73
            Height = 21
            DataField = 'PORTA_ECF_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              '1 - COM1'
              '2 - COM2'
              '3 - COM3'
              '4 - COM4')
            ParentFont = False
            TabOrder = 2
          end
          object DBCheckBox1: TDBCheckBox
            Left = 8
            Top = 107
            Width = 233
            Height = 17
            Caption = '&Imprime Cupom em Anexo em Venda a Prazo'
            DataField = 'CUP_ANEX_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object cmbModel_Ecf: TDBComboBox
            Left = 152
            Top = 50
            Width = 145
            Height = 21
            DataField = 'MODEL_ECF_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              '1 - Bematech'
              '2 - Epson'
              '5 - Daruma')
            ParentFont = False
            TabOrder = 1
          end
          object cmbCod_Pro_Cp: TDBComboBox
            Left = 152
            Top = 20
            Width = 145
            Height = 21
            DataField = 'COD_PRO_CP_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'C - C'#243'digo do Produto'
              'B - C'#243'digo de Barras'
              'F - C'#243'digo do Fabricante')
            ParentFont = False
            TabOrder = 0
          end
          object Panel7: TPanel
            Left = 512
            Top = 10
            Width = 161
            Height = 252
            BevelWidth = 2
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            object Image2: TImage
              Left = 69
              Top = 202
              Width = 21
              Height = 15
              Picture.Data = {
                07544269746D6170DE010000424DDE0100000000000076000000280000001600
                00000F0000000100080000000000680100000000000000000000100000000000
                0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
                C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00070707070707070707070707070707070707070707077569070707070707
                0707070707070708070707070707070775690707070707070707070707070708
                0807070707070707756907070707070707070707070707080408070707070707
                7569070707070707070707070707070804040807070707077569070707080808
                0807080808080808040F04080707070775690707080804040407080404040404
                04070F0408070707756907070804080708040804070707070707070F04070707
                756907070804070F0F04070407070707070707070F040707756907070804080F
                070407040F0F0F0F0F07070F0407070775690707070704040407070404040404
                04070F040707070775690707070707070707070707070707040F040707070707
                7569070707070707070707070707070704040707070707077569070707070707
                0707070707070707040707070707070775690707070707070707070707070707
                07070707070707077569}
              Transparent = True
            end
            object Image3: TImage
              Left = 69
              Top = 226
              Width = 21
              Height = 15
              Picture.Data = {
                07544269746D6170DE010000424DDE0100000000000076000000280000001600
                00000F0000000100080000000000680100000000000000000000100000000000
                0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
                C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00070707070707070707070707070707070707070707077569070707070707
                0707070707070708070707070707070775690707070707070707070707070708
                0807070707070707756907070707070707070707070707080408070707070707
                7569070707070707070707070707070804040807070707077569070707080808
                0807080808080808040F04080707070775690707080804040407080404040404
                04070F0408070707756907070804080708040804070707070707070F04070707
                756907070804070F0F04070407070707070707070F040707756907070804080F
                070407040F0F0F0F0F07070F0407070775690707070704040407070404040404
                04070F040707070775690707070707070707070707070707040F040707070707
                7569070707070707070707070707070704040707070707077569070707070707
                0707070707070707040707070707070775690707070707070707070707070707
                07070707070707077569}
              Transparent = True
            end
            object Image4: TImage
              Left = 69
              Top = 83
              Width = 21
              Height = 15
              Picture.Data = {
                07544269746D6170DE010000424DDE0100000000000076000000280000001600
                00000F0000000100080000000000680100000000000000000000100000000000
                0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
                C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00070707070707070707070707070707070707070707077569070707070707
                0707070707070708070707070707070775690707070707070707070707070708
                0807070707070707756907070707070707070707070707080408070707070707
                7569070707070707070707070707070804040807070707077569070707080808
                0807080808080808040F04080707070775690707080804040407080404040404
                04070F0408070707756907070804080708040804070707070707070F04070707
                756907070804070F0F04070407070707070707070F040707756907070804080F
                070407040F0F0F0F0F07070F0407070775690707070704040407070404040404
                04070F040707070775690707070707070707070707070707040F040707070707
                7569070707070707070707070707070704040707070707077569070707070707
                0707070707070707040707070707070775690707070707070707070707070707
                07070707070707077569}
              Transparent = True
            end
            object Image5: TImage
              Left = 69
              Top = 107
              Width = 21
              Height = 15
              Picture.Data = {
                07544269746D6170DE010000424DDE0100000000000076000000280000001600
                00000F0000000100080000000000680100000000000000000000100000000000
                0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
                C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00070707070707070707070707070707070707070707077569070707070707
                0707070707070708070707070707070775690707070707070707070707070708
                0807070707070707756907070707070707070707070707080408070707070707
                7569070707070707070707070707070804040807070707077569070707080808
                0807080808080808040F04080707070775690707080804040407080404040404
                04070F0408070707756907070804080708040804070707070707070F04070707
                756907070804070F0F04070407070707070707070F040707756907070804080F
                070407040F0F0F0F0F07070F0407070775690707070704040407070404040404
                04070F040707070775690707070707070707070707070707040F040707070707
                7569070707070707070707070707070704040707070707077569070707070707
                0707070707070707040707070707070775690707070707070707070707070707
                07070707070707077569}
              Transparent = True
            end
            object Image6: TImage
              Left = 69
              Top = 130
              Width = 21
              Height = 15
              Picture.Data = {
                07544269746D6170DE010000424DDE0100000000000076000000280000001600
                00000F0000000100080000000000680100000000000000000000100000000000
                0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
                C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00070707070707070707070707070707070707070707077569070707070707
                0707070707070708070707070707070775690707070707070707070707070708
                0807070707070707756907070707070707070707070707080408070707070707
                7569070707070707070707070707070804040807070707077569070707080808
                0807080808080808040F04080707070775690707080804040407080404040404
                04070F0408070707756907070804080708040804070707070707070F04070707
                756907070804070F0F04070407070707070707070F040707756907070804080F
                070407040F0F0F0F0F07070F0407070775690707070704040407070404040404
                04070F040707070775690707070707070707070707070707040F040707070707
                7569070707070707070707070707070704040707070707077569070707070707
                0707070707070707040707070707070775690707070707070707070707070707
                07070707070707077569}
              Transparent = True
            end
            object Image7: TImage
              Left = 69
              Top = 154
              Width = 21
              Height = 15
              Picture.Data = {
                07544269746D6170DE010000424DDE0100000000000076000000280000001600
                00000F0000000100080000000000680100000000000000000000100000000000
                0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
                C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00070707070707070707070707070707070707070707077569070707070707
                0707070707070708070707070707070775690707070707070707070707070708
                0807070707070707756907070707070707070707070707080408070707070707
                7569070707070707070707070707070804040807070707077569070707080808
                0807080808080808040F04080707070775690707080804040407080404040404
                04070F0408070707756907070804080708040804070707070707070F04070707
                756907070804070F0F04070407070707070707070F040707756907070804080F
                070407040F0F0F0F0F07070F0407070775690707070704040407070404040404
                04070F040707070775690707070707070707070707070707040F040707070707
                7569070707070707070707070707070704040707070707077569070707070707
                0707070707070707040707070707070775690707070707070707070707070707
                07070707070707077569}
              Transparent = True
            end
            object Image8: TImage
              Left = 69
              Top = 178
              Width = 21
              Height = 15
              Picture.Data = {
                07544269746D6170DE010000424DDE0100000000000076000000280000001600
                00000F0000000100080000000000680100000000000000000000100000000000
                0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
                C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00070707070707070707070707070707070707070707077569070707070707
                0707070707070708070707070707070775690707070707070707070707070708
                0807070707070707756907070707070707070707070707080408070707070707
                7569070707070707070707070707070804040807070707077569070707080808
                0807080808080808040F04080707070775690707080804040407080404040404
                04070F0408070707756907070804080708040804070707070707070F04070707
                756907070804070F0F04070407070707070707070F040707756907070804080F
                070407040F0F0F0F0F07070F0407070775690707070704040407070404040404
                04070F040707070775690707070707070707070707070707040F040707070707
                7569070707070707070707070707070704040707070707077569070707070707
                0707070707070707040707070707070775690707070707070707070707070707
                07070707070707077569}
              Transparent = True
            end
            object Image9: TImage
              Left = 69
              Top = 59
              Width = 21
              Height = 15
              Picture.Data = {
                07544269746D6170DE010000424DDE0100000000000076000000280000001600
                00000F0000000100080000000000680100000000000000000000100000000000
                0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
                C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00070707070707070707070707070707070707070707077569070707070707
                0707070707070708070707070707070775690707070707070707070707070708
                0807070707070707756907070707070707070707070707080408070707070707
                7569070707070707070707070707070804040807070707077569070707080808
                0807080808080808040F04080707070775690707080804040407080404040404
                04070F0408070707756907070804080708040804070707070707070F04070707
                756907070804070F0F04070407070707070707070F040707756907070804080F
                070407040F0F0F0F0F07070F0407070775690707070704040407070404040404
                04070F040707070775690707070707070707070707070707040F040707070707
                7569070707070707070707070707070704040707070707077569070707070707
                0707070707070707040707070707070775690707070707070707070707070707
                07070707070707077569}
              Transparent = True
            end
            object Panel8: TPanel
              Left = 6
              Top = 5
              Width = 146
              Height = 17
              Caption = 'Tabela de Al'#237'quotas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object Panel9: TPanel
              Left = 6
              Top = 32
              Width = 63
              Height = 18
              Caption = 'Imposto %'
              TabOrder = 1
            end
            object Panel10: TPanel
              Left = 92
              Top = 32
              Width = 60
              Height = 18
              Caption = 'Al'#237'q. ECF'
              TabOrder = 2
            end
            object edtValor04: TDBEdit
              Left = 6
              Top = 128
              Width = 63
              Height = 19
              Ctl3D = False
              DataField = 'VALOR04_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 6
            end
            object edtValor05: TDBEdit
              Left = 6
              Top = 152
              Width = 63
              Height = 19
              Ctl3D = False
              DataField = 'VALOR05_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 7
            end
            object edtValor06: TDBEdit
              Left = 6
              Top = 176
              Width = 63
              Height = 19
              Ctl3D = False
              DataField = 'VALOR06_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 8
            end
            object edtValor07: TDBEdit
              Left = 6
              Top = 200
              Width = 63
              Height = 19
              Ctl3D = False
              DataField = 'VALOR07_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 9
            end
            object edtValor08: TDBEdit
              Left = 6
              Top = 224
              Width = 63
              Height = 19
              Ctl3D = False
              DataField = 'VALOR08_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 10
            end
            object Panel11: TPanel
              Left = 6
              Top = 56
              Width = 63
              Height = 21
              Alignment = taLeftJustify
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = 'Isento'
              Color = clCaptionText
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 3
            end
            object Panel12: TPanel
              Left = 6
              Top = 80
              Width = 63
              Height = 21
              Alignment = taLeftJustify
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = 'Substitu'#237'do'
              Color = clCaptionText
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 4
            end
            object Panel13: TPanel
              Left = 6
              Top = 104
              Width = 63
              Height = 21
              BevelInner = bvRaised
              BevelOuter = bvLowered
              Caption = #209' Incid'#234'ncia'
              Color = clCaptionText
              Ctl3D = True
              ParentCtl3D = False
              TabOrder = 5
            end
            object edtAliq01: TDBEdit
              Left = 92
              Top = 56
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'ALIQ01_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 11
            end
            object edtAliq02: TDBEdit
              Left = 92
              Top = 80
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'ALIQ02_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 12
            end
            object edtAliq03: TDBEdit
              Left = 92
              Top = 104
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'ALIQ03_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 13
            end
            object edtAliq04: TDBEdit
              Left = 92
              Top = 128
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'ALIQ04_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 14
            end
            object edtAliq05: TDBEdit
              Left = 92
              Top = 152
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'ALIQ05_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 15
            end
            object edtAliq06: TDBEdit
              Left = 92
              Top = 176
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'ALIQ06_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 16
            end
            object edtAliq07: TDBEdit
              Left = 92
              Top = 200
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'ALIQ07_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 17
            end
            object edtAliq08: TDBEdit
              Left = 92
              Top = 224
              Width = 60
              Height = 19
              Ctl3D = False
              DataField = 'ALIQ08_EMP'
              DataSource = dtsFirm
              ParentCtl3D = False
              TabOrder = 18
            end
          end
          object GroupBox7: TGroupBox
            Left = 8
            Top = 125
            Width = 417
            Height = 153
            Caption = ' Mensagem Cupom Vinculado / Pedido a Prazo '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object Label78: TLabel
              Left = 10
              Top = 24
              Width = 35
              Height = 13
              Caption = '&Linha 1'
              FocusControl = DBEdit27
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label79: TLabel
              Left = 10
              Top = 49
              Width = 35
              Height = 13
              Caption = 'Li&nha 2'
              FocusControl = DBEdit28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label80: TLabel
              Left = 10
              Top = 74
              Width = 35
              Height = 13
              Caption = 'Lin&ha 3'
              FocusControl = DBEdit29
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label81: TLabel
              Left = 10
              Top = 99
              Width = 35
              Height = 13
              Caption = 'Linh&a 4'
              FocusControl = DBEdit30
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label82: TLabel
              Left = 10
              Top = 124
              Width = 35
              Height = 13
              Caption = 'Linha &5'
              FocusControl = DBEdit31
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit27: TDBEdit
              Left = 48
              Top = 20
              Width = 361
              Height = 21
              DataField = 'LINHA6_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit28: TDBEdit
              Left = 48
              Top = 45
              Width = 361
              Height = 21
              DataField = 'LINHA7_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit29: TDBEdit
              Left = 48
              Top = 70
              Width = 361
              Height = 21
              DataField = 'LINHA8_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit30: TDBEdit
              Left = 48
              Top = 95
              Width = 361
              Height = 21
              DataField = 'LINHA9_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit31: TDBEdit
              Left = 48
              Top = 120
              Width = 361
              Height = 21
              DataField = 'LINHA10_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
          object pnlMultEcf: TPanel
            Left = 8
            Top = 296
            Width = 185
            Height = 35
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 6
            object Label96: TLabel
              Left = 8
              Top = 13
              Width = 108
              Height = 13
              Caption = 'ECF deste computador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object speCod_Ecf: TSpinEdit
              Left = 128
              Top = 8
              Width = 49
              Height = 22
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxValue = 0
              MinValue = 0
              ParentFont = False
              TabOrder = 0
              Value = 0
            end
          end
          object chkVarios_Ecf: TDBCheckBox
            Left = 14
            Top = 288
            Width = 121
            Height = 17
            Caption = 'Utiliza M'#250'ltiplas ECFs'
            DataField = 'VARIOS_ECF_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            ValueChecked = 'T'
            ValueUnchecked = 'F'
            OnClick = chkVarios_EcfClick
          end
          object edtSERIAL_ECF: TDBEdit
            Left = 216
            Top = 310
            Width = 209
            Height = 21
            DataField = 'SERIAL_ECF_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object cmbDRIVE_ECF: TDBComboBox
            Left = 600
            Top = 267
            Width = 105
            Height = 21
            DataField = 'DRIVE_ECF_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'L - Local'
              'R - Residente'
              'M - Remoto')
            ParentFont = False
            TabOrder = 9
            OnExit = TabSheet4Show
          end
          object DBComboBox3: TDBComboBox
            Left = 600
            Top = 296
            Width = 105
            Height = 21
            DataField = 'MODE_BEMA_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              '1 - MP20FI'
              '2 - MP25FI'
              '3 - OUTRA')
            ParentFont = False
            TabOrder = 10
          end
          object DBRadioGroup4: TDBRadioGroup
            Left = 472
            Top = 355
            Width = 233
            Height = 40
            Caption = 'Vers'#227'o Software ECF Bematech'
            Color = clBtnFace
            Columns = 2
            DataField = 'VERSAO_ECF_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Vers'#227'o 2'
              'Vers'#227'o 3')
            ParentColor = False
            ParentFont = False
            TabOrder = 11
            Values.Strings = (
              '2'
              '3')
          end
          object cmbDRIVE_REM: TDBComboBox
            Left = 600
            Top = 323
            Width = 49
            Height = 21
            DataField = 'DRIVE_REM'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'C:'
              'D:'
              'E:'
              'F:'
              'G:'
              'H:'
              'I:'
              'J:'
              'K:'
              'L:'
              'M:'
              'N:'
              'O:'
              'P:'
              'Q:'
              'R:'
              'S:'
              'T:'
              'U:'
              'V:'
              'W:'
              'X:'
              'Y:'
              'Z:')
            ParentFont = False
            TabOrder = 12
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = '&6 - Configura'#231#245'es Gerais'
        ImageIndex = 5
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 761
          Height = 432
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label106: TLabel
            Left = 280
            Top = 184
            Width = 166
            Height = 13
            Caption = 'Observa'#231#245'es da Ordem de Servi'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Bevel8: TBevel
            Left = 273
            Top = 1
            Width = 9
            Height = 313
            Shape = bsLeftLine
          end
          object GroupBox8: TGroupBox
            Left = 464
            Top = 304
            Width = 289
            Height = 121
            Caption = 'Itens do Encerramento Di'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 20
            object chkVencVendas: TCheckBox
              Left = 8
              Top = 17
              Width = 177
              Height = 17
              Caption = 'Verificar Vencimento de Vendas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object chkNumeroNF: TCheckBox
              Left = 8
              Top = 33
              Width = 177
              Height = 17
              Caption = 'Verificar N'#250'mero de NF/CF/CI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object chkItensVenda: TCheckBox
              Left = 8
              Top = 49
              Width = 177
              Height = 17
              Caption = 'Verificar Itens da Venda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object chkGradeProduto: TCheckBox
              Left = 8
              Top = 65
              Width = 177
              Height = 17
              Caption = 'Verificar Grade de Produtos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object chkBloqCliente: TCheckBox
              Left = 8
              Top = 81
              Width = 177
              Height = 17
              Caption = 'Efetuar Bloqueio de Clientes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object chkBackupDiario: TCheckBox
              Left = 8
              Top = 97
              Width = 177
              Height = 17
              Caption = 'Lembrar Backup Di'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 544
            Top = 56
            Width = 193
            Height = 41
            Hint = 
              'Sele'#231#227'o de Or'#231'amento|Selecione o modelo de sele'#231#227'o de or'#231'amento ' +
              'na importa'#231#227'o de or'#231'amentos'
            Caption = 'Modelo de Sele'#231#227'o de Or'#231'amento'
            Columns = 2
            DataField = 'IMP_ORCA_EMP'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Sele'#231#227'o'
              'Digita'#231#227'o')
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            Values.Strings = (
              'S'
              'D')
          end
          object DBCheckBox5: TDBCheckBox
            Left = 8
            Top = 8
            Width = 177
            Height = 17
            Caption = 'Apaga Lan'#231'amento Financeiro'
            DataField = 'APAGA_LANC_EMP'
            DataSource = dtsFirm
            TabOrder = 0
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GroupBox10: TGroupBox
            Left = 8
            Top = 314
            Width = 449
            Height = 110
            Caption = 'Lembretes da Entrada do Sistema'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 19
            object pnlInfPerso: TPanel
              Left = 8
              Top = 68
              Width = 433
              Height = 37
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 7
              object edtPersonaliz: TDBEdit
                Left = 6
                Top = 11
                Width = 419
                Height = 21
                DataField = 'PERSONALIZ_EMP'
                DataSource = dtsFirm
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object chkContasPagar: TCheckBox
              Left = 13
              Top = 12
              Width = 150
              Height = 17
              Caption = 'Contas a Pagar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object chkContasReceber: TCheckBox
              Left = 157
              Top = 12
              Width = 150
              Height = 17
              Caption = 'Contas a Receber'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object chkReindexa: TCheckBox
              Left = 13
              Top = 28
              Width = 150
              Height = 17
              Caption = 'Reindexa'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object chkLeituraX: TCheckBox
              Left = 157
              Top = 28
              Width = 150
              Height = 17
              Caption = 'Leitura X'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object chkCheqEmit: TCheckBox
              Left = 13
              Top = 44
              Width = 116
              Height = 17
              Caption = 'Cheques Emitidos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object chkCheqClie: TCheckBox
              Left = 157
              Top = 44
              Width = 150
              Height = 17
              Caption = 'Cheques de Clientes'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object chkInfoPerso: TCheckBox
              Left = 13
              Top = 60
              Width = 144
              Height = 17
              Caption = 'Informa'#231#227'o Personalizada'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnClick = chkInfoPersoClick
            end
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 544
            Top = 8
            Width = 193
            Height = 41
            Caption = 'Tipo de Exporta'#231#227'o para Livro Fiscal'
            Columns = 2
            DataField = 'EXPORTACAO_EMP'
            DataSource = dtsFirm
            Items.Strings = (
              'Tron'
              'Prosoft')
            TabOrder = 12
            Values.Strings = (
              'T'
              'P')
          end
          object DBCheckBox6: TDBCheckBox
            Left = 8
            Top = 176
            Width = 201
            Height = 17
            Caption = 'Altera Descri'#231#227'o de Servi'#231'o na O.S.'
            DataField = 'ALT_DSC_OS_EMP'
            DataSource = dtsFirm
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox7: TDBCheckBox
            Left = 8
            Top = 200
            Width = 193
            Height = 17
            Caption = 'Embute Produto em Servi'#231'o na O.S.'
            DataField = 'PRO_SER_OS_EMP'
            DataSource = dtsFirm
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox12: TDBCheckBox
            Left = 8
            Top = 32
            Width = 169
            Height = 17
            Caption = 'Utiliza Receitu'#225'rio Agron'#244'mico'
            DataField = 'USA_RECEIT_EMP'
            DataSource = dtsFirm
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox18: TDBCheckBox
            Left = 8
            Top = 80
            Width = 209
            Height = 17
            Caption = 'Mant'#233'm Nome de Produto na Entrada'
            DataField = 'REP_PROD_E_EMP'
            DataSource = dtsFirm
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox20: TDBCheckBox
            Left = 8
            Top = 105
            Width = 265
            Height = 17
            Hint = 
              '|Na altera'#231#227'o de entrada de produtos o sistema poder'#225' alterar al' +
              'terar automaticamente os pre'#231'os de custo e de venda ja gravados ' +
              'anteriormente na entrada'
            Caption = 'Na Altera'#231#227'o de Entrada de Produtos Altera Pre'#231'os'
            DataField = 'PRECO_ENTR_EMP'
            DataSource = dtsFirm
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object pnlFator: TPanel
            Left = 8
            Top = 235
            Width = 241
            Height = 36
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 10
            object Label69: TLabel
              Left = 6
              Top = 14
              Width = 104
              Height = 13
              Caption = 'Fator de Multiplica'#231#227'o'
            end
            object edtVALOR_FAT: TDBEdit
              Left = 115
              Top = 11
              Width = 46
              Height = 21
              DataField = 'VALOR_FAT_EMP'
              DataSource = dtsFirm
              TabOrder = 0
              OnExit = edtVALOR_FATExit
            end
          end
          object chkFATOR_SRV: TDBCheckBox
            Left = 12
            Top = 227
            Width = 213
            Height = 17
            Caption = 'Utiliza Fator de Multiplica'#231#227'o em Servi'#231'o'
            DataField = 'FATOR_SRV_EMP'
            DataSource = dtsFirm
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = chkFATOR_SRVClick
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 544
            Top = 104
            Width = 193
            Height = 41
            Hint = 
              'Ordem de produtos de Mercadoria|Selecione a ordem que ser'#227'o list' +
              'ados os produtos na rotina de pedido de mercadoria'
            Caption = 'Ordem de Produtos No Pedido'
            Columns = 2
            DataField = 'ORD_PEDIDO_EMP'
            DataSource = dtsFirm
            Items.Strings = (
              'Alfab'#233'tica'
              'Inclus'#227'o')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            Values.Strings = (
              'A'
              'I')
          end
          object DBCheckBox13: TDBCheckBox
            Left = 8
            Top = 129
            Width = 249
            Height = 17
            Caption = 'Imprime Cheque na quita'#231#227'o de Contas a Pagar'
            DataField = 'CHEQ_PAGAR_EMP'
            DataSource = dtsFirm
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox24: TDBCheckBox
            Left = 8
            Top = 154
            Width = 241
            Height = 17
            Caption = 'Imprime etiquetas na entrada de produtos'
            DataField = 'ETI_ENT_EMP'
            DataSource = dtsFirm
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox25: TDBCheckBox
            Left = 8
            Top = 56
            Width = 249
            Height = 17
            Caption = 'Mant'#233'm Nome de Produto no Pedido'
            DataField = 'REP_PROD_P_EMP'
            DataSource = dtsFirm
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GroupBox12: TGroupBox
            Left = 280
            Top = 4
            Width = 249
            Height = 174
            Caption = 'Op'#231#245'es de Caixa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            object Label67: TLabel
              Left = 8
              Top = 131
              Width = 139
              Height = 13
              Caption = 'Modelo de Relat'#243'rio de Caixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBCheckBox4: TDBCheckBox
              Left = 8
              Top = 23
              Width = 169
              Height = 17
              Caption = 'Inclui Devolu'#231#245'es no Caixa'
              DataField = 'DEV_CAIXA_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox15: TDBCheckBox
              Left = 8
              Top = 44
              Width = 233
              Height = 17
              Caption = 'Cheque Pr'#233'-Datado entra no Cash no Caixa'
              DataField = 'CHEQ_CASH_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox16: TDBCheckBox
              Left = 8
              Top = 66
              Width = 227
              Height = 17
              Caption = 'Totaliza Cheq. Pr'#233'-Dat. de Cliente no Caixa'
              DataField = 'TOT_CHEQ_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox21: TDBCheckBox
              Left = 8
              Top = 88
              Width = 217
              Height = 17
              Caption = 'Indexa arquivos no fechamento de caixa'
              DataField = 'INDEX_CAI_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object cmbDev_Caixa: TDBComboBox
              Left = 8
              Top = 146
              Width = 97
              Height = 21
              DataField = 'REL_CAIXA_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                '1 - Modelo 1'
                '2 - Modelo 2')
              ParentFont = False
              TabOrder = 4
            end
            object chkCaixa_Fat: TDBCheckBox
              Left = 8
              Top = 110
              Width = 177
              Height = 17
              Hint = 
                '|Informa se o saldo do caixa passa de um dia para o outro no fec' +
                'hamento'
              Caption = 'C&aixa Faturam. Transfere Saldo'
              DataField = 'CAIXA_FAT_EMP'
              DataSource = dtsFirm
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object DBEdit8: TDBEdit
            Left = 280
            Top = 200
            Width = 433
            Height = 21
            DataField = 'OBS1_OS'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 15
          end
          object DBEdit9: TDBEdit
            Left = 280
            Top = 224
            Width = 433
            Height = 21
            DataField = 'OBS2_OS'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
          end
          object DBEdit10: TDBEdit
            Left = 280
            Top = 248
            Width = 433
            Height = 21
            DataField = 'OBS3_OS'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 17
          end
          object DBEdit11: TDBEdit
            Left = 280
            Top = 272
            Width = 433
            Height = 21
            DataField = 'OBS4_OS'
            DataSource = dtsFirm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 475
      Width = 772
      Height = 49
      BevelInner = bvLowered
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 16
        Top = 10
        Width = 77
        Height = 29
        Hint = 'Grava e sai|Grava as altera'#231#245'es e sai dos par'#226'metros'
        Caption = '&Gravar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          960A0000424DD60A000000000000B60000002800000024000000120000000100
          200000000000200A000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000FFFFFF00008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000800000008000000000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000008080008080800080808000FFFF
          FF00008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000800000000080
          0000008000008000000000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          800080808000008080000080800080808000FFFFFF0000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080008000000000800000008000000080000000800000800000000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000808080000080800000808000008080000080
          800080808000FFFFFF0000808000008080000080800000808000008080000080
          8000008080000080800000808000008080008000000000800000008000000080
          0000008000000080000000800000800000000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000808080000080
          8000008080000080800000808000008080000080800080808000FFFFFF000080
          8000008080000080800000808000008080000080800000808000008080008000
          000000800000008000000080000000FF00000080000000800000008000000080
          0000800000000080800000808000008080000080800000808000008080000080
          80000080800080808000FFFFFF00008080000080800080808000FFFFFF000080
          8000008080000080800080808000FFFFFF000080800000808000008080000080
          800000808000008080000080800000800000008000000080000000FF00000080
          800000FF00000080000000800000008000008000000000808000008080000080
          8000008080000080800000808000008080000080800080808000FFFFFF000080
          8000808080000080800080808000FFFFFF00008080000080800080808000FFFF
          FF000080800000808000008080000080800000808000008080000080800000FF
          00000080000000FF000000808000008080000080800000FF0000008000000080
          0000008000008000000000808000008080000080800000808000008080000080
          80000080800080808000FFFFFF00808080000080800000808000008080008080
          8000FFFFFF00008080000080800080808000FFFFFF0000808000008080000080
          80000080800000808000008080000080800000FF000000808000008080000080
          8000008080000080800000FF0000008000000080000000800000800000000080
          8000008080000080800000808000008080000080800000808000808080000080
          80000080800000808000008080000080800080808000FFFFFF00008080000080
          800080808000FFFFFF0000808000008080000080800000808000008080000080
          80000080800000808000008080000080800000808000008080000080800000FF
          0000008000000080000000800000800000000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800080808000FFFFFF00008080000080800080808000FFFFFF000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000008080000080800000FF000000800000008000000080
          0000800000000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000008080000080800080808000FFFF
          FF00008080000080800080808000FFFFFF000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000FF000000800000008000000080000080000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800080808000FFFFFF0000808000008080008080
          8000FFFFFF000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000008080000080800000FF00000080
          0000008000000080000080000000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          800080808000FFFFFF00008080000080800080808000FFFFFF00008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000FF00000080000000800000800000000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800080808000FFFFFF000080
          800080808000FFFFFF0000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000FF00000080000000800000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800080808000FFFFFF008080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000FF0000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080008080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 99
        Top = 10
        Width = 77
        Height = 29
        Hint = 'Sai sem gravar|Sai sem gravar'
        Caption = '&Sair'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          C6070000424DC607000000000000360000002800000016000000160000000100
          2000000000009007000000000000000000000000000000000000FFFFFF00F2F2
          F200F2F2F200D3D3D300E8E8E800F5F5F500DBDBDB00DDDDDD00ECECEC00EEEE
          EE00D3D3D300EBEBEB00F7F7F70023230F004F4F0000B2B2A800E9E9E900D6D6
          D600EBEBEB00FAFAFA00FFFFFF00FFFFFF00FFFFFF00F0F0F000D8D8D800EDED
          ED00EAEAEA00DFDFDF00DCDCDC00F4F4F400E6E6E600D7D7D700F2F2F200E7E7
          E700DDDDDD004C4C0C00FFFF0000686811009B9B9B00F4F4F400E7E7E700DBDB
          DB00E6E6E600FFFFFF00D3D3D300E4E4E400EFEFEF00E4E4E400D8D8D800EDED
          ED00F3F3F300D3D3D300E7E7E700F1F1F100DFDFDF00DBDBDB00ECECEC004D4D
          0D00FFFF00008D8D00005151050087878100DFDFDF00EDEDED00ECECEC00D3D3
          D300E6E6E600EDEDED00E1E1E100DBDBDB00F5F5F500E3E3E300DCDCDC00EAEA
          EA00EAEAEA00E0E0E000DBDBDB00F6F6F600E3E3E3004D4D0D00FFFF00008F8F
          00007F7F000056560D00A1A1A100E2E2E200DBDBDB00F3F3F3004B4B4B005050
          50004E4E4E00484848004F4F4F00505050004A4A4A004C4C4C0044444400F0F0
          F000F3F3F300D3D3D300E7E7E7004E4E0E00FFFF00008F8F00007F7F00007D7D
          00004C4C0D0032323200484848004E4E4E00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF004A4A4A00DFDFDF00DFDFDF00E9E9
          E900EBEBEB004D4D0D00FFFF00008F8F00007F7F00007F7F0000474700006363
          6300BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00B0B0B000BFBFBF00404040003F3F3F0037373700373737003F3F3F004343
          0300FFFF00008F8F00007F7F00007F7F00004747000063636300BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF003D3D3D008F8F
          8F003E3E3E007F7F7F007F7F7F007F7F7F007F7F7F0047470700FFFF00008F8F
          00007F7F00007F7F00004747000063636300BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF003C3C30004D4D1400151513007F7F
          7F007F7F7F007F7F7F007F7F7F0047470700FFFF00008D8D0000777700007D7D
          00004747000063636300BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00464630009A9A000045450400616161007F7F7F007F7F
          7F007F7F7F0047470700FFFF00005F5F08001717170067670000474700006363
          6300BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF0047472700EDED00009292000045450E00636363007F7F7F007F7F7F004747
          0700FFFF0000474727006B6B6B00676700004747000063636300BFBFBF00BFBF
          BF00AEAEAE005757450031310A0027270000272700002727000042420000FFFF
          0000F9F900009898000042420000636363007F7F7F0047470700FFFF00007E7E
          0000272700006E6E00004747000063636300BFBFBF00BFBFBF00898989008C8C
          1300CFCF0100CFCF0000CFCF0000CFCF0000D5D50000FFFF0000FFFF0000EDED
          00009898000045450E006161610047470700FFFF00008F8F00007F7F00007F7F
          00004747000063636300BFBFBF00BFBFBF0089898900A1A11300FEFE2C00FFFF
          AF00FFFFAF00FFFFAF00FFFFAF00FFFFAF00FFFFDB00FFFF6D00E3E300004B4B
          09005B5B5B0047470700FFFF00008F8F00007F7F00007F7F0000474700006363
          6300BFBFBF00BFBFBF00A7A7A7006F6F480079790C007A7A0A007A7A0A007A7A
          0A008A8A0900FFFF3E00FFFF7000E4E400005F5F0000585858007F7F7F004747
          0700FFFF00008F8F00007F7F00007F7F00004747000063636300BFBFBF00BFBF
          BF00BFBFBF00B1B1B100A9A9A900A9A9A900A9A9A900A9A9A9004C4C2C00FFFF
          0D00E6E6070059590800585853007F7F7F007F7F7F0047470700FFFF00008F8F
          00007F7F00007F7F00004747000063636300BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF0050503000E3E300005F5F03005757
          57007F7F7F007F7F7F007F7F7F0047470700FFFF00008F8F00007F7F00007F7F
          00004747000063636300BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00424235006E6E250021211B007F7F7F007F7F7F007F7F
          7F007F7F7F005E5E520099990600D5D50000878700007F7F0000474700006363
          6300BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF007070700088888800444444007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F005656560099990600DBDB0000898900004747000063636300BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00444444007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F005E5E
          52009B9B0300D7D700004C4C000076767600BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00414141005656
          56005656560056565600565656005656560056565600565656002E2E2E008888
          070065650C0088888800BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF009696960089898900898989008989
          890089898900898989008989890089898900898989008989890089898900B1B1
          B100BFBFBF00BFBFBF00}
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 535
    Width = 792
    Height = 19
    AutoHint = True
    Color = clAqua
    Panels = <>
  end
  object dtsFirm: TDataSource
    DataSet = dmProgs.cdsEmpresa
    Left = 704
    Top = 480
  end
  object dtsEstados: TDataSource
    DataSet = dmParametros.cdsEstados
    Left = 736
    Top = 480
  end
  object dtsNatureza: TDataSource
    Left = 672
    Top = 480
  end
  object dtsSerie: TDataSource
    DataSet = dmParametros.cdsSerie
    Left = 640
    Top = 480
  end
  object JvBalloonHint1: TJvBalloonHint
    DefaultIcon = ikNone
    ApplicationHintOptions = [ahShowIconInHint]
    UseBalloonAsApplicationHint = True
    Left = 608
    Top = 480
  end
  object dtsConta: TDataSource
    Left = 544
    Top = 480
  end
  object dtsCentro: TDataSource
    Left = 512
    Top = 480
  end
  object dtsBanco: TDataSource
    Left = 480
    Top = 480
  end
  object dtsClientes: TDataSource
    Left = 448
    Top = 480
  end
  object dtsCondPgto: TDataSource
    Left = 416
    Top = 480
  end
  object tblECF: TApolloTable
    DatabaseName = 'C:\MultiSoft'
    FieldDefs = <>
    IndexDefs = <>
    TableName = 'ECF.DBF'
    OEMTranslate = False
    Left = 378
    Top = 476
    object tblECFECF: TStringField
      FieldName = 'ECF'
      Size = 1
    end
    object tblECFTEF: TStringField
      FieldName = 'TEF'
      Size = 1
    end
    object tblECFPORTA: TStringField
      FieldName = 'PORTA'
      Size = 1
    end
    object tblECFSERIAL: TStringField
      FieldName = 'SERIAL'
    end
    object tblECFCAIXA: TSmallintField
      FieldName = 'CAIXA'
    end
    object tblECFBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object tblECFPORTA_BAL: TSmallintField
      FieldName = 'PORTA_BAL'
    end
    object tblECFBAUD_BAL: TSmallintField
      FieldName = 'BAUD_BAL'
    end
    object tblECFBITS_BAL: TSmallintField
      FieldName = 'BITS_BAL'
    end
    object tblECFPARID_BAL: TSmallintField
      FieldName = 'PARID_BAL'
    end
    object tblECFESCRIT_BAL: TSmallintField
      FieldName = 'ESCRIT_BAL'
    end
  end
end
