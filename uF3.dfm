object frmF3: TfrmF3
  Left = 199
  Top = 162
  Width = 777
  Height = 450
  ActiveControl = DBGrid1
  Caption = 'Consulta de Grupos'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 397
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 112
      Top = 144
      Width = 39
      Height = 13
      Caption = 'GRUPO'
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 6
      Width = 679
      Height = 395
      DataSource = DsGrupos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DBGrid1Enter
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 256
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMISSAO_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = '% Com V'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMISSAO1_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = '% Com P'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FATOR_VEND_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'F. Vend'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_SECAO_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'Se'#231#227'o'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUSPENSO_GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'SPS'
          Width = 48
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 691
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object grpPesquisa: TGroupBox
      Left = 7
      Top = 359
      Width = 682
      Height = 44
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object edtPesquisar: TEdit
        Left = 7
        Top = 16
        Width = 450
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = edtPesquisarKeyDown
        OnKeyPress = edtPesquisarKeyPress
      end
      object rdbCodigo: TRadioButton
        Left = 488
        Top = 18
        Width = 65
        Height = 17
        Caption = 'C'#243'dig&o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = rdbCodigoClick
      end
      object rdbDescricao: TRadioButton
        Left = 571
        Top = 17
        Width = 81
        Height = 17
        Caption = '&Descri'#231#227'o'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = rdbDescricaoClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 397
    Width = 769
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '[ENTER]-Retorna C'#243'digo'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[ESC]-Fechar'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[F10]-Procurar'
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object DsGrupos: TDataSource
    AutoEdit = False
    DataSet = dmF3.cdsGrupoProduto
    Left = 296
    Top = 272
  end
end
