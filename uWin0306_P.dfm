object Form3: TForm3
  Left = 84
  Top = 163
  Width = 724
  Height = 452
  Caption = 'Form3'
  Color = 14542824
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 713
    Height = 69
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 23
      Width = 43
      Height = 13
      Caption = 'Pesquisa'
    end
    object edtPesquisa: TEdit
      Left = 57
      Top = 22
      Width = 400
      Height = 19
      TabOrder = 0
      OnKeyPress = edtPesquisaKeyPress
    end
    object rdgTipo: TRadioGroup
      Left = 496
      Top = 8
      Width = 206
      Height = 57
      Caption = 'Op'#231#227'o de Pesquisa'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Raz'#227'o Social'
        'Fantasia')
      ParentFont = False
      TabOrder = 1
      OnClick = rdgTipoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 71
    Width = 713
    Height = 302
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 711
      Height = 300
      TabStop = False
      Align = alClient
      Color = 14542824
      DataSource = DataSource1
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDCODIGO_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAO_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Raz'#227'o Social'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAO_CLIENTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 271
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'CNPJ/CPF'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end>
    end
  end
  object BitBtn1: TBitBtn
    Left = 638
    Top = 374
    Width = 75
    Height = 29
    Caption = '&Ok'
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 562
    Top = 374
    Width = 75
    Height = 30
    Caption = '&Fechar'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 406
    Width = 716
    Height = 19
    Panels = <
      item
        Width = 110
      end
      item
        Width = 110
      end
      item
        Width = 110
      end
      item
        Width = 110
      end
      item
        Width = 110
      end>
  end
  object DataSource1: TDataSource
    DataSet = DmPrincipal.cdsClien
    Left = 192
    Top = 176
  end
end
