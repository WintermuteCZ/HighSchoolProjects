program Dlouha_cisla2;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var cislo1 , cislo2 , vysledek : String[13];
var desitka , x , i , mez , cifra1 , cifra2 ,n: Integer;


begin
  Writeln ('Zadejte dve cisla : ');
  Readln (cislo1);
  Readln (cislo2);
  n:= Length (cislo1);
  vysledek[0]:=Chr(n);
 For i:=n downto 1 do
    begin
    cifra1:= ord (cislo1[i])- ord ('0');
    cifra2:= ord (cislo2[i])- ord ('0');
    mez := cifra1 + cifra2 + desitka;
    desitka := 0;
     If mez >= 10 then
      begin
      mez := mez - 10;
      desitka := 1;
      end;
 vysledek[i] := Chr (mez + ord('0'));
 end;
  If desitka=1 then
   vysledek := '1' + vysledek;
 Writeln (vysledek);
 Read (x);
end.


