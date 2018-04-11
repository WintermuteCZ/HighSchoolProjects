program soubor3;
uses crt;
procedure Zapisdo (var a,b:text);
 var c:string;
  begin
   Readln (a,c);
   Writeln(b,c);
  end;
var a,b : text;

begin
assign (a,'U:\2.A\Kozusky\Soubor2\1.txt');
assign (b,'U:\2.A\Kozusky\Soubor2\2.txt');
{$I}
reset(a);
{$-I}
If IOresult = 0 then
 Rewrite(b);
 While not EOF(a) do
  Zapisdo (a,b);
close(a);
close(b);
readkey;
end.
