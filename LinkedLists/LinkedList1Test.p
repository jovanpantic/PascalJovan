program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek,dod:^cvor;
b:integer;
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
  tek:=head^.sled;
  dod:=head^.sled^.sled;
  head^.sled:=dod;
  tek^.sled:=dod^.sled;
  dod^.sled:=tek;
  tek:=head;
  while tek <> nil do 
  begin
    write(tek^.broj);
    tek:=tek^.sled;
  end;
  end.