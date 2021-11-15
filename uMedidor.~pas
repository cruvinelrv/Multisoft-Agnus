unit uMedidor;

interface

uses
   SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
   Forms, Dialogs, Gauges, StdCtrls, ExtCtrls;

type
   TMEDIDOR = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Med: TGauge;
    pnlMensagem: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }

      // Inicializa o medidor de progresso
      procedure Inicializa(Maximo:integer);
      // Apresenta uma mensagem durante o progresso da barra
      procedure Mensagem(Msg:string);
      // Determina o valor da barra de progresso
      procedure Progresso(Quanto:integer);
      // Incrementa a barra de progresso em uma unidade
      procedure Conta;
      // Completa a barra, caso ainda não tenha sido, e fecha a janela
      procedure Finaliza;

   end;

var
   MEDIDOR: TMEDIDOR;

implementation

uses uGlobal;

{$R *.DFM}

// Inicializa o medidor de progresso
procedure TMEDIDOR.Inicializa(Maximo:integer);
begin

   if Maximo <0 then Maximo := 0;
   Med.MaxValue := Maximo;
   Med.Progress := 0;
   pnlMensagem.Caption := '';
   Show; // Apresenta o formulario
   Application.ProcessMessages;

end;

// Apresenta uma mensagem durante o progresso da barra
procedure TMEDIDOR.Mensagem(Msg:string);
begin

   MEDIDOR.Show;
   pnlMensagem.Caption := Msg;
   Application.ProcessMessages;
   
end;

// Determina o valor da barra de progresso
procedure TMEDIDOR.Progresso(Quanto:integer);
begin
   if Quanto < 0 then
      Med.Progress := 0 // Não deixa valor negativo
   else if quanto > Med.MaxValue then
      showmessage('O valor atribuído ao medidor é maior que o máximo inicializado!!')
   else
      Med.Progress := Quanto;
   Application.ProcessMessages;
end;

// Incrementa a barra de progresso em uma unidade
procedure TMEDIDOR.Conta;
begin
   if Med.Progress = Med.MaxValue then
      showmessage('O medidor já atingiu o valor máximo!!')
   else
      Med.AddProgress(1);
   Application.ProcessMessages;
end;

// Completa a barra, caso ainda não tenha sido, e fecha a janela
procedure TMEDIDOR.Finaliza;
begin

   Med.Progress := Med.MaxValue;
   Application.ProcessMessages;
//   Close;

end;

procedure TMEDIDOR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Shift = [ssCtrl]) and (Key = 119) then // Gera Senha CTRL+F8
       Executa_CTRLF8;
end;

end.

