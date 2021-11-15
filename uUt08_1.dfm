object frmUt08_1: TfrmUt08_1
  Left = 359
  Top = 217
  Width = 389
  Height = 254
  Caption = 'Cadastro de Usu'#225'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object btnFechar: TBitBtn
    Left = 288
    Top = 168
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 2
    TabStop = False
    OnClick = btnFecharClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 381
    Height = 161
    Align = alTop
    TabOrder = 0
    object DBText1: TDBText
      Left = 103
      Top = 23
      Width = 46
      Height = 17
      Alignment = taRightJustify
      Color = 14542824
      DataField = 'IDUSUARIO'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 48
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 48
      Top = 60
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 48
      Top = 93
      Width = 31
      Height = 13
      Caption = 'Senha'
    end
    object Label4: TLabel
      Left = 48
      Top = 123
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object DBEdit1: TDBEdit
      Left = 103
      Top = 56
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME_USUARIO'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 88
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SENHA_USUARIO'
      DataSource = DataSource1
      PasswordChar = #1
      TabOrder = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 163
      Top = 24
      Width = 60
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Master:'
      DataField = 'ADM_USUARIO'
      DataSource = DataSource1
      TabOrder = 0
      ValueChecked = 'T'
      ValueUnchecked = 'F'
    end
    object cobEmpresa: TDBLookupComboBox
      Left = 104
      Top = 120
      Width = 233
      Height = 21
      DataField = 'EMPRESA_USUARIO'
      DataSource = DataSource1
      KeyField = 'CODIGO_EMP'
      ListField = 'RAZAOSOCIA_EMP'
      ListSource = DataSource2
      TabOrder = 3
    end
  end
  object btnGravar: TBitBtn
    Left = 208
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 1
    OnClick = btnGravarClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 201
    Width = 381
    Height = 19
    Panels = <>
  end
  object DataSource1: TDataSource
    DataSet = dmProgs.cdsUsuario
    Left = 32
    Top = 176
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 176
  end
  object DataSource2: TDataSource
    Left = 296
    Top = 72
  end
end
