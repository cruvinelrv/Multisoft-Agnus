object dmRelatorios: TdmRelatorios
  OldCreateOrder = False
  Left = 301
  Top = 275
  Height = 266
  Width = 322
  object rptLoja0330: TppReport
    AutoStop = False
    DataPipeline = dbpLoja0330
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
    Template.FileName = 'C:\desenvolvimento\relatorios\RelLoja0330.rtm'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 152
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpLoja0330'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 49742
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4234
        mmLeft = 29369
        mmTop = 794
        mmWidth = 16139
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo da Venda...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 794
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data da Venda......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 6085
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4498
        mmLeft = 29369
        mmTop = 5821
        mmWidth = 16139
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fatura...................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 11377
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FATURA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4498
        mmLeft = 29104
        mmTop = 11113
        mmWidth = 16139
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo Rec...............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 16669
        mmWidth = 25135
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 29104
        mmTop = 16669
        mmWidth = 70908
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o....................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 21960
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente..................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 27252
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '================================================================' +
          '=========================================================='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 32544
        mmWidth = 193929
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Or'#231'amento......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115359
        mmTop = 529
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115623
        mmTop = 5821
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Romaneio........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115623
        mmTop = 11113
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Estorno............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115623
        mmTop = 15875
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
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 36777
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 41010
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '================================================================' +
          '=========================================================='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 2381
        mmTop = 45508
        mmWidth = 194998
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 28575
        mmTop = 42069
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 37835
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vlr Unit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 45244
        mmTop = 42333
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vlr Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 77788
        mmTop = 42333
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tributa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 108744
        mmTop = 41804
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Serie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 123031
        mmTop = 37306
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 131763
        mmTop = 41804
        mmWidth = 8467
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 3969
        mmLeft = 138908
        mmTop = 794
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HORA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 138908
        mmTop = 5556
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ROMANEIO_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 138908
        mmTop = 10848
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EXCLUSAO_VENDA'
        DataPipeline = dbpLoja0330
        DisplayFormat = 'mm/dd/yyyy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 15610
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = dbpLoja0330Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLoja0330Itens'
        mmHeight = 3969
        mmLeft = 22225
        mmTop = 0
        mmWidth = 92075
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = dbpLoja0330Itens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLoja0330Itens'
        mmHeight = 4057
        mmLeft = 2910
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SERIE_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 3440
        mmLeft = 123031
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = dbpLoja0330Itens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLoja0330Itens'
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 5821
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = dbpLoja0330Itens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLoja0330Itens'
        mmHeight = 3704
        mmLeft = 23019
        mmTop = 5292
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = dbpLoja0330Itens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpLoja0330Itens'
        mmHeight = 3969
        mmLeft = 43656
        mmTop = 5027
        mmWidth = 17198
        BandType = 4
      end
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 79375
        mmTop = 4763
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRIBUTACAO_IVENDAS'
        DataPipeline = dbpLoja0330Itens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330Itens'
        mmHeight = 3704
        mmLeft = 106892
        mmTop = 5027
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ICM_IVENDAS'
        DataPipeline = dbpLoja0330Itens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330Itens'
        mmHeight = 3175
        mmLeft = 130969
        mmTop = 5027
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 265
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 98690
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '================================================================' +
          '=========================================================='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 1058
        mmWidth = 194734
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'S'#233'rie da Nota..................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 5292
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data de emiss'#227'o.............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 10319
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data de Saida.................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 15610
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Transportadora..............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 20902
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Placa Ve'#237'culo..................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 25665
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Base ICMS......................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 30427
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Base ICMS Subst............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 35454
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor do Frete................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 40481
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Outras despesas...........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 45508
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Total.....................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 50800
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto.......................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 55827
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Recebido.......................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 61119
        mmWidth = 34036
        BandType = 7
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Numero da Nota.........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114829
        mmTop = 5556
        mmWidth = 31221
        BandType = 7
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora Sa'#237'da.................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 14817
        mmWidth = 31221
        BandType = 7
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Natureza Opera'#231#227'o...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 10319
        mmWidth = 31221
        BandType = 7
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Estado Ve'#237'culo..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 26194
        mmWidth = 30956
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor ICMS.................:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 30956
        mmWidth = 30692
        BandType = 7
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor ICMS Subs........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 35983
        mmWidth = 30956
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor do Seguro........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 41275
        mmWidth = 30956
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor total IPI.............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115359
        mmTop = 46038
        mmWidth = 30956
        BandType = 7
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'OBSERVACAO_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 18521
        mmLeft = 8467
        mmTop = 75671
        mmWidth = 185473
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Observa'#231#245'es:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3440
        mmTop = 70379
        mmWidth = 25400
        BandType = 7
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOTAFISCAL'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 147374
        mmTop = 5556
        mmWidth = 18786
        BandType = 7
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CFOP_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 147374
        mmTop = 10054
        mmWidth = 18786
        BandType = 7
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HORASAIDA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 147374
        mmTop = 15081
        mmWidth = 18786
        BandType = 7
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR01'
        DataPipeline = dbpLoja0330
        DisplayFormat = '#,0.00;(#,0.00)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 146843
        mmTop = 30692
        mmWidth = 19050
        BandType = 7
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INFOADICIONA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 146843
        mmTop = 36248
        mmWidth = 19050
        BandType = 7
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SEGURO_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 146843
        mmTop = 41010
        mmWidth = 19050
        BandType = 7
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IPI_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 146843
        mmTop = 45773
        mmWidth = 19050
        BandType = 7
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SERIE_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 5027
        mmWidth = 17463
        BandType = 7
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMISSAO_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 10583
        mmWidth = 17463
        BandType = 7
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATASAIDA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 15610
        mmWidth = 17463
        BandType = 7
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRANSPORTA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4498
        mmLeft = 36248
        mmTop = 20373
        mmWidth = 17463
        BandType = 7
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PLACASAIDA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 25929
        mmWidth = 17463
        BandType = 7
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BASEICMS_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36248
        mmTop = 30692
        mmWidth = 17463
        BandType = 7
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BASEICMS_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36513
        mmTop = 35454
        mmWidth = 17198
        BandType = 7
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FRETE_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36513
        mmTop = 40217
        mmWidth = 17198
        BandType = 7
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OUTROS_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36513
        mmTop = 45508
        mmWidth = 17198
        BandType = 7
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FATURA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36513
        mmTop = 51065
        mmWidth = 17198
        BandType = 7
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36513
        mmTop = 56356
        mmWidth = 17198
        BandType = 7
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = dbpLoja0330
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Device Font 12cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpLoja0330'
        mmHeight = 4233
        mmLeft = 36513
        mmTop = 61383
        mmWidth = 17198
        BandType = 7
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F75726365069670726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A696620206462704C6F6A61303333305B275449504F5F5052
        45434F5F56454E4441275D3D273127207468656E0D0A202056616C7565203A3D
        202756656E64612061205669737461273B0D0A20200D0A2020656E643B0D0A0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C6531
        094576656E744E616D6506064F6E43616C63074576656E74494402210001060F
        5472614576656E7448616E646C65720B50726F6772616D4E616D65060F566172
        6961626C65324F6E43616C630B50726F6772616D54797065070B747450726F63
        656475726506536F75726365069970726F636564757265205661726961626C65
        324F6E43616C63287661722056616C75653A2056617269616E74293B0D0A6265
        67696E0D0A0D0A202056616C7565203A3D206462704C6F6A6130333330497465
        6E735B275155414E5449444144455F4956454E444153275D2A6462704C6F6A61
        303333304974656E735B2756414C4F52425255544F5F4956454E444153275D0D
        0A656E643B0D0A0D436F6D706F6E656E744E616D6506095661726961626C6532
        094576656E744E616D6506064F6E43616C63074576656E74494402210000}
    end
    object daDataModule1: TdaDataModule
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsLja0330: TDataSource
    DataSet = cdsLoja0330
    Left = 40
    Top = 48
  end
  object cdsLoja0330: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'VENDEDOR_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'PARCEIRO_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'CLIENTE_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'PROPRIEDADE_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'NOMELCIENTE_VENDA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DATA_VENDA'
        DataType = ftDate
      end
      item
        Name = 'EXCLUSAO_VENDA'
        DataType = ftDate
      end
      item
        Name = 'HORA_VENDA'
        DataType = ftTime
      end
      item
        Name = 'FATURA_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'DESCONTO_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'DESCON_ESP_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'CPAGAMENTO_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'CHAVE_VENDA'
        DataType = ftString
        Size = 21
      end
      item
        Name = 'CAIXA_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PRECO_VENDA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CFOP_VENDA'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftInteger
      end
      item
        Name = 'SERIE_VENDA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CONFIRMA_VENDA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EMISSAO_VENDA'
        DataType = ftDate
      end
      item
        Name = 'DATASAIDA_VENDA'
        DataType = ftDate
      end
      item
        Name = 'VALORNOTA_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'BASEICMS_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'IPI_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'TRANSPORTA_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'PESOBRUTO_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'PESOLIQUIDO_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'OBSERVACAO_VENDA'
        DataType = ftMemo
        Size = 500
      end
      item
        Name = 'PARCELAS_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'VALOR01'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR02'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR03'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR04'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR05'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR06'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR07'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR08'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR09'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR10'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR11'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR12'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR13'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR14'
        DataType = ftCurrency
      end
      item
        Name = 'VALOR15'
        DataType = ftCurrency
      end
      item
        Name = 'VENCIMENT01'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT02'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT03'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT04'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT05'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT06'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT07'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT08'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT09'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT10'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT11'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT12'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT13'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT14'
        DataType = ftDate
      end
      item
        Name = 'VENCIMENT15'
        DataType = ftDate
      end
      item
        Name = 'COMISSAO_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'TIPO_VENDA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPO1_VENDA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DEVOLVE_VENDA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ENTREGA_VENDA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TROCO_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'FRETE_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'SEGURO_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'OUTROS_VENDA'
        DataType = ftCurrency
      end
      item
        Name = 'ROMANEIO_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'PLACASAIDA_VENDA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NRFATURA_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'AUTONOMO_VENDA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EXPORTADO_VENDA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPO_DOC_VENDA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INFOADICIONA_VENDA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TROCA_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'OS_VENDA'
        DataType = ftInteger
      end
      item
        Name = 'CNPJCLIENTE_VENDA'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'RGCLIENTE_VENDA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDCLIENTE_VENDA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BAICLIENTE_VENDA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CIDCLIENTE_VENDA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ESTCLIENTE_VENDA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEPCLIENTE_VENDA'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'FONECLIENTE_VENDA'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'USUARIO_VENDA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'USUALTERA_VENDA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'HORASAIDA_VENDA'
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 152
    Top = 48
    Data = {
      F90A00009619E0BD010000001800000059000000000003000000F90A0C434F44
      49474F5F56454E444104000100000000000E56454E4445444F525F56454E4441
      04000100000000000E504152434549524F5F56454E444104000100000000000D
      434C49454E54455F56454E444104000100000000001150524F50524945444144
      455F56454E44410400010000000000114E4F4D454C4349454E54455F56454E44
      4101004900000001000557494454480200020032000A444154415F56454E4441
      04000600000000000E4558434C5553414F5F56454E444104000600000000000A
      484F52415F56454E444104000700000000000C4641545552415F56454E444108
      0004000000010007535542545950450200490006004D6F6E6579000E44455343
      4F4E544F5F56454E444108000400000001000753554254595045020049000600
      4D6F6E65790010444553434F4E5F4553505F56454E4441080004000000010007
      535542545950450200490006004D6F6E6579001043504147414D454E544F5F56
      454E444104000100000000000B43484156455F56454E44410100490000000100
      0557494454480200020015000B43414958415F56454E44410400010000000000
      105449504F5F505245434F5F56454E4441010049000000010005574944544802
      00020001000A43464F505F56454E444101004900000001000557494454480200
      020005000A4E4F544146495343414C04000100000000000B53455249455F5645
      4E444101004900000001000557494454480200020002000E434F4E4649524D41
      5F56454E444101004900000001000557494454480200020001000D454D495353
      414F5F56454E444104000600000000000F4441544153414944415F56454E4441
      04000600000000000F56414C4F524E4F54415F56454E44410800040000000100
      07535542545950450200490006004D6F6E6579000E4241534549434D535F5645
      4E4441080004000000010007535542545950450200490006004D6F6E65790009
      4950495F56454E4441080004000000010007535542545950450200490006004D
      6F6E657900105452414E53504F5254415F56454E444104000100000000000F50
      45534F425255544F5F56454E4441080004000000010007535542545950450200
      490006004D6F6E657900115045534F4C49515549444F5F56454E444108000400
      0000010007535542545950450200490006004D6F6E657900104F425345525641
      43414F5F56454E444104004B0000000200075355425459504502004900050054
      6578740005574944544802000200F4010E50415243454C41535F56454E444104
      000100000000000756414C4F5230310800040000000100075355425459504502
      00490006004D6F6E6579000756414C4F52303208000400000001000753554254
      5950450200490006004D6F6E6579000756414C4F523033080004000000010007
      535542545950450200490006004D6F6E6579000756414C4F5230340800040000
      00010007535542545950450200490006004D6F6E6579000756414C4F52303508
      0004000000010007535542545950450200490006004D6F6E6579000756414C4F
      523036080004000000010007535542545950450200490006004D6F6E65790007
      56414C4F523037080004000000010007535542545950450200490006004D6F6E
      6579000756414C4F523038080004000000010007535542545950450200490006
      004D6F6E6579000756414C4F5230390800040000000100075355425459504502
      00490006004D6F6E6579000756414C4F52313008000400000001000753554254
      5950450200490006004D6F6E6579000756414C4F523131080004000000010007
      535542545950450200490006004D6F6E6579000756414C4F5231320800040000
      00010007535542545950450200490006004D6F6E6579000756414C4F52313308
      0004000000010007535542545950450200490006004D6F6E6579000756414C4F
      523134080004000000010007535542545950450200490006004D6F6E65790007
      56414C4F523135080004000000010007535542545950450200490006004D6F6E
      6579000B56454E43494D454E54303104000600000000000B56454E43494D454E
      54303204000600000000000B56454E43494D454E54303304000600000000000B
      56454E43494D454E54303404000600000000000B56454E43494D454E54303504
      000600000000000B56454E43494D454E54303604000600000000000B56454E43
      494D454E54303704000600000000000B56454E43494D454E5430380400060000
      0000000B56454E43494D454E54303904000600000000000B56454E43494D454E
      54313004000600000000000B56454E43494D454E54313104000600000000000B
      56454E43494D454E54313204000600000000000B56454E43494D454E54313304
      000600000000000B56454E43494D454E54313404000600000000000B56454E43
      494D454E54313504000600000000000E434F4D495353414F5F56454E44410800
      04000000010007535542545950450200490006004D6F6E6579000A5449504F5F
      56454E444101004900000001000557494454480200020001000B5449504F315F
      56454E444101004900000001000557494454480200020002000D4445564F4C56
      455F56454E444101004900000001000557494454480200020001000D454E5452
      4547415F56454E444101004900000001000557494454480200020001000B5452
      4F434F5F56454E4441080004000000010007535542545950450200490006004D
      6F6E6579000B46524554455F56454E4441080004000000010007535542545950
      450200490006004D6F6E6579000C53454755524F5F56454E4441080004000000
      010007535542545950450200490006004D6F6E6579000C4F5554524F535F5645
      4E4441080004000000010007535542545950450200490006004D6F6E6579000E
      524F4D414E45494F5F56454E4441040001000000000010504C41434153414944
      415F56454E444101004900000001000557494454480200020008000E4E524641
      545552415F56454E444104000100000000000E4155544F4E4F4D4F5F56454E44
      4101004900000001000557494454480200020001000F4558504F525441444F5F
      56454E444101004900000001000557494454480200020001000E5449504F5F44
      4F435F56454E4441010049000000010005574944544802000200010012494E46
      4F41444943494F4E415F56454E44410100490000000100055749445448020002
      003C000B54524F43415F56454E44410400010000000000084F535F56454E4441
      040001000000000011434E504A434C49454E54455F56454E4441010049000000
      01000557494454480200020012000F5247434C49454E54455F56454E44410100
      49000000010005574944544802000200140010454E44434C49454E54455F5645
      4E4441010049000000010005574944544802000200280010424149434C49454E
      54455F56454E4441010049000000010005574944544802000200140010434944
      434C49454E54455F56454E444101004900000001000557494454480200020014
      0010455354434C49454E54455F56454E44410100490000000100055749445448
      02000200020010434550434C49454E54455F56454E4441010049000000010005
      574944544802000200090011464F4E45434C49454E54455F56454E4441010049
      0000000100055749445448020002000D000D5553554152494F5F56454E444101
      00490000000100055749445448020002000A000F555355414C544552415F5645
      4E44410100490000000100055749445448020002000A000F484F524153414944
      415F56454E444101004900000001000557494454480200020008000000}
    object cdsLoja0330CODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsLoja0330VENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsLoja0330PARCEIRO_VENDA: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object cdsLoja0330CLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsLoja0330PROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object cdsLoja0330NOMELCIENTE_VENDA: TStringField
      FieldName = 'NOMELCIENTE_VENDA'
      Size = 50
    end
    object cdsLoja0330DATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsLoja0330EXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsLoja0330HORA_VENDA: TTimeField
      FieldName = 'HORA_VENDA'
    end
    object cdsLoja0330FATURA_VENDA: TCurrencyField
      FieldName = 'FATURA_VENDA'
    end
    object cdsLoja0330DESCONTO_VENDA: TCurrencyField
      FieldName = 'DESCONTO_VENDA'
    end
    object cdsLoja0330DESCON_ESP_VENDA: TCurrencyField
      FieldName = 'DESCON_ESP_VENDA'
    end
    object cdsLoja0330CPAGAMENTO_VENDA: TIntegerField
      FieldName = 'CPAGAMENTO_VENDA'
    end
    object cdsLoja0330CHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object cdsLoja0330CAIXA_VENDA: TIntegerField
      FieldName = 'CAIXA_VENDA'
    end
    object cdsLoja0330TIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object cdsLoja0330CFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsLoja0330NOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsLoja0330SERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsLoja0330CONFIRMA_VENDA: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object cdsLoja0330EMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsLoja0330DATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object cdsLoja0330VALORNOTA_VENDA: TCurrencyField
      FieldName = 'VALORNOTA_VENDA'
    end
    object cdsLoja0330BASEICMS_VENDA: TCurrencyField
      FieldName = 'BASEICMS_VENDA'
    end
    object cdsLoja0330IPI_VENDA: TCurrencyField
      FieldName = 'IPI_VENDA'
    end
    object cdsLoja0330TRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object cdsLoja0330PESOBRUTO_VENDA: TCurrencyField
      FieldName = 'PESOBRUTO_VENDA'
    end
    object cdsLoja0330PESOLIQUIDO_VENDA: TCurrencyField
      FieldName = 'PESOLIQUIDO_VENDA'
    end
    object cdsLoja0330OBSERVACAO_VENDA: TMemoField
      FieldName = 'OBSERVACAO_VENDA'
      BlobType = ftMemo
      Size = 500
    end
    object cdsLoja0330PARCELAS_VENDA: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object cdsLoja0330VALOR01: TCurrencyField
      FieldName = 'VALOR01'
    end
    object cdsLoja0330VALOR02: TCurrencyField
      FieldName = 'VALOR02'
    end
    object cdsLoja0330VALOR03: TCurrencyField
      FieldName = 'VALOR03'
    end
    object cdsLoja0330VALOR04: TCurrencyField
      FieldName = 'VALOR04'
    end
    object cdsLoja0330VALOR05: TCurrencyField
      FieldName = 'VALOR05'
    end
    object cdsLoja0330VALOR06: TCurrencyField
      FieldName = 'VALOR06'
    end
    object cdsLoja0330VALOR07: TCurrencyField
      FieldName = 'VALOR07'
    end
    object cdsLoja0330VALOR08: TCurrencyField
      FieldName = 'VALOR08'
    end
    object cdsLoja0330VALOR09: TCurrencyField
      FieldName = 'VALOR09'
    end
    object cdsLoja0330VALOR10: TCurrencyField
      FieldName = 'VALOR10'
    end
    object cdsLoja0330VALOR11: TCurrencyField
      FieldName = 'VALOR11'
    end
    object cdsLoja0330VALOR12: TCurrencyField
      FieldName = 'VALOR12'
    end
    object cdsLoja0330VALOR13: TCurrencyField
      FieldName = 'VALOR13'
    end
    object cdsLoja0330VALOR14: TCurrencyField
      FieldName = 'VALOR14'
    end
    object cdsLoja0330VALOR15: TCurrencyField
      FieldName = 'VALOR15'
    end
    object cdsLoja0330VENCIMENT01: TDateField
      FieldName = 'VENCIMENT01'
    end
    object cdsLoja0330VENCIMENT02: TDateField
      FieldName = 'VENCIMENT02'
    end
    object cdsLoja0330VENCIMENT03: TDateField
      FieldName = 'VENCIMENT03'
    end
    object cdsLoja0330VENCIMENT04: TDateField
      FieldName = 'VENCIMENT04'
    end
    object cdsLoja0330VENCIMENT05: TDateField
      FieldName = 'VENCIMENT05'
    end
    object cdsLoja0330VENCIMENT06: TDateField
      FieldName = 'VENCIMENT06'
    end
    object cdsLoja0330VENCIMENT07: TDateField
      FieldName = 'VENCIMENT07'
    end
    object cdsLoja0330VENCIMENT08: TDateField
      FieldName = 'VENCIMENT08'
    end
    object cdsLoja0330VENCIMENT09: TDateField
      FieldName = 'VENCIMENT09'
    end
    object cdsLoja0330VENCIMENT10: TDateField
      FieldName = 'VENCIMENT10'
    end
    object cdsLoja0330VENCIMENT11: TDateField
      FieldName = 'VENCIMENT11'
    end
    object cdsLoja0330VENCIMENT12: TDateField
      FieldName = 'VENCIMENT12'
    end
    object cdsLoja0330VENCIMENT13: TDateField
      FieldName = 'VENCIMENT13'
    end
    object cdsLoja0330VENCIMENT14: TDateField
      FieldName = 'VENCIMENT14'
    end
    object cdsLoja0330VENCIMENT15: TDateField
      FieldName = 'VENCIMENT15'
    end
    object cdsLoja0330COMISSAO_VENDA: TCurrencyField
      FieldName = 'COMISSAO_VENDA'
    end
    object cdsLoja0330TIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsLoja0330TIPO1_VENDA: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object cdsLoja0330DEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object cdsLoja0330ENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object cdsLoja0330TROCO_VENDA: TCurrencyField
      FieldName = 'TROCO_VENDA'
    end
    object cdsLoja0330FRETE_VENDA: TCurrencyField
      FieldName = 'FRETE_VENDA'
    end
    object cdsLoja0330SEGURO_VENDA: TCurrencyField
      FieldName = 'SEGURO_VENDA'
    end
    object cdsLoja0330OUTROS_VENDA: TCurrencyField
      FieldName = 'OUTROS_VENDA'
    end
    object cdsLoja0330ROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object cdsLoja0330PLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object cdsLoja0330NRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object cdsLoja0330AUTONOMO_VENDA: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object cdsLoja0330EXPORTADO_VENDA: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object cdsLoja0330TIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsLoja0330INFOADICIONA_VENDA: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object cdsLoja0330TROCA_VENDA: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object cdsLoja0330OS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsLoja0330CNPJCLIENTE_VENDA: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object cdsLoja0330RGCLIENTE_VENDA: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object cdsLoja0330ENDCLIENTE_VENDA: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object cdsLoja0330BAICLIENTE_VENDA: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object cdsLoja0330CIDCLIENTE_VENDA: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object cdsLoja0330ESTCLIENTE_VENDA: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object cdsLoja0330CEPCLIENTE_VENDA: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object cdsLoja0330FONECLIENTE_VENDA: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object cdsLoja0330USUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object cdsLoja0330USUALTERA_VENDA: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object cdsLoja0330HORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
  end
  object cdsLoja0330_Itens: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'CODIGO_IVENDA'
    MasterFields = 'CODIGO_VENDA'
    MasterSource = dsLja0330
    PacketRecords = 0
    Params = <>
    Left = 152
    Top = 96
    Data = {
      560300009619E0BD01000000180000001600000000000300000056030D434F44
      49474F5F4956454E444104000100000000000E50524F4455544F5F4956454E44
      4104000100000000001144455343524943414F5F4956454E4441530100490000
      0001000557494454480200020028001256414C4F52425255544F5F4956454E44
      4153080004000000010007535542545950450200490006004D6F6E6579001251
      55414E5449444144455F4956454E444153080004000000010007535542545950
      450200490006004D6F6E6579000D47524144455F4956454E4441530100490000
      0001000557494454480200020005001050524F4D4F43414F5F4956454E444153
      01004900000001000557494454480200020001000F464142524943415F495645
      4E4441530100490000000100055749445448020002000F000D53455249455F49
      56454E4441530100490000000100055749445448020002003C0010444553434F
      4E544F5F4956454E444153080004000000010007535542545950450200490006
      004D6F6E6579000B49434D5F4956454E44415308000400000001000753554254
      5950450200490006004D6F6E6579000B4950495F4956454E4441530800040000
      00010007535542545950450200490006004D6F6E6579000F52454455544F525F
      4956454E444153080004000000010007535542545950450200490006004D6F6E
      657900125452494255544143414F5F4956454E44415301004900000001000557
      494454480200020003000E46495343414C5F4956454E44415301004900000001
      0005574944544802000200050010474152414E5449415F4956454E4441530100
      490000000100055749445448020002000A000F5445434E49434F5F4956454E44
      415304000100000000000E414C545552415F4956454E44415308000400000001
      0007535542545950450200490006004D6F6E6579000F4C4152475552415F4956
      454E444153080004000000010007535542545950450200490006004D6F6E6579
      0012434F4D5052494D454E544F5F56454E444153080004000000010007535542
      545950450200490006004D6F6E6579000B515444455F56454E44415308000400
      0000010007535542545950450200490006004D6F6E6579000B434F4D504C454D
      454E544F01004900000001000557494454480200020028000000}
    object cdsLoja0330_ItensCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
    end
    object cdsLoja0330_ItensPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
    end
    object cdsLoja0330_ItensDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 40
    end
    object cdsLoja0330_ItensVALORBRUTO_IVENDAS: TCurrencyField
      FieldName = 'VALORBRUTO_IVENDAS'
    end
    object cdsLoja0330_ItensQUANTIDADE_IVENDAS: TCurrencyField
      FieldName = 'QUANTIDADE_IVENDAS'
    end
    object cdsLoja0330_ItensGRADE_IVENDAS: TStringField
      FieldName = 'GRADE_IVENDAS'
      Size = 5
    end
    object cdsLoja0330_ItensPROMOCAO_IVENDAS: TStringField
      FieldName = 'PROMOCAO_IVENDAS'
      Size = 1
    end
    object cdsLoja0330_ItensFABRICA_IVENDAS: TStringField
      FieldName = 'FABRICA_IVENDAS'
      Size = 15
    end
    object cdsLoja0330_ItensSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      Size = 60
    end
    object cdsLoja0330_ItensDESCONTO_IVENDAS: TCurrencyField
      FieldName = 'DESCONTO_IVENDAS'
    end
    object cdsLoja0330_ItensICM_IVENDAS: TCurrencyField
      FieldName = 'ICM_IVENDAS'
    end
    object cdsLoja0330_ItensIPI_IVENDAS: TCurrencyField
      FieldName = 'IPI_IVENDAS'
    end
    object cdsLoja0330_ItensREDUTOR_IVENDAS: TCurrencyField
      FieldName = 'REDUTOR_IVENDAS'
    end
    object cdsLoja0330_ItensTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object cdsLoja0330_ItensFISCAL_IVENDAS: TStringField
      FieldName = 'FISCAL_IVENDAS'
      Size = 5
    end
    object cdsLoja0330_ItensGARANTIA_IVENDAS: TStringField
      FieldName = 'GARANTIA_IVENDAS'
      Size = 10
    end
    object cdsLoja0330_ItensTECNICO_IVENDAS: TIntegerField
      FieldName = 'TECNICO_IVENDAS'
    end
    object cdsLoja0330_ItensALTURA_IVENDAS: TCurrencyField
      FieldName = 'ALTURA_IVENDAS'
    end
    object cdsLoja0330_ItensLARGURA_IVENDAS: TCurrencyField
      FieldName = 'LARGURA_IVENDAS'
    end
    object cdsLoja0330_ItensCOMPRIMENTO_VENDAS: TCurrencyField
      FieldName = 'COMPRIMENTO_VENDAS'
    end
    object cdsLoja0330_ItensQTDE_VENDAS: TCurrencyField
      FieldName = 'QTDE_VENDAS'
    end
    object cdsLoja0330_ItensCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
  end
  object dbpLoja0330: TppDBPipeline
    DataSource = dsLja0330
    UserName = 'dbpLoja0330'
    Left = 40
    object dbpLoja0330ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object dbpLoja0330ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbpLoja0330ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCEIRO_VENDA'
      FieldName = 'PARCEIRO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbpLoja0330ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbpLoja0330ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROPRIEDADE_VENDA'
      FieldName = 'PROPRIEDADE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbpLoja0330ppField6: TppField
      FieldAlias = 'NOMELCIENTE_VENDA'
      FieldName = 'NOMELCIENTE_VENDA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbpLoja0330ppField7: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object dbpLoja0330ppField8: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object dbpLoja0330ppField9: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 8
    end
    object dbpLoja0330ppField10: TppField
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object dbpLoja0330ppField11: TppField
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object dbpLoja0330ppField12: TppField
      FieldAlias = 'DESCON_ESP_VENDA'
      FieldName = 'DESCON_ESP_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object dbpLoja0330ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CPAGAMENTO_VENDA'
      FieldName = 'CPAGAMENTO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object dbpLoja0330ppField14: TppField
      FieldAlias = 'CHAVE_VENDA'
      FieldName = 'CHAVE_VENDA'
      FieldLength = 21
      DisplayWidth = 21
      Position = 13
    end
    object dbpLoja0330ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAIXA_VENDA'
      FieldName = 'CAIXA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object dbpLoja0330ppField16: TppField
      FieldAlias = 'TIPO_PRECO_VENDA'
      FieldName = 'TIPO_PRECO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object dbpLoja0330ppField17: TppField
      FieldAlias = 'CFOP_VENDA'
      FieldName = 'CFOP_VENDA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 16
    end
    object dbpLoja0330ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL'
      FieldName = 'NOTAFISCAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object dbpLoja0330ppField19: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object dbpLoja0330ppField20: TppField
      FieldAlias = 'CONFIRMA_VENDA'
      FieldName = 'CONFIRMA_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object dbpLoja0330ppField21: TppField
      FieldAlias = 'EMISSAO_VENDA'
      FieldName = 'EMISSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 20
    end
    object dbpLoja0330ppField22: TppField
      FieldAlias = 'DATASAIDA_VENDA'
      FieldName = 'DATASAIDA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 21
    end
    object dbpLoja0330ppField23: TppField
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 22
    end
    object dbpLoja0330ppField24: TppField
      FieldAlias = 'BASEICMS_VENDA'
      FieldName = 'BASEICMS_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 23
    end
    object dbpLoja0330ppField25: TppField
      FieldAlias = 'IPI_VENDA'
      FieldName = 'IPI_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 24
    end
    object dbpLoja0330ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSPORTA_VENDA'
      FieldName = 'TRANSPORTA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object dbpLoja0330ppField27: TppField
      FieldAlias = 'PESOBRUTO_VENDA'
      FieldName = 'PESOBRUTO_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 26
    end
    object dbpLoja0330ppField28: TppField
      FieldAlias = 'PESOLIQUIDO_VENDA'
      FieldName = 'PESOLIQUIDO_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 27
    end
    object dbpLoja0330ppField29: TppField
      FieldAlias = 'OBSERVACAO_VENDA'
      FieldName = 'OBSERVACAO_VENDA'
      FieldLength = 500
      DataType = dtMemo
      DisplayWidth = 10
      Position = 28
      Searchable = False
      Sortable = False
    end
    object dbpLoja0330ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELAS_VENDA'
      FieldName = 'PARCELAS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object dbpLoja0330ppField31: TppField
      FieldAlias = 'VALOR01'
      FieldName = 'VALOR01'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 30
    end
    object dbpLoja0330ppField32: TppField
      FieldAlias = 'VALOR02'
      FieldName = 'VALOR02'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 31
    end
    object dbpLoja0330ppField33: TppField
      FieldAlias = 'VALOR03'
      FieldName = 'VALOR03'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 32
    end
    object dbpLoja0330ppField34: TppField
      FieldAlias = 'VALOR04'
      FieldName = 'VALOR04'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 33
    end
    object dbpLoja0330ppField35: TppField
      FieldAlias = 'VALOR05'
      FieldName = 'VALOR05'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 34
    end
    object dbpLoja0330ppField36: TppField
      FieldAlias = 'VALOR06'
      FieldName = 'VALOR06'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 35
    end
    object dbpLoja0330ppField37: TppField
      FieldAlias = 'VALOR07'
      FieldName = 'VALOR07'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 36
    end
    object dbpLoja0330ppField38: TppField
      FieldAlias = 'VALOR08'
      FieldName = 'VALOR08'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 37
    end
    object dbpLoja0330ppField39: TppField
      FieldAlias = 'VALOR09'
      FieldName = 'VALOR09'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 38
    end
    object dbpLoja0330ppField40: TppField
      FieldAlias = 'VALOR10'
      FieldName = 'VALOR10'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 39
    end
    object dbpLoja0330ppField41: TppField
      FieldAlias = 'VALOR11'
      FieldName = 'VALOR11'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 40
    end
    object dbpLoja0330ppField42: TppField
      FieldAlias = 'VALOR12'
      FieldName = 'VALOR12'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 41
    end
    object dbpLoja0330ppField43: TppField
      FieldAlias = 'VALOR13'
      FieldName = 'VALOR13'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 42
    end
    object dbpLoja0330ppField44: TppField
      FieldAlias = 'VALOR14'
      FieldName = 'VALOR14'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 43
    end
    object dbpLoja0330ppField45: TppField
      FieldAlias = 'VALOR15'
      FieldName = 'VALOR15'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 44
    end
    object dbpLoja0330ppField46: TppField
      FieldAlias = 'VENCIMENT01'
      FieldName = 'VENCIMENT01'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 45
    end
    object dbpLoja0330ppField47: TppField
      FieldAlias = 'VENCIMENT02'
      FieldName = 'VENCIMENT02'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 46
    end
    object dbpLoja0330ppField48: TppField
      FieldAlias = 'VENCIMENT03'
      FieldName = 'VENCIMENT03'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 47
    end
    object dbpLoja0330ppField49: TppField
      FieldAlias = 'VENCIMENT04'
      FieldName = 'VENCIMENT04'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 48
    end
    object dbpLoja0330ppField50: TppField
      FieldAlias = 'VENCIMENT05'
      FieldName = 'VENCIMENT05'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 49
    end
    object dbpLoja0330ppField51: TppField
      FieldAlias = 'VENCIMENT06'
      FieldName = 'VENCIMENT06'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 50
    end
    object dbpLoja0330ppField52: TppField
      FieldAlias = 'VENCIMENT07'
      FieldName = 'VENCIMENT07'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 51
    end
    object dbpLoja0330ppField53: TppField
      FieldAlias = 'VENCIMENT08'
      FieldName = 'VENCIMENT08'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 52
    end
    object dbpLoja0330ppField54: TppField
      FieldAlias = 'VENCIMENT09'
      FieldName = 'VENCIMENT09'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 53
    end
    object dbpLoja0330ppField55: TppField
      FieldAlias = 'VENCIMENT10'
      FieldName = 'VENCIMENT10'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 54
    end
    object dbpLoja0330ppField56: TppField
      FieldAlias = 'VENCIMENT11'
      FieldName = 'VENCIMENT11'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 55
    end
    object dbpLoja0330ppField57: TppField
      FieldAlias = 'VENCIMENT12'
      FieldName = 'VENCIMENT12'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 56
    end
    object dbpLoja0330ppField58: TppField
      FieldAlias = 'VENCIMENT13'
      FieldName = 'VENCIMENT13'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 57
    end
    object dbpLoja0330ppField59: TppField
      FieldAlias = 'VENCIMENT14'
      FieldName = 'VENCIMENT14'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 58
    end
    object dbpLoja0330ppField60: TppField
      FieldAlias = 'VENCIMENT15'
      FieldName = 'VENCIMENT15'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 59
    end
    object dbpLoja0330ppField61: TppField
      FieldAlias = 'COMISSAO_VENDA'
      FieldName = 'COMISSAO_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 60
    end
    object dbpLoja0330ppField62: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 61
    end
    object dbpLoja0330ppField63: TppField
      FieldAlias = 'TIPO1_VENDA'
      FieldName = 'TIPO1_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object dbpLoja0330ppField64: TppField
      FieldAlias = 'DEVOLVE_VENDA'
      FieldName = 'DEVOLVE_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 63
    end
    object dbpLoja0330ppField65: TppField
      FieldAlias = 'ENTREGA_VENDA'
      FieldName = 'ENTREGA_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 64
    end
    object dbpLoja0330ppField66: TppField
      FieldAlias = 'TROCO_VENDA'
      FieldName = 'TROCO_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 65
    end
    object dbpLoja0330ppField67: TppField
      FieldAlias = 'FRETE_VENDA'
      FieldName = 'FRETE_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 66
    end
    object dbpLoja0330ppField68: TppField
      FieldAlias = 'SEGURO_VENDA'
      FieldName = 'SEGURO_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 67
    end
    object dbpLoja0330ppField69: TppField
      FieldAlias = 'OUTROS_VENDA'
      FieldName = 'OUTROS_VENDA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 68
    end
    object dbpLoja0330ppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROMANEIO_VENDA'
      FieldName = 'ROMANEIO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 69
    end
    object dbpLoja0330ppField71: TppField
      FieldAlias = 'PLACASAIDA_VENDA'
      FieldName = 'PLACASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 70
    end
    object dbpLoja0330ppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'NRFATURA_VENDA'
      FieldName = 'NRFATURA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object dbpLoja0330ppField73: TppField
      FieldAlias = 'AUTONOMO_VENDA'
      FieldName = 'AUTONOMO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object dbpLoja0330ppField74: TppField
      FieldAlias = 'EXPORTADO_VENDA'
      FieldName = 'EXPORTADO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 73
    end
    object dbpLoja0330ppField75: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 74
    end
    object dbpLoja0330ppField76: TppField
      FieldAlias = 'INFOADICIONA_VENDA'
      FieldName = 'INFOADICIONA_VENDA'
      FieldLength = 60
      DisplayWidth = 60
      Position = 75
    end
    object dbpLoja0330ppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCA_VENDA'
      FieldName = 'TROCA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object dbpLoja0330ppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object dbpLoja0330ppField79: TppField
      FieldAlias = 'CNPJCLIENTE_VENDA'
      FieldName = 'CNPJCLIENTE_VENDA'
      FieldLength = 18
      DisplayWidth = 18
      Position = 78
    end
    object dbpLoja0330ppField80: TppField
      FieldAlias = 'RGCLIENTE_VENDA'
      FieldName = 'RGCLIENTE_VENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 79
    end
    object dbpLoja0330ppField81: TppField
      FieldAlias = 'ENDCLIENTE_VENDA'
      FieldName = 'ENDCLIENTE_VENDA'
      FieldLength = 40
      DisplayWidth = 40
      Position = 80
    end
    object dbpLoja0330ppField82: TppField
      FieldAlias = 'BAICLIENTE_VENDA'
      FieldName = 'BAICLIENTE_VENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 81
    end
    object dbpLoja0330ppField83: TppField
      FieldAlias = 'CIDCLIENTE_VENDA'
      FieldName = 'CIDCLIENTE_VENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 82
    end
    object dbpLoja0330ppField84: TppField
      FieldAlias = 'ESTCLIENTE_VENDA'
      FieldName = 'ESTCLIENTE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 83
    end
    object dbpLoja0330ppField85: TppField
      FieldAlias = 'CEPCLIENTE_VENDA'
      FieldName = 'CEPCLIENTE_VENDA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 84
    end
    object dbpLoja0330ppField86: TppField
      FieldAlias = 'FONECLIENTE_VENDA'
      FieldName = 'FONECLIENTE_VENDA'
      FieldLength = 13
      DisplayWidth = 13
      Position = 85
    end
    object dbpLoja0330ppField87: TppField
      FieldAlias = 'USUARIO_VENDA'
      FieldName = 'USUARIO_VENDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 86
    end
    object dbpLoja0330ppField88: TppField
      FieldAlias = 'USUALTERA_VENDA'
      FieldName = 'USUALTERA_VENDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 87
    end
    object dbpLoja0330ppField89: TppField
      FieldAlias = 'HORASAIDA_VENDA'
      FieldName = 'HORASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 88
    end
  end
  object dbpLoja0330Itens: TppDBPipeline
    DataSource = dsLoja0330Itens
    UserName = 'dbpLoja0330Itens'
    Left = 40
    Top = 96
    MasterDataPipelineName = 'dbpLoja0330'
    object dbpLoja0330ItensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_IVENDA'
      FieldName = 'CODIGO_IVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbpLoja0330ItensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODUTO_IVENDA'
      FieldName = 'PRODUTO_IVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbpLoja0330ItensppField3: TppField
      FieldAlias = 'DESCRICAO_IVENDAS'
      FieldName = 'DESCRICAO_IVENDAS'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
    object dbpLoja0330ItensppField4: TppField
      FieldAlias = 'VALORBRUTO_IVENDAS'
      FieldName = 'VALORBRUTO_IVENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object dbpLoja0330ItensppField5: TppField
      FieldAlias = 'QUANTIDADE_IVENDAS'
      FieldName = 'QUANTIDADE_IVENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object dbpLoja0330ItensppField6: TppField
      FieldAlias = 'GRADE_IVENDAS'
      FieldName = 'GRADE_IVENDAS'
      FieldLength = 5
      DisplayWidth = 5
      Position = 5
    end
    object dbpLoja0330ItensppField7: TppField
      FieldAlias = 'PROMOCAO_IVENDAS'
      FieldName = 'PROMOCAO_IVENDAS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object dbpLoja0330ItensppField8: TppField
      FieldAlias = 'FABRICA_IVENDAS'
      FieldName = 'FABRICA_IVENDAS'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object dbpLoja0330ItensppField9: TppField
      FieldAlias = 'SERIE_IVENDAS'
      FieldName = 'SERIE_IVENDAS'
      FieldLength = 60
      DisplayWidth = 60
      Position = 8
    end
    object dbpLoja0330ItensppField10: TppField
      FieldAlias = 'DESCONTO_IVENDAS'
      FieldName = 'DESCONTO_IVENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object dbpLoja0330ItensppField11: TppField
      FieldAlias = 'ICM_IVENDAS'
      FieldName = 'ICM_IVENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object dbpLoja0330ItensppField12: TppField
      FieldAlias = 'IPI_IVENDAS'
      FieldName = 'IPI_IVENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object dbpLoja0330ItensppField13: TppField
      FieldAlias = 'REDUTOR_IVENDAS'
      FieldName = 'REDUTOR_IVENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object dbpLoja0330ItensppField14: TppField
      FieldAlias = 'TRIBUTACAO_IVENDAS'
      FieldName = 'TRIBUTACAO_IVENDAS'
      FieldLength = 3
      DisplayWidth = 3
      Position = 13
    end
    object dbpLoja0330ItensppField15: TppField
      FieldAlias = 'FISCAL_IVENDAS'
      FieldName = 'FISCAL_IVENDAS'
      FieldLength = 5
      DisplayWidth = 5
      Position = 14
    end
    object dbpLoja0330ItensppField16: TppField
      FieldAlias = 'GARANTIA_IVENDAS'
      FieldName = 'GARANTIA_IVENDAS'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object dbpLoja0330ItensppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'TECNICO_IVENDAS'
      FieldName = 'TECNICO_IVENDAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object dbpLoja0330ItensppField18: TppField
      FieldAlias = 'ALTURA_IVENDAS'
      FieldName = 'ALTURA_IVENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 17
    end
    object dbpLoja0330ItensppField19: TppField
      FieldAlias = 'LARGURA_IVENDAS'
      FieldName = 'LARGURA_IVENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 18
    end
    object dbpLoja0330ItensppField20: TppField
      FieldAlias = 'COMPRIMENTO_VENDAS'
      FieldName = 'COMPRIMENTO_VENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 19
    end
    object dbpLoja0330ItensppField21: TppField
      FieldAlias = 'QTDE_VENDAS'
      FieldName = 'QTDE_VENDAS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 20
    end
    object dbpLoja0330ItensppField22: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 21
    end
  end
  object dsLoja0330Itens: TDataSource
    DataSet = cdsLoja0330_Itens
    Left = 248
  end
  object cdsCompras: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 56
    object cdsComprasCodigoCompra: TIntegerField
      FieldName = 'CodigoCompra'
    end
    object cdsComprasCodigoFornecedor: TIntegerField
      FieldName = 'CodigoFornecedor'
    end
    object cdsComprasTipoFornecedor: TStringField
      FieldName = 'TipoFornecedor'
      Size = 1
    end
    object cdsComprasCodigoTransporte: TIntegerField
      FieldName = 'CodigoTransporte'
    end
    object cdsComprasNotaFiscal: TIntegerField
      FieldName = 'NotaFiscal'
    end
    object cdsComprasSerieCompra1: TIntegerField
      FieldName = 'SerieCompra1'
    end
    object cdsComprasSerieComrpa2: TStringField
      FieldName = 'SerieComrpa2'
      Size = 2
    end
    object cdsComprasEmissaoCompra: TDateField
      FieldName = 'EmissaoCompra'
    end
    object cdsComprasEntradaCompra: TDateField
      FieldName = 'EntradaCompra'
    end
    object cdsComprasExclusaoCompra: TDateField
      FieldName = 'ExclusaoCompra'
    end
    object cdsComprasCfopCompra: TStringField
      FieldName = 'CfopCompra'
      Size = 5
    end
    object cdsComprasHoraCompra: TTimeField
      FieldName = 'HoraCompra'
    end
    object cdsComprasValorBrutoCompra: TCurrencyField
      FieldName = 'ValorBrutoCompra'
    end
    object cdsComprasFreteCompra: TCurrencyField
      FieldName = 'FreteCompra'
    end
    object cdsComprasSeguroCompra: TCurrencyField
      FieldName = 'SeguroCompra'
    end
    object cdsComprasOutrasCompra: TCurrencyField
      FieldName = 'OutrasCompra'
    end
    object cdsComprasFrete1Compra: TCurrencyField
      FieldName = 'Frete1Compra'
    end
    object cdsComprasDescontoCompra: TCurrencyField
      FieldName = 'DescontoCompra'
    end
    object cdsComprasValorLiquidoCompra: TCurrencyField
      FieldName = 'ValorLiquidoCompra'
    end
    object cdsComprasBIcmsCompra: TCurrencyField
      FieldName = 'BIcmsCompra'
    end
    object cdsComprasVIcmsCompra: TCurrencyField
      FieldName = 'VIcmsCompra'
    end
    object cdsComprasAIcmsCompra: TCurrencyField
      FieldName = 'AIcmsCompra'
    end
    object cdsComprasIIcmsCompra: TCurrencyField
      FieldName = 'IIcmsCompra'
    end
    object cdsComprasOIcmsCompra: TCurrencyField
      FieldName = 'OIcmsCompra'
    end
    object cdsComprasBIpiCompra: TCurrencyField
      FieldName = 'BIpiCompra'
    end
    object cdsComprasAIpiCompra: TCurrencyField
      FieldName = 'AIpiCompra'
    end
    object cdsComprasVIpiCompra: TCurrencyField
      FieldName = 'VIpiCompra'
    end
    object cdsComprasIIpiCompra: TCurrencyField
      FieldName = 'IIpiCompra'
    end
    object cdsComprasOIpiCompra: TCurrencyField
      FieldName = 'OIpiCompra'
    end
    object cdsComprasBIcsCompra: TCurrencyField
      FieldName = 'BIcsCompra'
    end
  end
  object cdsComprasItens: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 104
    object cdsComprasItensCodigoCompra: TIntegerField
      FieldName = 'CodigoCompra'
    end
    object cdsComprasItensProdutoCompra: TIntegerField
      FieldName = 'ProdutoCompra'
    end
    object cdsComprasItensPrecoUnitCompra: TCurrencyField
      FieldName = 'PrecoUnitCompra'
    end
    object cdsComprasItensCustoCompra: TCurrencyField
      FieldName = 'CustoCompra'
    end
    object cdsComprasItensFatorCompra: TCurrencyField
      FieldName = 'FatorCompra'
    end
    object cdsComprasItensVendaCompra: TCurrencyField
      FieldName = 'VendaCompra'
    end
    object cdsComprasItensAtacadoCompra: TCurrencyField
      FieldName = 'AtacadoCompra'
    end
    object cdsComprasItensValidadeCompra: TDateField
      FieldName = 'ValidadeCompra'
    end
    object cdsComprasItensQuantidadeCompra: TCurrencyField
      FieldName = 'QuantidadeCompra'
    end
    object cdsComprasItensGradeCompra: TStringField
      FieldName = 'GradeCompra'
      Size = 5
    end
    object cdsComprasItensSerieCompra: TStringField
      FieldName = 'SerieCompra'
    end
    object cdsComprasItensIcmsCompra: TCurrencyField
      FieldName = 'IcmsCompra'
    end
    object cdsComprasItensIpiCompra: TCurrencyField
      FieldName = 'IpiCompra'
    end
    object cdsComprasItensSitTribCompra: TStringField
      FieldName = 'SitTribCompra'
      Size = 3
    end
    object cdsComprasItensRedutorCompra: TCurrencyField
      FieldName = 'RedutorCompra'
    end
    object cdsComprasItensTotalCompra: TCurrencyField
      FieldName = 'TotalCompra'
    end
    object cdsComprasItensOcorreCompra: TStringField
      FieldName = 'OcorreCompra'
      Size = 1
    end
    object cdsComprasItensQuantOcoCompra: TCurrencyField
      FieldName = 'QuantOcoCompra'
    end
  end
  object rptRel_Modelo: TppReport
    AutoStop = False
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
    Left = 248
    Top = 176
    Version = '10.02'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
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
      object ppSystemVariable3: TppSystemVariable
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
      object ppLabel39: TppLabel
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
      object ppLabel45: TppLabel
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
      object ppLabel46: TppLabel
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
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 9790
        mmWidth = 10372
        BandType = 0
      end
      object lblEmpresa: TppLabel
        UserName = 'lblEmpresa'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '123456789.123456789.123456789.123456789.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 6cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 794
        mmWidth = 62706
        BandType = 0
      end
      object ppLine1: TppLine
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
      object lblNomeRel: TppLabel
        UserName = 'lblNomeRel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome do Relat'#243'rio...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParam1: TppLabel
        UserName = 'lblParam1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Par'#226'metros do Relar'#243'rio...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object lblParam2: TppLabel
        UserName = 'lblParam2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Par'#226'metros do Relar'#243'rio...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
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
        mmHeight = 794
        mmLeft = 529
        mmTop = 20638
        mmWidth = 196586
        BandType = 0
      end
      object lblData: TppLabel
        UserName = 'lblData'
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
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
end
