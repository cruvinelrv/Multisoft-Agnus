inherited frmRL0101: TfrmRL0101
  Left = 326
  Top = 185
  Caption = 'Relat'#243'rio de Cadastro de Grupos'
  ClientHeight = 221
  ClientWidth = 345
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 342
    Height = 185
    object rdgOrdem: TRadioGroup
      Left = 16
      Top = 32
      Width = 313
      Height = 89
      Caption = 'Ordem'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        '&Alfab'#233'tica'
        '&C'#243'digo')
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited btnImprimir: TBitBtn
    Left = 182
    Top = 187
    OnClick = BitBtn1Click
  end
  inherited btnFechar: TBitBtn
    Left = 262
    Top = 187
    OnClick = BitBtn2Click
  end
  object dbpRelatorio: TppDBPipeline
    DataSource = dtsRelatorio
    UserName = 'dbpRelatorio'
    Left = 40
    Top = 8
    object dbpRelatorioppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDEDOR'
      FieldName = 'CODIGO_VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object dbpRelatorioppField2: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object dbpRelatorioppField3: TppField
      FieldAlias = 'FUNCAO_VENDEDOR'
      FieldName = 'FUNCAO_VENDEDOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object dbpRelatorioppField4: TppField
      FieldAlias = 'SITUACAO_VENDEDOR'
      FieldName = 'SITUACAO_VENDEDOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
  end
  object dtsRelatorio: TDataSource
    DataSet = dmRL0101.cdsPesquisa1
    Left = 8
    Top = 8
  end
  object rptRelatorio: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 72
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
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
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Grupos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102659
        BandType = 0
      end
      object lblParam1: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object lblParam2: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
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
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 15875
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Comiss'#227'o a Vista'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 15875
        mmWidth = 25929
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Comiss'#227'o a Prazo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 15875
        mmWidth = 27252
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Se'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 15875
        mmWidth = 11113
        BandType = 0
      end
      object lblData: TppLabel
        UserName = 'Label6'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 794
        mmWidth = 8890
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_GRUPO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_GRUPO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 794
        mmWidth = 68792
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COMISSAO_GRUPO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 794
        mmWidth = 26194
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COMISSAO1_GRUPO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 794
        mmWidth = 26988
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_SECAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 794
        mmWidth = 54769
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelFunc: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 104
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable5: TppSystemVariable
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
      object ppSystemVariable6: TppSystemVariable
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
      object ppLabel6: TppLabel
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
      object ppLabel7: TppLabel
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
      object ppLabel8: TppLabel
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
      object lblEmpFunc: TppLabel
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
      object ppLine3: TppLine
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
      object lblNomeRelFunc: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Funcion'#225'rios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamFunc: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine4: TppLine
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
      object ppLabel13: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 15875
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fun'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 15875
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Situa'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 15875
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label110'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183621
        mmTop = 794
        mmWidth = 11853
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_VENDEDOR'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 794
        mmWidth = 68792
        BandType = 4
      end
      object lblFuncao: TppDBText
        UserName = 'DBText3'
        OnGetText = lblFuncaoGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FUNCAO_VENDEDOR'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 83873
        mmTop = 794
        mmWidth = 26194
        BandType = 4
      end
      object lblSituacao: TppDBText
        UserName = 'DBText4'
        OnGetText = lblSituacaoGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SITUACAO_VENDEDOR'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 794
        mmWidth = 26988
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelFor: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 136
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppSystemVariable8: TppSystemVariable
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
      object ppSystemVariable9: TppSystemVariable
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
      object ppLabel9: TppLabel
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
      object ppLabel10: TppLabel
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
      object ppLabel11: TppLabel
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
      object lblEmpFor: TppLabel
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
      object ppLabel18: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamFor: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1058
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label112'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183621
        mmTop = 794
        mmWidth = 11853
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 4763
        mmWidth = 70908
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 9525
        mmWidth = 70379
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 14552
        mmWidth = 70379
        BandType = 4
      end
      object ppLabel21: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel22: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Raz'#227'o Social:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 4763
        mmWidth = 19262
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fantasia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 9525
        mmWidth = 13335
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 14552
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'E-mail:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 19315
        mmWidth = 10372
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contato:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 93927
        mmTop = 529
        mmWidth = 13229
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 93927
        mmTop = 4763
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insc. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 135996
        mmTop = 4763
        mmWidth = 16404
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 93927
        mmTop = 9525
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAX:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 135996
        mmTop = 9525
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 9525
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 93927
        mmTop = 14552
        mmWidth = 10372
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 135996
        mmTop = 14552
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 14552
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DDG:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 93927
        mmTop = 19315
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pa'#237's:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 135996
        mmTop = 19315
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMAIL_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 19315
        mmWidth = 70379
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CONTATO_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 0
        mmWidth = 60061
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 4763
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 9525
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 14552
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DDG_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 19315
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 152929
        mmTop = 4763
        mmWidth = 37835
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAX_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 9525
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 180182
        mmTop = 9525
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_CIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 14552
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UF_CIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 14552
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PAIS_CLIENTE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 19315
        mmWidth = 40217
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 794
        mmTop = 24871
        mmWidth = 196586
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelPag: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 168
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable11: TppSystemVariable
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
      object ppSystemVariable12: TppSystemVariable
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
      object ppLabel17: TppLabel
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
      object ppLabel19: TppLabel
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
      object ppLabel37: TppLabel
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
      object lblEmpPag: TppLabel
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
      object ppLine7: TppLine
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
      object ppLabel40: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Tipo de Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamPag: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine8: TppLine
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
      object ppLabel43: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 15875
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '% Desc.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 89165
        mmTop = 15875
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Resumo de Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 15875
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label116'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 794
        mmWidth = 11853
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CPAGAMENTO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_CPAGAMENTO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 794
        mmWidth = 68792
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_CPAGAMENTO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 89165
        mmTop = 794
        mmWidth = 26194
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        OnGetText = ppLabel49GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label49'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 794
        mmWidth = 62971
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelCen: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 200
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable14: TppSystemVariable
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
      object ppSystemVariable15: TppSystemVariable
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
      object ppLabel38: TppLabel
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
      object ppLabel41: TppLabel
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
      object ppLabel50: TppLabel
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
      object lblEmpCen: TppLabel
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
      object ppLine9: TppLine
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
      object lblNomeRelCen: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Centro de Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamCen: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine10: TppLine
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
      object ppLabel55: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 15875
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label117'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183621
        mmTop = 794
        mmWidth = 11853
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object lblCodCen: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CENTRO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 10054
        BandType = 4
      end
      object lblDescCen: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_CENTRO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 794
        mmWidth = 68792
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelCon: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 232
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable17: TppSystemVariable
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
      object ppSystemVariable18: TppSystemVariable
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
      object ppLabel51: TppLabel
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
      object ppLabel53: TppLabel
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
      object ppLabel57: TppLabel
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
      object lblEmpCon: TppLabel
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
      object ppLine11: TppLine
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
      object ppLabel59: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Conta Cont'#225'bil'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamCon: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine12: TppLine
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
      object ppLabel62: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 15875
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo de Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 91017
        mmTop = 16140
        mmWidth = 33020
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label118'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 265
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Classifica'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 143669
        mmTop = 16140
        mmWidth = 33020
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLabel60: TppLabel
        UserName = 'Label60'
        OnGetText = ppLabel60GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label60'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91017
        mmTop = 794
        mmWidth = 49477
        BandType = 4
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        OnGetText = ppLabel134GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label134'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 143669
        mmTop = 794
        mmWidth = 52388
        BandType = 4
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
        OnGetText = ppLabel135GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label135'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 11853
        BandType = 4
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        OnGetText = ppLabel136GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label136'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 794
        mmWidth = 68792
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelParceiro: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 264
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable20: TppSystemVariable
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
      object ppSystemVariable21: TppSystemVariable
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
      object ppLabel52: TppLabel
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
      object ppLabel64: TppLabel
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
      object ppLabel65: TppLabel
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
      object lblEmpParceiro: TppLabel
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
      object ppLine13: TppLine
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
      object ppLabel67: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Parceiros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 66940
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamParceiro: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine14: TppLine
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
      object ppLabel70: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 13494
        mmTop = 15875
        mmWidth = 9260
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 63500
        mmTop = 15875
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 15875
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 15875
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contato'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 165894
        mmTop = 15875
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label128'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 794
        mmWidth = 11853
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText27: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_PARCEIRO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_PARCEIRO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 13494
        mmTop = 794
        mmWidth = 48419
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_PARCEIRO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 63500
        mmTop = 794
        mmWidth = 44715
        BandType = 4
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        OnGetText = ppLabel74GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label74'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 794
        mmWidth = 33867
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_PARCEIRO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 794
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CONTATO_PARCEIRO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 165894
        mmTop = 794
        mmWidth = 30427
        BandType = 4
      end
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelRamo: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 296
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand8: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable23: TppSystemVariable
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
      object ppSystemVariable24: TppSystemVariable
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
      object ppLabel75: TppLabel
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
      object ppLabel76: TppLabel
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
      object ppLabel77: TppLabel
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
      object lblEmpRamo: TppLabel
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
      object ppLine15: TppLine
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
      object ppLabel79: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Ramo de Atividade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamRamo: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine16: TppLine
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
      object ppLabel82: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 15875
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 89165
        mmTop = 15875
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label129'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 794
        mmWidth = 11853
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText34: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_ATIVIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_ATIVIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 794
        mmWidth = 68792
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TIPO_ATIVIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 89165
        mmTop = 794
        mmWidth = 54504
        BandType = 4
      end
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelVeic: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 72
    Top = 40
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand9: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable26: TppSystemVariable
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
      object ppSystemVariable27: TppSystemVariable
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
      object ppLabel78: TppLabel
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
      object ppLabel80: TppLabel
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
      object ppLabel85: TppLabel
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
      object lblEmpVeic: TppLabel
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
      object ppLine17: TppLine
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
      object ppLabel87: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Ve'#237'culos da Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamVeic: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine18: TppLine
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
      object ppLabel90: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 15875
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label84'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Capacidade (Kg)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 65617
        mmTop = 15875
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label94'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ano'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 15875
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fabricante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 124354
        mmTop = 15875
        mmWidth = 18521
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label130'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183621
        mmTop = 794
        mmWidth = 11853
        BandType = 0
      end
    end
    object ppDetailBand9: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText37: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_VEICULO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_VEICULO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 15610
        mmTop = 794
        mmWidth = 46567
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CAPACIDADE_VEICULO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 65617
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ANO_VEICULO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FABRICA_VEICULO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 124354
        mmTop = 794
        mmWidth = 52652
        BandType = 4
      end
    end
    object ppFooterBand9: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelAut: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 104
    Top = 40
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand10: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 23019
      mmPrintPosition = 0
      object ppSystemVariable29: TppSystemVariable
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
      object ppSystemVariable30: TppSystemVariable
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
      object ppLabel86: TppLabel
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
      object ppLabel88: TppLabel
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
      object ppLabel93: TppLabel
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
      object lblEmpAut: TppLabel
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
      object ppLine19: TppLine
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
      object ppLabel97: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Autoridades'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamAut: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine20: TppLine
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
      object ppLabel100: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 15875
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 13494
        mmTop = 15875
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label84'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 61383
        mmTop = 15875
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label94'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 95779
        mmTop = 15875
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 15875
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label105'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 162190
        mmTop = 15875
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 178594
        mmTop = 15875
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label131'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183621
        mmTop = 529
        mmWidth = 11853
        BandType = 0
      end
    end
    object ppDetailBand10: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppDBText38: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_AUTORIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 794
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_AUTORIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 13494
        mmTop = 794
        mmWidth = 46567
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_AUTORIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 61383
        mmTop = 794
        mmWidth = 33338
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText41'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO_AUTORIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 95779
        mmTop = 794
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_AUTORIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 162190
        mmTop = 794
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        OnGetText = ppLabel107GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label107'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 121973
        mmTop = 794
        mmWidth = 39423
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE_AUTORIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 178594
        mmTop = 794
        mmWidth = 18521
        BandType = 4
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fun'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 11377
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 794
        mmTop = 10848
        mmWidth = 196586
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'OBSEVACAO_AUTORIDADE'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4763
        mmLeft = 13494
        mmTop = 5556
        mmWidth = 180711
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand10: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object rptRelAssoc: TppReport
    AutoStop = False
    DataPipeline = dbpRelatorio
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
    Left = 136
    Top = 40
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpRelatorio'
    object ppHeaderBand11: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppSystemVariable32: TppSystemVariable
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
      object ppSystemVariable33: TppSystemVariable
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
      object ppLabel98: TppLabel
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
      object ppLabel108: TppLabel
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
      object ppLabel109: TppLabel
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
      object lblEmpAssoc: TppLabel
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
      object ppLabel111: TppLabel
        UserName = 'lblNomeRel'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Associa'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 794
        mmWidth = 102394
        BandType = 0
      end
      object lblParamAssoc: TppLabel
        UserName = 'lblParam1'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 5292
        mmWidth = 102394
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'lblParam2'
        AutoSize = False
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
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 67204
        mmTop = 9790
        mmWidth = 102129
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1058
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        OnGetText = lblDataGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label132'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 794
        mmWidth = 11853
        BandType = 0
      end
    end
    object ppDetailBand11: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 32808
      mmPrintPosition = 0
      object ppDBText48: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'REPRESENTA_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 4763
        mmWidth = 70908
        BandType = 4
      end
      object ppLabel114: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel115: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Representante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 4763
        mmWidth = 23283
        BandType = 4
      end
      object ppLabel119: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppLabel120: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 9790
        mmWidth = 15346
        BandType = 4
      end
      object ppLabel121: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Observa'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 19844
        mmWidth = 18521
        BandType = 4
      end
      object ppLabel122: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 130704
        mmTop = 14817
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel123: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAX:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 14817
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel124: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 14817
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel125: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 9790
        mmWidth = 10319
        BandType = 4
      end
      object ppLabel126: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 14817
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel127: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 82550
        mmTop = 14817
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 0
        mmWidth = 60061
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 9790
        mmWidth = 70644
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 14817
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 9790
        mmWidth = 60325
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAX_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 175419
        mmTop = 14817
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 14817
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 14817
        mmWidth = 55563
        BandType = 4
      end
      object ppDBText62: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ESTADO_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 4233
        mmLeft = 87577
        mmTop = 14817
        mmWidth = 8202
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1058
        mmTop = 31221
        mmWidth = 196586
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'OBSERVACAO_ASSOCIACAO'
        DataPipeline = dbpRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpRelatorio'
        mmHeight = 10583
        mmLeft = 25400
        mmTop = 19844
        mmWidth = 153723
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppFooterBand11: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end
