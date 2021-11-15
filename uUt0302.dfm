object frmUt0302: TfrmUt0302
  Left = 217
  Top = 169
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Visita o Cliente'
  ClientHeight = 446
  ClientWidth = 688
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 427
    Width = 688
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 427
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 11
      Top = 8
      Width = 665
      Height = 121
      Caption = 'Informa'#231#245'es do solicitante'
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 41
        Height = 13
        Caption = 'Empresa'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 93
        Height = 13
        Caption = 'Nome do solicitante'
      end
      object Label3: TLabel
        Left = 8
        Top = 72
        Width = 83
        Height = 13
        Caption = 'Servi'#231'o solicitado'
      end
      object Label4: TLabel
        Left = 8
        Top = 96
        Width = 81
        Height = 13
        Caption = 'Nome do t'#233'cnico'
      end
      object Label5: TLabel
        Left = 424
        Top = 24
        Width = 99
        Height = 13
        Caption = 'Data de atendimento'
      end
      object Label6: TLabel
        Left = 424
        Top = 48
        Width = 83
        Height = 13
        Caption = 'Hora da chegada'
      end
      object Label7: TLabel
        Left = 424
        Top = 72
        Width = 68
        Height = 13
        Caption = 'Hora da sa'#237'da'
      end
      object edtEmpresa: TEdit
        Left = 104
        Top = 16
        Width = 265
        Height = 21
        TabOrder = 0
      end
      object edtSolicitante: TEdit
        Left = 104
        Top = 40
        Width = 265
        Height = 21
        TabOrder = 1
      end
      object edtServicoSolicitado: TEdit
        Left = 104
        Top = 64
        Width = 265
        Height = 21
        TabOrder = 2
      end
      object edtTecnico: TEdit
        Left = 104
        Top = 88
        Width = 265
        Height = 21
        TabOrder = 3
      end
      object edtData: TJvDateEdit
        Left = 528
        Top = 16
        Width = 89
        Height = 21
        TabOrder = 4
      end
      object edtHoraChegada: TEdit
        Left = 528
        Top = 40
        Width = 89
        Height = 21
        TabOrder = 5
      end
      object edtHoraSaida: TEdit
        Left = 528
        Top = 64
        Width = 89
        Height = 21
        TabOrder = 6
      end
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 136
      Width = 665
      Height = 249
      Caption = 'Descri'#231#227'o'
      TabOrder = 1
      object rceDescricao: TRichEdit
        Left = 8
        Top = 16
        Width = 649
        Height = 225
        TabOrder = 0
      end
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 392
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 104
      Top = 392
      Width = 89
      Height = 25
      Caption = '&Enviar por e-mail'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 600
      Top = 392
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 4
      OnClick = BitBtn3Click
    end
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Chamado Suporte T'#233'cnico'
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
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 619
    Top = 96
    Version = '10.02'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Visita ao Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 22
        Font.Style = []
        Transparent = True
        mmHeight = 8975
        mmLeft = 49742
        mmTop = 794
        mmWidth = 100246
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 10848
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 167482
        mmTop = 1323
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 167482
        mmTop = 5556
        mmWidth = 9525
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 177536
        mmTop = 5556
        mmWidth = 14732
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 177536
        mmTop = 1323
        mmWidth = 11091
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MultiSoft Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 794
        mmTop = 1323
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '64-3621-4579'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4064
        mmLeft = 794
        mmTop = 5821
        mmWidth = 21844
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 117475
      mmPrintPosition = 0
      object lblDescricaoServico: TppLabel
        UserName = 'lblDescricaoServico'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 16933
        mmLeft = 265
        mmTop = 794
        mmWidth = 196850
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 25135
        mmWidth = 197115
        BandType = 4
      end
      object rctDescricao: TppRichText
        UserName = 'rctDescricao'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'rctDescricao'
        mmHeight = 42069
        mmLeft = 529
        mmTop = 44450
        mmWidth = 195792
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Servi'#231'o Solicitado: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 28575
        mmWidth = 33105
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 88900
        mmWidth = 197115
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 12965
        mmTop = 107156
        mmWidth = 69056
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Assinatura do usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 28575
        mmTop = 108479
        mmWidth = 34131
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 109538
        mmTop = 107686
        mmWidth = 69056
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Assinatura do gerente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 125148
        mmTop = 109009
        mmWidth = 34396
        BandType = 4
      end
      object lblServicoSolicitado: TppLabel
        UserName = 'lblServicoSolicitado'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 34660
        mmTop = 28840
        mmWidth = 10583
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 36513
        mmWidth = 197115
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o do Servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 38894
        mmWidth = 37253
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'E por ser este a verdade assino o mesmo.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 529
        mmTop = 90752
        mmWidth = 66675
        BandType = 4
      end
    end
  end
end
