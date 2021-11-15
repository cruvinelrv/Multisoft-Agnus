object frmVd0703: TfrmVd0703
  Left = 237
  Top = 162
  ActiveControl = JvValidateEdit1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cancela nota fiscal'
  ClientHeight = 282
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 8
    Top = 7
    Width = 55
    Height = 13
    Caption = 'Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 23
    Width = 40
    Height = 13
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 537
    Height = 265
    TabOrder = 0
    object Panel2: TPanel
      Left = 16
      Top = 16
      Width = 505
      Height = 153
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 2
        Width = 501
        Height = 149
        Align = alClient
        DataSource = dsItens
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
            FieldName = 'DESCRICAO_IVENDAS'
            Title.Caption = 'Produto'
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE_IVENDAS'
            Title.Caption = 'Qtd'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO_IVENDAS'
            Title.Caption = '% Dsc'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORBRUTO_IVENDAS'
            Title.Caption = 'Unit'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'Total'
            Width = 52
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 16
      Top = 176
      Width = 337
      Height = 73
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 55
        Height = 13
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 23
        Width = 40
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 48
        Width = 37
        Height = 13
        Caption = 'Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 64
        Top = 7
        Width = 34
        Height = 13
        Caption = 'Vend.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 64
        Top = 23
        Width = 40
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 106
        Top = 45
        Width = 24
        Height = 22
        Hint = 'Ctrl + F1'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
          73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
          8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
          9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
          A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
          AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
          BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
          D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
          E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
          F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
          424242424242424242422B39180B42424242424242424242424243443C180B42
          4242424242424242424242444438180B42424242424242424242424244433918
          0A424242424242424242424242444335004201101A114242424242424242453D
          05072F343434291942424242424242221A2D34343437403E0442424242424206
          231C303437404146284242424242421B210F30373A414140310D42424242421F
          20032434373A3A37321342424242421D25030F2D37373737311042424242420D
          2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
          4227312D21252314424242424242424242420E141B1B42424242}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object JvValidateEdit1: TJvValidateEdit
        Left = 64
        Top = 45
        Width = 41
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        TabOrder = 0
        ZeroEmpty = True
        OnKeyDown = JvValidateEdit1KeyDown
      end
    end
    object Panel4: TPanel
      Left = 360
      Top = 176
      Width = 161
      Height = 73
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 2
      object Label6: TLabel
        Left = 8
        Top = 7
        Width = 31
        Height = 13
        Caption = 'Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 8
        Top = 23
        Width = 68
        Height = 13
        Caption = '% Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 39
        Width = 55
        Height = 13
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 55
        Width = 44
        Height = 13
        Caption = 'L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 80
        Top = 7
        Width = 26
        Height = 13
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 80
        Top = 23
        Width = 26
        Height = 13
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 80
        Top = 39
        Width = 26
        Height = 13
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 80
        Top = 52
        Width = 26
        Height = 13
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object dsItens: TDataSource
    AutoEdit = False
    DataSet = cdsItem
    Left = 136
    Top = 80
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'VENDA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspVendasItem'
    Left = 104
    Top = 80
    object cdsItemDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 80
    end
    object cdsItemQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object cdsItemDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsItemVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object cdsItemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 7
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 176
    Top = 80
  end
end
