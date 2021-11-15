object frmCx02: TfrmCx02
  Left = 281
  Top = 219
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Informa Entrada'
  ClientHeight = 272
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 272
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 16
      Width = 153
      Height = 49
      Caption = 'Data do Caixa Faturamento'
      Enabled = False
      TabOrder = 0
      object edtDataCaixa: TJvDateEdit
        Left = 21
        Top = 17
        Width = 82
        Height = 24
        BorderStyle = bsNone
        Color = clMenuBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 165
      Top = 16
      Width = 148
      Height = 49
      Caption = 'Turno do Caixa'
      Enabled = False
      TabOrder = 1
      object edtTurno: TJvCalcEdit
        Left = 14
        Top = 16
        Width = 121
        Height = 24
        Alignment = taCenter
        BorderStyle = bsNone
        ButtonFlat = True
        Color = clMenuBar
        DisplayFormat = '#,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
      end
    end
    object GroupBox3: TGroupBox
      Left = 315
      Top = 17
      Width = 182
      Height = 48
      Caption = 'N'#186' do Caixa'
      Enabled = False
      TabOrder = 2
      object edtCaixa: TJvDBCalcEdit
        Left = 48
        Top = 16
        Width = 121
        Height = 24
        BorderStyle = bsNone
        ButtonFlat = True
        Color = clMenuBar
        DecimalPlaces = 0
        DisplayFormat = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        Value = 1.000000000000000000
        DecimalPlacesAlwaysShown = False
        DataField = 'CODIGO_CAIXA'
        DataSource = dsCaixa
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 72
      Width = 137
      Height = 57
      Caption = 'Entradas Realizadas'
      Enabled = False
      TabOrder = 3
      object JvDBCalcEdit1: TJvDBCalcEdit
        Left = 20
        Top = 21
        Width = 92
        Height = 24
        BorderStyle = bsNone
        Color = clMenuBar
        DecimalPlaceRound = True
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        Value = 68975.999999999970000000
        DisabledColor = clScrollBar
        DecimalPlacesAlwaysShown = True
        DataField = 'ENTRADAS_CAIXA'
        DataSource = dsCaixa
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 1
        Width = 136
        Height = 54
        Caption = 'Retiradas Realizadas'
        Enabled = False
        TabOrder = 1
        object JvDBCalcEdit2: TJvDBCalcEdit
          Left = 15
          Top = 21
          Width = 105
          Height = 22
          Flat = True
          ParentFlat = False
          BorderStyle = bsNone
          DecimalPlaceRound = True
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowButton = False
          ShowHint = False
          TabOrder = 0
          Value = 541414787.999999900000000000
          DecimalPlacesAlwaysShown = True
          DataField = 'RETIRADAS_CAIXA'
          DataSource = dsCaixa
        end
      end
    end
    object GroupBox5: TGroupBox
      Left = 146
      Top = 73
      Width = 119
      Height = 56
      Caption = 'Entradas a somar'
      TabOrder = 4
      object edtValor: TJvCalcEdit
        Left = 4
        Top = 22
        Width = 107
        Height = 21
        DecimalPlaceRound = True
        DisplayFormat = '0.00'
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
      end
    end
    object GroupBox6: TGroupBox
      Left = 266
      Top = 73
      Width = 232
      Height = 55
      Caption = 'Tipo de Opera'#231#227'o'
      TabOrder = 5
      object cobOperacao: TComboBox
        Left = 8
        Top = 24
        Width = 217
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Dinheiro '
        Items.Strings = (
          'Dinheiro '
          'Cheque'
          'Outra Forma')
      end
      object cobTipoOperacao: TComboBox
        Left = 6
        Top = 25
        Width = 218
        Height = 21
        Style = csDropDownList
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'Remessa Banc'#225'ria'
        Items.Strings = (
          'Remessa Banc'#225'ria'
          'Transfer'#234'ncia p/ Gerente'
          'Despesas do Dia '
          'Dinheiro em Caixa'
          'Outras Sa'#237'das'
          'Cart'#227'o de Cr'#233'dito ')
      end
      object cobTipOperacao1: TComboBox
        Left = 5
        Top = 24
        Width = 220
        Height = 21
        Style = csDropDownList
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = 'Recebimento de Outras Lojas'
        Items.Strings = (
          'Recebimento de Outras Lojas'
          'Outras Entradas ')
      end
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 130
      Width = 489
      Height = 47
      Caption = 'C. Corrente/Caixa - Destino'
      Enabled = False
      TabOrder = 6
      object cobContaBanco: TDBLookupComboBox
        Left = 5
        Top = 17
        Width = 476
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'CODIGO_BANCO'
        ListField = 'CODIGO_BANCO;DESCRICAO_BANCO'
        ListFieldIndex = 1
        ListSource = DataSource1
        ParentFont = False
        TabOrder = 0
        OnExit = cobContaBancoExit
      end
    end
    object GroupBox8: TGroupBox
      Left = 8
      Top = 177
      Width = 489
      Height = 56
      Caption = 'Observa'#231#227'o'
      TabOrder = 7
      object edtObservacao: TEdit
        Left = 5
        Top = 16
        Width = 476
        Height = 21
        TabOrder = 0
      end
    end
    object btnGravar: TBitBtn
      Left = 334
      Top = 238
      Width = 82
      Height = 29
      Caption = '&Gravar'
      TabOrder = 8
      OnClick = btnGravarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100008C00000000000000FF00
        FF001DC93B00C4DBC30000A4030070D4710039A739005ECF6F00067C0E0099C9
        9B0018AE3F0048C55000F7FAF7003AE869001DA73200258A270032DD5C007CDE
        8C005DB9650015A61F00A3E9B200E9EDE7003DC84C0058E87800086B080080DD
        9A00078D0D00A7DEAB002DD550002BAC3A001BB132006CD18200D0F1D3004BC1
        4C0014A717002C942C004AED76005BC6620082FFAC002BBE3A00118321009BE3
        9E0075B579001A891A007FD982002BA52B002BB42E00BAFFCD003AE1600073FA
        9A0042BE43008AE28B001BBF360027CE49000973090029B6500031A43100179B
        2F006BD06C0032C55F00B6F2C40037CD4C000A881C009BF8AF0046E9720053C5
        55007CDC7D0021B5310022B84A00FFFFFF005AD27C000B7B160007740F00CFF6
        DC003196320083DE930042F5790068E985002185220013CD380050BC5300B1E5
        B500E6FDE7000B9D1000A1ECAE0028B12B0083F6A00053C55D0041DB610021A5
        310020AD22007FDE820073E37F0033A83F0012B018001590280061D6850043C4
        530014BE330065D56C002A9A33006BD66B00A2C6A2005BBB680047B8560033BC
        3F000E8B250088D4910037D2520009932500D3FDDE00006600001EAE4100107B
        1900E6F9E80016AB1A000F720F0002A5090043E36A0048D054005ACD5F003EE3
        630008841400F8FDF80079E6890016AD1F0042C54A0064E37C002FD650004EF1
        7C002BAF2B0044C0480020BE330065D77C0087E3960056CE5E001EAD310087E1
        8700219429001CC1330000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000001010101016F
        18186F6F6F010101010101010136710F4A4A4E74186F6F010101010171235005
        42423A5023746F6F010101716478425B424233893A06746F6F01018A0B638741
        292C833A2C6338186F01281D7716271B4552255A413A212B6F6F5F613D8B6B45
        157B722E7321412D186F39076C34030C6809455175553282366F0E1158356785
        4F5D154557752E5A366F394B1730101079622A45207D2222366F391F3F0D2440
        76301E6645250453366F01373C314C814079808812695E1A36010170466E264C
        0D101C0284161308480101014460492F564D7F7C5C437A470101010101443B19
        145486070E3E3E01010101010101010A0A0A0E6D6A0101010101}
    end
    object BitBtn2: TBitBtn
      Left = 418
      Top = 238
      Width = 78
      Height = 29
      Caption = '&Fechar'
      TabOrder = 9
      OnClick = BitBtn2Click
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
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = dmCx02.cdsContaBanco
    Left = 192
    Top = 122
  end
  object dsCaixa: TDataSource
    DataSet = dmCx02.cdsCaixa
    Left = 168
    Top = 32
  end
end
