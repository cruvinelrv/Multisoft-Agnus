object frmF6_3: TfrmF6_3
  Left = 210
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Veiculos'
  ClientHeight = 327
  ClientWidth = 759
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
    Width = 673
    Height = 308
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 283
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
      Top = 14
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
      Left = 54
      Top = 14
      Width = 38
      Height = 17
      Alignment = taRightJustify
      Color = 14215660
      DataField = 'CODIGO_CLIENTE'
      DataSource = dsCliente
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 99
      Top = 14
      Width = 481
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
      Width = 658
      Height = 264
      Hint = '[Esc]Retorna  [Enter]Altera [Ins]Inclui [Del]Exclui [F10]Procura'
      DataSource = dsVeiculoCliente
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
          FieldName = 'CODIGO_VEICULO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODELO_VEICULO'
          Title.Alignment = taCenter
          Title.Caption = 'Modelo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 166
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_VEICULO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 338
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PLACA_VEICULO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Placa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end>
    end
    object edtPesquisa: TEdit
      Left = 77
      Top = 282
      Width = 584
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Visible = False
      OnExit = edtPesquisaExit
      OnKeyPress = edtPesquisaKeyPress
    end
  end
  object btnIncluir: TBitBtn
    Left = 675
    Top = 4
    Width = 79
    Height = 30
    Caption = '&Novo'
    TabOrder = 1
    OnClick = btnIncluirClick
    NumGlyphs = 2
  end
  object btnAlterar: TBitBtn
    Left = 675
    Top = 34
    Width = 79
    Height = 30
    Caption = '&Alterar'
    TabOrder = 2
    OnClick = btnAlterarClick
  end
  object btnExcluir: TBitBtn
    Left = 675
    Top = 64
    Width = 79
    Height = 30
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnFechar: TBitBtn
    Left = 675
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
    Top = 308
    Width = 759
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
  object dsVeiculoCliente: TDataSource
    AutoEdit = False
    DataSet = dmF6.cdsVeiculoCliente
    Left = 392
    Top = 224
  end
  object dsCliente: TDataSource
    DataSet = dmF6.cdsFornecedor
    Left = 376
    Top = 168
  end
end
