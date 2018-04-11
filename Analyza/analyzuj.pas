program analyzator;

{
  Nazev programu: Textovy analyzator
  Autor: <sem doplnte sve jmeno a prijmeni>
  Datum: <sem doplnte datum odevzdani programu>
  
  Popis: Vstupem programu je textovy soubor, ktery obsahuje bezny text bez
  diakritiky. Text je clenen do slov a vet:
  - kazde slovo konci mezerou, koncem radku nebo koncem souboru
  - kazda veta konci teckou
  
  Program se spousti z prikazoveho radku a funguje takto:
  
  analyzuj -slova soubor.txt
  - vypise na vystup pocet slov v zadanem souboru
  
  analyzuj -vety soubor.txt
  - vypise na vystup pocet vet v zadanem souboru
  
  analyzuj -nejslovo soubor.txt
  - vypise na vystup delku nejdelsiho slova v zadanem souboru
  
  Premiove rozsireni:
  Text je clenen navic na odstavce. Kazdy odstavec konci prazdnym radkem nebo
  koncem souboru.
  
  analyzuj -odstavce soubor.txt
  - vypise na vystup pocet odstavcu v textu
  
  analyzuj -histogram soubor.txt
  - vypise na vystup, kolikrat se v souboru vyskytuji znaky a..z, A..Z.
  
  
  Postup reseni:
  1. Prostudujte si tuto konstru programu. Prelozte ji a spustte z prikazoveho
     radku z ruznymi kombinacemi parametru. 
     Pokud chcete, muzete program spoustet z prostredi Borland Pascalu tak, ze 
     parametry nejprve zadate v menu Run-Parameters. 
     Zadate-li chybny pocet parametru programu (jiny nez 2), program vytiskne
     napovedu.
     Pokud necemu v pripravenem programu nerozumite ptejte se, proturinga 
     PTEJTE SE!

  2. Ze souboru ctete po jednotlivych znacich (char).
     Zacnete vypoctem poctu vet. Je nejjednodussi. Potom pokracujte vypoctem
     poctu slov v souboru. Tato reseni vlozte do funkci pocetSlov a pocetVet.

  3. Doplnte funkci delkaDalsihoSlova. Vyzkousejte ji pomoci parametru -test,
     pomoci nehoz program vytiskne delku prvniho slova v souboru.

  4. Pouzijte funkci delkaDalsihoSlova pro reseni funkce nejdelsiSlovo.

  5. Zkuste reseni rozsirit o premove ulohy.
}

{
  Vrati pocet slov v zadanem otevrenem souboru.
  Slovo konci mezerou, koncem radku nebo koncem souboru.
}
function pocetSlov(var f: text): integer;
var a:char;
    x:integer;
begin
  x:=0;
  While not Eof (f) do
   begin
    Read (f,a);
    If (a=' ') then
     begin
     Repeat
      Read (f,a);
     Until (a<>' ') or (a='.');
     x:= x+1;
     end;
   end;
  pocetSlov := x;
end;

{
  Vrati pocet vet v zadanem otevrenem souboru.
  Veta konci vzdy teckou.
}
function pocetVet(var f: text): integer;
var a: char;
    x: integer;
begin
  x:=0;
  While not Eof(f) do
   begin
    Read (f,a);
    If (a='.') or (a='?') or (a='!') then
     x:=x+1;
   end;
  pocetVet:=x;
end;

{
  Vrati delku nasledujiciho slova. Funkce na zacatku preskoci vsechny
  mezery a konce radku a pak spocita vsechny znaky do konce slova.
}
function delkaDalsihoSlova(var f: text): integer;
begin
  { nahradtte svym resenim }
  delkaDalsihoSlova := -1;
end;

{
  Vrati delku nejdelsiho slova v zadanem otevrenem souboru.
  Pro vypocet pouziva funkci delkaDalsihoSlova.
}
function nejdelsiSlovo(var f: text): integer;
begin
  { nahradtte svym resenim }
  nejdelsiSlovo := -1;
end;


{
  Vytiskne na obrazovku napovedu.
}
procedure tiskniNapovedu();
begin
  writeln('Protram Textovy analyzator');
  writeln('Program se spousti takto:');
  writeln('analyzuj prepinac soubor');
  writeln();
  writeln('soubor - cesta a jmeno k existujicimu souboru');
  writeln('vyznam prepinace:');
  writeln('-slova    vypise na vystup pocet slov v zadanem souboru');
  writeln('-vety     vypise na vystup pocet vet v zadanem souboru');
  writeln('-nejslovo vypise na vystup delku nejdelsiho slova v zadanem souboru');
  writeln('-test     vypise delku prvniho slova v souboru (pro testovani)');
end;

{
  Funkce zkusi otevrit soubor s nazvem jmenosouboru. Pokud se to povede, vrati 
  jej otevreny  pro cteni v parametru f a vrati hodnotu true. Pokud se to 
  nepovede, vytiskne na obrazovku hlaseni a vrati hodnotu false.
}
function povedloOtevrit(var f: text; jmenosouboru, hlaseni: string): boolean;
begin
  {$I-}
  povedloOtevrit := true;
  assign(f,'U:\2.A\Kozusky\Analyza\vstup.txt');
  reset(f);
  if IOResult <> 0 then
  begin
    writeln('CHYBA: ', hlaseni);
    povedloOtevrit := false;
  end;
  {$I+}
end;


var soubor : text;
    a:integer;
begin
  if paramCount <> 2 then
  begin
    writeln('CHYBA: Malo parametru.');
    tiskniNapovedu;
  end
  else
  begin
    if povedloOtevrit(soubor, paramStr(2), 'Zadany soubor nejde otevrit.') then
    begin
      if paramStr(1) = '-slova' then
        writeln('V souboru ', paramStr(2), ' je ', pocetSlov(soubor), ' slov.')
      else if paramStr(1) = '-vety' then
        writeln('V souboru ', paramStr(2), ' je ', pocetVet(soubor), ' vet.')
      else if paramStr(1) = '-nejslovo' then
        writeln('Nejdelsi slovo v souboru ', paramStr(2), ' ma delku ', 
          nejdelsiSlovo(soubor), ' znaku.')
      else if paramStr(1) = '-test' then
        writeln('Prvni slovo v souboru ', paramStr(2), ' ma delku ', 
          delkaDalsihoSlova(soubor), ' znaku.')
      else
        writeln('CHYBA: Zadanemu parametru ', paramStr(1), ' nerozumim');

      close(soubor);
    end;
  end;
Read (a);
end.
