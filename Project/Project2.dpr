program Maximum;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x ,y , z : Integer;

begin
  Write  ('Zadejte tri cisla ');
   Read (x ,y , z );
    if x>y then
     if x>z then
      Write (x)
     else
      Write (y)

    else
     if y>z then
      Write (y)
     else
      Write (z)

end.






