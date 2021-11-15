object frmF5: TfrmF5
  Left = 188
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Resumo do Caixa'
  ClientHeight = 543
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 489
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 107
      Height = 16
      Caption = 'Resumo do Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtCaixa: TDBText
      Left = 119
      Top = 9
      Width = 58
      Height = 17
      Alignment = taRightJustify
      Color = 15662589
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 236
      Top = 8
      Width = 40
      Height = 16
      Caption = 'Do dia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtDataCaixa: TDBText
      Left = 281
      Top = 8
      Width = 94
      Height = 17
      Color = 15662589
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object edtTurno: TDBText
      Left = 478
      Top = 8
      Width = 44
      Height = 17
      Alignment = taRightJustify
      Color = 15662589
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 425
      Top = 8
      Width = 50
      Height = 16
      Caption = 'Do turno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 30
      Width = 770
      Height = 316
      Hint = '[Esc]Retorna  [Enter]Altera [Ins]Inclui [Del]Exclui [F10]Procura'
      DataSource = dsVendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Vendas'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIE_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Serie'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTAFISCAL_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'N. Fiscal'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Hora'
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
          FieldName = 'FATURA_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Valor Tabela'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO_VENDA'
          Title.Alignment = taCenter
          Title.Caption = '% Desc'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORNOTA_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Val Recebido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENTREGA_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Entrega'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDEDOR_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Vnd'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TROCO_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Tr'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TROCO_VENDA'
          Title.Alignment = taCenter
          Title.Caption = 'Troco P/'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 6
      Top = 349
      Width = 382
      Height = 85
      BevelOuter = bvLowered
      Enabled = False
      Locked = True
      TabOrder = 1
      object Label4: TLabel
        Left = 4
        Top = 8
        Width = 66
        Height = 13
        Caption = 'Venda '#224' Vista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 4
        Top = 27
        Width = 37
        Height = 13
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 4
        Top = 44
        Width = 76
        Height = 13
        Caption = 'Venda c/Cart'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 4
        Top = 64
        Width = 76
        Height = 13
        Caption = 'Chq Pr'#233'-Datado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 189
        Top = 3
        Width = 45
        Height = 13
        Caption = 'Conv'#234'nio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 189
        Top = 22
        Width = 69
        Height = 13
        Caption = 'Venda '#224' prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 189
        Top = 39
        Width = 31
        Height = 13
        Caption = 'Outros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtAvista: TJvCalcEdit
        Left = 82
        Top = 4
        Width = 100
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DisabledColor = 15662589
        DecimalPlacesAlwaysShown = True
      end
      object edtAprazo: TJvCalcEdit
        Left = 261
        Top = 20
        Width = 113
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DisabledColor = 15662589
        DecimalPlacesAlwaysShown = True
      end
      object edtCartao: TJvCalcEdit
        Left = 82
        Top = 42
        Width = 100
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 2
        DisabledColor = clCream
        DecimalPlacesAlwaysShown = True
      end
      object edtCheque: TJvCalcEdit
        Left = 82
        Top = 61
        Width = 100
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = True
      end
      object edtConvenio: TJvCalcEdit
        Left = 261
        Top = 1
        Width = 113
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 4
        DecimalPlacesAlwaysShown = True
      end
      object edtEntrada: TJvCalcEdit
        Left = 82
        Top = 23
        Width = 100
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 5
        DecimalPlacesAlwaysShown = True
      end
      object edtOutras: TJvCalcEdit
        Left = 261
        Top = 39
        Width = 113
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 6
        DecimalPlacesAlwaysShown = True
      end
    end
    object Panel3: TPanel
      Left = 6
      Top = 436
      Width = 382
      Height = 49
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 2
      object Label11: TLabel
        Left = 3
        Top = 8
        Width = 41
        Height = 13
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 24
        Width = 3
        Height = 13
      end
      object Label13: TLabel
        Left = 189
        Top = 8
        Width = 68
        Height = 13
        Caption = 'Devolu'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtTotal: TJvCalcEdit
        Left = 82
        Top = 5
        Width = 100
        Height = 19
        Flat = True
        ParentFlat = False
        Color = 15662589
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
      end
      object edtDevolucao: TJvCalcEdit
        Left = 261
        Top = 5
        Width = 113
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = True
      end
    end
    object Panel4: TPanel
      Left = 390
      Top = 349
      Width = 391
      Height = 85
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 3
      object Label16: TLabel
        Left = 6
        Top = 7
        Width = 78
        Height = 13
        Caption = 'Tot. das Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 6
        Top = 28
        Width = 57
        Height = 13
        Caption = 'Saldo Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 6
        Top = 50
        Width = 76
        Height = 13
        Caption = 'Outras Entradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 198
        Top = 9
        Width = 45
        Height = 13
        Caption = 'Retiradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 198
        Top = 28
        Width = 88
        Height = 13
        Caption = 'Entrega em Aberto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 198
        Top = 49
        Width = 83
        Height = 13
        Caption = 'Troco de Entrega'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtSaldoInicial: TDBText
        Left = 86
        Top = 27
        Width = 105
        Height = 17
        Alignment = taRightJustify
        Color = 15662589
        DataField = 'SALDO_INICIAL_CAIXA'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object DBText17: TDBText
        Left = 86
        Top = 48
        Width = 105
        Height = 17
        Alignment = taRightJustify
        Color = 15662589
        DataField = 'ENTRADAS_CAIXA'
        DataSource = dsCaixa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object edtRetiradas: TJvCalcEdit
        Left = 288
        Top = 5
        Width = 102
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
      end
      object edtTotalVenda: TJvCalcEdit
        Left = 87
        Top = 4
        Width = 105
        Height = 19
        TabStop = False
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = True
      end
      object edtEntrega: TJvCalcEdit
        Left = 288
        Top = 27
        Width = 102
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = True
      end
      object edtTroco: TJvCalcEdit
        Left = 288
        Top = 49
        Width = 102
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = True
      end
    end
    object Panel5: TPanel
      Left = 390
      Top = 436
      Width = 391
      Height = 49
      BevelOuter = bvLowered
      Enabled = False
      TabOrder = 4
      object Label22: TLabel
        Left = 5
        Top = 5
        Width = 86
        Height = 13
        Caption = 'SALDO ATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 207
        Top = 5
        Width = 77
        Height = 13
        Caption = 'Dev. de Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 208
        Top = 26
        Width = 72
        Height = 13
        Caption = 'Dev. de Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtDevCompra: TJvCalcEdit
        Left = 288
        Top = 3
        Width = 102
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
      end
      object edtDevVenda: TJvCalcEdit
        Left = 288
        Top = 23
        Width = 102
        Height = 19
        Flat = True
        ParentFlat = False
        Color = clCream
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = True
      end
      object edtTotalDia: TJvCalcEdit
        Left = 92
        Top = 3
        Width = 95
        Height = 19
        Flat = True
        ParentFlat = False
        Color = 15662589
        DisplayFormat = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 2
        DisabledColor = 15662589
        DecimalPlacesAlwaysShown = True
      end
    end
  end
  object BitBtn4: TBitBtn
    Left = 712
    Top = 491
    Width = 72
    Height = 27
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = BitBtn4Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 524
    Width = 790
    Height = 19
    Panels = <>
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = dmF5.cdsVendas
    Left = 627
    Top = 160
  end
  object dsClientes: TDataSource
    Left = 627
    Top = 190
  end
  object dsCaixa: TDataSource
    DataSet = dmF5.cdsCaixa
    Left = 627
    Top = 220
  end
end
