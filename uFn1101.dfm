object frmFn1101: TfrmFn1101
  Left = 221
  Top = 114
  Width = 696
  Height = 507
  BorderIcons = [biSystemMenu]
  Caption = 'Faturamento'
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 673
    Height = 87
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 7
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
    end
    object Label2: TLabel
      Left = 10
      Top = 30
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 120
      Top = 8
      Width = 34
      Height = 13
      Caption = 'C.F.OP'
    end
    object Label4: TLabel
      Left = 162
      Top = 30
      Width = 57
      Height = 13
      Caption = 'Propriedade'
    end
    object Label5: TLabel
      Left = 328
      Top = 30
      Width = 65
      Height = 13
      Caption = 'Data Emiss'#227'o'
    end
    object Label6: TLabel
      Left = 510
      Top = 55
      Width = 57
      Height = 13
      Caption = 'Forma Pgto '
    end
    object Label7: TLabel
      Left = 10
      Top = 55
      Width = 116
      Height = 13
      Caption = 'N'#186' Docus. Selecionados'
    end
    object Label8: TLabel
      Left = 328
      Top = 55
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object SpeedButton1: TSpeedButton
      Left = 253
      Top = 5
      Width = 22
      Height = 21
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
    object Label10: TLabel
      Left = 510
      Top = 30
      Width = 97
      Height = 13
      Caption = 'Reserva de Estoque'
    end
    object edtSelecionados: TJvValidateEdit
      Left = 136
      Top = 55
      Width = 90
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      MaxLength = 9
      TabOrder = 0
    end
    object edtValor: TJvValidateEdit
      Left = 400
      Top = 55
      Width = 100
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      MaxLength = 12
      TabOrder = 1
    end
    object edtSerie: TJvValidateEdit
      Left = 50
      Top = 6
      Width = 47
      Height = 21
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfAlphabetic
      EditText = 'NF'
      MaxLength = 2
      TabOrder = 2
      OnExit = edtSerieExit
    end
    object edtCFOP: TJvValidateEdit
      Left = 162
      Top = 6
      Width = 90
      Height = 21
      Alignment = taLeftJustify
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      EditText = '5102'
      MaxLength = 9
      TabOrder = 3
      OnEnter = edtCFOPEnter
      OnExit = edtCFOPExit
      OnKeyDown = edtCFOPKeyDown
    end
    object Edit1: TEdit
      Left = 276
      Top = 6
      Width = 386
      Height = 21
      TabStop = False
      Color = clCream
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 4
    end
    object edtCliente: TJvValidateEdit
      Left = 50
      Top = 31
      Width = 90
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      MaxLength = 9
      TabOrder = 5
      OnEnter = edtClienteEnter
      OnExit = edtClienteExit
      OnKeyDown = edtClienteKeyDown
    end
    object edtPropriedade: TJvValidateEdit
      Left = 229
      Top = 31
      Width = 90
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      MaxLength = 9
      TabOrder = 6
    end
    object edtEmissao: TJvDateEdit
      Left = 400
      Top = 31
      Width = 100
      Height = 21
      TabOrder = 7
      OnEnter = edtEmissaoEnter
      OnExit = edtEmissaoExit
    end
    object edtFormaPgto: TJvValidateEdit
      Left = 572
      Top = 55
      Width = 90
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      MaxLength = 9
      TabOrder = 9
      OnExit = edtFormaPgtoExit
    end
    object edtReserva: TEdit
      Left = 620
      Top = 31
      Width = 42
      Height = 21
      TabOrder = 8
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 454
    Width = 688
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
      end>
  end
  object Panel2: TPanel
    Left = 8
    Top = 101
    Width = 673
    Height = 321
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 8
      Top = 7
      Width = 655
      Height = 305
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
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
          FieldName = 'COD_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Venda'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SELECIONADO'
          Title.Alignment = taCenter
          Title.Caption = 'X'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 28
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SERIE_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'S'#233'rie'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOTAFISCAL_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Nota Fiscal'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CLIENTE_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NOME_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 317
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALOR_VENDA'
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
          Alignment = taCenter
          Expanded = False
          FieldName = 'FORMAPAGTO_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'TP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMAPAGTO_DESCRICAO'
          Visible = False
        end>
    end
    object RadioGroup1: TRadioGroup
      Left = 532
      Top = 238
      Width = 129
      Height = 73
      Items.Strings = (
        '1 - N'#186' Venda'
        '2 - N'#186' Documento'
        '3 - Data')
      TabOrder = 1
      Visible = False
      OnClick = RadioGroup1Click
    end
    object Panel3: TPanel
      Left = 10
      Top = 264
      Width = 522
      Height = 46
      TabOrder = 2
      Visible = False
      object Label9: TLabel
        Left = 18
        Top = 17
        Width = 46
        Height = 13
        Caption = 'Pesquisar'
      end
      object edtPesquisar: TMaskEdit
        Left = 71
        Top = 14
        Width = 437
        Height = 21
        MaxLength = 40
        TabOrder = 0
        OnKeyDown = edtPesquisarKeyDown
      end
    end
  end
  object btnConcluir: TBitBtn
    Left = 530
    Top = 426
    Width = 75
    Height = 25
    Caption = '&Concluir'
    TabOrder = 3
    OnClick = btnConcluirClick
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
  object btnSair: TBitBtn
    Left = 606
    Top = 426
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 4
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
    DataSet = dmFn1101.cdsGrid
    Left = 8
    Top = 424
  end
end
