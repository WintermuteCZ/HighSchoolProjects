program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x ,y ,z ,M : Integer;

begin
 Write ('Zadejte tri cisla ');
  Read (x ,y , z);

   if x>y then
    if x<z then
     M:= x
    else

     if z>y then
      M:=y
     else
      M:= z

   else

    if y<z then
     M:= y

    else

    if x>z then
      M:= x
     else
      M:= z;

 Write ('stredni cislo je :', M );
end.