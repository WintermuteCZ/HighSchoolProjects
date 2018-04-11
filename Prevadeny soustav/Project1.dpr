program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var des, x, i ,y: Integer;
    dvo : String;
begin
  Write ('Zadej cislo ve dvojkove soustave : ');
  Readln (des);
  i := 1;
  While des / 2 <> 0 do
  begin
  If des mod 2 = 1 then
    begin
    des := des div 2;
    dvo[i] := '1';
    i := i+1;
    end
   else
    begin
    des := des mod 2;
    dvo[i]:= '0';
    i := i+1;
    end;
  end;
y := 0;  
For y := i downto 1 do;
 Write (dvo[y]);
Readln;
Read (x);
end.
