object dmCd1007: TdmCd1007
  OldCreateOrder = False
  Left = 371
  Top = 216
  Height = 150
  Width = 276
  object qryAutoridade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_AUTORIDADE ORDER BY NOME_AUTORIDADE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 27
    Top = 14
  end
  object dspAutoridade: TDataSetProvider
    DataSet = qryAutoridade
    Options = [poAllowCommandText]
    Left = 115
    Top = 14
  end
  object cdsAutoridade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAutoridade'
    Left = 203
    Top = 14
    object cdsAutoridadeCODIGO_AUTORIDADE: TIntegerField
      FieldName = 'CODIGO_AUTORIDADE'
      Required = True
    end
    object cdsAutoridadeNOME_AUTORIDADE: TStringField
      FieldName = 'NOME_AUTORIDADE'
      Size = 50
    end
    object cdsAutoridadeDT_NASC_AUTORIDADE: TDateField
      FieldName = 'DT_NASC_AUTORIDADE'
      EditMask = '!99/99/9999;1; '
    end
    object cdsAutoridadeENDERECO_AUTORIDADE: TStringField
      FieldName = 'ENDERECO_AUTORIDADE'
      Size = 55
    end
    object cdsAutoridadeBAIRRO_AUTORIDADE: TStringField
      FieldName = 'BAIRRO_AUTORIDADE'
      Size = 25
    end
    object cdsAutoridadeCIDADE_AUTORIDADE: TStringField
      FieldName = 'CIDADE_AUTORIDADE'
    end
    object cdsAutoridadeESTADO_AUTORIDADE: TStringField
      FieldName = 'ESTADO_AUTORIDADE'
      Size = 2
    end
    object cdsAutoridadeCEP_AUTORIDADE: TStringField
      FieldName = 'CEP_AUTORIDADE'
      EditMask = '99999\-999;1; '
      Size = 10
    end
    object cdsAutoridadeFONE_AUTORIDADE: TStringField
      FieldName = 'FONE_AUTORIDADE'
      EditMask = '\(99\)9999\-9999;1; '
      Size = 15
    end
    object cdsAutoridadeOBSEVACAO_AUTORIDADE: TBlobField
      FieldName = 'OBSEVACAO_AUTORIDADE'
      Size = 1
    end
  end
end
