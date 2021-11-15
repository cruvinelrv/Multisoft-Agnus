object frmGr06_1: TfrmGr06_1
  Left = 264
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Novo item'
  ClientHeight = 111
  ClientWidth = 456
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
  object Button1: TButton
    Left = 294
    Top = 80
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 441
    Height = 65
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label2: TLabel
      Left = 328
      Top = 8
      Width = 17
      Height = 13
      Caption = 'Qtd'
    end
    object Label3: TLabel
      Left = 384
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Vlr Unit.'
    end
    object edDescricao: TEdit
      Left = 8
      Top = 24
      Width = 313
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object edQuantidade: TJvValidateEdit
      Left = 328
      Top = 24
      Width = 49
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 3
      EditText = '1,000'
      TabOrder = 1
    end
    object edPrecoUnitario: TJvValidateEdit
      Left = 384
      Top = 24
      Width = 49
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      EditText = '0,00'
      TabOrder = 2
    end
  end
  object Button2: TButton
    Left = 374
    Top = 80
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = Button2Click
  end
end
