object frmGr04: TfrmGr04
  Left = 190
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = ' ALTERA PRE'#199'OS / LOCA'#199#195'O INDIVIDUAL DE PRODUTOS'
  ClientHeight = 461
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 442
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 365
      Width = 66
      Height = 16
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 403
      Width = 43
      Height = 13
      Caption = 'Produto.:'
    end
    object DBText1: TDBText
      Left = 56
      Top = 400
      Width = 521
      Height = 17
      Color = 15528948
      DataField = 'DESCRICAO_PRODUTO'
      DataSource = dsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 57
      Top = 421
      Width = 72
      Height = 17
      Color = 15528948
      DataField = 'GRUPO_PRODUTO'
      DataSource = dsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 422
      Width = 32
      Height = 13
      Caption = 'Grupo:'
    end
    object DBText3: TDBText
      Left = 136
      Top = 422
      Width = 441
      Height = 17
      Color = 15528948
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 6
      Width = 730
      Height = 387
      Hint = '[Esc]Retorna  [Enter]Altera [Ins]Inclui [Del]Exclui [F10]Procura'
      DataSource = dsProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGrid1KeyDown
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'FABRICA_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Fabrica'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 161
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCAL_ESTOQUE_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Loca'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESTOQUE_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Est Atual'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECOUNIT_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_COMPRA_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Compra'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROMOCAO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Promo'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRATACADO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Atacado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRIB_DENTRO_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'CST. UF'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TRIB_FORA_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'CST. Fora'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REDU_DENTR_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Redutor UF'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REDU_FORA_PRODUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Redutor Fora'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
    object edtPesquisa: TEdit
      Left = 77
      Top = 364
      Width = 556
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Visible = False
      OnExit = edtPesquisaExit
      OnKeyPress = edtPesquisaKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 656
      Top = 408
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000296394002963940000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
        63002963940029639400296394002963940000000000004A6300004A6300004A
        6300004A6300004A6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00004A
        630029639C002963940029639400296394000000000000CEFF0000CEFF0000CE
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
        6300216B9C00296B9C00296B9C00296B9C000000000000CEFF0000CEFF0000CE
        FF0000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63002173A5002173A5002173A500216B9C000000000008CEFF0000CEFF0000CE
        FF0000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        6300187BAD00187BAD00FFFFFF001873A5000000000031D6FF0021D6FF0018CE
        FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63001084B500107BB500107BAD00107BAD00000000005ADEFF004ADEFF00FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
        6300088CBD000884B5000884B5001084B5000000000084E7F700FF000000FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
        6300008CBD00008CBD00088CBD00088CBD0000000000B5EFF700A5E7F700FF00
        0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
        63000094C6000094C6000094C6000094C60000000000DEF7F700CEEFF700BDEF
        F700FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63000094CE000094CE000094C6000094C60000000000F7F7F700EFF7F700E7F7
        F70000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
        63000094CE000094CE000094CE000094CE0000000000F7F7F700F7F7F700F7F7
        F70000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00004A6300004A63000094CE000094CE0000000000004A6300004A6300004A
        6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00004A6300004A6300004A6300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 442
    Width = 751
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '[Enter]Altera'
        Width = 250
      end
      item
        Alignment = taCenter
        Text = '[F10]Procura'
        Width = 250
      end
      item
        Alignment = taCenter
        Text = '[Esc]Retorna'
        Width = 250
      end>
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = dmGr04.cdsProdutos
    Left = 336
    Top = 88
  end
end
