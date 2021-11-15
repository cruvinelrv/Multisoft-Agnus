object frmFn09: TfrmFn09
  Left = 198
  Top = 137
  Width = 650
  Height = 352
  BorderIcons = [biSystemMenu]
  Caption = 'Encerramento di'#225'rio'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 5
    Width = 632
    Height = 294
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Data Fluxo Atual'
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 91
      Height = 13
      Caption = 'Data Proximo Fluxo'
    end
    object Label3: TLabel
      Left = 16
      Top = 70
      Width = 53
      Height = 13
      Caption = 'Verificando'
    end
    object Label4: TLabel
      Left = 16
      Top = 97
      Width = 83
      Height = 13
      Caption = 'Total a Processar'
    end
    object Label5: TLabel
      Left = 16
      Top = 125
      Width = 62
      Height = 13
      Caption = 'Processando'
    end
    object edtDataAtual: TJvDateEdit
      Left = 128
      Top = 16
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edtProximaData: TJvDateEdit
      Left = 128
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 1
      OnKeyDown = edtProximaDataKeyDown
    end
    object Edit1: TEdit
      Left = 128
      Top = 70
      Width = 489
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 128
      Top = 97
      Width = 121
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 128
      Top = 125
      Width = 121
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      ReadOnly = True
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 10
      Top = 176
      Width = 610
      Height = 105
      BevelOuter = bvLowered
      Caption = '     '
      Color = clInfoBk
      TabOrder = 5
      object Label6: TLabel
        Left = 3
        Top = 3
        Width = 604
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aten'#231#227'o'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Label7: TLabel
        Left = 11
        Top = 40
        Width = 589
        Height = 16
        Caption = 
          'Esta opera'#231#227'o,  realiza o encerramento di'#225'rio do fluxo de conta ' +
          'corrente e de caixa.  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 11
        Top = 60
        Width = 593
        Height = 16
        Caption = 
          'Certifique-se que todo o dia j'#225' tenha sido processado antes de c' +
          'onfirmar a opera'#231#227'o.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 299
    Width = 642
    Height = 19
    Panels = <
      item
        Text = '[ESC] '#187' Retorno'
        Width = 90
      end
      item
        Text = '[ShF1] '#187' Calculadora'
        Width = 50
      end>
  end
end
