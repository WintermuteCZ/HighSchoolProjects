program Pole7;

{$APPTYPE CONSOLE}

uses
  SysUtils;

  type Polea = array [1..50] of Integer;
  var n,i,j,m,k,x : integer;
  var a : Polea;


begin
  Write ('Zadej pocet cisel : ');
  Read (n);
For i:=1 to n do
   begin
   Write ('Zadej cislo : ');
   Read (a[i]);
   end;

m:=(a[n]);
For j:=1 to n-1 do
 a[j]:=a[j+1];


a[1]:=m;
For k:=1 to n do
  begin
  Write (a[k]) ;
  Write (' ');
  end;
Read (x);

end.
