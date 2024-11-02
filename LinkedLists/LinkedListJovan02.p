program jedan;

type
  cvor=record
  broj:integer;
  sled:^cvor;
end;

var
  head,tail,tek:^cvor;
  n,b,i:integer;

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
  New(tek);
  tek^.broj:=b;
  tail^.sled:=tek;
  tail:=tek;
  end;
  
  tek:=head;
  while tek <> nil do 
  begin
  write(tek^.broj);
  tek:=tek^.sled;
  end;
  
end.