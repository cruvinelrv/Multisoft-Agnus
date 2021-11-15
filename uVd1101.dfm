object frmVd1101: TfrmVd1101
  Left = 191
  Top = 114
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 510
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 65
    Align = alTop
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 64
      Top = 8
      Width = 249
      Height = 49
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        249
        49)
      object SpeedButton2: TSpeedButton
        Left = 40
        Top = 16
        Width = 24
        Height = 22
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
          73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
          8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
          9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
          A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
          AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
          BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
          D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
          E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
          F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
          424242424242424242422B39180B42424242424242424242424243443C180B42
          4242424242424242424242444438180B42424242424242424242424244433918
          0A424242424242424242424242444335004201101A114242424242424242453D
          05072F343434291942424242424242221A2D34343437403E0442424242424206
          231C303437404146284242424242421B210F30373A414140310D42424242421F
          20032434373A3A37321342424242421D25030F2D37373737311042424242420D
          2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
          4227312D21252314424242424242424242420E141B1B42424242}
        OnClick = SpeedButton2Click
      end
      object pnNome_vend: TPanel
        Left = 64
        Top = 17
        Width = 177
        Height = 19
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lbNome_Vend: TLabel
          Left = 0
          Top = 0
          Width = 177
          Height = 19
          Align = alClient
          Alignment = taCenter
          Color = 14546431
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object dbEdVendedor: TEdit
        Left = 8
        Top = 16
        Width = 33
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = dbEdVendedorEnter
        OnExit = dbEdVendedorExit
        OnKeyDown = dbEdVendedorKeyDown
        OnKeyPress = dbEdVendedorKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 320
      Top = 8
      Width = 362
      Height = 49
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object SpeedButton1: TSpeedButton
        Left = 40
        Top = 16
        Width = 24
        Height = 22
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
          73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
          8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
          9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
          A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
          AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
          BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
          D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
          E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
          F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
          424242424242424242422B39180B42424242424242424242424243443C180B42
          4242424242424242424242444438180B42424242424242424242424244433918
          0A424242424242424242424242444335004201101A114242424242424242453D
          05072F343434291942424242424242221A2D34343437403E0442424242424206
          231C303437404146284242424242421B210F30373A414140310D42424242421F
          20032434373A3A37321342424242421D25030F2D37373737311042424242420D
          2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
          4227312D21252314424242424242424242420E141B1B42424242}
        OnClick = SpeedButton1Click
      end
      object pnNome_Cli: TPanel
        Left = 64
        Top = 17
        Width = 289
        Height = 19
        BevelOuter = bvNone
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lbNome_Cli: TLabel
          Left = 0
          Top = 0
          Width = 289
          Height = 19
          Align = alClient
          Alignment = taCenter
          Color = 14546431
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object DBEdit1: TEdit
        Left = 8
        Top = 16
        Width = 33
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyDown = DBEdit1KeyDown
        OnKeyPress = DBEdit1KeyPress
      end
    end
    object GroupBox10: TGroupBox
      Left = 3
      Top = 8
      Width = 57
      Height = 49
      Caption = 'S'#233'rie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object edSerie: TComboBox
        Left = 8
        Top = 16
        Width = 41
        Height = 21
        Style = csDropDownList
        CharCase = ecUpperCase
        ItemHeight = 13
        TabOrder = 0
        OnExit = edSerieExit
        OnKeyDown = edSerieKeyDown
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 108
    Width = 685
    Height = 56
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 384
      Top = 8
      Width = 21
      Height = 13
      Caption = 'Qtd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 432
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Grade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 616
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Vlr Unit.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 480
      Top = 8
      Width = 25
      Height = 13
      Caption = 'CST'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 520
      Top = 8
      Width = 31
      Height = 13
      Caption = 'ICMS'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 560
      Top = 8
      Width = 33
      Height = 13
      Caption = 'CFOP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edPesquisa: TEdit
      Left = 8
      Top = 24
      Width = 369
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = edPesquisaChange
      OnEnter = edPesquisaEnter
      OnExit = edPesquisaExit
      OnKeyDown = edPesquisaKeyDown
    end
    object edGrade: TEdit
      Left = 432
      Top = 24
      Width = 41
      Height = 21
      Enabled = False
      TabOrder = 2
      OnEnter = edGradeEnter
      OnKeyDown = edGradeKeyDown
    end
    object RadioButton1: TRadioButton
      Left = 8
      Top = 6
      Width = 73
      Height = 16
      Caption = 'C'#243'digo -'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 78
      Top = 6
      Width = 172
      Height = 16
      Caption = 'Nome do Produto/Servi'#231'o'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      TabStop = True
      OnClick = RadioButton2Click
    end
    object edQtd: TJvValidateEdit
      Left = 384
      Top = 24
      Width = 41
      Height = 21
      Flat = False
      ParentFlat = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      EditText = '1'
      TabOrder = 1
      OnEnter = edQtdEnter
      OnKeyDown = edQtdKeyDown
    end
    object edValorUni: TJvValidateEdit
      Left = 616
      Top = 24
      Width = 65
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      TabOrder = 6
      OnEnter = edValorUniEnter
      OnExit = edValorUniExit
      OnKeyDown = edValorUniKeyDown
    end
    object edCST: TEdit
      Left = 480
      Top = 24
      Width = 33
      Height = 21
      CharCase = ecUpperCase
      Color = clBtnFace
      Enabled = False
      TabOrder = 3
      OnEnter = edCSTEnter
      OnKeyDown = edCSTKeyDown
    end
    object edICM: TJvValidateEdit
      Left = 520
      Top = 24
      Width = 33
      Height = 21
      Color = clBtnFace
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnEnter = edICMEnter
      OnKeyDown = edICMKeyDown
    end
    object edtCFOPInd: TMaskEdit
      Left = 560
      Top = 24
      Width = 49
      Height = 21
      EditMask = '!9999;1; '
      MaxLength = 4
      TabOrder = 5
      Text = '    '
      OnEnter = edtCFOPIndEnter
      OnKeyDown = edtCFOPIndKeyDown
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 164
    Width = 685
    Height = 175
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 683
      Height = 173
      Align = alClient
      DataSource = dsVendasItem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'QTDE_VENDAS'
          Title.Alignment = taCenter
          Title.Caption = 'It'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 19
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_IVENDAS'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 384
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Und.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE_IVENDAS'
          Title.Alignment = taCenter
          Title.Caption = 'Quant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRADE_IVENDAS'
          Title.Alignment = taCenter
          Title.Caption = 'Grade'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORBRUTO_IVENDAS'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Unit'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORTOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO_IVENDA'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABRICA_IVENDAS'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. F'#225'brica'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE_IVENDAS'
          Title.Alignment = taCenter
          Title.Caption = 'N'#176' de S'#233'rie'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 513
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FABRICANTE_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Fabricante'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 253
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRIBUTACAO_IVENDAS'
          Title.Alignment = taCenter
          Title.Caption = 'ST'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICM_IVENDAS'
          Title.Alignment = taCenter
          Title.Caption = 'ICMS'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 339
    Width = 685
    Height = 152
    Align = alBottom
    TabOrder = 3
    object btnFechar: TBitBtn
      Left = 607
      Top = 117
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btnFecharClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000296394002963940000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
        63002963940029639400296394002963940000000000004A6300004A6300004A
        6300004A6300004A6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00004A
        630029639C002963940029639400296394000000000000CEFF0000CEFF0000CE
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
        6300216B9C00296B9C00296B9C00296B9C000000000000CEFF0000CEFF0000CE
        FF0000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63002173A5002173A5002173A500216B9C000000000008CEFF0000CEFF0000CE
        FF0000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        6300187BAD00187BAD00FFFFFF001873A5000000000031D6FF0021D6FF0018CE
        FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63001084B500107BB500107BAD00107BAD00000000005ADEFF004ADEFF00FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
        6300088CBD000884B5000884B5001084B5000000000084E7F700FF000000FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
        6300008CBD00008CBD00088CBD00088CBD0000000000B5EFF700A5E7F700FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
        63000094C6000094C6000094C6000094C60000000000DEF7F700CEEFF700BDEF
        F700FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63000094CE000094CE000094C6000094C60000000000F7F7F700EFF7F700E7F7
        F70000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63000094CE000094CE000094CE000094CE0000000000F7F7F700F7F7F700F7F7
        F70000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00004A6300004A63000094CE000094CE0000000000004A6300004A6300004A
        6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00004A6300004A6300004A6300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnGravar: TBitBtn
      Left = 453
      Top = 117
      Width = 75
      Height = 25
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 0
      OnClick = btnGravarClick
      OnKeyDown = btnGravarKeyDown
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100008C00000000000000FF00
        FF001DC93B00C4DBC30000A4030070D4710039A739005ECF6F00067C0E0099C9
        9B0018AE3F0048C55000F7FAF7003AE869001DA73200258A270032DD5C007CDE
        8C005DB9650015A61F00A3E9B200E9EDE7003DC84C0058E87800086B080080DD
        9A00078D0D00A7DEAB002DD550002BAC3A001BB132006CD18200D0F1D3004BC1
        4C0014A717002C942C004AED76005BC6620082FFAC002BBE3A00118321009BE3
        9E0075B579001A891A007FD982002BA52B002BB42E00BAFFCD003AE1600073FA
        9A0042BE43008AE28B001BBF360027CE49000973090029B6500031A43100179B
        2F006BD06C0032C55F00B6F2C40037CD4C000A881C009BF8AF0046E9720053C5
        55007CDC7D0021B5310022B84A00FFFFFF005AD27C000B7B160007740F00CFF6
        DC003196320083DE930042F5790068E985002185220013CD380050BC5300B1E5
        B500E6FDE7000B9D1000A1ECAE0028B12B0083F6A00053C55D0041DB610021A5
        310020AD22007FDE820073E37F0033A83F0012B018001590280061D6850043C4
        530014BE330065D56C002A9A33006BD66B00A2C6A2005BBB680047B8560033BC
        3F000E8B250088D4910037D2520009932500D3FDDE00006600001EAE4100107B
        1900E6F9E80016AB1A000F720F0002A5090043E36A0048D054005ACD5F003EE3
        630008841400F8FDF80079E6890016AD1F0042C54A0064E37C002FD650004EF1
        7C002BAF2B0044C0480020BE330065D77C0087E3960056CE5E001EAD310087E1
        8700219429001CC1330000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000001010101016F
        18186F6F6F010101010101010136710F4A4A4E74186F6F010101010171235005
        42423A5023746F6F010101716478425B424233893A06746F6F01018A0B638741
        292C833A2C6338186F01281D7716271B4552255A413A212B6F6F5F613D8B6B45
        157B722E7321412D186F39076C34030C6809455175553282366F0E1158356785
        4F5D154557752E5A366F394B1730101079622A45207D2222366F391F3F0D2440
        76301E6645250453366F01373C314C814079808812695E1A36010170466E264C
        0D101C0284161308480101014460492F564D7F7C5C437A470101010101443B19
        145486070E3E3E01010101010101010A0A0A0E6D6A0101010101}
    end
    object btnImprimir: TBitBtn
      Left = 530
      Top = 117
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      Enabled = False
      TabOrder = 1
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFE2D6CECAD4D1D2E9E6
        E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEFEFCBCCCBB8B4B3D3
        D5D6C4B9B7BCBBAED3D3B4998A84634F51ADA6A5FAFBFBFFFFFFFFFFFFFFFFFF
        FFFFFFB0ACA6AFA9A4BBBCBC8178709B8482E4DBC3FBE0C759AD5495DC94EDDF
        CC796566B7B5B6FFFFFFF9F9FABFBBB9959391E3E4E4FEFFFFE1E1E0A7A7A787
        69657B6B6B3B7E975493A754965641AE4EFFFAF3CAC4B6F5F5F2D6D7D6D4D2D1
        FAFBFBF2F3F3E6E6E6E1E0E0C6C1C0A18685574B49486C7AA9A5A2D4C8B3D7C7
        B9DAD9D7FBFAFAFFFFFFDCDDDBE8EAEBEDEDECE5E4E3DFDEDEE3E1E1D3D5D4D3
        D0CFB7B1B18A756D7858597D706DA59798FFFFFFFFFFFFFFFFFFDCDCDBDAD9D8
        E4E3E1D4D3D3D9D8D9EBEBEBBDB7B6C2BDB9DEDFDEDBD4D0AA9D98847E7CA29C
        9CFFFFFFFFFFFFFFFFFFD8D8D5D2CFCFD6D5D5D4D3D3EEF0EFE9F1F03F39391D
        19186D6A69C8C5C5E6E5E2C3C1BE9D9C9DFFFFFFFFFFFFFFFFFFE0DFDDB7B5B4
        E7E6E6F5F8F8E7E4E2AE91928A6464665957352F2D2C2829928B8BCBC8C9A4A4
        A4FFFFFFFFFFFFFFFFFFEBEAEBA39F9DB5B6B59A8D89B78184D17C84C98186A8
        76798A7171544847322D2CABA3A0CCCBCAFFFFFFFFFFFFFFFFFFF9F9F8C7C2BE
        F2E5DAC4B6AD947A799F6B6EBE7A80DA878FC97D82986A6CBCB7B5B5B5B2F8F8
        F8FFFFFFFFFFFFFFFFFFFFFFFFDCD9D6E6DCCFFFEFDEF4DECFBCADA68A6E6CA4
        6D72BC7A7FD1BFBFC0C3C1DBDBD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1DEDE
        EEDED5FDFFFDFFF3E6FFEAD7E0D3C99B9694ACA9A7B5B9B8EDEBEAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAF7DFD9CEF2DCCFF3F2F0FCFCF8FBEDE2DF
        DCDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBE9E8E5E8D9C9F1E4DCEDE8E1D7D3D4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9EFE5DFD3C8C0FC
        FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 8
      Width = 265
      Height = 50
      Caption = #218'ltimo produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label1: TLabel
        Left = 10
        Top = 15
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 31
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox4: TGroupBox
      Left = 280
      Top = 8
      Width = 129
      Height = 50
      Caption = 'Valor bruto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label6: TLabel
        Left = 93
        Top = 24
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox5: TGroupBox
      Left = 552
      Top = 8
      Width = 129
      Height = 50
      Caption = 'Valor l'#237'quido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label7: TLabel
        Left = 93
        Top = 24
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edValor: TEdit
        Left = 4
        Top = 22
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '0,00'
        Visible = False
        OnExit = edValorExit
        OnKeyDown = edValorKeyDown
      end
    end
    object GroupBox6: TGroupBox
      Left = 416
      Top = 8
      Width = 129
      Height = 50
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object Label8: TLabel
        Left = 9
        Top = 16
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = '(%):'
      end
      object Label9: TLabel
        Left = 11
        Top = 32
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr:'
      end
      object Label10: TLabel
        Left = 45
        Top = 16
        Width = 26
        Height = 13
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 45
        Top = 32
        Width = 26
        Height = 13
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edDesc: TEdit
        Left = 45
        Top = 12
        Width = 76
        Height = 21
        TabOrder = 0
        Text = '0,00'
        Visible = False
        OnEnter = edDescEnter
        OnExit = edDescExit
        OnKeyDown = edDescKeyDown
      end
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 64
      Width = 401
      Height = 49
      Caption = 'C.F.O.P.'
      DockSite = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      object pnCFOP: TPanel
        Left = 48
        Top = 16
        Width = 345
        Height = 19
        BevelOuter = bvNone
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label16: TLabel
          Left = 0
          Top = 0
          Width = 345
          Height = 19
          Align = alClient
          Alignment = taCenter
          Color = 14546431
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object edCFOP: TMaskEdit
        Left = 8
        Top = 16
        Width = 38
        Height = 21
        BorderStyle = bsNone
        Enabled = False
        EditMask = '!9999;1; '
        MaxLength = 4
        TabOrder = 0
        Text = '    '
        OnExit = edCFOPExit
        OnKeyDown = edCFOPKeyDown
      end
    end
    object GroupBox8: TGroupBox
      Left = 416
      Top = 64
      Width = 265
      Height = 49
      Caption = 'Tipo de pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      object SpeedButton3: TSpeedButton
        Left = 48
        Top = 16
        Width = 23
        Height = 22
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
          73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
          8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
          9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
          A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
          AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
          BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
          D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
          E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
          F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
          424242424242424242422B39180B42424242424242424242424243443C180B42
          4242424242424242424242444438180B42424242424242424242424244433918
          0A424242424242424242424242444335004201101A114242424242424242453D
          05072F343434291942424242424242221A2D34343437403E0442424242424206
          231C303437404146284242424242421B210F30373A414140310D42424242421F
          20032434373A3A37321342424242421D25030F2D37373737311042424242420D
          2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
          4227312D21252314424242424242424242420E141B1B42424242}
        OnClick = SpeedButton3Click
      end
      object pnPgt: TPanel
        Left = 72
        Top = 16
        Width = 188
        Height = 19
        BevelOuter = bvNone
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label17: TLabel
          Left = 0
          Top = 0
          Width = 188
          Height = 19
          Align = alClient
          Color = 14546431
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object edTipoPgt: TEdit
        Left = 8
        Top = 16
        Width = 41
        Height = 21
        Enabled = False
        TabOrder = 0
        OnEnter = edTipoPgtEnter
        OnExit = edTipoPgtExit
        OnKeyDown = edTipoPgtKeyDown
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 491
    Width = 685
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object pnlAlterar: TPanel
    Left = 460
    Top = 185
    Width = 209
    Height = 99
    TabOrder = 5
    Visible = False
    object BitBtn1: TBitBtn
      Left = 42
      Top = 68
      Width = 81
      Height = 25
      Caption = '&OK'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100008C00000000000000FF00
        FF001DC93B00C4DBC30000A4030070D4710039A739005ECF6F00067C0E0099C9
        9B0018AE3F0048C55000F7FAF7003AE869001DA73200258A270032DD5C007CDE
        8C005DB9650015A61F00A3E9B200E9EDE7003DC84C0058E87800086B080080DD
        9A00078D0D00A7DEAB002DD550002BAC3A001BB132006CD18200D0F1D3004BC1
        4C0014A717002C942C004AED76005BC6620082FFAC002BBE3A00118321009BE3
        9E0075B579001A891A007FD982002BA52B002BB42E00BAFFCD003AE1600073FA
        9A0042BE43008AE28B001BBF360027CE49000973090029B6500031A43100179B
        2F006BD06C0032C55F00B6F2C40037CD4C000A881C009BF8AF0046E9720053C5
        55007CDC7D0021B5310022B84A00FFFFFF005AD27C000B7B160007740F00CFF6
        DC003196320083DE930042F5790068E985002185220013CD380050BC5300B1E5
        B500E6FDE7000B9D1000A1ECAE0028B12B0083F6A00053C55D0041DB610021A5
        310020AD22007FDE820073E37F0033A83F0012B018001590280061D6850043C4
        530014BE330065D56C002A9A33006BD66B00A2C6A2005BBB680047B8560033BC
        3F000E8B250088D4910037D2520009932500D3FDDE00006600001EAE4100107B
        1900E6F9E80016AB1A000F720F0002A5090043E36A0048D054005ACD5F003EE3
        630008841400F8FDF80079E6890016AD1F0042C54A0064E37C002FD650004EF1
        7C002BAF2B0044C0480020BE330065D77C0087E3960056CE5E001EAD310087E1
        8700219429001CC1330000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000001010101016F
        18186F6F6F010101010101010136710F4A4A4E74186F6F010101010171235005
        42423A5023746F6F010101716478425B424233893A06746F6F01018A0B638741
        292C833A2C6338186F01281D7716271B4552255A413A212B6F6F5F613D8B6B45
        157B722E7321412D186F39076C34030C6809455175553282366F0E1158356785
        4F5D154557752E5A366F394B1730101079622A45207D2222366F391F3F0D2440
        76301E6645250453366F01373C314C814079808812695E1A36010170466E264C
        0D101C0284161308480101014460492F564D7F7C5C437A470101010101443B19
        145486070E3E3E01010101010101010A0A0A0E6D6A0101010101}
    end
    object Panel8: TPanel
      Left = 8
      Top = 8
      Width = 193
      Height = 57
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object Label12: TLabel
        Left = 16
        Top = 8
        Width = 55
        Height = 13
        Caption = 'Quantidade'
      end
      object Label13: TLabel
        Left = 96
        Top = 8
        Width = 49
        Height = 13
        Caption = 'Valor Unit.'
      end
      object JvCalcEdit2: TJvCalcEdit
        Left = 96
        Top = 24
        Width = 81
        Height = 21
        DisplayFormat = '0.00'
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
        OnKeyDown = JvCalcEdit2KeyDown
      end
      object edQtd2: TJvValidateEdit
        Left = 16
        Top = 24
        Width = 73
        Height = 21
        Flat = False
        ParentFlat = False
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        EditText = '1,00'
        TabOrder = 1
        OnKeyDown = edQtd2KeyDown
      end
    end
    object BitBtn2: TBitBtn
      Left = 126
      Top = 68
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A0000
        9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A174AFD103BF400009AFF00FFFF
        00FFFF00FFFF00FF00009A002CF80030FC00009AFF00FFFF00FFFF00FFFF00FF
        00009A1A47F81A4CFF123BF100009AFF00FFFF00FF00009A012DF60132FF002A
        F300009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A1C47F61B4DFF143EF400
        009A00009A002DF80134FF032BF200009AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF00009A1D48F61D50FF103DFB0431FE0132FF002CF600009AFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A1A48F913
        42FF0C3CFF0733F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF00009A214EFC1D4BFF1847FF1743F600009AFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A2E5BF92C5FFF22
        4DF8204BF82355FF1B46F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00009A3664FA386BFF2D59F400009A00009A224CF42558FF1D49F60000
        9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A4071FA4274FF325DF100009AFF
        00FFFF00FF00009A224DF1275AFF204CF800009AFF00FFFF00FFFF00FFFF00FF
        00009A497AFC3B66F300009AFF00FFFF00FFFF00FFFF00FF00009A2550F42655
        FA00009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object pnlPArceiros: TPanel
    Left = 0
    Top = 65
    Width = 685
    Height = 43
    Align = alTop
    TabOrder = 6
    object SpeedButton4: TSpeedButton
      Left = 216
      Top = 17
      Width = 24
      Height = 22
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
        73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
        8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
        9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
        A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
        AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
        BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
        D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
        E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
        F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
        424242424242424242422B39180B42424242424242424242424243443C180B42
        4242424242424242424242444438180B42424242424242424242424244433918
        0A424242424242424242424242444335004201101A114242424242424242453D
        05072F343434291942424242424242221A2D34343437403E0442424242424206
        231C303437404146284242424242421B210F30373A414140310D42424242421F
        20032434373A3A37321342424242421D25030F2D37373737311042424242420D
        2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
        4227312D21252314424242424242424242420E141B1B42424242}
      OnClick = SpeedButton4Click
    end
    object Label20: TLabel
      Left = 168
      Top = 2
      Width = 54
      Height = 13
      Caption = 'Parceiros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel7: TPanel
      Left = 240
      Top = 18
      Width = 297
      Height = 19
      BevelOuter = bvNone
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lblNome_parceiro: TLabel
        Left = 0
        Top = 0
        Width = 297
        Height = 19
        Align = alClient
        Alignment = taCenter
        Color = 14546431
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object GroupBox9: TGroupBox
      Left = 8
      Top = 1
      Width = 153
      Height = 38
      Caption = 'Tipo de pre'#231'o'
      TabOrder = 1
      object RadioButton3: TRadioButton
        Left = 8
        Top = 16
        Width = 65
        Height = 17
        Hint = 'Pre'#231'o de atacado'
        Caption = '&Atacado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = RadioButton3Click
      end
      object RadioButton4: TRadioButton
        Left = 88
        Top = 16
        Width = 61
        Height = 17
        Hint = 'pre'#231'o de Varejo'
        Caption = '&Varejo'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = True
        OnClick = RadioButton4Click
      end
    end
    object edtCodParceiro: TJvValidateEdit
      Left = 168
      Top = 17
      Width = 47
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      TabOrder = 2
      ZeroEmpty = True
      OnExit = edtCodParceiroExit
      OnKeyPress = edtCodParceiroKeyPress
    end
  end
  object dsVendas: TDataSource
    AutoEdit = False
    Left = 48
    Top = 297
  end
  object dsVendasItem: TDataSource
    AutoEdit = False
    DataSet = cdsVendasItem
    Left = 80
    Top = 297
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 297
    object Alterar1: TMenuItem
      Caption = 'Alterar item'
      OnClick = Alterar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excluiritemdalista1: TMenuItem
      Caption = 'Excluir item da lista'
      OnClick = Excluiritemdalista1Click
    end
  end
  object cdsVendasItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'VENDA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    Left = 144
    Top = 297
    object cdsVendasItemCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
    end
    object cdsVendasItemPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
    end
    object cdsVendasItemDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 40
    end
    object cdsVendasItemVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      DisplayFormat = '.00'
      Precision = 15
      Size = 4
    end
    object cdsVendasItemQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Precision = 15
      Size = 3
    end
    object cdsVendasItemGRADE_IVENDAS: TStringField
      FieldName = 'GRADE_IVENDAS'
      Size = 5
    end
    object cdsVendasItemPROMOCAO_IVENDAS: TStringField
      FieldName = 'PROMOCAO_IVENDAS'
      Size = 1
    end
    object cdsVendasItemFABRICA_IVENDAS: TStringField
      FieldName = 'FABRICA_IVENDAS'
      Size = 15
    end
    object cdsVendasItemSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      Size = 60
    end
    object cdsVendasItemDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemICM_IVENDAS: TFMTBCDField
      FieldName = 'ICM_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemIPI_IVENDAS: TFMTBCDField
      FieldName = 'IPI_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemREDUTOR_IVENDAS: TFMTBCDField
      FieldName = 'REDUTOR_IVENDAS'
      Precision = 15
      Size = 4
    end
    object cdsVendasItemTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object cdsVendasItemFISCAL_IVENDAS: TStringField
      FieldName = 'FISCAL_IVENDAS'
      Size = 5
    end
    object cdsVendasItemGARANTIA_IVENDAS: TStringField
      FieldName = 'GARANTIA_IVENDAS'
      Size = 10
    end
    object cdsVendasItemTECNICO_IVENDAS: TIntegerField
      FieldName = 'TECNICO_IVENDAS'
    end
    object cdsVendasItemALTURA_IVENDAS: TFMTBCDField
      FieldName = 'ALTURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemLARGURA_IVENDAS: TFMTBCDField
      FieldName = 'LARGURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemCOMPRIMENTO_VENDAS: TFMTBCDField
      FieldName = 'COMPRIMENTO_VENDAS'
      Precision = 15
      Size = 2
    end
    object cdsVendasItemQTDE_VENDAS: TIntegerField
      FieldName = 'QTDE_VENDAS'
    end
    object cdsVendasItemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object cdsVendasItemCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsVendasItemVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      ProviderFlags = [pfInWhere]
      DisplayFormat = '.00'
      Precision = 15
      Size = 7
    end
    object cdsVendasItemFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
      ProviderFlags = []
    end
    object cdsVendasItemFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      ProviderFlags = []
      Size = 15
    end
    object cdsVendasItemUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object cdsVendasItemID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object cdsVendasItemCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      ProviderFlags = []
      Size = 3
    end
    object cdsVendasItemCLASSE_IVENDA: TStringField
      FieldName = 'CLASSE_IVENDA'
      Size = 1
    end
    object cdsVendasItemCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
  end
end
