object frmShiftF7_1: TfrmShiftF7_1
  Left = 199
  Top = 119
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Detalhes de Ordem de Servi'#231'o'
  ClientHeight = 448
  ClientWidth = 670
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label30: TLabel
    Left = 16
    Top = 319
    Width = 140
    Height = 11
    Caption = 'Rod. Dianteiro.....:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
  end
  object DBText29: TDBText
    Left = 168
    Top = 316
    Width = 338
    Height = 17
    Color = clCream
    DataField = 'SERIE_SERVICO'
    DataSource = frmShiftF7.DsPesqServico
    ParentColor = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 577
    Height = 425
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object Panel1: TPanel
        Left = 8
        Top = 8
        Width = 553
        Height = 385
        Caption = 'Panel1'
        TabOrder = 0
        object Panel2: TPanel
          Left = 8
          Top = 8
          Width = 537
          Height = 369
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 126
            Height = 12
            Caption = 'Servi'#231'o n'#176'.......:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 8
            Top = 32
            Width = 126
            Height = 12
            Caption = 'Cliente..........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 8
            Top = 56
            Width = 126
            Height = 12
            Caption = 'Endere'#231'o.........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 8
            Top = 80
            Width = 126
            Height = 12
            Caption = 'Bairro...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 8
            Top = 104
            Width = 126
            Height = 12
            Caption = 'Cidade...........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 8
            Top = 128
            Width = 126
            Height = 12
            Caption = 'Fone.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 8
            Top = 152
            Width = 126
            Height = 12
            Caption = 'T'#233'cnico..........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 8
            Top = 176
            Width = 126
            Height = 12
            Caption = 'Data Requisi'#231#227'o..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 8
            Top = 200
            Width = 126
            Height = 12
            Caption = 'Hora.............:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 8
            Top = 224
            Width = 126
            Height = 12
            Caption = 'Previs'#227'o.........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 8
            Top = 248
            Width = 126
            Height = 12
            Caption = 'Contrato.........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 8
            Top = 272
            Width = 126
            Height = 12
            Caption = 'Garantia.........:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 8
            Top = 296
            Width = 126
            Height = 12
            Caption = 'Atend. Externo...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 8
            Top = 320
            Width = 126
            Height = 12
            Caption = 'Tipo de Servi'#231'o..:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 8
            Top = 344
            Width = 126
            Height = 12
            Caption = 'Forma de Pagto...:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 144
            Top = 8
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'CODIGO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText2: TDBText
            Left = 144
            Top = 32
            Width = 49
            Height = 17
            Color = clCream
            DataField = 'CLIENTE_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText3: TDBText
            Left = 144
            Top = 56
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'ENDERECO_CLIENTE'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText4: TDBText
            Left = 144
            Top = 80
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'BAIRRO_CLIENTE'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText5: TDBText
            Left = 144
            Top = 104
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'CIDADE_CLIENTE'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText6: TDBText
            Left = 144
            Top = 128
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'TELEFONE_CLIENTE'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText7: TDBText
            Left = 144
            Top = 152
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'NOME_VENDEDOR'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText8: TDBText
            Left = 144
            Top = 176
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'REQUISICAO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText9: TDBText
            Left = 144
            Top = 200
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'HORA_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText10: TDBText
            Left = 144
            Top = 224
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'PREVISAO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText11: TDBText
            Left = 144
            Top = 248
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'CONTRATO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText12: TDBText
            Left = 144
            Top = 272
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'GARANTIA_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText13: TDBText
            Left = 144
            Top = 296
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'EXTERNO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText14: TDBText
            Left = 144
            Top = 320
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'TIPOSERVICO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText15: TDBText
            Left = 144
            Top = 344
            Width = 385
            Height = 17
            Color = clCream
            DataField = 'PAGAMENTO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText16: TDBText
            Left = 208
            Top = 32
            Width = 321
            Height = 17
            Color = clCream
            DataField = 'NOME_CLIENTE'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object Label16: TLabel
            Left = 197
            Top = 35
            Width = 7
            Height = 11
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Servi'#231'os'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 8
        Top = 8
        Width = 553
        Height = 385
        Caption = 'Panel3'
        TabOrder = 0
        object Panel4: TPanel
          Left = 8
          Top = 8
          Width = 537
          Height = 369
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 0
          object Label17: TLabel
            Left = 23
            Top = 19
            Width = 140
            Height = 11
            Caption = 'Equip./Servi'#231'o.....:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 23
            Top = 43
            Width = 140
            Height = 11
            Caption = 'Placa..............:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 23
            Top = 67
            Width = 140
            Height = 11
            Caption = 'Removido...........:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 23
            Top = 91
            Width = 140
            Height = 11
            Caption = 'Defeitio Reclamado.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 23
            Top = 115
            Width = 140
            Height = 11
            Caption = 'Observa'#231#227'o.........:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 23
            Top = 139
            Width = 140
            Height = 11
            Caption = 'Defeito Constatado.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 23
            Top = 195
            Width = 140
            Height = 11
            Caption = 'Motor..............:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 23
            Top = 219
            Width = 140
            Height = 11
            Caption = 'Modelo.............:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 23
            Top = 243
            Width = 140
            Height = 11
            Caption = 'S'#233'rie..............:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object DBText17: TDBText
            Left = 175
            Top = 240
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'SERIE_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText18: TDBText
            Left = 175
            Top = 216
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'MODELO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText19: TDBText
            Left = 175
            Top = 192
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'MOTOR_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText20: TDBText
            Left = 175
            Top = 136
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'DEFEITOC_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText21: TDBText
            Left = 175
            Top = 112
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'OBSERVACAO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText22: TDBText
            Left = 175
            Top = 88
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'DEFEITOR_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText23: TDBText
            Left = 175
            Top = 64
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'REMOVIDO_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText24: TDBText
            Left = 175
            Top = 40
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'PLACA_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText25: TDBText
            Left = 175
            Top = 16
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'EQUIPAMENT_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object Label27: TLabel
            Left = 23
            Top = 267
            Width = 140
            Height = 11
            Caption = 'Horas..............:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 23
            Top = 291
            Width = 140
            Height = 11
            Caption = 'Rod. Trazeira......:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 23
            Top = 315
            Width = 140
            Height = 11
            Caption = 'Rod. Dianteiro.....:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object DBText26: TDBText
            Left = 175
            Top = 312
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'ROD_TRAZ_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText27: TDBText
            Left = 175
            Top = 288
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'ROD_DIAN_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object DBText28: TDBText
            Left = 175
            Top = 264
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'HORA_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object Label31: TLabel
            Left = 23
            Top = 339
            Width = 140
            Height = 11
            Caption = 'Observa'#231#245'es........:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            ParentFont = False
          end
          object DBText30: TDBText
            Left = 175
            Top = 336
            Width = 338
            Height = 17
            Color = clCream
            DataField = 'OBSERVACA1_SERVICO'
            DataSource = frmShiftF7.DsPesqServico
            ParentColor = False
          end
          object GroupBox1: TGroupBox
            Left = 8
            Top = 171
            Width = 521
            Height = 7
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pe'#231'as e Servi'#231'os Aplicados'
      ImageIndex = 2
      object Label26: TLabel
        Left = 11
        Top = 373
        Width = 186
        Height = 13
        Caption = 'Total da Ordem de Servi'#231'o: 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 8
        Top = 8
        Width = 553
        Height = 353
        Color = clCream
        DataSource = dsServicoItem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = #205'tem'
            Width = 263
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Quant.'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRADE'
            Title.Alignment = taCenter
            Title.Caption = 'Grade'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_BRUTO'
            Title.Caption = 'Pre'#231'o Total'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Ocorr'#234'ncias'
      ImageIndex = 3
      object DBGrid2: TDBGrid
        Left = 8
        Top = 8
        Width = 553
        Height = 353
        Color = clCream
        DataSource = dsMoviServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'DAT_STA'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HOR_STA'
            Title.Caption = 'Hora'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSP_STA'
            Title.Caption = 'Respons'#225'vel'
            Width = 179
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_STA'
            Title.Caption = 'Status Atual'
            Width = 222
            Visible = True
          end>
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 429
    Width = 670
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '[Esc] '#187' Fechar'
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object BitBtn4: TBitBtn
    Left = 579
    Top = 20
    Width = 89
    Height = 30
    Cancel = True
    Caption = '&Fechar'
    TabOrder = 2
    OnClick = BitBtn4Click
  end
  object dsServicoItem: TDataSource
    AutoEdit = False
    DataSet = dmShiftF7.cdsServicosItem
    Left = 588
    Top = 176
  end
  object dsMoviServico: TDataSource
    AutoEdit = False
    DataSet = dmShiftF7.qryMoviServico
    Left = 624
    Top = 176
  end
end
