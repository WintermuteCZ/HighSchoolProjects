program vetsi
uses crt;
var A,B: integer;
begin
   Write ('Zadejte 2 cisla');
   Read (A,B);
   if A > B then
      Write ('Vetsi je', A);
   else
      Write ('Vetsi je', B);