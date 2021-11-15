object frmFn0302_02: TfrmFn0302_02
  Left = 198
  Top = 202
  Width = 637
  Height = 403
  Caption = 'Baixa de Cheques de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 5
    Top = 6
    Width = 619
    Height = 330
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 9
      Width = 53
      Height = 13
      Caption = 'CPF / CGC'
    end
    object Label3: TLabel
      Left = 13
      Top = 33
      Width = 41
      Height = 13
      Caption = 'Emitente'
    end
    object Label4: TLabel
      Left = 13
      Top = 57
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object Label5: TLabel
      Left = 13
      Top = 81
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object Label6: TLabel
      Left = 256
      Top = 81
      Width = 39
      Height = 13
      Caption = 'Ag'#234'ncia'
    end
    object Label7: TLabel
      Left = 444
      Top = 81
      Width = 28
      Height = 13
      Caption = 'Conta'
    end
    object Label8: TLabel
      Left = 13
      Top = 105
      Width = 52
      Height = 13
      Caption = 'N'#186' Cheque'
    end
    object Label9: TLabel
      Left = 13
      Top = 129
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Label10: TLabel
      Left = 13
      Top = 153
      Width = 39
      Height = 13
      Caption = 'Emiss'#227'o'
    end
    object Label11: TLabel
      Left = 13
      Top = 177
      Width = 46
      Height = 13
      Caption = 'Bom Para'
    end
    object Label12: TLabel
      Left = 13
      Top = 201
      Width = 52
      Height = 13
      Caption = 'Devolu'#231#227'o'
    end
    object Label13: TLabel
      Left = 13
      Top = 225
      Width = 86
      Height = 13
      Caption = 'Al'#237'nea Devolu'#231#227'o'
    end
    object Label14: TLabel
      Left = 13
      Top = 249
      Width = 52
      Height = 13
      Caption = 'Liquida'#231#227'o'
    end
    object Label15: TLabel
      Left = 13
      Top = 273
      Width = 54
      Height = 13
      Caption = 'Fornecedor'
    end
    object Label16: TLabel
      Left = 13
      Top = 297
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    object edtEmitente: TDBEdit
      Left = 124
      Top = 33
      Width = 337
      Height = 21
      CharCase = ecUpperCase
      DataField = 'EMITENTE'
      DataSource = DataSource1
      MaxLength = 40
      TabOrder = 1
    end
    object edtCheque: TDBEdit
      Left = 124
      Top = 105
      Width = 121
      Height = 21
      DataField = 'CHEQUE'
      DataSource = DataSource1
      TabOrder = 6
    end
    object edtValor: TDBEdit
      Left = 124
      Top = 129
      Width = 121
      Height = 21
      DataField = 'VALOR'
      DataSource = DataSource1
      MaxLength = 12
      TabOrder = 7
    end
    object edtEmissao: TJvDBDateEdit
      Left = 124
      Top = 153
      Width = 121
      Height = 21
      DataField = 'EMISSAO'
      DataSource = DataSource1
      TabOrder = 8
    end
    object edtBomPara: TJvDBDateEdit
      Left = 124
      Top = 177
      Width = 121
      Height = 21
      DataField = 'VENCIMENTO'
      DataSource = DataSource1
      TabOrder = 9
    end
    object edtDevolucao1: TJvDBDateEdit
      Left = 124
      Top = 201
      Width = 121
      Height = 21
      DataField = 'DEVOLUCAO1'
      DataSource = DataSource1
      TabOrder = 10
    end
    object edtDevolucao2: TJvDBDateEdit
      Left = 304
      Top = 200
      Width = 121
      Height = 21
      DataField = 'DEVOLUCAO2'
      DataSource = DataSource1
      TabOrder = 11
    end
    object edtLiquidacao: TJvDBDateEdit
      Left = 124
      Top = 249
      Width = 121
      Height = 21
      DataField = 'LIQUIDACAO'
      DataSource = DataSource1
      TabOrder = 13
    end
    object edtFornecedor: TDBEdit
      Left = 124
      Top = 273
      Width = 121
      Height = 21
      DataField = 'FORNECEDOR'
      DataSource = DataSource1
      MaxLength = 9
      TabOrder = 14
    end
    object edtObservacao: TDBEdit
      Left = 124
      Top = 297
      Width = 301
      Height = 21
      DataField = 'OBSERVACAO'
      DataSource = DataSource1
      TabOrder = 15
    end
    object edtAlinea: TEdit
      Left = 124
      Top = 225
      Width = 121
      Height = 21
      TabOrder = 12
    end
    object edtBanco: TDBEdit
      Left = 124
      Top = 81
      Width = 121
      Height = 21
      DataField = 'BANCO'
      DataSource = DataSource1
      TabOrder = 3
    end
    object edtCPF: TDBEdit
      Left = 124
      Top = 9
      Width = 121
      Height = 21
      DataField = 'CGC'
      DataSource = DataSource1
      TabOrder = 0
    end
    object edtFone: TDBEdit
      Left = 124
      Top = 57
      Width = 121
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DataSource1
      TabOrder = 2
    end
    object edtAgencia: TDBEdit
      Left = 304
      Top = 80
      Width = 121
      Height = 21
      DataField = 'AGENCIA'
      DataSource = DataSource1
      TabOrder = 4
    end
    object edtConta: TDBEdit
      Left = 482
      Top = 81
      Width = 121
      Height = 21
      DataField = 'CONTA'
      DataSource = DataSource1
      TabOrder = 5
    end
  end
  object btnSair: TBitBtn
    Left = 549
    Top = 339
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 1
    OnClick = btnSairClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000296394002963940000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
      63002963940029639400296394002963940000000000004A6300004A6300004A
      6300004A6300004A6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00004A
      630029639C002963940029639400296394000000000000CEFF0000CEFF0000CE
      FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00004A
      6300216B9C00296B9C00296B9C00296B9C000000000000CEFF0000CEFF0000CE
      FF0000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      63002173A5002173A5002173A500216B9C000000000008CEFF0000CEFF0000CE
      FF0000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      6300187BAD00187BAD00FFFFFF001873A5000000000031D6FF0021D6FF0018CE
      FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      63001084B500107BB500107BAD00107BAD00000000005ADEFF004ADEFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
      6300088CBD000884B5000884B5001084B5000000000084E7F700FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
      6300008CBD00008CBD00088CBD00088CBD0000000000B5EFF700A5E7F700FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF00FF00004A
      63000094C6000094C6000094C6000094C60000000000DEF7F700CEEFF700BDEF
      F700FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      63000094CE000094CE000094C6000094C60000000000F7F7F700EFF7F700E7F7
      F70000000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00004A
      63000094CE000094CE000094CE000094CE0000000000F7F7F700F7F7F700F7F7
      F70000000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00004A6300004A63000094CE000094CE0000000000004A6300004A6300004A
      6300004A6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00004A6300004A6300004A6300FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object DataSource1: TDataSource
    DataSet = dmFn0302.cdsGrid
    Left = 573
    Top = 14
  end
end
