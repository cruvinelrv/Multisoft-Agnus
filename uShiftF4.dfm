object frmShiftF4: TfrmShiftF4
  Left = 208
  Top = 149
  Width = 774
  Height = 463
  Caption = 'Consulta de Reajuste de Pre'#231'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 7
    Top = 0
    Width = 673
    Height = 404
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 658
      Height = 388
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
          FieldName = 'COD_EMPRESA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DATA_TABELA01'
          Title.Alignment = taCenter
          Title.Caption = 'Data do Reajuste'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPO_TABELA1'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_TABELA01'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo de Pre'#231'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRECO_TABELA01'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo de Pre'#231'o'
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
          FieldName = 'PERCENTUAL_TABELA01'
          Title.Alignment = taCenter
          Title.Caption = 'Percentual'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO_TABELA01'
          Title.Alignment = taCenter
          Title.Caption = 'Usu'#225'rio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 238
          Visible = True
        end>
    end
  end
  object StatusBar2: TStatusBar
    Left = 0
    Top = 410
    Width = 766
    Height = 19
    Panels = <
      item
        Text = '[Esc] '#187' Retorna'
        Width = 250
      end>
  end
  object BitBtn4: TBitBtn
    Left = 684
    Top = 2
    Width = 78
    Height = 30
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = BitBtn4Click
  end
  object DataSource1: TDataSource
    DataSet = dmShiftF4.cdsConsulta
    Left = 335
    Top = 168
  end
end
