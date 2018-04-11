program BBBBBBBB;

uses crt;

type pprvek=^tprvek;
     tprvek=record
                  hodnota:string;
                  dalsi:pprvek;
                  end;


var vyp:pprvek;

function prazdny(zac:pprvek):boolean;

         begin
         prazdny:=zac=nil
         end;
procedure vypis (var zac, kon:pprvek);
begin
clrscr;
vyp:=zac;
if vyp<>nil then repeat
                 write(vyp^.hodnota,' ');
                 vyp:=vyp^.dalsi;
                 until vyp=nil
             else writeln ('nic tam neni');
end;

procedure uloz (var zac,kon:Pprvek);
var pom:pprvek;
begin
clrscr;
new(pom);
readln(pom^.hodnota);
pom^.dalsi:=nil;
if zac=nil then zac:=pom
           else kon^.dalsi:=pom;
                kon:=pom;
end;

procedure odeber (var zac,kon:pprvek);
var pom:pprvek;
begin
clrscr;
if zac=nil then write ('nic tam neni')
                else begin pom:=zac;
                           zac:=pom^.dalsi;
                           write('Odebral jsi: ');
                           writeln(pom^.hodnota);
                           if zac=nil then kon:=nil;
                           dispose(pom);
                           end;
                end;


procedure vyprazdneni();


var vyber:char;
    zac,kon:pprvek;



begin

zac:=nil;
kon:=nil;
repeat
writeln(' ');
writeln('uloz 1');
writeln('vypis 2');
writeln('odeber 3');
writeln('konec 0');
vyber:=readkey;
case vyber of
     '1':uloz(zac,kon);
     '2':vypis(zac,kon);
     '3':odeber(zac,kon);
     end;
     until vyber='0';
dispose();

end.