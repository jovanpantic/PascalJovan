program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek,head1,tail1,tek1:^cvor;
b,k,z,i:integer;
a:array [1..100] of longint;
begin
  z:=0;
  k:=0;
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
  tek:=head;
  while tek <> nil do 
  begin
    k:=0;
    tek1:=head1;
    while tek1 <> nil do 
    begin
      if tek^.broj = tek1^.broj then k:=1;
      tek1:=tek1^.sled; 
    end;
     if k = 0 then 
     begin
     z:=z+1;
     a[z]:=tek^.broj;
     end;
     tek:=tek^.sled;
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
  for i:= 1 to z do 
  begin
  writeln();
  write(a[i]);
  end;
end.