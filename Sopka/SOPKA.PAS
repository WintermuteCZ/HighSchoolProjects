program Sopka;
uses CRT;
type TSopka = record
 Jmeno : String [40];
 Vyska : Integer;
 Zeme : String [40];
 Cinna : Boolean;
 end;
type TSopky = array[1..40] of TSopka;
var S : TSopka;
    Sopky : TSopky;
    Volba : Char;
    a,x,i,PS,hlvyska,y,z : Integer;
    hled,f : boolean;

procedure NovaSopka;
 begin
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
 Sopky[PS]:= S
 end;

procedure VypisSopku(CisloSopky:Integer);
 begin
  begin
  Writeln (CisloSopky,'.');
  Writeln (Sopky[CisloSopky].Jmeno);
  Writeln (Sopky[CisloSopky].Vyska);
  Writeln (Sopky[CisloSopky].Zeme);
  If Sopky[CisloSopky].Cinna then
   Writeln ('Cinna')
   else
   Writeln ('Necinna');
  end;
 end;

procedure HledejSopku;
 begin
  ClrScr;
  Write ('Zadejte hledanou vysku sopky : ');
  Readln (hlvyska);
  f:= false;
  For i:=1 to PS do
   begin
   If hlvyska = Sopky[i].Vyska then
     begin
     VypisSopku(i);
     f:= true;
     end;
  If not f then
   Writeln ('Sopka nebyla nalezena');
  end;
   readkey;
 end;

procedure ZmenSopku;
 begin
 Writeln ('Ulozene sopky jsou :');
 For i:=1 to PS do
  VypisSopku(i);
 Writeln ('Zadejte cislo sopky, kterou chcete zmenit : ');
  Readln(y);
  ClrScr;
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
   Sopky[y]:= S;
 end;

procedure SmazSopku;
 begin
  Writeln ('Ulozene sopky jsou :');
  For i:=1 to PS do
   VypisSopku(i);
  Writeln ('Zadejte cislo sopky, kterou chcete smazat :');
  Readln(z);
  For i:=z to PS-1 do
   Sopky[i]:= Sopky[i+1];
  PS:=PS-1;
 end;

begin
PS:=0;
Repeat
  ClrScr;
  Writeln ('Co chcete udelat :');
  Writeln ('1: Pridat novou sopku');
  Writeln ('2: Vypsat sopky');
  Writeln ('3: Vyhledat sopku');
  Writeln ('4: Upravit sopku');
  Writeln ('5: Smazat sopku');
  Writeln ('0: Konec');
repeat until KeyPressed;
   Volba :=ReadKey;


case Volba of
'1' : NovaSopka;
'2' : begin
       Writeln ('Ulozene sopky jsou :');
       For i:=1 to PS do
       begin
       VypisSopku(i);
       end;
      Readln;
      end;


'3' : HledejSopku;
'4' : ZmenSopku;
'5' : SmazSopku;
end;
until volba ='0';
end.