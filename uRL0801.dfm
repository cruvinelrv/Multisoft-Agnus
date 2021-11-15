object frmRL0801: TfrmRL0801
  Left = 290
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Previs'#227'o de Recebimento'
  ClientHeight = 216
  ClientWidth = 438
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
    Width = 437
    Height = 178
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 0
    object Label2: TLabel
      Left = 22
      Top = 19
      Width = 38
      Height = 13
      Caption = 'Per'#237'odo'
    end
    object Label10: TLabel
      Left = 254
      Top = 19
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label3: TLabel
      Left = 22
      Top = 45
      Width = 82
      Height = 13
      Caption = 'Per'#237'odo Refen. a'
    end
    object Label1: TLabel
      Left = 22
      Top = 71
      Width = 67
      Height = 13
      Caption = 'Taxa de Juros'
    end
    object Label4: TLabel
      Left = 22
      Top = 99
      Width = 29
      Height = 13
      Caption = 'S'#233'ries'
    end
    object Label8: TLabel
      Left = 22
      Top = 130
      Width = 136
      Height = 13
      Caption = 'Imprime Reserva de Estoque'
    end
    object Label9: TLabel
      Left = 220
      Top = 132
      Width = 26
      Height = 13
      Caption = '(S\N)'
    end
    object edtDataIni: TJvDateEdit
      Left = 118
      Top = 16
      Width = 121
      Height = 21
      DefaultToday = True
      TabOrder = 0
      OnExit = edtDataIniExit
    end
    object edtDataFim: TJvDateEdit
      Left = 280
      Top = 15
      Width = 121
      Height = 21
      DefaultToday = True
      TabOrder = 1
      OnExit = edtDataFimExit
    end
    object cbxPeriodo: TComboBox
      Left = 118
      Top = 42
      Width = 121
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 2
      Text = 'Vencimento'
      Items.Strings = (
        'Emiss'#227'o'
        'Vencimento'
        'Pagamento')
    end
    object edtSerie: TEdit
      Left = 118
      Top = 95
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnExit = edtSerieExit
    end
    object edtReserva: TEdit
      Left = 163
      Top = 127
      Width = 49
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object edtTaxa: TDBEdit
      Left = 118
      Top = 68
      Width = 121
      Height = 21
      DataField = 'TAXA_DE_JUROS'
      DataSource = dmRL0801.dtsTaxa
      TabOrder = 5
    end
  end
  object btnImprimir: TBitBtn
    Left = 273
    Top = 182
    Width = 79
    Height = 30
    Caption = '&Imprimir'
    TabOrder = 1
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
  object btnFechar: TBitBtn
    Left = 356
    Top = 182
    Width = 79
    Height = 30
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = btnFecharClick
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      777770000000777777777777777770000000777777777777770F700000007777
      0F777777777770000000777000F7777770F770000000777000F777770F777000
      00007777000F77700F777000000077777000F700F7777000000077777700000F
      7777700000007777777000F777777000000077777700000F7777700000007777
      7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
      00007700F7777777700F70000000777777777777777770000000777777777777
      777770000000}
  end
  object rptRelatorio: TppReport
    AutoStop = False
    DataPipeline = dmRL0801.ppDBConsulta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 10
    Top = 183
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBConsulta'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 5292
        mmWidth = 11853
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 9790
        mmWidth = 1482
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 794
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 5292
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P'#225'gina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 171980
        mmTop = 9790
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'lblEmpresa'
        OnGetText = ppLabel18GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '123456789.123456789.123456789.123456789.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 794
        mmWidth = 59267
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 15081
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'lblNomeRel'
        OnGetText = ppLabel19GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome do Relat'#243'rio...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 60854
        mmTop = 794
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'lblParam1'
        OnGetText = ppLabel20GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Par'#226'metros do Relar'#243'rio...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 60854
        mmTop = 5292
        mmWidth = 38523
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'lblParam2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Par'#226'metros do Relar'#243'rio...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 60854
        mmTop = 9790
        mmWidth = 38523
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 20638
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'lblData'
        OnGetText = ppLabel22GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblData'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 794
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 16669
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 18785
        mmTop = 16669
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Venci.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 16669
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 16669
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 62177
        mmTop = 16669
        mmWidth = 11642
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vnd.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 118004
        mmTop = 16669
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Prt.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 129646
        mmTop = 16669
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 154252
        mmTop = 16669
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Juros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 168540
        mmTop = 16669
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Tot.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 181769
        mmTop = 16669
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tp.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 142346
        mmTop = 16669
        mmWidth = 5027
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DUPLICATA_RECEBER'
        DataPipeline = dmRL0801.ppDBConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBConsulta'
        mmHeight = 4233
        mmLeft = 529
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMISSAO_RECEBER'
        DataPipeline = dmRL0801.ppDBConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBConsulta'
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VENCIMENTO_RECEBER'
        DataPipeline = dmRL0801.ppDBConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBConsulta'
        mmHeight = 4233
        mmLeft = 32279
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppVariable4: TppVariable
        UserName = 'Dias'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtDouble
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        ResetComponent = ppGroup1
        ResetType = veGroupEnd
        Transparent = True
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = dmRL0801.ppDBConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBConsulta'
        mmHeight = 4233
        mmLeft = 62177
        mmTop = 0
        mmWidth = 54240
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_VENDEDOR_RECEBER'
        DataPipeline = dmRL0801.ppDBConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBConsulta'
        mmHeight = 4233
        mmLeft = 118269
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_PORTADOR_RECEBER'
        DataPipeline = dmRL0801.ppDBConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBConsulta'
        mmHeight = 4233
        mmLeft = 129911
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppVariable3: TppVariable
        UserName = 'Juros'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = True
        CalcOrder = 1
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        OnCalc = ppVariable3Calc
        ResetComponent = ppGroup1
        ResetType = veGroupEnd
        Transparent = True
        mmHeight = 4233
        mmLeft = 168540
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppVariable2: TppVariable
        UserName = 'Valor'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        ResetComponent = ppGroup1
        ResetType = veGroupEnd
        Transparent = True
        mmHeight = 4233
        mmLeft = 154252
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TIPO_DOCUMENTO_RECEBER'
        DataPipeline = dmRL0801.ppDBConsulta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBConsulta'
        mmHeight = 4233
        mmLeft = 142346
        mmTop = 0
        mmWidth = 10319
        BandType = 4
      end
      object ppVariable6: TppVariable
        UserName = 'ValorTotal'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = True
        CalcOrder = 3
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = []
        OnCalc = ppVariable3Calc
        ResetComponent = ppGroup1
        ResetType = veGroupEnd
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 137319
        mmTop = 0
        mmWidth = 16510
        BandType = 7
      end
      object ppVariable8: TppVariable
        UserName = 'Variable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 168805
        mmTop = 0
        mmWidth = 12700
        BandType = 7
      end
      object ppVariable9: TppVariable
        UserName = 'Variable3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 1
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 0
        mmWidth = 12700
        BandType = 7
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 154517
        mmTop = 0
        mmWidth = 12700
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'VENCIMENTO_RECEBER'
      DataPipeline = dmRL0801.ppDBConsulta
      KeepTogether = True
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBConsulta'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLine6: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 529
          mmTop = 4763
          mmWidth = 196586
          BandType = 5
          GroupNo = 0
        end
        object ppLabel36: TppLabel
          UserName = 'Label11'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Subtotal :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 139965
          mmTop = 0
          mmWidth = 12435
          BandType = 5
          GroupNo = 0
        end
        object ppVariable10: TppVariable
          UserName = 'Total_Juros'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtDouble
          DisplayFormat = '#,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetComponent = ppGroup1
          ResetType = veGroupEnd
          Transparent = True
          mmHeight = 4233
          mmLeft = 168540
          mmTop = 0
          mmWidth = 12700
          BandType = 5
          GroupNo = 0
        end
        object ppVariable11: TppVariable
          UserName = 'Total_Total'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          BlankWhenZero = False
          CalcOrder = 1
          DataType = dtDouble
          DisplayFormat = '#,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetComponent = ppGroup1
          ResetType = veGroupEnd
          Transparent = True
          mmHeight = 4233
          mmLeft = 183092
          mmTop = 0
          mmWidth = 12700
          BandType = 5
          GroupNo = 0
        end
        object ppVariable5: TppVariable
          UserName = 'Variable5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          BlankWhenZero = False
          CalcOrder = 2
          DataType = dtDouble
          DisplayFormat = '#,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetComponent = ppGroup1
          ResetType = veGroupEnd
          Transparent = True
          mmHeight = 4233
          mmLeft = 154517
          mmTop = 0
          mmWidth = 11430
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060A
        446961734F6E43616C6306536F75726365068F70726F63656475726520446961
        734F6E43616C63287661722056616C75653A2056617269616E74293B0D0A6265
        67696E0D0A446961732E4173446F75626C65203A3D204442436F6E73756C7461
        5B274441544153595354454D5F454D50275D202D204442436F6E73756C74615B
        2756454E43494D454E544F5F52454345424552275D3B0D0A0D0A0D0A656E643B
        0D0A0D436F6D706F6E656E744E616D65060444696173094576656E744E616D65
        06064F6E43616C63074576656E74494402210001060F5472614576656E744861
        6E646C65720B50726F6772616D4E616D650611546F74616C5F4A75726F734F6E
        43616C630B50726F6772616D54797065070B747450726F63656475726506536F
        75726365068370726F63656475726520546F74616C5F4A75726F734F6E43616C
        63287661722056616C75653A2056617269616E74293B0D0A626567696E0D0A20
        546F74616C5F4A75726F732E4173446F75626C65203A3D20546F74616C5F4A75
        726F732E4173446F75626C65202B204A75726F732E4173446F75626C650D0A0D
        0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D65060B546F74616C5F4A
        75726F73094576656E744E616D6506064F6E43616C63074576656E7449440221
        0001060F5472614576656E7448616E646C65720B50726F6772616D4E616D6506
        11546F74616C5F546F74616C4F6E43616C630B50726F6772616D54797065070B
        747450726F63656475726506536F75726365068970726F63656475726520546F
        74616C5F546F74616C4F6E43616C63287661722056616C75653A205661726961
        6E74293B0D0A626567696E0D0A20546F74616C5F546F74616C2E4173446F7562
        6C65203A3D20546F74616C5F546F74616C2E4173446F75626C65202B2056616C
        6F72546F74616C2E4173446F75626C653B0D0A0D0A0D0A656E643B0D0A0D436F
        6D706F6E656E744E616D65060B546F74616C5F546F74616C094576656E744E61
        6D6506064F6E43616C63074576656E74494402210001060F5472614576656E74
        48616E646C65720B50726F6772616D4E616D65060F5661726961626C65324F6E
        43616C630B50726F6772616D54797065070B747450726F63656475726506536F
        75726365067E70726F636564757265205661726961626C65324F6E43616C6328
        7661722056616C75653A2056617269616E74293B0D0A626567696E0D0A205661
        726961626C65322E4173446F75626C65203A3D205661726961626C65322E4173
        446F75626C65202B204A75726F732E4173446F75626C653B0D0A0D0A0D0A656E
        643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C6532094576
        656E744E616D6506064F6E43616C63074576656E74494402210001060F547261
        4576656E7448616E646C65720B50726F6772616D4E616D65060F566172696162
        6C65334F6E43616C630B50726F6772616D54797065070B747450726F63656475
        726506536F75726365068370726F636564757265205661726961626C65334F6E
        43616C63287661722056616C75653A2056617269616E74293B0D0A626567696E
        0D0A205661726961626C65332E4173446F75626C65203A3D205661726961626C
        65332E4173446F75626C65202B2056616C6F72546F74616C2E4173446F75626C
        653B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661
        726961626C6533094576656E744E616D6506064F6E43616C63074576656E7449
        4402210001060F5472614576656E7448616E646C65720B50726F6772616D4E61
        6D65060F5661726961626C65354F6E43616C630B50726F6772616D5479706507
        0B747450726F63656475726506536F75726365067E70726F6365647572652056
        61726961626C65354F6E43616C63287661722056616C75653A2056617269616E
        74293B0D0A626567696E0D0A205661726961626C65352E4173446F75626C6520
        3A3D205661726961626C65352E4173446F75626C65202B2056616C6F722E4173
        446F75626C653B0D0A0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E616D
        6506095661726961626C6535094576656E744E616D6506064F6E43616C630745
        76656E74494402210001060F5472614576656E7448616E646C65720B50726F67
        72616D4E616D65060F5661726961626C65314F6E43616C630B50726F6772616D
        54797065070B747450726F63656475726506536F75726365067D70726F636564
        757265205661726961626C65314F6E43616C63287661722056616C75653A2056
        617269616E74293B0D0A626567696E0D0A205661726961626C65312E4173446F
        75626C65203A3D20205661726961626C65312E4173446F75626C65202B205661
        6C6F722E4173446F75626C653B0D0A0D0A656E643B0D0A0D436F6D706F6E656E
        744E616D6506095661726961626C6531094576656E744E616D6506064F6E4361
        6C63074576656E74494402210001060F5472614576656E7448616E646C65720B
        50726F6772616D4E616D65060B56616C6F724F6E43616C6306536F7572636506
        C370726F6365647572652056616C6F724F6E43616C63287661722056616C7565
        3A2056617269616E74293B0D0A626567696E0D0A20206966204442436F6E7375
        6C74615B2756616C6F725F546F74616C275D203E2030207468656E0D0A202020
        202056616C7565203A3D204442436F6E73756C74615B2756616C6F725F546F74
        616C275D0D0A2020656C73650D0A202020202056616C7565203A3D204442436F
        6E73756C74615B2756414C4F525F52454345424552275D3B0D0A0D0A0D0A656E
        643B0D0A0D436F6D706F6E656E744E616D65060556616C6F72094576656E744E
        616D6506064F6E43616C63074576656E74494402210001060F5472614576656E
        7448616E646C65720B50726F6772616D4E616D65061056616C6F72546F74616C
        4F6E43616C630B50726F6772616D54797065070B747450726F63656475726506
        536F75726365066C70726F6365647572652056616C6F72546F74616C4F6E4361
        6C63287661722056616C75653A2056617269616E74293B0D0A626567696E0D0A
        2056616C7565203A3D204A75726F732E4173446F75626C65202B2056616C6F72
        2E4173446F75626C653B0D0A0D0A656E643B0D0A0D436F6D706F6E656E744E61
        6D65060A56616C6F72546F74616C094576656E744E616D6506064F6E43616C63
        074576656E74494402210000}
    end
    object ppParameterList2: TppParameterList
    end
  end
end
