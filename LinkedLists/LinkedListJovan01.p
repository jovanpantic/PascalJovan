program jedan;

type
cvor=record
broj:integer;
pokazivac:^cvor;
end;

var
head,tail,tek,trazeni:^cvor;
n,b,i,k:integer;
procedure dod(b:integer;var tail:pointer);
var
dod1:^cvor;
begin
  New(dod1);
  dod1^.broj:=b;
  tail^.pokazivac:=dod1;
  tail:=dod1;
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
  dod(b,tail);
  end;
  tek:=head;
  while tek <> nil do 
  begin
  write(tek^.broj);
  tek:=tek^.pokazivac;
  end;
end.