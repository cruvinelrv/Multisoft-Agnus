object frmFn0202_01: TfrmFn0202_01
  Left = 196
  Top = 115
  Width = 726
  Height = 524
  BorderIcons = [biSystemMenu]
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 6
    Top = 6
    Width = 705
    Height = 105
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 163
      Top = 5
      Width = 6
      Height = 13
      Caption = '_'
    end
    object Label3: TLabel
      Left = 8
      Top = 33
      Width = 44
      Height = 13
      Caption = 'Vencidos'
    end
    object Label4: TLabel
      Left = 191
      Top = 33
      Width = 44
      Height = 13
      Caption = 'A Vencer'
    end
    object Label5: TLabel
      Left = 392
      Top = 33
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Edit3: TJvValidateEdit
      Left = 72
      Top = 30
      Width = 105
      Height = 21
      Color = clWhite
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 12
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit4: TJvValidateEdit
      Left = 255
      Top = 30
      Width = 105
      Height = 21
      Color = clWhite
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      MaxLength = 12
      ReadOnly = True
      TabOrder = 1
    end
    object Edit5: TJvValidateEdit
      Left = 434
      Top = 30
      Width = 105
      Height = 21
      Color = clWhite
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      MaxLength = 12
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 5
      Width = 85
      Height = 21
      Color = clWhite
      DataField = 'CODIGO_CLIENTE'
      DataSource = DataSource1
      MaxLength = 9
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 5
      Width = 363
      Height = 21
      Color = clWhite
      DataField = 'NOME_CLIENTE'
      DataSource = DataSource1
      MaxLength = 40
      ReadOnly = True
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 7
      Top = 54
      Width = 533
      Height = 44
      Caption = 'Jun'#231#227'o de T'#237'tulos'
      TabOrder = 5
      object lb: TLabel
        Left = 308
        Top = 17
        Width = 83
        Height = 13
        Caption = 'Valor dos T'#237'tulos '
      end
      object Label7: TLabel
        Left = 22
        Top = 17
        Width = 100
        Height = 13
        Caption = 'T'#237'tulos Selecionados'
      end
      object edtValorTitulos: TJvValidateEdit
        Left = 397
        Top = 14
        Width = 105
        Height = 21
        Color = clWhite
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        MaxLength = 12
        ReadOnly = True
        TabOrder = 0
      end
      object edtSelecionados: TJvValidateEdit
        Left = 127
        Top = 14
        Width = 105
        Height = 21
        Color = clWhite
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DecimalPlaces = 2
        MaxLength = 9
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 6
    Top = 113
    Width = 705
    Height = 357
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 7
      Top = 8
      Width = 688
      Height = 341
      DataSource = DataSource1
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DUPLICATA'
          Title.Alignment = taCenter
          Title.Caption = 'Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CLIENTE'
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SELECIONADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'S'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 25
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PREVISAO'
          Title.Alignment = taCenter
          Title.Caption = 'Previs'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DIAS_ATRASO'
          Title.Alignment = taCenter
          Title.Caption = 'Dias Atraso'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALOR_JUROS'
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALORPAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SALDO'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO_PORTADOR'
          Title.Alignment = taCenter
          Title.Caption = 'Portador'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIPO_BAIXA'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Baixa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_EMPRESA'
          Visible = False
        end>
    end
    object RadioGroup1: TRadioGroup
      Left = 593
      Top = 272
      Width = 101
      Height = 76
      Caption = 'Documento'
      Items.Strings = (
        '1 - Abertos'
        '2 - Todos'
        '3 - Fechados')
      TabOrder = 1
      Visible = False
      OnClick = RadioGroup1Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 471
    Width = 718
    Height = 19
    Panels = <
      item
        Text = '[ESC] '#187' Retorno'
        Width = 100
      end
      item
        Text = '[M] '#187' Marca / Desmarca'
        Width = 140
      end
      item
        Text = '[F] '#187' Filtrar'
        Width = 75
      end
      item
        Text = '[ENTER] '#187' Retorna Documento'
        Width = 50
      end>
  end
  object DataSource1: TDataSource
    DataSet = dmFn0202.cdsGrid
    Left = 344
    Top = 249
  end
end
