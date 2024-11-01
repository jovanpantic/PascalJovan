program najvećinegativanbroj;

var
a,n,i,t:longint;
 

begin

read(n);
t:=1;
for i:= 1 to n do 
begin
  read(a);
  if a<0 then 
  begin
    if t=1 then t:=a
    else if a>t then t:=a;
  end;
end;
if t=1 then 
  write('0')
else write (t);







end.