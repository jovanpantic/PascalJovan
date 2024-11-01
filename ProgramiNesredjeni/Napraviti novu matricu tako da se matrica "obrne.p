program Napraviti;

var
  v,k,n,m: longint;
  a,b: array[1..1000,1..1000] of longint;

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
  for v := 1 to m do
  begin
    for k := 1 to n do
    begin
    b[v,k] := a[m-v+1,k];
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
    writeln('');
  for v:= 1 to m do
  begin
    writeln('');
    for k:=1 to n do
    begin
      write(b[v,k]);
      write('  ');
    end;
  end;
end.