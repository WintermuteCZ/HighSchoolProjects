program Pole3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Const min = 1;
        max = 10;
  Type Polea = array [min..max] of integer;

  var a : Polea;
      i , j , k,x: Integer;

begin
  For i:= min to max do
   begin
    Write ('Zadej cislo : ');
    Read (a[i]);
   end;
  For j:= min to max do
    begin
    Write (a[j]);
    Write (' ');
    end;
Writeln (' ');
  For k := max downto min do
   begin
   Write (a[k]);
   Write (' ');
   end;
Read (x);
end.
