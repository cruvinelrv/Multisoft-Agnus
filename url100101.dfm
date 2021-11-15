object frmRL100101: TfrmRL100101
  Left = 243
  Top = 204
  ActiveControl = rdgImpressora
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Etiqueta em impressora t'#233'rmica'
  ClientHeight = 263
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 425
    Height = 218
    TabOrder = 0
    object Label2: TLabel
      Left = 104
      Top = 8
      Width = 91
      Height = 13
      Caption = 'Modelo da etiqueta'
    end
    object Panel2: TPanel
      Left = 8
      Top = 56
      Width = 409
      Height = 57
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 2
      object Label3: TLabel
        Left = 8
        Top = 4
        Width = 37
        Height = 13
        Caption = 'Produto'
      end
      object SpeedButton1: TSpeedButton
        Left = 64
        Top = 19
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
        OnClick = SpeedButton1Click
      end
      object edtCodProduto: TJvValidateEdit
        Left = 7
        Top = 20
        Width = 55
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        TabOrder = 0
        OnExit = edtCodProdutoExit
      end
      object edtDescProduto: TEdit
        Left = 89
        Top = 20
        Width = 312
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object rdgImpressora: TRadioGroup
      Left = 8
      Top = 3
      Width = 89
      Height = 43
      Caption = 'Impressora'
      Items.Strings = (
        '0 - Outra'
        '1 - Zebra')
      TabOrder = 0
      TabStop = True
    end
    object Panel3: TPanel
      Left = 8
      Top = 120
      Width = 409
      Height = 57
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 3
      object Label1: TLabel
        Left = 88
        Top = 4
        Width = 55
        Height = 13
        Caption = 'Quantidade'
      end
      object Label4: TLabel
        Left = 8
        Top = 4
        Width = 29
        Height = 13
        Caption = 'Grade'
      end
      object edtQtd: TJvValidateEdit
        Left = 87
        Top = 20
        Width = 55
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        EditText = '1'
        TabOrder = 1
      end
      object RadioGroup1: TRadioGroup
        Left = 192
        Top = 2
        Width = 209
        Height = 48
        Caption = 'Tipo de c'#243'digo de barra'
        ItemIndex = 0
        Items.Strings = (
          '1 - EAN13'
          '2 - EAN128 (Oito d'#237'gitos)')
        TabOrder = 2
        TabStop = True
      end
      object cbxGrade: TComboBox
        Left = 8
        Top = 20
        Width = 78
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object Button1: TButton
      Left = 8
      Top = 184
      Width = 169
      Height = 25
      Caption = '&Confirma impress'#227'o'
      TabOrder = 4
      OnClick = Button1Click
    end
    object cbxModelo_Etiqueta: TComboBox
      Left = 104
      Top = 24
      Width = 313
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        '1 - 5.0 cm x 3.3 cm (3 colunas) Cod. Barra EAN128'
        '2 - Etiquetas de j'#243'ias'
        '3 - 5.0 cm x 3.3 cm (3 colunas) Cod. Barra EAN13'
        '4 - 3.3 cm x 1 cm (3 colunas) '
        '5 - 5.0 cm x 1.5 cm (2 colunas)')
    end
  end
  object Button2: TButton
    Left = 360
    Top = 232
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = Button2Click
  end
end
