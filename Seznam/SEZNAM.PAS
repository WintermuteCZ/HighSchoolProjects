program tseznam;
 uses Crt;

type
 pprvek=^tprvek;
 tprvek= record
          znak: Char;
          pocet: Integer;
          dalsi: pprvek;
         end;

var
 seznam: pprvek;
 novy,pom: pprvek;

procedure Init (var s: pprvek);
 begin
  s:=  nil;
 end;

procedure Pridej (s: pprvek; a: Char);
 begin
  If seznam= nil then
   begin
    New(novy);
    novy^.dalsi:= nil;
    novy^.pocet:= 1;
    novy^.znak:= a;
    seznam:= novy;
   end
  else
   begin
    pom:= seznam;
    While (pom^.znak<a) and (pom^.dalsi<>nil) do
     pom:= pom^.dalsi;
   end;
