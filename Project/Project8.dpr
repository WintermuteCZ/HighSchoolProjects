program Project8;

{$APPTYPE CONSOLE}


var x , max , tip , min , i : Int64;

begin
Write ('zadej cislo :');
  Read (x);
Write ('V rozsahu :');
  Read (max);
  i := 0;
  min := 0 ;
  tip := (max + min) div 2;
   while tip <> x do
    begin
    i := i+1;
    if tip > x then
     max := tip
    else
     min := tip;
    tip := (max + min) div 2;
    end;

Write ('Pocitac cislo uhadl za ',i,' pokusu')




end.
