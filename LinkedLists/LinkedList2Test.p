program jedan;
type
cvor=record
broj:integer;
sled:^cvor;
end;
var
head,tail,tek,dod,sled:^cvor;
b,n,i:integer;
begin
 read(b);
 read(n);
 New(tek);
 tek^.broj:=b;
 head:=tek;
 tail:=tek;
 for i:= 1 to (n-1) do 
 begin
 read(b);
 New(tek);
 tek^.broj:=b;
 tek^.sled:=head;
 head:=tek;
 end;
 tek:=head;
 while tek<> nil do 
 begin
 write(tek^.broj);
 tek:=tek^.sled;
 end;
end.