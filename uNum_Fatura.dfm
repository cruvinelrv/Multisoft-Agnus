object frmNum_Fatura: TfrmNum_Fatura
  Left = 312
  Top = 207
  BorderStyle = bsNone
  Caption = 'frmNum_Fatura'
  ClientHeight = 108
  ClientWidth = 338
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 4
    Width = 329
    Height = 99
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 36
      Width = 123
      Height = 13
      Caption = 'N'#250'mero da Fatura Gerada'
    end
    object Edit1: TEdit
      Left = 151
      Top = 33
      Width = 153
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 260
      Top = 73
      Width = 65
      Height = 22
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
end
