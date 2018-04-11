program NSDA;

{$APPTYPE CONSOLE}

uses
Sysutils;
var d : Integer;
function NSD (a,b : Integer):Integer;
 var d : Integer;
 begin
   If a>b then
    d := b
    else
    d := a;
   While not ((a mod d = 0 ) and (b mod d = 0 )) do
    d:= d-1;
   Writeln (d);
 end;

function NSDE (a,b : Integer) : Integer;
 var d : Integer;
 begin
   While a<>b do
   If a>b then
    a := a-b
    else
    b := b-a;
   d := a;
   Writeln (d);
 end;

function NSDE2 (a,b : Integer) : Integer;
 var d : Integer;
 begin

 end;


begin
 NSD (48,49);
 NSDE (100,10);
 Readln;
end.
