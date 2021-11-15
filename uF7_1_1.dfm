object frmF7_1_1: TfrmF7_1_1
  Left = 246
  Top = 231
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Propriedades'
  ClientHeight = 427
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 379
    Align = alTop
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 8
      Top = 8
      Width = 641
      Height = 365
      ActivePage = TabSheet1
      TabOrder = 0
      OnEnter = PageControl1Enter
      object TabSheet1: TTabSheet
        Caption = '&Propriedade'
        object Label2: TLabel
          Left = 132
          Top = 11
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = dbeDescricao
        end
        object Label1: TLabel
          Left = 8
          Top = 11
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 41
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 432
          Top = 40
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 8
          Top = 68
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label6: TLabel
          Left = 392
          Top = 68
          Width = 33
          Height = 13
          Caption = 'Estado'
          FocusControl = DBEdit4
        end
        object Label7: TLabel
          Left = 480
          Top = 67
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit5
        end
        object Label8: TLabel
          Left = 8
          Top = 98
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit6
        end
        object Label9: TLabel
          Left = 8
          Top = 160
          Width = 26
          Height = 13
          Caption = 'Local'
          FocusControl = DBMemo1
        end
        object Label10: TLabel
          Left = 232
          Top = 97
          Width = 38
          Height = 13
          Caption = 'Gerente'
          FocusControl = DBEdit7
        end
        object Label11: TLabel
          Left = 8
          Top = 128
          Width = 44
          Height = 13
          Caption = 'Insc. Est.'
          FocusControl = DBEdit8
        end
        object Label12: TLabel
          Left = 228
          Top = 132
          Width = 41
          Height = 13
          Caption = 'Validade'
        end
        object Label25: TLabel
          Left = 8
          Top = 220
          Width = 22
          Height = 13
          Caption = 'Area'
        end
        object Label26: TLabel
          Left = 310
          Top = 215
          Width = 33
          Height = 13
          Caption = 'INCRA'
        end
        object Label27: TLabel
          Left = 5
          Top = 250
          Width = 24
          Height = 13
          Caption = 'I.T.R'
        end
        object Label28: TLabel
          Left = 248
          Top = 248
          Width = 98
          Height = 13
          Caption = 'Area para agricultura'
        end
        object dbeDescricao: TDBEdit
          Left = 184
          Top = 7
          Width = 440
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO_PRO'
          DataSource = dsPropriedade
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 64
          Top = 8
          Width = 49
          Height = 21
          TabStop = False
          Color = clSilver
          DataField = 'CODIGO_PRO'
          DataSource = dsPropriedade
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit2: TDBEdit
          Left = 64
          Top = 38
          Width = 361
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ENDERECO_PRO'
          DataSource = dsPropriedade
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 464
          Top = 35
          Width = 161
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO_PRO'
          DataSource = dsPropriedade
          TabOrder = 2
        end
        object CobCidade: TDBLookupComboBox
          Left = 64
          Top = 66
          Width = 317
          Height = 21
          Color = clCream
          DataField = 'CIDADE_PRO'
          DataSource = dsPropriedade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          KeyField = 'CODIGO_CIDADE'
          ListField = 'DESCRICAO_CIDADE;UF_CIDADE'
          ListSource = dsCidade
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 430
          Top = 65
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESTADO_PRO'
          DataSource = dsPropriedade
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 504
          Top = 65
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP_PRO'
          DataSource = dsPropriedade
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 64
          Top = 96
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FONE_PRO'
          DataSource = dsPropriedade
          TabOrder = 6
        end
        object DBMemo1: TDBMemo
          Left = 64
          Top = 159
          Width = 449
          Height = 46
          DataField = 'LOCAL_PRO'
          DataSource = dsPropriedade
          ScrollBars = ssVertical
          TabOrder = 11
          OnEnter = DBMemo1Enter
          OnExit = DBMemo1Exit
        end
        object DBEdit7: TDBEdit
          Left = 272
          Top = 95
          Width = 355
          Height = 21
          CharCase = ecUpperCase
          DataField = 'GERENTE_PRO'
          DataSource = dsPropriedade
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 64
          Top = 128
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'INSCEST_PRO'
          DataSource = dsPropriedade
          TabOrder = 8
        end
        object chkArrentada: TDBCheckBox
          Left = 428
          Top = 131
          Width = 81
          Height = 17
          Caption = 'Arrendada'
          DataField = 'ARREDADA_PRO'
          DataSource = dsPropriedade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          ValueChecked = 'T'
          ValueUnchecked = 'F'
          OnClick = chkArrentadaClick
        end
        object rdgTipo: TDBRadioGroup
          Left = 520
          Top = 128
          Width = 107
          Height = 112
          Caption = 'Tipo de Pessoa'
          DataField = 'ARRENDATIPO_PRO'
          DataSource = dsPropriedade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Juridica'
            'Fis'#237'ca')
          ParentFont = False
          TabOrder = 12
          Values.Strings = (
            'J'
            'F')
          OnClick = rdgTipoClick
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 272
          Top = 129
          Width = 121
          Height = 21
          DataField = 'DINS_PRO'
          DataSource = dsPropriedade
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 64
          Top = 216
          Width = 217
          Height = 21
          TabOrder = 14
        end
        object DBEdit10: TDBEdit
          Left = 349
          Top = 211
          Width = 165
          Height = 21
          TabOrder = 15
        end
        object DBEdit17: TDBEdit
          Left = 66
          Top = 246
          Width = 167
          Height = 21
          TabOrder = 16
        end
        object DBEdit20: TDBEdit
          Left = 352
          Top = 248
          Width = 273
          Height = 21
          TabOrder = 17
        end
        object GroupBox1: TGroupBox
          Left = 5
          Top = 278
          Width = 619
          Height = 44
          Caption = 'Animais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          object Label29: TLabel
            Left = 40
            Top = 20
            Width = 18
            Height = 13
            Caption = 'Cria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 181
            Top = 18
            Width = 40
            Height = 13
            Caption = 'Engorda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 347
            Top = 20
            Width = 23
            Height = 13
            Caption = 'Leite'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 496
            Top = 18
            Width = 37
            Height = 16
            Caption = 'Total'
          end
          object Label33: TLabel
            Left = 538
            Top = 18
            Width = 55
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0'
            Color = 15662589
            ParentColor = False
          end
          object JvDBSpinEdit1: TJvDBSpinEdit
            Left = 61
            Top = 18
            Width = 71
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object JvDBSpinEdit2: TJvDBSpinEdit
            Left = 224
            Top = 16
            Width = 97
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object JvDBSpinEdit3: TJvDBSpinEdit
            Left = 374
            Top = 17
            Width = 89
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object tabArrendatario: TTabSheet
        Caption = '&Arrendat'#225'rio'
        ImageIndex = 1
        object Label13: TLabel
          Left = 8
          Top = 16
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = edtNome
        end
        object Label14: TLabel
          Left = 8
          Top = 52
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit11
        end
        object Label15: TLabel
          Left = 8
          Top = 86
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit12
        end
        object Label16: TLabel
          Left = 285
          Top = 84
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit13
        end
        object Label17: TLabel
          Left = 561
          Top = 83
          Width = 33
          Height = 13
          Caption = 'Estado'
          FocusControl = DBEdit14
        end
        object Label18: TLabel
          Left = 8
          Top = 121
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit15
        end
        object Label19: TLabel
          Left = 176
          Top = 121
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit16
        end
        object Label20: TLabel
          Left = 387
          Top = 119
          Width = 52
          Height = 13
          Caption = 'CNPJ/CPF'
          FocusControl = edtCNPJ
        end
        object Label21: TLabel
          Left = 8
          Top = 152
          Width = 41
          Height = 13
          Caption = 'Dura'#231#227'o'
          FocusControl = DBEdit18
        end
        object Label22: TLabel
          Left = 249
          Top = 151
          Width = 25
          Height = 13
          Caption = 'Safra'
        end
        object Label23: TLabel
          Left = 434
          Top = 149
          Width = 67
          Height = 13
          Caption = 'Area Plantada'
        end
        object Label24: TLabel
          Left = 5
          Top = 184
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object edtNome: TDBEdit
          Left = 62
          Top = 16
          Width = 566
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ARRENDNOME_PRO'
          DataSource = dsPropriedade
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 62
          Top = 50
          Width = 565
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ARRENDAEND_PRO'
          DataSource = dsPropriedade
          TabOrder = 1
        end
        object DBEdit12: TDBEdit
          Left = 62
          Top = 82
          Width = 217
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ARRENDABAIRRO_PRO'
          DataSource = dsPropriedade
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 322
          Top = 81
          Width = 231
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ARRENDACIDADE_PRO'
          DataSource = dsPropriedade
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 597
          Top = 80
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ARRENDAESTADO_PRO'
          DataSource = dsPropriedade
          TabOrder = 4
        end
        object DBEdit15: TDBEdit
          Left = 62
          Top = 117
          Width = 107
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ARRENDACEP_PRO'
          DataSource = dsPropriedade
          TabOrder = 5
        end
        object DBEdit16: TDBEdit
          Left = 222
          Top = 117
          Width = 155
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ARREMDAFON_PRO'
          DataSource = dsPropriedade
          TabOrder = 6
        end
        object edtCNPJ: TDBEdit
          Left = 442
          Top = 116
          Width = 185
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ARRENDACNPJ_PRO'
          DataSource = dsPropriedade
          TabOrder = 7
        end
        object DBEdit18: TDBEdit
          Left = 63
          Top = 150
          Width = 169
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DURACAO_PRO'
          DataSource = dsPropriedade
          TabOrder = 8
        end
        object JvDBCalcEdit1: TJvDBCalcEdit
          Left = 504
          Top = 146
          Width = 124
          Height = 21
          DecimalPlaces = 4
          DisplayFormat = '0.0000'
          FormatOnEditing = True
          TabOrder = 9
          DecimalPlacesAlwaysShown = True
          DataField = 'AREA_PRO'
          DataSource = dsPropriedade
        end
        object DBMemo2: TDBMemo
          Left = 64
          Top = 184
          Width = 554
          Height = 97
          DataField = 'OBSERVACAO_PRO'
          DataSource = dsPropriedade
          ScrollBars = ssVertical
          TabOrder = 10
          OnEnter = DBMemo2Enter
          OnExit = DBMemo2Exit
        end
        object DBEdit19: TDBEdit
          Left = 280
          Top = 148
          Width = 121
          Height = 21
          DataField = 'SAFRA_PRO'
          DataSource = dsPropriedade
          TabOrder = 11
        end
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 497
    Top = 381
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 575
    Top = 381
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 408
    Width = 655
    Height = 19
    Panels = <>
  end
  object dsPropriedade: TDataSource
    DataSet = dmCd06.cdsPropriedade
    Left = 182
    Top = 280
  end
  object dsCidade: TDataSource
    DataSet = dmCd06.cdsCidade
    OnDataChange = dsCidadeDataChange
    Left = 210
    Top = 280
  end
end
