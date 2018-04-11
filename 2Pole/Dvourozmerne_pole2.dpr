program Dvourozmerne_pole2;

{$APPTYPE CONSOLE}

uses
  SysUtils;
const min=1;
const max=10;
type Pole=array [min..max,min..max] of integer;
  var i,j,x,b :Integer;
  var a : Pole;
begin
  Randomize;
  For i:=min to max do
   For j:=min to max do
    a[i,j]:=Random(11);

For i:=min to max do
 begin
 For j:=min to max do
  Write (a[i,j],' ');
 Writeln;
 end;

b:=0;
For i:= min to max do
 b:= b+a[i,i];

Write (b);

Read (x);
end.
