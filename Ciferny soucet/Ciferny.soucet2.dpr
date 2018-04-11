program Ciferny.soucet2;

{$APPTYPE CONSOLE}

uses
  SysUtils;
  var a , x , mez , i: LongInt;
begin
  Write ('Vlozte cislo : ');
  Readln (a);
  i := 0;
  mez := 0;
  While a<>0 do
   begin
   x := a mod 10;
   a:= a div 10;
   mez := mez+x;
   i := i+1;
   end;
Writeln ('Ciferny soucet je ',mez);
Writeln ('V cisle je ',i,' cisel');



end.
