program Project1;

{$APPTYPE CONSOLE}
uses
  SysUtils;
type  pzasobnik = ^zasobnik;
      zasobnik = record
                 slovo : String;
                 dalsi : pzasobnik;
                 end;

var slova : pzasobnik;
    slovo : String;
    x : integer;
    Volba : Char;
procedure Init (var z : pzasobnik);
  begin
    z := nil;
  end;

procedure Pridej (h : String; var z : pzasobnik);
 var p : pzasobnik;
  begin
   new (p);
   p^.slovo := h;
   p^.dalsi := z;
   z:= p;
  end;


function Prazdny (z : pzasobnik) : Boolean;
  begin
    prazdny := z = nil;
  end;

function Odeber (var z : pzasobnik): String;
 var h  : string;
     p : pzasobnik;
  begin
    h := z^.slovo;
    p := z;
    z := z^.dalsi;
    Dispose (p);
    Odeber := h;
  end;
procedure Vypis (z: pzasobnik);
 var pom : pzasobnik;
 begin
 If Prazdny (pom) then
  Writeln ('Zasobnik je prazdny')
   else
    Repeat
     pom := z;
     Writeln (pom^.slovo);
     pom := pom^.dalsi;
    Until Prazdny (pom);
 end;
begin
 New(slova);
 Init(slova);

  Writeln ('Co chcete udelat :');
  Writeln ('1: Pridat');
  Writeln ('2: Vypsat');
  Writeln ('3: Vypsat lip');
  Writeln ('0: Konec');
repeat until KeyPressed;
   Volba :=ReadKey;
Case Volba of   
'1': begin
      Writeln('Postupne zadavejte slova a pro ukonceni "."');
      Readln(slovo);
       Repeat
        begin
         pridej(slovo,slova);
         readln(slovo);
        end;
       Until slovo='.';
     end;
'2': begin
      Repeat
       begin
        Writeln(odeber(slova));
       end;
      Until prazdny(slova);
     end;
'3': begin
      Vypis(slova);
     end;
Until Volba = 0;
Readln (x);
end.
