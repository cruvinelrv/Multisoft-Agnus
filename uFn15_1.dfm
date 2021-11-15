object frmFn15_1: TfrmFn15_1
  Left = 202
  Top = 171
  Width = 752
  Height = 464
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Emiss'#227'o de Recibos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 430
    TabOrder = 0
    object StatusBar1: TStatusBar
      Left = 1
      Top = 410
      Width = 649
      Height = 19
      Panels = <
        item
          Text = '[C] '#187' Consulta'
          Width = 75
        end
        item
          Text = '[A] '#187' Altera'
          Width = 63
        end
        item
          Text = '[Ins] '#187' Inclui'
          Width = 68
        end
        item
          Text = '[Del] '#187' Exclui'
          Width = 70
        end
        item
          Text = '[F10] '#187' Procura'
          Width = 83
        end
        item
          Text = '[R] '#187' Reimprime'
          Width = 50
        end>
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 6
      Width = 635
      Height = 399
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
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
          FieldName = 'CODIGO_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Recibo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM_DOC_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Documento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIP_DOC_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Documento '
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMIS_PGTO_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Data Emiss'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENCIMENTO_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROS_DESC_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Juros Desconto'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_PAGO_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Pago'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_FOR_RECIBO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'FAVORECIDO_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Favorecido'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_RECIBO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ENDERECO_RECIBO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BAIRRO_ENDERECO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CIDADE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ESTADO_ENDERECO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'HISTORICO_ENDERECO'
          Visible = False
        end>
    end
    object RadioGroup1: TRadioGroup
      Left = 506
      Top = 299
      Width = 134
      Height = 105
      BiDiMode = bdLeftToRight
      Caption = 'Op'#231#245'es'
      Items.Strings = (
        '1 - N'#186' do Recibo'
        '2 - N'#186' do Documento'
        '3 - Data Emiss'#227'o'
        '4 - Vencimento'
        '5 - Favorecido')
      ParentBiDiMode = False
      TabOrder = 2
      Visible = False
      OnClick = RadioGroup1Click
    end
    object Panel2: TPanel
      Left = 7
      Top = 362
      Width = 498
      Height = 41
      TabOrder = 3
      Visible = False
      object Label1: TLabel
        Left = 8
        Top = 15
        Width = 46
        Height = 13
        Caption = 'Pesquisar'
      end
      object Edit1: TMaskEdit
        Left = 60
        Top = 12
        Width = 422
        Height = 21
        MaxLength = 40
        TabOrder = 0
        OnKeyDown = Edit1KeyDown
      end
    end
  end
  object btnIncluir: TBitBtn
    Left = 658
    Top = 6
    Width = 80
    Height = 27
    Caption = '&Incluir'
    TabOrder = 1
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
    Left = 658
    Top = 33
    Width = 80
    Height = 27
    Caption = '&Alterar'
    TabOrder = 2
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
  object btnExcluir: TBitBtn
    Left = 658
    Top = 61
    Width = 80
    Height = 27
    Caption = '&Excluir'
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
  object btnGravar: TBitBtn
    Left = 658
    Top = 89
    Width = 80
    Height = 27
    Caption = '&Gravar'
    TabOrder = 4
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
    Left = 658
    Top = 399
    Width = 80
    Height = 27
    Caption = '&Sair'
    TabOrder = 5
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
  object btnImprimir: TBitBtn
    Left = 658
    Top = 117
    Width = 80
    Height = 27
    Caption = '&Imprimir'
    TabOrder = 6
    OnClick = btnImprimirClick
    Glyph.Data = {
      76050000424D7605000000000000360000002800000015000000150000000100
      18000000000040050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
      F5D4D1CCE4E3E1F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFAF2F1F1FFFFFFFFFFFFD3CECD8A8C
      8EDAC8BBA6948B554D4F847373E7E4E1FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFE7E9E9B9BAB99595927C76719A9897A59FA1B5A396FFFC
      DFC3E2B0C3D9AECFC0BB746663554444C0BEBEFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFF8F9FAA9A5A0A1988FCACACAC6C6C4958F868C6667CEC6B8EEE7C9DDC5
      B852934E52BF639FDA98FCF5DBB09F9C7B7370E9E9EAFFFFFF00FFFFFFE6E7E6
      A49E9A999897D9D9D9FCFFFEF0F1F1D1D0CFA5A7A78C7B7590716F8081834780
      923F81A269AF8B3881343DAF51FFFFEED7D3C7C5BFB0FFFFFF00E5E6E6ABA7A7
      E7E5E1F1F3F2F4F6F6EBECECE9E8E8DAD8D8C3BEBC9F77796756553F3E3F4497
      AF9EADB4B9B9A4C3CDA5E1DDC1BEBCB5E1DDDEFDFDF7FFFFFF00DDDEDBE3E3E4
      F6F9F8EDEEEFEAEAEAE6E5E4E0DFDFDFDEDEC8C7C6C9C4C1B4A5A1746A69664A
      477C706FADA59FCEB5ADA89F9FFFFFFBFFFFFFFFFFFFFFFFFF00DEDFDDD6D7D7
      EFF0F0E6E5E4E3E2E1E2E1E0DCDBDBE5E4E3D3D3D2D0CECDCBC8C7BEBBBA9D94
      8D936A6B534A46817775B0A4A3FFFFFFFFFFFFFFFFFFFFFFFF00DFE0DED1D0D0
      E9E8E6E0DFDED9D8D8D4D3D3E3E1E1E3E3E2C8C1C1C0B7B2E2E3E2D0CECDD2CA
      C7BBB2AC877975929090ABA4A3FFFFFFFFFFFFFFFFFFFFFFFF00DFE0DED0CECD
      DCDBDBD9D8D8CBCAC9DEDEDDF3F4F4E6E6E6504C4C201A18636262C5C3C2DDDA
      DACFCECCCBC4C0ACA9A8A4A4A4FFFFFFFFFFFFFFFFFFFFFFFF00DBD9D7C1BEBB
      DBDADBD2D1D0E5E5E5F4F4F3DCE0DFADB1B0614F4F5249482B26252E27278882
      82DBD8D7DADBDAB8B7B7A5A4A4FFFFFFFFFFFFFFFFFFFFFFFF00F8F8F89A9A99
      D6D4D3ECECECEBEAE9E7ECEBC69E9FA77173A77476896C6D726361483F3F1815
      14362E2EBAAEAEC0C0BFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFF00F9F9FAA6A19E
      B4B2B0ACADAB998D87A78787D07E85CF838AC58085B67A7D926E6F876F706357
      56241E1D888382BAB3AED2D2D2FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFC1BBB4
      CFCBCBF1E3D9B5ABA38570709D696CBE7D81CA8288CC8389CC8289AD76788D68
      698F7E7DD5D3D1A1A09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFF7F7F8
      B7B2A6F8EAD9FBE5D7E2D6CDB79D978165659B6D6FCF8289CE8289CD7D84A87F
      81DADFDEABA59FDEDEDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      C9BFBBF8EEE4FEEDDFFFE6D5FFE8D8D7CAC296857E7F696AA47777B69192E4E8
      E6BBB6B5D3D4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFEFE
      CDC6C3FCEDE3F9FDFCFCF7F1FEE8D8FFE6D5F0E2D9ADA9A7ADA9A4B6BABAB2B3
      B2EAE8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      F0E7E0D9D1C5FBE3D4F7F2EDF9FEFEFDF4EBFFEBDDCEC7C4FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFF5F3E8DBD7D4EED9CDE6E1DDFBFCF8F4F4F2C7C2C2FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFE6E6D3F6E1D5EBD6CAEEE1D4D1CCCAFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF8FBFCEAE0D9CEC4BDFBFAF9FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object DataSource1: TDataSource
    DataSet = dmFn15_1.cdsRecibo
    OnDataChange = DataSource1DataChange
    Left = 312
    Top = 152
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource1
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 352
    Top = 152
    object ppDBPipeline1ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_RECIBO'
      FieldName = 'CODIGO_RECIBO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'NUM_DOC_RECIBO'
      FieldName = 'NUM_DOC_RECIBO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'TIP_DOC_RECIBO'
      FieldName = 'TIP_DOC_RECIBO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'EMIS_PGTO_RECIBO'
      FieldName = 'EMIS_PGTO_RECIBO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'VENCIMENTO_RECIBO'
      FieldName = 'VENCIMENTO_RECIBO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_RECIBO'
      FieldName = 'VALOR_RECIBO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object ppDBPipeline1ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS_DESC_RECIBO'
      FieldName = 'JUROS_DESC_RECIBO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 6
    end
    object ppDBPipeline1ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_PAGO_RECIBO'
      FieldName = 'VALOR_PAGO_RECIBO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 7
    end
    object ppDBPipeline1ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_FOR_RECIBO'
      FieldName = 'CLI_FOR_RECIBO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppDBPipeline1ppField10: TppField
      FieldAlias = 'FAVORECIDO_RECIBO'
      FieldName = 'FAVORECIDO_RECIBO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 9
    end
    object ppDBPipeline1ppField11: TppField
      FieldAlias = 'CNPJ_RECIBO'
      FieldName = 'CNPJ_RECIBO'
      FieldLength = 18
      DisplayWidth = 18
      Position = 10
    end
    object ppDBPipeline1ppField12: TppField
      FieldAlias = 'ENDERECO_RECIBO'
      FieldName = 'ENDERECO_RECIBO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 11
    end
    object ppDBPipeline1ppField13: TppField
      FieldAlias = 'BAIRRO_RECIBO'
      FieldName = 'BAIRRO_RECIBO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppDBPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_CIDADE'
      FieldName = 'CODIGO_CIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppDBPipeline1ppField15: TppField
      FieldAlias = 'ESTADO_RECIBO'
      FieldName = 'ESTADO_RECIBO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object ppDBPipeline1ppField16: TppField
      FieldAlias = 'HISTORICO_RECIBO'
      FieldName = 'HISTORICO_RECIBO'
      FieldLength = 1
      DataType = dtMemo
      DisplayWidth = 10
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBPipeline1ppField17: TppField
      FieldAlias = 'DESCRICAO_CIDADE'
      FieldName = 'DESCRICAO_CIDADE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 16
    end
    object ppDBPipeline1ppField18: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 17
    end
    object ppDBPipeline1ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139500
    PrinterSetup.mmPaperWidth = 214001
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
    Left = 391
    Top = 152
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 111919
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDash
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 529
        mmWidth = 198438
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 84667
        mmTop = 2910
        mmWidth = 15240
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDash
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 8731
        mmWidth = 198438
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'R E C I B O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 72761
        mmTop = 14817
        mmWidth = 55880
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDash
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 72761
        mmTop = 20902
        mmWidth = 55827
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor do Documento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 27781
        mmWidth = 48260
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_RECIBO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 51329
        mmTop = 27781
        mmWidth = 30480
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Favorecido:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 34131
        mmWidth = 27940
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAVORECIDO_RECIBO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 30956
        mmTop = 34131
        mmWidth = 43180
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'a quantia l'#237'quida e certa de R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 40481
        mmWidth = 78740
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_RECIBO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 82815
        mmTop = 40481
        mmWidth = 30480
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data do Vencimento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 104246
        mmTop = 27781
        mmWidth = 48260
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VENCIMENTO_RECIBO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 27781
        mmWidth = 43180
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label7'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 46567
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Proveniente de'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 55033
        mmWidth = 35560
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HISTORICO_RECIBO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 55033
        mmWidth = 40640
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nr Documento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 61648
        mmWidth = 33020
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_RECIBO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 36513
        mmTop = 61648
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 61648
        mmWidth = 15240
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_RECIBO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 97896
        mmTop = 61648
        mmWidth = 26723
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Juros:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 61648
        mmWidth = 15240
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'JUROS_DESC_RECIBO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 171715
        mmTop = 61648
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 69850
        mmWidth = 50800
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_PAGO_RECIBO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 71702
        mmTop = 69850
        mmWidth = 86360
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 41540
        mmTop = 78317
        mmWidth = 17780
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 8731
        mmTop = 91546
        mmWidth = 88900
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAVORECIDO_RECIBO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 29898
        mmTop = 93398
        mmWidth = 25188
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CPF/CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 99748
        mmWidth = 13335
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_RECIBO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 99748
        mmWidth = 30956
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDash
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 107950
        mmWidth = 199496
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8996
        mmLeft = 114300
        mmTop = 78317
        mmWidth = 72496
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 16669
        mmLeft = 114300
        mmTop = 87313
        mmWidth = 72496
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 16140
        mmLeft = 150019
        mmTop = 87577
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vistos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 142346
        mmTop = 80963
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Rio Verde-Go'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 78317
        mmWidth = 30480
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 54504
        mmTop = 69850
        mmWidth = 15240
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end
