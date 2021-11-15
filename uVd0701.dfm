object frmVd0701: TfrmVd0701
  Left = 318
  Top = 184
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cancela Cupom Fiscal'
  ClientHeight = 273
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 545
    Height = 257
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel3: TPanel
      Left = 12
      Top = 10
      Width = 521
      Height = 237
      BevelInner = bvRaised
      TabOrder = 0
      object Panel1: TPanel
        Left = 16
        Top = 14
        Width = 489
        Height = 65
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 94
          Height = 13
          Caption = 'Cupom Fiscal N'#176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 8
          Top = 26
          Width = 85
          Height = 13
          Caption = 'Data da venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 42
          Width = 101
          Height = 13
          Caption = 'N'#250'mero da venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 120
          Top = 10
          Width = 43
          Height = 13
          Caption = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 120
          Top = 26
          Width = 5
          Height = 13
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 120
          Top = 42
          Width = 43
          Height = 13
          Caption = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 16
        Top = 86
        Width = 489
        Height = 65
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 1
        object Label7: TLabel
          Left = 8
          Top = 10
          Width = 40
          Height = 13
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 8
          Top = 26
          Width = 64
          Height = 13
          Caption = 'Pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 42
          Width = 55
          Height = 13
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 80
          Top = 10
          Width = 43
          Height = 13
          Caption = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 80
          Top = 26
          Width = 5
          Height = 13
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 80
          Top = 42
          Width = 43
          Height = 13
          Caption = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel5: TPanel
        Left = 16
        Top = 158
        Width = 489
        Height = 65
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 2
        object Label13: TLabel
          Left = 8
          Top = 10
          Width = 64
          Height = 13
          Caption = 'Valor Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 26
          Width = 88
          Height = 13
          Caption = 'Valor Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 8
          Top = 42
          Width = 77
          Height = 13
          Caption = 'Valor L'#237'quido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 104
          Top = 10
          Width = 43
          Height = 13
          Caption = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 104
          Top = 26
          Width = 5
          Height = 13
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 104
          Top = 42
          Width = 43
          Height = 13
          Caption = '000000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 220
    Top = 48
  end
end
