object frmFn0202_02: TfrmFn0202_02
  Left = 463
  Top = 332
  BorderStyle = bsNone
  ClientHeight = 74
  ClientWidth = 229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 229
    Height = 74
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 22
      Top = 17
      Width = 185
      Height = 41
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 12
        Width = 31
        Height = 13
        Caption = 'Senha'
      end
      object edtSenha: TEdit
        Left = 45
        Top = 9
        Width = 130
        Height = 21
        MaxLength = 9
        TabOrder = 0
        OnExit = edtSenhaExit
      end
    end
  end
  object sqqSenha: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmPrincipal.DbConexao
  end
end
