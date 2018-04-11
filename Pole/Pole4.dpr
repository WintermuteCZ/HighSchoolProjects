program Pole4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Const min = 1;
        max = 5;
  Type Polea = array [min..max] of integer;

  var a : Polea;
      i , j , x: Integer;

begin
  For i:= min to max do
   begin
    Write ('Zadej cislo : ');
    Read (a[i]);
   end;
  For j:= min to max do
   begin
   If a[j] < 3 then
    Write (a[j],' ')
   end;

Read (x);
end.
