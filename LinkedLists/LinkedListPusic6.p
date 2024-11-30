program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek,tek1,head1:^cvor;
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
        head1:=nil;
        tek := head;
        while tek <> nil do
        begin
            New(tek1);
            tek1^.broj := tek^.broj;
            tek1^.sled := head1; 
            head1 := tek1;
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