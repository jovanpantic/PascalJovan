program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek,head1,tail1,tek1,dod:^cvor;
b:integer;
p:real;
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

  
  read(b);
  New(tek1);
  tek1^.broj:=b;
  head1:=tek1;
  tail1:=tek1;
  while tek1^.broj <> 0 do 
  begin
    read(b);
    New(tek1);
    tek1^.broj:=b;
    tail1^.sled:=tek1;
    tail1:=tek1;
  end;
  tek1:=head1;
  while tek1 <> nil do 
  begin
    if tek1^.sled = tail1 then 
    begin
      tek1^.sled:=nil;
      tail1:=tek1;
    end;
    tek1:=tek1^.sled;
  end;
 tek := head;
while tek <> nil do
begin
  tek1 := head1;
  while tek1 <> nil do 
  begin
    if (tek^.broj > tek1^.broj) and (tek1^.sled <> nil) and (tek^.broj < tek1^.sled^.broj) then
    begin
      New(dod);
      dod^.broj := tek^.broj;
      dod^.sled := tek1^.sled;
      tek1^.sled := dod;
      break; 
    end;
   if tek^.broj < head1^.broj then
    begin
      New(dod);
      dod^.broj := tek^.broj;
      dod^.sled := head1;
      head1 := dod;
      break;
    end;
    if tek1^.sled = nil then
    begin
      New(dod);
      dod^.broj := tek^.broj;
      tek1^.sled := dod;
      tail1 := dod;
      break;
    end;
    tek1 := tek1^.sled;
  end;
  tek := tek^.sled;
end;
  tek:=head;
  while tek <> nil do 
  begin
  write(tek^.broj);
  tek:=tek^.sled;
  end;
  
  writeln();
  
  tek1:=head1;
  while tek1 <> nil do 
  begin
  write(tek1^.broj);
  tek1:=tek1^.sled;
  end;
end.