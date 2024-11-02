program jedan;

type
cvor=record
broj:integer;
sled:^cvor;
end;

var
head,tail,tek,trazeni:^cvor;
n,b,i,k,j:integer;

function dod(k:integer;head:pointer):integer;
var
tek,dodat:^cvor;
br,ko:integer;
begin
    New(dodat);
    dodat^.broj:=k;
    tek:=head;
    br:=0;
    while tek^.sled <> nil do 
    begin
        br:=br+1;
        if (k> tek^.broj) and (k< tek^.sled^.broj) then 
        begin
            dodat^.sled:= tek^.sled;
            tek^.sled:= dodat;
            ko:=br;
        end;
        tek:=tek^.sled;
    end;
    dod:=ko;
end;

begin
  read(n);
  read(b);
  New(tek);
  tek^.broj:=b;
  head:=tek;
  tail:=tek;
  for i:= 1 to (n-1) do 
  begin
  read(b);
  New(tek);
  tek^.broj:=b;
  tail^.sled:=tek;
  tail:=tek;
  end;
  read(k);
 j:= dod(k,head);
  tek:=head;
  while tek <> nil do 
  begin
  write(tek^.broj);
  tek:=tek^.sled;
  end;
  writeln();
  write(j+1);
end.