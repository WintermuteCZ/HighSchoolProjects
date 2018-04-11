program Project4;

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
    if a mod 3=0 then
     i:= i+1
    end;
 Write ('V rade je : ', i , 'delitelnych 3');
end.
