object frmFn07: TfrmFn07
  Left = 187
  Top = 111
  Width = 702
  Height = 530
  Caption = 'Consulta Saldo Conta Corrente'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 6
    Top = 5
    Width = 682
    Height = 443
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 7
      Top = 120
      Width = 666
      Height = 313
      DataSource = DataSource1
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'DOCUMENTO_CONLAN'
          Title.Alignment = taCenter
          Title.Caption = 'Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CORRENTE_CONLAN'
          Title.Alignment = taCenter
          Title.Caption = 'Conta'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIPO_CONLAN'
          Title.Alignment = taCenter
          Title.Caption = 'D \ C'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 47
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALOR_CONLAN'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_CONLAN'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_EMPRESA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'HISTORICO_CONLAN'
          Title.Caption = 'Hist'#243'rico'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 400
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 3
      Width = 396
      Height = 47
      Caption = 'Conta Corrente \ Caixa'
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 87
        Top = 16
        Width = 22
        Height = 22
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
        OnClick = SpeedButton1Click
      end
      object edtContaCorrente: TJvValidateEdit
        Left = 8
        Top = 17
        Width = 78
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        MaxLength = 9
        TabOrder = 0
        OnExit = edtContaCorrenteExit
      end
      object Edit1: TEdit
        Left = 112
        Top = 16
        Width = 265
        Height = 21
        TabStop = False
        Color = clCream
        MaxLength = 40
        ReadOnly = True
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 67
      Width = 396
      Height = 47
      Caption = 'Data a Consultar'
      TabOrder = 2
      object edtDataConsultar: TJvDateEdit
        Left = 8
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 0
        OnEnter = edtDataConsultarEnter
        OnExit = edtDataConsultarExit
      end
    end
    object GroupBox3: TGroupBox
      Left = 408
      Top = 3
      Width = 265
      Height = 111
      Caption = 'Detalhes do Saldo'
      TabOrder = 3
      DesignSize = (
        265
        111)
      object Label2: TLabel
        Left = 17
        Top = 17
        Width = 66
        Height = 13
        Caption = 'Saldo Anterior'
      end
      object Label3: TLabel
        Left = 17
        Top = 41
        Width = 36
        Height = 13
        Caption = 'D'#233'bitos'
      end
      object Label4: TLabel
        Left = 17
        Top = 65
        Width = 38
        Height = 13
        Caption = 'Cr'#233'ditos'
      end
      object Label5: TLabel
        Left = 17
        Top = 89
        Width = 54
        Height = 13
        Caption = 'Saldo Atual'
      end
      object Edit2: TEdit
        Left = 114
        Top = 14
        Width = 143
        Height = 21
        Anchors = [akTop, akRight]
        Color = clCream
        ReadOnly = True
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 114
        Top = 37
        Width = 143
        Height = 21
        Anchors = [akTop, akRight]
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object Edit4: TEdit
        Left = 114
        Top = 61
        Width = 143
        Height = 21
        Anchors = [akTop, akRight]
        Color = clCream
        ReadOnly = True
        TabOrder = 2
      end
      object Edit5: TEdit
        Left = 114
        Top = 85
        Width = 143
        Height = 21
        Anchors = [akTop, akRight]
        Color = clCream
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 477
    Width = 694
    Height = 19
    Panels = <
      item
        Text = '[ESC] '#187' Retorna'
        Width = 100
      end
      item
        Text = '[ShF1] '#187' Calculadora'
        Width = 50
      end>
  end
  object btnSair: TBitBtn
    Left = 612
    Top = 451
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
    OnClick = btnSairClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000296394002963940000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
      63002963940029639400296394002963940000000000004A6300004A6300004A
      6300004A6300004A6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00004A
      630029639C002963940029639400296394000000000000CEFF0000CEFF0000CE
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
      6300216B9C00296B9C00296B9C00296B9C000000000000CEFF0000CEFF0000CE
      FF0000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      63002173A5002173A5002173A500216B9C000000000008CEFF0000CEFF0000CE
      FF0000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      6300187BAD00187BAD00FFFFFF001873A5000000000031D6FF0021D6FF0018CE
      FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      63001084B500107BB500107BAD00107BAD00000000005ADEFF004ADEFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
      6300088CBD000884B5000884B5001084B5000000000084E7F700FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
      6300008CBD00008CBD00088CBD00088CBD0000000000B5EFF700A5E7F700FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
      63000094C6000094C6000094C6000094C60000000000DEF7F700CEEFF700BDEF
      F700FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      63000094CE000094CE000094C6000094C60000000000F7F7F700EFF7F700E7F7
      F70000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      63000094CE000094CE000094CE000094CE0000000000F7F7F700F7F7F700F7F7
      F70000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00004A6300004A63000094CE000094CE0000000000004A6300004A6300004A
      6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00004A6300004A6300004A6300FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object DataSource1: TDataSource
    DataSet = dmFn07.cdsConlan2
    Left = 635
    Top = 180
  end
end
