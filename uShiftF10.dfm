object frmShiftF10: TfrmShiftF10
  Left = 246
  Top = 184
  Width = 650
  Height = 500
  Caption = 'Contas a Pagar'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 2
    Top = 3
    Width = 637
    Height = 443
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Per'#237'odo de'
    end
    object Label2: TLabel
      Left = 199
      Top = 16
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label3: TLabel
      Left = 356
      Top = 16
      Width = 62
      Height = 13
      Caption = 'Tipo de Data'
    end
    object edtDataIni: TJvDateEdit
      Left = 70
      Top = 13
      Width = 115
      Height = 21
      TabOrder = 0
      OnEnter = edtDataIniEnter
    end
    object edtDataFim: TJvDateEdit
      Left = 223
      Top = 13
      Width = 119
      Height = 21
      TabOrder = 1
      OnEnter = edtDataFimEnter
    end
    object ComboBox1: TComboBox
      Left = 426
      Top = 13
      Width = 100
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Vencimento'
      OnEnter = ComboBox1Enter
      OnKeyDown = ComboBox1KeyDown
      Items.Strings = (
        'Vencimento'
        'Emiss'#227'o')
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 56
      Width = 620
      Height = 353
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = DBGrid1Enter
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DOCUMENTO_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 111
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FORNECEDOR_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Fornecedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EMISSAO_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VENCIMENTO_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PREVISAO_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Previs'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DIAS_ATRASO'
          Title.Alignment = taCenter
          Title.Caption = 'Dias Atraso'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MORA_DIA'
          Title.Alignment = taCenter
          Title.Caption = 'Mora'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'JUROS'
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALOR_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALORPAGO_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SALDO'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HISTORICO_PAGAR'
          Visible = False
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIPO_BAIXA_PAGAR'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Baixa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end>
    end
    object RadioGroupF10: TRadioGroup
      Left = 483
      Top = 304
      Width = 145
      Height = 105
      Items.Strings = (
        'Documento'
        'Cliente'
        'Previs'#227'o'
        'Vencimento'
        'Valor'
        'Hist'#243'rico')
      TabOrder = 4
      Visible = False
      OnClick = RadioGroupF10Click
    end
    object Panel2: TPanel
      Left = 10
      Top = 366
      Width = 473
      Height = 41
      TabOrder = 5
      Visible = False
      object edtPesquisa: TMaskEdit
        Left = 9
        Top = 11
        Width = 452
        Height = 21
        TabOrder = 0
        OnKeyDown = edtPesquisaKeyDown
      end
    end
    object RadioGroupF: TRadioGroup
      Left = 483
      Top = 334
      Width = 145
      Height = 74
      Items.Strings = (
        'Valor'
        'Abertos'
        'Fechados'
        'Remover Filtro')
      TabOrder = 6
      Visible = False
      OnClick = RadioGroupFClick
    end
    object btnConsultar: TBitBtn
      Left = 477
      Top = 412
      Width = 75
      Height = 27
      Caption = '&Consultar'
      TabOrder = 7
      OnClick = btnConsultarClick
    end
    object btnSair: TBitBtn
      Left = 553
      Top = 412
      Width = 75
      Height = 27
      Caption = '&Sair'
      TabOrder = 8
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
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 447
    Width = 642
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object DataSource1: TDataSource
    DataSet = dmShiftF10.cdsGrid
    Left = 266
    Top = 171
  end
end
