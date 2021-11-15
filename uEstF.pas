unit uEstF;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComCtrls,Buttons;

function StrPad(AValue: String; const ALength: Integer; const ASide: TAlignment): String; // Alinhamento de Textos
function ReplStr(xString:string;QUANT:integer):String; //Preencher uma variavel com uma determinada string
function DirWindows : String;//Pega o Diretorio do Windows

implementation


//Preencher uma variavel com uma determinada string
function ReplStr(xString:string;QUANT:integer):String;
var
I,Tamanho:integer;
aux: string;
begin
  aux:=xString;
  Tamanho:=length(xString);
  for I:=1 to quant-tamanho do
//  xString:=xString+;
  aux:=aux+xString;
  ReplStr:=aux;
end;

//Pega o Diretorio do Windows
Function DirWindows : String;
Var
Buffer : Array[0..144] of Char;
Begin
   GetWindowsDirectory(Buffer,144);
   Result :=(StrPas(Buffer));
End;

// Alinhamento de Textos
function StrPad(AValue: String; const ALength: Integer; const ASide: TAlignment): String;
begin
          AValue := Trim(AValue);
          if Length(AValue) > ALength then
             AValue := Copy(AValue,1,ALength);

          case ASide of
               taLeftJustify:
                         while Length(AValue) < ALength do
                                 AValue := AValue + ' ';
               taRightJustify:
                          while Length(AValue) < ALength do
                                 AValue := ' ' + AValue;
               taCenter:
                          while Length(AValue) < ALength do
                                 if (Length(AValue) mod 2)= 0 then
                                    AValue := AValue + ' '
                                 else
                                    AValue := ' ' + AValue;
          end;
          Result := AValue;
 end;




end.





