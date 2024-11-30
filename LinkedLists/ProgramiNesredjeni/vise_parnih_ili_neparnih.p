program vise_parnih_ili_neparnih;

var
n,i,p,np,a:integer;

begin
read(n);
p:=0;
np:=0;
for i:=1 to n do 
begin
  read(a);
  if (a mod 2)=0 then p:=p+a
  else np:=np+a;
end;
if np>p then write('ima vise neparnih ', np)
else write('ima vise parnih ', p);
  

end.