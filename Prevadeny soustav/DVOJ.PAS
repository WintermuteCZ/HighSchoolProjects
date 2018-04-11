program Dvojkova;

var dvoj:string[40];
    cis:integer;
begin
  readln(cis);
  while cis <> 0 do
  begin
    dvoj := Chr(cis mod 2 + ord('0'))+dvoj;
    cis := cis div 2;
  end;
  writeln(dvoj);
  readln;
end.