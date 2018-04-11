program Pole1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Const min = 1;
        max = 10;
  Type Polea = array [min..max] of integer;

  var a : Polea;
      i,x,b : Integer;

begin
  For i:= min to max do
   begin
    Write ('Zadej cislo : ');
    Read (a[i]);
   end;
  For i:= min to max do
    begin
    Write (a[i]);
    Write (' ');
    end;
  x := a[1];
   For i:= min to max do
   begin
   If a[i]>x then
    x:= a[i];
   end;
Writeln;
Writeln (x);
read (b);
end.
