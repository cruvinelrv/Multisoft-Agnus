object frmCx04: TfrmCx04
  Left = 218
  Top = 173
  Width = 653
  Height = 280
  Caption = 'Cancela Venda com Caixa Encerrado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 246
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 125
      Height = 49
      Caption = 'Pedido'
      TabOrder = 0
      object DBText1: TDBText
        Left = 10
        Top = 19
        Width = 102
        Height = 17
      end
    end
    object GroupBox2: TGroupBox
      Left = 139
      Top = 8
      Width = 125
      Height = 49
      Caption = 'Data'
      TabOrder = 1
      object DBText2: TDBText
        Left = 15
        Top = 19
        Width = 102
        Height = 17
      end
    end
    object GroupBox3: TGroupBox
      Left = 270
      Top = 8
      Width = 125
      Height = 49
      Caption = 'Hora'
      TabOrder = 2
      object DBText3: TDBText
        Left = 15
        Top = 19
        Width = 102
        Height = 17
      end
    end
    object GroupBox4: TGroupBox
      Left = 402
      Top = 8
      Width = 236
      Height = 49
      Caption = 'Tipo de Pagamneto'
      TabOrder = 3
      object JvDBComboBox1: TJvDBComboBox
        Left = 27
        Top = 17
        Width = 193
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 59
      Width = 630
      Height = 49
      Caption = 'Vendedor'
      TabOrder = 4
      object DBText4: TDBText
        Left = 10
        Top = 19
        Width = 603
        Height = 19
      end
    end
    object GroupBox7: TGroupBox
      Left = 7
      Top = 162
      Width = 206
      Height = 49
      Caption = 'Valor Bruto'
      TabOrder = 5
      object DBText6: TDBText
        Left = 21
        Top = 19
        Width = 150
        Height = 17
      end
    end
    object GroupBox8: TGroupBox
      Left = 219
      Top = 162
      Width = 206
      Height = 49
      Caption = 'Desconto'
      TabOrder = 6
      object DBText7: TDBText
        Left = 23
        Top = 19
        Width = 150
        Height = 17
      end
    end
    object GroupBox9: TGroupBox
      Left = 432
      Top = 162
      Width = 206
      Height = 49
      Caption = 'Valor L'#237'quido'
      TabOrder = 7
      object DBText8: TDBText
        Left = 32
        Top = 19
        Width = 150
        Height = 17
      end
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = 111
      Width = 630
      Height = 49
      Caption = 'Cliente'
      TabOrder = 8
      object DBText5: TDBText
        Left = 10
        Top = 19
        Width = 600
        Height = 19
      end
    end
    object btnIncluir: TBitBtn
      Left = 476
      Top = 216
      Width = 79
      Height = 30
      Caption = '&Gravar'
      TabOrder = 9
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 558
      Top = 216
      Width = 79
      Height = 30
      Caption = '&Fechar'
      TabOrder = 10
      NumGlyphs = 2
    end
  end
end
