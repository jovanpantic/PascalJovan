program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek,dod:^cvor;
b,x,z,y,br:integer;
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
  br:=0;
  while tek <> nil do 
  begin
  br:=br + 1;
  if (br mod 2) = 0 then
  begin
  write(tek^.broj,'  ');
  end;
  tek:=tek^.sled;
  end;
  writeln();
  tek:=head;
  while tek <> nil do 
  begin
  write(tek^.broj);
  tek:=tek^.sled;
  end;
end.