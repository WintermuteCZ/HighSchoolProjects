program Pole5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

Const min = 1;
        max = 5;
  Type Polea = array [min..max] of integer;

  var a : Polea;
      i,j,y,x,nejv:Integer;

begin
  For i:= min to max do
   begin
    Write ('Zadej cislo : ');
    Read (a[i]);
   end;
nejv := a[i];
  For i:=min+1 to max do
   begin
   If a[i]<nejv then
   nejv :=a[i];
   end;
Write ('Nejvetsi cislo je : ',nejv);

Read (x);
end.
