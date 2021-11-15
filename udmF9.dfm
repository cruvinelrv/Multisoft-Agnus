object dmF9: TdmF9
  OldCreateOrder = False
  Left = 398
  Top = 215
  Height = 138
  Width = 330
  object cdsPedidoCompra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PEDIDO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dspPedidoCompra'
    Left = 245
    Top = 17
    object cdsPedidoCompraCODIGO_PEDIDO: TIntegerField
      FieldName = 'CODIGO_PEDIDO'
    end
    object cdsPedidoCompraFORNECEDOR_PEDIDO: TIntegerField
      FieldName = 'FORNECEDOR_PEDIDO'
    end
    object cdsPedidoCompraCONTATO_PEDIDO: TStringField
      FieldName = 'CONTATO_PEDIDO'
      Size = 30
    end
    object cdsPedidoCompraDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object cdsPedidoCompraCONDICOES_PEDIDO: TStringField
      FieldName = 'CONDICOES_PEDIDO'
      Size = 30
    end
    object cdsPedidoCompraOBSERVACAO_PEDIDO: TStringField
      FieldName = 'OBSERVACAO_PEDIDO'
      Size = 50
    end
    object cdsPedidoCompraCLIENTE_PEDIDO: TIntegerField
      FieldName = 'CLIENTE_PEDIDO'
    end
    object cdsPedidoCompraIPI_PEDIDO: TFMTBCDField
      FieldName = 'IPI_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoCompraICMS_PEDIDO: TFMTBCDField
      FieldName = 'ICMS_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoCompraSEGURO_PEDIDO: TFMTBCDField
      FieldName = 'SEGURO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoCompraICMSSB_PEDIDO: TFMTBCDField
      FieldName = 'ICMSSB_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoCompraFRETE_PEDIDO: TFMTBCDField
      FieldName = 'FRETE_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoCompraOUTROS_PEDIDO: TFMTBCDField
      FieldName = 'OUTROS_PEDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPedidoCompraCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object cdsPedidoCompraVALORPRODUTO_PEDIDO: TFMTBCDField
      FieldName = 'VALORPRODUTO_PEDIDO'
      Precision = 15
      Size = 2
    end
  end
  object qryPedidoCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDIDO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      
        'SELECT * FROM P_PEDIDO WHERE CODIGO_PEDIDO=:PEDIDO AND COD_EMPRE' +
        'SA=:EMPRESA')
    SQLConnection = DmPrincipal.DbConexao
    Left = 42
    Top = 18
    object qryPedidoCompraCODIGO_PEDIDO: TIntegerField
      FieldName = 'CODIGO_PEDIDO'
    end
    object qryPedidoCompraFORNECEDOR_PEDIDO: TIntegerField
      FieldName = 'FORNECEDOR_PEDIDO'
    end
    object qryPedidoCompraCONTATO_PEDIDO: TStringField
      FieldName = 'CONTATO_PEDIDO'
      Size = 30
    end
    object qryPedidoCompraDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
    end
    object qryPedidoCompraCONDICOES_PEDIDO: TStringField
      FieldName = 'CONDICOES_PEDIDO'
      Size = 30
    end
    object qryPedidoCompraOBSERVACAO_PEDIDO: TStringField
      FieldName = 'OBSERVACAO_PEDIDO'
      Size = 50
    end
    object qryPedidoCompraCLIENTE_PEDIDO: TIntegerField
      FieldName = 'CLIENTE_PEDIDO'
    end
    object qryPedidoCompraIPI_PEDIDO: TFMTBCDField
      FieldName = 'IPI_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoCompraICMS_PEDIDO: TFMTBCDField
      FieldName = 'ICMS_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoCompraSEGURO_PEDIDO: TFMTBCDField
      FieldName = 'SEGURO_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoCompraICMSSB_PEDIDO: TFMTBCDField
      FieldName = 'ICMSSB_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoCompraFRETE_PEDIDO: TFMTBCDField
      FieldName = 'FRETE_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoCompraOUTROS_PEDIDO: TFMTBCDField
      FieldName = 'OUTROS_PEDIDO'
      Precision = 15
      Size = 2
    end
    object qryPedidoCompraCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryPedidoCompraVALORPRODUTO_PEDIDO: TFMTBCDField
      FieldName = 'VALORPRODUTO_PEDIDO'
      Precision = 15
      Size = 2
    end
  end
  object dspPedidoCompra: TDataSetProvider
    DataSet = qryPedidoCompra
    Left = 146
    Top = 17
  end
end
