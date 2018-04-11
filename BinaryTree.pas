program Untitled;
Uses Crt;
type PNod=^TNod;
     TNod=record
           h{hodnota}:Integer;
           l{levy},r{pravy}:PNod;
          end;
Procedure InitTree (var k{koren}:PNod);
           begin
            k:=nil;
           end;{Init}

Procedure InsertNod(var k:PNod;y:Integer);
           begin
            If k=nil then
              begin
               New (k);
               k^.h:=y;
               k^.l:=nil;
               k^.r:=nil;
              end{If}
             else
              If y<k^.h then
                InsertNod (k^.l,y)
               else
                If y>k^.h then
                  InsertNod (k^.r,y)
                 else
                  begin
                   Writeln ('Prvek uz je ve stromu');
                   Readkey;
                  end;{else}
           end;{Insert}

Procedure SearchNod (var k:PNod;y:Integer);
           begin
            If k=nil then
              Writeln ('Prvek neni ve stromu')
             else
              If y=k^.h then
                Writeln ('Prvek je ve stromu')
               else
                If y<k^.h then
                 SearchNod (k^.l,y)
                else
                 If y>k^.h then
                   SearchNod (k^.r,y);
           end;{Search}
Procedure PrintTree(k:PNod);
           begin
            If k<>nil then
             begin
              PrintTree (k^.l);
              Write (k^.h,' ');
              PrintTree (k^.r);
             end;
           end;{Vypis}

Procedure DeleteNod (var k:PNod;y:Integer);
           var p{pomocna},p1,p2:PNod;
           begin
            If k=nil then
              Writeln ('Prvek neni ve stromu')
             else
              If k^.h>y then
                DeleteNod (k^.l,y)
               else
                If k^.h<y then
                  DeleteNod (k^.r,y)
                 else
                  If (k^.l=nil) and (k^.r=nil) then
                    begin
                     Dispose (k);
                     k:=nil;
                     Writeln ('Odebrano: ',y,' (0 nasledniku)');
                    end{If4}
                   else{ma 1 nebo 2 nasledniky}
                    If ((k^.l=nil) and (k^.r<>nil)) or ((k^.l<>nil) and (k^.r=nil)) then
                      begin
                       p:=k;
                       If k^.l<>nil then
                         k:=k^.l
                        else
                         begin
                          k:=k^.r;
                          dispose (p);
                          Writeln ('Odebrano: ',y,' (1 naslednik)');
                         end;{else5}
                      end{If5}
                     else{ma 2 nasledniky}
                      begin
                       p:=k;
                       p:=p^.l;
                       p1:=k;
                       While p^.r<>nil do
                        p:=p^.r;
                       If p^.l=nil then
                         begin
                          k^.h:=p^.h;
                          dispose (p);
                          Writeln ('Odebrano: ',y);
                         end{If7}
                        else
                         begin
                           p2:=p^.r;
                           p^.l:=p2^.l;
                           dispose (p2);
                           Writeln ('Odebrano: ',y,'za nejpravejsim je neco nalevo');
                          end;{else7}
                      end;{else6}
           end;{Delete}


var x:Char;
    k:PNod;
    y:Integer;

begin
InitTree (k);
y:=0;
Repeat
 ClrScr;
 Writeln ('Moznosti:');
 Writeln ('1:Vloz');
 Writeln ('2:Hledej');
 Writeln ('3:Vypis');
 Writeln ('4:Smaz');
 Writeln ('0:Konec');
 Repeat until Keypressed;
  x:= Readkey;
  Case x of
    '1':begin
         Write ('Zadejte pridavane cislo : ');
         Readln (y);
         InsertNod(k,y);
        end;{1}
    '2':begin
         Write ('Zadejte hledane cislo : ');
         Readln (y);
         SearchNod (k,y);
         Readkey;
        end;{2}
    '3':begin
         PrintTree(k);
         Readkey;
        end;{3}
    '4':begin
         Write ('Zadejte cislo, ktere chcete odebrat : ');
         Readln (y);
         DeleteNod(k,y);
         Readkey;
        end; {4}
   end; {Case}
 Writeln;
until x='0';
end.
