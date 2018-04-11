program geometr;

uses
  crt;

type
  TUtvar = class
    protected
      { Zadan‚ strany (polomØr) musej¡ m¡t kladnou d‚lku a mus¡ splåovat
        troj£heln¡kovou nerovnost (u troj…heln¡k…), pý¡padnØ jin‚ po§adavky
        u jinìch geometrickìch £tvar…. Je-li toto splnØno, nastav¡ se
        hodnota je_validni na true jinak bude false. }
      je_validni: Boolean;
    public
      { Abstraktn¡ metody nemaj¡ implementaci, jen se t¡m ý¡k , §e
        potomci tuto metodu musej¡ m¡t a definuje se a§ v nich
        (direktiva virtual). Zavol n¡ abstraktn¡ metody zp…sob¡ chybu. }
      function zjisti_obvod: Real; virtual; abstract;
      function zjisti_obsah: Real; virtual; abstract;
      procedure vypis; virtual; abstract;
  end;

  TTrojuhelnik = class(TUtvar)
    protected
      a, b, c: Real;
    public
      constructor create(_a, _b, _c: Real);
      function zjisti_obvod: Real; override;
      function zjisti_obsah: Real; override;
      function je_pravouhly:String;
  end;

  TPravouhly = class(TTRojuhelnik)
    public
      constructor create(_a, _b: Real); { pýepona se dopoŸ¡t  z odvØsen }
      function zjisti_obsah: Real; override;
  end;

  TRovnoramenny = class(TTrojuhelnik)
    public
      constructor create(_a, _b: Real); { strana c bude m¡t stejnou d‚lku jako strana a }
  end;

  TCtverec = class (TUtvar)
   protected
    a : Real;
   public
    constructor create (_a : Real);
    function zjisti_obvod: Real; override;
    function zjisti_obsah: Real; override;
   end;

  TObdelnik = class (TUtvar)
   protected
    a,b : Real;
   public
    constructor create (_a,_b : Real);
    function zjisti_obvod: Real; override;
    function zjisti_obsah: Real; override;
  end;

constructor TTrojuhelnik.create(_a, _b, _c: Real);
begin
  writeln('Volam konstruktor pro obecny trojuhelnik');
  a:=_a;
  b:=_b;
  c:=_c;
  if (a+b>c) and (a+c>b) and (b+c>a) and (a>0) and (b>0) and (c>0) then je_validni:=true;
end;

function TTrojuhelnik.zjisti_obvod: Real;
begin
  writeln('Pocitam obvod pro obecny trojuhelnik');
  if je_validni then result:=a + b + c
  else result:=0;
end;

function TTrojuhelnik.zjisti_obsah: Real;
var
  s: Real;
begin
  writeln('Pocitam obsah pro obecny trojuhelnik');
  if je_validni then
  begin
    s:=(a+b+c)/2;
    result:=sqrt(s*(s-a)*(s-b)*(s-c));
  end
  else result:=0;
end;

function TTrojuhelnik.je_pravouhly:String;
var x,y,z:Real;
begin

if je_validni then
begin
if a>b then
begin
if a>c then
begin
 z:=a;
 x:=b;
 y:=c;
end
else
z:=c;
x:=b;
y:=a;
end
else
begin
if a>c then
begin
 z:=a;
 x:=b;
 y:=c;
end
else
z:=c;
x:=b;
y:=a;
end;
end;

end;

constructor TPravouhly.create(_a, _b: Real);
begin
  writeln('Volam konstruktor pro pravouhly trojuhelnik');
  a:=_a;
  b:=_b;
  c:=sqrt(a*a+b*b);
  if (a>0) and (b>0) then je_validni:=true;
end;



function TPravouhly.zjisti_obsah: Real;
begin
  writeln('Pocitam obsah pro pravouhly trojuhelnik');
  if je_validni then result:=(a*b)/2
  else result:=0;
end;

constructor TRovnoramenny.create(_a, _b: Real);
begin
  writeln('Volam konstruktor pro rovnoramenny trojuhelnik');
  a:=_a;
  b:=_b;
  c:=_a;
  if (a>0) and (b>0) then je_validni:=true;
end;

constructor TCtverec.create(_a: Real);
begin
  writeln('Volam konstruktor pro ctverec');
  a:=_a;
  je_validni:=a>0;
end;

function Tctverec.zjisti_obvod: Real;
begin
  writeln('Pocitam obvod pro ctverec');
  if je_validni then result:=4*a
  else result:=0;
end;

function Tctverec.zjisti_obsah: Real;
begin
  writeln('Pocitam obsah pro ctverec');
  if je_validni then result:=a*a
  else result:=0;
  end;

constructor TObdelnik.create (_a,_b: Real);
 begin
  writeln('Volam konstruktor pro ctverec');
  a:=_a;
  b:=_b;
  je_validni:=(a>0) and (b>0);
end;

function TObdelnik.zjisti_obvod: Real;
begin
  writeln('Pocitam obvod pro obdelnik');
  if je_validni then result:= 2*(a+b)
  else result:=0;
end;

function TObdelnik.zjisti_obsah: Real;
begin
  writeln('Pocitam obsah pro obdelnik');
  if je_validni then result:= a*b
  else result:=0;
  end;

var
  utvar : TUtvar;
  obvod, obsah: Real;
  volba : char;
  m,n,o:integer;

begin
Repeat
  ClrScr;
  Writeln ('Co chcete udelat :');
  Writeln ('1: Vytvorit obecny trojuhelnik');
  Writeln ('2: Vytvorit pravouhly trojuhelnik');
  Writeln ('3: Vytvorit rovnoramenny trojuhelnik');
  Writeln ('4: Vytvorit ctverec');
  Writeln ('5: Vytvorit obdelnik');
  Writeln ('0: Konec');
repeat until KeyPressed;
   Volba :=ReadKey;


case Volba of
  '1' :
  begin
   Write ('Zadejte stranu m : ');
   Readln (m);
   Write ('Zadejte stranu n : ');
   Readln (n);
   Write ('Zadejte stranu o : ');
   Readln (o);
   utvar:=TTrojuhelnik.create(m,n,o);
   obvod:=utvar.zjisti_obvod;
   obsah:=utvar.zjisti_obsah;
   writeln('Obvod: ', obvod:1:4, ', obsah: ', obsah:1:4);
   utvar.free;
   readkey;
  end;
  '2':
  begin
   Write ('Zadejte stranu m : ');
   Readln (m);
   Write ('Zadejte stranu n : ');
   Readln (n);
   utvar:=TPravouhly.create(m,n);
   obvod:=utvar.zjisti_obvod;
   obsah:=utvar.zjisti_obsah;
   writeln('Obvod: ', obvod:1:4, ', obsah: ', obsah:1:4);
   utvar.free;
   readkey;
  end;
  '3':
  begin
   Write ('Zadejte stranu m : ');
   Readln (m);
   Write ('Zadejte stranu n : ');
   Readln (n);
   utvar:=TRovnoramenny.create(m,n);
   obvod:=utvar.zjisti_obvod;
   obsah:=utvar.zjisti_obsah;
   writeln('Obvod: ', obvod:1:4, ', obsah: ', obsah:1:4);
   utvar.free;
   readkey;
   end;
  '4':
  begin
   Write ('Zadejte stranu m : ');
   Readln (m);
   utvar:=TCtverec.create(m);
   obvod:=utvar.zjisti_obvod;
   obsah:=utvar.zjisti_obsah;
   writeln('Obvod: ', obvod:1:4, ', obsah: ', obsah:1:4);
   utvar.free;
   readkey;
  end;
  '5':
  begin
   Write ('Zadejte stranu m : ');
   Readln (m);
   Write ('Zadejte stranu n : ');
   Readln (n);
   utvar:=TObdelnik.create(m,n);
   obvod:=utvar.zjisti_obvod;
   obsah:=utvar.zjisti_obsah;
   writeln('Obvod: ', obvod:1:4, ', obsah: ', obsah:1:4);
   utvar.free;
   readkey;
  end;
end;
until volba ='0';
end.
