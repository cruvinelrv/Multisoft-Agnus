object frmVd1101_10: TfrmVd1101_10
  Left = 229
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecione o item'
  ClientHeight = 343
  ClientWidth = 562
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 545
    Height = 297
    TabOrder = 0
    object Panel2: TPanel
      Left = 8
      Top = 8
      Width = 529
      Height = 281
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 2
        Width = 525
        Height = 277
        Align = alClient
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO_PRODUTO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_PRODUTO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 355
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_LISTA_PRODUTO'
            Title.Caption = 'Pre'#231'o'
            Width = 71
            Visible = True
          end>
      end
    end
  end
  object Button2: TButton
    Left = 478
    Top = 312
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = dmVd1101.cdsPesqProdutos
    Left = 272
    Top = 152
  end
end
