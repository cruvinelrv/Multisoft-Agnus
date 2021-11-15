object dmImpNF: TdmImpNF
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 247
  Top = 212
  Height = 317
  Width = 615
  object rpt_NF_01_Bravel: TppReport
    AutoStop = False
    DataPipeline = pplItens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'German Std Fanfold'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 214001
    PrinterSetup.PaperSize = 124
    Units = utMillimeters
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 344
    Top = 104
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItens'
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 76200
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Natureza da opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 29898
        mmWidth = 52388
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '5102'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 70115
        mmTop = 29898
        mmWidth = 12700
        BandType = 0
      end
      object xisSaida: TppLabel
        UserName = 'xisSaida'
        OnGetText = xisSaidaGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 135732
        mmTop = 8731
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 40217
        mmWidth = 119592
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133879
        mmTop = 40217
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt_emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 39688
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 46567
        mmWidth = 91546
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        OnGetText = ppLabel8GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 147373
        mmTop = 46567
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        OnGetText = ppLabel9GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 106892
        mmTop = 46567
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt_Saida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 46302
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        OnGetText = ppLabel11GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 52917
        mmWidth = 85725
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        OnGetText = ppLabel12GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Inscri'#231#227'o cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133879
        mmTop = 52917
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 100013
        mmTop = 52917
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        OnGetText = ppLabel14GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125000
        mmTop = 52917
        mmWidth = 2963
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        OnGetText = ppLabel15GetText
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
        mmLeft = 174096
        mmTop = 52917
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        OnGetText = ppLabel16GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 61648
        mmWidth = 184150
        BandType = 0
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Caption = 'Regi'#227'o de espa'#231'o'
        Pen.Style = psClear
        mmHeight = 7938
        mmLeft = 12700
        mmTop = 66675
        mmWidth = 184415
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label40'
        OnGetText = ppLabel53GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Num_nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180182
        mmTop = 8731
        mmWidth = 11853
        BandType = 0
      end
      object xisEntrada: TppLabel
        UserName = 'xisEntrada'
        OnGetText = xisEntradaGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155732
        mmTop = 8731
        mmWidth = 2117
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      AfterPrint = ppDetailBand1AfterPrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CFOP'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 101336
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 120650
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRIBUTACAO_IVENDAS'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 113242
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 128852
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItens
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ICM_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 190500
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItens
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText2GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 42069
        mmTop = 0
        mmWidth = 10372
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 99219
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        UserName = 'Label17'
        OnGetText = ppLabel17GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 18521
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        OnGetText = ppLabel18GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 51594
        mmTop = 18521
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 87048
        mmTop = 18521
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123031
        mmTop = 18521
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        OnGetText = ppLabel21GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163248
        mmTop = 18521
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        OnGetText = ppLabel22GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 24871
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        OnGetText = ppLabel23GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 51594
        mmTop = 24871
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        OnGetText = ppLabel24GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 87048
        mmTop = 24871
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel25: TppLabel
        UserName = 'Label201'
        OnGetText = ppLabel25GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123031
        mmTop = 24871
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        OnGetText = ppLabel26GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163248
        mmTop = 24871
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel27: TppLabel
        UserName = 'Label25'
        OnGetText = ppLabel27GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label25'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 35190
        mmWidth = 85990
        BandType = 8
      end
      object ppLabel28: TppLabel
        UserName = 'Label27'
        OnGetText = ppLabel28GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120650
        mmTop = 35190
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel29: TppLabel
        UserName = 'Label28'
        OnGetText = ppLabel29GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PLACA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 35190
        mmWidth = 20638
        BandType = 8
      end
      object ppLabel30: TppLabel
        UserName = 'Label29'
        OnGetText = ppLabel30GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 153194
        mmTop = 35190
        mmWidth = 8731
        BandType = 8
      end
      object ppLabel31: TppLabel
        UserName = 'Label30'
        OnGetText = ppLabel31GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ Transpt'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 35190
        mmWidth = 29369
        BandType = 8
      end
      object ppLabel32: TppLabel
        UserName = 'Label31'
        OnGetText = ppLabel32GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 13494
        mmTop = 47625
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel33: TppLabel
        UserName = 'Label32'
        OnGetText = ppLabel33GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label32'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 47625
        mmWidth = 66675
        BandType = 8
      end
      object ppLabel34: TppLabel
        UserName = 'Label33'
        OnGetText = ppLabel34GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label33'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 13494
        mmTop = 41804
        mmWidth = 85990
        BandType = 8
      end
      object ppLabel35: TppLabel
        UserName = 'Label34'
        OnGetText = ppLabel35GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label34'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102129
        mmTop = 41804
        mmWidth = 47890
        BandType = 8
      end
      object ppLabel36: TppLabel
        UserName = 'Label35'
        OnGetText = ppLabel36GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label35'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 153194
        mmTop = 41804
        mmWidth = 8996
        BandType = 8
      end
      object ppLabel37: TppLabel
        UserName = 'Label36'
        OnGetText = ppLabel37GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label36'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 41804
        mmWidth = 29898
        BandType = 8
      end
      object ppLabel38: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102129
        mmTop = 47625
        mmWidth = 32015
        BandType = 8
      end
      object ppLabel39: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 135202
        mmTop = 47625
        mmWidth = 11642
        BandType = 8
      end
      object ppLabel40: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 148961
        mmTop = 47625
        mmWidth = 22490
        BandType = 8
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 47625
        mmWidth = 21431
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        OnGetText = ppLabel42GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS01'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 0
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        OnGetText = ppLabel44GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS03'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 4233
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        OnGetText = ppLabel46GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 8467
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        OnGetText = ppLabel47GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 57679
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        OnGetText = ppLabel48GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 61648
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        OnGetText = ppLabel49GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 65617
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        OnGetText = ppLabel50GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 69586
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        OnGetText = ppLabel51GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 73554
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        OnGetText = ppLabel52GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 77523
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel54: TppLabel
        UserName = 'Label53'
        OnGetText = ppLabel54GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label53'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 94456
        mmWidth = 10319
        BandType = 8
      end
    end
  end
  object rpt_NF_serv_RV: TppReport
    AutoStop = False
    DataPipeline = pplItensNF_serv
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'German Std Fanfold'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215000
    PrinterSetup.mmPaperWidth = 211000
    PrinterSetup.PaperSize = 124
    Units = utMillimeters
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 344
    Top = 7
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItensNF_serv'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 85196
      mmPrintPosition = 0
      object ppLabel43: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel43GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Natureza da opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 142875
        mmTop = 14023
        mmWidth = 55033
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label2'
        OnGetText = ppLabel45GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '5102'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120000
        mmTop = 14000
        mmWidth = 12700
        BandType = 0
      end
      object lblNoMunicipio: TppLabel
        UserName = 'lblNoMunicipio'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 149000
        mmTop = 21000
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel56GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 44450
        mmWidth = 137319
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label5'
        OnGetText = ppLabel57GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 9000
        mmTop = 63500
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label6'
        OnGetText = ppLabel58GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117000
        mmTop = 30000
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label7'
        OnGetText = ppLabel59GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 50800
        mmWidth = 117211
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label8'
        OnGetText = ppLabel60GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 57150
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label9'
        OnGetText = ppLabel61GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 129117
        mmTop = 50800
        mmWidth = 69321
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label11'
        OnGetText = ppLabel63GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 57150
        mmWidth = 128852
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label12'
        OnGetText = ppLabel64GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Inscri'#231#227'o cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 90000
        mmTop = 63500
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label13'
        OnGetText = ppLabel65GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 44450
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label14'
        OnGetText = ppLabel66GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140000
        mmTop = 57150
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label16'
        OnGetText = ppLabel68GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 72000
        mmWidth = 184150
        BandType = 0
      end
      object Cod_cliente: TppLabel
        UserName = 'Label101'
        OnGetText = Cod_clienteGetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cod_cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170000
        mmTop = 44450
        mmWidth = 28310
        BandType = 0
      end
      object lblForaMunicipio: TppLabel
        UserName = 'lblForaMunicipio'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 174000
        mmTop = 21000
        mmWidth = 2117
        BandType = 0
      end
      object ppRegion2: TppRegion
        UserName = 'Region2'
        Brush.Style = bsClear
        Caption = 'Region2'
        Pen.Style = psClear
        Transparent = True
        mmHeight = 9525
        mmLeft = 0
        mmTop = 75936
        mmWidth = 197909
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 16000
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItensNF_serv
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItensNF_serv'
        mmHeight = 4233
        mmLeft = 139965
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItensNF_serv
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItensNF_serv'
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 0
        mmWidth = 31221
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItensNF_serv
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItensNF_serv'
        mmHeight = 4233
        mmLeft = 24077
        mmTop = 0
        mmWidth = 113506
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 53181
      mmPrintPosition = 0
      object ppLabel74: TppLabel
        UserName = 'Label21'
        OnGetText = ppLabel74GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 14817
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel95: TppLabel
        UserName = 'Label42'
        OnGetText = ppLabel95GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS01'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel96: TppLabel
        UserName = 'Label44'
        OnGetText = ppLabel96GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS03'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4233
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel97: TppLabel
        UserName = 'Label46'
        OnGetText = ppLabel97GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 8467
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel98: TppLabel
        UserName = 'Label47'
        OnGetText = ppLabel98GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 18521
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel99: TppLabel
        UserName = 'Label48'
        OnGetText = ppLabel99GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 22490
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel100: TppLabel
        UserName = 'Label49'
        OnGetText = ppLabel100GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 26458
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel101: TppLabel
        UserName = 'Label50'
        OnGetText = ppLabel101GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 30427
        mmWidth = 90488
        BandType = 8
      end
      object ppLabel104: TppLabel
        UserName = 'Label53'
        OnGetText = ppLabel104GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label53'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 169863
        mmTop = 48948
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object cdsNF: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 8
    object cdsNFNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsNFCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
    end
    object cdsNFENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsNFBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      Size = 40
    end
    object cdsNFCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
    end
    object cdsNFNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
    object cdsNFTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
    end
    object cdsNFESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsNFINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
      Size = 30
    end
    object cdsNFFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Size = 100
    end
    object cdsNFCNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      Size = 30
    end
    object cdsNFENDERECO_TRANSP: TStringField
      FieldName = 'ENDERECO_TRANSP'
      Size = 80
    end
    object cdsNFNOME_CIDADE_TRANSP: TStringField
      FieldName = 'NOME_CIDADE_TRANSP'
      Size = 30
    end
    object cdsNFESTADO_TRANSP: TStringField
      FieldName = 'ESTADO_TRANSP'
      Size = 2
    end
    object cdsNFTIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      Size = 1
    end
    object cdsNFCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Size = 10
    end
    object cdsNFNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object cdsNFCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
  end
  object cdsItensNF: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 56
    object cdsItensNFPRODUTO_IVENDA: TStringField
      FieldName = 'PRODUTO_IVENDA'
      Size = 10
    end
    object cdsItensNFDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 80
    end
    object cdsItensNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsItensNFTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object cdsItensNFUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      Size = 3
    end
    object cdsItensNFQUANTIDADE_IVENDAS: TFloatField
      FieldName = 'QUANTIDADE_IVENDAS'
    end
    object cdsItensNFVALORBRUTO_IVENDAS: TFloatField
      FieldName = 'VALORBRUTO_IVENDAS'
    end
    object cdsItensNFVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object cdsItensNFICM_IVENDAS: TFloatField
      FieldName = 'ICM_IVENDAS'
    end
    object cdsItensNFREDUTOR_IVENDAS: TStringField
      FieldName = 'REDUTOR_IVENDAS'
      Size = 10
    end
    object cdsItensNFSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      Size = 10
    end
    object cdsItensNFQTDE_VENDAS: TIntegerField
      FieldName = 'QTDE_VENDAS'
    end
    object cdsItensNFCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
    end
  end
  object dsNF: TDataSource
    DataSet = cdsNF
    Left = 112
    Top = 8
  end
  object dsItens: TDataSource
    DataSet = cdsItensNF
    Left = 112
    Top = 56
  end
  object pplNF: TppDBPipeline
    DataSource = dsNF
    UserName = 'lNF'
    Left = 192
    Top = 7
  end
  object pplItens: TppDBPipeline
    DataSource = dsItens
    UserName = 'lItens'
    Left = 192
    Top = 56
    MasterDataPipelineName = 'pplNF'
    object pplItensppField1: TppField
      FieldAlias = 'PRODUTO_IVENDA'
      FieldName = 'PRODUTO_IVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pplItensppField2: TppField
      FieldAlias = 'DESCRICAO_IVENDAS'
      FieldName = 'DESCRICAO_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pplItensppField3: TppField
      FieldAlias = 'CFOP'
      FieldName = 'CFOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pplItensppField4: TppField
      FieldAlias = 'TRIBUTACAO_IVENDAS'
      FieldName = 'TRIBUTACAO_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pplItensppField5: TppField
      FieldAlias = 'UNIDADE_PRODUTO'
      FieldName = 'UNIDADE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pplItensppField6: TppField
      FieldAlias = 'QUANTIDADE_IVENDAS'
      FieldName = 'QUANTIDADE_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pplItensppField7: TppField
      FieldAlias = 'VALORBRUTO_IVENDAS'
      FieldName = 'VALORBRUTO_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pplItensppField8: TppField
      FieldAlias = 'VALORTOTAL'
      FieldName = 'VALORTOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pplItensppField9: TppField
      FieldAlias = 'ICM_IVENDAS'
      FieldName = 'ICM_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object cdsTransport: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransport'
    Left = 176
    Top = 232
    object cdsTransportCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsTransportNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsTransportCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object cdsTransportENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsTransportNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 33
    end
    object cdsTransportESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsTransportINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
  end
  object dsTransport: TDataSource
    DataSet = cdsTransport
    Left = 248
    Top = 232
  end
  object qryTransport: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'COD_TRANS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'CODIGO_CLIENTE,'
      'C.NOME_CLIENTE,'
      'C.CNPJ_CLIENTE,'
      'C.ENDERECO_CLIENTE,'
      '(CI.DESCRICAO_CIDADE || '#39'-'#39' || CI.UF_CIDADE) AS NOME_CIDADE,'
      'C.ESTADO_CLIENTE,'
      'C.INSCRICAO_CLIENTE'
      'FROM E_CLIENTE C'
      
        'LEFT OUTER JOIN E_CIDADE CI ON (CI.CODIGO_CIDADE=C.CIDADE_CLIENT' +
        'E)'
      'WHERE C.TIPO_CLIENTE=2 AND CODIGO_CLIENTE=:COD_TRANS')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 232
    object qryTransportCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object qryTransportNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryTransportCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object qryTransportENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object qryTransportNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 33
    end
    object qryTransportESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object qryTransportINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
  end
  object cdsItensNF_serv: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 104
    object cdsItensNF_servPRODUTO_IVENDA: TStringField
      FieldName = 'PRODUTO_IVENDA'
      Size = 10
    end
    object cdsItensNF_servDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 80
    end
    object cdsItensNF_servCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsItensNF_servTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object cdsItensNF_servUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      Size = 3
    end
    object cdsItensNF_servQUANTIDADE_IVENDAS: TFloatField
      FieldName = 'QUANTIDADE_IVENDAS'
    end
    object cdsItensNF_servVALORBRUTO_IVENDAS: TFloatField
      FieldName = 'VALORBRUTO_IVENDAS'
    end
    object cdsItensNF_servVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object cdsItensNF_servICM_IVENDAS: TFloatField
      FieldName = 'ICM_IVENDAS'
    end
    object cdsItensNF_servREDUTOR_IVENDAS: TStringField
      FieldName = 'REDUTOR_IVENDAS'
      Size = 10
    end
    object cdsItensNF_servSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      Size = 10
    end
    object cdsItensNF_servQTDE_VENDAS: TIntegerField
      FieldName = 'QTDE_VENDAS'
    end
    object cdsItensNF_servCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
    end
  end
  object dsItensNF_serv: TDataSource
    DataSet = cdsItensNF_serv
    Left = 112
    Top = 104
  end
  object pplItensNF_serv: TppDBPipeline
    DataSource = dsItensNF_serv
    UserName = 'lItens1'
    Left = 192
    Top = 104
    MasterDataPipelineName = 'pplNF'
    object ppField1: TppField
      FieldAlias = 'PRODUTO_IVENDA'
      FieldName = 'PRODUTO_IVENDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppField2: TppField
      FieldAlias = 'DESCRICAO_IVENDAS'
      FieldName = 'DESCRICAO_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppField3: TppField
      FieldAlias = 'CFOP'
      FieldName = 'CFOP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppField4: TppField
      FieldAlias = 'TRIBUTACAO_IVENDAS'
      FieldName = 'TRIBUTACAO_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppField5: TppField
      FieldAlias = 'UNIDADE_PRODUTO'
      FieldName = 'UNIDADE_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppField6: TppField
      FieldAlias = 'QUANTIDADE_IVENDAS'
      FieldName = 'QUANTIDADE_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppField7: TppField
      FieldAlias = 'VALORBRUTO_IVENDAS'
      FieldName = 'VALORBRUTO_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppField8: TppField
      FieldAlias = 'VALORTOTAL'
      FieldName = 'VALORTOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppField9: TppField
      FieldAlias = 'ICM_IVENDAS'
      FieldName = 'ICM_IVENDAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object rpt_NF_02_Agrocaldas: TppReport
    AutoStop = False
    DataPipeline = pplItens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'German Std Fanfold'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 214001
    PrinterSetup.PaperSize = 124
    Units = utMillimeters
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 344
    Top = 160
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItens'
    object ppHeaderBand3: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 89959
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Natureza da opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 32000
        mmWidth = 52388
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '5102'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 60000
        mmTop = 32000
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'xisSaida'
        OnGetText = xisSaidaGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 116000
        mmTop = 12000
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 46000
        mmWidth = 115359
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115888
        mmTop = 46000
        mmWidth = 45508
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt_emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 166000
        mmTop = 46000
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 54000
        mmWidth = 89429
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label8'
        OnGetText = ppLabel8GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125942
        mmTop = 54000
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label9'
        OnGetText = ppLabel9GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 89959
        mmTop = 54000
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt_Saida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 166000
        mmTop = 54000
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label11'
        OnGetText = ppLabel11GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 62000
        mmWidth = 60854
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label12'
        OnGetText = ppLabel12GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Inscri'#231#227'o cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115094
        mmTop = 62000
        mmWidth = 46567
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 61913
        mmTop = 62000
        mmWidth = 44715
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label14'
        OnGetText = ppLabel14GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 108000
        mmTop = 62000
        mmWidth = 2963
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label15'
        OnGetText = ppLabel15GetText
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
        mmLeft = 166000
        mmTop = 62000
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label16'
        OnGetText = ppLabel16GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 75000
        mmWidth = 184150
        BandType = 0
      end
      object ppRegion3: TppRegion
        UserName = 'Region1'
        Caption = 'Regi'#227'o de espa'#231'o'
        Pen.Style = psClear
        mmHeight = 10000
        mmLeft = 529
        mmTop = 80000
        mmWidth = 184415
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label40'
        OnGetText = ppLabel53GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Num_nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180182
        mmTop = 12000
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'xisEntrada'
        OnGetText = xisEntradaGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134000
        mmTop = 12000
        mmWidth = 2117
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      AfterPrint = ppDetailBand1AfterPrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CFOP'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 117000
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRIBUTACAO_IVENDAS'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 109000
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 125000
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 138000
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItens
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 163000
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ICM_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 193000
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItens
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText23GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 10000
        mmTop = 0
        mmWidth = 10372
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 114565
      mmPrintPosition = 0
      object ppLabel84: TppLabel
        UserName = 'Label17'
        OnGetText = ppLabel17GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 18000
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel85: TppLabel
        UserName = 'Label18'
        OnGetText = ppLabel18GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 40217
        mmTop = 18000
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel86: TppLabel
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 18000
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel87: TppLabel
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115359
        mmTop = 18000
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel88: TppLabel
        UserName = 'Label21'
        OnGetText = ppLabel21GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 154252
        mmTop = 18000
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel89: TppLabel
        UserName = 'Label22'
        OnGetText = ppLabel22GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 26000
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel90: TppLabel
        UserName = 'Label23'
        OnGetText = ppLabel23GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 40217
        mmTop = 26000
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel91: TppLabel
        UserName = 'Label24'
        OnGetText = ppLabel24GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 26000
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel92: TppLabel
        UserName = 'Label201'
        OnGetText = ppLabel25GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 115359
        mmTop = 26000
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel93: TppLabel
        UserName = 'Label26'
        OnGetText = ppLabel26GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 154252
        mmTop = 26000
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel94: TppLabel
        UserName = 'Label25'
        OnGetText = ppLabel27GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label25'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 39000
        mmWidth = 85990
        BandType = 8
      end
      object ppLabel102: TppLabel
        UserName = 'Label27'
        OnGetText = ppLabel28GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 104000
        mmTop = 39000
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel103: TppLabel
        UserName = 'Label28'
        OnGetText = ppLabel29GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PLACA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 111000
        mmTop = 39000
        mmWidth = 20638
        BandType = 8
      end
      object ppLabel105: TppLabel
        UserName = 'Label29'
        OnGetText = ppLabel30GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132000
        mmTop = 39000
        mmWidth = 8731
        BandType = 8
      end
      object ppLabel106: TppLabel
        UserName = 'Label30'
        OnGetText = ppLabel31GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ Transpt'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141288
        mmTop = 39000
        mmWidth = 29369
        BandType = 8
      end
      object ppLabel107: TppLabel
        UserName = 'Label31'
        OnGetText = ppLabel32GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 56092
        mmWidth = 14023
        BandType = 8
      end
      object ppLabel108: TppLabel
        UserName = 'Label32'
        OnGetText = ppLabel33GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label32'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 56092
        mmWidth = 67469
        BandType = 8
      end
      object ppLabel109: TppLabel
        UserName = 'Label33'
        OnGetText = ppLabel34GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label33'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 47890
        mmWidth = 85196
        BandType = 8
      end
      object ppLabel110: TppLabel
        UserName = 'Label34'
        OnGetText = ppLabel35GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label34'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 85990
        mmTop = 47890
        mmWidth = 45508
        BandType = 8
      end
      object ppLabel111: TppLabel
        UserName = 'Label35'
        OnGetText = ppLabel36GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label35'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132000
        mmTop = 48000
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel112: TppLabel
        UserName = 'Label36'
        OnGetText = ppLabel37GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label36'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141000
        mmTop = 48000
        mmWidth = 29898
        BandType = 8
      end
      object ppLabel113: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 86000
        mmTop = 56000
        mmWidth = 32015
        BandType = 8
      end
      object ppLabel114: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132000
        mmTop = 56000
        mmWidth = 11642
        BandType = 8
      end
      object ppLabel115: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 148961
        mmTop = 56000
        mmWidth = 22490
        BandType = 8
      end
      object ppLabel116: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 56000
        mmWidth = 21431
        BandType = 8
      end
      object ppLabel117: TppLabel
        UserName = 'Label42'
        OnGetText = ppLabel42GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS01'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 0
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel118: TppLabel
        UserName = 'Label44'
        OnGetText = ppLabel44GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS03'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 4233
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel119: TppLabel
        UserName = 'Label46'
        OnGetText = ppLabel46GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 8467
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel120: TppLabel
        UserName = 'Label47'
        OnGetText = ppLabel47GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 68000
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel121: TppLabel
        UserName = 'Label48'
        OnGetText = ppLabel48GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 71967
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel122: TppLabel
        UserName = 'Label49'
        OnGetText = ppLabel49GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 75936
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel123: TppLabel
        UserName = 'Label50'
        OnGetText = ppLabel50GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 79904
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel124: TppLabel
        UserName = 'Label51'
        OnGetText = ppLabel51GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 83873
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel125: TppLabel
        UserName = 'Label52'
        OnGetText = ppLabel52GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 87842
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel126: TppLabel
        UserName = 'Label53'
        OnGetText = ppLabel54GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label53'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170000
        mmTop = 107000
        mmWidth = 10319
        BandType = 8
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppArchiveReader1: TppArchiveReader
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    SuppressOutline = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 456
    Top = 8
    Version = '10.02'
  end
  object rpt_NF_03_Moremaxx: TppReport
    AutoStop = False
    DataPipeline = pplItens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'German Std Fanfold'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 299000
    PrinterSetup.mmPaperWidth = 214001
    PrinterSetup.PaperSize = 124
    Units = utMillimeters
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 344
    Top = 216
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItens'
    object ppHeaderBand4: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 100277
      mmPrintPosition = 0
      object ppLabel127: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Natureza da opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 31000
        mmWidth = 52388
        BandType = 0
      end
      object ppLabel128: TppLabel
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '5102'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 53000
        mmTop = 31000
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel129: TppLabel
        UserName = 'xisSaida'
        OnGetText = xisSaidaGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 119000
        mmTop = 5000
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel130: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 43000
        mmWidth = 115094
        BandType = 0
      end
      object ppLabel131: TppLabel
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120000
        mmTop = 43000
        mmWidth = 45508
        BandType = 0
      end
      object ppLabel132: TppLabel
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt_emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175000
        mmTop = 43000
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel133: TppLabel
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 52000
        mmWidth = 89429
        BandType = 0
      end
      object ppLabel134: TppLabel
        UserName = 'Label8'
        OnGetText = ppLabel8GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 138000
        mmTop = 52123
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel135: TppLabel
        UserName = 'Label9'
        OnGetText = ppLabel9GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 92075
        mmTop = 52123
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel136: TppLabel
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt_Saida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175000
        mmTop = 52123
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel137: TppLabel
        UserName = 'Label11'
        OnGetText = ppLabel11GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 60590
        mmWidth = 44450
        BandType = 0
      end
      object ppLabel138: TppLabel
        UserName = 'Label12'
        OnGetText = ppLabel12GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Inscri'#231#227'o cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120000
        mmTop = 60590
        mmWidth = 46567
        BandType = 0
      end
      object ppLabel139: TppLabel
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 48000
        mmTop = 60590
        mmWidth = 44715
        BandType = 0
      end
      object ppLabel140: TppLabel
        UserName = 'Label14'
        OnGetText = ppLabel14GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 100000
        mmTop = 60590
        mmWidth = 2963
        BandType = 0
      end
      object ppLabel141: TppLabel
        UserName = 'Label15'
        OnGetText = ppLabel15GetText
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
        mmLeft = 175000
        mmTop = 60590
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel142: TppLabel
        UserName = 'Label16'
        OnGetText = ppLabel16GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 92869
        mmTop = 70115
        mmWidth = 105040
        BandType = 0
      end
      object ppRegion4: TppRegion
        UserName = 'Region1'
        Caption = 'Regi'#227'o de espa'#231'o'
        Pen.Style = psClear
        mmHeight = 20373
        mmLeft = 529
        mmTop = 79904
        mmWidth = 184415
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label40'
        OnGetText = ppLabel53GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Num_nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178000
        mmTop = 5000
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'xisEntrada'
        OnGetText = xisEntradaGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 135000
        mmTop = 5000
        mmWidth = 2117
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      AfterPrint = ppDetailBand1AfterPrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText25: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 101000
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRIBUTACAO_IVENDAS'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 93000
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 124884
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItens
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 150019
        mmTop = 0
        mmWidth = 30163
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ICM_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 193000
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItens
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText23GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 10000
        mmTop = 0
        mmWidth = 10372
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 114565
      mmPrintPosition = 0
      object ppLabel145: TppLabel
        UserName = 'Label17'
        OnGetText = ppLabel17GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 19844
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel146: TppLabel
        UserName = 'Label18'
        OnGetText = ppLabel18GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 40217
        mmTop = 19844
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel147: TppLabel
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 19844
        mmWidth = 8202
        BandType = 8
      end
      object ppLabel148: TppLabel
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120000
        mmTop = 19844
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel149: TppLabel
        UserName = 'Label21'
        OnGetText = ppLabel21GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180000
        mmTop = 19844
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel150: TppLabel
        UserName = 'Label22'
        OnGetText = ppLabel22GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 27781
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel151: TppLabel
        UserName = 'Label23'
        OnGetText = ppLabel23GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 40217
        mmTop = 27781
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel152: TppLabel
        UserName = 'Label24'
        OnGetText = ppLabel24GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 27781
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel153: TppLabel
        UserName = 'Label201'
        OnGetText = ppLabel25GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120000
        mmTop = 27781
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel154: TppLabel
        UserName = 'Label26'
        OnGetText = ppLabel26GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180000
        mmTop = 27781
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel155: TppLabel
        UserName = 'Label25'
        OnGetText = ppLabel27GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label25'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 39000
        mmWidth = 85990
        BandType = 8
      end
      object ppLabel156: TppLabel
        UserName = 'Label27'
        OnGetText = ppLabel28GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 109000
        mmTop = 39000
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel157: TppLabel
        UserName = 'Label28'
        OnGetText = ppLabel29GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PLACA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120121
        mmTop = 38894
        mmWidth = 24871
        BandType = 8
      end
      object ppLabel158: TppLabel
        UserName = 'Label29'
        OnGetText = ppLabel30GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 147000
        mmTop = 39000
        mmWidth = 6879
        BandType = 8
      end
      object ppLabel159: TppLabel
        UserName = 'Label30'
        OnGetText = ppLabel31GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ Transpt'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155000
        mmTop = 39000
        mmWidth = 29369
        BandType = 8
      end
      object ppLabel160: TppLabel
        UserName = 'Label31'
        OnGetText = ppLabel32GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 56092
        mmWidth = 14023
        BandType = 8
      end
      object ppLabel161: TppLabel
        UserName = 'Label32'
        OnGetText = ppLabel33GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label32'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 56092
        mmWidth = 67469
        BandType = 8
      end
      object ppLabel162: TppLabel
        UserName = 'Label33'
        OnGetText = ppLabel34GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label33'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 47890
        mmWidth = 85196
        BandType = 8
      end
      object ppLabel163: TppLabel
        UserName = 'Label34'
        OnGetText = ppLabel35GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label34'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 85990
        mmTop = 47890
        mmWidth = 45508
        BandType = 8
      end
      object ppLabel164: TppLabel
        UserName = 'Label35'
        OnGetText = ppLabel36GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label35'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132000
        mmTop = 48000
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel165: TppLabel
        UserName = 'Label36'
        OnGetText = ppLabel37GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label36'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141000
        mmTop = 48000
        mmWidth = 29898
        BandType = 8
      end
      object ppLabel166: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 86000
        mmTop = 56000
        mmWidth = 32015
        BandType = 8
      end
      object ppLabel167: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132000
        mmTop = 56000
        mmWidth = 11642
        BandType = 8
      end
      object ppLabel168: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 148961
        mmTop = 56000
        mmWidth = 22490
        BandType = 8
      end
      object ppLabel169: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 56000
        mmWidth = 21431
        BandType = 8
      end
      object ppLabel170: TppLabel
        UserName = 'Label42'
        OnGetText = ppLabel42GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS01'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 0
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel171: TppLabel
        UserName = 'Label44'
        OnGetText = ppLabel44GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS03'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 4233
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel172: TppLabel
        UserName = 'Label46'
        OnGetText = ppLabel46GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 8467
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel173: TppLabel
        UserName = 'Label47'
        OnGetText = ppLabel47GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 68000
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel174: TppLabel
        UserName = 'Label48'
        OnGetText = ppLabel48GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 71967
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel175: TppLabel
        UserName = 'Label49'
        OnGetText = ppLabel49GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 75936
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel176: TppLabel
        UserName = 'Label50'
        OnGetText = ppLabel50GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 79904
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel177: TppLabel
        UserName = 'Label51'
        OnGetText = ppLabel51GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 83873
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel178: TppLabel
        UserName = 'Label52'
        OnGetText = ppLabel52GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 87842
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel179: TppLabel
        UserName = 'Label53'
        OnGetText = ppLabel54GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label53'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170000
        mmTop = 107000
        mmWidth = 10319
        BandType = 8
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 114036
        mmWidth = 201348
        BandType = 8
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppReport1
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 520
    Top = 80
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = pplItens
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'German Std Fanfold'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 299000
    PrinterSetup.mmPaperWidth = 214001
    PrinterSetup.PaperSize = 124
    Units = utMillimeters
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 448
    Top = 80
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItens'
    object ppHeaderBand5: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 100277
      mmPrintPosition = 0
      object ppLabel180: TppLabel
        UserName = 'Label1'
        OnGetText = ppLabel1GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Natureza da opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 31000
        mmWidth = 52388
        BandType = 0
      end
      object ppLabel181: TppLabel
        UserName = 'Label2'
        OnGetText = ppLabel2GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '5102'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 53000
        mmTop = 31000
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel182: TppLabel
        UserName = 'xisSaida'
        OnGetText = xisSaidaGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 119000
        mmTop = 5000
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel183: TppLabel
        UserName = 'Label4'
        OnGetText = ppLabel4GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 43000
        mmWidth = 115094
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label5'
        OnGetText = ppLabel5GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120000
        mmTop = 43000
        mmWidth = 45508
        BandType = 0
      end
      object ppLabel185: TppLabel
        UserName = 'Label6'
        OnGetText = ppLabel6GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt_emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175000
        mmTop = 43000
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel186: TppLabel
        UserName = 'Label7'
        OnGetText = ppLabel7GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 52000
        mmWidth = 89429
        BandType = 0
      end
      object ppLabel187: TppLabel
        UserName = 'Label8'
        OnGetText = ppLabel8GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 138000
        mmTop = 52123
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel188: TppLabel
        UserName = 'Label9'
        OnGetText = ppLabel9GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 92075
        mmTop = 52123
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label10'
        OnGetText = ppLabel10GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt_Saida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175000
        mmTop = 52123
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel190: TppLabel
        UserName = 'Label11'
        OnGetText = ppLabel11GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 60590
        mmWidth = 44450
        BandType = 0
      end
      object ppLabel191: TppLabel
        UserName = 'Label12'
        OnGetText = ppLabel12GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Inscri'#231#227'o cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120000
        mmTop = 60590
        mmWidth = 46567
        BandType = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label13'
        OnGetText = ppLabel13GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 48000
        mmTop = 60590
        mmWidth = 44715
        BandType = 0
      end
      object ppLabel193: TppLabel
        UserName = 'Label14'
        OnGetText = ppLabel14GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 100000
        mmTop = 60590
        mmWidth = 2963
        BandType = 0
      end
      object ppLabel194: TppLabel
        UserName = 'Label15'
        OnGetText = ppLabel15GetText
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
        mmLeft = 175000
        mmTop = 60590
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel195: TppLabel
        UserName = 'Label16'
        OnGetText = ppLabel16GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fatura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 92869
        mmTop = 70115
        mmWidth = 105040
        BandType = 0
      end
      object ppRegion5: TppRegion
        UserName = 'Region1'
        Caption = 'Regi'#227'o de espa'#231'o'
        Pen.Style = psClear
        mmHeight = 20373
        mmLeft = 529
        mmTop = 79904
        mmWidth = 184415
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel196: TppLabel
        UserName = 'Label40'
        OnGetText = ppLabel53GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Num_nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 178000
        mmTop = 5000
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel197: TppLabel
        UserName = 'xisEntrada'
        OnGetText = xisEntradaGetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 135000
        mmTop = 5000
        mmWidth = 2117
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      AfterPrint = ppDetailBand1AfterPrint
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText24: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 101000
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRIBUTACAO_IVENDAS'
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 93000
        mmTop = 0
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 124884
        mmTop = 0
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItens
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 150019
        mmTop = 0
        mmWidth = 30163
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ICM_IVENDAS'
        DataPipeline = pplItens
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 193000
        mmTop = 0
        mmWidth = 5556
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItens
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText2'
        OnGetText = ppDBText23GetText
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItens'
        mmHeight = 4233
        mmLeft = 10000
        mmTop = 0
        mmWidth = 10372
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 114565
      mmPrintPosition = 0
      object ppLabel198: TppLabel
        UserName = 'Label17'
        OnGetText = ppLabel17GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 19844
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel199: TppLabel
        UserName = 'Label18'
        OnGetText = ppLabel18GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 40217
        mmTop = 19844
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel200: TppLabel
        UserName = 'Label19'
        OnGetText = ppLabel19GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 19844
        mmWidth = 8202
        BandType = 8
      end
      object ppLabel201: TppLabel
        UserName = 'Label20'
        OnGetText = ppLabel20GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120000
        mmTop = 19844
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel202: TppLabel
        UserName = 'Label21'
        OnGetText = ppLabel21GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180000
        mmTop = 19844
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel203: TppLabel
        UserName = 'Label22'
        OnGetText = ppLabel22GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 27781
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel204: TppLabel
        UserName = 'Label23'
        OnGetText = ppLabel23GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 40217
        mmTop = 27781
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel205: TppLabel
        UserName = 'Label24'
        OnGetText = ppLabel24GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 77258
        mmTop = 27781
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel206: TppLabel
        UserName = 'Label201'
        OnGetText = ppLabel25GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120000
        mmTop = 27781
        mmWidth = 10319
        BandType = 8
      end
      object ppLabel207: TppLabel
        UserName = 'Label26'
        OnGetText = ppLabel26GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180000
        mmTop = 27781
        mmWidth = 5821
        BandType = 8
      end
      object ppLabel208: TppLabel
        UserName = 'Label25'
        OnGetText = ppLabel27GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label25'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 39000
        mmWidth = 85990
        BandType = 8
      end
      object ppLabel209: TppLabel
        UserName = 'Label27'
        OnGetText = ppLabel28GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 109000
        mmTop = 39000
        mmWidth = 3969
        BandType = 8
      end
      object ppLabel210: TppLabel
        UserName = 'Label28'
        OnGetText = ppLabel29GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PLACA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120121
        mmTop = 38894
        mmWidth = 24871
        BandType = 8
      end
      object ppLabel211: TppLabel
        UserName = 'Label29'
        OnGetText = ppLabel30GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 147000
        mmTop = 39000
        mmWidth = 6879
        BandType = 8
      end
      object ppLabel212: TppLabel
        UserName = 'Label30'
        OnGetText = ppLabel31GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ Transpt'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155000
        mmTop = 39000
        mmWidth = 29369
        BandType = 8
      end
      object ppLabel213: TppLabel
        UserName = 'Label31'
        OnGetText = ppLabel32GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 56092
        mmWidth = 14023
        BandType = 8
      end
      object ppLabel214: TppLabel
        UserName = 'Label32'
        OnGetText = ppLabel33GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label32'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 56092
        mmWidth = 67469
        BandType = 8
      end
      object ppLabel215: TppLabel
        UserName = 'Label33'
        OnGetText = ppLabel34GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label33'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 47890
        mmWidth = 85196
        BandType = 8
      end
      object ppLabel216: TppLabel
        UserName = 'Label34'
        OnGetText = ppLabel35GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label34'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 85990
        mmTop = 47890
        mmWidth = 45508
        BandType = 8
      end
      object ppLabel217: TppLabel
        UserName = 'Label35'
        OnGetText = ppLabel36GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label35'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132000
        mmTop = 48000
        mmWidth = 8467
        BandType = 8
      end
      object ppLabel218: TppLabel
        UserName = 'Label36'
        OnGetText = ppLabel37GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label36'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141000
        mmTop = 48000
        mmWidth = 29898
        BandType = 8
      end
      object ppLabel219: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 86000
        mmTop = 56000
        mmWidth = 32015
        BandType = 8
      end
      object ppLabel220: TppLabel
        UserName = 'Label38'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132000
        mmTop = 56000
        mmWidth = 11642
        BandType = 8
      end
      object ppLabel221: TppLabel
        UserName = 'Label39'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 148961
        mmTop = 56000
        mmWidth = 22490
        BandType = 8
      end
      object ppLabel222: TppLabel
        UserName = 'Label41'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 56000
        mmWidth = 21431
        BandType = 8
      end
      object ppLabel223: TppLabel
        UserName = 'Label42'
        OnGetText = ppLabel42GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS01'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 0
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel224: TppLabel
        UserName = 'Label44'
        OnGetText = ppLabel44GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBS03'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 4233
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel225: TppLabel
        UserName = 'Label46'
        OnGetText = ppLabel46GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 8467
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel226: TppLabel
        UserName = 'Label47'
        OnGetText = ppLabel47GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 68000
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel227: TppLabel
        UserName = 'Label48'
        OnGetText = ppLabel48GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 71967
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel228: TppLabel
        UserName = 'Label49'
        OnGetText = ppLabel49GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 75936
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel229: TppLabel
        UserName = 'Label50'
        OnGetText = ppLabel50GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 79904
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel230: TppLabel
        UserName = 'Label51'
        OnGetText = ppLabel51GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 83873
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel231: TppLabel
        UserName = 'Label52'
        OnGetText = ppLabel52GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MSN_ADD6'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 87842
        mmWidth = 80000
        BandType = 8
      end
      object ppLabel232: TppLabel
        UserName = 'Label53'
        OnGetText = ppLabel54GetText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label53'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170000
        mmTop = 107000
        mmWidth = 10319
        BandType = 8
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 114036
        mmWidth = 201348
        BandType = 8
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object dspTransport: TDataSetProvider
    DataSet = qryTransport
    Options = [poAllowCommandText]
    Left = 104
    Top = 232
  end
end
