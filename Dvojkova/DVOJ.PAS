program Dvojkova;

var dvoj:string[40];
    zak,cis:LongInt;
begin
  Write ('Zadej zaklad soustavy : ');
  readln (zak);
  Write ('Zadej cislo : ');
  readln(cis);

  while cis <> 0 do
  begin
    dvoj := Chr(cis mod zak + ord('0'))+dvoj;
    cis := cis div zak;
  end;
  writeln(dvoj);
  readln;
end.