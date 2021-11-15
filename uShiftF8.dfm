object frmShiftF8: TfrmShiftF8
  Left = 190
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Observa'#231#245'es de Nota Fiscal'
  ClientHeight = 369
  ClientWidth = 678
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
    Width = 585
    Height = 369
    BevelInner = bvRaised
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 569
      Height = 353
      Color = clCream
      DataSource = dsObservacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_OBSERVACAO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEXTO_OBSERVACAO'
          Title.Caption = 'Texto da Observa'#231#227'o'
          Width = 337
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_OBSERVACAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 215
          Visible = True
        end>
    end
  end
  object BitBtn4: TBitBtn
    Left = 588
    Top = 0
    Width = 89
    Height = 30
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = BitBtn4Click
  end
  object dsObservacao: TDataSource
    AutoEdit = False
    DataSet = dmShiftF8.cdsObservacao
    Left = 472
    Top = 184
  end
end
