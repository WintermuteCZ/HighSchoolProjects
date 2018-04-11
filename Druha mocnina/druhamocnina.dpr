program druhamocnina;

{$APPTYPE CONSOLE}

uses
  SysUtils;
  var a,b,i : Integer;

begin
  Write ('Zadejte nejmensi cislo : ');
  Readln (a);
  Write ('Zadejte nejvetsi cislo : ');
  Readln (b);
  If a > b then
   Writeln ('Error');
  for I := a to b do
    begin
      Writeln (i:3, '-', i*i:6);
    end;

  readln;
end.
