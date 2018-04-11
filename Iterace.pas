program Iteracni;
uses CRT;
const max=20;
type matice = array[1..max,1..max+1]of real;
     vektor = array [1..nax]of real;
var x,y:matice;
    m:byte;
    volba:Char;


procedure NactiRovnice (var x:matice); {naplni matici}
 var i,j:byte;
  begin
   For i:=1 to m do
    begin
     Writeln ('Zadejte ',i,'. rovnici :');
     For j:=1 to m+1 do
      begin
       Write ('Zadejte prvek :');
       Readln (x[i,j]);
      end;{For2}
    end;{For1}
  end;{procedure}

procedure VypisMatici (x:matice);
 var i,j:byte;
  begin
   For i:=1 to m do
    For j:=1 to m+1 do
     begin
      Write (x[i,j]:4:3, ' ');
      If j=m then
       Write ('| ');
      If j=m+1 then
       Writeln;
     end;
   Readln;
  end;

procedure Ukazka (var x:matice; var m:byte); {testovaci matice}
  begin
   m:=3;
   x[1,1]:=1;
   x[1,2]:=-0.1;
   x[1,3]:=0.2;
   x[1,4]:=5.65;
   x[2,1]:=0.3;
   x[2,2]:=1;
   x[2,3]:=-0.1;
   x[2,4]:=-0.85;
   x[3,1]:=0.1;
   x[3,2]:=0.2;
   x[3,3]:=1;
   x[3,4]:=1.16;
  end;

procedure UpravenaMatice (x:matice; var y:matice ;m:byte);
 var i,j:integer;
 begin
  For i:=1 to m do
   begin
    For j:=1 to m do
     begin
      If i=j then
        y[i,j]:=0
       else
        begin
         y[i,j]:=-(x[i,j])/(x[i,i]);
        end;
     end;
    y[i,m+1]:=(x[i,m+1])/(x[i,i]);
   end;
   VypisMatici (y);
   Readln;
 end;

procedure Iteracni (var y:matice; m:byte);
 var k:boolean;
 begin

 end;

begin
 Repeat
  ClrScr;
  Writeln ('Co chcete udelat :');
  Writeln ('1: Zadat pocet rovnic');
  Writeln ('2: Naplnit matici');
  Writeln ('3: Testovaci matice');
  Writeln ('4: Vypis matici');
  Writeln ('5: Uprava matice');
  Writeln ('0: Konec');
 repeat until KeyPressed;
   Volba :=ReadKey;


 case Volba of
  '1' : begin
         Writeln ('Zadejte pocet rovnic');
         Readln (m);
        end;
  '2' : begin
         NactiRovnice (x);
         Readln;
        end;
  '3' : Ukazka (x,m);
  '4' : VypisMatici (x);
  '5' : UpravenaMatice (x,y,m);
  end;
until volba ='0';


end.
