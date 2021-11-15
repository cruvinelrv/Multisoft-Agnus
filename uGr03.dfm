object frmGr03: TfrmGr03
  Left = 214
  Top = 156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'a Balan'#231'o'
  ClientHeight = 450
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  DesignSize = (
    688
    450)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 399
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 686
      Height = 223
      Align = alClient
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 682
        Height = 161
        Align = alClient
        DataSource = dsProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
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
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 314
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADE_PRODUTO'
            Title.Caption = 'Unid'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Estoque'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOUNIT_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o Venda'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCAL_ESTOQUE_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Loca'#231#227'o'
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
            FieldName = 'FABRICA_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Fabrica'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALIDADE_PRODUTO'
            Title.Caption = 'Validade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BARRA_PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd de Barra'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object pnlPesquisa: TPanel
        Left = 2
        Top = 176
        Width = 682
        Height = 45
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        Visible = False
        object Label13: TLabel
          Left = 13
          Top = 15
          Width = 66
          Height = 16
          Caption = 'Pesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtPesquisa: TEdit
          Left = 85
          Top = 10
          Width = 584
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnExit = edtPesquisaExit
          OnKeyDown = edtPesquisaKeyDown
        end
      end
    end
    object grpBalanco: TGroupBox
      Left = 1
      Top = 224
      Width = 686
      Height = 174
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        686
        174)
      object Label1: TLabel
        Left = 8
        Top = 77
        Width = 96
        Height = 13
        Caption = 'Estoque do Balan'#231'o'
      end
      object Label2: TLabel
        Left = 8
        Top = 101
        Width = 96
        Height = 13
        Caption = 'Validade do Produto'
      end
      object Label3: TLabel
        Left = 255
        Top = 80
        Width = 77
        Height = 13
        Caption = 'Pre'#231'o de Venda'
      end
      object Label4: TLabel
        Left = 256
        Top = 104
        Width = 73
        Height = 13
        Caption = 'Pre'#231'o de Custo'
      end
      object Label5: TLabel
        Left = 471
        Top = 77
        Width = 42
        Height = 13
        Caption = 'Loca'#231#227'o'
      end
      object Label6: TLabel
        Left = 471
        Top = 101
        Width = 82
        Height = 13
        Caption = 'Pre'#231'o de Compra'
      end
      object Label7: TLabel
        Left = 11
        Top = 130
        Width = 80
        Height = 13
        Caption = 'Data do Balan'#231'o'
      end
      object DBText1: TDBText
        Left = 112
        Top = 130
        Width = 95
        Height = 17
        Color = clCream
        DataField = 'DATA_BALANCO'
        DataSource = dsBalanco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 4
        Top = 62
        Width = 675
        Height = 3
        Anchors = [akLeft, akTop, akRight]
        Style = bsRaised
      end
      object Label8: TLabel
        Left = 8
        Top = 16
        Width = 37
        Height = 13
        Caption = 'Produto'
      end
      object DBText2: TDBText
        Left = 49
        Top = 15
        Width = 40
        Height = 17
        Alignment = taRightJustify
        Color = clCream
        DataField = 'CODIGO_PRODUTO'
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
        Left = 94
        Top = 15
        Width = 443
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Color = clCream
        DataField = 'DESCRICAO_PRODUTO'
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
        Left = 171
        Top = 38
        Width = 150
        Height = 17
        Color = clCream
        DataField = 'BARRA_PRODUTO'
        DataSource = dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 106
        Top = 40
        Width = 61
        Height = 13
        Caption = 'C'#243'digo Barra'
      end
      object Label10: TLabel
        Left = 328
        Top = 40
        Width = 45
        Height = 13
        Caption = 'Est. Atual'
      end
      object DBText5: TDBText
        Left = 377
        Top = 39
        Width = 77
        Height = 15
        Alignment = taRightJustify
        Color = clCream
        DataField = 'ESTOQUE_PRODUTO'
        DataSource = dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 595
        Top = 13
        Width = 83
        Height = 17
        Anchors = [akTop, akRight]
        Color = clCream
        DataField = 'UNIDADE_PRODUTO'
        DataSource = dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 551
        Top = 14
        Width = 40
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Unidade'
      end
      object DBText7: TDBText
        Left = 504
        Top = 40
        Width = 33
        Height = 17
        Alignment = taRightJustify
        Color = clCream
        DataField = 'GRUPO_PRODUTO'
        DataSource = dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 472
        Top = 40
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object DBText8: TDBText
        Left = 541
        Top = 40
        Width = 138
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Color = clCream
        DataField = 'DESCRICAO_GRUPO'
        DataSource = dsGrupo
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 112
        Top = 101
        Width = 98
        Height = 21
        DataField = 'VALIDADE_PRODUTO'
        DataSource = dsProduto
        TabOrder = 1
      end
      object JvDBCalcEdit2: TJvDBCalcEdit
        Left = 336
        Top = 77
        Width = 95
        Height = 21
        DecimalPlaceRound = True
        DecimalPlaces = 3
        DisplayFormat = '0.000'
        FormatOnEditing = True
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = True
        DataField = 'PRECOUNIT_PRODUTO'
        DataSource = dsProduto
        EmptyIsNull = False
      end
      object JvDBCalcEdit3: TJvDBCalcEdit
        Left = 336
        Top = 101
        Width = 95
        Height = 21
        DecimalPlaceRound = True
        DecimalPlaces = 3
        DisplayFormat = '0.000'
        FormatOnEditing = True
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = True
        DataField = 'PRECO_CUSTO_PRODUTO'
        DataSource = dsProduto
        EmptyIsNull = False
      end
      object JvDBCalcEdit4: TJvDBCalcEdit
        Left = 559
        Top = 98
        Width = 97
        Height = 21
        DecimalPlaceRound = True
        DecimalPlaces = 3
        DisplayFormat = '0.000'
        FormatOnEditing = True
        ShowButton = False
        TabOrder = 5
        DecimalPlacesAlwaysShown = True
        DataField = 'PRECO_COMPRA_PRODUTO'
        DataSource = dsProduto
        EmptyIsNull = False
      end
      object DBEdit1: TDBEdit
        Left = 558
        Top = 73
        Width = 97
        Height = 21
        DataField = 'LOCAL_ESTOQUE_PRODUTO'
        DataSource = dsProduto
        TabOrder = 4
      end
      object edtQuantBalanco: TJvCalcEdit
        Left = 112
        Top = 75
        Width = 98
        Height = 21
        DecimalPlaces = 3
        DisplayFormat = '0.000'
        FormatOnEditing = True
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
      end
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 38
        Width = 87
        Height = 17
        TabStop = False
        Caption = 'Utiliza Grade'
        DataField = 'GRADE_PRODUTO'
        DataSource = dsProduto
        ReadOnly = True
        TabOrder = 6
        ValueChecked = 'T'
        ValueUnchecked = 'F'
      end
    end
  end
  object BitBtn3: TBitBtn
    Left = 609
    Top = 400
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 2
    TabStop = False
    OnClick = BitBtn3Click
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 431
    Width = 688
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '[Esc] '#187' Volta'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[G] '#187' Filtra Grupo'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[F10] '#187' Procura'
        Width = 150
      end
      item
        Alignment = taCenter
        Text = '[Enter] '#187' Lan'#231'a Balan'#231'o'
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object btnGravar: TBitBtn
    Left = 533
    Top = 400
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Gravar'
    Enabled = False
    TabOrder = 1
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
  object dsProduto: TDataSource
    DataSet = dmGr03.cdsProdutos
    OnDataChange = dsProdutoDataChange
    Left = 428
    Top = 126
  end
  object dsGrupo: TDataSource
    DataSet = dmGr03.cdsGrupoProduto
    Left = 481
    Top = 126
  end
  object dsBalanco: TDataSource
    DataSet = dmGr03.cdsBalanco
    Left = 152
    Top = 320
  end
end
