object frmShiftF7: TfrmShiftF7
  Left = 201
  Top = 107
  Width = 776
  Height = 446
  Caption = 'Consulta de Ordem de Servi'#231'o'
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
    Height = 393
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
      Height = 387
      Hint = '[Esc]Retorna  [Enter]Altera [Ins]Inclui [Del]Exclui [F10]Procura'
      DataSource = DsPesqServico
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
      TitleFont.Style = [fsBold]
      OnKeyDown = DBGrid1KeyDown2
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_SERVICO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#176' O.S.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Width = 236
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOSERVICO_SERVICO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o '
          Width = 236
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORLIQUIDO_SERVICO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Total'
          Width = 99
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
    Top = 393
    Width = 768
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '[ENTER] '#187' Consulta'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[F10] '#187' Procura'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[Esc] '#187' Retorna'
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object DsPesqServico: TDataSource
    AutoEdit = False
    Left = 156
    Top = 184
  end
end
