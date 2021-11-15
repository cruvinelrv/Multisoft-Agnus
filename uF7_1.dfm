object frmF7_1: TfrmF7_1
  Left = 197
  Top = 183
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Propriedades'
  ClientHeight = 318
  ClientWidth = 689
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 299
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 271
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
      Top = 10
      Width = 44
      Height = 16
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 56
      Top = 11
      Width = 54
      Height = 17
      DataField = 'CODIGO_CLIENTE'
      DataSource = dsCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 115
      Top = 11
      Width = 477
      Height = 17
      DataField = 'NOME_CLIENTE'
      DataSource = dsCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 40
      Width = 586
      Height = 252
      Hint = '[Esc]Retorna  [Enter]Altera [Ins]Inclui [Del]Exclui [F10]Procura'
      DataSource = dsPropriedade
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
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_PRO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#211'DIGO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_PRO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 501
          Visible = True
        end>
    end
    object edtPesquisa: TEdit
      Left = 77
      Top = 269
      Width = 515
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Visible = False
      OnExit = edtPesquisaExit
      OnKeyPress = edtPesquisaKeyPress
    end
  end
  object btnIncluir: TBitBtn
    Left = 607
    Top = 3
    Width = 79
    Height = 30
    Caption = '&Novo'
    TabOrder = 1
    OnClick = btnIncluirClick
    NumGlyphs = 2
  end
  object btnAlterar: TBitBtn
    Left = 607
    Top = 33
    Width = 79
    Height = 30
    Caption = '&Alterar'
    TabOrder = 2
    OnClick = btnAlterarClick
  end
  object btnExcluir: TBitBtn
    Left = 607
    Top = 64
    Width = 79
    Height = 30
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnFechar: TBitBtn
    Left = 607
    Top = 94
    Width = 79
    Height = 30
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 4
    OnClick = btnFecharClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 299
    Width = 689
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '[Enter]Altera'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[Ins]Inclui'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[Del]Exclui'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[F10]Procura'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[Esc]Retorna'
        Width = 150
      end>
  end
  object dsPropriedade: TDataSource
    DataSet = dmF7.cdsPropriedade
    Left = 152
    Top = 120
  end
  object dsCliente: TDataSource
    DataSet = dmF7.cdsPesqCliente
    Left = 120
    Top = 120
  end
end
