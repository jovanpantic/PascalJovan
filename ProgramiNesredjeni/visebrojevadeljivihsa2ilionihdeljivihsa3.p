program visebrojevadeljivihsa2ilionihdeljivihsa3;
var
i,a,n,max2,max3:integer;

begin
read(n);
max2:=0;
max3:=0;
for i:=1 to n do
begin
  read(a);
  if (a mod 2)=0 then max2:=max2+a;
  if (a mod 3)=0 then max3:=max3+a;
end;
if max2>max3 then writeln(max2)
else writeln(max3);
end.