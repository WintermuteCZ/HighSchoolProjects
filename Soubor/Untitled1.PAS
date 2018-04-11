program Soubornahodnacisla;
 var a : file of Integer;
     b,i : Integer;

begin
 Assign (a,'U:\2.A\Kozusky\Soubor-nahodnycisla\cisla.txt');
 randomize;
 {+I}
 Reset (a);
  If IOResult <> 0 then
    Rewrite (a);
 For i=1 to 100 do
  begin
  b:=Random(100);
  Write (a);
  end;
  end.
