object Form2: TForm2
  Left = 267
  Top = 302
  Width = 455
  Height = 241
  ActiveControl = edtCodigo
  Caption = 'Caixa'
  Color = 14542824
  Ctl3D = False
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 161
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 48
      Width = 57
      Height = 13
      Caption = 'Nome Caixa'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 75
      Width = 31
      Height = 13
      Caption = 'Senha'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 24
      Top = 105
      Width = 42
      Height = 13
      Caption = 'Situa'#231#227'o'
    end
    object Label4: TLabel
      Left = 24
      Top = 21
      Width = 39
      Height = 14
      Caption = 'C'#243'digo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 145
      Top = 16
      Width = 21
      Height = 19
      Flat = True
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 44
      Width = 313
      Height = 19
      DataField = 'DESCRICAO_CAIXA'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 73
      Width = 94
      Height = 19
      DataField = 'SENHA_CAIXA'
      DataSource = DataSource1
      PasswordChar = #1
      TabOrder = 2
    end
    object cobSituacao: TComboBox
      Left = 88
      Top = 102
      Width = 97
      Height = 22
      Style = csDropDownList
      Color = 14542824
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 14
      ItemIndex = 1
      ParentFont = False
      TabOrder = 3
      Text = 'Inativo'
      Items.Strings = (
        'Ativo'
        'Inativo')
    end
    object edtCodigo: TEdit
      Left = 88
      Top = 16
      Width = 57
      Height = 19
      TabOrder = 0
      Text = '1'
      OnExit = edtCodigoExit
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 195
    Width = 447
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end>
  end
  object btnGravar: TBitBtn
    Left = 219
    Top = 162
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 2
    OnClick = btnGravarClick
  end
  object btnExcluir: TBitBtn
    Left = 295
    Top = 162
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnFechar: TBitBtn
    Left = 371
    Top = 162
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 4
    OnClick = btnFecharClick
  end
  object DataSource1: TDataSource
    DataSet = DmPrincipal.cdsCaixa
    Left = 472
    Top = 8
  end
end
