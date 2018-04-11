program Zbrane;

{$APPTYPE CONSOLE}
uses
  SysUtils;
  const max = 5;
  type zasobnik = record h{hodnoty}:Array [1..max] of Integer;
                         v{vrchol}:0..max;
  end;
  var a : Zasobnik;
      i : Integer;
      m{vyber},n{smazani}: Char;
procedure Init;
  begin
  a.v := 0;
  end;
procedure Nacti;
  begin
  If 
   begin
     Write ('Zadej cislo : ');
     Readln (a.h[i]);
   end;
 end;  
procedure Odebrani;
 begin
   If a.v <> 0 then
    begin

    end;
 end;
procedure Vypis;
 begin
   For i := a.v downto 1 do
    Writeln (a.h[i]);
 end;




begin

end.
