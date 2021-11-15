object frmRL100102: TfrmRL100102
  Left = 249
  Top = 142
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Etiqueta em impressora matricial / HP'
  ClientHeight = 398
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 593
    Height = 354
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 336
      Width = 111
      Height = 13
      Caption = 'Total de registos: 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 8
      Top = 80
      Width = 577
      Height = 57
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 4
        Width = 37
        Height = 13
        Caption = 'Produto'
      end
      object SpeedButton1: TSpeedButton
        Left = 64
        Top = 19
        Width = 23
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
      object Label2: TLabel
        Left = 443
        Top = 4
        Width = 20
        Height = 13
        Caption = 'Qtd.'
      end
      object edtCodProduto: TJvValidateEdit
        Left = 7
        Top = 20
        Width = 55
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        TabOrder = 0
        OnExit = edtCodProdutoExit
        OnKeyDown = edtCodProdutoKeyDown
      end
      object edtDescProduto: TEdit
        Left = 89
        Top = 20
        Width = 352
        Height = 19
        TabStop = False
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object Edit1: TEdit
        Left = 443
        Top = 19
        Width = 25
        Height = 21
        TabOrder = 1
        Text = '1'
      end
      object UpDown1: TUpDown
        Left = 468
        Top = 19
        Width = 16
        Height = 21
        Associate = Edit1
        Min = 1
        Max = 10000
        Position = 1
        TabOrder = 3
      end
      object Button3: TBitBtn
        Left = 496
        Top = 16
        Width = 75
        Height = 25
        Caption = '&Confirma'
        TabOrder = 4
        OnClick = Button3Click
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
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 144
      Width = 577
      Height = 185
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Caption = 'Qtd Etiquetas'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO'
          Title.Caption = 'C'#243'digo'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o do produto'
          Width = 228
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Caption = 'Valor'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODFAB'
          Title.Caption = 'C'#243'digo de F'#225'brica'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBS'
          Title.Caption = 'OBS /  Aplica'#231#227'o'
          Width = 375
          Visible = True
        end>
    end
  end
  object Button2: TBitBtn
    Left = 526
    Top = 368
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 1
    OnClick = Button2Click
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
  object Button1: TBitBtn
    Left = 446
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = Button1Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFE2D6CECAD4D1D2E9E6
      E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEFEFCBCCCBB8B4B3D3
      D5D6C4B9B7BCBBAED3D3B4998A84634F51ADA6A5FAFBFBFFFFFFFFFFFFFFFFFF
      FFFFFFB0ACA6AFA9A4BBBCBC8178709B8482E4DBC3FBE0C759AD5495DC94EDDF
      CC796566B7B5B6FFFFFFF9F9FABFBBB9959391E3E4E4FEFFFFE1E1E0A7A7A787
      69657B6B6B3B7E975493A754965641AE4EFFFAF3CAC4B6F5F5F2D6D7D6D4D2D1
      FAFBFBF2F3F3E6E6E6E1E0E0C6C1C0A18685574B49486C7AA9A5A2D4C8B3D7C7
      B9DAD9D7FBFAFAFFFFFFDCDDDBE8EAEBEDEDECE5E4E3DFDEDEE3E1E1D3D5D4D3
      D0CFB7B1B18A756D7858597D706DA59798FFFFFFFFFFFFFFFFFFDCDCDBDAD9D8
      E4E3E1D4D3D3D9D8D9EBEBEBBDB7B6C2BDB9DEDFDEDBD4D0AA9D98847E7CA29C
      9CFFFFFFFFFFFFFFFFFFD8D8D5D2CFCFD6D5D5D4D3D3EEF0EFE9F1F03F39391D
      19186D6A69C8C5C5E6E5E2C3C1BE9D9C9DFFFFFFFFFFFFFFFFFFE0DFDDB7B5B4
      E7E6E6F5F8F8E7E4E2AE91928A6464665957352F2D2C2829928B8BCBC8C9A4A4
      A4FFFFFFFFFFFFFFFFFFEBEAEBA39F9DB5B6B59A8D89B78184D17C84C98186A8
      76798A7171544847322D2CABA3A0CCCBCAFFFFFFFFFFFFFFFFFFF9F9F8C7C2BE
      F2E5DAC4B6AD947A799F6B6EBE7A80DA878FC97D82986A6CBCB7B5B5B5B2F8F8
      F8FFFFFFFFFFFFFFFFFFFFFFFFDCD9D6E6DCCFFFEFDEF4DECFBCADA68A6E6CA4
      6D72BC7A7FD1BFBFC0C3C1DBDBD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1DEDE
      EEDED5FDFFFDFFF3E6FFEAD7E0D3C99B9694ACA9A7B5B9B8EDEBEAFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAF7DFD9CEF2DCCFF3F2F0FCFCF8FBEDE2DF
      DCDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBE9E8E5E8D9C9F1E4DCEDE8E1D7D3D4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9EFE5DFD3C8C0FC
      FBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object rdgModelo_Etiqueta: TRadioGroup
    Left = 16
    Top = 13
    Width = 577
    Height = 65
    Caption = 'Modelos da Etiqueta'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      '1 - Etiquetas de j'#243'ias (3.3cm x 1cm) - 2 Colunas'
      '2 - Etiqueta (2.6cm x 1.5 cm) - 5 Colunas'
      '3 - Etiqueta ( 3.8 x 2.4) - 5 Colunas com C'#243'd. de Barra'
      '4 - Etiqueta (8,0 x 3,1) - 1 Coluna')
    TabOrder = 3
  end
  object rptModelo_01: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 240
    Top = 181
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand7: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 11430
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 7620
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15500
        mmTop = 0
        mmWidth = 5080
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102000
        mmTop = 4498
        mmWidth = 11430
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102000
        mmTop = 0
        mmWidth = 7620
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117475
        mmTop = 0
        mmWidth = 5080
        BandType = 4
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Pen.Style = psClear
        mmHeight = 3969
        mmLeft = 0
        mmTop = 8731
        mmWidth = 127000
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 4498
        mmWidth = 8890
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        OnGetText = ppLabel8GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117475
        mmTop = 4498
        mmWidth = 8890
        BandType = 4
      end
    end
    object ppColumnFooterBand7: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsItens
    OnDataChange = DataSource1DataChange
    Left = 8
    Top = 365
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsImp
    UserName = 'DBPipeline1'
    Left = 208
    Top = 181
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODPRO'
      FieldName = 'CODPRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'DESCRICAO2'
      FieldName = 'DESCRICAO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODPRO2'
      FieldName = 'CODPRO2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR2'
      FieldName = 'VALOR2'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      FieldAlias = 'CODFAB'
      FieldName = 'CODFAB'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      FieldAlias = 'CODFAB2'
      FieldName = 'CODFAB2'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
  end
  object cdsItens: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTD'
        DataType = ftInteger
      end
      item
        Name = 'CODPRO'
        DataType = ftInteger
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'CODFAB'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODBARRA'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 40
    Top = 365
    Data = {
      D00000009619E0BD010000001800000008000000000003000000D00009444553
      43524943414F0100490000000100055749445448020002001400035154440400
      01000000000006434F4450524F04000100000000000556414C4F520800040000
      00000006434F444641420100490000000100055749445448020002001400034F
      425301004900000001000557494454480200020014000A5245464552454E4349
      41010049000000010005574944544802000200140008434F4442415252410100
      4900000001000557494454480200020014000000}
    object cdsItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object cdsItensQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsItensCODPRO: TIntegerField
      FieldName = 'CODPRO'
    end
    object cdsItensVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsItensCODFAB: TStringField
      FieldName = 'CODFAB'
    end
    object cdsItensOBS: TStringField
      FieldName = 'OBS'
    end
    object cdsItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsItensCODBARRA: TStringField
      FieldName = 'CODBARRA'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 365
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      OnClick = Excluir1Click
    end
  end
  object dsImp: TDataSource
    DataSet = cdsImp
    Left = 176
    Top = 181
  end
  object cdsImp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODPRO'
        DataType = ftInteger
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'DESCRICAO2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODPRO2'
        DataType = ftInteger
      end
      item
        Name = 'VALOR2'
        DataType = ftFloat
      end
      item
        Name = 'CODFAB'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CODFAB2'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 144
    Top = 181
    Data = {
      CA0000009619E0BD010000001800000008000000000003000000CA0009444553
      43524943414F010049000000010005574944544802000200140006434F445052
      4F04000100000000000556414C4F5208000400000000000A4445534352494341
      4F32010049000000010005574944544802000200140007434F4450524F320400
      0100000000000656414C4F5232080004000000000006434F4446414201004900
      00000100055749445448020002000F0007434F44464142320100490000000100
      055749445448020002000F000000}
    object cdsImpDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object cdsImpCODPRO: TIntegerField
      FieldName = 'CODPRO'
    end
    object cdsImpVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsImpDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
    end
    object cdsImpCODPRO2: TIntegerField
      FieldName = 'CODPRO2'
    end
    object cdsImpVALOR2: TFloatField
      FieldName = 'VALOR2'
    end
    object cdsImpCODFAB: TStringField
      FieldName = 'CODFAB'
      Size = 15
    end
    object cdsImpCODFAB2: TStringField
      FieldName = 'CODFAB2'
      Size = 15
    end
  end
  object rptModelo_02: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6250
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 240
    Top = 213
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline2'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppLabel9: TppLabel
        UserName = 'Label3'
        OnGetText = ppLabel3GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4233
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31000
        mmTop = 4233
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31000
        mmTop = 0
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 61000
        mmTop = 0
        mmWidth = 27000
        BandType = 4
      end
      object ppRegion2: TppRegion
        UserName = 'Region1'
        Pen.Style = psClear
        mmHeight = 16933
        mmLeft = 151871
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label8'
        OnGetText = ppLabel8GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 61000
        mmTop = 4233
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        OnGetText = ppLabel11GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91000
        mmTop = 0
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        OnGetText = ppLabel15GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122000
        mmTop = 0
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        OnGetText = ppLabel17GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 8467
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        OnGetText = ppLabel18GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31000
        mmTop = 8467
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 61000
        mmTop = 8467
        mmWidth = 27000
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91000
        mmTop = 4233
        mmWidth = 27093
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        OnGetText = ppLabel21GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91000
        mmTop = 8467
        mmWidth = 27093
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        OnGetText = ppLabel22GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122000
        mmTop = 4233
        mmWidth = 27093
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        OnGetText = ppLabel23GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122000
        mmTop = 8467
        mmWidth = 27093
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBPipeline2: TppDBPipeline
    DataSource = dsimp2
    UserName = 'DBPipeline2'
    Left = 208
    Top = 213
    object ppDBPipeline2ppField1: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object ppDBPipeline2ppField2: TppField
      FieldAlias = 'CODIGOS'
      FieldName = 'CODIGOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDBPipeline2ppField3: TppField
      FieldAlias = 'PRECO'
      FieldName = 'PRECO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBPipeline2ppField4: TppField
      FieldAlias = 'DESCRICAO2'
      FieldName = 'DESCRICAO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppDBPipeline2ppField5: TppField
      FieldAlias = 'CODIGOS2'
      FieldName = 'CODIGOS2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppDBPipeline2ppField6: TppField
      FieldAlias = 'PRECO2'
      FieldName = 'PRECO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppDBPipeline2ppField7: TppField
      FieldAlias = 'DESCRICAO3'
      FieldName = 'DESCRICAO3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppDBPipeline2ppField8: TppField
      FieldAlias = 'CODIGOS3'
      FieldName = 'CODIGOS3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDBPipeline2ppField9: TppField
      FieldAlias = 'PRECO3'
      FieldName = 'PRECO3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppDBPipeline2ppField10: TppField
      FieldAlias = 'DESCRICAO4'
      FieldName = 'DESCRICAO4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppDBPipeline2ppField11: TppField
      FieldAlias = 'CODIGOS4'
      FieldName = 'CODIGOS4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object ppDBPipeline2ppField12: TppField
      FieldAlias = 'PRECO4'
      FieldName = 'PRECO4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppDBPipeline2ppField13: TppField
      FieldAlias = 'DESCRICAO5'
      FieldName = 'DESCRICAO5'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppDBPipeline2ppField14: TppField
      FieldAlias = 'CODIGOS5'
      FieldName = 'CODIGOS5'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppDBPipeline2ppField15: TppField
      FieldAlias = 'PRECO5'
      FieldName = 'PRECO5'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
  end
  object dsimp2: TDataSource
    DataSet = cdsimp2
    Left = 176
    Top = 213
  end
  object cdsimp2: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO5'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 144
    Top = 213
    Data = {
      CA0100009619E0BD01000000180000000F000000000003000000CA0109444553
      43524943414F010049000000010005574944544802000200140007434F444947
      4F53010049000000010005574944544802000200140005505245434F01004900
      000001000557494454480200020014000A44455343524943414F320100490000
      00010005574944544802000200140008434F4449474F53320100490000000100
      05574944544802000200140006505245434F3201004900000001000557494454
      480200020014000A44455343524943414F330100490000000100055749445448
      02000200140008434F4449474F53330100490000000100055749445448020002
      00140006505245434F3301004900000001000557494454480200020014000A44
      455343524943414F34010049000000010005574944544802000200140008434F
      4449474F5334010049000000010005574944544802000200140006505245434F
      3401004900000001000557494454480200020014000A44455343524943414F35
      010049000000010005574944544802000200140008434F4449474F5335010049
      000000010005574944544802000200140006505245434F350100490000000100
      0557494454480200020014000000}
    object cdsimp2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object cdsimp2CODIGOS: TStringField
      FieldName = 'CODIGOS'
    end
    object cdsimp2PRECO: TStringField
      FieldName = 'PRECO'
    end
    object cdsimp2DESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
    end
    object cdsimp2CODIGOS2: TStringField
      FieldName = 'CODIGOS2'
    end
    object cdsimp2PRECO2: TStringField
      FieldName = 'PRECO2'
    end
    object cdsimp2DESCRICAO3: TStringField
      FieldName = 'DESCRICAO3'
    end
    object cdsimp2CODIGOS3: TStringField
      FieldName = 'CODIGOS3'
    end
    object cdsimp2PRECO3: TStringField
      FieldName = 'PRECO3'
    end
    object cdsimp2DESCRICAO4: TStringField
      FieldName = 'DESCRICAO4'
    end
    object cdsimp2CODIGOS4: TStringField
      FieldName = 'CODIGOS4'
    end
    object cdsimp2PRECO4: TStringField
      FieldName = 'PRECO4'
    end
    object cdsimp2DESCRICAO5: TStringField
      FieldName = 'DESCRICAO5'
    end
    object cdsimp2CODIGOS5: TStringField
      FieldName = 'CODIGOS5'
    end
    object cdsimp2PRECO5: TStringField
      FieldName = 'PRECO5'
    end
  end
  object cdsImp3: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REFERECIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODBARRA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REFERECIA2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODBARRA2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REFERECIA3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODBARRA3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REFERECIA4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODBARRA4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAO5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODIGOS5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PRECO5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REFERECIA5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODBARRA5'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 144
    Top = 245
    Data = {
      F90200009619E0BD010000001800000019000000000003000000F90209444553
      43524943414F010049000000010005574944544802000200140007434F444947
      4F53010049000000010005574944544802000200140005505245434F01004900
      0000010005574944544802000200140009524546455245434941010049000000
      010005574944544802000200140008434F444241525241010049000000010005
      57494454480200020014000A44455343524943414F3201004900000001000557
      4944544802000200140008434F4449474F533201004900000001000557494454
      4802000200140006505245434F32010049000000010005574944544802000200
      14000A5245464552454349413201004900000001000557494454480200020014
      0009434F4442415252413201004900000001000557494454480200020014000A
      44455343524943414F3301004900000001000557494454480200020014000843
      4F4449474F533301004900000001000557494454480200020014000650524543
      4F3301004900000001000557494454480200020014000A524546455245434941
      33010049000000010005574944544802000200140009434F4442415252413301
      004900000001000557494454480200020014000A44455343524943414F340100
      49000000010005574944544802000200140008434F4449474F53340100490000
      00010005574944544802000200140006505245434F3401004900000001000557
      494454480200020014000A524546455245434941340100490000000100055749
      44544802000200140009434F4442415252413401004900000001000557494454
      480200020014000A44455343524943414F350100490000000100055749445448
      02000200140008434F4449474F53350100490000000100055749445448020002
      00140006505245434F3501004900000001000557494454480200020014000A52
      454645524543494135010049000000010005574944544802000200140009434F
      4442415252413501004900000001000557494454480200020014000000}
    object cdsImp3DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object cdsImp3CODIGOS: TStringField
      FieldName = 'CODIGOS'
    end
    object cdsImp3PRECO: TStringField
      FieldName = 'PRECO'
    end
    object cdsImp3REFERECIA: TStringField
      FieldName = 'REFERECIA'
    end
    object cdsImp3CODBARRA: TStringField
      FieldName = 'CODBARRA'
    end
    object cdsImp3DESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
    end
    object cdsImp3CODIGOS2: TStringField
      FieldName = 'CODIGOS2'
    end
    object cdsImp3PRECO2: TStringField
      FieldName = 'PRECO2'
    end
    object cdsImp3REFERECIA2: TStringField
      FieldName = 'REFERECIA2'
    end
    object cdsImp3CODBARRA2: TStringField
      FieldName = 'CODBARRA2'
    end
    object cdsImp3DESCRICAO3: TStringField
      FieldName = 'DESCRICAO3'
    end
    object cdsImp3CODIGOS3: TStringField
      FieldName = 'CODIGOS3'
    end
    object cdsImp3PRECO3: TStringField
      FieldName = 'PRECO3'
    end
    object cdsImp3REFERECIA3: TStringField
      FieldName = 'REFERECIA3'
    end
    object cdsImp3CODBARRA3: TStringField
      FieldName = 'CODBARRA3'
    end
    object cdsImp3DESCRICAO4: TStringField
      FieldName = 'DESCRICAO4'
    end
    object cdsImp3CODIGOS4: TStringField
      FieldName = 'CODIGOS4'
    end
    object cdsImp3PRECO4: TStringField
      FieldName = 'PRECO4'
    end
    object cdsImp3REFERECIA4: TStringField
      FieldName = 'REFERECIA4'
    end
    object cdsImp3CODBARRA4: TStringField
      FieldName = 'CODBARRA4'
    end
    object cdsImp3DESCRICAO5: TStringField
      FieldName = 'DESCRICAO5'
    end
    object cdsImp3CODIGOS5: TStringField
      FieldName = 'CODIGOS5'
    end
    object cdsImp3PRECO5: TStringField
      FieldName = 'PRECO5'
    end
    object cdsImp3REFERECIA5: TStringField
      FieldName = 'REFERECIA5'
    end
    object cdsImp3CODBARRA5: TStringField
      FieldName = 'CODBARRA5'
    end
  end
  object dsImp3: TDataSource
    DataSet = cdsImp3
    Left = 176
    Top = 245
  end
  object ppDBPipeline3: TppDBPipeline
    DataSource = dsImp3
    UserName = 'DBPipeline3'
    Left = 208
    Top = 245
    object ppDBPipeline3ppField1: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 0
    end
    object ppDBPipeline3ppField2: TppField
      FieldAlias = 'CODIGOS'
      FieldName = 'CODIGOS'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppDBPipeline3ppField3: TppField
      FieldAlias = 'PRECO'
      FieldName = 'PRECO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppDBPipeline3ppField4: TppField
      FieldAlias = 'REFERECIA'
      FieldName = 'REFERECIA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppDBPipeline3ppField5: TppField
      FieldAlias = 'CODBARRA'
      FieldName = 'CODBARRA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppDBPipeline3ppField6: TppField
      FieldAlias = 'DESCRICAO2'
      FieldName = 'DESCRICAO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppDBPipeline3ppField7: TppField
      FieldAlias = 'CODIGOS2'
      FieldName = 'CODIGOS2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppDBPipeline3ppField8: TppField
      FieldAlias = 'PRECO2'
      FieldName = 'PRECO2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppDBPipeline3ppField9: TppField
      FieldAlias = 'REFERECIA2'
      FieldName = 'REFERECIA2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppDBPipeline3ppField10: TppField
      FieldAlias = 'CODBARRA2'
      FieldName = 'CODBARRA2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppDBPipeline3ppField11: TppField
      FieldAlias = 'DESCRICAO3'
      FieldName = 'DESCRICAO3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object ppDBPipeline3ppField12: TppField
      FieldAlias = 'CODIGOS3'
      FieldName = 'CODIGOS3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppDBPipeline3ppField13: TppField
      FieldAlias = 'PRECO3'
      FieldName = 'PRECO3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppDBPipeline3ppField14: TppField
      FieldAlias = 'REFERECIA3'
      FieldName = 'REFERECIA3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppDBPipeline3ppField15: TppField
      FieldAlias = 'CODBARRA3'
      FieldName = 'CODBARRA3'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppDBPipeline3ppField16: TppField
      FieldAlias = 'DESCRICAO4'
      FieldName = 'DESCRICAO4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object ppDBPipeline3ppField17: TppField
      FieldAlias = 'CODIGOS4'
      FieldName = 'CODIGOS4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object ppDBPipeline3ppField18: TppField
      FieldAlias = 'PRECO4'
      FieldName = 'PRECO4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object ppDBPipeline3ppField19: TppField
      FieldAlias = 'REFERECIA4'
      FieldName = 'REFERECIA4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object ppDBPipeline3ppField20: TppField
      FieldAlias = 'CODBARRA4'
      FieldName = 'CODBARRA4'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object ppDBPipeline3ppField21: TppField
      FieldAlias = 'DESCRICAO5'
      FieldName = 'DESCRICAO5'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object ppDBPipeline3ppField22: TppField
      FieldAlias = 'CODIGOS5'
      FieldName = 'CODIGOS5'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object ppDBPipeline3ppField23: TppField
      FieldAlias = 'PRECO5'
      FieldName = 'PRECO5'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object ppDBPipeline3ppField24: TppField
      FieldAlias = 'REFERECIA5'
      FieldName = 'REFERECIA5'
      FieldLength = 20
      DisplayWidth = 20
      Position = 23
    end
    object ppDBPipeline3ppField25: TppField
      FieldAlias = 'CODBARRA5'
      FieldName = 'CODBARRA5'
      FieldLength = 20
      DisplayWidth = 20
      Position = 24
    end
  end
  object rptModelo_03: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline3
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6250
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 215000
    PrinterSetup.PaperSize = 177
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 240
    Top = 245
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline3'
    object ppColumnHeaderBand2: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 38000
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41000
        mmTop = 0
        mmWidth = 38000
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 81500
        mmTop = 0
        mmWidth = 38947
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122000
        mmTop = 0
        mmWidth = 38947
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163000
        mmTop = 0
        mmWidth = 38947
        BandType = 4
      end
      object ppBarCode1: TppBarCode
        UserName = 'BarCode1'
        BarCodeType = bcEAN_8
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Data = '20123451'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 0
        mmTop = 4498
        mmWidth = 38100
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 50800
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10583
        mmWidth = 38000
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41000
        mmTop = 10583
        mmWidth = 38000
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 81500
        mmTop = 10583
        mmWidth = 38947
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122000
        mmTop = 10583
        mmWidth = 38947
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163000
        mmTop = 10583
        mmWidth = 38947
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14817
        mmWidth = 38100
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41000
        mmTop = 14817
        mmWidth = 38100
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 81500
        mmTop = 14817
        mmWidth = 38894
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122000
        mmTop = 14817
        mmWidth = 38894
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163000
        mmTop = 14817
        mmWidth = 38894
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 19315
        mmWidth = 38100
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41000
        mmTop = 19315
        mmWidth = 38100
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 81500
        mmTop = 19315
        mmWidth = 38894
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 122000
        mmTop = 19315
        mmWidth = 38894
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TESTETESTETESTETESTESTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163000
        mmTop = 19050
        mmWidth = 38894
        BandType = 4
      end
      object ppBarCode2: TppBarCode
        UserName = 'BarCode2'
        BarCodeType = bcEAN_8
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Data = '20123451'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 41000
        mmTop = 4763
        mmWidth = 38100
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 25400
      end
      object ppBarCode3: TppBarCode
        UserName = 'BarCode3'
        BarCodeType = bcEAN_8
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Data = '20123451'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 81492
        mmTop = 4233
        mmWidth = 38100
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 25400
      end
      object ppBarCode4: TppBarCode
        UserName = 'BarCode4'
        BarCodeType = bcEAN_8
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Data = '20123451'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 121973
        mmTop = 4233
        mmWidth = 38100
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 25400
      end
      object ppBarCode5: TppBarCode
        UserName = 'BarCode5'
        BarCodeType = bcEAN_8
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Data = '20123451'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 6085
        mmLeft = 162984
        mmTop = 4498
        mmWidth = 38100
        BandType = 4
        mmBarWidth = 330
        mmWideBarRatio = 25400
      end
    end
    object ppColumnFooterBand2: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDBPipeline4: TppDBPipeline
    DataSource = dtsImp4
    UserName = 'DBPipeline4'
    Left = 208
    Top = 279
    object ppDBPipeline4ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CodigoProduto'
      FieldName = 'CodigoProduto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppDBPipeline4ppField2: TppField
      FieldAlias = 'DescricaoProduto'
      FieldName = 'DescricaoProduto'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object ppDBPipeline4ppField3: TppField
      FieldAlias = 'Referencia'
      FieldName = 'Referencia'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object ppDBPipeline4ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Preco'
      FieldName = 'Preco'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
  end
  object dtsImp4: TDataSource
    DataSet = cdsImp4
    Left = 176
    Top = 279
  end
  object cdsImp4: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodigoProduto'
        DataType = ftInteger
      end
      item
        Name = 'DescricaoProduto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Preco'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 144
    Top = 279
    Data = {
      820000009619E0BD01000000180000000400000000000300000082000D436F64
      69676F50726F6475746F04000100000000001044657363726963616F50726F64
      75746F01004900000001000557494454480200020028000A5265666572656E63
      69610100490000000100055749445448020002000F0005507265636F08000400
      000000000000}
    object cdsImp4CodigoProduto: TIntegerField
      FieldName = 'CodigoProduto'
    end
    object cdsImp4DescricaoProduto: TStringField
      FieldName = 'DescricaoProduto'
      Size = 40
    end
    object cdsImp4Referencia: TStringField
      FieldName = 'Referencia'
      Size = 15
    end
    object cdsImp4Preco: TFloatField
      FieldName = 'Preco'
    end
  end
  object rptModelo_04: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline4
    PrinterSetup.BinName = 'Manual Paper Feed'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 130302
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 5000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 121
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 240
    Top = 279
    Version = '10.02'
    mmColumnWidth = 76200
    DataPipelineName = 'ppDBPipeline4'
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Em caso de troca n'#227'o retirar esta etiqueta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 21960
        mmWidth = 62230
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        OnGetText = ppLabel45GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'A Prazo R$ '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 16933
        mmWidth = 23283
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        OnGetText = ppLabel44GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'A Vista R$ '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 11377
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Referencia'
        DataPipeline = ppDBPipeline4
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline4'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 6085
        mmWidth = 17145
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        OnGetText = ppLabel47GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label51'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 1058
        mmWidth = 14817
        BandType = 4
      end
      object ppDBBarCode2: TppDBBarCode
        UserName = 'DBBarCode2'
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CodigoProduto'
        DataPipeline = ppDBPipeline4
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline4'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 26723
        mmWidth = 80433
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 7408
        mmLeft = 25135
        mmTop = 30427
        mmWidth = 14817
        BandType = 4
      end
    end
  end
end
