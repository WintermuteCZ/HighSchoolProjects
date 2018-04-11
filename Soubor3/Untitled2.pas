Program Untitled;
Uses CRT;

Procedure Zprac (var s,t:text);

Var s,t:Text;
    a,soucet,minimum,i:LongInt;
    prumer:Real;
Begin
 {$I-};
i:=0;
  Assign (s,'U:\2.A\Kozusky\Soubor3\cisla.txt');
  Reset (s);
  If IOResult <> 0 then
    Writeln ('Soubor se nepodarilo otevrit')
   else
    begin
    Assign (t,'U:\2.A\Kozusky\Soubor3\vystup.txt');
    Rewrite (t);
    If IOResult <> 0 then
     begin
     Writeln ('Soubor se nepodarilo otevrit');
     Close (s);
     end;
   end;

  While not seekEOF(s) do
   begin
    Read (s,a);
    Write (t,a);
    soucet:=soucet+a;
    i:=i+1;
    If i=1 then
     minimum := a
    else
     begin
      If a < minimum then
       minimum :=a;
     end;
   end;


prumer:=soucet / i;
Writeln(t);
Writeln(t,'Soucet je : ');
Writeln (t,soucet);
Writeln(t,'Prumer je : ');
Writeln (t,prumer);
Writeln(t,'Minimum je : ');
Writeln (t,minimum);
Close(s);
Close(t);
Readln;
{$I+};
End.
