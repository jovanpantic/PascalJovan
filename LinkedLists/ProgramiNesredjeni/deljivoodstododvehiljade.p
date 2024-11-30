program deljivoodstododvehiljade;
var
i,k,b:integer;

begin
read(k);
b:=0;
for i:=100 to 2000 do 
begin
if(i mod k)=0 then 
begin
b:=b+1;
writeln(i);
end;

end;
writeln(b);

end.