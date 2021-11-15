object frmShiftF3: TfrmShiftF3
  Left = 207
  Top = 211
  ActiveControl = DBGrid1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Consulta de Se'#231#245'es'
  ClientHeight = 403
  ClientWidth = 763
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 403
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
      DataSource = DsSecao
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
          FieldName = 'CODIGO_SECAO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_SECAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 572
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
    Left = 680
    Top = 6
    Width = 79
    Height = 30
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = BitBtn4Click
  end
  object DsSecao: TDataSource
    AutoEdit = False
    DataSet = dmShiftF3.cdsSecao
    Left = 320
    Top = 184
  end
end
