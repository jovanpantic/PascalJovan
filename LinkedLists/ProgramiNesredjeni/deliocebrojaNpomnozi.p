program deliocebrojaNpomnozi;
var
n,i,b:integer;

begin
read(n);
b:=1;
for i:=1 to n do if (n mod i)=0 then b:=i*b;
writeln(b);

end.