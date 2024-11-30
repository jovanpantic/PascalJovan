program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek:^cvor;
b:integer;
p:real;
function prosek(head:pointer):real;
var
tek:^cvor;
br,z:integer;
p:real;
begin
  tek:=head;
  br:=0;
  z:=0;
  while tek <> nil do 
  begin
    br:=br+1;
    z:=z + tek^.broj;
    tek:=tek^.sled;
  end;
  p:= z/br;
  prosek:=p;
end;
begin
  read(b);
  New(tek);
  tek^.broj:=b;
  head:=tek;
  tail:=tek;
  while tek^.broj <> 0 do 
  begin
    read(b);
    New(tek);
    tek^.broj:=b;
    tail^.sled:=tek;
    tail:=tek;
  end;
  tek:=head;
  while tek <> nil do 
  begin
    if tek^.sled = tail then 
    begin
      tek^.sled:=nil;
      tail:=tek;
    end;
    tek:=tek^.sled;
  end;
  tek:=head;
  while tek <> nil do 
  begin
  write(tek^.broj);
  tek:=tek^.sled;
  end;
  p:=prosek(head);
  writeln(p);
end.