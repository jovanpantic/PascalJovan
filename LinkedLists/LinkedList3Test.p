program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek:^cvor;
b,br:integer;
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
  br:=0;
  tek:=head;
  while tek <> nil do 
  begin
    if tek^.sled = tail then 
    begin
      tek^.sled:=nil;
      tail:=tek;
      
    end;
    tek:=tek^.sled;
    br:=br+1;
  end;
  tek:=head;
  while tek <> nil do 
  begin
  tek^.broj:=tek^.broj + br;
  tek:=tek^.sled;
  end;
  tek:=head;
  while tek <> nil do 
  begin
    write(tek^.broj);
    tek:=tek^.sled;
  end;
  writeln();
  write(br);
  end.