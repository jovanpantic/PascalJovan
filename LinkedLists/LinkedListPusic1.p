program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek,dod:^cvor;
b,x,z,y:integer;
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
  read(x);
  read(y);
  read(z);
  New(dod);
  dod^.broj:=z;
  while tek <> nil do 
  begin
    if (tek^.broj = x) and (tek^.sled^.broj= y) then
    begin
    dod^.sled:=tek^.sled;
    tek^.sled:=dod;
    end;
    tek:=tek^.sled;
  end;
  tek:=head;
  while tek <> nil do 
  begin
  write(tek^.broj);
  tek:=tek^.sled;
  end;
end.