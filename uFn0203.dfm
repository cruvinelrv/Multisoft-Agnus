object frmFn0203: TfrmFn0203
  Left = 203
  Top = 169
  Width = 642
  Height = 480
  Caption = 'Jun'#231#227'o de T'#237'tulos'
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
    Left = 4
    Top = 5
    Width = 625
    Height = 81
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 9
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 14
      Top = 33
      Width = 70
      Height = 13
      Caption = 'N'#186' Titulo Novo'
    end
    object Label3: TLabel
      Left = 14
      Top = 56
      Width = 100
      Height = 13
      Caption = 'T'#237'tulos Selecionados'
    end
    object Label4: TLabel
      Left = 383
      Top = 33
      Width = 56
      Height = 13
      Caption = 'Vencimento'
    end
    object Label5: TLabel
      Left = 383
      Top = 56
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object SpeedButton1: TSpeedButton
      Left = 210
      Top = 5
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
    object edtCliente: TJvValidateEdit
      Left = 120
      Top = 6
      Width = 88
      Height = 21
      Alignment = taLeftJustify
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      MaxLength = 9
      TabOrder = 0
      ZeroEmpty = True
      OnEnter = edtClienteEnter
      OnExit = edtClienteExit
      OnKeyDown = edtClienteKeyDown
    end
    object edtNTitulo: TEdit
      Left = 120
      Top = 30
      Width = 177
      Height = 21
      MaxLength = 12
      TabOrder = 2
      OnEnter = edtNTituloEnter
      OnExit = edtNTituloExit
    end
    object edtSelecionados: TJvValidateEdit
      Left = 120
      Top = 53
      Width = 112
      Height = 21
      TabStop = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      MaxLength = 9
      ReadOnly = True
      TabOrder = 4
    end
    object edtValor: TJvValidateEdit
      Left = 451
      Top = 53
      Width = 121
      Height = 21
      TabStop = False
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      MaxLength = 12
      ReadOnly = True
      TabOrder = 5
    end
    object edtData: TJvDateEdit
      Left = 451
      Top = 30
      Width = 121
      Height = 21
      TabOrder = 3
      OnExit = edtDataExit
    end
    object edtNome: TEdit
      Left = 233
      Top = 6
      Width = 338
      Height = 21
      TabStop = False
      MaxLength = 40
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 89
    Width = 625
    Height = 305
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 7
      Top = 8
      Width = 609
      Height = 289
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
          Expanded = False
          FieldName = 'DUPLICATA'
          Title.Alignment = taCenter
          Title.Caption = 'T'#237'tulo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CLIENTE'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Alignment = taCenter
          Title.Caption = 'Emiss'#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
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
          Expanded = False
          FieldName = 'JUROS'
          Title.Alignment = taCenter
          Title.Caption = 'Juros'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SELECIONADO'
          Title.Alignment = taCenter
          Title.Caption = 'S'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 29
          Visible = True
        end>
    end
  end
  object btnGravar: TBitBtn
    Left = 478
    Top = 398
    Width = 75
    Height = 27
    Caption = '&Gravar'
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
  object btnSair: TBitBtn
    Left = 555
    Top = 398
    Width = 75
    Height = 27
    Caption = '&Sair'
    TabOrder = 3
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
  object btnIncluir: TBitBtn
    Left = 324
    Top = 398
    Width = 75
    Height = 27
    Caption = '&Incluir'
    TabOrder = 4
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
  object btnExcluir: TBitBtn
    Left = 401
    Top = 398
    Width = 75
    Height = 27
    Caption = '&Excluir'
    TabOrder = 5
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 427
    Width = 634
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
  object DataSource1: TDataSource
    DataSet = dmFn0203.cdsGrid
    Left = 590
    Top = 15
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 213950
    PrinterSetup.PaperSize = 177
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 589
    Top = 49
    Version = '10.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 28310
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 1588
        mmWidth = 194998
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Nome_Empresa'
        OnGetText = ppLabel1GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome_Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 4233
        mmWidth = 17780
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Versao_Sistema'
        OnGetText = ppLabel2GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Versao_Sistema'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 10583
        mmWidth = 20743
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de T'#237'tulo Gerado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 81227
        mmTop = 4233
        mmWidth = 38523
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Data'
        OnGetText = ppLabel4GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176213
        mmTop = 4233
        mmWidth = 5927
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Hora'
        OnGetText = ppLabel5GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176213
        mmTop = 10583
        mmWidth = 5927
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 17198
        mmWidth = 195263
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 19050
        mmWidth = 13335
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 27781
        mmTop = 19050
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110861
        mmTop = 19050
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 131763
        mmTop = 19050
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PORTADOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 159015
        mmTop = 19050
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 19050
        mmWidth = 7408
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 24341
        mmWidth = 194998
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'N_Documento'
        OnGetText = ppLabel14GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N_Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 2117
        mmWidth = 16298
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Cod_Nome'
        OnGetText = ppLabel15GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cod_Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 27781
        mmTop = 2117
        mmWidth = 11853
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Data_Emis'
        OnGetText = ppLabel16GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data_Emis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110861
        mmTop = 2117
        mmWidth = 13335
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Data_Ven'
        OnGetText = ppLabel17GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data_Ven'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134144
        mmTop = 2117
        mmWidth = 11853
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label10'
        OnGetText = ppLabel18GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label10'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 159015
        mmTop = 2117
        mmWidth = 10372
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label12'
        OnGetText = ppLabel20GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label12'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 2117
        mmWidth = 10372
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 7673
        mmWidth = 194998
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      Visible = False
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
end
