object frmVd1101_6: TfrmVd1101_6
  Left = 347
  Top = 252
  ActiveControl = edtAltura
  BorderStyle = bsNone
  Caption = 'frmVd1101_6'
  ClientHeight = 110
  ClientWidth = 414
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 110
    Align = alClient
    BevelInner = bvRaised
    TabOrder = 0
    DesignSize = (
      414
      110)
    object Panel2: TPanel
      Left = 4
      Top = 4
      Width = 405
      Height = 101
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        405
        101)
      object Panel3: TPanel
        Left = 6
        Top = 5
        Width = 394
        Height = 60
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 8
          Top = 8
          Width = 89
          Height = 49
          Caption = 'Altura (cm)'
          TabOrder = 0
          object edtAltura: TJvValidateEdit
            Left = 8
            Top = 16
            Width = 73
            Height = 21
            Flat = False
            ParentFlat = False
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloat
            DecimalPlaces = 2
            TabOrder = 0
          end
        end
        object GroupBox2: TGroupBox
          Left = 104
          Top = 8
          Width = 89
          Height = 49
          Caption = 'Largura (cm)'
          TabOrder = 1
          object edtLargura: TJvValidateEdit
            Left = 8
            Top = 16
            Width = 73
            Height = 21
            Flat = False
            ParentFlat = False
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloat
            DecimalPlaces = 2
            TabOrder = 0
          end
        end
        object GroupBox3: TGroupBox
          Left = 200
          Top = 8
          Width = 105
          Height = 49
          Caption = 'Comprimento (m)'
          TabOrder = 2
          object edtComprimento: TJvValidateEdit
            Left = 8
            Top = 16
            Width = 89
            Height = 21
            Flat = False
            ParentFlat = False
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloat
            DecimalPlaces = 2
            TabOrder = 0
          end
        end
        object GroupBox4: TGroupBox
          Left = 312
          Top = 8
          Width = 73
          Height = 49
          Caption = 'Quantidade'
          TabOrder = 3
          object edtQuantidade: TJvValidateEdit
            Left = 8
            Top = 16
            Width = 57
            Height = 21
            Flat = False
            ParentFlat = False
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            DisplayFormat = dfFloat
            TabOrder = 0
          end
        end
      end
      object BitBtn1: TBitBtn
        Left = 246
        Top = 70
        Width = 75
        Height = 25
        Caption = '&OK'
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
          6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
          A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
          4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
          00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object BitBtn2: TBitBtn
        Left = 325
        Top = 70
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
  end
end
