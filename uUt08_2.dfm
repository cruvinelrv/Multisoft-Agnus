object frmUt08_2: TfrmUt08_2
  Left = 302
  Top = 198
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sele'#231#227'o de usu'#225'rio'
  ClientHeight = 249
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 305
    Height = 201
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 289
      Height = 185
      DataSource = dsUsuarios
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          FieldName = 'NOME_USUARIO'
          Title.Caption = 'Nome do usu'#225'rio'
          Width = 255
          Visible = True
        end>
    end
  end
  object Button1: TButton
    Left = 152
    Top = 216
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 216
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
  end
  object dsUsuarios: TDataSource
    AutoEdit = False
    DataSet = dmProgs.cdsPesqUsuario
    Left = 40
    Top = 56
  end
end
