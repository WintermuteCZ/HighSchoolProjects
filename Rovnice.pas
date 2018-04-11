program Untitled;
uses CRT;
const max=20;
type matice = array[1..max,1..max+1]of real;
var x:matice;
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
  end;

procedure Ukazka (var x:matice; var m:byte); {testovaci matice}
  begin
   m:=3;
   x[1,1]:=1;
   x[1,2]:=2;
   x[1,3]:=1;
   x[1,4]:=4;
   x[2,1]:=2;
   x[2,2]:=5;
   x[2,3]:=-5;
   x[2,4]:=2;
   x[3,1]:=3;
   x[3,2]:=2;
   x[3,3]:=-2;
   x[3,4]:=3;
  end;

procedure Nula (var x:matice); {kontroluje, jestli je nula na diagonale}
 var i,j:byte;
     y:matice;
  begin
   y:=x;
   While x[i,j]=0 do
    begin
     For i:=1 to m do
      For j:=1 to m+1 do
       x[i,j]:=y[i+1,j+1];
       x[i+1,j+1]:=y[i,j];
    end;
  end;

procedure ZpetnyChod (var x:matice; m:byte); {zpetne vypocita hodnoty jednotlivych promennych}
 var i,j,k:byte;
     b,c:real;
 begin
  x[m,m+1]:=x[m,m+1]/x[m,m];
  For i:=m-1 downto 1 do
   begin
    b:=x[i,m+1];
    For j:=m downto i+1 do
     begin
      b:=b-(x[i,j]*x[j,m+1]);
     end;
     x[i,m+1]:=b/x[i,i];
   end;
  VypisMatici (x);
  Delay (1500);
  For k:=1 to m do
   Write ('x',i,'=',x[i,m+1]:4:3, ' ');
 end;

procedure Gauss (var x:matice; m:byte); {upravi matici na trojuhelnikovy tvar}
 var i,j,k:byte;
     y:matice;
     pom:real;
 begin
  y:=x;
  For i:=1 to m-1 do {podle ktere rovnice se upravuje}
   begin
    {Nula (x);}
    For j:=i+1 to m do {ktera rovnice}
     begin
      pom:=x[j,i]/x[i,i];
      For k:=1 to m+1 do {ktera promenna}
      x[j,k]:=x[j,k]-(pom*x[i,k]);
     end;
   end;
  VypisMatici (x);
  If (x[m,m]=0) and (x[m,m+1]=0) then
    Writeln ('Nekonecne mnoho reseni')
   else
    If (x[m,m]=0) and (x[m,m+1]<>0) then
      Writeln ('Nema reseni')
    else
     begin
      Writeln ('Jedno reseni, zpoustim zpetny chod');
      Delay (1000);
      ZpetnyChod (x,m);
     end;
 end;

procedure JordanovaMetoda (var x:matice; m:byte);
 var i,j,k:byte;
     pom:real;
     y:matice;
 begin
  y:=x;
  For i:=1 to m do {podle ktere rovnice se upravuje}
   begin
    {Nula}
    For j:=i+1 to m do {ktera rovnice, dolu}
     begin
      pom:=x[j,i]/x[i,i];
      For k:=1 to m+1 do {ktera promenna}
      x[j,k]:=x[j,k]-(pom*x[i,k]);
     end;
    For j:=i-1 downto 1 do {ktera rovnice, nahoru}
     begin
      pom:=x[j,i]/x[i,i];
      For k:=1 to m+1 do {ktera promenna}
      x[j,k]:=x[j,k]-(pom*x[i,k]);
     end;
   end;
  VypisMatici (x);
  Delay (1500);
  For i:=1 to m do
   begin
    x[i,m+1]:=x[i,m+1]/x[i,i];
    Write ('x',i,'=',x[i,m+1]:4:3, ' ');
   end;
 end;


procedure ABC;
 var a:byte;
  begin
   For a:=10 downto 0 do
    begin
     If a=0 then
      Write ('BOOOOOM')
     else
      begin
       Writeln (a,':',a);
       Delay (800);
      end;
    end;
  Readln;
 end;

begin
 Repeat
  ClrScr;
  Writeln ('Co chcete udelat :');
  Writeln ('1: Zadat pocet rovnic');
  Writeln ('2: Naplnit matici');
  Writeln ('3: Testovaci matice');
  Writeln ('4: Vypsat matici');
  Writeln ('5: Gaussova metoda');
  Writeln ('6: Jordanova metoda');
  Writeln ('z: ABC');
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
  '3' : begin
         Ukazka (x,m);
        end;
  '4' : begin
         VypisMatici (x);
         Readln;
        end;
  '5' : begin
         Gauss (x,m);
         Readln;
        end;
  '6' : begin
         JordanovaMetoda (x,m);
         Readln;
        end;
  'z' : ABC;
  end;
until volba ='0';

end.
