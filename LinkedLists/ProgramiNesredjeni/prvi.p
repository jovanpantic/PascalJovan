program prvi;

var
  v,k,n,m: longint;
  a: array[1..1000,1..1000] of longint;

begin

random;

read(m);
read(n);
for v := 1 to m do
begin
  for k := 1 to n do
  begin
  a[v,k] := round(Random * 98 + 10); 
   end;
end;
  
  for v:= 1 to m do
  begin
    writeln('');
    for k:=1 to n do
    begin
    write(a[v,k]);
    write('  ');
    end;
  end;
end.