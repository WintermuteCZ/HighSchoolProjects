program Untitled;
uses CRT;
type TSopka = record
               Nazev: String[20];
               Vyska: Real;
               Aktiv: Boolean;
               end;
     TPole = array[1..20] of TSopka;

procedure CtiSopky (var a:text;var p:TPole;var pocet: byte);
 var akt:String[6];
 begin
  pocet:=1;
  While not Eof(a) and not pocet>20 do
   begin
    pocet:=pocet+1;
    Read(a, p[pocet].Nazev,p[pocet].vyska);
    p[pocet].Aktiv:=akt='Aktiv';
   end;
 end;
function PocetAkt (p:TPole,pocet:byte):byte;
 var i:Integer;
 begin
  For i:=1 to pocet do
   begin

   end;
 end;

var a:text;
     i:integer;
     x:TPole;
     m:byte;
begin
{$I-}
  Assign (a,'U:\2.A\Kozusky\Sopky\Sin.txt');
  Reset (a);
  If IOResult <> 0 then
   begin
    Writeln ('Nepovedlo se otevrit 1');
    Exit;
   end;
CtiSopky(a,x,m);
Close(a);
end.
