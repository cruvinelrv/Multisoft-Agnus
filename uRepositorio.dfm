object Form1: TForm1
  Left = 94
  Top = 222
  Width = 709
  Height = 395
  BorderIcons = [biSystemMenu]
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object btnFechar: TBitBtn
    Left = 620
    Top = 1
    Width = 75
    Height = 29
    Caption = '&Fechar'
    TabOrder = 0
    OnClick = btnFecharClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 617
    Height = 345
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 348
    Width = 701
    Height = 19
    Panels = <>
  end
end
