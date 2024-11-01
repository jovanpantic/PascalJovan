program  zbirsvihdelioca;

var
a,n,i,d:longint;
 

begin


d:=0;
read(a);

for i:= 1 to a do 
begin
  if (a mod i)=0 then d:=d+i;
end;
write(d);


end.