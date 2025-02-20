{*******************************************************************************
 SISTEMA              --> MultWin
 PROGRAMA             --> (FIN019)
 ANALISTA RESPONSAVEL --> RAFAEL F. S. MOTA
 PROGRAMADOR          --> Fl�vio Scariot
 DATA DE CONCEP��O    --> 17/05/2007
 FINALIDADE           --> Lan�amento financeiro
 COMENTARIO           -->
 *******************************************************************************}

unit uFn06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, Mask;

type
  TfrmFn06 = class(TForm)
    Panel1: TPanel;
    btnConsultar: TBitBtn;
    btnAlterar: TBitBtn;
    btnEstornar: TBitBtn;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    Label1: TLabel;
    edtPesquisar: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure edtPesquisarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function Cheka(Campo : Integer) : Boolean;
    procedure Limpa_Edit;
  public
    { Public declarations }
    Apaga_Lancamento : String;
  end;

var
  frmFn06: TfrmFn06;

implementation

uses udmFn06, uGlobal, uFn06_01;

{$R *.dfm}

procedure TfrmFn06.FormCreate(Sender: TObject);
begin
   dmFn06 := TdmFn06.Create(Self);
end;

procedure TfrmFn06.FormShow(Sender: TObject);
begin
   Apaga_Lancamento := '';

   dmFn06.cdsEmpresa.Close;
   dmFn06.cdsEmpresa.Params.ParamByName('EMPRESA').AsString := CodigoEmpresa1;
   dmFn06.cdsEmpresa.Open;

   Apaga_Lancamento := dmFn06.cdsEmpresaAPAGA_LANC_EMP.AsString; // Par�metro do sistema


   dmFn06.cdsConlan.Open;

   dmFn06.cdsGrid.Open;

   if not dmFn06.cdsConlan.IsEmpty then
   begin
      while not dmFn06.cdsConlan.Eof do
      begin
         dmFn06.cdsGrid.Append;

         dmFn06.cdsGridCODIGO_CONLAN.AsInteger     :=  dmFn06.cdsConlanCODIGO_CONLAN.AsInteger;

         dmFn06.cdsGridCORRENTE_CONLAN.AsInteger   :=  dmFn06.cdsConlanCORRENTE_CONLAN.AsInteger;

         dmFn06.cdsGridDATA_CONLAN.AsDateTime      := dmFn06.cdsConlanDATA_CONLAN.AsDateTime;

         dmFn06.cdsGridMOVIMENTO_CONLAN.AsDateTime := dmFn06.cdsConlanMOVIMENTO_CONLAN.AsDateTime;

         dmFn06.cdsGridVALOR_CONLAN.AsFloat        := dmFn06.cdsConlanVALOR_CONLAN.AsFloat;

         dmFn06.cdsGridDOCUMENTO_CONLAN.AsString   := dmFn06.cdsConlanDOCUMENTO_CONLAN.AsString;

         if dmFn06.cdsConlanCLI_FOR_CONLAN.AsInteger > 0 then // = 0 � cliente = 2 � fornecedor
         begin
            if dmFn06.cdsConlanTIPO_CLIENTE.AsInteger = 0 then
            begin
               dmFn06.cdsGridCLIENTE.AsInteger       := dmFn06.cdsConlanCLI_FOR_CONLAN.AsInteger;

               dmFn06.cdsGridCLI_FOR_CONLAN.AsString :=  StrZero(dmFn06.cdsConlanCLI_FOR_CONLAN.AsString, 6) + '  C'
            end
            else
            begin
               dmFn06.cdsGridFORNECEDOR.AsInteger     := dmFn06.cdsConlanCLI_FOR_CONLAN.AsInteger;

               dmFn06.cdsGridCLI_FOR_CONLAN.AsString  :=  StrZero(dmFn06.cdsConlanCLI_FOR_CONLAN.AsString, 6) + '  F';
            end;
         end;
         
         dmFn06.cdsGridCENTRO_CONLAN.AsInteger     := dmFn06.cdsConlanCENTRO_CONLAN.AsInteger;

         dmFn06.cdsGridTIPO_CONLAN.AsString        := dmFn06.cdsConlanTIPO_CONLAN.AsString;

         dmFn06.cdsGridHISTORICO_CONLAN.AsString  := dmFn06.cdsConlanHISTORICO_CONLAN.AsString;

         dmFn06.cdsGrid.Post;

         dmFn06.cdsConlan.Next;
      end;

      dmFn06.cdsGrid.First;
   end;
end;

procedure TfrmFn06.btnConsultarClick(Sender: TObject);
begin
   frmFn06_01 := TfrmFn06_01.Create(Self);

   dmFn06.cdsConlan2.Close;
   dmFn06.cdsConlan2.Params.ParamByName('CODIGO_CONLAN').AsInteger := dmFn06.cdsGridCODIGO_CONLAN.AsInteger;
   dmFn06.cdsConlan2.Open;

   frmFn06_01.Panel1.Enabled := False;

   frmFn06_01.ShowModal;

   frmFn06_01.Panel1.Enabled := True;

   frmFn06_01.Release;
   frmFn06_01 := nil;
end;

procedure TfrmFn06.btnAlterarClick(Sender: TObject);
begin
   if not Verifica_acesso(288) then // permiss�o para altera��o de lan�amento
      Exit;

   frmFn06_01 := TfrmFn06_01.Create(Self);

   dmFn06.cdsConlan2.Close;
   dmFn06.cdsConlan2.Params.ParamByName('CODIGO_CONLAN').AsInteger := dmFn06.cdsGridCODIGO_CONLAN.AsInteger;
   dmFn06.cdsConlan2.Open;

   dmFn06.cdsConlan2.Edit;

   frmFn06_01.ShowModal;
   frmFn06_01.Release;
   frmFn06_01 := nil;
end;

procedure TfrmFn06.btnEstornarClick(Sender: TObject);
Var
  Tipo1,
  Valor1,
  Documento1,
  Historico1 : String;
  Corrente1  : Integer;
  Apaga_Conlan2 : Boolean;
begin
   if not Verifica_acesso(289) then // permiss�o para estornar lan�amento
   Exit;

   Apaga_Conlan2 := False;

   dmFn06.cdsConlan2.Close;
   dmFn06.cdsConlan2.Params.ParamByName('CODIGO_CONLAN').AsInteger := dmFn06.cdsGridCODIGO_CONLAN.AsInteger;
   dmFn06.cdsConlan2.Open;

   if (not Cheka(01)) or
      (not Cheka(02)) or
      (not Cheka(03)) then
      Exit;

   if Application.MessageBox(pChar('Estorna o lan�amento  ' + dmFn06.cdsConlan2CODIGO_CONLAN.AsString + '?'), 'Confirma��o', MB_YESNO+MB_ICONQUESTION) = mrYes then
   begin
      Historico1 := 'Estornou o lan�amento - ' + StrZero(dmFn06.cdsConlan2CODIGO_CONLAN.AsString, 6) + ' - Valor - ' + dmFn06.cdsConlan2VALOR_CONLAN.AsString + ' - Movimento - ' + dmFn06.cdsConlan2MOVIMENTO_CONLAN.AsString;

      GravaLogUser(Self, Historico1);

      // atualiza tabela de conta corrente / caixa

      dmFn06.cdsResban.Close;
      dmFn06.cdsResban.Params.ParamByName('CHAVE').AsString := DateToStr(DataSystem1) + '-' + StrZero(dmFn06.cdsConlan2CORRENTE_CONLAN.AsString, 3);
      dmFn06.cdsResban.Open;

      if dmFn06.cdsResban.IsEmpty then
      begin
         dmFn06.cdsResban.Append;

         dmFn06.cdsResbanCHAVE_RESBAN.AsString := DateToStr(DataSystem1) + '-' + StrZero(dmFn06.cdsConlan2CORRENTE_CONLAN.AsString, 3);
      end
      else
      begin
         dmFn06.cdsResban.Edit;

         if dmFn06.cdsConlan2TIPO_CONLAN.AsString = 'D' then
            dmFn06.cdsResbanCREDITO_RESBAN.AsFloat := dmFn06.cdsResbanCREDITO_RESBAN.AsFloat + dmFn06.cdsConlan2VALOR_CONLAN.AsFloat
         else
            dmFn06.cdsResbanDEBITO_RESBAN.AsFloat  := dmFn06.cdsResbanDEBITO_RESBAN.AsFloat + dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;
      end;

      dmFn06.cdsResban.Post;

      dmFn06.cdsResban.ApplyUpdates(0);

      // atualiza tabela de contas a pagar

      if dmFn06.cdsConlan2TIPO_CONLAN.AsString = 'D' then
      begin
         dmFn06.cdsPagar.Close;
         dmFn06.cdsPagar.Params.ParamByName('DOCUMENTO').AsString := dmFn06.cdsConlan2DOCUMENTO_CONLAN.AsString;
         dmFn06.cdsPagar.Open;

         if not dmFn06.cdsPagar.IsEmpty then
         begin
            dmFn06.cdsPagar.Edit;

            dmFn06.cdsPagarVALORPAGO_PAGAR.AsFloat  := dmFn06.cdsPagarVALORPAGO_PAGAR.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;
            dmFn06.cdsPagarMOVIMENTO_PAGAR.AsString := '';

            if dmFn06.cdsPagarVALORPAGO_PAGAR.AsFloat = 0 then
            begin
               dmFn06.cdsPagarTIPO_BAIXA_PAGAR.AsString := '';
               dmFn06.cdsPagarPREVISAO_PAGAR.AsDateTime := dmFn06.cdsPagarVENCIMENTO_PAGAR.AsDateTime;
               dmFn06.cdsPagarPARCIAL_PAGAR.AsFloat     := 0;
            end;

            GravaLogUser(Self, dmFn06.cdsConlan2HISTORICO_CONLAN.AsString);

            dmFn06.cdsPagar.Post;

            dmFn06.cdsPagar.ApplyUpdates(0);
         end;
      end;

      // Atualiza baixa Parcial

      dmFn06.cdsParcial.Close;
      dmFn06.cdsParcial.Params.ParamByName('CODIGO_PARCIAL').AsInteger := dmFn06.cdsConlan2CODIGO_CONLAN.AsInteger;
      dmFn06.cdsParcial.Open;

      if not dmFn06.cdsParcial.IsEmpty then
      begin
         Historico1 := 'Apagou Baixa ParciaL Codigo do Documento - ' + StrZero(dmFn06.cdsConlan2CODIGO_CONLAN.AsString, 6) + ' - Documento - ' + dmFn06.cdsConlan2DOCUMENTO_CONLAN.AsString + ' - Valor - ' + dmFn06.cdsConlan2VALOR_CONLAN.AsString;

         GravaLogUser(Self, Historico1); // gravar o log na tabela acessos

         dmFn06.cdsParcial.Delete;

         dmFn06.cdsParcial.ApplyUpdates(0);
      end;


      //  atualiza contas a receber

      dmFn06.cdsReceber.Close;
      dmFn06.cdsReceber.Params.ParamByName('DUPLICATA').AsString := dmFn06.cdsConlan2DOCUMENTO_CONLAN.AsString;
      dmFn06.cdsReceber.Open;

      if not dmFn06.cdsReceber.IsEmpty then
      begin
         dmFn06.cdsReceber.Edit;

         dmFn06.cdsReceberVALORPAGO_RECEBER.AsFloat  := dmFn06.cdsReceberVALORPAGO_RECEBER.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;
         dmFn06.cdsReceberMOVIMENTO_RECEBER.AsString := '';

         if dmFn06.cdsReceberVALORPAGO_RECEBER.AsFloat = 0 then
         begin
            dmFn06.cdsReceberTIPO_BAIXA_RECEBER.AsString := '';
            dmFn06.cdsReceberPREVISAO_RECEBER.AsDateTime := dmFn06.cdsReceberVENCIMENTO_RECEBER.AsDateTime;
            dmFn06.cdsReceberPARCIAL_RECEBER.AsFloat     := 0;
         end;

         dmFn06.cdsReceber.Post;

         dmFn06.cdsReceber.ApplyUpdates(0);
      end;

      //  estorno do mesmo dia
      //  estorna deb / cred a vista
      //  atualiza resumo de conta corrente
      
      if dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'V' then
      begin
         dmFn06.cdsResban.Close;
         dmFn06.cdsResban.Params.ParamByName('CHAVE').AsString := dmFn06.cdsConlan2MOVIMENTO_CONLAN.AsString + StrZero(dmFn06.cdsConlan2CORRENTE_CONLAN.AsString, 3);
         dmFn06.cdsResban.Open;

         if not dmFn06.cdsResban.IsEmpty then
         begin
            dmFn06.cdsResban.Edit;

            if dmFn06.cdsConlan2TIPO_CONLAN.AsString = 'C' then
               dmFn06.cdsResbanCREDITO_RESBAN.AsFloat := dmFn06.cdsResbanCREDITO_RESBAN.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat
            else
               dmFn06.cdsResbanDEBITO_RESBAN.AsFloat := dmFn06.cdsResbanDEBITO_RESBAN.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;

            dmFn06.cdsResban.Post;

            dmFn06.cdsResban.ApplyUpdates(0);
         end;

         dmFn06.cdsConlan2.Delete; // estorna lancamento

         Apaga_Conlan2 := True;

         dmFn06.cdsConlan2.ApplyUpdates(0);
      end;

      //  estorna transferencia
      //  estorna lancamento original

      if dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'T' then
      begin
         // atualiza resumo de conta corrente lancamento original

         dmFn06.cdsResban.Close;
         dmFn06.cdsResban.Params.ParamByName('CHAVE').AsString := dmFn06.cdsConlan2MOVIMENTO_CONLAN.AsString + StrZero(dmFn06.cdsConlan2CORRENTE_CONLAN.AsString, 3);
         dmFn06.cdsResban.Open;

         if not dmFn06.cdsResban.IsEmpty then
         begin
            dmFn06.cdsResban.Edit;

            if dmFn06.cdsConlan2TIPO_CONLAN.AsString = 'C' then
               dmFn06.cdsResbanCREDITO_RESBAN.AsFloat := dmFn06.cdsResbanCREDITO_RESBAN.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat
            else
               dmFn06.cdsResbanDEBITO_RESBAN.AsFloat := dmFn06.cdsResbanDEBITO_RESBAN.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;

            dmFn06.cdsResban.Post;

            dmFn06.cdsResban.ApplyUpdates(0);

            dmFn06.cdsConlan2.Delete; //  estorna lancamento contrapartida

            Apaga_Conlan2 := True;

            dmFn06.cdsConlan2.ApplyUpdates(0);
         end;

         //  atualiza resumo de conta corrente lancamento contrapartida

         dmFn06.cdsResban.Close;
         dmFn06.cdsResban.Params.ParamByName('CHAVE').AsString := dmFn06.cdsConlan2MOVIMENTO_CONLAN.AsString + StrZero(dmFn06.cdsConlan2CORRENTE_CONLAN.AsString, 3);
         dmFn06.cdsResban.Open;

         if not dmFn06.cdsResban.IsEmpty then
         begin
            dmFn06.cdsResban.Edit;

            if dmFn06.cdsConlan2TIPO_CONLAN.AsString = 'C' then
               dmFn06.cdsResbanDEBITO_RESBAN.AsFloat := dmFn06.cdsResbanDEBITO_RESBAN.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat
            else
               dmFn06.cdsResbanCREDITO_RESBAN.AsFloat := dmFn06.cdsResbanCREDITO_RESBAN.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;

            dmFn06.cdsResban.Post;

            dmFn06.cdsResban.ApplyUpdates(0);
         end;
      end;

      // estorna contas a receber
      // estorna lancamento original

      if dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'R' then
      begin
         // atualiza resumo de conta corrente

         dmFn06.cdsResban.Close;
         dmFn06.cdsResban.Params.ParamByName('CHAVE').AsString := dmFn06.cdsConlan2MOVIMENTO_CONLAN.AsString + '-' + StrZero(dmFn06.cdsConlan2CORRENTE_CONLAN.AsString, 3);
         dmFn06.cdsResban.Open;

         if not dmFn06.cdsResban.IsEmpty then
         begin
            dmFn06.cdsResban.Edit;

            if dmFn06.cdsConlan2TIPO_CONLAN.AsString = 'C' then
               dmFn06.cdsResbanCREDITO_RESBAN.AsFloat := dmFn06.cdsResbanCREDITO_RESBAN.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;

            dmFn06.cdsResban.Post;

            dmFn06.cdsResban.ApplyUpdates(0);
         end;

         // atualiza contas a receber

         dmFn06.cdsReceber.Close;
         dmFn06.cdsReceber.Params.ParamByName('DUPLICATA').AsString := dmFn06.cdsConlan2DOCUMENTO_CONLAN.AsString;
         dmFn06.cdsReceber.Open;

         if not dmFn06.cdsReceber.IsEmpty then
         begin
            dmFn06.cdsReceber.Edit;

            dmFn06.cdsReceberVALORPAGO_RECEBER.AsFloat  := dmFn06.cdsReceberVALORPAGO_RECEBER.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;
            dmFn06.cdsReceberMOVIMENTO_RECEBER.AsString := '';

            if dmFn06.cdsReceberVALORPAGO_RECEBER.AsFloat = 0 then
            begin
               dmFn06.cdsReceberTIPO_BAIXA_RECEBER.AsString := '';
               dmFn06.cdsReceberPREVISAO_RECEBER.AsDateTime := dmFn06.cdsReceberVENCIMENTO_RECEBER.AsDateTime;
               dmFn06.cdsReceberPARCIAL_RECEBER.AsFloat     := 0;
            end;

            dmFn06.cdsReceber.Post;

            dmFn06.cdsReceber.ApplyUpdates(0);
         end;

         // atualiza baixas parciais

         dmFn06.cdsParcial.Close;
         dmFn06.cdsParcial.Params.ParamByName('CODIGO_PARCIAL').AsInteger := dmFn06.cdsConlan2CODIGO_CONLAN.AsInteger;
         dmFn06.cdsParcial.Open;

         if not dmFn06.cdsParcial.IsEmpty then
         begin
            dmFn06.cdsParcial.Delete;

            dmFn06.cdsParcial.ApplyUpdates(0);
         end;

         dmFn06.cdsConlan2.Delete; //  estorna lancamento

         Apaga_Conlan2 := True;

         dmFn06.cdsConlan2.ApplyUpdates(0);
      end;

      //  estorna contas a pagar
      //  estorna lancamento original

      if dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'P' then
      begin
         // atualiza resumo de conta corrente

         dmFn06.cdsResban.Close;
         dmFn06.cdsResban.Params.ParamByName('CHAVE').AsString := dmFn06.cdsConlan2MOVIMENTO_CONLAN.AsString + '-' + StrZero(dmFn06.cdsConlan2CORRENTE_CONLAN.AsString, 3);
         dmFn06.cdsResban.Open;

         if not dmFn06.cdsResban.IsEmpty then
         begin
            dmFn06.cdsResban.Edit;

            if dmFn06.cdsConlan2TIPO_CONLAN.AsString = 'D' then
               dmFn06.cdsResbanDEBITO_RESBAN.AsFloat := dmFn06.cdsResbanDEBITO_RESBAN.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;

            dmFn06.cdsResban.Post;

            dmFn06.cdsResban.ApplyUpdates(0);
         end;

         // atualiza contas a pagar

         dmFn06.cdsPagar.Close;
         dmFn06.cdsPagar.Params.ParamByName('DOCUMENTO').AsString := dmFn06.cdsConlan2DOCUMENTO_CONLAN.AsString;
         dmFn06.cdsPagar.Open;

         if not dmFn06.cdsPagar.IsEmpty then
         begin
            dmFn06.cdsPagar.Edit;

            dmFn06.cdsPagarVALORPAGO_PAGAR.AsFloat  := dmFn06.cdsPagarVALORPAGO_PAGAR.AsFloat - dmFn06.cdsConlan2VALOR_CONLAN.AsFloat;
            dmFn06.cdsPagarMOVIMENTO_PAGAR.AsString := '';

            if dmFn06.cdsPagarVALORPAGO_PAGAR.AsFloat = 0 then
            begin
               dmFn06.cdsPagarTIPO_BAIXA_PAGAR.AsString := '';
               dmFn06.cdsPagarPREVISAO_PAGAR.AsDateTime := dmFn06.cdsPagarVENCIMENTO_PAGAR.AsDateTime;
               dmFn06.cdsPagarPARCIAL_PAGAR.AsFloat     := 0;
            end;

            dmFn06.cdsPagar.Post;

            dmFn06.cdsPagar.ApplyUpdates(0);
         end;

         // atualiza baixas parciais

         dmFn06.cdsParcial.Close;
         dmFn06.cdsParcial.Params.ParamByName('CODIGO_PARCIAL').AsInteger := dmFn06.cdsConlan2CODIGO_CONLAN.AsInteger;
         dmFn06.cdsParcial.Open;

         if not dmFn06.cdsParcial.IsEmpty then
         begin
            dmFn06.cdsParcial.Delete;

            dmFn06.cdsParcial.ApplyUpdates(0);
         end;

         dmFn06.cdsConlan2.Delete; //  estorna lancamento

         Apaga_Conlan2 := True;

         dmFn06.cdsConlan2.ApplyUpdates(0);
      end;

      dmFn06.cdsConlan2.Close;
      dmFn06.cdsConlan2.Params.ParamByName('CODIGO_CONLAN').AsInteger := dmFn06.cdsGridCODIGO_CONLAN.AsInteger;
      dmFn06.cdsConlan2.Open;

      if not dmFn06.cdsConlan2.IsEmpty then
      begin
         Corrente1 := dmFn06.cdsConlan2CORRENTE_CONLAN.AsInteger;

         Valor1 := dmFn06.cdsConlan2VALOR_CONLAN.AsString;

         Documento1 := dmFn06.cdsConlan2DOCUMENTO_CONLAN.AsString;

         Tipo1 := dmFn06.cdsConlan2TIPO_CONLAN.AsString;

         if Apaga_Lancamento = 'S' then // par�metro do sistema
         begin
            dmFn06.cdsParcial.Close;
            dmFn06.cdsParcial.Params.ParamByName('CODIGO_PARCIAL').AsInteger := dmFn06.cdsConlan2CODIGO_CONLAN.AsInteger;
            dmFn06.cdsParcial.Open;

            if not dmFn06.cdsParcial.IsEmpty then
            begin
               dmFn06.cdsParcial.Delete;

               dmFn06.cdsParcial.ApplyUpdates(0);
            end;

            dmFn06.cdsConlan2.Delete; //  estorna lancamento

            Apaga_Conlan2 := True;

            dmFn06.cdsConlan2.ApplyUpdates(0);
         end
         else
         begin
            dmFn06.cdsConlan2.Edit;

            dmFn06.cdsConlan2ESTORNO_CONLAN.AsString := 'S';

            dmFn06.cdsConlan2.Post;

            dmFn06.cdsConlan2.ApplyUpdates(0);
            

            dmFn06.cdsConlan2.Append;

            dmFn06.cdsConlan2CODIGO_CONLAN.AsInteger     := Busca_Proximo('P_CONLAN', 'CODIGO_CONLAN');
            dmFn06.cdsConlan2CORRENTE_CONLAN.AsInteger   := Corrente1;
            dmFn06.cdsConlan2DATA_CONLAN.AsDateTime      := DataSystem1;
            dmFn06.cdsConlan2MOVIMENTO_CONLAN.AsDateTime := DataSystem1;
            dmFn06.cdsConlan2VALOR_CONLAN.AsString       := Valor1;
            dmFn06.cdsConlan2ORIGEM_CONLAN.AsString      := 'E';
            dmFn06.cdsConlan2HISTORICO_CONLAN.AsString   := 'Estorno da baixa do documento ' + Documento1 + ' do fluxo dia ' + DateToStr(DataSystem1);
            dmFn06.cdsConlan2DOCUMENTO_CONLAN.AsString   := Documento1;
            dmFn06.cdsConlan2COD_EMPRESA.AsString        := CodigoEmpresa1;

            if Tipo1 = 'C' then
               dmFn06.cdsConlan2TIPO_CONLAN.AsString     := 'D'
            else
               dmFn06.cdsConlan2TIPO_CONLAN.AsString     := 'C';

            dmFn06.cdsConlan2.Post;

            dmFn06.cdsConlan2.ApplyUpdates(0);
         end;
      end;
   end;

   if Apaga_Conlan2 = True then
      dmFn06.cdsGrid.Delete; // atualiza cdsGrid
end;

function TfrmFn06.Cheka(Campo: Integer): Boolean;
begin
   Result := True;

   Case Campo of
      01:
      begin
         if dmFn06.cdsConlan2ESTORNO_CONLAN.AsString = 'S' then
         begin
            Application.MessageBox('Lan�amento j� estornado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      02:
      begin
         if dmFn06.cdsConlan2ESTORNO_CONLAN.AsString = 'E' then
         begin
            Application.MessageBox('N�o � poss�vel estornar lan�amento de estorno', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
            Result := False;
         end;
      end;

      03:
      begin
         if dmFn06.cdsConlan2MOVIMENTO_CONLAN.AsDateTime <> ArredondarDecimal(DataSystem1, 0) then
         begin
            if ((dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'P') or (dmFn06.cdsConlan2ORIGEM_CONLAN.AsString = 'R')) and (Apaga_Lancamento <> 'S') then
            begin
               Application.MessageBox('N�o � poss�vel estornar movimento j� encerrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               Result := False;
            end;
         end;
      end;
   end;
end;

procedure TfrmFn06.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmFn06.btnProcurarClick(Sender: TObject);
begin
   RadioGroup1.ItemIndex := -1;
   RadioGroup1.Visible   := True
end;

procedure TfrmFn06.RadioGroup1Click(Sender: TObject);
begin
   Panel2.Visible := True;
   edtPesquisar.SetFocus;

   if (RadioGroup1.ItemIndex = 1) or (RadioGroup1.ItemIndex = 2) then
      edtPesquisar.EditMask := '!99/99/0000;1;'
   else
      edtPesquisar.EditMask := '';
end;

procedure TfrmFn06.edtPesquisarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
   begin
      Limpa_Edit;
      Exit;
   end;

   if Key = 13 then
   begin
      if (edtPesquisar.Text <> '') and (edtPesquisar.Text <> '  /  /    ') then
      begin
         if RadioGroup1.ItemIndex = 0 then
         begin
            dmFn06.cdsGrid.IndexFieldNames := 'DOCUMENTO_CONLAN';

            if not dmFn06.cdsGrid.FindKey([edtPesquisar.Text]) then
            begin
               Application.MessageBox('N�o encontrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               Limpa_Edit;
               Exit;
            end;
         end;

         if RadioGroup1.ItemIndex = 1 then
         begin
            dmFn06.cdsGrid.IndexFieldNames := 'MOVIMENTO_CONLAN';

            if not dmFn06.cdsGrid.FindKey([edtPesquisar.Text]) then
            begin
               Application.MessageBox('N�o encontrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               Limpa_Edit;
               Exit;
            end;
         end;

         if RadioGroup1.ItemIndex = 2 then
         begin
            dmFn06.cdsGrid.IndexFieldNames := 'DATA_CONLAN';

            if not dmFn06.cdsGrid.FindKey([edtPesquisar.Text]) then
            begin
               Application.MessageBox('N�o encontrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               Limpa_Edit;
               Exit;
            end;
         end;

         if RadioGroup1.ItemIndex = 3 then
         begin
            dmFn06.cdsGrid.IndexFieldNames := 'CORRENTE_CONLAN';

            edtPesquisar.Text := RemoveString(edtPesquisar.Text);

            if not dmFn06.cdsGrid.FindKey([edtPesquisar.Text]) then
            begin
               Application.MessageBox('N�o encontrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               Limpa_Edit;
               Exit;
            end;
         end;

         if RadioGroup1.ItemIndex = 4 then
         begin
            dmFn06.cdsGrid.IndexFieldNames := 'CLIENTE';

            edtPesquisar.Text := RemoveString(edtPesquisar.Text);

            if not dmFn06.cdsGrid.FindKey([edtPesquisar.Text]) then
            begin
               Application.MessageBox('N�o encontrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               Limpa_Edit;
               Exit;
            end;
         end;

         if RadioGroup1.ItemIndex = 5 then
         begin
            dmFn06.cdsGrid.IndexFieldNames := 'FORNECEDOR';

            edtPesquisar.Text := RemoveString(edtPesquisar.Text);

            if not dmFn06.cdsGrid.FindKey([edtPesquisar.Text]) then
            begin
               Application.MessageBox('N�o encontrado', 'Informa��o', MB_OK+MB_ICONEXCLAMATION);
               Limpa_Edit;
               Exit;
            end;
         end;
      end;

      Limpa_Edit;
   end;
end;

procedure TfrmFn06.Limpa_Edit;
begin
   edtPesquisar.Clear;
   edtPesquisar.EditMask := '';
   RadioGroup1.Visible   := False;
   Panel2.Visible        := False;
end;

procedure TfrmFn06.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = 27 then
      Limpa_Edit;
end;

procedure TfrmFn06.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.
