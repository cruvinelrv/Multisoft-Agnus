object frmProcesso2: TfrmProcesso2
  Left = 257
  Top = 262
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frmProcesso2'
  ClientHeight = 141
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 141
    Align = alClient
    BevelInner = bvRaised
    TabOrder = 0
    DesignSize = (
      413
      141)
    object Panel1: TPanel
      Left = 6
      Top = 6
      Width = 401
      Height = 130
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        401
        130)
      object Panel2: TPanel
        Left = 7
        Top = 5
        Width = 387
        Height = 119
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvRaised
        TabOrder = 0
        object Label1: TLabel
          Left = 17
          Top = 11
          Width = 280
          Height = 24
          Caption = 'Aguarde, processando relat'#243'rio...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Animate1: TAnimate
          Left = 152
          Top = 48
          Width = 80
          Height = 50
          CommonAVI = aviFindFolder
          StopFrame = 29
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 104
    Top = 232
  end
end
