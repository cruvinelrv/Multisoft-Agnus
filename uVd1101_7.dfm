object frmVd1101_7: TfrmVd1101_7
  Left = 215
  Top = 100
  ActiveControl = DBGrid1
  BorderStyle = bsNone
  Caption = 'frmVd1101_7'
  ClientHeight = 198
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 334
    Height = 198
    Align = alClient
    BevelInner = bvRaised
    TabOrder = 0
    DesignSize = (
      334
      198)
    object Panel2: TPanel
      Left = 8
      Top = 9
      Width = 319
      Height = 179
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        319
        179)
      object Panel3: TPanel
        Left = 8
        Top = 8
        Width = 303
        Height = 163
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvRaised
        TabOrder = 0
        DesignSize = (
          303
          163)
        object Label1: TLabel
          Left = 7
          Top = -2
          Width = 142
          Height = 13
          Alignment = taCenter
          Caption = 'Sele'#231#227'o de propriedades'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid1: TDBGrid
          Left = 8
          Top = 16
          Width = 287
          Height = 139
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dsPropriedade
          Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
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
              Title.Caption = 'C'#243'd.'
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO_PRO'
              Width = 223
              Visible = True
            end>
        end
      end
    end
  end
  object dsPropriedade: TDataSource
    AutoEdit = False
    DataSet = dmVd1101.cdsPropriedade
    Left = 72
    Top = 64
  end
end
