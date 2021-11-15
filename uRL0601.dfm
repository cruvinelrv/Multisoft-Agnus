object frmRL0601: TfrmRL0601
  Left = 391
  Top = 254
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Confer'#234'ncia de caixa'
  ClientHeight = 132
  ClientWidth = 298
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
    Width = 297
    Height = 97
    BevelInner = bvLowered
    BevelWidth = 3
    TabOrder = 0
    object Label1: TLabel
      Left = 85
      Top = 31
      Width = 83
      Height = 13
      Caption = 'N'#250'mero do caixa:'
    end
    object Label2: TLabel
      Left = 226
      Top = 61
      Width = 26
      Height = 13
      Caption = 'S / N'
    end
    object Label3: TLabel
      Left = 36
      Top = 58
      Width = 133
      Height = 13
      Caption = 'Imprime reserva de estoque:'
    end
    object edtCaixa: TJvSpinEdit
      Left = 172
      Top = 29
      Width = 51
      Height = 21
      MaxValue = 1.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 172
      Top = 53
      Width = 49
      Height = 21
      TabOrder = 1
    end
  end
  object btnImprimir: TBitBtn
    Left = 132
    Top = 99
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
    Left = 214
    Top = 99
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
  object rptConf_caixa: TppReport
    AutoStop = False
    DataPipeline = dmRL0601.ppVendas
    PassSetting = psTwoPass
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
    Left = 8
    Top = 101
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppVendas'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 14552
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
        mmLeft = 183886
        mmTop = 4498
        mmWidth = 11906
        BandType = 1
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
        mmLeft = 183886
        mmTop = 8996
        mmWidth = 1588
        BandType = 1
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
        mmLeft = 172509
        mmTop = 0
        mmWidth = 7408
        BandType = 1
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
        mmLeft = 172509
        mmTop = 4498
        mmWidth = 7408
        BandType = 1
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
        mmLeft = 172509
        mmTop = 8996
        mmWidth = 10319
        BandType = 1
      end
      object lblEmpresa: TppLabel
        UserName = 'lblEmpresa'
        OnGetText = lblEmpresaGetText
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
        mmLeft = 2117
        mmTop = 0
        mmWidth = 59267
        BandType = 1
      end
      object lblNomeRel: TppLabel
        UserName = 'lblNomeRel'
        OnGetText = lblNomeRelGetText
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
        mmLeft = 63236
        mmTop = 0
        mmWidth = 33867
        BandType = 1
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
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 63236
        mmTop = 4498
        mmWidth = 44027
        BandType = 1
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
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4233
        mmLeft = 63236
        mmTop = 8996
        mmWidth = 44027
        BandType = 1
      end
      object lblData: TppLabel
        UserName = 'lblData'
        OnGetText = lblDataGetText
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
        mmLeft = 183886
        mmTop = 0
        mmWidth = 10319
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 124619
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppVendas_Turno'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 101865
        mmWidth = 197300
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dmRL0601.ppVendas_Turno
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
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppVendas_Turno'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 15081
            mmPrintPosition = 0
            object ppLine9: TppLine
              UserName = 'Line9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 6350
              mmWidth = 196586
              BandType = 1
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
              mmHeight = 1852
              mmLeft = 529
              mmTop = 0
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendas do Turno'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 2381
              mmWidth = 26988
              BandType = 1
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 529
              mmTop = 13758
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Pedido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 9790
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 14288
              mmTop = 9790
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label201'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tabela'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 28310
              mmTop = 9525
              mmWidth = 10848
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Receb.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 42333
              mmTop = 9790
              mmWidth = 10319
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '% Desc'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 56356
              mmTop = 9790
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vnd'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 70379
              mmTop = 9790
              mmWidth = 8467
              BandType = 1
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Res. Cx.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 84667
              mmTop = 9790
              mmWidth = 11906
              BandType = 1
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Data Ext'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 98690
              mmTop = 9790
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'N. Nota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 112713
              mmTop = 9790
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ser'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 126736
              mmTop = 9790
              mmWidth = 5556
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Etg Cliente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 135996
              mmTop = 10054
              mmWidth = 17198
              BandType = 1
            end
            object ppLabel70: TppLabel
              UserName = 'Label70'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'O. S.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 181505
              mmTop = 9790
              mmWidth = 7938
              BandType = 1
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
              mmHeight = 1852
              mmLeft = 529
              mmTop = 6879
              mmWidth = 196586
              BandType = 1
            end
          end
          object ppHeaderBand1: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand1: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO_VENDA'
              DataPipeline = dmRL0601.ppVendas_Turno
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 529
              mmTop = 0
              mmWidth = 13229
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HORA_VENDA'
              DataPipeline = dmRL0601.ppVendas_Turno
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 14817
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TABELA'
              DataPipeline = dmRL0601.ppVendas_Turno
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 28840
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TABELA'
              DataPipeline = dmRL0601.ppVendas_Turno
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 42863
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESC_PORC'
              DataPipeline = dmRL0601.ppVendas_Turno
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 56886
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VENDEDOR_VENDA'
              DataPipeline = dmRL0601.ppVendas_Turno
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 70908
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'RESUMO_CAIXA'
              DataPipeline = dmRL0601.ppVendas_Turno
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 85196
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'EXCLUSAO_VENDA'
              DataPipeline = dmRL0601.ppVendas_Turno
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 99219
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOTAFISCAL_VENDA'
              DataPipeline = dmRL0601.ppVendas_Turno
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 113242
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SERIE_VENDA'
              DataPipeline = dmRL0601.ppVendas_Turno
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 127265
              mmTop = 0
              mmWidth = 8467
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OS_VENDA'
              DataPipeline = dmRL0601.ppVendas_Turno
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 182034
              mmTop = 0
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE_VENDA'
              DataPipeline = dmRL0601.ppVendas_Turno
              DisplayFormat = '000000-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 135996
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_CLIENTE'
              DataPipeline = dmRL0601.ppVendas_Turno
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 147109
              mmTop = 0
              mmWidth = 33867
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppLabel71: TppLabel
              UserName = 'Label71'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nr. de  Vendas : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 84931
              mmTop = 2117
              mmWidth = 21590
              BandType = 7
            end
            object ppVariable2: TppVariable
              UserName = 'Variable2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              BlankWhenZero = False
              CalcOrder = 0
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 107950
              mmTop = 2117
              mmWidth = 11430
              BandType = 7
            end
            object ppLabel72: TppLabel
              UserName = 'Label72'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nr. de  Clientes Atendidos : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 121973
              mmTop = 2117
              mmWidth = 36830
              BandType = 7
            end
            object ppVariable3: TppVariable
              UserName = 'Variable3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              BlankWhenZero = False
              CalcOrder = 1
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              OldOnCalc = ppVariable3OldOnCalc
              Transparent = True
              mmHeight = 4233
              mmLeft = 160338
              mmTop = 2117
              mmWidth = 11430
              BandType = 7
            end
            object ppLabel69: TppLabel
              UserName = 'Label69'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total das Vendas do Turno : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 28310
              mmTop = 2117
              mmWidth = 35560
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'RECEBIDO'
              DataPipeline = dmRL0601.ppVendas_Turno
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Turno'
              mmHeight = 4233
              mmLeft = 65088
              mmTop = 2117
              mmWidth = 17198
              BandType = 7
            end
            object ppLine26: TppLine
              UserName = 'Line26'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 529
              mmTop = 265
              mmWidth = 196586
              BandType = 7
            end
          end
          object raCodeModule2: TraCodeModule
            ProgramStream = {
              01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
              5661726961626C65324F6E43616C6306536F7572636506A770726F6365647572
              65205661726961626C65324F6E43616C63287661722056616C75653A20566172
              69616E74293B0D0A626567696E0D0A20202069662056656E6461735F5475726E
              6F5B27434F4449474F5F56454E4441275D203E2030207468656E0D0A20202020
              20205661726961626C65322E4173496E7465676572203A3D205661726961626C
              65322E4173496E7465676572202B20313B0D0A0D0A0D0A0D0A656E643B0D0A0D
              436F6D706F6E656E744E616D6506095661726961626C6532094576656E744E61
              6D6506064F6E43616C63074576656E74494402210000}
          end
        end
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'ppVendas_Dev'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 107686
        mmWidth = 197300
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = dmRL0601.ppVendas_Dev
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
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppVendas_Dev'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14817
            mmPrintPosition = 0
            object ppLine11: TppLine
              UserName = 'Line9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 6350
              mmWidth = 196586
              BandType = 1
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
              mmHeight = 1852
              mmLeft = 529
              mmTop = 0
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Devolu'#231#245'es do Turno'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 2381
              mmWidth = 32015
              BandType = 1
            end
            object ppLine15: TppLine
              UserName = 'Line10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 529
              mmTop = 13494
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label19'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Pedido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 9525
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label20'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 14817
              mmTop = 9525
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label201'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tabela'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 29104
              mmTop = 9260
              mmWidth = 10848
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Receb.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 43392
              mmTop = 9525
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel35: TppLabel
              UserName = 'Label23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = '% Desc'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 57679
              mmTop = 9525
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label24'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vnd'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 71967
              mmTop = 9525
              mmWidth = 8467
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label25'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Res.  Cx.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 86254
              mmTop = 9525
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label26'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Data Ext'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 100806
              mmTop = 9525
              mmWidth = 12700
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'N. Nota'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 115094
              mmTop = 9525
              mmWidth = 11377
              BandType = 1
            end
            object ppLabel41: TppLabel
              UserName = 'Label28'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ser'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 129646
              mmTop = 9525
              mmWidth = 5556
              BandType = 1
            end
            object ppLabel42: TppLabel
              UserName = 'Label29'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Etg Cliente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 139965
              mmTop = 9525
              mmWidth = 17198
              BandType = 1
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 6879
              mmWidth = 196586
              BandType = 1
            end
          end
          object ppHeaderBand3: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText12: TppDBText
              UserName = 'DBText1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO_VENDA'
              DataPipeline = dmRL0601.ppVendas_Dev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 529
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HORA_VENDA'
              DataPipeline = dmRL0601.ppVendas_Dev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 14817
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TABELA'
              DataPipeline = dmRL0601.ppVendas_Dev
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 29104
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TABELA'
              DataPipeline = dmRL0601.ppVendas_Dev
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 43392
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESC_PORC'
              DataPipeline = dmRL0601.ppVendas_Dev
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 57679
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VENDEDOR_VENDA'
              DataPipeline = dmRL0601.ppVendas_Dev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 71967
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'RESUMO_CAIXA'
              DataPipeline = dmRL0601.ppVendas_Dev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 86254
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'EXCLUSAO_VENDA'
              DataPipeline = dmRL0601.ppVendas_Dev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 100806
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOTAFISCAL_VENDA'
              DataPipeline = dmRL0601.ppVendas_Dev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 115094
              mmTop = 0
              mmWidth = 13228
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SERIE_VENDA'
              DataPipeline = dmRL0601.ppVendas_Dev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 129646
              mmTop = 0
              mmWidth = 8467
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText34'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE_VENDA'
              DataPipeline = dmRL0601.ppVendas_Dev
              DisplayFormat = '000000-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 139965
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_CLIENTE'
              DataPipeline = dmRL0601.ppVendas_Dev
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendas_Dev'
              mmHeight = 4233
              mmLeft = 151077
              mmTop = 0
              mmWidth = 44979
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
            object ppLabel73: TppLabel
              UserName = 'Label73'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total de devolu'#231#245'es do turno : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 32279
              mmTop = 1852
              mmWidth = 39423
              BandType = 7
            end
            object ppDBCalc19: TppDBCalc
              UserName = 'DBCalc19'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'RECEBIDO'
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              mmHeight = 4233
              mmLeft = 73290
              mmTop = 1852
              mmWidth = 17198
              BandType = 7
            end
            object ppLine27: TppLine
              UserName = 'Line27'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 529
              mmTop = 265
              mmWidth = 196586
              BandType = 7
            end
          end
          object raCodeModule3: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubReport3: TppSubReport
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport2
        TraverseAllData = False
        DataPipelineName = 'ppCaixa_mov'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 113506
        mmWidth = 197300
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = dmRL0601.ppCaixa_mov
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
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppCaixa_mov'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14817
            mmPrintPosition = 0
            object ppLine16: TppLine
              UserName = 'Line9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 6350
              mmWidth = 196586
              BandType = 1
            end
            object ppLine17: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 0
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Entradas Realizadas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 2381
              mmWidth = 30427
              BandType = 1
            end
            object ppLine20: TppLine
              UserName = 'Line10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 529
              mmTop = 13494
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label20'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 9525
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label201'
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
              mmLeft = 20638
              mmTop = 9260
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel49: TppLabel
              UserName = 'Label22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Observa'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 40481
              mmTop = 9525
              mmWidth = 18521
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Usuario'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 140759
              mmTop = 9525
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel57: TppLabel
              UserName = 'Label57'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Opera'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 161132
              mmTop = 9525
              mmWidth = 21696
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 6879
              mmWidth = 196586
              BandType = 1
            end
          end
          object ppHeaderBand4: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText24: TppDBText
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HORA_CAIXAMOV'
              DataPipeline = dmRL0601.ppCaixa_mov
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCaixa_mov'
              mmHeight = 4233
              mmLeft = 529
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_MOV'
              DataPipeline = dmRL0601.ppCaixa_mov
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCaixa_mov'
              mmHeight = 4233
              mmLeft = 20638
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OBSERVACAO_CAIXAMOV'
              DataPipeline = dmRL0601.ppCaixa_mov
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCaixa_mov'
              mmHeight = 4233
              mmLeft = 40481
              mmTop = 0
              mmWidth = 97102
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'USUARIO_CAIXAMOV'
              DataPipeline = dmRL0601.ppCaixa_mov
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCaixa_mov'
              mmHeight = 4233
              mmLeft = 140759
              mmTop = 0
              mmWidth = 18256
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_PAGTO'
              DataPipeline = dmRL0601.ppCaixa_mov
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCaixa_mov'
              mmHeight = 4233
              mmLeft = 161132
              mmTop = 0
              mmWidth = 26723
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 7938
            mmPrintPosition = 0
            object ppLabel55: TppLabel
              UserName = 'Label55'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total de Entradas do Turno :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 14288
              mmTop = 1323
              mmWidth = 35560
              BandType = 7
            end
            object ppDBCalc20: TppDBCalc
              UserName = 'DBCalc20'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_MOV'
              DataPipeline = dmRL0601.ppCaixa_mov
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCaixa_mov'
              mmHeight = 4233
              mmLeft = 51329
              mmTop = 1323
              mmWidth = 17198
              BandType = 7
            end
            object ppLine28: TppLine
              UserName = 'Line28'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 529
              mmTop = 0
              mmWidth = 196586
              BandType = 7
            end
          end
        end
      end
      object ppSubReport4: TppSubReport
        UserName = 'SubReport4'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport3
        TraverseAllData = False
        DataPipelineName = 'ppCai_MovR'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 119592
        mmWidth = 197300
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = dmRL0601.ppCai_MovR
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
          Version = '10.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppCai_MovR'
          object ppTitleBand5: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14288
            mmPrintPosition = 0
            object ppLine21: TppLine
              UserName = 'Line9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 6350
              mmWidth = 196586
              BandType = 1
            end
            object ppLine22: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 0
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Retiradas Efetuadas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 2381
              mmWidth = 32279
              BandType = 1
            end
            object ppLine25: TppLine
              UserName = 'Line10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 529
              mmTop = 12965
              mmWidth = 196586
              BandType = 1
            end
            object ppLabel51: TppLabel
              UserName = 'Label20'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 8996
              mmWidth = 8731
              BandType = 1
            end
            object ppLabel52: TppLabel
              UserName = 'Label201'
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
              mmLeft = 20638
              mmTop = 8731
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel53: TppLabel
              UserName = 'Label22'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Observa'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 40481
              mmTop = 8996
              mmWidth = 18521
              BandType = 1
            end
            object ppLabel54: TppLabel
              UserName = 'Label23'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Usuario'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 141552
              mmTop = 8996
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel58: TppLabel
              UserName = 'Label58'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Opera'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 161132
              mmTop = 8996
              mmWidth = 21696
              BandType = 1
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 529
              mmTop = 6879
              mmWidth = 196586
              BandType = 1
            end
          end
          object ppHeaderBand5: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand5: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText22: TppDBText
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HORA_CAIXAMOV'
              DataPipeline = dmRL0601.ppCai_MovR
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCai_MovR'
              mmHeight = 4233
              mmLeft = 529
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_MOV'
              DataPipeline = dmRL0601.ppCai_MovR
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCai_MovR'
              mmHeight = 4233
              mmLeft = 20638
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OBSERVACAO_CAIXAMOV'
              DataPipeline = dmRL0601.ppCai_MovR
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCai_MovR'
              mmHeight = 4233
              mmLeft = 40481
              mmTop = 0
              mmWidth = 95250
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'USUARIO_CAIXAMOV'
              DataPipeline = dmRL0601.ppCai_MovR
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCai_MovR'
              mmHeight = 4233
              mmLeft = 141552
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText301'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_PAGTO'
              DataPipeline = dmRL0601.ppCai_MovR
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCai_MovR'
              mmHeight = 4233
              mmLeft = 161132
              mmTop = 0
              mmWidth = 26723
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppLabel56: TppLabel
              UserName = 'Label56'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total de Retiradas do Turno :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 4233
              mmLeft = 14288
              mmTop = 1588
              mmWidth = 36830
              BandType = 7
            end
            object ppDBCalc21: TppDBCalc
              UserName = 'DBCalc201'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_MOV'
              DataPipeline = dmRL0601.ppCai_MovR
              DisplayFormat = '#,##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Draft 20cpi'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCai_MovR'
              mmHeight = 4233
              mmLeft = 52123
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppLine29: TppLine
              UserName = 'Line29'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 529
              mmTop = 0
              mmWidth = 196586
              BandType = 7
            end
          end
        end
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
        mmHeight = 794
        mmLeft = 0
        mmTop = 1323
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
        Caption = 'Vendas a vista'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 3440
        mmWidth = 20743
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entradas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 7673
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cart'#227'o de cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 11906
        mmWidth = 25188
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cheque predatado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 16140
        mmWidth = 23707
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Conv'#234'nio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 20373
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas a prazo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 24606
        mmWidth = 20743
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Outros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 28840
        mmWidth = 8890
        BandType = 0
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
        mmHeight = 2117
        mmLeft = 30956
        mmTop = 34660
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 36777
        mmWidth = 11853
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 30692
        mmTop = 64294
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo inicial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 41010
        mmWidth = 19262
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'outras entradas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 45244
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '|_Outra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 57944
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '|_Cheque'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 53711
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '|_Dinheiro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 49477
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 65617
        mmWidth = 11853
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
        mmHeight = 2117
        mmLeft = 30692
        mmTop = 70644
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Retiradas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 71702
        mmWidth = 13335
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Troco entrega'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 75671
        mmWidth = 19262
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 30692
        mmTop = 81227
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo atual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 82550
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Em Esp'#233'cie     (+)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 3440
        mmWidth = 26670
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Troco Entrega   (-)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 7673
        mmWidth = 28152
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
        mmHeight = 1058
        mmLeft = 95250
        mmTop = 12700
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label601'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Cash'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 14023
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entregas em aberto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 18521
        mmWidth = 26670
        BandType = 0
      end
      object A_Vista: TppVariable
        UserName = 'A_Vista'
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
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = A_VistaCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 3440
        mmWidth = 22490
        BandType = 0
      end
      object Entradas_Rel: TppVariable
        UserName = 'Entradas_Rel'
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
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Entradas_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 7673
        mmWidth = 22490
        BandType = 0
      end
      object Cartao_Rel: TppVariable
        UserName = 'Cartao_Rel'
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
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Cartao_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 11906
        mmWidth = 22490
        BandType = 0
      end
      object Cheque_Rel: TppVariable
        UserName = 'Cheque_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Cheque_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 16140
        mmWidth = 22490
        BandType = 0
      end
      object Convenio_Rel: TppVariable
        UserName = 'Convenio_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 4
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Convenio_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 20373
        mmWidth = 22490
        BandType = 0
      end
      object A_Prazo: TppVariable
        UserName = 'A_Prazo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 5
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = A_PrazoCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 24606
        mmWidth = 22490
        BandType = 0
      end
      object Outros_Rel: TppVariable
        UserName = 'Outros_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 6
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Outros_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 28840
        mmWidth = 22490
        BandType = 0
      end
      object Subtotal_Rel: TppVariable
        UserName = 'Subtotal_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 7
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Subtotal_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 36777
        mmWidth = 22490
        BandType = 0
      end
      object Saldo_Ini_Rel: TppVariable
        UserName = 'Saldo_Ini_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 8
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Saldo_Ini_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 41010
        mmWidth = 22490
        BandType = 0
      end
      object Outras_Ent_Rel: TppVariable
        UserName = 'Outras_Ent_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 9
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Outras_Ent_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 29793
        mmTop = 45244
        mmWidth = 20743
        BandType = 0
      end
      object Outras_Din: TppVariable
        UserName = 'Outras_Din'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 10
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Outras_DinCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 17727
        mmTop = 49477
        mmWidth = 22490
        BandType = 0
      end
      object Outras_Che: TppVariable
        UserName = 'Outras_Che'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 11
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Outras_CheCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 17727
        mmTop = 53711
        mmWidth = 22490
        BandType = 0
      end
      object Outras_Out: TppVariable
        UserName = 'Outras_Out'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 12
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Outras_OutCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 17727
        mmTop = 57944
        mmWidth = 22490
        BandType = 0
      end
      object Subtotal_2_Rel: TppVariable
        UserName = 'Subtotal_2_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 13
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Subtotal_2_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 65617
        mmWidth = 22490
        BandType = 0
      end
      object Retiradas_Rel: TppVariable
        UserName = 'Retiradas_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 14
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Retiradas_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 71702
        mmWidth = 22490
        BandType = 0
      end
      object Troco_Rel: TppVariable
        UserName = 'Troco_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 15
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Troco_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 75671
        mmWidth = 22490
        BandType = 0
      end
      object Saldo_Atual_Rel: TppVariable
        UserName = 'Saldo_Atual_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 16
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Saldo_Atual_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 82550
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Devolu'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 88900
        mmWidth = 16669
        BandType = 0
      end
      object Devoluvoes_Rel: TppVariable
        UserName = 'Devoluvoes_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 17
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Devoluvoes_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 28046
        mmTop = 88900
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas do M'#234's '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 94986
        mmWidth = 20743
        BandType = 0
      end
      object Vendas_Mes_Rel: TppVariable
        UserName = 'Vendas_Mes_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 18
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Vendas_Mes_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 27941
        mmTop = 94986
        mmWidth = 22490
        BandType = 0
      end
      object Em_Especie_Rel: TppVariable
        UserName = 'Em_Especie_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 19
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Em_Especie_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 96309
        mmTop = 3440
        mmWidth = 22490
        BandType = 0
      end
      object Troco_Ent_Rel: TppVariable
        UserName = 'Troco_Ent_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 20
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Troco_Ent_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 96309
        mmTop = 7673
        mmWidth = 22490
        BandType = 0
      end
      object Total_Casch: TppVariable
        UserName = 'Total_Casch'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 21
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Total_CaschCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 96309
        mmTop = 14023
        mmWidth = 22490
        BandType = 0
      end
      object Entregas_Abe_Rel: TppVariable
        UserName = 'Entregas_Abe_Rel'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 22
        DataType = dtDouble
        DisplayFormat = '#,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        OnCalc = Entregas_Abe_RelCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 96309
        mmTop = 18521
        mmWidth = 22490
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
end
