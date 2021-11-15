object dmImpCI: TdmImpCI
  OldCreateOrder = False
  Left = 226
  Top = 176
  Height = 341
  Width = 681
  object pplItenOrc: TppDBPipeline
    DataSource = dsItensOrc
    UserName = 'lItenOrc'
    Left = 328
    Top = 104
    object pplItenOrcppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_VENDA_ITEM'
      FieldName = 'ID_VENDA_ITEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pplItenOrcppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_IVENDA'
      FieldName = 'CODIGO_IVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pplItenOrcppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODUTO_IVENDA'
      FieldName = 'PRODUTO_IVENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object pplItenOrcppField4: TppField
      FieldAlias = 'DESCRICAO_IVENDAS'
      FieldName = 'DESCRICAO_IVENDAS'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object pplItenOrcppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORBRUTO_IVENDAS'
      FieldName = 'VALORBRUTO_IVENDAS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 4
    end
    object pplItenOrcppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE_IVENDAS'
      FieldName = 'QUANTIDADE_IVENDAS'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 5
    end
    object pplItenOrcppField7: TppField
      FieldAlias = 'GRADE_IVENDAS'
      FieldName = 'GRADE_IVENDAS'
      FieldLength = 5
      DisplayWidth = 5
      Position = 6
    end
    object pplItenOrcppField8: TppField
      FieldAlias = 'PROMOCAO_IVENDAS'
      FieldName = 'PROMOCAO_IVENDAS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object pplItenOrcppField9: TppField
      FieldAlias = 'FABRICA_IVENDAS'
      FieldName = 'FABRICA_IVENDAS'
      FieldLength = 15
      DisplayWidth = 15
      Position = 8
    end
    object pplItenOrcppField10: TppField
      FieldAlias = 'SERIE_IVENDAS'
      FieldName = 'SERIE_IVENDAS'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object pplItenOrcppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO_IVENDAS'
      FieldName = 'DESCONTO_IVENDAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object pplItenOrcppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICM_IVENDAS'
      FieldName = 'ICM_IVENDAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object pplItenOrcppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI_IVENDAS'
      FieldName = 'IPI_IVENDAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
    object pplItenOrcppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'REDUTOR_IVENDAS'
      FieldName = 'REDUTOR_IVENDAS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 13
    end
    object pplItenOrcppField15: TppField
      FieldAlias = 'TRIBUTACAO_IVENDAS'
      FieldName = 'TRIBUTACAO_IVENDAS'
      FieldLength = 3
      DisplayWidth = 3
      Position = 14
    end
    object pplItenOrcppField16: TppField
      FieldAlias = 'FISCAL_IVENDAS'
      FieldName = 'FISCAL_IVENDAS'
      FieldLength = 5
      DisplayWidth = 5
      Position = 15
    end
    object pplItenOrcppField17: TppField
      FieldAlias = 'GARANTIA_IVENDAS'
      FieldName = 'GARANTIA_IVENDAS'
      FieldLength = 10
      DisplayWidth = 10
      Position = 16
    end
    object pplItenOrcppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'TECNICO_IVENDAS'
      FieldName = 'TECNICO_IVENDAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object pplItenOrcppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'ALTURA_IVENDAS'
      FieldName = 'ALTURA_IVENDAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 18
    end
    object pplItenOrcppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'LARGURA_IVENDAS'
      FieldName = 'LARGURA_IVENDAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 19
    end
    object pplItenOrcppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMPRIMENTO_VENDAS'
      FieldName = 'COMPRIMENTO_VENDAS'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 20
    end
    object pplItenOrcppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE_VENDAS'
      FieldName = 'QTDE_VENDAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pplItenOrcppField23: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 22
    end
    object pplItenOrcppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pplItenOrcppField25: TppField
      FieldAlias = 'CLASSE_IVENDA'
      FieldName = 'CLASSE_IVENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object pplItenOrcppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORTOTAL'
      FieldName = 'VALORTOTAL'
      FieldLength = 7
      DataType = dtDouble
      DisplayWidth = 16
      Position = 25
    end
    object pplItenOrcppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'FABRICA_PRODUTO'
      FieldName = 'FABRICA_PRODUTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object pplItenOrcppField28: TppField
      FieldAlias = 'FABRICANTE_PRODUTO'
      FieldName = 'FABRICANTE_PRODUTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 27
    end
    object pplItenOrcppField29: TppField
      FieldAlias = 'UNIDADE_PRODUTO'
      FieldName = 'UNIDADE_PRODUTO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 28
    end
    object pplItenOrcppField30: TppField
      FieldAlias = 'CODIGO_GRADE'
      FieldName = 'CODIGO_GRADE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 29
    end
    object pplItenOrcppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRECO_CUSTO_PRODUTO'
      FieldName = 'PRECO_CUSTO_PRODUTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 30
    end
  end
  object rptOrc_00: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 432
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38365
      mmPrintPosition = 0
      object ppLabel21: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[00] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARA' +
          'NTIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
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
        mmHeight = 1058
        mmLeft = 529
        mmTop = 14288
        mmWidth = 196586
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 32544
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CGC.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101865
        mmTop = 6615
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 6615
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 15346
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 19579
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23813
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 28046
        mmWidth = 16298
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 37571
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 19579
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 23813
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 19579
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 28046
        mmWidth = 13335
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 33602
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 33602
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 33867
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148167
        mmTop = 33602
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 33602
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180182
        mmTop = 33602
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText13: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText15: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 19579
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText16: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 23813
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 28046
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText18: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 19579
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText19: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 23813
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 28046
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6615
        mmWidth = 100542
        BandType = 0
      end
      object ppDBText23: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 6615
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText24: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 6615
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText20: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 19579
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText25: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 15346
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText26: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 15346
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 15346
        mmWidth = 2540
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8731
        mmTop = 10583
        mmWidth = 187325
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10583
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText33: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 265
        mmWidth = 119063
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 529
        mmWidth = 16669
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Forma de Pagamento: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 50800
        BandType = 8
      end
      object ppDBText14: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FORMA_PAGAMENTO'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 51594
        mmTop = 2381
        mmWidth = 60325
        BandType = 8
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal Boleto ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 2117
        mmWidth = 45773
        BandType = 8
      end
      object ppDBText27: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 2117
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-tot:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 8731
        mmWidth = 20320
        BandType = 8
      end
      object ppDBText28: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 8731
        mmWidth = 29104
        BandType = 8
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 51594
        mmTop = 8731
        mmWidth = 12700
        BandType = 8
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc %:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 8731
        mmWidth = 17727
        BandType = 8
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134409
        mmTop = 8731
        mmWidth = 35560
        BandType = 8
      end
      object ppDBText29: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 8731
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText30: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 113506
        mmTop = 8731
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText31: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 8731
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 12700
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText35: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 12965
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 12700
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 104775
        mmTop = 12700
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102659
        mmTop = 12435
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 17198
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 16933
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 104775
        mmTop = 16933
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102659
        mmTop = 16669
        mmWidth = 1588
        BandType = 8
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList2: TppParameterList
    end
  end
  object dsItensOrc: TDataSource
    AutoEdit = False
    DataSet = cdsItensOrc
    Left = 256
    Top = 104
  end
  object dsOrcamento: TDataSource
    AutoEdit = False
    DataSet = cdsOrcamento
    Left = 256
    Top = 8
  end
  object cdsOrcamento: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMORC'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspOrcamento'
    Left = 184
    Top = 8
    object cdsOrcamentoCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsOrcamentoVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsOrcamentoPARCEIRO_VENDA: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object cdsOrcamentoCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object cdsOrcamentoPROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object cdsOrcamentoNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object cdsOrcamentoDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object cdsOrcamentoEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object cdsOrcamentoHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsOrcamentoFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoDESCON_ESP_VENDA: TFMTBCDField
      FieldName = 'DESCON_ESP_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsOrcamentoCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object cdsOrcamentoCAIXA_VENDA: TFMTBCDField
      FieldName = 'CAIXA_VENDA'
      Precision = 15
      Size = 0
    end
    object cdsOrcamentoTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object cdsOrcamentoCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsOrcamentoNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsOrcamentoSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsOrcamentoCONFIRMA_VENDA: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object cdsOrcamentoEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsOrcamentoDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object cdsOrcamentoHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object cdsOrcamentoVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object cdsOrcamentoPESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsOrcamentoPESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      Precision = 15
      Size = 3
    end
    object cdsOrcamentoOBSERVACAO_VENDA: TStringField
      FieldName = 'OBSERVACAO_VENDA'
      Size = 75
    end
    object cdsOrcamentoPARCELAS_VENDA: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object cdsOrcamentoVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
    end
    object cdsOrcamentoVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
    end
    object cdsOrcamentoVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
    end
    object cdsOrcamentoVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
    end
    object cdsOrcamentoVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
    end
    object cdsOrcamentoVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
    end
    object cdsOrcamentoVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
    end
    object cdsOrcamentoVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
    end
    object cdsOrcamentoVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
    end
    object cdsOrcamentoVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
    end
    object cdsOrcamentoVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
    end
    object cdsOrcamentoVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
    end
    object cdsOrcamentoVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
    end
    object cdsOrcamentoVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
    end
    object cdsOrcamentoVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
    end
    object cdsOrcamentoCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object cdsOrcamentoTIPO1_VENDA: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object cdsOrcamentoDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object cdsOrcamentoENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object cdsOrcamentoTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object cdsOrcamentoPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object cdsOrcamentoESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
    object cdsOrcamentoNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object cdsOrcamentoAUTONOMO_VENDA: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object cdsOrcamentoEXPORTADO_VENDA: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object cdsOrcamentoTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object cdsOrcamentoINFOADICIONA_VENDA: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object cdsOrcamentoMACHO_4_VENDA: TIntegerField
      FieldName = 'MACHO_4_VENDA'
    end
    object cdsOrcamentoMACHO_4_12_VENDA: TIntegerField
      FieldName = 'MACHO_4_12_VENDA'
    end
    object cdsOrcamentoMACHO_12_24_VENDA: TIntegerField
      FieldName = 'MACHO_12_24_VENDA'
    end
    object cdsOrcamentoMACHO_24_36_VENDA: TIntegerField
      FieldName = 'MACHO_24_36_VENDA'
    end
    object cdsOrcamentoMACHO_M36_VENDA: TIntegerField
      FieldName = 'MACHO_M36_VENDA'
    end
    object cdsOrcamentoFEMEA_4_VENDA: TIntegerField
      FieldName = 'FEMEA_4_VENDA'
    end
    object cdsOrcamentoFEMEA_4_12_VENDA: TIntegerField
      FieldName = 'FEMEA_4_12_VENDA'
    end
    object cdsOrcamentoFEMEA_12_24_VENDA: TIntegerField
      FieldName = 'FEMEA_12_24_VENDA'
    end
    object cdsOrcamentoFEMEA_24_36_VENDA: TIntegerField
      FieldName = 'FEMEA_24_36_VENDA'
    end
    object cdsOrcamentoFEMEA_M36_VENDA: TIntegerField
      FieldName = 'FEMEA_M36_VENDA'
    end
    object cdsOrcamentoBUFALOS_VENDA: TIntegerField
      FieldName = 'BUFALOS_VENDA'
    end
    object cdsOrcamentoCAPRINOS_VENDA: TIntegerField
      FieldName = 'CAPRINOS_VENDA'
    end
    object cdsOrcamentoOVINOS_VENDA: TIntegerField
      FieldName = 'OVINOS_VENDA'
    end
    object cdsOrcamentoSUINOS_VENDA: TIntegerField
      FieldName = 'SUINOS_VENDA'
    end
    object cdsOrcamentoTROCA_VENDA: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object cdsOrcamentoOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object cdsOrcamentoCNPJCLIENTE_VENDA: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object cdsOrcamentoRGCLIENTE_VENDA: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object cdsOrcamentoENDCLIENTE_VENDA: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object cdsOrcamentoBAICLIENTE_VENDA: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object cdsOrcamentoCIDCLIENTE_VENDA: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object cdsOrcamentoESTCLIENTE_VENDA: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object cdsOrcamentoCEPCLIENTE_VENDA: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object cdsOrcamentoFONECLIENTE_VENDA: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object cdsOrcamentoCARNE_VENDA: TStringField
      FieldName = 'CARNE_VENDA'
      Size = 1
    end
    object cdsOrcamentoUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object cdsOrcamentoUSUALTERA_VENDA: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object cdsOrcamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object cdsOrcamentoOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object cdsOrcamentoOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object cdsOrcamentoOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object cdsOrcamentoOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object cdsOrcamentoVALOR_BRUTO: TFMTBCDField
      FieldName = 'VALOR_BRUTO'
      Precision = 15
      Size = 2
    end
    object cdsOrcamentoDESC_PORC: TFMTBCDField
      FieldName = 'DESC_PORC'
      Precision = 15
      Size = 4
    end
    object cdsOrcamentoCGC_EMP: TStringField
      FieldName = 'CGC_EMP'
      Size = 18
    end
    object cdsOrcamentoINSCRICAO_EMP: TStringField
      FieldName = 'INSCRICAO_EMP'
    end
    object cdsOrcamentoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 30
    end
    object cdsOrcamentoEND_EMPRESA: TStringField
      FieldName = 'END_EMPRESA'
      Size = 70
    end
    object cdsOrcamentoCIDADE_EMP: TStringField
      FieldName = 'CIDADE_EMP'
      Size = 25
    end
    object cdsOrcamentoFONE_EMP: TStringField
      FieldName = 'FONE_EMP'
      Size = 13
    end
    object cdsOrcamentoNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object cdsOrcamentoFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Size = 40
    end
    object cdsOrcamentoDESCRICAO_PRO: TStringField
      FieldName = 'DESCRICAO_PRO'
      Size = 40
    end
    object cdsOrcamentoBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
    end
    object cdsOrcamentoCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      Size = 9
    end
    object cdsOrcamentoCIDADE_PRO: TStringField
      FieldName = 'CIDADE_PRO'
      Size = 30
    end
    object cdsOrcamentoFONE_PRO: TStringField
      FieldName = 'FONE_PRO'
      Size = 15
    end
    object cdsOrcamentoESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      Size = 2
    end
    object cdsOrcamentoINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      Size = 18
    end
    object cdsOrcamentoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object cdsOrcamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsOrcamentoFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsOrcamentoCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object cdsOrcamentoNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 33
    end
    object cdsOrcamentoCOB_NOME_CIDADE: TStringField
      FieldName = 'COB_NOME_CIDADE'
      Size = 33
    end
    object cdsOrcamentoCOB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsOrcamentoBANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object cdsOrcamentoENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsOrcamentoBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsOrcamentoCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 9
    end
    object cdsOrcamentoCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
    end
    object cdsOrcamentoTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 15
    end
    object cdsOrcamentoESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsOrcamentoINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
    object cdsOrcamentoqryItensOrc: TDataSetField
      FieldName = 'qryItensOrc'
    end
  end
  object cdsItensOrc: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsOrcamentoqryItensOrc
    Params = <
      item
        DataType = ftInteger
        Name = 'CODORC'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 104
    object cdsItensOrcID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object cdsItensOrcCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object cdsItensOrcPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      Required = True
    end
    object cdsItensOrcDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 40
    end
    object cdsItensOrcVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      DisplayFormat = '.00'
      Precision = 15
      Size = 4
    end
    object cdsItensOrcQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      DisplayFormat = '.000'
      Precision = 15
      Size = 3
    end
    object cdsItensOrcGRADE_IVENDAS: TStringField
      FieldName = 'GRADE_IVENDAS'
      Size = 5
    end
    object cdsItensOrcPROMOCAO_IVENDAS: TStringField
      FieldName = 'PROMOCAO_IVENDAS'
      Size = 1
    end
    object cdsItensOrcFABRICA_IVENDAS: TStringField
      FieldName = 'FABRICA_IVENDAS'
      Size = 15
    end
    object cdsItensOrcSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      Size = 60
    end
    object cdsItensOrcDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsItensOrcICM_IVENDAS: TFMTBCDField
      FieldName = 'ICM_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsItensOrcIPI_IVENDAS: TFMTBCDField
      FieldName = 'IPI_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsItensOrcREDUTOR_IVENDAS: TFMTBCDField
      FieldName = 'REDUTOR_IVENDAS'
      Precision = 15
      Size = 4
    end
    object cdsItensOrcTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object cdsItensOrcFISCAL_IVENDAS: TStringField
      FieldName = 'FISCAL_IVENDAS'
      Size = 5
    end
    object cdsItensOrcGARANTIA_IVENDAS: TStringField
      FieldName = 'GARANTIA_IVENDAS'
      Size = 10
    end
    object cdsItensOrcTECNICO_IVENDAS: TIntegerField
      FieldName = 'TECNICO_IVENDAS'
    end
    object cdsItensOrcALTURA_IVENDAS: TFMTBCDField
      FieldName = 'ALTURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsItensOrcLARGURA_IVENDAS: TFMTBCDField
      FieldName = 'LARGURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object cdsItensOrcCOMPRIMENTO_VENDAS: TFMTBCDField
      FieldName = 'COMPRIMENTO_VENDAS'
      Precision = 15
      Size = 2
    end
    object cdsItensOrcQTDE_VENDAS: TIntegerField
      FieldName = 'QTDE_VENDAS'
    end
    object cdsItensOrcCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object cdsItensOrcCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsItensOrcCLASSE_IVENDA: TStringField
      FieldName = 'CLASSE_IVENDA'
      Size = 1
    end
    object cdsItensOrcVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      DisplayFormat = '.00'
      Precision = 15
      Size = 7
    end
    object cdsItensOrcFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object cdsItensOrcFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object cdsItensOrcUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object cdsItensOrcCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      Size = 3
    end
    object cdsItensOrcPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
  end
  object qryOrcamento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMORC'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT V.*,'
      ''
      '(V.valornota_venda + V.desconto_venda) AS VALOR_BRUTO,'
      
        '(V.desconto_venda * 100 / (V.valornota_venda + V.desconto_venda)' +
        ') AS DESC_PORC,'
      ''
      'E.CGC_EMP,'
      'E.INSCRICAO_EMP,'
      'E.EMPRESA,'
      
        '(E.endereco_emp || '#39', '#39' || E.numero_emp || '#39' - '#39' || E.bairro_emp' +
        ') AS END_EMPRESA,'
      '(E.cidade_emp || '#39' - '#39' || E.estado_emp) AS CIDADE_EMP,'
      '(E.telefone_emp) AS FONE_EMP,'
      ''
      'VE.NOME_VENDEDOR,'
      ''
      'P.DESCRICAO_CPAGAMENTO AS FORMA_PAGAMENTO,'
      ''
      'PR.DESCRICAO_PRO,'
      'PR.BAIRRO_PRO,'
      'PR.CEP_PRO,'
      'CI.DESCRICAO_CIDADE AS CIDADE_PRO,'
      'PR.FONE_PRO,'
      'PR.ESTADO_PRO,'
      'PR.INSCEST_PRO,'
      ''
      'CL.CODIGO_CLIENTE,'
      'CL.NOME_CLIENTE,'
      'CL.FANTASIA_CLIENTE,'
      'CL.CNPJ_CLIENTE,'
      ''
      'CASE V.PROPRIEDADE_VENDA'
      '    WHEN '#39'0'#39' THEN (CI.DESCRICAO_CIDADE || '#39'-'#39' || CI.UF_CIDADE) '
      '    ELSE CI3.DESCRICAO_CIDADE'
      'END AS NOME_CIDADE,'
      ''
      
        '(CI2.DESCRICAO_CIDADE || '#39'-'#39' || CI2.UF_CIDADE) AS COB_NOME_CIDAD' +
        'E,'
      'CL.COB_ENDERECO_CLIENTE,'
      'CL.BANCO1_CLIENTE,'
      ''
      'CASE V.PROPRIEDADE_VENDA'
      '    WHEN '#39'0'#39' THEN CL.ENDERECO_CLIENTE'
      '    ELSE PR.DESCRICAO_PRO'
      'END AS ENDERECO_CLIENTE,'
      ''
      'CASE V.PROPRIEDADE_VENDA'
      '    WHEN '#39'0'#39' THEN CL.BAIRRO_CLIENTE'
      '    ELSE PR.BAIRRO_PRO'
      'END AS BAIRRO_CLIENTE,'
      ''
      'CASE V.PROPRIEDADE_VENDA'
      '    WHEN '#39'0'#39' THEN CL.CEP_CLIENTE'
      '    ELSE PR.CEP_PRO'
      'END AS CEP_CLIENTE,'
      ''
      'CASE V.PROPRIEDADE_VENDA'
      '    WHEN '#39'0'#39' THEN CL.CIDADE_CLIENTE'
      '    ELSE PR.CIDADE_PRO'
      'END AS CIDADE_CLIENTE,'
      ''
      'CASE V.PROPRIEDADE_VENDA'
      '    WHEN '#39'0'#39' THEN CL.TELEFONE_CLIENTE'
      '    ELSE PR.FONE_PRO'
      'END AS TELEFONE_CLIENTE,'
      ''
      'CASE V.PROPRIEDADE_VENDA'
      '    WHEN '#39'0'#39' THEN CL.ESTADO_CLIENTE'
      '    ELSE PR.ESTADO_PRO'
      'END AS ESTADO_CLIENTE,'
      ''
      'CASE V.PROPRIEDADE_VENDA'
      '    WHEN '#39'0'#39' THEN CL.INSCRICAO_CLIENTE'
      '    ELSE PR.INSCEST_PRO'
      'END AS INSCRICAO_CLIENTE'
      ''
      'FROM P_VENDAS V'
      'LEFT OUTER JOIN EMPRESA E  ON (E.CODIGO_EMP=:CODEMPRESA)'
      
        'LEFT OUTER JOIN P_VENDEDOR VE ON (VE.CODIGO_VENDEDOR=V.VENDEDOR_' +
        'VENDA)'
      
        'LEFT OUTER JOIN P_CPAGAMENTO P ON (P.CODIGO_CPAGAMENTO=V.CPAGAME' +
        'NTO_VENDA)'
      
        'LEFT OUTER JOIN E_PROPRIEDADE PR ON (PR.CODIGO_PRO=V.PROPRIEDADE' +
        '_VENDA)'
      
        'LEFT OUTER JOIN E_CLIENTE CL ON (V.CLIENTE_VENDA=CL.CODIGO_CLIEN' +
        'TE)'
      
        'LEFT OUTER JOIN E_CIDADE CI ON (CI.CODIGO_CIDADE=CL.CIDADE_CLIEN' +
        'TE)'
      
        'LEFT OUTER JOIN E_CIDADE CI2 ON (CI2.CODIGO_CIDADE=CL.COB_CIDADE' +
        '_CLIENTE)'
      
        'LEFT OUTER JOIN E_CIDADE CI3 ON (CI3.CODIGO_CIDADE=PR.CIDADE_PRO' +
        ')'
      ''
      'WHERE CODIGO_VENDA=:NUMORC')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 8
    object qryOrcamentoCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryOrcamentoVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryOrcamentoPARCEIRO_VENDA: TIntegerField
      FieldName = 'PARCEIRO_VENDA'
    end
    object qryOrcamentoCLIENTE_VENDA: TIntegerField
      FieldName = 'CLIENTE_VENDA'
    end
    object qryOrcamentoPROPRIEDADE_VENDA: TIntegerField
      FieldName = 'PROPRIEDADE_VENDA'
    end
    object qryOrcamentoNOMECLIENTE_VENDA: TStringField
      FieldName = 'NOMECLIENTE_VENDA'
      Size = 30
    end
    object qryOrcamentoDATA_VENDA: TDateField
      FieldName = 'DATA_VENDA'
    end
    object qryOrcamentoEXCLUSAO_VENDA: TDateField
      FieldName = 'EXCLUSAO_VENDA'
    end
    object qryOrcamentoHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryOrcamentoFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoDESCON_ESP_VENDA: TFMTBCDField
      FieldName = 'DESCON_ESP_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoCPAGAMENTO_VENDA: TFMTBCDField
      FieldName = 'CPAGAMENTO_VENDA'
      Precision = 15
      Size = 0
    end
    object qryOrcamentoCHAVE_VENDA: TStringField
      FieldName = 'CHAVE_VENDA'
      Size = 21
    end
    object qryOrcamentoCAIXA_VENDA: TFMTBCDField
      FieldName = 'CAIXA_VENDA'
      Precision = 15
      Size = 0
    end
    object qryOrcamentoTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
    object qryOrcamentoCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object qryOrcamentoNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryOrcamentoSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryOrcamentoCONFIRMA_VENDA: TStringField
      FieldName = 'CONFIRMA_VENDA'
      Size = 1
    end
    object qryOrcamentoEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object qryOrcamentoDATASAIDA_VENDA: TDateField
      FieldName = 'DATASAIDA_VENDA'
    end
    object qryOrcamentoHORASAIDA_VENDA: TStringField
      FieldName = 'HORASAIDA_VENDA'
      Size = 8
    end
    object qryOrcamentoVALORNOTA_VENDA: TFMTBCDField
      FieldName = 'VALORNOTA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoBASEICMS_VENDA: TFMTBCDField
      FieldName = 'BASEICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoICMS_VENDA: TFMTBCDField
      FieldName = 'ICMS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoBASEICMSSB_VENDA: TFMTBCDField
      FieldName = 'BASEICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoICMSSB_VENDA: TFMTBCDField
      FieldName = 'ICMSSB_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoIPI_VENDA: TFMTBCDField
      FieldName = 'IPI_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoTRANSPORTA_VENDA: TIntegerField
      FieldName = 'TRANSPORTA_VENDA'
    end
    object qryOrcamentoPESOBRUTO_VENDA: TFMTBCDField
      FieldName = 'PESOBRUTO_VENDA'
      Precision = 15
      Size = 3
    end
    object qryOrcamentoPESOLIQUIDO_VENDA: TFMTBCDField
      FieldName = 'PESOLIQUIDO_VENDA'
      Precision = 15
      Size = 3
    end
    object qryOrcamentoOBSERVACAO_VENDA: TStringField
      FieldName = 'OBSERVACAO_VENDA'
      Size = 75
    end
    object qryOrcamentoPARCELAS_VENDA: TIntegerField
      FieldName = 'PARCELAS_VENDA'
    end
    object qryOrcamentoVALOR01_VENDA: TFMTBCDField
      FieldName = 'VALOR01_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR02_VENDA: TFMTBCDField
      FieldName = 'VALOR02_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR03_VENDA: TFMTBCDField
      FieldName = 'VALOR03_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR04_VENDA: TFMTBCDField
      FieldName = 'VALOR04_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR05_VENDA: TFMTBCDField
      FieldName = 'VALOR05_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR06_VENDA: TFMTBCDField
      FieldName = 'VALOR06_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR07_VENDA: TFMTBCDField
      FieldName = 'VALOR07_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR08_VENDA: TFMTBCDField
      FieldName = 'VALOR08_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR09_VENDA: TFMTBCDField
      FieldName = 'VALOR09_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR10_VENDA: TFMTBCDField
      FieldName = 'VALOR10_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR11_VENDA: TFMTBCDField
      FieldName = 'VALOR11_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR12_VENDA: TFMTBCDField
      FieldName = 'VALOR12_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR13_VENDA: TFMTBCDField
      FieldName = 'VALOR13_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR14_VENDA: TFMTBCDField
      FieldName = 'VALOR14_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVALOR15_VENDA: TFMTBCDField
      FieldName = 'VALOR15_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoVENCIMEN01_VENDA: TDateField
      FieldName = 'VENCIMEN01_VENDA'
    end
    object qryOrcamentoVENCIMEN02_VENDA: TDateField
      FieldName = 'VENCIMEN02_VENDA'
    end
    object qryOrcamentoVENCIMEN03_VENDA: TDateField
      FieldName = 'VENCIMEN03_VENDA'
    end
    object qryOrcamentoVENCIMEN04_VENDA: TDateField
      FieldName = 'VENCIMEN04_VENDA'
    end
    object qryOrcamentoVENCIMEN05_VENDA: TDateField
      FieldName = 'VENCIMEN05_VENDA'
    end
    object qryOrcamentoVENCIMEN06_VENDA: TDateField
      FieldName = 'VENCIMEN06_VENDA'
    end
    object qryOrcamentoVENCIMEN07_VENDA: TDateField
      FieldName = 'VENCIMEN07_VENDA'
    end
    object qryOrcamentoVENCIMEN08_VENDA: TDateField
      FieldName = 'VENCIMEN08_VENDA'
    end
    object qryOrcamentoVENCIMEN09_VENDA: TDateField
      FieldName = 'VENCIMEN09_VENDA'
    end
    object qryOrcamentoVENCIMEN10_VENDA: TDateField
      FieldName = 'VENCIMEN10_VENDA'
    end
    object qryOrcamentoVENCIMEN11_VENDA: TDateField
      FieldName = 'VENCIMEN11_VENDA'
    end
    object qryOrcamentoVENCIMEN12_VENDA: TDateField
      FieldName = 'VENCIMEN12_VENDA'
    end
    object qryOrcamentoVENCIMEN13_VENDA: TDateField
      FieldName = 'VENCIMEN13_VENDA'
    end
    object qryOrcamentoVENCIMEN14_VENDA: TDateField
      FieldName = 'VENCIMEN14_VENDA'
    end
    object qryOrcamentoVENCIMEN15_VENDA: TDateField
      FieldName = 'VENCIMEN15_VENDA'
    end
    object qryOrcamentoCOMISSAO_VENDA: TFMTBCDField
      FieldName = 'COMISSAO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qryOrcamentoTIPO1_VENDA: TStringField
      FieldName = 'TIPO1_VENDA'
      Size = 2
    end
    object qryOrcamentoDEVOLVE_VENDA: TStringField
      FieldName = 'DEVOLVE_VENDA'
      Size = 1
    end
    object qryOrcamentoENTREGA_VENDA: TStringField
      FieldName = 'ENTREGA_VENDA'
      Size = 1
    end
    object qryOrcamentoTROCO_VENDA: TFMTBCDField
      FieldName = 'TROCO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoFRETE_VENDA: TFMTBCDField
      FieldName = 'FRETE_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoSEGURO_VENDA: TFMTBCDField
      FieldName = 'SEGURO_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoOUTROS_VENDA: TFMTBCDField
      FieldName = 'OUTROS_VENDA'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoROMANEIO_VENDA: TIntegerField
      FieldName = 'ROMANEIO_VENDA'
    end
    object qryOrcamentoPLACASAIDA_VENDA: TStringField
      FieldName = 'PLACASAIDA_VENDA'
      Size = 8
    end
    object qryOrcamentoESTADOSAIDA_VENDA: TStringField
      FieldName = 'ESTADOSAIDA_VENDA'
      Size = 2
    end
    object qryOrcamentoNRFATURA_VENDA: TIntegerField
      FieldName = 'NRFATURA_VENDA'
    end
    object qryOrcamentoAUTONOMO_VENDA: TStringField
      FieldName = 'AUTONOMO_VENDA'
      Size = 1
    end
    object qryOrcamentoEXPORTADO_VENDA: TStringField
      FieldName = 'EXPORTADO_VENDA'
      Size = 1
    end
    object qryOrcamentoTIPO_DOC_VENDA: TStringField
      FieldName = 'TIPO_DOC_VENDA'
      Size = 1
    end
    object qryOrcamentoINFOADICIONA_VENDA: TStringField
      FieldName = 'INFOADICIONA_VENDA'
      Size = 60
    end
    object qryOrcamentoMACHO_4_VENDA: TIntegerField
      FieldName = 'MACHO_4_VENDA'
    end
    object qryOrcamentoMACHO_4_12_VENDA: TIntegerField
      FieldName = 'MACHO_4_12_VENDA'
    end
    object qryOrcamentoMACHO_12_24_VENDA: TIntegerField
      FieldName = 'MACHO_12_24_VENDA'
    end
    object qryOrcamentoMACHO_24_36_VENDA: TIntegerField
      FieldName = 'MACHO_24_36_VENDA'
    end
    object qryOrcamentoMACHO_M36_VENDA: TIntegerField
      FieldName = 'MACHO_M36_VENDA'
    end
    object qryOrcamentoFEMEA_4_VENDA: TIntegerField
      FieldName = 'FEMEA_4_VENDA'
    end
    object qryOrcamentoFEMEA_4_12_VENDA: TIntegerField
      FieldName = 'FEMEA_4_12_VENDA'
    end
    object qryOrcamentoFEMEA_12_24_VENDA: TIntegerField
      FieldName = 'FEMEA_12_24_VENDA'
    end
    object qryOrcamentoFEMEA_24_36_VENDA: TIntegerField
      FieldName = 'FEMEA_24_36_VENDA'
    end
    object qryOrcamentoFEMEA_M36_VENDA: TIntegerField
      FieldName = 'FEMEA_M36_VENDA'
    end
    object qryOrcamentoBUFALOS_VENDA: TIntegerField
      FieldName = 'BUFALOS_VENDA'
    end
    object qryOrcamentoCAPRINOS_VENDA: TIntegerField
      FieldName = 'CAPRINOS_VENDA'
    end
    object qryOrcamentoOVINOS_VENDA: TIntegerField
      FieldName = 'OVINOS_VENDA'
    end
    object qryOrcamentoSUINOS_VENDA: TIntegerField
      FieldName = 'SUINOS_VENDA'
    end
    object qryOrcamentoTROCA_VENDA: TIntegerField
      FieldName = 'TROCA_VENDA'
    end
    object qryOrcamentoOS_VENDA: TIntegerField
      FieldName = 'OS_VENDA'
    end
    object qryOrcamentoCNPJCLIENTE_VENDA: TStringField
      FieldName = 'CNPJCLIENTE_VENDA'
      Size = 18
    end
    object qryOrcamentoRGCLIENTE_VENDA: TStringField
      FieldName = 'RGCLIENTE_VENDA'
    end
    object qryOrcamentoENDCLIENTE_VENDA: TStringField
      FieldName = 'ENDCLIENTE_VENDA'
      Size = 40
    end
    object qryOrcamentoBAICLIENTE_VENDA: TStringField
      FieldName = 'BAICLIENTE_VENDA'
    end
    object qryOrcamentoCIDCLIENTE_VENDA: TStringField
      FieldName = 'CIDCLIENTE_VENDA'
    end
    object qryOrcamentoESTCLIENTE_VENDA: TStringField
      FieldName = 'ESTCLIENTE_VENDA'
      Size = 2
    end
    object qryOrcamentoCEPCLIENTE_VENDA: TStringField
      FieldName = 'CEPCLIENTE_VENDA'
      Size = 9
    end
    object qryOrcamentoFONECLIENTE_VENDA: TStringField
      FieldName = 'FONECLIENTE_VENDA'
      Size = 13
    end
    object qryOrcamentoCARNE_VENDA: TStringField
      FieldName = 'CARNE_VENDA'
      Size = 1
    end
    object qryOrcamentoUSUARIO_VENDA: TStringField
      FieldName = 'USUARIO_VENDA'
      Size = 10
    end
    object qryOrcamentoUSUALTERA_VENDA: TStringField
      FieldName = 'USUALTERA_VENDA'
      Size = 10
    end
    object qryOrcamentoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object qryOrcamentoOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object qryOrcamentoOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object qryOrcamentoOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object qryOrcamentoOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object qryOrcamentoVALOR_BRUTO: TFMTBCDField
      FieldName = 'VALOR_BRUTO'
      Precision = 15
      Size = 2
    end
    object qryOrcamentoDESC_PORC: TFMTBCDField
      FieldName = 'DESC_PORC'
      Precision = 15
      Size = 4
    end
    object qryOrcamentoCGC_EMP: TStringField
      FieldName = 'CGC_EMP'
      Size = 18
    end
    object qryOrcamentoINSCRICAO_EMP: TStringField
      FieldName = 'INSCRICAO_EMP'
    end
    object qryOrcamentoEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 30
    end
    object qryOrcamentoEND_EMPRESA: TStringField
      FieldName = 'END_EMPRESA'
      Size = 70
    end
    object qryOrcamentoCIDADE_EMP: TStringField
      FieldName = 'CIDADE_EMP'
      Size = 25
    end
    object qryOrcamentoFONE_EMP: TStringField
      FieldName = 'FONE_EMP'
      Size = 13
    end
    object qryOrcamentoNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 30
    end
    object qryOrcamentoFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Size = 40
    end
    object qryOrcamentoDESCRICAO_PRO: TStringField
      FieldName = 'DESCRICAO_PRO'
      Size = 40
    end
    object qryOrcamentoBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
    end
    object qryOrcamentoCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      Size = 9
    end
    object qryOrcamentoCIDADE_PRO: TStringField
      FieldName = 'CIDADE_PRO'
      Size = 30
    end
    object qryOrcamentoFONE_PRO: TStringField
      FieldName = 'FONE_PRO'
      Size = 15
    end
    object qryOrcamentoESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      Size = 2
    end
    object qryOrcamentoINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      Size = 18
    end
    object qryOrcamentoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qryOrcamentoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object qryOrcamentoFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object qryOrcamentoCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object qryOrcamentoNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 33
    end
    object qryOrcamentoCOB_NOME_CIDADE: TStringField
      FieldName = 'COB_NOME_CIDADE'
      Size = 33
    end
    object qryOrcamentoCOB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object qryOrcamentoBANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object qryOrcamentoENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object qryOrcamentoBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object qryOrcamentoCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 9
    end
    object qryOrcamentoCIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
    end
    object qryOrcamentoTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 15
    end
    object qryOrcamentoESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object qryOrcamentoINSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
  end
  object qryItensOrc: TSQLQuery
    DataSource = dsConnectItensOrc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO_VENDA'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'SELECT'
      'V.*,'
      '(V.quantidade_ivendas * V.valorbruto_ivendas) as VALORTOTAL,'
      'P.fabrica_produto,'
      'P.fabricante_produto,'
      'P.unidade_produto,'
      'P.preco_custo_produto,'
      'G.codigo_grade'
      'FROM P_VENDAS_ITENS V'
      
        'left outer join P_PRODUTOS P on V.produto_ivenda=P.codigo_produt' +
        'o'
      
        'left outer join P_PRODUTOS_GRADE G on V.grade_ivendas=G.codigo_g' +
        'rade'
      'WHERE V.codigo_ivenda=:CODIGO_VENDA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 40
    Top = 104
    object qryItensOrcID_VENDA_ITEM: TIntegerField
      FieldName = 'ID_VENDA_ITEM'
    end
    object qryItensOrcCODIGO_IVENDA: TIntegerField
      FieldName = 'CODIGO_IVENDA'
      Required = True
    end
    object qryItensOrcPRODUTO_IVENDA: TIntegerField
      FieldName = 'PRODUTO_IVENDA'
      Required = True
    end
    object qryItensOrcDESCRICAO_IVENDAS: TStringField
      FieldName = 'DESCRICAO_IVENDAS'
      Size = 40
    end
    object qryItensOrcVALORBRUTO_IVENDAS: TFMTBCDField
      FieldName = 'VALORBRUTO_IVENDAS'
      Precision = 15
      Size = 4
    end
    object qryItensOrcQUANTIDADE_IVENDAS: TFMTBCDField
      FieldName = 'QUANTIDADE_IVENDAS'
      Required = True
      Precision = 15
      Size = 3
    end
    object qryItensOrcGRADE_IVENDAS: TStringField
      FieldName = 'GRADE_IVENDAS'
      Size = 5
    end
    object qryItensOrcPROMOCAO_IVENDAS: TStringField
      FieldName = 'PROMOCAO_IVENDAS'
      Size = 1
    end
    object qryItensOrcFABRICA_IVENDAS: TStringField
      FieldName = 'FABRICA_IVENDAS'
      Size = 15
    end
    object qryItensOrcSERIE_IVENDAS: TStringField
      FieldName = 'SERIE_IVENDAS'
      Size = 60
    end
    object qryItensOrcDESCONTO_IVENDAS: TFMTBCDField
      FieldName = 'DESCONTO_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryItensOrcICM_IVENDAS: TFMTBCDField
      FieldName = 'ICM_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryItensOrcIPI_IVENDAS: TFMTBCDField
      FieldName = 'IPI_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryItensOrcREDUTOR_IVENDAS: TFMTBCDField
      FieldName = 'REDUTOR_IVENDAS'
      Precision = 15
      Size = 4
    end
    object qryItensOrcTRIBUTACAO_IVENDAS: TStringField
      FieldName = 'TRIBUTACAO_IVENDAS'
      Size = 3
    end
    object qryItensOrcFISCAL_IVENDAS: TStringField
      FieldName = 'FISCAL_IVENDAS'
      Size = 5
    end
    object qryItensOrcGARANTIA_IVENDAS: TStringField
      FieldName = 'GARANTIA_IVENDAS'
      Size = 10
    end
    object qryItensOrcTECNICO_IVENDAS: TIntegerField
      FieldName = 'TECNICO_IVENDAS'
    end
    object qryItensOrcALTURA_IVENDAS: TFMTBCDField
      FieldName = 'ALTURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryItensOrcLARGURA_IVENDAS: TFMTBCDField
      FieldName = 'LARGURA_IVENDAS'
      Precision = 15
      Size = 2
    end
    object qryItensOrcCOMPRIMENTO_VENDAS: TFMTBCDField
      FieldName = 'COMPRIMENTO_VENDAS'
      Precision = 15
      Size = 2
    end
    object qryItensOrcQTDE_VENDAS: TIntegerField
      FieldName = 'QTDE_VENDAS'
    end
    object qryItensOrcCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qryItensOrcCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryItensOrcCLASSE_IVENDA: TStringField
      FieldName = 'CLASSE_IVENDA'
      Size = 1
    end
    object qryItensOrcVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Precision = 15
      Size = 7
    end
    object qryItensOrcFABRICA_PRODUTO: TIntegerField
      FieldName = 'FABRICA_PRODUTO'
    end
    object qryItensOrcFABRICANTE_PRODUTO: TStringField
      FieldName = 'FABRICANTE_PRODUTO'
      Size = 15
    end
    object qryItensOrcUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      FixedChar = True
      Size = 4
    end
    object qryItensOrcCODIGO_GRADE: TStringField
      FieldName = 'CODIGO_GRADE'
      Size = 3
    end
    object qryItensOrcPRECO_CUSTO_PRODUTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO_PRODUTO'
      Precision = 15
      Size = 4
    end
  end
  object dspOrcamento: TDataSetProvider
    DataSet = qryOrcamento
    Options = [poAllowCommandText]
    Left = 112
    Top = 8
  end
  object pplOrc: TppDBPipeline
    DataSource = dsOrcamento
    UserName = 'lOrc'
    Left = 328
    Top = 56
    MasterDataPipelineName = 'pplItenOrc'
    object pplOrcppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pplOrcppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pplOrcppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCEIRO_VENDA'
      FieldName = 'PARCEIRO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object pplOrcppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object pplOrcppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROPRIEDADE_VENDA'
      FieldName = 'PROPRIEDADE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pplOrcppField6: TppField
      FieldAlias = 'NOMECLIENTE_VENDA'
      FieldName = 'NOMECLIENTE_VENDA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object pplOrcppField7: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object pplOrcppField8: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object pplOrcppField9: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pplOrcppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object pplOrcppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object pplOrcppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCON_ESP_VENDA'
      FieldName = 'DESCON_ESP_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object pplOrcppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CPAGAMENTO_VENDA'
      FieldName = 'CPAGAMENTO_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
    object pplOrcppField14: TppField
      FieldAlias = 'CHAVE_VENDA'
      FieldName = 'CHAVE_VENDA'
      FieldLength = 21
      DisplayWidth = 21
      Position = 13
    end
    object pplOrcppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAIXA_VENDA'
      FieldName = 'CAIXA_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object pplOrcppField16: TppField
      FieldAlias = 'TIPO_PRECO_VENDA'
      FieldName = 'TIPO_PRECO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object pplOrcppField17: TppField
      FieldAlias = 'CFOP_VENDA'
      FieldName = 'CFOP_VENDA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 16
    end
    object pplOrcppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object pplOrcppField19: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object pplOrcppField20: TppField
      FieldAlias = 'CONFIRMA_VENDA'
      FieldName = 'CONFIRMA_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object pplOrcppField21: TppField
      FieldAlias = 'EMISSAO_VENDA'
      FieldName = 'EMISSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 20
    end
    object pplOrcppField22: TppField
      FieldAlias = 'DATASAIDA_VENDA'
      FieldName = 'DATASAIDA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 21
    end
    object pplOrcppField23: TppField
      FieldAlias = 'HORASAIDA_VENDA'
      FieldName = 'HORASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 22
    end
    object pplOrcppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 23
    end
    object pplOrcppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASEICMS_VENDA'
      FieldName = 'BASEICMS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 24
    end
    object pplOrcppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 25
    end
    object pplOrcppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASEICMSSB_VENDA'
      FieldName = 'BASEICMSSB_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 26
    end
    object pplOrcppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMSSB_VENDA'
      FieldName = 'ICMSSB_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 27
    end
    object pplOrcppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI_VENDA'
      FieldName = 'IPI_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 28
    end
    object pplOrcppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSPORTA_VENDA'
      FieldName = 'TRANSPORTA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pplOrcppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESOBRUTO_VENDA'
      FieldName = 'PESOBRUTO_VENDA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 30
    end
    object pplOrcppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESOLIQUIDO_VENDA'
      FieldName = 'PESOLIQUIDO_VENDA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 31
    end
    object pplOrcppField33: TppField
      FieldAlias = 'OBSERVACAO_VENDA'
      FieldName = 'OBSERVACAO_VENDA'
      FieldLength = 75
      DisplayWidth = 75
      Position = 32
    end
    object pplOrcppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELAS_VENDA'
      FieldName = 'PARCELAS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object pplOrcppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR01_VENDA'
      FieldName = 'VALOR01_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 34
    end
    object pplOrcppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR02_VENDA'
      FieldName = 'VALOR02_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 35
    end
    object pplOrcppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR03_VENDA'
      FieldName = 'VALOR03_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 36
    end
    object pplOrcppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR04_VENDA'
      FieldName = 'VALOR04_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 37
    end
    object pplOrcppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR05_VENDA'
      FieldName = 'VALOR05_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 38
    end
    object pplOrcppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR06_VENDA'
      FieldName = 'VALOR06_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 39
    end
    object pplOrcppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR07_VENDA'
      FieldName = 'VALOR07_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 40
    end
    object pplOrcppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR08_VENDA'
      FieldName = 'VALOR08_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 41
    end
    object pplOrcppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR09_VENDA'
      FieldName = 'VALOR09_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 42
    end
    object pplOrcppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR10_VENDA'
      FieldName = 'VALOR10_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 43
    end
    object pplOrcppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR11_VENDA'
      FieldName = 'VALOR11_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 44
    end
    object pplOrcppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR12_VENDA'
      FieldName = 'VALOR12_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 45
    end
    object pplOrcppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR13_VENDA'
      FieldName = 'VALOR13_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 46
    end
    object pplOrcppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR14_VENDA'
      FieldName = 'VALOR14_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 47
    end
    object pplOrcppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR15_VENDA'
      FieldName = 'VALOR15_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 48
    end
    object pplOrcppField50: TppField
      FieldAlias = 'VENCIMEN01_VENDA'
      FieldName = 'VENCIMEN01_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 49
    end
    object pplOrcppField51: TppField
      FieldAlias = 'VENCIMEN02_VENDA'
      FieldName = 'VENCIMEN02_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 50
    end
    object pplOrcppField52: TppField
      FieldAlias = 'VENCIMEN03_VENDA'
      FieldName = 'VENCIMEN03_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 51
    end
    object pplOrcppField53: TppField
      FieldAlias = 'VENCIMEN04_VENDA'
      FieldName = 'VENCIMEN04_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 52
    end
    object pplOrcppField54: TppField
      FieldAlias = 'VENCIMEN05_VENDA'
      FieldName = 'VENCIMEN05_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 53
    end
    object pplOrcppField55: TppField
      FieldAlias = 'VENCIMEN06_VENDA'
      FieldName = 'VENCIMEN06_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 54
    end
    object pplOrcppField56: TppField
      FieldAlias = 'VENCIMEN07_VENDA'
      FieldName = 'VENCIMEN07_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 55
    end
    object pplOrcppField57: TppField
      FieldAlias = 'VENCIMEN08_VENDA'
      FieldName = 'VENCIMEN08_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 56
    end
    object pplOrcppField58: TppField
      FieldAlias = 'VENCIMEN09_VENDA'
      FieldName = 'VENCIMEN09_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 57
    end
    object pplOrcppField59: TppField
      FieldAlias = 'VENCIMEN10_VENDA'
      FieldName = 'VENCIMEN10_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 58
    end
    object pplOrcppField60: TppField
      FieldAlias = 'VENCIMEN11_VENDA'
      FieldName = 'VENCIMEN11_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 59
    end
    object pplOrcppField61: TppField
      FieldAlias = 'VENCIMEN12_VENDA'
      FieldName = 'VENCIMEN12_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 60
    end
    object pplOrcppField62: TppField
      FieldAlias = 'VENCIMEN13_VENDA'
      FieldName = 'VENCIMEN13_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 61
    end
    object pplOrcppField63: TppField
      FieldAlias = 'VENCIMEN14_VENDA'
      FieldName = 'VENCIMEN14_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 62
    end
    object pplOrcppField64: TppField
      FieldAlias = 'VENCIMEN15_VENDA'
      FieldName = 'VENCIMEN15_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 63
    end
    object pplOrcppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMISSAO_VENDA'
      FieldName = 'COMISSAO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 64
    end
    object pplOrcppField66: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object pplOrcppField67: TppField
      FieldAlias = 'TIPO1_VENDA'
      FieldName = 'TIPO1_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 66
    end
    object pplOrcppField68: TppField
      FieldAlias = 'DEVOLVE_VENDA'
      FieldName = 'DEVOLVE_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 67
    end
    object pplOrcppField69: TppField
      FieldAlias = 'ENTREGA_VENDA'
      FieldName = 'ENTREGA_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 68
    end
    object pplOrcppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCO_VENDA'
      FieldName = 'TROCO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 69
    end
    object pplOrcppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'FRETE_VENDA'
      FieldName = 'FRETE_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 70
    end
    object pplOrcppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEGURO_VENDA'
      FieldName = 'SEGURO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 71
    end
    object pplOrcppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'OUTROS_VENDA'
      FieldName = 'OUTROS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 72
    end
    object pplOrcppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROMANEIO_VENDA'
      FieldName = 'ROMANEIO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pplOrcppField75: TppField
      FieldAlias = 'PLACASAIDA_VENDA'
      FieldName = 'PLACASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 74
    end
    object pplOrcppField76: TppField
      FieldAlias = 'ESTADOSAIDA_VENDA'
      FieldName = 'ESTADOSAIDA_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 75
    end
    object pplOrcppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'NRFATURA_VENDA'
      FieldName = 'NRFATURA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pplOrcppField78: TppField
      FieldAlias = 'AUTONOMO_VENDA'
      FieldName = 'AUTONOMO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 77
    end
    object pplOrcppField79: TppField
      FieldAlias = 'EXPORTADO_VENDA'
      FieldName = 'EXPORTADO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 78
    end
    object pplOrcppField80: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 79
    end
    object pplOrcppField81: TppField
      FieldAlias = 'INFOADICIONA_VENDA'
      FieldName = 'INFOADICIONA_VENDA'
      FieldLength = 60
      DisplayWidth = 60
      Position = 80
    end
    object pplOrcppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_4_VENDA'
      FieldName = 'MACHO_4_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 81
    end
    object pplOrcppField83: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_4_12_VENDA'
      FieldName = 'MACHO_4_12_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 82
    end
    object pplOrcppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_12_24_VENDA'
      FieldName = 'MACHO_12_24_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pplOrcppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_24_36_VENDA'
      FieldName = 'MACHO_24_36_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 84
    end
    object pplOrcppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_M36_VENDA'
      FieldName = 'MACHO_M36_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 85
    end
    object pplOrcppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_4_VENDA'
      FieldName = 'FEMEA_4_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 86
    end
    object pplOrcppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_4_12_VENDA'
      FieldName = 'FEMEA_4_12_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 87
    end
    object pplOrcppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_12_24_VENDA'
      FieldName = 'FEMEA_12_24_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 88
    end
    object pplOrcppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_24_36_VENDA'
      FieldName = 'FEMEA_24_36_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 89
    end
    object pplOrcppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_M36_VENDA'
      FieldName = 'FEMEA_M36_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 90
    end
    object pplOrcppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUFALOS_VENDA'
      FieldName = 'BUFALOS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 91
    end
    object pplOrcppField93: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAPRINOS_VENDA'
      FieldName = 'CAPRINOS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 92
    end
    object pplOrcppField94: TppField
      Alignment = taRightJustify
      FieldAlias = 'OVINOS_VENDA'
      FieldName = 'OVINOS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 93
    end
    object pplOrcppField95: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUINOS_VENDA'
      FieldName = 'SUINOS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 94
    end
    object pplOrcppField96: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCA_VENDA'
      FieldName = 'TROCA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 95
    end
    object pplOrcppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pplOrcppField98: TppField
      FieldAlias = 'CNPJCLIENTE_VENDA'
      FieldName = 'CNPJCLIENTE_VENDA'
      FieldLength = 18
      DisplayWidth = 18
      Position = 97
    end
    object pplOrcppField99: TppField
      FieldAlias = 'RGCLIENTE_VENDA'
      FieldName = 'RGCLIENTE_VENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 98
    end
    object pplOrcppField100: TppField
      FieldAlias = 'ENDCLIENTE_VENDA'
      FieldName = 'ENDCLIENTE_VENDA'
      FieldLength = 40
      DisplayWidth = 40
      Position = 99
    end
    object pplOrcppField101: TppField
      FieldAlias = 'BAICLIENTE_VENDA'
      FieldName = 'BAICLIENTE_VENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 100
    end
    object pplOrcppField102: TppField
      FieldAlias = 'CIDCLIENTE_VENDA'
      FieldName = 'CIDCLIENTE_VENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 101
    end
    object pplOrcppField103: TppField
      FieldAlias = 'ESTCLIENTE_VENDA'
      FieldName = 'ESTCLIENTE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 102
    end
    object pplOrcppField104: TppField
      FieldAlias = 'CEPCLIENTE_VENDA'
      FieldName = 'CEPCLIENTE_VENDA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 103
    end
    object pplOrcppField105: TppField
      FieldAlias = 'FONECLIENTE_VENDA'
      FieldName = 'FONECLIENTE_VENDA'
      FieldLength = 13
      DisplayWidth = 13
      Position = 104
    end
    object pplOrcppField106: TppField
      FieldAlias = 'CARNE_VENDA'
      FieldName = 'CARNE_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 105
    end
    object pplOrcppField107: TppField
      FieldAlias = 'USUARIO_VENDA'
      FieldName = 'USUARIO_VENDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 106
    end
    object pplOrcppField108: TppField
      FieldAlias = 'USUALTERA_VENDA'
      FieldName = 'USUALTERA_VENDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 107
    end
    object pplOrcppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 108
    end
    object pplOrcppField110: TppField
      FieldAlias = 'OBS1'
      FieldName = 'OBS1'
      FieldLength = 60
      DisplayWidth = 60
      Position = 109
    end
    object pplOrcppField111: TppField
      FieldAlias = 'OBS2'
      FieldName = 'OBS2'
      FieldLength = 60
      DisplayWidth = 60
      Position = 110
    end
    object pplOrcppField112: TppField
      FieldAlias = 'OBS3'
      FieldName = 'OBS3'
      FieldLength = 60
      DisplayWidth = 60
      Position = 111
    end
    object pplOrcppField113: TppField
      FieldAlias = 'OBS4'
      FieldName = 'OBS4'
      FieldLength = 60
      DisplayWidth = 60
      Position = 112
    end
    object pplOrcppField114: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_BRUTO'
      FieldName = 'VALOR_BRUTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 113
    end
    object pplOrcppField115: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_PORC'
      FieldName = 'DESC_PORC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 114
    end
    object pplOrcppField116: TppField
      FieldAlias = 'CGC_EMP'
      FieldName = 'CGC_EMP'
      FieldLength = 18
      DisplayWidth = 18
      Position = 115
    end
    object pplOrcppField117: TppField
      FieldAlias = 'INSCRICAO_EMP'
      FieldName = 'INSCRICAO_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 116
    end
    object pplOrcppField118: TppField
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 117
    end
    object pplOrcppField119: TppField
      FieldAlias = 'END_EMPRESA'
      FieldName = 'END_EMPRESA'
      FieldLength = 70
      DisplayWidth = 70
      Position = 118
    end
    object pplOrcppField120: TppField
      FieldAlias = 'CIDADE_EMP'
      FieldName = 'CIDADE_EMP'
      FieldLength = 25
      DisplayWidth = 25
      Position = 119
    end
    object pplOrcppField121: TppField
      FieldAlias = 'FONE_EMP'
      FieldName = 'FONE_EMP'
      FieldLength = 13
      DisplayWidth = 13
      Position = 120
    end
    object pplOrcppField122: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 30
      DisplayWidth = 30
      Position = 121
    end
    object pplOrcppField123: TppField
      FieldAlias = 'FORMA_PAGAMENTO'
      FieldName = 'FORMA_PAGAMENTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 122
    end
    object pplOrcppField124: TppField
      FieldAlias = 'DESCRICAO_PRO'
      FieldName = 'DESCRICAO_PRO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 123
    end
    object pplOrcppField125: TppField
      FieldAlias = 'BAIRRO_PRO'
      FieldName = 'BAIRRO_PRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 124
    end
    object pplOrcppField126: TppField
      FieldAlias = 'CEP_PRO'
      FieldName = 'CEP_PRO'
      FieldLength = 9
      DisplayWidth = 9
      Position = 125
    end
    object pplOrcppField127: TppField
      FieldAlias = 'CIDADE_PRO'
      FieldName = 'CIDADE_PRO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 126
    end
    object pplOrcppField128: TppField
      FieldAlias = 'FONE_PRO'
      FieldName = 'FONE_PRO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 127
    end
    object pplOrcppField129: TppField
      FieldAlias = 'ESTADO_PRO'
      FieldName = 'ESTADO_PRO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 128
    end
    object pplOrcppField130: TppField
      FieldAlias = 'INSCEST_PRO'
      FieldName = 'INSCEST_PRO'
      FieldLength = 18
      DisplayWidth = 18
      Position = 129
    end
    object pplOrcppField131: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_CLIENTE'
      FieldName = 'CODIGO_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 130
    end
    object pplOrcppField132: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 131
    end
    object pplOrcppField133: TppField
      FieldAlias = 'FANTASIA_CLIENTE'
      FieldName = 'FANTASIA_CLIENTE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 132
    end
    object pplOrcppField134: TppField
      FieldAlias = 'CNPJ_CLIENTE'
      FieldName = 'CNPJ_CLIENTE'
      FieldLength = 18
      DisplayWidth = 18
      Position = 133
    end
    object pplOrcppField135: TppField
      FieldAlias = 'NOME_CIDADE'
      FieldName = 'NOME_CIDADE'
      FieldLength = 33
      DisplayWidth = 33
      Position = 134
    end
    object pplOrcppField136: TppField
      FieldAlias = 'COB_NOME_CIDADE'
      FieldName = 'COB_NOME_CIDADE'
      FieldLength = 33
      DisplayWidth = 33
      Position = 135
    end
    object pplOrcppField137: TppField
      FieldAlias = 'COB_ENDERECO_CLIENTE'
      FieldName = 'COB_ENDERECO_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 136
    end
    object pplOrcppField138: TppField
      FieldAlias = 'BANCO1_CLIENTE'
      FieldName = 'BANCO1_CLIENTE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 137
    end
    object pplOrcppField139: TppField
      FieldAlias = 'ENDERECO_CLIENTE'
      FieldName = 'ENDERECO_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 138
    end
    object pplOrcppField140: TppField
      FieldAlias = 'BAIRRO_CLIENTE'
      FieldName = 'BAIRRO_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 139
    end
    object pplOrcppField141: TppField
      FieldAlias = 'CEP_CLIENTE'
      FieldName = 'CEP_CLIENTE'
      FieldLength = 9
      DisplayWidth = 9
      Position = 140
    end
    object pplOrcppField142: TppField
      Alignment = taRightJustify
      FieldAlias = 'CIDADE_CLIENTE'
      FieldName = 'CIDADE_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 141
    end
    object pplOrcppField143: TppField
      FieldAlias = 'TELEFONE_CLIENTE'
      FieldName = 'TELEFONE_CLIENTE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 142
    end
    object pplOrcppField144: TppField
      FieldAlias = 'ESTADO_CLIENTE'
      FieldName = 'ESTADO_CLIENTE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 143
    end
    object pplOrcppField145: TppField
      FieldAlias = 'INSCRICAO_CLIENTE'
      FieldName = 'INSCRICAO_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 144
    end
    object pplOrcppField146: TppField
      FieldAlias = 'qryItensOrc'
      FieldName = 'qryItensOrc'
      FieldLength = 0
      DisplayWidth = 10
      Position = 145
    end
  end
  object pplCliente: TppDBPipeline
    DataSource = dsOrcamento
    UserName = 'lCliente'
    Left = 328
    Top = 8
    MasterDataPipelineName = 'pplItenOrc'
    object pplClienteppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_VENDA'
      FieldName = 'CODIGO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pplClienteppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR_VENDA'
      FieldName = 'VENDEDOR_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pplClienteppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCEIRO_VENDA'
      FieldName = 'PARCEIRO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object pplClienteppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLIENTE_VENDA'
      FieldName = 'CLIENTE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object pplClienteppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROPRIEDADE_VENDA'
      FieldName = 'PROPRIEDADE_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pplClienteppField6: TppField
      FieldAlias = 'NOMECLIENTE_VENDA'
      FieldName = 'NOMECLIENTE_VENDA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object pplClienteppField7: TppField
      FieldAlias = 'DATA_VENDA'
      FieldName = 'DATA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object pplClienteppField8: TppField
      FieldAlias = 'EXCLUSAO_VENDA'
      FieldName = 'EXCLUSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object pplClienteppField9: TppField
      FieldAlias = 'HORA_VENDA'
      FieldName = 'HORA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pplClienteppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'FATURA_VENDA'
      FieldName = 'FATURA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 9
    end
    object pplClienteppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO_VENDA'
      FieldName = 'DESCONTO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 10
    end
    object pplClienteppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCON_ESP_VENDA'
      FieldName = 'DESCON_ESP_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 11
    end
    object pplClienteppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CPAGAMENTO_VENDA'
      FieldName = 'CPAGAMENTO_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 16
      Position = 12
    end
    object pplClienteppField14: TppField
      FieldAlias = 'CHAVE_VENDA'
      FieldName = 'CHAVE_VENDA'
      FieldLength = 21
      DisplayWidth = 21
      Position = 13
    end
    object pplClienteppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAIXA_VENDA'
      FieldName = 'CAIXA_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 16
      Position = 14
    end
    object pplClienteppField16: TppField
      FieldAlias = 'TIPO_PRECO_VENDA'
      FieldName = 'TIPO_PRECO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object pplClienteppField17: TppField
      FieldAlias = 'CFOP_VENDA'
      FieldName = 'CFOP_VENDA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 16
    end
    object pplClienteppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTAFISCAL_VENDA'
      FieldName = 'NOTAFISCAL_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object pplClienteppField19: TppField
      FieldAlias = 'SERIE_VENDA'
      FieldName = 'SERIE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object pplClienteppField20: TppField
      FieldAlias = 'CONFIRMA_VENDA'
      FieldName = 'CONFIRMA_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 19
    end
    object pplClienteppField21: TppField
      FieldAlias = 'EMISSAO_VENDA'
      FieldName = 'EMISSAO_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 20
    end
    object pplClienteppField22: TppField
      FieldAlias = 'DATASAIDA_VENDA'
      FieldName = 'DATASAIDA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 21
    end
    object pplClienteppField23: TppField
      FieldAlias = 'HORASAIDA_VENDA'
      FieldName = 'HORASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 22
    end
    object pplClienteppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALORNOTA_VENDA'
      FieldName = 'VALORNOTA_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 23
    end
    object pplClienteppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASEICMS_VENDA'
      FieldName = 'BASEICMS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 24
    end
    object pplClienteppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_VENDA'
      FieldName = 'ICMS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 25
    end
    object pplClienteppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASEICMSSB_VENDA'
      FieldName = 'BASEICMSSB_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 26
    end
    object pplClienteppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMSSB_VENDA'
      FieldName = 'ICMSSB_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 27
    end
    object pplClienteppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI_VENDA'
      FieldName = 'IPI_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 28
    end
    object pplClienteppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANSPORTA_VENDA'
      FieldName = 'TRANSPORTA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pplClienteppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESOBRUTO_VENDA'
      FieldName = 'PESOBRUTO_VENDA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 30
    end
    object pplClienteppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESOLIQUIDO_VENDA'
      FieldName = 'PESOLIQUIDO_VENDA'
      FieldLength = 3
      DataType = dtDouble
      DisplayWidth = 16
      Position = 31
    end
    object pplClienteppField33: TppField
      FieldAlias = 'OBSERVACAO_VENDA'
      FieldName = 'OBSERVACAO_VENDA'
      FieldLength = 75
      DisplayWidth = 75
      Position = 32
    end
    object pplClienteppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELAS_VENDA'
      FieldName = 'PARCELAS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object pplClienteppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR01_VENDA'
      FieldName = 'VALOR01_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 34
    end
    object pplClienteppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR02_VENDA'
      FieldName = 'VALOR02_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 35
    end
    object pplClienteppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR03_VENDA'
      FieldName = 'VALOR03_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 36
    end
    object pplClienteppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR04_VENDA'
      FieldName = 'VALOR04_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 37
    end
    object pplClienteppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR05_VENDA'
      FieldName = 'VALOR05_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 38
    end
    object pplClienteppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR06_VENDA'
      FieldName = 'VALOR06_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 39
    end
    object pplClienteppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR07_VENDA'
      FieldName = 'VALOR07_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 40
    end
    object pplClienteppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR08_VENDA'
      FieldName = 'VALOR08_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 41
    end
    object pplClienteppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR09_VENDA'
      FieldName = 'VALOR09_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 42
    end
    object pplClienteppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR10_VENDA'
      FieldName = 'VALOR10_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 43
    end
    object pplClienteppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR11_VENDA'
      FieldName = 'VALOR11_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 44
    end
    object pplClienteppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR12_VENDA'
      FieldName = 'VALOR12_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 45
    end
    object pplClienteppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR13_VENDA'
      FieldName = 'VALOR13_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 46
    end
    object pplClienteppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR14_VENDA'
      FieldName = 'VALOR14_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 47
    end
    object pplClienteppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR15_VENDA'
      FieldName = 'VALOR15_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 48
    end
    object pplClienteppField50: TppField
      FieldAlias = 'VENCIMEN01_VENDA'
      FieldName = 'VENCIMEN01_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 49
    end
    object pplClienteppField51: TppField
      FieldAlias = 'VENCIMEN02_VENDA'
      FieldName = 'VENCIMEN02_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 50
    end
    object pplClienteppField52: TppField
      FieldAlias = 'VENCIMEN03_VENDA'
      FieldName = 'VENCIMEN03_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 51
    end
    object pplClienteppField53: TppField
      FieldAlias = 'VENCIMEN04_VENDA'
      FieldName = 'VENCIMEN04_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 52
    end
    object pplClienteppField54: TppField
      FieldAlias = 'VENCIMEN05_VENDA'
      FieldName = 'VENCIMEN05_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 53
    end
    object pplClienteppField55: TppField
      FieldAlias = 'VENCIMEN06_VENDA'
      FieldName = 'VENCIMEN06_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 54
    end
    object pplClienteppField56: TppField
      FieldAlias = 'VENCIMEN07_VENDA'
      FieldName = 'VENCIMEN07_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 55
    end
    object pplClienteppField57: TppField
      FieldAlias = 'VENCIMEN08_VENDA'
      FieldName = 'VENCIMEN08_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 56
    end
    object pplClienteppField58: TppField
      FieldAlias = 'VENCIMEN09_VENDA'
      FieldName = 'VENCIMEN09_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 57
    end
    object pplClienteppField59: TppField
      FieldAlias = 'VENCIMEN10_VENDA'
      FieldName = 'VENCIMEN10_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 58
    end
    object pplClienteppField60: TppField
      FieldAlias = 'VENCIMEN11_VENDA'
      FieldName = 'VENCIMEN11_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 59
    end
    object pplClienteppField61: TppField
      FieldAlias = 'VENCIMEN12_VENDA'
      FieldName = 'VENCIMEN12_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 60
    end
    object pplClienteppField62: TppField
      FieldAlias = 'VENCIMEN13_VENDA'
      FieldName = 'VENCIMEN13_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 61
    end
    object pplClienteppField63: TppField
      FieldAlias = 'VENCIMEN14_VENDA'
      FieldName = 'VENCIMEN14_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 62
    end
    object pplClienteppField64: TppField
      FieldAlias = 'VENCIMEN15_VENDA'
      FieldName = 'VENCIMEN15_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 63
    end
    object pplClienteppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMISSAO_VENDA'
      FieldName = 'COMISSAO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 64
    end
    object pplClienteppField66: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object pplClienteppField67: TppField
      FieldAlias = 'TIPO1_VENDA'
      FieldName = 'TIPO1_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 66
    end
    object pplClienteppField68: TppField
      FieldAlias = 'DEVOLVE_VENDA'
      FieldName = 'DEVOLVE_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 67
    end
    object pplClienteppField69: TppField
      FieldAlias = 'ENTREGA_VENDA'
      FieldName = 'ENTREGA_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 68
    end
    object pplClienteppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCO_VENDA'
      FieldName = 'TROCO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 69
    end
    object pplClienteppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'FRETE_VENDA'
      FieldName = 'FRETE_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 70
    end
    object pplClienteppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEGURO_VENDA'
      FieldName = 'SEGURO_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 71
    end
    object pplClienteppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'OUTROS_VENDA'
      FieldName = 'OUTROS_VENDA'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 72
    end
    object pplClienteppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROMANEIO_VENDA'
      FieldName = 'ROMANEIO_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pplClienteppField75: TppField
      FieldAlias = 'PLACASAIDA_VENDA'
      FieldName = 'PLACASAIDA_VENDA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 74
    end
    object pplClienteppField76: TppField
      FieldAlias = 'ESTADOSAIDA_VENDA'
      FieldName = 'ESTADOSAIDA_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 75
    end
    object pplClienteppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'NRFATURA_VENDA'
      FieldName = 'NRFATURA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pplClienteppField78: TppField
      FieldAlias = 'AUTONOMO_VENDA'
      FieldName = 'AUTONOMO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 77
    end
    object pplClienteppField79: TppField
      FieldAlias = 'EXPORTADO_VENDA'
      FieldName = 'EXPORTADO_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 78
    end
    object pplClienteppField80: TppField
      FieldAlias = 'TIPO_DOC_VENDA'
      FieldName = 'TIPO_DOC_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 79
    end
    object pplClienteppField81: TppField
      FieldAlias = 'INFOADICIONA_VENDA'
      FieldName = 'INFOADICIONA_VENDA'
      FieldLength = 60
      DisplayWidth = 60
      Position = 80
    end
    object pplClienteppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_4_VENDA'
      FieldName = 'MACHO_4_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 81
    end
    object pplClienteppField83: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_4_12_VENDA'
      FieldName = 'MACHO_4_12_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 82
    end
    object pplClienteppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_12_24_VENDA'
      FieldName = 'MACHO_12_24_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pplClienteppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_24_36_VENDA'
      FieldName = 'MACHO_24_36_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 84
    end
    object pplClienteppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'MACHO_M36_VENDA'
      FieldName = 'MACHO_M36_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 85
    end
    object pplClienteppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_4_VENDA'
      FieldName = 'FEMEA_4_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 86
    end
    object pplClienteppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_4_12_VENDA'
      FieldName = 'FEMEA_4_12_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 87
    end
    object pplClienteppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_12_24_VENDA'
      FieldName = 'FEMEA_12_24_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 88
    end
    object pplClienteppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_24_36_VENDA'
      FieldName = 'FEMEA_24_36_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 89
    end
    object pplClienteppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEMEA_M36_VENDA'
      FieldName = 'FEMEA_M36_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 90
    end
    object pplClienteppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'BUFALOS_VENDA'
      FieldName = 'BUFALOS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 91
    end
    object pplClienteppField93: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAPRINOS_VENDA'
      FieldName = 'CAPRINOS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 92
    end
    object pplClienteppField94: TppField
      Alignment = taRightJustify
      FieldAlias = 'OVINOS_VENDA'
      FieldName = 'OVINOS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 93
    end
    object pplClienteppField95: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUINOS_VENDA'
      FieldName = 'SUINOS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 94
    end
    object pplClienteppField96: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCA_VENDA'
      FieldName = 'TROCA_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 95
    end
    object pplClienteppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_VENDA'
      FieldName = 'OS_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pplClienteppField98: TppField
      FieldAlias = 'CNPJCLIENTE_VENDA'
      FieldName = 'CNPJCLIENTE_VENDA'
      FieldLength = 18
      DisplayWidth = 18
      Position = 97
    end
    object pplClienteppField99: TppField
      FieldAlias = 'RGCLIENTE_VENDA'
      FieldName = 'RGCLIENTE_VENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 98
    end
    object pplClienteppField100: TppField
      FieldAlias = 'ENDCLIENTE_VENDA'
      FieldName = 'ENDCLIENTE_VENDA'
      FieldLength = 40
      DisplayWidth = 40
      Position = 99
    end
    object pplClienteppField101: TppField
      FieldAlias = 'BAICLIENTE_VENDA'
      FieldName = 'BAICLIENTE_VENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 100
    end
    object pplClienteppField102: TppField
      FieldAlias = 'CIDCLIENTE_VENDA'
      FieldName = 'CIDCLIENTE_VENDA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 101
    end
    object pplClienteppField103: TppField
      FieldAlias = 'ESTCLIENTE_VENDA'
      FieldName = 'ESTCLIENTE_VENDA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 102
    end
    object pplClienteppField104: TppField
      FieldAlias = 'CEPCLIENTE_VENDA'
      FieldName = 'CEPCLIENTE_VENDA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 103
    end
    object pplClienteppField105: TppField
      FieldAlias = 'FONECLIENTE_VENDA'
      FieldName = 'FONECLIENTE_VENDA'
      FieldLength = 13
      DisplayWidth = 13
      Position = 104
    end
    object pplClienteppField106: TppField
      FieldAlias = 'CARNE_VENDA'
      FieldName = 'CARNE_VENDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 105
    end
    object pplClienteppField107: TppField
      FieldAlias = 'USUARIO_VENDA'
      FieldName = 'USUARIO_VENDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 106
    end
    object pplClienteppField108: TppField
      FieldAlias = 'USUALTERA_VENDA'
      FieldName = 'USUALTERA_VENDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 107
    end
    object pplClienteppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_EMPRESA'
      FieldName = 'COD_EMPRESA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 108
    end
    object pplClienteppField110: TppField
      FieldAlias = 'OBS1'
      FieldName = 'OBS1'
      FieldLength = 60
      DisplayWidth = 60
      Position = 109
    end
    object pplClienteppField111: TppField
      FieldAlias = 'OBS2'
      FieldName = 'OBS2'
      FieldLength = 60
      DisplayWidth = 60
      Position = 110
    end
    object pplClienteppField112: TppField
      FieldAlias = 'OBS3'
      FieldName = 'OBS3'
      FieldLength = 60
      DisplayWidth = 60
      Position = 111
    end
    object pplClienteppField113: TppField
      FieldAlias = 'OBS4'
      FieldName = 'OBS4'
      FieldLength = 60
      DisplayWidth = 60
      Position = 112
    end
    object pplClienteppField114: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_BRUTO'
      FieldName = 'VALOR_BRUTO'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 16
      Position = 113
    end
    object pplClienteppField115: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_PORC'
      FieldName = 'DESC_PORC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 16
      Position = 114
    end
    object pplClienteppField116: TppField
      FieldAlias = 'CGC_EMP'
      FieldName = 'CGC_EMP'
      FieldLength = 18
      DisplayWidth = 18
      Position = 115
    end
    object pplClienteppField117: TppField
      FieldAlias = 'INSCRICAO_EMP'
      FieldName = 'INSCRICAO_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 116
    end
    object pplClienteppField118: TppField
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 117
    end
    object pplClienteppField119: TppField
      FieldAlias = 'END_EMPRESA'
      FieldName = 'END_EMPRESA'
      FieldLength = 70
      DisplayWidth = 70
      Position = 118
    end
    object pplClienteppField120: TppField
      FieldAlias = 'CIDADE_EMP'
      FieldName = 'CIDADE_EMP'
      FieldLength = 25
      DisplayWidth = 25
      Position = 119
    end
    object pplClienteppField121: TppField
      FieldAlias = 'FONE_EMP'
      FieldName = 'FONE_EMP'
      FieldLength = 13
      DisplayWidth = 13
      Position = 120
    end
    object pplClienteppField122: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 30
      DisplayWidth = 30
      Position = 121
    end
    object pplClienteppField123: TppField
      FieldAlias = 'FORMA_PAGAMENTO'
      FieldName = 'FORMA_PAGAMENTO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 122
    end
    object pplClienteppField124: TppField
      FieldAlias = 'DESCRICAO_PRO'
      FieldName = 'DESCRICAO_PRO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 123
    end
    object pplClienteppField125: TppField
      FieldAlias = 'BAIRRO_PRO'
      FieldName = 'BAIRRO_PRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 124
    end
    object pplClienteppField126: TppField
      FieldAlias = 'CEP_PRO'
      FieldName = 'CEP_PRO'
      FieldLength = 9
      DisplayWidth = 9
      Position = 125
    end
    object pplClienteppField127: TppField
      FieldAlias = 'CIDADE_PRO'
      FieldName = 'CIDADE_PRO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 126
    end
    object pplClienteppField128: TppField
      FieldAlias = 'FONE_PRO'
      FieldName = 'FONE_PRO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 127
    end
    object pplClienteppField129: TppField
      FieldAlias = 'ESTADO_PRO'
      FieldName = 'ESTADO_PRO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 128
    end
    object pplClienteppField130: TppField
      FieldAlias = 'INSCEST_PRO'
      FieldName = 'INSCEST_PRO'
      FieldLength = 18
      DisplayWidth = 18
      Position = 129
    end
    object pplClienteppField131: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_CLIENTE'
      FieldName = 'CODIGO_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 130
    end
    object pplClienteppField132: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 131
    end
    object pplClienteppField133: TppField
      FieldAlias = 'FANTASIA_CLIENTE'
      FieldName = 'FANTASIA_CLIENTE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 132
    end
    object pplClienteppField134: TppField
      FieldAlias = 'CNPJ_CLIENTE'
      FieldName = 'CNPJ_CLIENTE'
      FieldLength = 18
      DisplayWidth = 18
      Position = 133
    end
    object pplClienteppField135: TppField
      FieldAlias = 'NOME_CIDADE'
      FieldName = 'NOME_CIDADE'
      FieldLength = 33
      DisplayWidth = 33
      Position = 134
    end
    object pplClienteppField136: TppField
      FieldAlias = 'COB_NOME_CIDADE'
      FieldName = 'COB_NOME_CIDADE'
      FieldLength = 33
      DisplayWidth = 33
      Position = 135
    end
    object pplClienteppField137: TppField
      FieldAlias = 'COB_ENDERECO_CLIENTE'
      FieldName = 'COB_ENDERECO_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 136
    end
    object pplClienteppField138: TppField
      FieldAlias = 'BANCO1_CLIENTE'
      FieldName = 'BANCO1_CLIENTE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 137
    end
    object pplClienteppField139: TppField
      FieldAlias = 'ENDERECO_CLIENTE'
      FieldName = 'ENDERECO_CLIENTE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 138
    end
    object pplClienteppField140: TppField
      FieldAlias = 'BAIRRO_CLIENTE'
      FieldName = 'BAIRRO_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 139
    end
    object pplClienteppField141: TppField
      FieldAlias = 'CEP_CLIENTE'
      FieldName = 'CEP_CLIENTE'
      FieldLength = 9
      DisplayWidth = 9
      Position = 140
    end
    object pplClienteppField142: TppField
      Alignment = taRightJustify
      FieldAlias = 'CIDADE_CLIENTE'
      FieldName = 'CIDADE_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 141
    end
    object pplClienteppField143: TppField
      FieldAlias = 'TELEFONE_CLIENTE'
      FieldName = 'TELEFONE_CLIENTE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 142
    end
    object pplClienteppField144: TppField
      FieldAlias = 'ESTADO_CLIENTE'
      FieldName = 'ESTADO_CLIENTE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 143
    end
    object pplClienteppField145: TppField
      FieldAlias = 'INSCRICAO_CLIENTE'
      FieldName = 'INSCRICAO_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 144
    end
    object pplClienteppField146: TppField
      FieldAlias = 'qryItensOrc'
      FieldName = 'qryItensOrc'
      FieldLength = 0
      DisplayWidth = 10
      Position = 145
    end
  end
  object dsConnectItensOrc: TDataSource
    AutoEdit = False
    DataSet = qryOrcamento
    Left = 40
    Top = 56
  end
  object rptOrc_01: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 488
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[01] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARA' +
          'NTIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
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
        mmHeight = 1058
        mmLeft = 529
        mmTop = 20108
        mmWidth = 196586
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
        mmLeft = 265
        mmTop = 38629
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
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
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CGC.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10848
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 39158
        mmTop = 10848
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21431
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25665
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29898
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 34131
        mmWidth = 16404
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
        mmHeight = 794
        mmLeft = 0
        mmTop = 43656
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 25665
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 29898
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 25665
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 34131
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 39688
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 39688
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 39952
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148167
        mmTop = 39688
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 39688
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 39688
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 25665
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 29898
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 34131
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 25665
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 29898
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText38: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 34131
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText39: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6615
        mmWidth = 100542
        BandType = 0
      end
      object ppDBText40: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 10848
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText41: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 10848
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText42: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 25665
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText43: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 21431
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText44: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 21431
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 21431
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 14817
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 14817
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText46: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 14817
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText63: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 14817
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 14817
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'GO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 14817
        mmWidth = 3387
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 14817
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '75900-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 14817
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE/FAX.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 14817
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(64)36214579'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 14817
        mmWidth = 20320
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText47: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 119327
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 529
        mmWidth = 16669
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 45773
      mmPrintPosition = 0
      object ppLabel56: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel57: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-Total     -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 6350
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText54: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 6350
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel59: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto      -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 10583
        mmWidth = 43180
        BandType = 8
      end
      object ppLabel60: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto %    -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 14817
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText56: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 10583
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText57: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 14817
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText58: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 19050
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel62: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 26723
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText59: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 26458
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel63: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 26194
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText60: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 26458
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel64: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 26458
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText61: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 30956
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel65: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 30692
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText62: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 30956
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel66: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 30956
        mmWidth = 1588
        BandType = 8
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel61: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 19050
        mmWidth = 43180
        BandType = 8
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
        mmHeight = 794
        mmLeft = 265
        mmTop = 24871
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
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
        mmLeft = 0
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
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
        mmLeft = 31485
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel75: TppLabel
        UserName = 'Label75'
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
        mmLeft = 62442
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
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
        mmLeft = 93663
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
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
        mmLeft = 0
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
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
        mmLeft = 31485
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel79: TppLabel
        UserName = 'Label79'
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
        mmLeft = 62442
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel80: TppLabel
        UserName = 'Label80'
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
        mmLeft = 93663
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
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
        mmLeft = 0
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
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
        mmLeft = 31485
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel83: TppLabel
        UserName = 'Label83'
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
        mmLeft = 62442
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
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
        mmLeft = 93663
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel85: TppLabel
        UserName = 'Label85'
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
        mmLeft = 0
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
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
        mmLeft = 31485
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel87: TppLabel
        UserName = 'Label87'
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
        mmLeft = 62442
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34925
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel88: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label88'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel89: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label89'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label90'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label91'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object rptOrc_02: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 214001
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 8
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppLabel92: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[02] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARA' +
          'NTIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34131
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 5821
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 5821
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 16933
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel99: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21167
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel100: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25400
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel101: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29633
        mmWidth = 16404
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 39688
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel102: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 21167
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel103: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 25400
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel104: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 21167
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel105: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 29633
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel106: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35190
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel107: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 35190
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel108: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 35454
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel109: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148167
        mmTop = 35190
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 21167
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText64: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 25400
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText65: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 29633
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText66: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 21167
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 25400
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 29633
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6085
        mmWidth = 99272
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 5821
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText71: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 5821
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 21167
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 16933
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText74: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 16933
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 16933
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText75: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 10319
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10319
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText76: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 10319
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText77: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 10319
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel115: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 10319
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'GO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 10319
        mmWidth = 3387
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 10319
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '75900-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 10319
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel119: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE/FAX.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 10319
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(64)36214579'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 10319
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel453: TppLabel
        UserName = 'Label453'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 78581
        mmTop = 35190
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel454: TppLabel
        UserName = 'Label454'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cod. F'#225'brica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 96838
        mmTop = 35190
        mmWidth = 17780
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText78: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 66411
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText83: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText267: TppDBText
        UserName = 'DBText267'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FABRICANTE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 78581
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText268: TppDBText
        UserName = 'DBText268'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FABRICA_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 96838
        mmTop = 265
        mmWidth = 33338
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 45773
      mmPrintPosition = 0
      object ppLabel121: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel122: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-Total     -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 6350
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText84: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 6350
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel123: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto      -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 10583
        mmWidth = 43180
        BandType = 8
      end
      object ppLabel124: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto %    -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 14817
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText85: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 10583
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText86: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 14817
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText87: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 19050
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel125: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 26723
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText88: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 26458
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel126: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 26194
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText89: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 26458
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel127: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 26458
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText90: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 30956
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel128: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 30692
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText91: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 30956
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel129: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 30956
        mmWidth = 1588
        BandType = 8
      end
      object ppLine16: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel130: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 19050
        mmWidth = 43180
        BandType = 8
      end
      object ppLine17: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 24871
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel131: TppLabel
        UserName = 'Label58'
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
        mmLeft = 0
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel132: TppLabel
        UserName = 'Label74'
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
        mmLeft = 31485
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel133: TppLabel
        UserName = 'Label75'
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
        mmLeft = 62442
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel134: TppLabel
        UserName = 'Label76'
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
        mmLeft = 93663
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel135: TppLabel
        UserName = 'Label77'
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
        mmLeft = 0
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel136: TppLabel
        UserName = 'Label78'
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
        mmLeft = 31485
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel137: TppLabel
        UserName = 'Label79'
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
        mmLeft = 62442
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel138: TppLabel
        UserName = 'Label80'
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
        mmLeft = 93663
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel139: TppLabel
        UserName = 'Label81'
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
        mmLeft = 0
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel140: TppLabel
        UserName = 'Label82'
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
        mmLeft = 31485
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel141: TppLabel
        UserName = 'Label83'
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
        mmLeft = 62442
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel142: TppLabel
        UserName = 'Label84'
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
        mmLeft = 93663
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel143: TppLabel
        UserName = 'Label85'
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
        mmLeft = 0
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel144: TppLabel
        UserName = 'Label86'
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
        mmLeft = 31485
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel145: TppLabel
        UserName = 'Label87'
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
        mmLeft = 62442
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLine18: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34925
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel146: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label88'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel147: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label89'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel148: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label90'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel149: TppLabel
        UserName = 'Label91'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label91'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList3: TppParameterList
    end
  end
  object rptORc_03: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 432
    Top = 56
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38365
      mmPrintPosition = 0
      object ppLabel150: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[03] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARA' +
          'NTIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
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
        mmHeight = 1058
        mmLeft = 529
        mmTop = 14288
        mmWidth = 196586
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
        mmLeft = 265
        mmTop = 32544
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel151: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel152: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel154: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CGC.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101865
        mmTop = 6615
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel155: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 6615
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel156: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 15346
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel157: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 19579
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel158: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23813
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel159: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 28046
        mmWidth = 16298
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 37571
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel160: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 19579
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel161: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 23813
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel162: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 19579
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel163: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 28046
        mmWidth = 13335
        BandType = 0
      end
      object ppLabel164: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 33602
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel165: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 33602
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel166: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 33867
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 33602
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 33602
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180182
        mmTop = 33602
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText92: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText93: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 19579
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText94: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 23813
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText95: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 28046
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText96: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 19579
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText97: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 23813
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText98: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 28046
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText99: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6615
        mmWidth = 100542
        BandType = 0
      end
      object ppDBText100: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 6615
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText101: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 6615
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText102: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 19579
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText103: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 15346
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText104: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 15346
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 15346
        mmWidth = 2540
        BandType = 0
      end
      object ppDBText105: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8731
        mmTop = 10583
        mmWidth = 187325
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10583
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText106: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText107: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 119327
        BandType = 4
      end
      object ppDBText109: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 36513
      mmPrintPosition = 0
      object ppLabel173: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal Boleto ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 2117
        mmWidth = 45773
        BandType = 8
      end
      object ppDBText114: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 2117
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel174: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-tot:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23813
        mmWidth = 20373
        BandType = 8
      end
      object ppDBText115: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 23813
        mmWidth = 29104
        BandType = 8
      end
      object ppLabel175: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 51594
        mmTop = 23813
        mmWidth = 12700
        BandType = 8
      end
      object ppLabel176: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc %:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 23813
        mmWidth = 17727
        BandType = 8
      end
      object ppLabel177: TppLabel
        UserName = 'Label40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134409
        mmTop = 23813
        mmWidth = 35454
        BandType = 8
      end
      object ppDBText116: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 23813
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText117: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 113506
        mmTop = 23813
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText118: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 23813
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel178: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 27781
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText119: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 28046
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel179: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 27781
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText120: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 104775
        mmTop = 27781
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel180: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102659
        mmTop = 27517
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText121: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 32279
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel181: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 7938
        mmTop = 32015
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText122: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 104775
        mmTop = 32015
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel182: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102659
        mmTop = 31750
        mmWidth = 1588
        BandType = 8
      end
      object ppLabel172: TppLabel
        UserName = 'Label172'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1852
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label183'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 6085
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel184: TppLabel
        UserName = 'Label184'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label184'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31485
        mmTop = 6085
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel185: TppLabel
        UserName = 'Label185'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label185'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 6085
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel186: TppLabel
        UserName = 'Label186'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label186'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 93663
        mmTop = 6085
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel187: TppLabel
        UserName = 'Label187'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label187'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10319
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel188: TppLabel
        UserName = 'Label188'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label188'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31485
        mmTop = 10319
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel189: TppLabel
        UserName = 'Label189'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label189'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 10319
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel190: TppLabel
        UserName = 'Label801'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label801'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 93663
        mmTop = 10319
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel191: TppLabel
        UserName = 'Label191'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label191'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14552
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel192: TppLabel
        UserName = 'Label192'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label192'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31485
        mmTop = 14552
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel193: TppLabel
        UserName = 'Label193'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label193'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 14552
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel194: TppLabel
        UserName = 'Label194'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label194'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 93663
        mmTop = 14552
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel195: TppLabel
        UserName = 'Label195'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label195'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 18785
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel196: TppLabel
        UserName = 'Label196'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label196'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31485
        mmTop = 18785
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel197: TppLabel
        UserName = 'Label197'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label197'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 18785
        mmWidth = 29633
        BandType = 8
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList4: TppParameterList
    end
  end
  object rptOrc_05: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 56
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppLabel198: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[05] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARA' +
          'NTIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
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
        mmHeight = 1058
        mmLeft = 529
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34131
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel199: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel200: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel201: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel202: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 5821
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel203: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 5821
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel204: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 16933
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel205: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21167
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel206: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25400
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel207: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29633
        mmWidth = 16404
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 39688
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel208: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 21167
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel209: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 25400
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel210: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 21167
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel211: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 29633
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel212: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35190
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel213: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 35190
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel214: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 35454
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel215: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148167
        mmTop = 35190
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel216: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel217: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText113: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText123: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 21167
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText124: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 25400
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText125: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 29633
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText126: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 21167
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText127: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 25400
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText128: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 29633
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText129: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6085
        mmWidth = 99272
        BandType = 0
      end
      object ppDBText130: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 5821
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText131: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 5821
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText132: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 21167
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText133: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 16933
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText134: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 16933
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel218: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 16933
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText135: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 10319
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel219: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10319
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText136: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel220: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 10319
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText137: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 10319
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel221: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 10319
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel222: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'GO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 10319
        mmWidth = 3387
        BandType = 0
      end
      object ppLabel223: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 10319
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel224: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '75900-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 10319
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel225: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE/FAX.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 10319
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel226: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(64)36214579'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 10319
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel322: TppLabel
        UserName = 'Label322'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Grade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 119592
        mmTop = 35190
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText138: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText139: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 107421
        BandType = 4
      end
      object ppDBText140: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText141: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText142: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText143: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 529
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText192: TppDBText
        UserName = 'DBText192'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRADE_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 119592
        mmTop = 265
        mmWidth = 10848
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 35983
      mmPrintPosition = 0
      object ppLabel227: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel228: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-Total     -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 6350
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText144: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 6350
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel229: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto      -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 10583
        mmWidth = 43180
        BandType = 8
      end
      object ppLabel230: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto %    -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 14817
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText145: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 10583
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText146: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 14817
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText147: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 19050
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel231: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 26723
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText148: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 26458
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel232: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 26194
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText149: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 26458
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel233: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 26458
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText150: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 30956
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel234: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 30692
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText151: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 30956
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel235: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 30956
        mmWidth = 1588
        BandType = 8
      end
      object ppLine27: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel236: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 19050
        mmWidth = 43180
        BandType = 8
      end
      object ppLine28: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 24871
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel237: TppLabel
        UserName = 'Label58'
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
        mmLeft = 0
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel238: TppLabel
        UserName = 'Label74'
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
        mmLeft = 31485
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel239: TppLabel
        UserName = 'Label75'
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
        mmLeft = 62442
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel240: TppLabel
        UserName = 'Label76'
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
        mmLeft = 93663
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel241: TppLabel
        UserName = 'Label77'
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
        mmLeft = 0
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel242: TppLabel
        UserName = 'Label78'
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
        mmLeft = 31485
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel243: TppLabel
        UserName = 'Label79'
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
        mmLeft = 62442
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel244: TppLabel
        UserName = 'Label80'
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
        mmLeft = 93663
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel245: TppLabel
        UserName = 'Label81'
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
        mmLeft = 0
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel246: TppLabel
        UserName = 'Label82'
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
        mmLeft = 31485
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel247: TppLabel
        UserName = 'Label83'
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
        mmLeft = 62442
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel248: TppLabel
        UserName = 'Label84'
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
        mmLeft = 93663
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel249: TppLabel
        UserName = 'Label85'
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
        mmLeft = 0
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel250: TppLabel
        UserName = 'Label86'
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
        mmLeft = 31485
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel251: TppLabel
        UserName = 'Label87'
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
        mmLeft = 62442
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel256: TppLabel
        UserName = 'Label256'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal Boleto ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120915
        mmTop = 2117
        mmWidth = 45720
        BandType = 8
      end
      object ppDBText152: TppDBText
        UserName = 'DBText152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 2117
        mmWidth = 24342
        BandType = 8
      end
    end
    object raCodeModule5: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList5: TppParameterList
    end
  end
  object rptOrc_07: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 488
    Top = 104
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand6: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppLabel252: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[07] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARA' +
          'NTIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34131
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel253: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel254: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel255: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel257: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 5821
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel258: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 5821
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel259: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 16933
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel260: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21167
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel261: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25400
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel262: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29633
        mmWidth = 16404
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 39688
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel263: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 21167
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel264: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 25400
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel265: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 21167
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel266: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 29633
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel267: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35190
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel268: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 35190
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel269: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 35454
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel270: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148167
        mmTop = 35190
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel271: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel272: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText153: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText154: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 21167
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText155: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 25400
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText156: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 29633
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText157: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 21167
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText158: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 25400
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText159: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 29633
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText160: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6085
        mmWidth = 99272
        BandType = 0
      end
      object ppDBText161: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 5821
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText162: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 5821
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText163: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 21167
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText164: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 16933
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText165: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 16933
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel273: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 16933
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText166: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 10319
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel274: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10319
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText167: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel275: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 10319
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText168: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 10319
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel276: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 10319
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel277: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'GO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 10319
        mmWidth = 3387
        BandType = 0
      end
      object ppLabel278: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 10319
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel279: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '75900-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 10319
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel280: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE/FAX.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 10319
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel281: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(64)36214579'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 10319
        mmWidth = 20320
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText169: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText170: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 119327
        BandType = 4
      end
      object ppDBText171: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText172: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText173: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText174: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppLabel282: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel283: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-Total: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23548
        mmWidth = 28046
        BandType = 8
      end
      object ppDBText175: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 29369
        mmTop = 23548
        mmWidth = 27517
        BandType = 8
      end
      object ppLabel284: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 59267
        mmTop = 23548
        mmWidth = 12700
        BandType = 8
      end
      object ppLabel285: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc %:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 23283
        mmWidth = 17727
        BandType = 8
      end
      object ppDBText176: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 73025
        mmTop = 23548
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText177: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 23283
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText178: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 168011
        mmTop = 23283
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel286: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 29369
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText179: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 12435
        mmTop = 29104
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel287: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 28840
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText180: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 107156
        mmTop = 29104
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel288: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 104511
        mmTop = 29104
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText181: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 12435
        mmTop = 33602
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel289: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 33338
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText182: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 107156
        mmTop = 33602
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel290: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 104511
        mmTop = 33602
        mmWidth = 1588
        BandType = 8
      end
      object ppLine33: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel291: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 131763
        mmTop = 23283
        mmWidth = 35454
        BandType = 8
      end
      object ppLine34: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 2117
        mmTop = 27517
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel292: TppLabel
        UserName = 'Label58'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 6615
        mmWidth = 81492
        BandType = 8
      end
      object ppLabel296: TppLabel
        UserName = 'Label77'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10848
        mmWidth = 81491
        BandType = 8
      end
      object ppLabel297: TppLabel
        UserName = 'Label78'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 107156
        mmTop = 10848
        mmWidth = 81492
        BandType = 8
      end
      object ppLabel300: TppLabel
        UserName = 'Label81'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 15081
        mmWidth = 81491
        BandType = 8
      end
      object ppLabel301: TppLabel
        UserName = 'Label82'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 107156
        mmTop = 15081
        mmWidth = 81492
        BandType = 8
      end
      object ppLabel294: TppLabel
        UserName = 'Label294'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 22754
        mmTop = 19315
        mmWidth = 81492
        BandType = 8
      end
      object ppLabel295: TppLabel
        UserName = 'Label295'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal Boleto ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 126207
        mmTop = 2381
        mmWidth = 45773
        BandType = 8
      end
      object ppDBText183: TppDBText
        UserName = 'DBText183'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 172773
        mmTop = 2117
        mmWidth = 20108
        BandType = 8
      end
    end
    object raCodeModule6: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList6: TppParameterList
    end
  end
  object rptOrc_06: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 214001
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 432
    Top = 104
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand8: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppLabel325: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[06] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARA' +
          'NTIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34131
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel327: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel328: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel329: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine42: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel330: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 5821
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel331: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 5821
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel342: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 16933
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel343: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21167
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel344: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25400
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel345: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29633
        mmWidth = 16404
        BandType = 0
      end
      object ppLine43: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 39688
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel346: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 21167
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel347: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 25400
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel348: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 21167
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel349: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 29633
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel350: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35190
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel351: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 35190
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel352: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 35454
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel353: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148167
        mmTop = 35190
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel354: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel355: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText193: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText196: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 21167
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText205: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 25400
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText206: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 29633
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText209: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 21167
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText211: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 25400
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText212: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 29633
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText213: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6085
        mmWidth = 99272
        BandType = 0
      end
      object ppDBText214: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 5821
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText215: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 5821
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText216: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 21167
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText217: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 16933
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText218: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 16933
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel356: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 16933
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText219: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 10319
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel357: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10319
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText220: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel358: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 10319
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText221: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 10319
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel359: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 10319
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel360: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'GO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 10319
        mmWidth = 3387
        BandType = 0
      end
      object ppLabel361: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 10319
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel362: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '75900-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 10319
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel363: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE/FAX.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 10319
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel364: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(64)36214579'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 10319
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel394: TppLabel
        UserName = 'Label394'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Grade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 119592
        mmTop = 35190
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand8: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText222: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText223: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 107686
        BandType = 4
      end
      object ppDBText224: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText225: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText226: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText227: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 529
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText236: TppDBText
        UserName = 'DBText236'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRADE_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 119592
        mmTop = 265
        mmWidth = 10848
        BandType = 4
      end
    end
    object ppFooterBand8: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 46567
      mmPrintPosition = 0
      object ppLabel365: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel366: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-Total     -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 6350
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText228: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 6350
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel367: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto      -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 10583
        mmWidth = 43180
        BandType = 8
      end
      object ppLabel368: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto %    -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 14817
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText229: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 10583
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText230: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 14817
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText231: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 19050
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel369: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 26723
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText232: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 26458
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel370: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 26194
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText233: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 26458
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel371: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 26458
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText234: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 30956
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel372: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 30692
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText235: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 30956
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel373: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 30956
        mmWidth = 1588
        BandType = 8
      end
      object ppLine44: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel374: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 19050
        mmWidth = 43180
        BandType = 8
      end
      object ppLine45: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 24871
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel375: TppLabel
        UserName = 'Label58'
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
        mmLeft = 0
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel376: TppLabel
        UserName = 'Label74'
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
        mmLeft = 31485
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel377: TppLabel
        UserName = 'Label75'
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
        mmLeft = 62442
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel378: TppLabel
        UserName = 'Label76'
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
        mmLeft = 93663
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel379: TppLabel
        UserName = 'Label77'
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
        mmLeft = 0
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel380: TppLabel
        UserName = 'Label78'
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
        mmLeft = 31485
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel381: TppLabel
        UserName = 'Label79'
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
        mmLeft = 62442
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel382: TppLabel
        UserName = 'Label80'
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
        mmLeft = 93663
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel383: TppLabel
        UserName = 'Label81'
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
        mmLeft = 0
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel384: TppLabel
        UserName = 'Label82'
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
        mmLeft = 31485
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel385: TppLabel
        UserName = 'Label83'
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
        mmLeft = 62442
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel386: TppLabel
        UserName = 'Label84'
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
        mmLeft = 93663
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel387: TppLabel
        UserName = 'Label85'
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
        mmLeft = 0
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel388: TppLabel
        UserName = 'Label86'
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
        mmLeft = 31485
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel389: TppLabel
        UserName = 'Label87'
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
        mmLeft = 62442
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLine46: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34925
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel390: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label88'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel391: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label89'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel392: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label90'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel393: TppLabel
        UserName = 'Label91'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label91'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
    end
    object raCodeModule8: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList8: TppParameterList
    end
  end
  object rptOrc_04: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 214001
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 488
    Top = 56
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand9: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppLabel395: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[02] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARA' +
          'NTIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
      end
      object ppLine47: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLine48: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34131
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel396: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel397: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel398: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel399: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 5821
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel400: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 5821
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel401: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 16933
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel402: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21167
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel403: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25400
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel404: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29633
        mmWidth = 16404
        BandType = 0
      end
      object ppLine50: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 39688
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel405: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 21167
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel406: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 25400
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel407: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 21167
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel408: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 29633
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel409: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35190
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel410: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 35190
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel411: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 35454
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel412: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148167
        mmTop = 35190
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel413: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel414: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText237: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText238: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 21167
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText239: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 25400
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText240: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 29633
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText241: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 21167
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText242: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 25400
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText243: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 29633
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText244: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6085
        mmWidth = 99272
        BandType = 0
      end
      object ppDBText245: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 5821
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText246: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 5821
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText247: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 21167
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText248: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 16933
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText249: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 16933
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel415: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 16933
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText250: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 10319
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel416: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10319
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText251: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel417: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 10319
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText252: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 10319
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel418: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 10319
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel419: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'GO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 10319
        mmWidth = 3387
        BandType = 0
      end
      object ppLabel420: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 10319
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel421: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '75900-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 10319
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel422: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE/FAX.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 10319
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel423: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(64)36214579'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 10319
        mmWidth = 20320
        BandType = 0
      end
    end
    object ppDetailBand9: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText253: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText254: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 119327
        BandType = 4
      end
      object ppDBText255: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText256: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText257: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText258: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 529
        mmWidth = 16669
        BandType = 4
      end
    end
    object ppFooterBand9: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 45773
      mmPrintPosition = 0
      object ppLabel424: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel425: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-Total     -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 6350
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText259: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 6350
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel426: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto      -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 10583
        mmWidth = 43180
        BandType = 8
      end
      object ppLabel427: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto %    -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 14817
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText260: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 10583
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText261: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 14817
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText262: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 19050
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel428: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 26723
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText263: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 26458
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel429: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 26194
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText264: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 26458
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel430: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 26458
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText265: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 30956
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel431: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 30692
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText266: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 30956
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel432: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 30956
        mmWidth = 1588
        BandType = 8
      end
      object ppLine51: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel433: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 19050
        mmWidth = 43180
        BandType = 8
      end
      object ppLine52: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 24871
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel434: TppLabel
        UserName = 'Label58'
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
        mmLeft = 0
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel435: TppLabel
        UserName = 'Label74'
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
        mmLeft = 31485
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel436: TppLabel
        UserName = 'Label75'
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
        mmLeft = 62442
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel437: TppLabel
        UserName = 'Label76'
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
        mmLeft = 93663
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel438: TppLabel
        UserName = 'Label77'
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
        mmLeft = 0
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel439: TppLabel
        UserName = 'Label78'
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
        mmLeft = 31485
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel440: TppLabel
        UserName = 'Label79'
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
        mmLeft = 62442
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel441: TppLabel
        UserName = 'Label80'
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
        mmLeft = 93663
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel442: TppLabel
        UserName = 'Label81'
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
        mmLeft = 0
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel443: TppLabel
        UserName = 'Label82'
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
        mmLeft = 31485
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel444: TppLabel
        UserName = 'Label83'
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
        mmLeft = 62442
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel445: TppLabel
        UserName = 'Label84'
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
        mmLeft = 93663
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel446: TppLabel
        UserName = 'Label85'
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
        mmLeft = 0
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel447: TppLabel
        UserName = 'Label86'
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
        mmLeft = 31485
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel448: TppLabel
        UserName = 'Label87'
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
        mmLeft = 62442
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLine53: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34925
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel449: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label88'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel450: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label89'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel451: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label90'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel452: TppLabel
        UserName = 'Label91'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label91'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
    end
    object raCodeModule9: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList9: TppParameterList
    end
  end
  object rptOrc_09: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 432
    Top = 152
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand10: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 51858
      mmPrintPosition = 0
      object ppLabel455: TppLabel
        UserName = 'lbTitulo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[09] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARA' +
          'NTIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 172720
        BandType = 0
      end
      object ppLine54: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 24606
        mmWidth = 196586
        BandType = 0
      end
      object ppLine55: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 43656
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel456: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4233
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel457: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 4233
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel458: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175948
        mmTop = 4233
        mmWidth = 12700
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 189177
        mmTop = 4233
        mmWidth = 7673
        BandType = 0
      end
      object ppLine56: TppLine
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
        mmTop = 8467
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel459: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CGC.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 19315
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel460: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 61648
        mmTop = 19315
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel461: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 26723
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel462: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 30956
        mmWidth = 27940
        BandType = 0
      end
      object ppLabel463: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35190
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel464: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 39423
        mmWidth = 28046
        BandType = 0
      end
      object ppLine57: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1058
        mmTop = 51064
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel466: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 145786
        mmTop = 35190
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel468: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 107950
        mmTop = 39423
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel469: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 45773
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel470: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 45773
        mmWidth = 33020
        BandType = 0
      end
      object ppLabel471: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 111125
        mmTop = 45773
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel472: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125677
        mmTop = 45773
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel473: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 45773
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel474: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 45773
        mmWidth = 28046
        BandType = 0
      end
      object ppDBText269: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 33338
        mmTop = 4233
        mmWidth = 23813
        BandType = 0
      end
      object ppDBText270: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 29369
        mmTop = 30956
        mmWidth = 167482
        BandType = 0
      end
      object ppDBText271: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 29369
        mmTop = 35190
        mmWidth = 48683
        BandType = 0
      end
      object ppDBText272: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 29369
        mmTop = 39423
        mmWidth = 78581
        BandType = 0
      end
      object ppDBText274: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 35190
        mmWidth = 37306
        BandType = 0
      end
      object ppDBText275: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 131234
        mmTop = 39423
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText276: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10848
        mmWidth = 100542
        BandType = 0
      end
      object ppDBText277: TppDBText
        UserName = 'DBText17'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 19315
        mmWidth = 46143
        BandType = 0
      end
      object ppDBText278: TppDBText
        UserName = 'DBText18'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 93134
        mmTop = 19315
        mmWidth = 39793
        BandType = 0
      end
      object ppDBText280: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 51065
        mmTop = 26723
        mmWidth = 119063
        BandType = 0
      end
      object ppDBText281: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 29369
        mmTop = 26723
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel475: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 26723
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText282: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 15081
        mmWidth = 196057
        BandType = 0
      end
      object ppDBText283: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 63236
        mmTop = 4233
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel476: TppLabel
        UserName = 'Label476'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Telefone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133879
        mmTop = 19315
        mmWidth = 22860
        BandType = 0
      end
      object ppLabel465: TppLabel
        UserName = 'Label465'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'I.E.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 79111
        mmTop = 35190
        mmWidth = 12700
        BandType = 0
      end
      object ppDBText273: TppDBText
        UserName = 'DBText101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 92604
        mmTop = 35190
        mmWidth = 51858
        BandType = 0
      end
    end
    object ppDetailBand10: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText284: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText285: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 265
        mmWidth = 92075
        BandType = 4
      end
      object ppDBText286: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 110861
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText287: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 125677
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText288: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 265
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText289: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 169334
        mmTop = 265
        mmWidth = 26988
        BandType = 4
      end
    end
    object ppFooterBand10: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 52388
      mmPrintPosition = 0
      object ppLabel477: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal Boleto ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 2117
        mmWidth = 45773
        BandType = 8
      end
      object ppDBText290: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 2117
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel478: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-tot:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23813
        mmWidth = 20373
        BandType = 8
      end
      object ppDBText291: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 23813
        mmWidth = 29104
        BandType = 8
      end
      object ppLabel479: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 51594
        mmTop = 23813
        mmWidth = 12700
        BandType = 8
      end
      object ppLabel480: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc %:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 23813
        mmWidth = 17727
        BandType = 8
      end
      object ppLabel481: TppLabel
        UserName = 'Label40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134409
        mmTop = 23813
        mmWidth = 35454
        BandType = 8
      end
      object ppDBText292: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 64823
        mmTop = 23813
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText293: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 113506
        mmTop = 23813
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText294: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 23813
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel482: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29633
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText295: TppDBText
        UserName = 'DBText29'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 29898
        mmWidth = 92287
        BandType = 8
      end
      object ppDBText296: TppDBText
        UserName = 'DBText34'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 33867
        mmWidth = 92287
        BandType = 8
      end
      object ppDBText297: TppDBText
        UserName = 'DBText36'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 37835
        mmWidth = 92287
        BandType = 8
      end
      object ppDBText298: TppDBText
        UserName = 'DBText37'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 41804
        mmWidth = 92287
        BandType = 8
      end
      object ppLabel487: TppLabel
        UserName = 'Label172'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1852
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel488: TppLabel
        UserName = 'Label183'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label183'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 6085
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel489: TppLabel
        UserName = 'Label184'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label184'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31485
        mmTop = 6085
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel490: TppLabel
        UserName = 'Label185'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label185'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 6085
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel491: TppLabel
        UserName = 'Label186'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label186'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 93663
        mmTop = 6085
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel492: TppLabel
        UserName = 'Label187'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label187'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10319
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel493: TppLabel
        UserName = 'Label188'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label188'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31485
        mmTop = 10319
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel494: TppLabel
        UserName = 'Label189'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label189'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 10319
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel495: TppLabel
        UserName = 'Label801'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label801'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 93663
        mmTop = 10319
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel496: TppLabel
        UserName = 'Label191'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label191'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14552
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel497: TppLabel
        UserName = 'Label192'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label192'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31485
        mmTop = 14552
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel498: TppLabel
        UserName = 'Label193'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label193'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 14552
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel499: TppLabel
        UserName = 'Label194'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label194'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 93663
        mmTop = 14552
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel500: TppLabel
        UserName = 'Label195'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label195'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 18785
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel501: TppLabel
        UserName = 'Label196'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label196'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31485
        mmTop = 18785
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel502: TppLabel
        UserName = 'Label197'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label197'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 18785
        mmWidth = 29633
        BandType = 8
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLine59: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 29369
        mmWidth = 196586
        BandType = 8
      end
      object ppLine60: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 46567
        mmWidth = 196586
        BandType = 8
      end
      object ppDBText279: TppDBText
        UserName = 'DBText279'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 47096
        mmWidth = 196321
        BandType = 8
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 51594
        mmWidth = 196586
        BandType = 8
      end
    end
    object raCodeModule10: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList10: TppParameterList
    end
  end
  object rptOrc_A: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 488
    Top = 152
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand11: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 42863
      mmPrintPosition = 0
      object ppLine62: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 794
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLine63: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1058
        mmTop = 34660
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel504: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 17727
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel505: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 21960
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel506: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 26194
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel507: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 30427
        mmWidth = 28046
        BandType = 0
      end
      object ppLine65: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1852
        mmTop = 42069
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel508: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 26194
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel509: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 108744
        mmTop = 30427
        mmWidth = 22754
        BandType = 0
      end
      object ppLabel510: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 36777
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel511: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 36777
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel512: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110861
        mmTop = 36777
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel513: TppLabel
        UserName = 'Label25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtd'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 126471
        mmTop = 36777
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel514: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139965
        mmTop = 36777
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel515: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pr'#231'. Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 36777
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText300: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 30163
        mmTop = 21960
        mmWidth = 167482
        BandType = 0
      end
      object ppDBText301: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 30163
        mmTop = 26194
        mmWidth = 48683
        BandType = 0
      end
      object ppDBText302: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 30163
        mmTop = 30427
        mmWidth = 78581
        BandType = 0
      end
      object ppDBText303: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 160338
        mmTop = 26194
        mmWidth = 37306
        BandType = 0
      end
      object ppDBText304: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 30427
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText308: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 51858
        mmTop = 17727
        mmWidth = 119063
        BandType = 0
      end
      object ppDBText309: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 30163
        mmTop = 17727
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel516: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 48154
        mmTop = 17727
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel518: TppLabel
        UserName = 'Label465'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'I.E.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 26194
        mmWidth = 12700
        BandType = 0
      end
      object ppDBText312: TppDBText
        UserName = 'DBText101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 26194
        mmWidth = 51858
        BandType = 0
      end
      object ppLabel467: TppLabel
        UserName = 'lbTitulo2'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[A] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARAN' +
          'TIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
      end
      object ppLabel483: TppLabel
        UserName = 'Label483'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel484: TppLabel
        UserName = 'Label484'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel485: TppLabel
        UserName = 'Label485'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel486: TppLabel
        UserName = 'Label486'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CGC.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101865
        mmTop = 6615
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel503: TppLabel
        UserName = 'Label503'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 6615
        mmWidth = 17727
        BandType = 0
      end
      object ppDBText299: TppDBText
        UserName = 'DBText299'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText305: TppDBText
        UserName = 'DBText305'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6615
        mmWidth = 100542
        BandType = 0
      end
      object ppDBText306: TppDBText
        UserName = 'DBText306'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 6615
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText307: TppDBText
        UserName = 'DBText307'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 6615
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText310: TppDBText
        UserName = 'DBText310'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8731
        mmTop = 10583
        mmWidth = 187325
        BandType = 0
      end
      object ppLabel517: TppLabel
        UserName = 'Label517'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10583
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText311: TppDBText
        UserName = 'DBText311'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand11: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText313: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText314: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 265
        mmWidth = 92075
        BandType = 4
      end
      object ppDBText315: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 110861
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText316: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 125677
        mmTop = 265
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText317: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 265
        mmWidth = 27781
        BandType = 4
      end
      object ppDBText318: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 170921
        mmTop = 265
        mmWidth = 24871
        BandType = 4
      end
    end
    object ppFooterBand11: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppLabel519: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal Boleto ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 2117
        mmWidth = 45773
        BandType = 8
      end
      object ppDBText319: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 2117
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel520: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-tot:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 8996
        mmWidth = 20373
        BandType = 8
      end
      object ppDBText320: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 8996
        mmWidth = 29104
        BandType = 8
      end
      object ppLabel521: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 52123
        mmTop = 8996
        mmWidth = 12700
        BandType = 8
      end
      object ppLabel522: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc %:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 95779
        mmTop = 8996
        mmWidth = 17727
        BandType = 8
      end
      object ppLabel523: TppLabel
        UserName = 'Label40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134938
        mmTop = 8996
        mmWidth = 35454
        BandType = 8
      end
      object ppDBText321: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 65352
        mmTop = 8996
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText322: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 8996
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText323: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 8996
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel524: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 6cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 14817
        mmWidth = 21167
        BandType = 8
      end
      object ppDBText324: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 6cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 15081
        mmWidth = 173302
        BandType = 8
      end
      object ppDBText325: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 6cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 19050
        mmWidth = 173302
        BandType = 8
      end
      object ppDBText326: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 6cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 23019
        mmWidth = 173302
        BandType = 8
      end
      object ppDBText327: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 6cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 26988
        mmWidth = 173302
        BandType = 8
      end
      object ppLabel525: TppLabel
        UserName = 'Label172'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Forma de Pagamento:  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1852
        mmWidth = 53340
        BandType = 8
      end
      object ppLine66: TppLine
        UserName = 'Line58'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLine67: TppLine
        UserName = 'Line59'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 14552
        mmWidth = 196586
        BandType = 8
      end
      object ppLine68: TppLine
        UserName = 'Line60'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 32015
        mmWidth = 196586
        BandType = 8
      end
      object ppDBText328: TppDBText
        UserName = 'DBText279'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 32544
        mmWidth = 196321
        BandType = 8
      end
      object ppLine69: TppLine
        UserName = 'Line61'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 36248
        mmWidth = 196586
        BandType = 8
      end
      object ppDBText329: TppDBText
        UserName = 'DBText329'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FORMA_PAGAMENTO'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 54504
        mmTop = 1852
        mmWidth = 22860
        BandType = 8
      end
    end
    object raCodeModule11: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList11: TppParameterList
    end
  end
  object rptOrc_08: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139500
    PrinterSetup.mmPaperWidth = 214000
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 104
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand12: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 38894
      mmPrintPosition = 0
      object ppLine70: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 794
        mmTop = 33073
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel526: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO / ENTREGA DE MERCADORIA - Nr'#176' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 35983
        mmTop = 8996
        mmWidth = 101600
        BandType = 0
      end
      object ppLine71: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 8202
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel527: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 14817
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel528: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 19050
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel529: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114300
        mmTop = 14817
        mmWidth = 16404
        BandType = 0
      end
      object ppLine72: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 38100
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel530: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep.......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 19050
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel531: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone......:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 23283
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel532: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 23548
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel533: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 27781
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel534: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 34131
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel535: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 34131
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel536: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 132557
        mmTop = 34396
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel537: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148696
        mmTop = 34131
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel538: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161661
        mmTop = 34131
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel539: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180711
        mmTop = 34131
        mmWidth = 16404
        BandType = 0
      end
      object ppDBText330: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 138907
        mmTop = 8996
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText331: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 19050
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText332: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 14817
        mmWidth = 33073
        BandType = 0
      end
      object ppDBText333: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 19050
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText334: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 23283
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText335: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 27781
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText336: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 197115
        BandType = 0
      end
      object ppDBText337: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 23548
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText338: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 14817
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText339: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4233
        mmWidth = 197115
        BandType = 0
      end
      object ppLine73: TppLine
        UserName = 'Line39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 12700
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel540: TppLabel
        UserName = 'Label321'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Grade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 119592
        mmTop = 33867
        mmWidth = 7408
        BandType = 0
      end
    end
    object ppDetailBand12: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText340: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText341: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 265
        mmWidth = 107156
        BandType = 4
      end
      object ppDBText342: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText343: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148432
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText344: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText345: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 529
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText346: TppDBText
        UserName = 'DBText187'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRADE_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 119592
        mmTop = 265
        mmWidth = 10848
        BandType = 4
      end
    end
    object ppFooterBand12: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 25665
      mmPrintPosition = 0
      object ppLabel541: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SUBTOTAL -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156634
        mmTop = 12700
        mmWidth = 17780
        BandType = 8
      end
      object ppDBText347: TppDBText
        UserName = 'DBText22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 12965
        mmWidth = 18256
        BandType = 8
      end
      object ppLabel542: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCONTO -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 16933
        mmWidth = 17780
        BandType = 8
      end
      object ppLabel543: TppLabel
        UserName = 'Label40'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL ----->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 21167
        mmWidth = 17780
        BandType = 8
      end
      object ppDBText348: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 17198
        mmWidth = 18256
        BandType = 8
      end
      object ppDBText349: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177271
        mmTop = 21431
        mmWidth = 18521
        BandType = 8
      end
      object ppLabel544: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Validade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 8731
        mmWidth = 13335
        BandType = 8
      end
      object ppDBText350: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 14552
        mmTop = 8731
        mmWidth = 17198
        BandType = 8
      end
      object ppLabel545: TppLabel
        UserName = 'lbTitulo'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 6cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 27252
        mmTop = 0
        mmWidth = 143934
        BandType = 8
      end
      object ppLabel546: TppLabel
        UserName = 'lbTitulo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#195'O '#201' V'#193'LIDO COMO GARANTIA DE MERCADORIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 6cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 13494
        mmTop = 4233
        mmWidth = 169334
        BandType = 8
      end
      object ppLine74: TppLine
        UserName = 'Line35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 8202
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel547: TppLabel
        UserName = 'Label303'
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
        mmLeft = 42333
        mmTop = 8731
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel548: TppLabel
        UserName = 'Label304'
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
        mmLeft = 73290
        mmTop = 8731
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel549: TppLabel
        UserName = 'Label308'
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
        mmLeft = 104775
        mmTop = 8731
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel550: TppLabel
        UserName = 'Label319'
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
        mmLeft = 10848
        mmTop = 12965
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel551: TppLabel
        UserName = 'Label320'
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
        mmLeft = 42333
        mmTop = 12965
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel552: TppLabel
        UserName = 'Label332'
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
        mmLeft = 73290
        mmTop = 12965
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel553: TppLabel
        UserName = 'Label333'
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
        mmLeft = 104775
        mmTop = 12965
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel554: TppLabel
        UserName = 'Label802'
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
        mmLeft = 10848
        mmTop = 17198
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel555: TppLabel
        UserName = 'Label335'
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
        mmLeft = 42333
        mmTop = 17198
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel556: TppLabel
        UserName = 'Label336'
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
        mmLeft = 73290
        mmTop = 17198
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel557: TppLabel
        UserName = 'Label337'
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
        mmLeft = 104775
        mmTop = 17198
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel558: TppLabel
        UserName = 'Label338'
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
        mmLeft = 10848
        mmTop = 21431
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel559: TppLabel
        UserName = 'Label339'
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
        mmLeft = 42333
        mmTop = 21431
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel560: TppLabel
        UserName = 'Label340'
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
        mmLeft = 73290
        mmTop = 21431
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel561: TppLabel
        UserName = 'Label341'
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
        mmLeft = 104775
        mmTop = 21431
        mmWidth = 29633
        BandType = 8
      end
    end
    object raCodeModule12: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList12: TppParameterList
    end
  end
  object rptOrc_C: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 432
    Top = 200
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 44450
      mmPrintPosition = 0
      object ppLabel293: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[C] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARAN' +
          'TIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 20108
        mmWidth = 196586
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 38629
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel298: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel299: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel302: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel303: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10848
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel304: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 39158
        mmTop = 10848
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel305: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21431
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel306: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25665
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel307: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29898
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel308: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 34131
        mmWidth = 16404
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 43656
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel309: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 25665
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel310: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 29898
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel311: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 25665
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel312: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 34131
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel313: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 39688
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel314: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 39688
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel315: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 94721
        mmTop = 39952
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel316: TppLabel
        UserName = 'Label25'
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
        mmLeft = 110861
        mmTop = 39423
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel317: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pr'#231'. Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 122502
        mmTop = 39423
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel318: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 39423
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText184: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText185: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 25665
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText186: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 29898
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText187: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 34131
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText188: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 25665
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText189: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 29898
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText190: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 34131
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText191: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 5cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6615
        mmWidth = 100542
        BandType = 0
      end
      object ppDBText194: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 10848
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText195: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 10848
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText197: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 25665
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText198: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 21431
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText199: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 21431
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel319: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 21431
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText200: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 14817
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel320: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 14817
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText201: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel321: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 14817
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText202: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 14817
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel323: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 14817
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel324: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'GO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 14817
        mmWidth = 3387
        BandType = 0
      end
      object ppLabel326: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 14817
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel332: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '75900-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 14817
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel333: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE/FAX.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 14817
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel334: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(64)36214579'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 14817
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel584: TppLabel
        UserName = 'Label584'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc %'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 141023
        mmTop = 39423
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel585: TppLabel
        UserName = 'Label585'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Unit.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159279
        mmTop = 39423
        mmWidth = 18256
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText203: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText204: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 82286
        BandType = 4
      end
      object ppDBText207: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 94721
        mmTop = 265
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText208: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 110861
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText210: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText351: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText360: TppDBText
        UserName = 'DBText360'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 265
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText361: TppDBText
        UserName = 'DBText361'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 45773
      mmPrintPosition = 0
      object ppLabel335: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel336: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-Total     -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 6350
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText352: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170657
        mmTop = 6350
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel337: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto      -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 10583
        mmWidth = 43180
        BandType = 8
      end
      object ppLabel338: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto %    -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 14817
        mmWidth = 43180
        BandType = 8
      end
      object ppDBText353: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 10583
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText354: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 14817
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText355: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 19050
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel339: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 26723
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText356: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 26458
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel340: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 26194
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText357: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 26458
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel341: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 26458
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText358: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 30956
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel562: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 30692
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText359: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105304
        mmTop = 30956
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel563: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 103188
        mmTop = 30956
        mmWidth = 1588
        BandType = 8
      end
      object ppLine39: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel564: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar -->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 123561
        mmTop = 19050
        mmWidth = 43180
        BandType = 8
      end
      object ppLine75: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 24871
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel565: TppLabel
        UserName = 'Label58'
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
        mmLeft = 0
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel566: TppLabel
        UserName = 'Label74'
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
        mmLeft = 31485
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel567: TppLabel
        UserName = 'Label75'
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
        mmLeft = 62442
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel568: TppLabel
        UserName = 'Label76'
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
        mmLeft = 93663
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel569: TppLabel
        UserName = 'Label77'
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
        mmLeft = 0
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel570: TppLabel
        UserName = 'Label78'
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
        mmLeft = 31485
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel571: TppLabel
        UserName = 'Label79'
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
        mmLeft = 62442
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel572: TppLabel
        UserName = 'Label80'
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
        mmLeft = 93663
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel573: TppLabel
        UserName = 'Label81'
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
        mmLeft = 0
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel574: TppLabel
        UserName = 'Label82'
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
        mmLeft = 31485
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel575: TppLabel
        UserName = 'Label83'
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
        mmLeft = 62442
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel576: TppLabel
        UserName = 'Label84'
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
        mmLeft = 93663
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel577: TppLabel
        UserName = 'Label85'
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
        mmLeft = 0
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel578: TppLabel
        UserName = 'Label86'
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
        mmLeft = 31485
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel579: TppLabel
        UserName = 'Label87'
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
        mmLeft = 62442
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLine76: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34925
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel580: TppLabel
        UserName = 'Label88'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label88'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel581: TppLabel
        UserName = 'Label89'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label89'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 37042
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel582: TppLabel
        UserName = 'Label90'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label90'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
      object ppLabel583: TppLabel
        UserName = 'Label91'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label91'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 99748
        mmTop = 41540
        mmWidth = 97367
        BandType = 8
      end
    end
    object raCodeModule7: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList7: TppParameterList
    end
  end
  object rptOrc_D: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 488
    Top = 200
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand13: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppLabel586: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[D] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARAN' +
          'TIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
      end
      object ppLine77: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLine78: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34131
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel587: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel588: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel589: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine79: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel590: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 5821
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel591: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 5821
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel592: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 16933
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel593: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21167
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel594: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25400
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel595: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29633
        mmWidth = 16404
        BandType = 0
      end
      object ppLine80: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 39688
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel596: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 21167
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel597: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 25400
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel598: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 21167
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel599: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 29633
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel600: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35190
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel601: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 35190
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel602: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 135202
        mmTop = 35454
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel603: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148167
        mmTop = 35190
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel604: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel605: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText362: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText363: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 21167
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText364: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 25400
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText365: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 29633
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText366: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 21167
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText367: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 25400
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText368: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 29633
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText369: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6085
        mmWidth = 10372
        BandType = 0
      end
      object ppDBText370: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 5821
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText371: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 5821
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText372: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 21167
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText373: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 16933
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText374: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 16933
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel606: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 16933
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText375: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 10319
        mmWidth = 70644
        BandType = 0
      end
      object ppLabel607: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10319
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText376: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel608: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 10319
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText377: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 10319
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel609: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 10319
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel610: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'GO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 10319
        mmWidth = 3387
        BandType = 0
      end
      object ppLabel611: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 10319
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel612: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '75900-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 10319
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel613: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE/FAX.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 10319
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel614: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(64)36214579'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 10319
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel615: TppLabel
        UserName = 'Label322'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
    end
    object ppDetailBand13: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText378: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText379: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 101600
        BandType = 4
      end
      object ppDBText380: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 265
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText381: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText382: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText383: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText384: TppDBText
        UserName = 'DBText192'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
    end
    object ppFooterBand13: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 46302
      mmPrintPosition = 0
      object ppLabel616: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel617: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-tot:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25665
        mmWidth = 20320
        BandType = 8
      end
      object ppDBText385: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 25665
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel618: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 48948
        mmTop = 25665
        mmWidth = 12700
        BandType = 8
      end
      object ppLabel619: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc %:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 87048
        mmTop = 25665
        mmWidth = 17727
        BandType = 8
      end
      object ppDBText386: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 25400
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText387: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105569
        mmTop = 25665
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText388: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 25665
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel620: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 31750
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText389: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 31485
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel621: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 31221
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText390: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105040
        mmTop = 31485
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel622: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 31485
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText391: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 35983
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel623: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 35719
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText392: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105040
        mmTop = 35983
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel624: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 35983
        mmWidth = 1588
        BandType = 8
      end
      object ppLine81: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel625: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134144
        mmTop = 25665
        mmWidth = 35454
        BandType = 8
      end
      object ppLine82: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 29898
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel626: TppLabel
        UserName = 'Label58'
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
        mmLeft = 0
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel627: TppLabel
        UserName = 'Label74'
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
        mmLeft = 31485
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel628: TppLabel
        UserName = 'Label75'
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
        mmLeft = 62442
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel629: TppLabel
        UserName = 'Label76'
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
        mmLeft = 93663
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel630: TppLabel
        UserName = 'Label77'
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
        mmLeft = 0
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel631: TppLabel
        UserName = 'Label78'
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
        mmLeft = 31485
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel632: TppLabel
        UserName = 'Label79'
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
        mmLeft = 62442
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel633: TppLabel
        UserName = 'Label80'
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
        mmLeft = 93663
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel634: TppLabel
        UserName = 'Label81'
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
        mmLeft = 0
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel635: TppLabel
        UserName = 'Label82'
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
        mmLeft = 31485
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel636: TppLabel
        UserName = 'Label83'
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
        mmLeft = 62442
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel637: TppLabel
        UserName = 'Label84'
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
        mmLeft = 93663
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel638: TppLabel
        UserName = 'Label85'
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
        mmLeft = 0
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel639: TppLabel
        UserName = 'Label86'
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
        mmLeft = 31485
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel640: TppLabel
        UserName = 'Label87'
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
        mmLeft = 62442
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel641: TppLabel
        UserName = 'Label256'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal Boleto ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120915
        mmTop = 2117
        mmWidth = 45720
        BandType = 8
      end
      object ppDBText393: TppDBText
        UserName = 'DBText152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 2117
        mmWidth = 24342
        BandType = 8
      end
      object ppLine83: TppLine
        UserName = 'Line102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 40217
        mmWidth = 196586
        BandType = 8
      end
      object ppLine84: TppLine
        UserName = 'Line103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 44450
        mmWidth = 196586
        BandType = 8
      end
      object ppLine85: TppLine
        UserName = 'Line104'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 45508
        mmWidth = 196586
        BandType = 8
      end
      object ppDBText394: TppDBText
        UserName = 'DBText394'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 40481
        mmWidth = 103452
        BandType = 8
      end
    end
    object raCodeModule13: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList13: TppParameterList
    end
  end
  object rptOrc_E: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
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
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<Texto a procurar>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 200
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand14: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40481
      mmPrintPosition = 0
      object ppLabel642: TppLabel
        UserName = 'lbTitulo'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          '[E] N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL - N'#195'O '#201' V'#193'LIDO COMO GARAN' +
          'TIA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 110861
        BandType = 0
      end
      object ppLine86: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 15610
        mmWidth = 196586
        BandType = 0
      end
      object ppLine87: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 265
        mmTop = 34131
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel643: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OR'#199'AMENTO Nr '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110596
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppLabel644: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 0
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel645: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pag.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173567
        mmTop = 0
        mmWidth = 7408
        BandType = 0
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        DisplayFormat = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 182298
        mmTop = 0
        mmWidth = 2963
        BandType = 0
      end
      object ppLine88: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 4233
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel646: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 5821
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel647: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Insct. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 140229
        mmTop = 5821
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel648: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 16933
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel649: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 21167
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel650: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25400
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel651: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N.Fantasia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 29633
        mmWidth = 16404
        BandType = 0
      end
      object ppLine89: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 39688
        mmWidth = 196586
        BandType = 0
      end
      object ppLabel652: TppLabel
        UserName = 'Label15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cep:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 21167
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel653: TppLabel
        UserName = 'Label16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 114036
        mmTop = 25400
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel654: TppLabel
        UserName = 'Label19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 21167
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel655: TppLabel
        UserName = 'Label21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 144198
        mmTop = 29633
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel656: TppLabel
        UserName = 'Label22'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35190
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel657: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Discrimina'#231#227'o das Mercadorias'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 10583
        mmTop = 35190
        mmWidth = 42968
        BandType = 0
      end
      object ppLabel658: TppLabel
        UserName = 'Label24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Unid.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 135202
        mmTop = 35454
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel659: TppLabel
        UserName = 'Label25'
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
        mmLeft = 148167
        mmTop = 35190
        mmWidth = 4445
        BandType = 0
      end
      object ppLabel660: TppLabel
        UserName = 'Label26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'P. Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppLabel661: TppLabel
        UserName = 'Label27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179388
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
      object ppDBText395: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clSilver
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText396: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 21167
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText397: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 25400
        mmWidth = 95779
        BandType = 0
      end
      object ppDBText398: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 29633
        mmWidth = 126207
        BandType = 0
      end
      object ppDBText399: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CEP_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 21167
        mmWidth = 23283
        BandType = 0
      end
      object ppDBText400: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TELEFONE_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 122238
        mmTop = 25400
        mmWidth = 26458
        BandType = 0
      end
      object ppDBText401: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 29633
        mmWidth = 38100
        BandType = 0
      end
      object ppDBText402: TppDBText
        UserName = 'DBText16'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 6085
        mmWidth = 10372
        BandType = 0
      end
      object ppDBText403: TppDBText
        UserName = 'DBText17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 5821
        mmWidth = 30163
        BandType = 0
      end
      object ppDBText404: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSCRICAO_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 158750
        mmTop = 5821
        mmWidth = 37571
        BandType = 0
      end
      object ppDBText405: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CIDADE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 21167
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText406: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 38894
        mmTop = 16933
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText407: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_CLIENTE'
        DataPipeline = pplCliente
        DisplayFormat = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 17198
        mmTop = 16933
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel662: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 35190
        mmTop = 16933
        mmWidth = 2646
        BandType = 0
      end
      object ppDBText408: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 10319
        mmWidth = 70644
        BandType = 0
      end
      object ppLabel663: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 10319
        mmWidth = 7408
        BandType = 0
      end
      object ppDBText409: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel664: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 80963
        mmTop = 10319
        mmWidth = 13547
        BandType = 0
      end
      object ppDBText410: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 95250
        mmTop = 10319
        mmWidth = 21696
        BandType = 0
      end
      object ppLabel665: TppLabel
        UserName = 'Label13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 10319
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel666: TppLabel
        UserName = 'Label14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'GO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 125148
        mmTop = 10319
        mmWidth = 3387
        BandType = 0
      end
      object ppLabel667: TppLabel
        UserName = 'Label17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 130175
        mmTop = 10319
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel668: TppLabel
        UserName = 'Label18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '75900-000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 10319
        mmWidth = 15240
        BandType = 0
      end
      object ppLabel669: TppLabel
        UserName = 'Label20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE/FAX.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155575
        mmTop = 10319
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel670: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(64)36214579'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 173038
        mmTop = 10319
        mmWidth = 20320
        BandType = 0
      end
      object ppLabel671: TppLabel
        UserName = 'Label322'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pre'#231'o Custo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 35190
        mmWidth = 16298
        BandType = 0
      end
    end
    object ppDetailBand14: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText411: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText412: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 10848
        mmTop = 265
        mmWidth = 101600
        BandType = 4
      end
      object ppDBText413: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 265
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText414: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 265
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText415: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText416: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 179652
        mmTop = 265
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText417: TppDBText
        UserName = 'DBText192'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 265
        mmWidth = 16140
        BandType = 4
      end
    end
    object ppFooterBand14: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 63765
      mmPrintPosition = 0
      object ppLabel672: TppLabel
        UserName = 'Label29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimentos: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2381
        mmWidth = 33020
        BandType = 8
      end
      object ppLabel673: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sub-tot:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25665
        mmWidth = 20320
        BandType = 8
      end
      object ppDBText418: TppDBText
        UserName = 'DBText21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 21431
        mmTop = 25665
        mmWidth = 24342
        BandType = 8
      end
      object ppLabel674: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 48948
        mmTop = 25665
        mmWidth = 12700
        BandType = 8
      end
      object ppLabel675: TppLabel
        UserName = 'Label38'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc %:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 87048
        mmTop = 25665
        mmWidth = 17727
        BandType = 8
      end
      object ppDBText419: TppDBText
        UserName = 'DBText23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 62442
        mmTop = 25400
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText420: TppDBText
        UserName = 'DBText24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_PORC'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105569
        mmTop = 25665
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText421: TppDBText
        UserName = 'DBText25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 25665
        mmWidth = 24606
        BandType = 8
      end
      object ppLabel676: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 31750
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText422: TppDBText
        UserName = 'DBText29'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 31485
        mmWidth = 91281
        BandType = 8
      end
      object ppLabel677: TppLabel
        UserName = 'Label43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 31221
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText423: TppDBText
        UserName = 'DBText34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS2'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105040
        mmTop = 31485
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel678: TppLabel
        UserName = 'Label44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 31485
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText424: TppDBText
        UserName = 'DBText36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS3'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 35983
        mmWidth = 91017
        BandType = 8
      end
      object ppLabel679: TppLabel
        UserName = 'Label39'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 35719
        mmWidth = 1588
        BandType = 8
      end
      object ppDBText425: TppDBText
        UserName = 'DBText37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS4'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 105040
        mmTop = 35983
        mmWidth = 92340
        BandType = 8
      end
      object ppLabel680: TppLabel
        UserName = 'Label46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 35983
        mmWidth = 1588
        BandType = 8
      end
      object ppLine90: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel681: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total a pagar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 134144
        mmTop = 25665
        mmWidth = 35454
        BandType = 8
      end
      object ppLine91: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 29898
        mmWidth = 196586
        BandType = 8
      end
      object ppLabel682: TppLabel
        UserName = 'Label58'
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
        mmLeft = 0
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel683: TppLabel
        UserName = 'Label74'
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
        mmLeft = 31485
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel684: TppLabel
        UserName = 'Label75'
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
        mmLeft = 62442
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel685: TppLabel
        UserName = 'Label76'
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
        mmLeft = 93663
        mmTop = 6615
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel686: TppLabel
        UserName = 'Label77'
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
        mmLeft = 0
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel687: TppLabel
        UserName = 'Label78'
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
        mmLeft = 31485
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel688: TppLabel
        UserName = 'Label79'
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
        mmLeft = 62442
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel689: TppLabel
        UserName = 'Label80'
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
        mmLeft = 93663
        mmTop = 10848
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel690: TppLabel
        UserName = 'Label81'
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
        mmLeft = 0
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel691: TppLabel
        UserName = 'Label82'
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
        mmLeft = 31485
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel692: TppLabel
        UserName = 'Label83'
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
        mmLeft = 62442
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel693: TppLabel
        UserName = 'Label84'
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
        mmLeft = 93663
        mmTop = 15081
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel694: TppLabel
        UserName = 'Label85'
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
        mmLeft = 0
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel695: TppLabel
        UserName = 'Label86'
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
        mmLeft = 31485
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel696: TppLabel
        UserName = 'Label87'
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
        mmLeft = 62442
        mmTop = 19315
        mmWidth = 29633
        BandType = 8
      end
      object ppLabel697: TppLabel
        UserName = 'Label256'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Subtotal Boleto ->'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120915
        mmTop = 2117
        mmWidth = 45720
        BandType = 8
      end
      object ppDBText426: TppDBText
        UserName = 'DBText152'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 2117
        mmWidth = 24342
        BandType = 8
      end
      object ppLine92: TppLine
        UserName = 'Line102'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 40217
        mmWidth = 196586
        BandType = 8
      end
      object ppLine93: TppLine
        UserName = 'Line103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 44450
        mmWidth = 196586
        BandType = 8
      end
      object ppLine94: TppLine
        UserName = 'Line104'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 45508
        mmWidth = 196586
        BandType = 8
      end
      object ppDBText427: TppDBText
        UserName = 'DBText394'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 40481
        mmWidth = 103452
        BandType = 8
      end
      object ppLabel698: TppLabel
        UserName = 'Label698'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Or'#231'amento preliminar.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 82100
        mmTop = 46567
        mmWidth = 35560
        BandType = 8
      end
      object ppLabel699: TppLabel
        UserName = 'Label699'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'De acordo.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 91417
        mmTop = 50800
        mmWidth = 16933
        BandType = 8
      end
      object ppDBText429: TppDBText
        UserName = 'DBText429'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 82021
        mmTop = 59531
        mmWidth = 35454
        BandType = 8
      end
      object ppLine95: TppLine
        UserName = 'Line95'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 57944
        mmTop = 57150
        mmWidth = 83079
        BandType = 8
      end
    end
    object raCodeModule14: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList14: TppParameterList
    end
  end
  object rptOrc_B: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 254000506
    PrinterSetup.mmPaperWidth = 93928
    PrinterSetup.PaperSize = 127
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 544
    Top = 152
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 39952
      mmPrintPosition = 0
      object ppDBText428: TppDBText
        UserName = 'DBText428'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 81492
        BandType = 1
      end
      object ppDBText430: TppDBText
        UserName = 'DBText430'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'END_EMPRESA'
        DataPipeline = pplOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 4233
        mmWidth = 81492
        BandType = 1
      end
      object ppDBText431: TppDBText
        UserName = 'DBText431'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 12965
        mmTop = 10583
        mmWidth = 14552
        BandType = 1
      end
      object ppLabel700: TppLabel
        UserName = 'Label700'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 10583
        mmWidth = 11906
        BandType = 1
      end
      object ppLabel701: TppLabel
        UserName = 'Label701'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'O R '#199' A M E N T O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 32279
        mmTop = 10583
        mmWidth = 25135
        BandType = 1
      end
      object ppLabel702: TppLabel
        UserName = 'Label702'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 66411
        mmTop = 10848
        mmWidth = 4498
        BandType = 1
      end
      object ppDBText432: TppDBText
        UserName = 'DBText432'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 71702
        mmTop = 10848
        mmWidth = 9790
        BandType = 1
      end
      object ppLabel703: TppLabel
        UserName = 'Label703'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 28
        mmTop = 17198
        mmWidth = 11853
        BandType = 1
      end
      object ppDBText433: TppDBText
        UserName = 'DBText433'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 17198
        mmWidth = 17145
        BandType = 1
      end
      object ppLabel704: TppLabel
        UserName = 'Label704'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ender..:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 28
        mmTop = 21431
        mmWidth = 11853
        BandType = 1
      end
      object ppDBText434: TppDBText
        UserName = 'DBText434'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLIENTE'
        DataPipeline = pplCliente
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplCliente'
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 21431
        mmWidth = 17145
        BandType = 1
      end
      object ppLine96: TppLine
        UserName = 'Line96'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 26458
        mmWidth = 81492
        BandType = 1
      end
      object ppLine97: TppLine
        UserName = 'Line97'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 37306
        mmWidth = 81492
        BandType = 1
      end
      object ppLabel705: TppLabel
        UserName = 'Label705'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'LOCA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 768
        mmTop = 28840
        mmWidth = 10372
        BandType = 1
      end
      object ppLabel706: TppLabel
        UserName = 'Label706'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 28840
        mmWidth = 8890
        BandType = 1
      end
      object ppLabel707: TppLabel
        UserName = 'Label707'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O DA MERCADORIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 26194
        mmTop = 28840
        mmWidth = 34131
        BandType = 1
      end
      object ppLabel708: TppLabel
        UserName = 'Label708'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VAL. UNIT.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 33073
        mmWidth = 14817
        BandType = 1
      end
      object ppLabel709: TppLabel
        UserName = 'Label709'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'QUANTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 42333
        mmTop = 33073
        mmWidth = 14817
        BandType = 1
      end
      object ppLabel710: TppLabel
        UserName = 'Label710'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VAL. TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 63765
        mmTop = 33073
        mmWidth = 14817
        BandType = 1
      end
    end
    object ppDetailBand15: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppDBText435: TppDBText
        UserName = 'DBText435'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO_IVENDA'
        DataPipeline = pplItenOrc
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 15081
        mmTop = 0
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText436: TppDBText
        UserName = 'DBText436'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO_IVENDAS'
        DataPipeline = pplItenOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 25929
        mmTop = 0
        mmWidth = 55298
        BandType = 4
      end
      object ppDBText437: TppDBText
        UserName = 'DBText437'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 19315
        mmTop = 4233
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText438: TppDBText
        UserName = 'DBText438'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 42863
        mmTop = 4233
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText439: TppDBText
        UserName = 'DBText439'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 63500
        mmTop = 4233
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel711: TppLabel
        UserName = 'Label711'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 59531
        mmTop = 4233
        mmWidth = 1482
        BandType = 4
      end
      object ppLabel712: TppLabel
        UserName = 'Label712'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 38629
        mmTop = 4233
        mmWidth = 1482
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 42598
      mmPrintPosition = 0
      object ppLine98: TppLine
        UserName = 'Line98'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 0
        mmWidth = 80698
        BandType = 7
      end
      object ppLabel713: TppLabel
        UserName = 'Label713'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Aten'#231#227'o: ESTE N'#195'O '#201' V'#193'LIDO COMO DOCUMENTO FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 5027
        mmTop = 19050
        mmWidth = 71173
        BandType = 7
      end
      object ppLabel714: TppLabel
        UserName = 'Label714'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'E NEM SERVE COMO GARANTIA DE MERCADORIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 23019
        mmWidth = 57679
        BandType = 7
      end
      object ppLine99: TppLine
        UserName = 'Line99'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 4763
        mmTop = 22754
        mmWidth = 12171
        BandType = 7
      end
      object ppLine100: TppLine
        UserName = 'Line100'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 37306
        mmWidth = 68263
        BandType = 7
      end
      object ppLabel715: TppLabel
        UserName = 'Label715'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ASSINATURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 38365
        mmWidth = 14817
        BandType = 7
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2117
        mmWidth = 11906
        BandType = 7
      end
      object ppLabel716: TppLabel
        UserName = 'Label716'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 13229
        mmTop = 2381
        mmWidth = 8890
        BandType = 7
      end
      object ppDBText440: TppDBText
        UserName = 'DBText440'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCONTO_VENDA'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 22754
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel717: TppLabel
        UserName = 'Label717'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL GERAL....:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 40746
        mmTop = 2117
        mmWidth = 23707
        BandType = 7
      end
      object ppDBText441: TppDBText
        UserName = 'DBText441'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_BRUTO'
        DataPipeline = pplOrc
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 65617
        mmTop = 2117
        mmWidth = 15610
        BandType = 7
      end
      object ppLabel741: TppLabel
        UserName = 'Label741'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pgto.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1774
        mmTop = 13229
        mmWidth = 8890
        BandType = 7
      end
      object ppDBText447: TppDBText
        UserName = 'DBText447'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FORMA_PAGAMENTO'
        DataPipeline = pplOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 11377
        mmTop = 13229
        mmWidth = 25400
        BandType = 7
      end
      object ppLabel742: TppLabel
        UserName = 'Label742'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vend.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 41726
        mmTop = 13229
        mmWidth = 8890
        BandType = 7
      end
      object ppDBText448: TppDBText
        UserName = 'DBText448'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 52123
        mmTop = 13229
        mmWidth = 17198
        BandType = 7
      end
      object ppLabel743: TppLabel
        UserName = 'Label743'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Observac.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1852
        mmTop = 8996
        mmWidth = 14817
        BandType = 7
      end
      object ppDBText449: TppDBText
        UserName = 'DBText449'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBS1'
        DataPipeline = pplOrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 8996
        mmWidth = 61119
        BandType = 7
      end
    end
    object ppParameterList15: TppParameterList
    end
  end
  object rptOrc_F: TppReport
    AutoStop = False
    DataPipeline = pplItenOrc
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215999
    PrinterSetup.mmPaperWidth = 213000
    PrinterSetup.PaperSize = 127
    Units = utMillimeters
    DeviceType = 'ArchiveFile'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 432
    Top = 248
    Version = '10.02'
    mmColumnWidth = 0
    DataPipelineName = 'pplItenOrc'
    object ppHeaderBand15: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 89959
      mmPrintPosition = 0
      object ppLabel725: TppLabel
        UserName = 'Label725'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME DO CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 32015
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel718: TppLabel
        UserName = 'Label718'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME DA FAZENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 40217
        mmWidth = 63236
        BandType = 0
      end
      object ppLabel719: TppLabel
        UserName = 'Label719'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 139965
        mmTop = 32015
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel720: TppLabel
        UserName = 'Label720'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENDERE'#199'O COMBRAN'#199'A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 32279
        mmTop = 48683
        mmWidth = 45244
        BandType = 0
      end
      object ppLabel721: TppLabel
        UserName = 'Label721'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MUNICIPIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 100013
        mmTop = 48683
        mmWidth = 44979
        BandType = 0
      end
      object ppLabel722: TppLabel
        UserName = 'Label722'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA ENTREGA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 20373
        mmTop = 57150
        mmWidth = 17780
        BandType = 0
      end
      object ppLabel723: TppLabel
        UserName = 'Label723'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'LOCAL ENTREGA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 57150
        mmWidth = 88371
        BandType = 0
      end
      object ppLabel726: TppLabel
        UserName = 'Label726'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'A VISTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 20000
        mmTop = 69586
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel727: TppLabel
        UserName = 'Label727'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 74348
        mmWidth = 28152
        BandType = 0
      end
      object ppLabel728: TppLabel
        UserName = 'Label728'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '000000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 175000
        mmTop = 8202
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel729: TppLabel
        UserName = 'Label729'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 170000
        mmTop = 19050
        mmWidth = 2963
        BandType = 0
      end
      object ppLabel730: TppLabel
        UserName = 'Label730'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 178000
        mmTop = 19050
        mmWidth = 2963
        BandType = 0
      end
      object ppLabel731: TppLabel
        UserName = 'Label731'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 188648
        mmTop = 19050
        mmWidth = 5927
        BandType = 0
      end
      object ppLabel732: TppLabel
        UserName = 'Label732'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MUNICIPIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 97102
        mmTop = 40217
        mmWidth = 30692
        BandType = 0
      end
      object ppLabel733: TppLabel
        UserName = 'Label733'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'INSC. EST'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 145000
        mmTop = 40217
        mmWidth = 13335
        BandType = 0
      end
      object ppLabel734: TppLabel
        UserName = 'Label734'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'BANCO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 160073
        mmTop = 48948
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel736: TppLabel
        UserName = 'Label736'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 32015
        mmTop = 74348
        mmWidth = 28152
        BandType = 0
      end
      object ppLabel737: TppLabel
        UserName = 'Label737'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 64029
        mmTop = 74348
        mmWidth = 28152
        BandType = 0
      end
      object ppLabel738: TppLabel
        UserName = 'Label738'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 95515
        mmTop = 74348
        mmWidth = 28152
        BandType = 0
      end
      object ppLabel739: TppLabel
        UserName = 'Label739'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 127265
        mmTop = 74348
        mmWidth = 28152
        BandType = 0
      end
      object ppLabel740: TppLabel
        UserName = 'Label740'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 74083
        mmWidth = 28152
        BandType = 0
      end
    end
    object ppDetailBand16: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText442: TppDBText
        UserName = 'DBText442'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 8467
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText443: TppDBText
        UserName = 'DBText443'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE_PRODUTO'
        DataPipeline = pplItenOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppLabel724: TppLabel
        UserName = 'Label724'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Label724'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 0
        mmWidth = 80169
        BandType = 4
      end
      object ppDBText444: TppDBText
        UserName = 'DBText444'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORBRUTO_IVENDAS'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 138642
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText445: TppDBText
        UserName = 'DBText445'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORTOTAL'
        DataPipeline = pplItenOrc
        DisplayFormat = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplItenOrc'
        mmHeight = 4233
        mmLeft = 177800
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand15: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
      object ppLabel735: TppLabel
        UserName = 'Label735'
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
        mmLeft = 11906
        mmTop = 4763
        mmWidth = 5927
        BandType = 8
      end
      object ppDBText446: TppDBText
        UserName = 'DBText446'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALORNOTA_VENDA'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 177536
        mmTop = 4763
        mmWidth = 17198
        BandType = 8
      end
      object ppDBText450: TppDBText
        UserName = 'DBText450'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = pplOrc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pplOrc'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25665
        mmWidth = 57415
        BandType = 8
      end
    end
  end
  object ppArchiveReader1: TppArchiveReader
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    SuppressOutline = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 328
    Top = 176
    Version = '10.02'
  end
end
