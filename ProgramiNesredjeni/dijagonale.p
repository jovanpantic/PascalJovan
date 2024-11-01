program dijagonale;

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
  a[v,k] := round(Random * 8 + 1); 
   end;
end;
  for v := 1 to m do
  begin
    for k := 1 to n do
    begin
    a[v,v] := 0;
    a[v,n+1-v] :=0;
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