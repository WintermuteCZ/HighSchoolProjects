program Project7;
{$APPTYPE CONSOLE}


var x,tip,i,max : integer;



begin
write('tipni cislo');
randomize();
x:= random(100);
read(tip);
i:=1;
while tip<>x do

     begin
              if tip>x then
              Write ('cislo > x')
              else
              write('cislo < x') ;
              i:=i+1;
              write('tipni si zase');
              read(tip)




                end;
write('tipni si znovu')




end.
