program Vnejsi_Trideni;
uses Crt;
procedure Rozdel (var a,b,c:Text; var k:Integer);
           var x:Integer;
           begin
            {$I-};
             Reset (a);
             If IOResult <> 0 then
              begin
               Writeln ('Soubor a se nepodarilo otevrit');
               Readkey;
              end; {If}
            {$I+}
            k:=1;
            Rewrite (b);
            Rewrite (c);
            While not Eof(a) do
             begin
                Readln(a,x);
                If k=1 then
                  begin
                   Writeln(b,x);
                   k:=0;
                  end{If}
                 else
                  begin
                   Writeln (c,x);
                   k:=1;
                  end;{else}
             end;{While}
           end;{Rozdel}

procedure Sluc (var a,b,c,d: Text);
           var x,y:Integer;
           begin
            While not (Eof(b)) and (Eof (c)) do
             begin
                 Readln (b,x);
                 Readln (c,y);
                 If x<y then
                   begin
                    Writeln (d,x);
                    Writeln (d,y);
                   end{If1}
                  else
                   begin
                    Writeln (d,y);
                    Writeln (d,x);
                   end;{else}
             end;{While}
           end;{Sluc}

var a,b,c,d:Text;
    k:Integer;
begin
 Assign (a,'I:\Programovani\Trideni\Vnejsi\A.txt');
 Assign (b,'I:\Programovani\Trideni\Vnejsi\B.txt');
 Assign (c,'I:\Programovani\Trideni\Vnejsi\C.txt');
 Assign (d,'I:\Programovani\Trideni\Vnejsi\D.txt');
 Rozdel(a,b,c,k);
 Sluc (a,b,c,d);
 Close (a);
 Close (b);
 Close (c);
 Close (d);
end.
