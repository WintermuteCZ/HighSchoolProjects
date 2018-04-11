program Iteracni;

uses CRT;
var a,b,x:real;
    Volba:char;

function y (x:real):real;
 begin
  y:=x*x*x-3*x-7;
 end;

procedure Meze (var a,b:real);
 begin
  ClrScr;
  Writeln ('Zadejte meze intervalu, aby mely ruzna znamenka!!');
  Repeat
   Write ('Zadejte dolni mez intervalu: ');
   Readln (a);
   Write ('Zadejte horni mez intervalu: ');
   Readln (b);
  Until y(a)*y(b)<0;
 end;

procedure Puleni (var a,b:real);
 var s:real;
     t:real;{tolerance vysledku}
     n:Integer;
 begin
  Meze(a,b);
  Write ('Zadejte toleranci vysledku: ');
  Readln (t);
  n:=0;                                                                                                s
  Repeat
   s:=(a+b)/2;
   If (y(a)*y(s))<0 then
     b:=s
    else
     a:=s;
   n:=n+1;
  Until Abs(b-a)<=t;
  Writeln ('Koren rovnice je: ',s:10:10,' a byl nalezen po ',n,' opakovanich');
  Readln;
 end;

procedure Tetivy (var a,b:real);
 var s:real;
     t:real;{tolerance vysledku}
     n:Integer;
 begin
  Meze(a,b);
  Write ('Zadejte toleranci vysledku: ');
  Readln(t);
  n:=0;
  Repeat
   s:=(a*y(b)-b*y(a))/(y(b)-y(a));
   If (y(a)*y(s))<0 then
     b:=s
    else
     a:=s;
   n:=n+1;
  Until Abs(b-a)<=t;
  Writeln ('Koren rovnice je: ',s:10:10,' a byl nalezen po ',n,' opakovanich');
  Readln;
 end;

begin
 x:=0;
 a:=0;
 b:=0;
 Repeat
  ClrScr;
  Writeln ('Co chcete udelat :');
  Writeln ('1: Puleni intervalu');
  Writeln ('2: Tetivy');
  Writeln ('0: Konec');
 repeat until KeyPressed;
   Volba :=ReadKey;

 case Volba of
  '1' : Puleni (a,b);
  '2' : Tetivy (a,b);
 end;
until volba ='0';
end.
