program Pole2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Const min = 1;
        max = 10;
  Type Polea = array [min..max] of integer;

  var a : Polea;
      i,j,avg,m : Integer;

begin
  For i:= min to max do
   begin
    Write ('Zadej cislo : ');
    Read (a[i]);
   end;
m := 0;
  For j:= min to max do
     begin
     m := m+a;
     end;

 avg := m div 10;
 Write ('Prumer cisel je : ');



end.
