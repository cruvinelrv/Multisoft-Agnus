object frmShiftF5: TfrmShiftF5
  Left = 188
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Ajuste do Estoque'
  ClientHeight = 453
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 434
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
    object DBGrid1: TDBGrid
      Left = 7
      Top = 6
      Width = 658
      Height = 419
      Hint = '[Esc]Retorna  [Enter]Altera [Ins]Inclui [Del]Exclui [F10]Procura'
      DataSource = dsTipoPagamento
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
      TitleFont.Style = [fsBold]
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Data Ajuste'
          Width = 85
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'PRODUTO_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Produto'
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'ANTERIOR_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Est. Anterior'
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'ATUAL_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Est. Ajustado'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'PRECO1_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Anterior'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'PRECO2_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Novo'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'PRECO3_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Promo'#231#227'o'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'PRECO4_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Compra Anterior'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'PRECO5_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Compra Nova'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'PRECO6_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Atacado Anterior'
          Width = 64
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'PRECO7_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Atavado Novo'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALIDADE1_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Val. Anterior'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALIDADE2_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Val. Nova'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO_TABELA02'
          Title.Alignment = taCenter
          Title.Caption = 'Usu'#225'rio'
          Visible = True
        end>
    end
    object edtPesquisa: TEdit
      Left = 77
      Top = 364
      Width = 584
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      Visible = False
      OnExit = edtPesquisaExit
      OnKeyPress = edtPesquisaKeyPress
    end
  end
  object BitBtn4: TBitBtn
    Left = 675
    Top = 3
    Width = 89
    Height = 30
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = BitBtn4Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 434
    Width = 769
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '[Esc]Retorna'
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object dsTipoPagamento: TDataSource
    AutoEdit = False
    DataSet = dmShiftF5.cdsTabela02
    Left = 249
    Top = 144
  end
end
