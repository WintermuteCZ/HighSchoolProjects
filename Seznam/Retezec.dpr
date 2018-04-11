program Retezec;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b,c: string;
      i,x,d : integer;
begin
  Write ('Zadejte prvni cislo ve dvojkove soustave : ');
  Readln (a);
  Write ('Zadejte druhe cislo : ');
  Readln (b);
  If Length(a)>Length(b)then
    While Length(a)<>Length(b) do
     b:= '0'+b
  else
    While Length(a)<>Length(b) do
     a:= '0'+a;
for i:=length(a) downto 1  do
begin
case Ord(a[i])-48+Ord(b[i])-48+x of
0:begin
c:='0'+c;
x:=0;
end;
1:begin
c:='1'+c;
x:=0;
end;
2:begin
c:='0'+c;
x:=1;
end;
3:begin
c:='1'+c;
x:=1;
end;
end;
end;
if x = 1 then c:='1' + c;
Write(c);
 Read(d);


end.
