program Project12;
uses
  CRT;

type TSopka = record
 Jmeno : String [40];
 Vyska : Integer;
 Zeme : String [40];
 Cinna : Boolean;
 end;
type TSopky = array[1..20] of TSopka;
var S : TSopka;
    Sopky : TSopky;
    Volba : Char;
    a,x,i,PS : Integer;

begin
PS:=0;
 Repeat
  ClrScr;
  Writeln ('Co chcete udelat :');
  Writeln ('1: Pridat novou sopku');
  Writeln ('2: Vypsat sopky');
  Writeln ('0: Konec');
repeat until KeyPressed;
   Volba :=ReadKey;


case Volba of
'1' : begin
 Write ('Zadejte jmeno sopky : ');
 Readln (S.Jmeno);
 Write ('Vysku sopky :');
 Readln (S.Vyska);
 Write ('Zemi, ve ktere se sopka nachazi : ');
 Readln (S.Zeme);
 Write ('Pokud je sopka cinna zadejte 1, pokud ne 0 : ');
 Readln (a);
 If a = 1 then S.Cinna := true
 else
 S.Cinna := false;
 PS := PS+1;
 end;

'2' : begin
 Writeln ('Ulozene sopky jsou :');
 for i:=1 to PS do
  begin
  Writeln (i,'.');
  Writeln (Sopky[i].Jmeno);
  Writeln (Sopky[i].Vyska);
  Writeln (Sopky[i].Zeme);
  If Sopky[i].Cinna then
   Writeln ('Cinna')
   else
   Writeln ('Necinna');
  end;
  readln;
 end;
end;
until volba ='0';
end.
