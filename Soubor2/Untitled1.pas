program Soubornahodnacisla;
uses Crt;
procedure Opisuj (var a:text);
 var b:string;
  begin
   Readln (a,b);
   Writeln (b);
  end;
var a: text;
begin
 Assign (a,'U:\2.A\Kozusky\Soubor2\1.txt');
 {+I}
 Reset (a);
 {-I}
  If IOResult <> 0 then
   begin
    While not EOF (a) do;
     Opisuj(a);
   end
  else
   Writeln ('Fail');
Readkey;
  end.
