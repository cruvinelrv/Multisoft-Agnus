object dmF7: TdmF7
  OldCreateOrder = False
  Left = 397
  Top = 225
  Height = 289
  Width = 412
  object qryPesqClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT E_CLIENTE.*,'
      
        '       (E_CLIENTE.credito_cliente-E_CLIENTE.utilizado_cliente) A' +
        'S SALDO,'
      '       p_contrato.ultanuidade_contrato'
      '       FROM E_CLIENTE'
      '       LEFT OUTER JOIN E_CIDADE'
      '       ON E_CLIENTE.cidade_cliente=E_CIDADE.codigo_cidade'
      '       LEFT OUTER JOIN P_CONTRATO'
      '       ON E_CLIENTE.codigo_cliente=p_contrato.cliente_contrato'
      '       AND (P_CONTRATO.cod_empresa=:EMPRESA)'
      '       WHERE E_CLIENTE.TIPO_CLIENTE=:TIPO')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 19
  end
  object dspPesqClientes: TDataSetProvider
    DataSet = qryPesqClientes
    Options = [poAllowCommandText]
    Left = 128
    Top = 19
  end
  object cdsPesqCliente: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspPesqClientes'
    Left = 225
    Top = 19
    object cdsPesqClienteCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsPesqClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsPesqClienteTELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object cdsPesqClienteFAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object cdsPesqClienteENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClienteBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsPesqClienteDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object cdsPesqClienteESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClienteCREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteUTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
    object cdsPesqClienteOBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPesqClienteULTANUIDADE_CONTRATO: TIntegerField
      FieldName = 'ULTANUIDADE_CONTRATO'
    end
  end
  object cdsPesqClientes2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspPesqClientes'
    Left = 322
    Top = 19
    object cdsPesqClientes2CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Required = True
    end
    object cdsPesqClientes2TIPO_CLIENTE: TIntegerField
      FieldName = 'TIPO_CLIENTE'
      Required = True
    end
    object cdsPesqClientes2NOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2FANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2TIPOPESSOA_CLIENTE: TStringField
      FieldName = 'TIPOPESSOA_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2PAI_CLIENTE: TStringField
      FieldName = 'PAI_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2MAE_CLIENTE: TStringField
      FieldName = 'MAE_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2ENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2BAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2CIDADE_CLIENTE: TIntegerField
      FieldName = 'CIDADE_CLIENTE'
      Required = True
    end
    object cdsPesqClientes2ESTADO_CLIENTE: TStringField
      FieldName = 'ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2CEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClientes2CX_POSTAL_CLIENTE: TStringField
      FieldName = 'CX_POSTAL_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2TELEFONE_CLIENTE: TStringField
      FieldName = 'TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2FAX_CLIENTE: TStringField
      FieldName = 'FAX_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CELULAR_CLIENTE: TStringField
      FieldName = 'CELULAR_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 18
    end
    object cdsPesqClientes2DATANASC_CLIENTE: TDateField
      FieldName = 'DATANASC_CLIENTE'
    end
    object cdsPesqClientes2INSCRICAO_CLIENTE: TStringField
      FieldName = 'INSCRICAO_CLIENTE'
    end
    object cdsPesqClientes2INSC_MUN_CLIENTE: TStringField
      FieldName = 'INSC_MUN_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2DATABLOQUEIO_CLIENTE: TDateField
      FieldName = 'DATABLOQUEIO_CLIENTE'
    end
    object cdsPesqClientes2ULTIMA_COMPRA_CLIENTE: TDateField
      FieldName = 'ULTIMA_COMPRA_CLIENTE'
    end
    object cdsPesqClientes2DATACADASTRO_CLIENTE: TDateField
      FieldName = 'DATACADASTRO_CLIENTE'
    end
    object cdsPesqClientes2VALORCOMPRA_CLIENTE: TFMTBCDField
      FieldName = 'VALORCOMPRA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2CREDITO_CLIENTE: TFMTBCDField
      FieldName = 'CREDITO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2UTILIZADO_CLIENTE: TFMTBCDField
      FieldName = 'UTILIZADO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2CONTATO_CLIENTE: TStringField
      FieldName = 'CONTATO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2AREA_CLIENTE: TIntegerField
      FieldName = 'AREA_CLIENTE'
    end
    object cdsPesqClientes2CONTRIBUINTE_CLIENTE: TStringField
      FieldName = 'CONTRIBUINTE_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2OBSEVACAO_CLIENTE: TMemoField
      FieldName = 'OBSEVACAO_CLIENTE'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPesqClientes2MANEQUIN_CLIENTE: TStringField
      FieldName = 'MANEQUIN_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2SAPATO_CLIENTE: TStringField
      FieldName = 'SAPATO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2MANEQUIN1_CLIENTE: TStringField
      FieldName = 'MANEQUIN1_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2SAPATO1_CLIENTE: TStringField
      FieldName = 'SAPATO1_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2SPC_CLIENTE: TStringField
      FieldName = 'SPC_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2CHECK_CLIENTE: TStringField
      FieldName = 'CHECK_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2SERASA_CLIENTE: TStringField
      FieldName = 'SERASA_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2ATACADO_CLIENTE: TStringField
      FieldName = 'ATACADO_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2HOMEPAGE_CLIENTE: TStringField
      FieldName = 'HOMEPAGE_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2EMAIL_CLIENTE: TStringField
      FieldName = 'EMAIL_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2DDG_CLIENTE: TStringField
      FieldName = 'DDG_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2SOCIO1_CLIENTE: TStringField
      FieldName = 'SOCIO1_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2SOCIO2_CLIENTE: TStringField
      FieldName = 'SOCIO2_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2SOCIO1_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO1_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2SOCIO2_DATANASC_CLIENTE: TDateField
      FieldName = 'SOCIO2_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2GERENTE_CLIENTE: TStringField
      FieldName = 'GERENTE_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2GERENTE_DATANASC_CLIENTE: TDateField
      FieldName = 'GERENTE_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2JUNTACOMERCIAL_CLIENTE: TStringField
      FieldName = 'JUNTACOMERCIAL_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2CAPITAL_CLIENTE: TFMTBCDField
      FieldName = 'CAPITAL_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2TRAB_CLIENTE: TStringField
      FieldName = 'TRAB_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2TRAB_FUNCAO_CLIENTE: TStringField
      FieldName = 'TRAB_FUNCAO_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2TRAB_FONE_CLIENTE: TStringField
      FieldName = 'TRAB_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2TRAB_RAMAL_CLIENTE: TStringField
      FieldName = 'TRAB_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsPesqClientes2TRAB_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2TRAB_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'TRAB_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2CONJUGE_CLIENTE: TStringField
      FieldName = 'CONJUGE_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2CONJUGE_TRABALHO_CLIENTE: TStringField
      FieldName = 'CONJUGE_TRABALHO_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2CONJUGE_FUNCAO1_CLIENTE: TStringField
      FieldName = 'CONJUGE_FUNCAO1_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2CONJUGE_DATANASC_CLIENTE: TDateField
      FieldName = 'CONJUGE_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2CONJUGE_FONE_CLIENTE: TStringField
      FieldName = 'CONJUGE_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CONJUGE_RAMAL_CLIENTE: TStringField
      FieldName = 'CONJUGE_RAMAL_CLIENTE'
      Size = 4
    end
    object cdsPesqClientes2CONJUGE_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2CONJUGE_OUTRAS_CLIENTE: TFMTBCDField
      FieldName = 'CONJUGE_OUTRAS_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2REF_BANCO1_CLIENTE: TStringField
      FieldName = 'REF_BANCO1_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2REF_BANCO2_CLIENTE: TStringField
      FieldName = 'REF_BANCO2_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2REF_BANCOFONE1_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_BANCOFONE2_CLIENTE: TStringField
      FieldName = 'REF_BANCOFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_COMERCIAL1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL1_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2REF_COMERCIAL2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIAL2_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2REF_COMERCIALFONE1_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_COMERCIALFONE2_CLIENTE: TStringField
      FieldName = 'REF_COMERCIALFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_PESSOAL1_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL1_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2REF_PESSOAL2_CLIENTE: TStringField
      FieldName = 'REF_PESSOAL2_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2REF_PESSOALFONE1_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REF_PESSOALFONE2_CLIENTE: TStringField
      FieldName = 'REF_PESSOALFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2COB_ENDERECO_CLIENTE: TStringField
      FieldName = 'COB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2COB_BAIRRO_CLIENTE: TStringField
      FieldName = 'COB_BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2COB_CIDADE_CLIENTE: TIntegerField
      FieldName = 'COB_CIDADE_CLIENTE'
    end
    object cdsPesqClientes2COB_ESTADO_CLIENTE: TStringField
      FieldName = 'COB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2COB_CEP_CLIENTE: TStringField
      FieldName = 'COB_CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClientes2COB_TELEFONE_CLIENTE: TStringField
      FieldName = 'COB_TELEFONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2COB_FAX_CLIENTE: TStringField
      FieldName = 'COB_FAX_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2COB_CXPOSTAL_CLIENTE: TStringField
      FieldName = 'COB_CXPOSTAL_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2VENDEDOR_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR_CLIENTE'
    end
    object cdsPesqClientes2VENDEDOR1_CLIENTE: TIntegerField
      FieldName = 'VENDEDOR1_CLIENTE'
    end
    object cdsPesqClientes2RAMO1_CLIENTE: TIntegerField
      FieldName = 'RAMO1_CLIENTE'
    end
    object cdsPesqClientes2RAMO2_CLIENTE: TIntegerField
      FieldName = 'RAMO2_CLIENTE'
    end
    object cdsPesqClientes2RAMO3_CLIENTE: TIntegerField
      FieldName = 'RAMO3_CLIENTE'
    end
    object cdsPesqClientes2TPGTO_CLIENTE: TIntegerField
      FieldName = 'TPGTO_CLIENTE'
    end
    object cdsPesqClientes2BANCO1_CLIENTE: TStringField
      FieldName = 'BANCO1_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC1_CLIENTE: TStringField
      FieldName = 'AGENC1_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB1_CLIENTE: TStringField
      FieldName = 'FONEB1_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA1_CLIENTE: TStringField
      FieldName = 'CONTA1_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD1_CLIENTE: TDateField
      FieldName = 'CLDSD1_CLIENTE'
    end
    object cdsPesqClientes2BANCO2_CLIENTE: TStringField
      FieldName = 'BANCO2_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC2_CLIENTE: TStringField
      FieldName = 'AGENC2_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB2_CLIENTE: TStringField
      FieldName = 'FONEB2_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA2_CLIENTE: TStringField
      FieldName = 'CONTA2_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD2_CLIENTE: TDateField
      FieldName = 'CLDSD2_CLIENTE'
    end
    object cdsPesqClientes2BANCO3_CLIENTE: TStringField
      FieldName = 'BANCO3_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC3_CLIENTE: TStringField
      FieldName = 'AGENC3_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB3_CLIENTE: TStringField
      FieldName = 'FONEB3_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA3_CLIENTE: TStringField
      FieldName = 'CONTA3_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD3_CLIENTE: TDateField
      FieldName = 'CLDSD3_CLIENTE'
    end
    object cdsPesqClientes2BANCO4_CLIENTE: TStringField
      FieldName = 'BANCO4_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC4_CLIENTE: TStringField
      FieldName = 'AGENC4_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB4_CLIENTE: TStringField
      FieldName = 'FONEB4_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA4_CLIENTE: TStringField
      FieldName = 'CONTA4_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD4_CLIENTE: TDateField
      FieldName = 'CLDSD4_CLIENTE'
    end
    object cdsPesqClientes2BANCO5_CLIENTE: TStringField
      FieldName = 'BANCO5_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AGENC5_CLIENTE: TStringField
      FieldName = 'AGENC5_CLIENTE'
      Size = 6
    end
    object cdsPesqClientes2FONEB5_CLIENTE: TStringField
      FieldName = 'FONEB5_CLIENTE'
      Size = 14
    end
    object cdsPesqClientes2CONTA5_CLIENTE: TStringField
      FieldName = 'CONTA5_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2CLDSD5_CLIENTE: TDateField
      FieldName = 'CLDSD5_CLIENTE'
    end
    object cdsPesqClientes2COMISSAO_CLIENTE: TStringField
      FieldName = 'COMISSAO_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2CARTAO_CLIENTE: TDateField
      FieldName = 'CARTAO_CLIENTE'
    end
    object cdsPesqClientes2ULTIMO_CONT_CLIENTE: TDateField
      FieldName = 'ULTIMO_CONT_CLIENTE'
    end
    object cdsPesqClientes2USUARIO_CLIENTE: TStringField
      FieldName = 'USUARIO_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2STATUS_CLIENTE: TStringField
      FieldName = 'STATUS_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2NATURALID_CLIENTE: TStringField
      FieldName = 'NATURALID_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2ESTADOCIVIL_CLIENTE: TStringField
      FieldName = 'ESTADOCIVIL_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2CARTEIRATRAB_CLIENTE: TStringField
      FieldName = 'CARTEIRATRAB_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2TEMPO_RES_CLIENTE: TStringField
      FieldName = 'TEMPO_RES_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2TIPO_CASA_CLIENTE: TStringField
      FieldName = 'TIPO_CASA_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2VALOR_CASA_CLIENTE: TFMTBCDField
      FieldName = 'VALOR_CASA_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2FONERECADO_CLIENTE: TStringField
      FieldName = 'FONERECADO_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2TRAB_ENDERECO_CLIENTE: TStringField
      FieldName = 'TRAB_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2TRAB_BAIRRO_CLIENTE: TStringField
      FieldName = 'TRAB_BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2TRAB_CIDADE_CLIENTE: TStringField
      FieldName = 'TRAB_CIDADE_CLIENTE'
    end
    object cdsPesqClientes2TRAB_ESTADO_CLIENTE: TStringField
      FieldName = 'TRAB_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2TRAB_CEP_CLIENTE: TStringField
      FieldName = 'TRAB_CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClientes2TRAB_DATAADMISSAO_CLIENTE: TDateField
      FieldName = 'TRAB_DATAADMISSAO_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_TIPO_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPO_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2AVACONJ_NOME_CLIENTE: TStringField
      FieldName = 'AVACONJ_NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2AVACONJ_DATANASC_CLIENTE: TDateField
      FieldName = 'AVACONJ_DATANASC_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_ESTCIVIL_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTCIVIL_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2AVACONJ_PAI_CLIENTE: TStringField
      FieldName = 'AVACONJ_PAI_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2AVACONJ_MAE_CLIENTE: TStringField
      FieldName = 'AVACONJ_MAE_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2AVACONJ_RG_CLIENTE: TStringField
      FieldName = 'AVACONJ_RG_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_CPF_CLIENTE: TStringField
      FieldName = 'AVACONJ_CPF_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AVACONJ_CARTERA_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARTERA_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AVACONJ_ENDERECO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2AVACONJ_BAIRRO_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_CIDADE_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDADE_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_ESTADO_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTADO_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2AVACONJ_CEP_CLIENTE: TStringField
      FieldName = 'AVACONJ_CEP_CLIENTE'
      Size = 9
    end
    object cdsPesqClientes2AVACONJ_FONE_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2AVACONJ_TEMPORESID_CLIENTE: TStringField
      FieldName = 'AVACONJ_TEMPORESID_CLIENTE'
      Size = 10
    end
    object cdsPesqClientes2AVACONJ_TIPOIMOV_CLIENTE: TStringField
      FieldName = 'AVACONJ_TIPOIMOV_CLIENTE'
      Size = 1
    end
    object cdsPesqClientes2AVACONJ_EMPTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_EMPTRAB_CLIENTE'
      Size = 30
    end
    object cdsPesqClientes2AVACONJ_ENDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ENDTRAB_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2AVACONJ_BAITRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_BAITRAB_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_CIDTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_CIDTRAB_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_ESTTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_ESTTRAB_CLIENTE'
      Size = 2
    end
    object cdsPesqClientes2AVACONJ_ADMTRAB_CLIENTE: TDateField
      FieldName = 'AVACONJ_ADMTRAB_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_FUNCAO_CLIENTE: TStringField
      FieldName = 'AVACONJ_FUNCAO_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_CARGO_CLIENTE: TStringField
      FieldName = 'AVACONJ_CARGO_CLIENTE'
    end
    object cdsPesqClientes2AVACONJ_SALARIO_CLIENTE: TFMTBCDField
      FieldName = 'AVACONJ_SALARIO_CLIENTE'
      Precision = 15
      Size = 2
    end
    object cdsPesqClientes2AVACONJ_FONTRAB_CLIENTE: TStringField
      FieldName = 'AVACONJ_FONTRAB_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2AVACONJ_REFERENCIA1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA1_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2AVACONJ_REFERENCIA2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA2_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2AVACONJ_REFERENCIA3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFERENCIA3_CLIENTE'
      Size = 22
    end
    object cdsPesqClientes2PARENTE_NOME_CLIENTE: TStringField
      FieldName = 'PARENTE_NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2PARENTE_FONE_CLIENTE: TStringField
      FieldName = 'PARENTE_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2PARENTE_ENDERECO_CLIENTE: TStringField
      FieldName = 'PARENTE_ENDERECO_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2PARENTE_BAIRRO_CLIENTE: TStringField
      FieldName = 'PARENTE_BAIRRO_CLIENTE'
    end
    object cdsPesqClientes2PARENTE_CIDADE_CLIENTE: TStringField
      FieldName = 'PARENTE_CIDADE_CLIENTE'
    end
    object cdsPesqClientes2DATABASE_CLIENTE: TIntegerField
      FieldName = 'DATABASE_CLIENTE'
    end
    object cdsPesqClientes2CONTATO1_CLIENTE: TStringField
      FieldName = 'CONTATO1_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2CONTATO2_CLIENTE: TStringField
      FieldName = 'CONTATO2_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2CONTATO3_CLIENTE: TStringField
      FieldName = 'CONTATO3_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2CONTATO1_FONE__CLIENTE: TStringField
      FieldName = 'CONTATO1_FONE__CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CONTATO2_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO2_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2CONTATO3_FONE_CLIENTE: TStringField
      FieldName = 'CONTATO3_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2PAIS_CLIENTE: TStringField
      FieldName = 'PAIS_CLIENTE'
    end
    object cdsPesqClientes2REPR_NOME_CLIENTE: TStringField
      FieldName = 'REPR_NOME_CLIENTE'
      Size = 40
    end
    object cdsPesqClientes2REPR_FONE_CLIENTE: TStringField
      FieldName = 'REPR_FONE_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2REPR_CELULAR_CLIENTE: TStringField
      FieldName = 'REPR_CELULAR_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2REPR_FAX_CLIENTE: TStringField
      FieldName = 'REPR_FAX_CLIENTE'
      Size = 15
    end
    object cdsPesqClientes2AVACONJ_REFFONE3_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE3_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2AVACONJ_REFFONE2_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE2_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2AVACONJ_REFFONE1_CLIENTE: TStringField
      FieldName = 'AVACONJ_REFFONE1_CLIENTE'
      Size = 13
    end
    object cdsPesqClientes2SALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 2
    end
  end
  object qryPropriedade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM E_PROPRIEDADE WHERE CLIENTE_PRO=:CLIENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 77
    object qryPropriedadeCLIENTE_PRO: TIntegerField
      FieldName = 'CLIENTE_PRO'
      Required = True
    end
    object qryPropriedadeCODIGO_PRO: TIntegerField
      FieldName = 'CODIGO_PRO'
      Required = True
    end
    object qryPropriedadeINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      Size = 18
    end
    object qryPropriedadeDINS_PRO: TDateField
      FieldName = 'DINS_PRO'
    end
    object qryPropriedadeENDERECO_PRO: TStringField
      FieldName = 'ENDERECO_PRO'
      Size = 40
    end
    object qryPropriedadeBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
    end
    object qryPropriedadeCIDADE_PRO: TIntegerField
      FieldName = 'CIDADE_PRO'
    end
    object qryPropriedadeESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      Size = 2
    end
    object qryPropriedadeCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      Size = 9
    end
    object qryPropriedadeFONE_PRO: TStringField
      FieldName = 'FONE_PRO'
      Size = 15
    end
    object qryPropriedadeLOCAL_PRO: TMemoField
      FieldName = 'LOCAL_PRO'
      BlobType = ftMemo
      Size = 1
    end
    object qryPropriedadeARREDADA_PRO: TStringField
      FieldName = 'ARREDADA_PRO'
      FixedChar = True
      Size = 1
    end
    object qryPropriedadeARRENDATIPO_PRO: TStringField
      FieldName = 'ARRENDATIPO_PRO'
      Size = 1
    end
    object qryPropriedadeARRENDNOME_PRO: TStringField
      FieldName = 'ARRENDNOME_PRO'
      Size = 40
    end
    object qryPropriedadeARRENDAEND_PRO: TStringField
      FieldName = 'ARRENDAEND_PRO'
      Size = 40
    end
    object qryPropriedadeARRENDABAIRRO_PRO: TStringField
      FieldName = 'ARRENDABAIRRO_PRO'
    end
    object qryPropriedadeARRENDACIDADE_PRO: TStringField
      FieldName = 'ARRENDACIDADE_PRO'
    end
    object qryPropriedadeARRENDAESTADO_PRO: TStringField
      FieldName = 'ARRENDAESTADO_PRO'
      Size = 2
    end
    object qryPropriedadeARRENDACEP_PRO: TStringField
      FieldName = 'ARRENDACEP_PRO'
      Size = 8
    end
    object qryPropriedadeARREMDAFON_PRO: TStringField
      FieldName = 'ARREMDAFON_PRO'
      Size = 15
    end
    object qryPropriedadeDURACAO_PRO: TStringField
      FieldName = 'DURACAO_PRO'
      Size = 15
    end
    object qryPropriedadeAREA_PRO: TFMTBCDField
      FieldName = 'AREA_PRO'
      Precision = 15
      Size = 2
    end
    object qryPropriedadeGERENTE_PRO: TStringField
      FieldName = 'GERENTE_PRO'
    end
    object qryPropriedadeSAFRA_PRO: TStringField
      FieldName = 'SAFRA_PRO'
      Size = 9
    end
    object qryPropriedadePLANTADA_PRO: TFMTBCDField
      FieldName = 'PLANTADA_PRO'
      Precision = 15
      Size = 2
    end
    object qryPropriedadeOBSERVACAO_PRO: TMemoField
      FieldName = 'OBSERVACAO_PRO'
      BlobType = ftMemo
      Size = 1
    end
    object qryPropriedadeDESCRICAO_PRO: TStringField
      FieldName = 'DESCRICAO_PRO'
      Size = 40
    end
    object qryPropriedadeARRENDACNPJ_PRO: TStringField
      FieldName = 'ARRENDACNPJ_PRO'
      Size = 18
    end
  end
  object dspPropriedade: TDataSetProvider
    DataSet = qryPropriedade
    Left = 130
    Top = 77
  end
  object cdsPropriedade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPropriedade'
    Left = 226
    Top = 78
    object cdsPropriedadeCLIENTE_PRO: TIntegerField
      FieldName = 'CLIENTE_PRO'
      Required = True
    end
    object cdsPropriedadeCODIGO_PRO: TIntegerField
      FieldName = 'CODIGO_PRO'
      Required = True
    end
    object cdsPropriedadeINSCEST_PRO: TStringField
      FieldName = 'INSCEST_PRO'
      Size = 18
    end
    object cdsPropriedadeDINS_PRO: TDateField
      FieldName = 'DINS_PRO'
    end
    object cdsPropriedadeENDERECO_PRO: TStringField
      FieldName = 'ENDERECO_PRO'
      Size = 40
    end
    object cdsPropriedadeBAIRRO_PRO: TStringField
      FieldName = 'BAIRRO_PRO'
    end
    object cdsPropriedadeCIDADE_PRO: TIntegerField
      FieldName = 'CIDADE_PRO'
    end
    object cdsPropriedadeESTADO_PRO: TStringField
      FieldName = 'ESTADO_PRO'
      Size = 2
    end
    object cdsPropriedadeCEP_PRO: TStringField
      FieldName = 'CEP_PRO'
      Size = 9
    end
    object cdsPropriedadeFONE_PRO: TStringField
      FieldName = 'FONE_PRO'
      Size = 15
    end
    object cdsPropriedadeLOCAL_PRO: TMemoField
      FieldName = 'LOCAL_PRO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPropriedadeARREDADA_PRO: TStringField
      FieldName = 'ARREDADA_PRO'
      FixedChar = True
      Size = 1
    end
    object cdsPropriedadeARRENDATIPO_PRO: TStringField
      FieldName = 'ARRENDATIPO_PRO'
      Size = 1
    end
    object cdsPropriedadeARRENDNOME_PRO: TStringField
      FieldName = 'ARRENDNOME_PRO'
      Size = 40
    end
    object cdsPropriedadeARRENDAEND_PRO: TStringField
      FieldName = 'ARRENDAEND_PRO'
      Size = 40
    end
    object cdsPropriedadeARRENDABAIRRO_PRO: TStringField
      FieldName = 'ARRENDABAIRRO_PRO'
    end
    object cdsPropriedadeARRENDACIDADE_PRO: TStringField
      FieldName = 'ARRENDACIDADE_PRO'
    end
    object cdsPropriedadeARRENDAESTADO_PRO: TStringField
      FieldName = 'ARRENDAESTADO_PRO'
      Size = 2
    end
    object cdsPropriedadeARRENDACEP_PRO: TStringField
      FieldName = 'ARRENDACEP_PRO'
      Size = 8
    end
    object cdsPropriedadeARREMDAFON_PRO: TStringField
      FieldName = 'ARREMDAFON_PRO'
      Size = 15
    end
    object cdsPropriedadeDURACAO_PRO: TStringField
      FieldName = 'DURACAO_PRO'
      Size = 15
    end
    object cdsPropriedadeAREA_PRO: TFMTBCDField
      FieldName = 'AREA_PRO'
      Precision = 15
      Size = 2
    end
    object cdsPropriedadeGERENTE_PRO: TStringField
      FieldName = 'GERENTE_PRO'
    end
    object cdsPropriedadeSAFRA_PRO: TStringField
      FieldName = 'SAFRA_PRO'
      Size = 9
    end
    object cdsPropriedadePLANTADA_PRO: TFMTBCDField
      FieldName = 'PLANTADA_PRO'
      Precision = 15
      Size = 2
    end
    object cdsPropriedadeOBSERVACAO_PRO: TMemoField
      FieldName = 'OBSERVACAO_PRO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPropriedadeDESCRICAO_PRO: TStringField
      FieldName = 'DESCRICAO_PRO'
      Size = 40
    end
    object cdsPropriedadeARRENDACNPJ_PRO: TStringField
      FieldName = 'ARRENDACNPJ_PRO'
      Size = 18
    end
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 231
    Top = 131
    object cdsCidadeCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      Required = True
    end
    object cdsCidadeDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object cdsCidadeCEP_INICIA_CIDADE: TStringField
      FieldName = 'CEP_INICIA_CIDADE'
      EditMask = '99999\-999;1;_'
      Size = 9
    end
    object cdsCidadeCEP_FINAL_CIDADE: TStringField
      FieldName = 'CEP_FINAL_CIDADE'
      EditMask = '99999\-999;1;_'
      Size = 9
    end
    object cdsCidadeUF_CIDADE: TStringField
      FieldName = 'UF_CIDADE'
      FixedChar = True
      Size = 2
    end
    object cdsCidadePAIS_CIDADE: TStringField
      FieldName = 'PAIS_CIDADE'
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = qryCidade
    Options = [poAllowCommandText]
    Left = 132
    Top = 134
  end
  object qryCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM E_CIDADE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 32
    Top = 136
    object qryCidadeCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      Required = True
    end
    object qryCidadeDESCRICAO_CIDADE: TStringField
      FieldName = 'DESCRICAO_CIDADE'
      Size = 30
    end
    object qryCidadeCEP_INICIA_CIDADE: TStringField
      FieldName = 'CEP_INICIA_CIDADE'
      Size = 9
    end
    object qryCidadeCEP_FINAL_CIDADE: TStringField
      FieldName = 'CEP_FINAL_CIDADE'
      Size = 9
    end
    object qryCidadeUF_CIDADE: TStringField
      FieldName = 'UF_CIDADE'
      FixedChar = True
      Size = 2
    end
    object qryCidadePAIS_CIDADE: TStringField
      FieldName = 'PAIS_CIDADE'
    end
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      ''
      'CODIGO_VENDA,'
      'SERIE_VENDA,'
      'NOTAFISCAL_VENDA,'
      'CFOP_VENDA,'
      'EMISSAO_VENDA,'
      'HORA_VENDA,'
      'VENDEDOR_VENDA,'
      'FATURA_VENDA,'
      'TIPO_PRECO_VENDA'
      ''
      
        ' FROM P_VENDAS WHERE COD_EMPRESA=:EMPRESA AND CLIENTE_VENDA=:CLI' +
        'ENTE')
    SQLConnection = DmPrincipal.DbConexao
    Left = 34
    Top = 194
    object qryVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object qryVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object qryVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object qryVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object qryVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object qryVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object qryVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object qryVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object qryVendasTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
  end
  object dspVendas: TDataSetProvider
    DataSet = qryVendas
    Left = 133
    Top = 194
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'CLIENTE'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendas'
    Left = 234
    Top = 194
    object cdsVendasCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
    end
    object cdsVendasSERIE_VENDA: TStringField
      FieldName = 'SERIE_VENDA'
      Size = 2
    end
    object cdsVendasNOTAFISCAL_VENDA: TIntegerField
      FieldName = 'NOTAFISCAL_VENDA'
    end
    object cdsVendasCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Size = 5
    end
    object cdsVendasEMISSAO_VENDA: TDateField
      FieldName = 'EMISSAO_VENDA'
    end
    object cdsVendasHORA_VENDA: TStringField
      FieldName = 'HORA_VENDA'
      Size = 8
    end
    object cdsVendasVENDEDOR_VENDA: TIntegerField
      FieldName = 'VENDEDOR_VENDA'
    end
    object cdsVendasFATURA_VENDA: TFMTBCDField
      FieldName = 'FATURA_VENDA'
      Precision = 15
      Size = 2
    end
    object cdsVendasTIPO_PRECO_VENDA: TStringField
      FieldName = 'TIPO_PRECO_VENDA'
      Size = 1
    end
  end
end
