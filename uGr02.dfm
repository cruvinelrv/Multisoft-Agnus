object frmGr02: TfrmGr02
  Left = 198
  Top = 120
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Entrada'
  ClientHeight = 541
  ClientWidth = 778
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 522
    Align = alClient
    TabOrder = 0
    object btnGravar: TBitBtn
      Left = 541
      Top = 491
      Width = 75
      Height = 27
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 2
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
    object btnExcluir: TBitBtn
      Left = 391
      Top = 491
      Width = 75
      Height = 27
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 3
      OnClick = btnExcluirClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF01079F0313A90418AE0419AE0313A90108A0FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01049D041CB10730C00734C407
        35C50735C50734C30731C1041FB301069EFF00FFFF00FFFF00FFFF00FFFF00FF
        0109A1052BC30735C70733C20732C20732C20732C20732C20733C30735C4062D
        BE020CA4FF00FFFF00FFFF00FF01049B052BCA0636D80431CD0027C4032EC107
        32C20732C20430C10027BF042FC10735C4072EBE01069EFF00FFFF00FF031ABA
        0537E70331DD123DD86480E01840CB002CC1022DC00F38C46580D91B43C7052F
        C10735C5051FB3FF00FF01049E0430E40436F1002AE45070E9FFFFFFB7C4F10D
        36CA042DC3A2B2E8FFFFFF6984DA0026BE0733C30731C10108A0020FAF0336FA
        0335F80232EE0A35E88CA2F2FFFFFFB4C2F1A9B8EDFFFFFFA7B7E9133AC4052F
        C10732C20734C40313AA0619BC1747FE093AFC0435F80131F0002BE891A5F4FF
        FFFFFFFFFFABBAEF062FC5022DC00732C20732C20736C50419AE0B1DBE4168FE
        1C49FC0335FB0031F90531F2A4B5F7FFFFFFFFFFFFB9C6F20D36D0002CC60732
        C20732C20736C50418AD0613B45B7CFC486CFD0133FB113CFBA1B4FEFFFFFFA4
        B6F892A7F5FFFFFFB6C4F21A41D3042FC80732C40734C30212A90003A04A6AF3
        8FA6FF1F46FB4C6FFCFFFFFFA7B8FE0733F6002AED8CA2F6FFFFFF627FE70028
        D00734CC0730C300069FFF00FF1A2FCB99AFFF8BA2FE214DFB4D71FC0E3DFB00
        30FB0031F70636F14C6EF1103CE30432DB0636D7041CB5FF00FFFF00FF0004A0
        415EECB8C7FF9CAFFD3A5CFC0A3AFB0335FB0335FB0133F9052FF20635EB0537
        E9052CCD00049CFF00FFFF00FFFF00FF0309A54260ECA9BBFFBDCAFF8EA5FE64
        83FD5073FC4A6EFD3961FD1444F9042CD70109A2FF00FFFF00FFFF00FFFF00FF
        FF00FF0004A01E32CD5876F6859EFE8BA3FF7994FE5376FC234AF0051EC50104
        9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0004A00917B610
        22C30D1FC20311B401059FFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btnFechar1: TBitBtn
      Left = 692
      Top = 491
      Width = 75
      Height = 27
      Cancel = True
      Caption = '&Fechar'
      TabOrder = 4
      OnClick = btnFechar1Click
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
    object PageControl1: TPageControl
      Left = 8
      Top = 8
      Width = 759
      Height = 483
      ActivePage = TabSheet2
      TabOrder = 1
      OnExit = PageControl1Exit
      object TabSheet1: TTabSheet
        Caption = 'Identifica'#231#227'o'
        OnEnter = TabSheet1Enter
        object GroupBox1: TGroupBox
          Left = 4
          Top = 0
          Width = 261
          Height = 105
          TabOrder = 0
          object Label4: TLabel
            Left = 173
            Top = 38
            Width = 24
            Height = 13
            Caption = 'S'#233'rie'
          end
          object Label5: TLabel
            Left = 8
            Top = 38
            Width = 68
            Height = 13
            Caption = 'N'#186' Nota Fiscal'
          end
          object Label6: TLabel
            Left = 8
            Top = 16
            Width = 67
            Height = 13
            Caption = 'N'#186' da Entrada'
          end
          object Label2: TLabel
            Left = 8
            Top = 62
            Width = 80
            Height = 13
            Caption = 'Data de Emiss'#227'o'
          end
          object Label3: TLabel
            Left = 9
            Top = 86
            Width = 37
            Height = 13
            Caption = 'Entrada'
          end
          object DBText6: TDBText
            Left = 90
            Top = 15
            Width = 87
            Height = 17
            Alignment = taRightJustify
            Color = clCream
            DataField = 'CODIGO_COMPRA'
            DataSource = DataSource1
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object edtNotaFiscal: TDBEdit
            Left = 89
            Top = 34
            Width = 83
            Height = 21
            DataField = 'NOTAFISCAL_COMPRA'
            DataSource = DataSource1
            MaxLength = 6
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 200
            Top = 35
            Width = 53
            Height = 21
            CharCase = ecUpperCase
            DataField = 'SERIE2_COMPRA'
            DataSource = DataSource1
            TabOrder = 1
          end
          object edtEmissao: TJvDBDateEdit
            Left = 89
            Top = 56
            Width = 121
            Height = 21
            DataField = 'EMISSAO_COMPRA'
            DataSource = DataSource1
            DefaultToday = True
            TabOrder = 2
          end
          object edtDataEntrada: TJvDBDateEdit
            Left = 89
            Top = 80
            Width = 121
            Height = 21
            DataField = 'ENTRADA_COMPRA'
            DataSource = DataSource1
            DefaultToday = True
            TabOrder = 3
            OnExit = edtDataEntradaExit
          end
        end
        object GroupBox2: TGroupBox
          Left = 272
          Top = 0
          Width = 484
          Height = 104
          TabOrder = 1
          object Label1: TLabel
            Left = 13
            Top = 16
            Width = 28
            Height = 13
            Caption = 'CFOP'
            FocusControl = edtCFOP
          end
          object Label7: TLabel
            Left = 12
            Top = 40
            Width = 54
            Height = 13
            Caption = 'Fornecedor'
            FocusControl = edtFornecedor
          end
          object Label8: TLabel
            Left = 12
            Top = 64
            Width = 66
            Height = 13
            Caption = 'Transportador'
            FocusControl = edtTransporta
          end
          object DBText7: TDBText
            Left = 152
            Top = 13
            Width = 323
            Height = 20
            Color = clCream
            DataField = 'DESCRICAO_NAT'
            DataSource = dsCFOP
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object SpeedButton2: TSpeedButton
            Left = 125
            Top = 37
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
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 125
            Top = 61
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
            OnClick = SpeedButton3Click
          end
          object edtCFOP: TDBEdit
            Left = 84
            Top = 12
            Width = 63
            Height = 21
            DataField = 'CFOP_COMPRA'
            DataSource = DataSource1
            TabOrder = 0
            OnExit = edtCFOPExit
          end
          object edtFornecedor: TDBEdit
            Left = 84
            Top = 37
            Width = 42
            Height = 21
            DataField = 'FORNECEDOR_COMPRA'
            DataSource = DataSource1
            TabOrder = 1
            OnExit = edtFornecedorExit
            OnKeyDown = edtFornecedorKeyDown
          end
          object edtTransporta: TDBEdit
            Left = 84
            Top = 60
            Width = 42
            Height = 21
            DataField = 'TRANSPORTA_COMPRA'
            DataSource = DataSource1
            TabOrder = 2
            OnExit = edtTransportaExit
          end
          object Edit1: TEdit
            Left = 153
            Top = 38
            Width = 320
            Height = 19
            TabStop = False
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 3
          end
          object Edit2: TEdit
            Left = 153
            Top = 62
            Width = 320
            Height = 19
            TabStop = False
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object GroupBox3: TGroupBox
          Left = 4
          Top = 105
          Width = 389
          Height = 348
          TabOrder = 2
          object Label9: TLabel
            Left = 8
            Top = 19
            Width = 104
            Height = 13
            Caption = '(+) Valor dos Produtos'
          end
          object Label10: TLabel
            Left = 8
            Top = 41
            Width = 82
            Height = 13
            Caption = '(-)Total Desconto'
          end
          object Label11: TLabel
            Left = 16
            Top = 61
            Width = 79
            Height = 13
            Caption = 'Base calc. ICMS'
          end
          object Label12: TLabel
            Left = 16
            Top = 85
            Width = 53
            Height = 13
            Caption = 'Valor ICMS'
          end
          object Label13: TLabel
            Left = 16
            Top = 106
            Width = 80
            Height = 13
            Caption = 'Base ICMS Subs'
          end
          object Label14: TLabel
            Left = 8
            Top = 128
            Width = 80
            Height = 13
            Caption = '(+)Vlr ICMS Subs'
          end
          object Label15: TLabel
            Left = 8
            Top = 150
            Width = 91
            Height = 13
            Caption = '(o)Outras despesas'
          end
          object Label16: TLabel
            Left = 8
            Top = 173
            Width = 75
            Height = 13
            Caption = '(o)Valor do frete'
          end
          object Label17: TLabel
            Left = 8
            Top = 194
            Width = 86
            Height = 13
            Caption = '(o)Valor do seguro'
          end
          object Label18: TLabel
            Left = 16
            Top = 215
            Width = 55
            Height = 13
            Caption = 'Valor do IPI'
          end
          object Label19: TLabel
            Left = 16
            Top = 237
            Width = 61
            Height = 13
            Caption = 'Total Isentas'
          end
          object lblTotalIsenta: TLabel
            Left = 126
            Top = 237
            Width = 114
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label21: TLabel
            Left = 16
            Top = 259
            Width = 70
            Height = 13
            Caption = '(+)Total Outras'
          end
          object lblTotalOutras: TLabel
            Left = 126
            Top = 256
            Width = 114
            Height = 18
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label30: TLabel
            Left = 10
            Top = 296
            Width = 108
            Height = 13
            Caption = '(T) Valor Total da Nota'
          end
          object Bevel1: TBevel
            Left = 4
            Top = 285
            Width = 382
            Height = 3
            Style = bsRaised
          end
          object Bevel2: TBevel
            Left = 4
            Top = 316
            Width = 382
            Height = 3
            Style = bsRaised
          end
          object Label47: TLabel
            Left = 247
            Top = 36
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00%'
            Color = 14872817
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object lblPorcICMS: TLabel
            Left = 247
            Top = 82
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00%'
            Color = 14872817
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object lblPorcSubICMS: TLabel
            Left = 247
            Top = 125
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00%'
            Color = 14872817
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label53: TLabel
            Left = 250
            Top = 235
            Width = 65
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00%'
            Color = 14872817
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object lblProcOutras: TLabel
            Left = 247
            Top = 148
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00%'
            Color = 14872817
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object lblPorcFrete: TLabel
            Left = 247
            Top = 170
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00%'
            Color = 14872817
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object lblPorcSeguro: TLabel
            Left = 247
            Top = 192
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00%'
            Color = 14872817
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object lblPorcIPI: TLabel
            Left = 247
            Top = 213
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,00%'
            Color = 14872817
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object edtTotalNota: TJvDBCalcEdit
            Left = 124
            Top = 293
            Width = 117
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 10
            DecimalPlacesAlwaysShown = True
            DataField = 'VALOR_COMPRA'
            DataSource = DataSource1
          end
          object edtBaseCalcICMS: TJvDBCalcEdit
            Left = 126
            Top = 58
            Width = 115
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = True
            OnChange = edtBaseCalcICMSChange
            DataField = 'BICM_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
          object edtValorICMS: TJvDBCalcEdit
            Left = 126
            Top = 79
            Width = 115
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 3
            DecimalPlacesAlwaysShown = True
            OnChange = edtValorICMSChange
            DataField = 'VICM_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
          object edtBaseSubICMS: TJvDBCalcEdit
            Left = 126
            Top = 102
            Width = 115
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 4
            DecimalPlacesAlwaysShown = True
            OnChange = edtBaseSubICMSChange
            DataField = 'BICS_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
          object edtValorSubICMS: TJvDBCalcEdit
            Left = 126
            Top = 124
            Width = 115
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 5
            DecimalPlacesAlwaysShown = True
            OnChange = edtValorSubICMSChange
            DataField = 'VICS_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
          object edtValorOutras: TJvDBCalcEdit
            Left = 126
            Top = 147
            Width = 115
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 6
            DecimalPlacesAlwaysShown = True
            OnChange = edtValorOutrasChange
            DataField = 'OUTRAS_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
          object edtValorFrete: TJvDBCalcEdit
            Left = 126
            Top = 169
            Width = 115
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 7
            DecimalPlacesAlwaysShown = True
            OnChange = edtValorFreteChange
            DataField = 'FRETE_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
          object edtValorSeguro: TJvDBCalcEdit
            Left = 126
            Top = 191
            Width = 115
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 8
            DecimalPlacesAlwaysShown = True
            OnChange = edtValorSeguroChange
            DataField = 'SEGURO_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
          object edtValorIPI: TJvDBCalcEdit
            Left = 126
            Top = 214
            Width = 115
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 9
            DecimalPlacesAlwaysShown = True
            OnChange = edtValorIPIChange
            DataField = 'VIPI_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
          object edtTotalProdutos: TJvDBCalcEdit
            Left = 126
            Top = 15
            Width = 115
            Height = 21
            DisplayFormat = '0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = True
            OnChange = edtTotalProdutosChange
            DataField = 'VALORPRODUTO_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
          object edtTotalDesconto: TJvDBCalcEdit
            Left = 126
            Top = 37
            Width = 115
            Height = 21
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = True
            OnChange = edtTotalDescontoChange
            DataField = 'DESCONTO_COMPRA'
            DataSource = DataSource1
            EmptyIsNull = False
          end
        end
        object GroupBox4: TGroupBox
          Left = 395
          Top = 105
          Width = 358
          Height = 348
          TabOrder = 3
          object Label24: TLabel
            Left = 8
            Top = 43
            Width = 51
            Height = 13
            Caption = 'Peso bruto'
          end
          object Label25: TLabel
            Left = 8
            Top = 19
            Width = 68
            Height = 13
            Caption = 'Conhecimento'
          end
          object Label26: TLabel
            Left = 8
            Top = 66
            Width = 61
            Height = 13
            Caption = 'Peso Liquido'
          end
          object Label27: TLabel
            Left = 8
            Top = 89
            Width = 74
            Height = 13
            Caption = 'Tipo de Volume'
          end
          object Label28: TLabel
            Left = 8
            Top = 113
            Width = 64
            Height = 13
            Caption = 'Frete a Pagar'
          end
          object Label29: TLabel
            Left = 7
            Top = 139
            Width = 58
            Height = 13
            Caption = 'Observa'#231#227'o'
          end
          object JvDBCalcEdit3: TJvDBCalcEdit
            Left = 96
            Top = 38
            Width = 121
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = True
            DataField = 'PESOBRUTO_COMPRA'
            DataSource = DataSource1
          end
          object JvDBCalcEdit4: TJvDBCalcEdit
            Left = 96
            Top = 61
            Width = 121
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = True
            DataField = 'PESOLIQUIDO_COMPRA'
            DataSource = DataSource1
          end
          object DBEdit13: TDBEdit
            Left = 96
            Top = 14
            Width = 121
            Height = 21
            DataField = 'CONHECIMEN_COMPRA'
            DataSource = DataSource1
            TabOrder = 0
          end
          object DBEdit18: TDBEdit
            Left = 96
            Top = 84
            Width = 121
            Height = 21
            DataField = 'VOLUMES_COMPRA'
            DataSource = DataSource1
            TabOrder = 3
          end
          object DBEdit19: TDBEdit
            Left = 96
            Top = 108
            Width = 121
            Height = 21
            DataField = 'FRETE1_COMPRA'
            DataSource = DataSource1
            TabOrder = 4
          end
          object mTexto: TDBMemo
            Left = 4
            Top = 153
            Width = 348
            Height = 189
            DataField = 'OBSERVACAO'
            DataSource = DataSource1
            ScrollBars = ssVertical
            TabOrder = 5
            OnEnter = mTextoEnter
            OnExit = mTextoExit
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Itens'
        ImageIndex = 1
        OnEnter = TabSheet2Enter
        OnExit = TabSheet2Exit
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 751
          Height = 193
          Align = alClient
          DataSource = dsTempProdutos
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = DBGrid1Enter
          OnExit = DBGrid1Exit
          OnKeyDown = DBGrid1KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'CodigoProduto'
              Title.Caption = 'Cod.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DescricaoProduto'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o do Produto'
              Width = 375
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GradeProduto'
              Title.Alignment = taCenter
              Title.Caption = 'Grade'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantidade'
              Title.Alignment = taCenter
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PrecoCompra'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr Item'
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalCompra'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr total'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PrecoVenda'
              Title.Alignment = taCenter
              Title.Caption = 'Vlr Venda'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PrecoAtacado'
              Title.Alignment = taCenter
              Title.Caption = 'Atacado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Reducao'
              Title.Alignment = taCenter
              Title.Caption = 'Fator'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Validade'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMSEntrada'
              Title.Alignment = taCenter
              Title.Caption = '% ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IPIEntrada'
              Title.Alignment = taCenter
              Title.Caption = '% IPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CSTproduto'
              Title.Alignment = taCenter
              Title.Caption = 'CST'
              Visible = True
            end>
        end
        object grpProduto: TGroupBox
          Left = 0
          Top = 193
          Width = 751
          Height = 262
          Align = alBottom
          TabOrder = 1
          Visible = False
          object Label31: TLabel
            Left = 8
            Top = 17
            Width = 37
            Height = 13
            Caption = 'Produto'
          end
          object Label32: TLabel
            Left = 10
            Top = 43
            Width = 66
            Height = 13
            Caption = 'Estoque Atual'
          end
          object Label33: TLabel
            Left = 8
            Top = 67
            Width = 55
            Height = 13
            Caption = 'Quantidade'
          end
          object Label34: TLabel
            Left = 8
            Top = 92
            Width = 67
            Height = 13
            Caption = 'Pre'#231'o Compra'
          end
          object Label35: TLabel
            Left = 8
            Top = 118
            Width = 63
            Height = 13
            Caption = 'Total Compra'
          end
          object Label36: TLabel
            Left = 11
            Top = 140
            Width = 41
            Height = 13
            Caption = 'Validade'
          end
          object Label37: TLabel
            Left = 8
            Top = 164
            Width = 85
            Height = 13
            Caption = '% ICM de Entrada'
          end
          object Label38: TLabel
            Left = 8
            Top = 187
            Width = 64
            Height = 13
            Caption = '% IPI Produto'
          end
          object Label39: TLabel
            Left = 8
            Top = 211
            Width = 77
            Height = 13
            Caption = 'Pre'#231'o de Venda'
          end
          object Label40: TLabel
            Left = 8
            Top = 234
            Width = 96
            Height = 13
            Caption = 'Pre Vnd no Atacado'
          end
          object Bevel3: TBevel
            Left = 333
            Top = 38
            Width = 5
            Height = 222
            Style = bsRaised
          end
          object Label41: TLabel
            Left = 344
            Top = 45
            Width = 43
            Height = 13
            Caption = ' Unidade'
          end
          object DBText1: TDBText
            Left = 396
            Top = 44
            Width = 61
            Height = 17
            Alignment = taRightJustify
            BiDiMode = bdRightToLeftNoAlign
            Color = clCream
            DataSource = dsProduto
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentColor = False
            ParentFont = False
          end
          object Label42: TLabel
            Left = 344
            Top = 69
            Width = 50
            Height = 13
            Caption = 'Fabricante'
          end
          object Label43: TLabel
            Left = 344
            Top = 89
            Width = 86
            Height = 13
            Caption = 'C'#243'digo de F'#225'brica'
          end
          object Label44: TLabel
            Left = 474
            Top = 45
            Width = 61
            Height = 13
            Caption = 'C'#243'digo Barra'
          end
          object DBText2: TDBText
            Left = 432
            Top = 67
            Width = 316
            Height = 17
            Color = clCream
            DataSource = dsProduto
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 436
            Top = 87
            Width = 167
            Height = 17
            Color = clCream
            DataSource = dsProduto
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 540
            Top = 43
            Width = 207
            Height = 18
            Color = clCream
            DataSource = dsProduto
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label45: TLabel
            Left = 348
            Top = 123
            Width = 21
            Height = 13
            Caption = 'CST'
          end
          object Label46: TLabel
            Left = 348
            Top = 148
            Width = 44
            Height = 13
            Caption = 'Redu'#231#227'o'
          end
          object Label48: TLabel
            Left = 597
            Top = 184
            Width = 55
            Height = 13
            Caption = 'Quantidade'
          end
          object Bevel4: TBevel
            Left = 337
            Top = 110
            Width = 413
            Height = 3
            Style = bsRaised
          end
          object Bevel5: TBevel
            Left = 336
            Top = 220
            Width = 419
            Height = 3
            Style = bsRaised
          end
          object DBText5: TDBText
            Left = 229
            Top = 14
            Width = 416
            Height = 20
            Color = 14872817
            DataField = 'DESCRICAO_PRODUTO'
            DataSource = dsProduto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label23: TLabel
            Left = 648
            Top = 15
            Width = 29
            Height = 13
            Caption = 'Grade'
            FocusControl = edtGrade
          end
          object SpeedButton1: TSpeedButton
            Left = 228
            Top = 208
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
              73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
              0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
              0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
              0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
              0333337F777777737F333308888888880333337F333333337F33330888888888
              03333373FFFFFFFF733333700000000073333337777777773333}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object SpeedButton4: TSpeedButton
            Left = 205
            Top = 13
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
            OnClick = SpeedButton4Click
          end
          object edtEstoqueAtual: TJvDBCalcEdit
            Left = 109
            Top = 38
            Width = 117
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ReadOnly = True
            ShowButton = False
            TabOrder = 2
            DecimalPlacesAlwaysShown = True
            DataField = 'EstoqueAtual'
            DataSource = dsTempProdutos
          end
          object edtQuantidade: TJvDBCalcEdit
            Left = 109
            Top = 64
            Width = 117
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 3
            DecimalPlacesAlwaysShown = True
            OnChange = edtQuantidadeChange
            DataField = 'Quantidade'
            DataSource = dsTempProdutos
          end
          object edtPrecoCompra: TJvDBCalcEdit
            Left = 109
            Top = 88
            Width = 117
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 4
            DecimalPlacesAlwaysShown = True
            OnChange = edtPrecoCompraChange
            DataField = 'PrecoCompra'
            DataSource = dsTempProdutos
          end
          object edtTotalItem: TJvDBCalcEdit
            Left = 109
            Top = 112
            Width = 117
            Height = 21
            DecimalPlaceRound = True
            DisplayFormat = '0.00'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 5
            DecimalPlacesAlwaysShown = True
            OnExit = edtTotalItemExit
            DataField = 'TotalCompra'
            DataSource = dsTempProdutos
          end
          object edtICMSEntrada: TJvDBCalcEdit
            Left = 109
            Top = 160
            Width = 117
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 7
            DecimalPlacesAlwaysShown = True
            DataField = 'ICMSEntrada'
            DataSource = dsTempProdutos
          end
          object edtIPIProduto: TJvDBCalcEdit
            Left = 109
            Top = 184
            Width = 118
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 8
            DecimalPlacesAlwaysShown = True
            DataField = 'IPIEntrada'
            DataSource = dsTempProdutos
          end
          object edtPrecoVenda: TJvDBCalcEdit
            Left = 109
            Top = 208
            Width = 118
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 9
            DecimalPlacesAlwaysShown = True
            OnEnter = edtPrecoVendaEnter
            OnExit = edtPrecoVendaExit
            DataField = 'PrecoVenda'
            DataSource = dsTempProdutos
          end
          object edtPreVndAtacado: TJvDBCalcEdit
            Left = 109
            Top = 231
            Width = 118
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 3
            DisplayFormat = '0.000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 10
            DecimalPlacesAlwaysShown = True
            OnExit = edtPreVndAtacadoExit
            DataField = 'PrecoAtacado'
            DataSource = dsTempProdutos
          end
          object edtReducao: TJvDBCalcEdit
            Left = 412
            Top = 146
            Width = 117
            Height = 21
            DecimalPlaceRound = True
            DecimalPlaces = 4
            DisplayFormat = '0.0000'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 12
            DecimalPlacesAlwaysShown = True
            OnExit = edtReducaoExit
            DataField = 'Reducao'
            DataSource = dsTempProdutos
          end
          object edtQuantOcorrencia: TJvDBCalcEdit
            Left = 655
            Top = 180
            Width = 93
            Height = 21
            DecimalPlaceRound = True
            DisplayFormat = '0.00'
            FormatOnEditing = True
            TabOrder = 14
            DecimalPlacesAlwaysShown = True
            DataField = 'QuantOcorrencia'
            DataSource = dsTempProdutos
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 348
            Top = 171
            Width = 246
            Height = 34
            Caption = 'Ocorr'#234'ncia'
            Columns = 3
            DataField = 'Ocorrencia'
            DataSource = dsTempProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Items.Strings = (
              '&Avaria'
              '&Devolvido '
              '&Falta')
            ParentFont = False
            TabOrder = 13
            Values.Strings = (
              'A'
              'D'
              'F')
          end
          object BitBtn4: TBitBtn
            Left = 640
            Top = 227
            Width = 107
            Height = 30
            Caption = '&Incluir produto'
            TabOrder = 15
            OnClick = BitBtn4Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FF00007200007200006B000066000065000065FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0001B70001B7050DAC393EB058
              5AB25657AB2E2F9000006F000069000069FF00FFFF00FFFF00FFFF00FFFF00FF
              0016CE0915C66C74D9CED1F2FFFFFFFFFFFFFFFFFFFFFFFFC1C2DF5A5A9F0101
              6900007DFF00FFFF00FFFF00FF0018DF0A1DD3A8B0EDFFFFFFFFFFFFBDBEE98C
              8CD18D8DD0CACAEAFFFFFFFFFFFF8C8CBD010169000072FF00FFFF00FF0018DF
              919DEFFFFFFFE6E8F94F53CE0002AB00009D0000950000975F5FBEF0F0FAFFFF
              FF6565A6000072FF00FF001EF12743E7FBFBFFF7F8FD3B4BDA0000C0161DBEB0
              B4E7A3A5E00A0CA000008F5252B9FFFFFFD9D9E90B0B7F00007A001EF17287F6
              FFFFFF91A1F4000DDA000BD0161DCBF1F4FEDEE1F60508A900009A000093ACAC
              DDFFFFFF5353AF00007A0023F8A8B8FCFFFFFF4060F61734ECA0AEF2BABEF1F8
              F9FEF3F4FBB6B8E99799DC0D0EA25A5BBFFFFFFF8487D60000790E3EFEC5CFFE
              FFFFFF3259FE2649F9FAFCFFFFFFFFFFFFFFFFFFFFFFFFFFEBECF91519B14A4F
              C1FFFFFF9094D90000A23C63FFC4D0FFFFFFFF5979FF052EFF375CFB586DF4F0
              F3FEE3E6FA4D5ADE3446D20004B7757CD6FFFFFF797DD50000A8103EFFB6C5FF
              FFFFFFC7D2FF032CFF0020FF1739FBF3F6FFE1E5FA071FDC0007CE0C1CCBD9DC
              F5FDFDFE313CC80000A8FF00FF8DA4FFFFFFFFFFFFFF8AA0FF0027FF002CFF46
              6AFF4163F8001DE9061CDFA1ACF1FFFFFFB4BAED0007BBFF00FFFF00FF718DFF
              DAE1FFFFFFFFFFFFFFB1C0FF3B5DFF1538FF1739FE4966F8C0CAFAFFFFFFEDEF
              FC3041D30007BBFF00FFFF00FFFF00FF88A0FFE6EBFFFFFFFFFFFFFFFDFDFFE2
              E9FFE4EBFFFFFFFFFFFFFFDBE0FA3D50E0000BCCFF00FFFF00FFFF00FFFF00FF
              FF00FF8AA1FFBAC7FEE8ECFFFFFFFFFFFFFFFFFFFFE4E9FE889BF61738E6000B
              CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8AA0FF8AA3FF90
              A6FF7993FE4A6BF91A40EFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object cobCST: TDBLookupComboBox
            Left = 376
            Top = 119
            Width = 369
            Height = 21
            Color = clCream
            DataField = 'CSTproduto'
            DataSource = dsTempProdutos
            KeyField = 'CODIGO_SITUACAO'
            ListField = 'CODIGO_SITUACAO;DESCRICAO_SITUACAO'
            ListFieldIndex = 1
            ListSource = dsCST
            TabOrder = 11
          end
          object edtGrade: TDBEdit
            Left = 679
            Top = 11
            Width = 69
            Height = 21
            DataField = 'GradeProduto'
            DataSource = dsTempProdutos
            TabOrder = 1
            OnEnter = edtGradeEnter
          end
          object edtValidade: TJvDBDateEdit
            Left = 109
            Top = 136
            Width = 117
            Height = 21
            DataField = 'Validade'
            DataSource = dsTempProdutos
            DefaultToday = True
            TabOrder = 6
          end
          object edtProduto: TJvValidateEdit
            Left = 109
            Top = 14
            Width = 93
            Height = 21
            Alignment = taLeftJustify
            AutoSelect = False
            CriticalPoints.MaxValueIncluded = False
            CriticalPoints.MinValueIncluded = False
            TabOrder = 0
            OnKeyDown = edtProdutoKeyDown
          end
        end
      end
    end
    object btnIncluir: TBitBtn
      Left = 288
      Top = 491
      Width = 102
      Height = 27
      Caption = '&Nova entrada'
      TabOrder = 0
      OnClick = btnIncluirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100009900000000000000FF00
        FF0022C53A00BBE6BD000CA1110078D579005EC4600023B04900077C080097E9
        AF0032C76000EEF8ED0034A6340048B0560066CC7B0007910E004FC3510021AF
        310042EA7000C9FBD5008ADF8A006BB87000B3EDBC0074E88A0068D86E0017A1
        2D000E9629000F821F00036C07003CB64C0051C663002EC7440016A81A00FFFF
        FF0039A23C00AFD5B10092E492007CDB90001D8E1C0038CA4C0012A63700BBEF
        BF0072D684003DDE6600158F2C00187A190010A8160041D05300E6FCE6006CD1
        6C0024BD5200A2FCBB003BB5450059F98A008FE591003CBC5B0045F67C0026D2
        4B004ADD660004760900A7F4B70054BC63000F8A2200DAFADC009CCB9E0001B2
        190031BE4C0074D57500CBD9C70033E05D001CB52A0085DC89001F9D2F002087
        2000B6FFCE001DA23B005DCB5D0047CC530028B432001DAE200070C37B00087E
        12008BE2A00019BF300070DE7D0000660000B2E7B500087410004DD0630019A9
        3D0026B14B004CBD510012952E007BEF950013A81E0030C05B0045AD45005ACC
        6100EAFDEB00C2F5C5003CE86B0024CB420045BE48002EC34D0065D57700B8F4
        C80072BD76001AB223003ECF57000B89180024AD260019811F0064CE76004EF8
        820007B82100086C080061CC620056C35C0041EE7200F1FFF1000B7D16000B71
        0B001EB229004ACC5700109421008EE38E0088EC95007BDD7F0062C6620031AC
        30001FB72E0075B3770070EB890013992D0036C34500218C210075D88D0037E3
        62001E8A260012AB1A002BBA55003CBB3F0043C0590031B5310021AD210071CC
        780047CA6C001CAD430028B84F000F9E300011AF1E006DD5730042D45A000000
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
        0000000000000000000000000000000000000000000000000000010101010155
        555555555501010101010101011C792D49492D735555550101010101576F2206
        4343806049735555010101788A5B7F3636363636310C79555501016F34189761
        7B61614314970C7355011B484D4D86829163476E10054C2655553E1D2F1F0272
        6A77297A2E6674811C557C1E9865581603303F2956668D8F08551A703A393D21
        2162622121754F6E0855850E84894283230B2140154E202008554B373C121264
        6744216841968B043B1C0193523338712B0D506C53466B0F5701015A5F694A35
        76453965277B5E5157010101940A0913335D177E54116D7801010101018C3292
        88252A8E193E1B0101010101010101075928955C2C0101010101}
    end
    object btnAlterar: TBitBtn
      Left = 466
      Top = 491
      Width = 75
      Height = 27
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 5
      OnClick = btnAlterarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100004F00000000000000FF00
        FF00009DD700AB5ED900DCB7DC00006F9D0058ABCB0073E3F1004D4B480027DE
        F6008BD6D700329ABC00025B8B0037A6CD000083BD003D52A40063F2F800C1A6
        EA00F7D9F5000CF9FD0000B1E8004176980024819900A5FEFE00185A900051DA
        E500CF60F70000558000007CAB00469BC100F69BFF001C93BE0000D6FD00315E
        75006455BE00004E79000069960019B7E50000AEE600987DDB0073DEEF00CE85
        EB000E7DAC00FFFFFF00004A730083F9FF0018FEFF000093C600FFB8FE003DAB
        C90000BBF600186D910011527200005C840000649400B6FFFF0069B9CB006CF8
        FB00007BB2000073AD00066E9D00FDD9FF00217BA70056D9F0001B9EC6001186
        B1001E699A00004F7A00006C9D000076A400008CBD0000608C0022FCFE0065F9
        FA000085B600309DC9000080B00079E1EC000052730000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000010101010101
        01010101010101010101011B3434431B1B010101010101010101010C21081641
        1B1B1B010101010101010147330A2D3F40361B1B01010101010101363C073707
        250205231B01010101010144440B170932140205231B010101010101452A192E
        2032260205231B0101010101013B1F104820322602444E1B01010101014A3A4B
        102E2032263815431B0101010101460E0D3913204D04030F1B0101010101012F
        2F0D491712291A221B010101010101012F2F3112301E27181B01010101010101
        01464A063D114235350101010101010101014C1C1D3E36470101010101010101
        0101014545240101010101010101010101010101010101010101}
    end
    object btnCancelar: TBitBtn
      Left = 617
      Top = 491
      Width = 75
      Height = 27
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 6
      OnClick = btnCancelarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A0000
        9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A174AFD103BF400009AFF00FFFF
        00FFFF00FFFF00FF00009A002CF80030FC00009AFF00FFFF00FFFF00FFFF00FF
        00009A1A47F81A4CFF123BF100009AFF00FFFF00FF00009A012DF60132FF002A
        F300009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A1C47F61B4DFF143EF400
        009A00009A002DF80134FF032BF200009AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF00009A1D48F61D50FF103DFB0431FE0132FF002CF600009AFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A1A48F913
        42FF0C3CFF0733F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF00009A214EFC1D4BFF1847FF1743F600009AFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A2E5BF92C5FFF22
        4DF8204BF82355FF1B46F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00009A3664FA386BFF2D59F400009A00009A224CF42558FF1D49F60000
        9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A4071FA4274FF325DF100009AFF
        00FFFF00FF00009A224DF1275AFF204CF800009AFF00FFFF00FFFF00FFFF00FF
        00009A497AFC3B66F300009AFF00FFFF00FFFF00FFFF00FF00009A2550F42655
        FA00009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 522
    Width = 778
    Height = 19
    Panels = <
      item
        Width = 500
      end
      item
        Width = 50
      end>
  end
  object DataSource1: TDataSource
    DataSet = dmGr02.cdsCompras
    Left = 328
    Top = 196
  end
  object cdsTempProdutos: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 357
    Top = 225
    object cdsTempProdutosSeqProduto: TIntegerField
      FieldName = 'SeqProduto'
    end
    object cdsTempProdutosCodigoProduto: TIntegerField
      FieldName = 'CodigoProduto'
    end
    object cdsTempProdutosEstoqueAtual: TCurrencyField
      FieldName = 'EstoqueAtual'
    end
    object cdsTempProdutosQuantidade: TCurrencyField
      FieldName = 'Quantidade'
      DisplayFormat = '0.000'
    end
    object cdsTempProdutosPrecoCompra: TCurrencyField
      FieldName = 'PrecoCompra'
      DisplayFormat = '0.00'
    end
    object cdsTempProdutosTotalCompra: TCurrencyField
      FieldName = 'TotalCompra'
      DisplayFormat = '0.00'
    end
    object cdsTempProdutosValidade: TDateField
      FieldName = 'Validade'
    end
    object cdsTempProdutosICMSEntrada: TCurrencyField
      FieldName = 'ICMSEntrada'
    end
    object cdsTempProdutosIPIEntrada: TCurrencyField
      FieldName = 'IPIEntrada'
    end
    object cdsTempProdutosPrecoVenda: TCurrencyField
      FieldName = 'PrecoVenda'
      DisplayFormat = '0.00'
    end
    object cdsTempProdutosPrecoAtacado: TCurrencyField
      FieldName = 'PrecoAtacado'
      DisplayFormat = '0.00'
    end
    object cdsTempProdutosCSTproduto: TStringField
      FieldName = 'CSTproduto'
      Size = 3
    end
    object cdsTempProdutosReducao: TCurrencyField
      FieldName = 'Reducao'
      DisplayFormat = '0.0000'
    end
    object cdsTempProdutosOcorrencia: TStringField
      FieldName = 'Ocorrencia'
      Size = 1
    end
    object cdsTempProdutosQuantOcorrencia: TCurrencyField
      FieldName = 'QuantOcorrencia'
    end
    object cdsTempProdutosDescricaoProduto: TStringField
      FieldName = 'DescricaoProduto'
      Size = 60
    end
    object cdsTempProdutosCustoCompra: TCurrencyField
      FieldName = 'CustoCompra'
    end
    object cdsTempProdutosGradeProduto: TStringField
      FieldName = 'GradeProduto'
      Size = 4
    end
    object cdsTempProdutosCod_fabrica: TStringField
      FieldName = 'Cod_fabrica'
    end
    object cdsTempProdutosOBS: TStringField
      FieldName = 'OBS'
    end
  end
  object dsCFOP: TDataSource
    DataSet = dmGr02.qryNatureza
    Left = 357
    Top = 196
  end
  object dsProduto: TDataSource
    DataSet = dmGr02.qryProdutos
    Left = 386
    Top = 196
  end
  object dsTempProdutos: TDataSource
    DataSet = cdsTempProdutos
    OnDataChange = dsTempProdutosDataChange
    Left = 386
    Top = 225
  end
  object dsFornecedor: TDataSource
    DataSet = dmGr02.qryPesqFornecedor
    Left = 412
    Top = 128
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 225
    object ClientDataSet1llll: TStringField
      FieldName = 'llll'
      Size = 10
    end
  end
  object dsNatureza: TDataSource
    DataSet = dmGr02.qryNatureza
    Left = 383
    Top = 128
  end
  object dsCST: TDataSource
    DataSet = dmGr02.cdsCST
    Left = 440
    Top = 128
  end
  object dsTransportador: TDataSource
    DataSet = dmGr02.qryPesqTransportador
    Left = 468
    Top = 128
  end
end
