program Vyskyt.cislice;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a , b , z : Integer;

begin
  Write ('Zadejte cislo : ');
  Read (a);
  Write ('Zadejte cislici');
  Read (b);
  Repeat
    z := a mod 10;
    a := a div 10;
  Until (z=b) or (a=0);
    
 If (z=b) or (a=0) then
  Writeln ('Je v cisle')
  else
  Writeln ('Neni v cisle');

end.



















end.
