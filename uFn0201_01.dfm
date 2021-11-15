object frmFn0201_01: TfrmFn0201_01
  Left = 187
  Top = 237
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 90
  ClientWidth = 646
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 646
    Height = 90
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 7
      Width = 36
      Height = 13
      Caption = 'Parcela'
    end
    object Label2: TLabel
      Left = 69
      Top = 7
      Width = 12
      Height = 13
      Caption = '00'
    end
    object Panel2: TPanel
      Left = 20
      Top = 22
      Width = 605
      Height = 35
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 10
        Width = 61
        Height = 13
        Caption = 'Documento :'
      end
      object Label4: TLabel
        Left = 216
        Top = 10
        Width = 62
        Height = 13
        Caption = 'Vencimento :'
      end
      object Label5: TLabel
        Left = 438
        Top = 10
        Width = 30
        Height = 13
        Caption = 'Valor :'
      end
      object edtDoc: TEdit
        Left = 70
        Top = 6
        Width = 121
        Height = 21
        MaxLength = 12
        TabOrder = 0
        OnExit = edtDocExit
      end
      object edtVenc: TMaskEdit
        Left = 280
        Top = 6
        Width = 120
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object edtVal: TJvValidateEdit
        Left = 471
        Top = 6
        Width = 121
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        MaxLength = 12
        TabOrder = 2
      end
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 72
      Width = 644
      Height = 17
      Panels = <
        item
          Text = '[ESC] '#187' para gerar as parcelas automaticamente'
          Width = 50
        end>
    end
  end
end
