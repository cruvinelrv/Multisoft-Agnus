object frmVd1101_5: TfrmVd1101_5
  Left = 535
  Top = 260
  BorderStyle = bsNone
  Caption = 'frmVd1101_5'
  ClientHeight = 66
  ClientWidth = 196
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
    Width = 196
    Height = 66
    Align = alClient
    TabOrder = 0
    DesignSize = (
      196
      66)
    object Panel2: TPanel
      Left = 8
      Top = 8
      Width = 180
      Height = 50
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        180
        50)
      object Panel3: TPanel
        Left = 10
        Top = 8
        Width = 160
        Height = 34
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 10
          Width = 34
          Height = 13
          Caption = 'Senha:'
        end
        object Edit1: TEdit
          Left = 48
          Top = 7
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyDown = Edit1KeyDown
        end
      end
    end
  end
end
