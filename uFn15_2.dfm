object frmFn15_2: TfrmFn15_2
  Left = 206
  Top = 171
  Width = 666
  Height = 340
  Caption = 'Dados do Recibo'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 658
    Height = 305
    TabOrder = 0
    object Panel2: TPanel
      Left = 8
      Top = 8
      Width = 641
      Height = 289
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 13
        Width = 52
        Height = 13
        Caption = 'N'#186' Docum.'
      end
      object Label2: TLabel
        Left = 216
        Top = 13
        Width = 65
        Height = 13
        Caption = 'Data Vencito.'
      end
      object Label3: TLabel
        Left = 436
        Top = 13
        Width = 57
        Height = 13
        Caption = 'Data Pagto.'
      end
      object Label4: TLabel
        Left = 16
        Top = 39
        Width = 50
        Height = 13
        Caption = 'Valor Doc.'
      end
      object Label5: TLabel
        Left = 216
        Top = 39
        Width = 64
        Height = 13
        Caption = 'Juros/Desco.'
      end
      object Label6: TLabel
        Left = 436
        Top = 39
        Width = 52
        Height = 13
        Caption = 'Valor Pago'
      end
      object Label7: TLabel
        Left = 16
        Top = 91
        Width = 90
        Height = 13
        Caption = 'Dados do Emitente'
      end
      object Label8: TLabel
        Left = 16
        Top = 64
        Width = 53
        Height = 13
        Caption = 'Favorecido'
      end
      object Label15: TLabel
        Left = 16
        Top = 229
        Width = 41
        Height = 13
        Caption = 'Hist'#243'rico'
      end
      object Panel3: TPanel
        Left = 16
        Top = 104
        Width = 610
        Height = 113
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 6
        object Label9: TLabel
          Left = 5
          Top = 12
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label10: TLabel
          Left = 5
          Top = 36
          Width = 52
          Height = 13
          Caption = 'CPF/CNPJ'
        end
        object Label11: TLabel
          Left = 5
          Top = 60
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label12: TLabel
          Left = 5
          Top = 85
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label13: TLabel
          Left = 203
          Top = 85
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label14: TLabel
          Left = 558
          Top = 85
          Width = 14
          Height = 13
          Caption = 'UF'
        end
        object DBEdit8: TDBEdit
          Left = 70
          Top = 9
          Width = 327
          Height = 21
          Color = clWhite
          DataField = 'NOME_CLIENTE'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 70
          Top = 34
          Width = 121
          Height = 21
          Color = clWhite
          DataField = 'CNPJ_RECIBO'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 70
          Top = 58
          Width = 327
          Height = 21
          Color = clWhite
          DataField = 'ENDERECO_RECIBO'
          DataSource = DataSource1
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 70
          Top = 82
          Width = 121
          Height = 21
          Color = clWhite
          DataField = 'BAIRRO_RECIBO'
          DataSource = DataSource1
          TabOrder = 3
        end
        object DBEdit12: TDBEdit
          Left = 249
          Top = 82
          Width = 295
          Height = 21
          Color = clWhite
          DataField = 'DESCRICAO_CIDADE'
          DataSource = DataSource1
          TabOrder = 4
        end
        object DBEdit13: TDBEdit
          Left = 579
          Top = 82
          Width = 27
          Height = 21
          Color = clWhite
          DataField = 'ESTADO_RECIBO'
          DataSource = DataSource1
          TabOrder = 5
        end
      end
      object DBEdit1: TDBEdit
        Left = 81
        Top = 11
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'NUM_DOC_RECIBO'
        DataSource = DataSource1
        MaxLength = 12
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 292
        Top = 11
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'VENCIMENTO_RECIBO'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 505
        Top = 11
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'EMIS_PGTO_RECIBO'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 81
        Top = 36
        Width = 121
        Height = 21
        TabStop = False
        Color = clWhite
        DataField = 'VALOR_RECIBO'
        DataSource = DataSource1
        MaxLength = 12
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 505
        Top = 36
        Width = 121
        Height = 21
        Color = clWhite
        DataField = 'VALOR_PAGO_RECIBO'
        DataSource = DataSource1
        MaxLength = 12
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 81
        Top = 61
        Width = 332
        Height = 21
        Color = clWhite
        DataField = 'FAVORECIDO_RECIBO'
        DataSource = DataSource1
        TabOrder = 5
      end
      object DBMemo1: TDBMemo
        Left = 62
        Top = 229
        Width = 408
        Height = 50
        BevelInner = bvNone
        BevelOuter = bvRaised
        Color = clWhite
        DataField = 'HISTORICO_RECIBO'
        DataSource = DataSource1
        TabOrder = 7
        OnKeyDown = DBMemo1KeyDown
      end
      object btnImprimir: TBitBtn
        Left = 562
        Top = 255
        Width = 73
        Height = 27
        Caption = '&Imprimir'
        TabOrder = 8
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
      object DBEdit5: TJvValidateEdit
        Left = 292
        Top = 36
        Width = 121
        Height = 21
        CriticalPoints.MaxValueIncluded = False
        CriticalPoints.MinValueIncluded = False
        DisplayFormat = dfFloat
        DecimalPlaces = 2
        MaxLength = 12
        TabOrder = 9
      end
      object btnCancelar: TBitBtn
        Left = 483
        Top = 255
        Width = 75
        Height = 27
        Caption = '&Cancelar'
        TabOrder = 10
        OnClick = btnCancelarClick
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = dmFn0102.cdsRecibo
    Left = 472
    Top = 144
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = DataSource2
    RangeEnd = reCurrentRecord
    RangeBegin = rbCurrentRecord
    UserName = 'DBPipeline1'
    Left = 512
    Top = 144
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
    Left = 551
    Top = 144
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 116681
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
        mmTop = 10319
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
        DataField = 'VALOR_PAGO_RECIBO'
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
        mmTop = 46567
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
        DataField = 'VALOR_PAGO_RECIBO'
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
        mmTop = 46567
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
        mmTop = 53181
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
        mmTop = 59267
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
        mmTop = 59267
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
        mmTop = 65881
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
        DataField = 'NUM_DOC_RECIBO'
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
        mmTop = 65881
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
        mmTop = 65881
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
        mmTop = 65881
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
        Caption = 'Juros / Desconto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133879
        mmTop = 65881
        mmWidth = 43180
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR PAGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 74083
        mmWidth = 25400
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
        mmLeft = 65352
        mmTop = 74083
        mmWidth = 38629
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
        mmTop = 95779
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
        mmTop = 97631
        mmWidth = 22648
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
        mmTop = 103981
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
        mmTop = 103981
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
        mmTop = 112713
        mmWidth = 199496
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8996
        mmLeft = 114300
        mmTop = 82550
        mmWidth = 72496
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 16669
        mmLeft = 114300
        mmTop = 91546
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
        mmTop = 91811
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
        mmTop = 85196
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'LBCidadeEstadoData'
        OnGetText = ppLabel17GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'LBCidadeEstadoData'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 82550
        mmWidth = 45720
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
        mmLeft = 48154
        mmTop = 74083
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Recebemos de'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 40481
        mmWidth = 30480
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 40481
        mmWidth = 18785
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label20'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 74083
        mmWidth = 17780
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        OnGetText = ppLabel21GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label21'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 65881
        mmWidth = 17780
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
  object DataSource1: TDataSource
    DataSet = dmFn0102.cdsRecibo
    Left = 456
    Top = 72
  end
end
