program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek:^cvor;
b,z,br,pr,zb:integer;
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
  z:=0;
  br:=0;
  while tek <> nil do 
  begin
  br:=br+1;
  z:=z+tek^.broj;
  tek:=tek^.sled;
  end;
  zb:=0;
  pr:=round(z/br);
  tek:=head;
  while tek <> nil do 
  begin
  if tek^.broj > pr then zb:=zb+tek^.broj;
  tek:=tek^.sled;
  end;
  tek:=head;
  while tek <> nil do 
  begin
  write(tek^.broj);
  tek:=tek^.sled;
  end;
  writeln();
  write(pr);
  writeln();
  write(zb);
end.