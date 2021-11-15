object frmF6_3_1: TfrmF6_3_1
  Left = 204
  Top = 209
  BorderStyle = bsToolWindow
  Caption = 'Cadastro de Veiculo de Cliente'
  ClientHeight = 290
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 523
    Height = 240
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 22
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 19
      Top = 56
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = dbeDescricao
    end
    object Label3: TLabel
      Left = 19
      Top = 141
      Width = 27
      Height = 13
      Caption = 'Placa'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 19
      Top = 199
      Width = 77
      Height = 13
      Caption = 'Serie do Veiculo'
      FocusControl = DBEdit6
    end
    object Label6: TLabel
      Left = 19
      Top = 171
      Width = 69
      Height = 13
      Caption = 'Serie do Motor'
    end
    object Label4: TLabel
      Left = 19
      Top = 88
      Width = 35
      Height = 13
      Caption = 'Modelo'
    end
    object Label7: TLabel
      Left = 19
      Top = 112
      Width = 19
      Height = 13
      Caption = 'Ano'
    end
    object DBEdit1: TDBEdit
      Left = 98
      Top = 20
      Width = 49
      Height = 21
      TabStop = False
      Color = clSilver
      DataField = 'CODIGO_VEICULO'
      DataSource = dsVeiculocliente
      ReadOnly = True
      TabOrder = 6
    end
    object dbeDescricao: TDBEdit
      Left = 98
      Top = 52
      Width = 400
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO_VEICULO'
      DataSource = dsVeiculocliente
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 98
      Top = 80
      Width = 223
      Height = 21
      CharCase = ecUpperCase
      DataField = 'MODELO_VEICULO'
      DataSource = dsVeiculocliente
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 98
      Top = 108
      Width = 47
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ANO_VEICULO'
      DataSource = dsVeiculocliente
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 98
      Top = 136
      Width = 87
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PLACA_VEICULO'
      DataSource = dsVeiculocliente
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 98
      Top = 165
      Width = 394
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NR_MOTOR_VEICULO'
      DataSource = dsVeiculocliente
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 98
      Top = 195
      Width = 394
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NR_SERIE_VEICULO'
      DataSource = dsVeiculocliente
      TabOrder = 5
    end
  end
  object BitBtn1: TBitBtn
    Left = 372
    Top = 240
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 448
    Top = 240
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 271
    Width = 523
    Height = 19
    Panels = <>
  end
  object dsVeiculocliente: TDataSource
    DataSet = dmF6.cdsVeiculoCliente
    Left = 248
    Top = 128
  end
end
