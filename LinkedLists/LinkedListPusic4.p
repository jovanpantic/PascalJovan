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
    tek := head;
  while (tek <> nil) and (tek^.sled <> nil) and (tek^.sled^.sled <> nil) and (tek^.sled^.sled^.sled <> nil) do 
  begin
    x := tek^.sled^.sled^.broj - tek^.sled^.sled^.sled^.broj;
    New(dod);
    dod^.broj := x;
    dod^.sled := tek^.sled;
    tek^.sled := dod;
    tek := dod^.sled; 
  end;
    tek:=tek^.sled;
  tek:=head;
  while tek <> nil do 
  begin
  write(tek^.broj);
  tek:=tek^.sled;
  end;
end.