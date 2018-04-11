program Untitled;
uses CRT;


function Scitej(var a:text):real;
 var c,d:Real;
 begin
  c:=0;
  d:=0;
  While not Eoln(a) and not Eof(a) do
   begin
    Read (a,c);
    d:=d+c;
   end;
  Scitej:=d;
 end;

function Nasob(var a:text):real;
 var c,d:Real;
 begin
  c:=0;
  d:=1;
  While not Eoln(a) and not Eof(a) do
   begin
    Read (a,c);
    d:=d*c;
   end;
 Nasob:=d;
 end;

function Prumer(var a:text):real;
 var c,d,i:Real;
 begin
  i:=0;
  c:=0;
  d:=0;
  While not Eoln(a) and not Eof(a) do
   begin
    i:=i+1;
    Read (a,c);
    d:=d+c;
   end;
 Prumer:=d/i;
 end;

var a,b:text;
    x:char;
    vysl:real;

begin
 {$I-}
 x:='0';
 Assign (a,'U:\2.A\Kozusky\Kalkulacka\vstup.txt');
  Reset (a);
  If IOResult <> 0 then
    Writeln ('Soubor se nepodarilo otevrit')
   else
    begin
    Assign (b,'U:\2.A\Kozusky\Kalkulacka\out.txt');
    Rewrite (b);
    If IOResult <> 0 then
     begin
     Writeln ('Soubor se nepodarilo otevrit');
     Close (a);
     end;
   end;
 while not EOF(a) do
  begin
   Read(a,x);
   Case x of
    '+': vysl:=Scitej(a);
    '*': vysl:=Nasob(a);
    'p': vysl:=Prumer(a);
   end;
   Readln(a);
   Writeln(b,vysl);
  end;
Close(a);
Close(b);
end.
