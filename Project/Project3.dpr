program Project3;

{$APPTYPE CONSOLE}

var a,n,i,j : Integer;

begin
  i:= 0;
  j:= 0;
  Write ('Zadej n cisel : ');
  Read (n);
  While j<>n do
    begin
     Read (a);
     j:= j+1;
    if a=1 then
     i:= i+1
    end;
 Write ('V rade je : ', i , 'jednicek');
end.
