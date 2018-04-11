program Untitled;
uses CRT;
const Max=10;
type Pole1 = array[0..max]of integer;

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
           end; {Vypis}

procedure Insertsort (var a:Pole1);
           var i,j: Integer;
           begin
            Write ('Puvodni pole : ');
            Vypis(a);
            Write ('Insertsort : ');
            For i:=2 to max do
             begin
              a[0]:=a[i];
              j:=i-1;
              While a[0] < a[j] do
               begin
                a[j+1]:=a[j];
                j:=j-1;
               end; {While}
              a[j+1]:=a[0];
             end; {For}
            Vypis(a);
            Readkey;
           end; {Insertsort}

Procedure Selectsort (var a:Pole1);
           var i,j,min,k: Integer;
           begin
            Write ('Puvodni pole : ');
            Vypis(a);
            Write ('Selectsort : ');
            For i:=1 to max-1 do
             begin
              min:=a[i];
              k:=i;
              For j:=i+1 to max do
               begin
                If a[j]<a[k] then
                 k:=j;
               end; {For2}
              min:=a[k];
              a[k]:=a[i];
              a[i]:=min;
             end; {For1}
            Vypis(a);
            Readkey;
           end; {SelectSort}

Procedure Bulbasaur (var a:Pole1);
           var i,j,pom: Integer;
           begin
            Write ('Puvodni pole : ');
            Vypis(a);
            Write ('Bubblesort : ');
            pom:=0;
            For i:=2 to max do
             begin
              For j:= max downto i do
               begin
                If a[j]<a[j-1] then
                 begin
                  pom:=a[j];
                  a[j]:=a[j-1];
                  a[j-1]:=pom;
                 end; {If}
               end; {For2}
             end; {For1}
            Vypis(a);
            Readkey;
           end; {Bubblesort}

Procedure Ivysaur (var a:Pole1);
           var i,k,pom,x: Integer;
           begin
            Write ('Puvodni pole : ');
            Vypis(a);
            Write ('Bubblesort : ');
            pom:=0;
            x:=0;
            k:=max;
            Repeat
             For i:= max downto 1 do
              begin
               If a[i]<a[i-1] then
                 begin
                  pom:=a[i-1];
                  a[i-1]:=a[i];
                  a[i]:=pom;
                  x:=1;
                 end;{If}
              end;{For}
             k:=k-1; 
            Until (k=0) or (x=0);
            Vypis(a);
            Readkey;
           end; {Ivysaur}

Procedure Venosaur (var a:Pole1);
           var i,k,pom,x: Integer;
           begin
            Write ('Puvodni pole : ');
            Vypis(a);
            Write ('Bubblesort : ');
            k:=max;
            Repeat
             x:=0;
             For i:= max downto x do
              begin
               If a[i]<a[i-1] then
                 begin
                  pom:=a[i-1];
                  a[i-1]:=a[i];
                  a[i]:=pom;
                  x:=i;
                 end;{If}
              end;{For}
             k:=k-1;
            Until (k=0) or (x=0);
            Vypis(a);
            Readkey;
           end; {Venosaur}

Procedure Binsort (var a:Pole1);
           var i,j,x,pom,l,r:Integer;
           begin
            Write ('Puvodni pole : ');
            Vypis(a);
            Write ('Binsort : ');
            For i:=2 to max do
             begin
              pom:=a[i];
              l:=1;
              r:=i-1;
              While l<=r do
               begin
                x:=(l+r)div 2;
                If pom<a[x] then
                  r:=x-1
                 else
                  l:=x+1;
               end;{While}
             For j:=i-1 downto l do
              begin
               a[j+1]:=a[j];
              end;{For2}
             a[l]:=pom
              end;{For}
            Vypis (a);
            Readkey;
           end;{Binsort}

Procedure Slowpoke (var a:Pole1);
           var i,pom,x,y,z: Integer;
           begin
            Write ('Puvodni pole : ');
            Vypis(a);
            Write ('Shakersort : ');
            x:=max;
            y:=2;
            z:=1;
            Repeat
              For i:= x downto y do
               begin
                If a[i]<a[i-1] then
                 begin
                  pom:=a[i];
                  a[i]:=a[i-1];
                  a[i-1]:=pom;
                 end; {If}
               end; {For2}
              y:=y+1;
              For i:= y to x do
               begin
                If a[i]<a[i-1] then
                 begin
                  pom:=a[i];
                  a[i]:=a[i-1];
                  a[i-1]:=pom;
                 end; {If}
               end; {For3}
              x:=x-1;
              z:=z+1;
            Until z=max;
            Vypis(a);
            Readkey;
           end;{Slowpoke}

Procedure Slowbro (var a:Pole1);
           var i,j,x,pom,l,r: Integer;
           begin
            Write ('Puvodni pole : ');
            Vypis(a);
            Write ('Shakersort : ');
            pom:=0;
            l:=2;
            r:=max;
            x:=max;
            Repeat
              For i:=r downto l do
               begin
                If a[i]<a[i-1] then
                 begin
                  pom:=a[i];
                  a[i]:=a[i-1];
                  a[i-1]:=pom;
                  x:=i;
                 end; {If}
               end; {For1}
              l:=x-1;
              For j:=l to r do
               begin
                If a[j]<a[j-1] then
                  begin
                   pom:=a[j];
                   a[j]:=a[j-1];
                   a[j-1]:=pom;
                   x:=j;
                  end; {If}
               end;{For2}
              r:=x-1;
            Until l>=r;
            Vypis(a);
            Readkey;
           end; {Slowbro}

procedure Mew (var a:Pole1;var i,j:Integer);
          var x,pom,l,r:Integer ;
          begin
           l:=i;
           r:=j;
           x:=a[(l+r)div 2];
           Repeat
            While a[l]<x do
             l:=l+1;
            While a[r]>x do
             r:=r-1;
            If l<=r then
             begin
              pom:=a[l];
              a[l]:=a[r];
              a[r]:=pom;
              l:=l+1;
              r:=r-1;
             end;{If}
           Until l>r;
           If r>i then
             Mew (a,i,r);
           If l<j then
           Mew (a,l,j);
          end;{Mew}

var a: Pole1;
    x:Char;
    i,j:Integer;
begin
i:=1;
j:=max;
Repeat
 ClrScr;
 Writeln ('Moznosti:');
 Writeln ('1:Napln pole');
 Writeln ('2:Vypis pole');
 Writeln ('3:Insertsort');
 Writeln ('4:Selectsort');
 Writeln ('5:Bubblesort 1');
 Writeln ('6:Bubblesort 2');
 Writeln ('7:Bubblesort 3');
 Writeln ('8:Binsort');
 Writeln ('9:Shakersort 1');
 Writeln ('a:Shakersort 2');
 Writeln ('b:Quicksort');
 Writeln ('0:Konec');
 Repeat until Keypressed;
  x:= Readkey;
  Case x of
    '1':Napln (a);
    '2':begin
         Vypis (a);
         Readkey;
        end; {2}
    '3':InsertSort (a);
    '4':SelectSort (a);
    '5':Bulbasaur (a);
    '6':Ivysaur (a);
    '7':Venosaur (a);
    '8':Binsort (a);
    '9':Slowpoke (a);
    'a':Slowbro (a);
    'b':begin
         Write ('Puvodni pole : ');
         Vypis(a);
         Write ('Quicksort : ');
         Mew (a,i,j);
         Vypis (a);
         Readkey;
        end;
   end; {Case}
 Writeln;
until x='0';
end.

