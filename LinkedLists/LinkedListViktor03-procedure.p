program jedan;

type
cvor=record
broj:integer;
sled:^cvor;
end;

var
head,tail,tek,trazeni:^cvor;
n,b,i:integer;

procedure add_beg(k:integer;var head:pointer);
var 
dod:^cvor;
begin
    New(dod);
    dod^.broj:= k;
    dod^.sled:= head;
    head:=dod;
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
      add_beg(b,head);
  end;


  tek:=head;
  while tek <> nil do 
  begin
      write(tek^.broj);
      tek:=tek^.sled;
  end;
end.