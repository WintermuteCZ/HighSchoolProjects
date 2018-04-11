program Untitled;
uses CRT;
const max = 10;
type Pole1 = array[1..max+1] of Integer;

Procedure Napln (var a:Pole1);
           var i:integer;
           begin
            Randomize;
            For i:=1 to max do
             begin
              a[i]:=Random(20);
             end; {For}
            Writeln ('Pole naplneno');
            Readkey;
           end; {Napln}

Procedure Vypis (a:Pole1);
           var i:integer;
           begin
            For i:=1 to max do
             Write (a[i],' ');
            Writeln;
            Readkey;
           end; {Vypis}

Procedure Nandi (var a:Pole1);
           var i,y:Integer;
           begin
            Write ('Zadejte hledany prvek : ');
            Readln (y);
            a[max+1]:=y;
            i:=1;
            While y<>a[i] do
             i:=i+1;
            If i>max then
             Writeln ('Prvek nenalezen')
              else
             Writeln ('Prvek je na ',i,'. pozici');
            Readkey;
           end;{Nandi}

var a:Pole1;
    x:Char;

begin
 Randomize;
 Repeat
  ClrScr;
  Writeln ('Moznosti:');
  Writeln ('1:Napln');
  Writeln ('2:Vypis');
  Writeln ('3:Nandi');
  Writeln ('0:Konec');
 Repeat until Keypressed;
  x:=Readkey;
  Case x of
   '1':Napln (a);
   '2':Vypis (a);
   '3':Nandi (a);
   end;{Case}
  Writeln;
 until x='0';
end.
