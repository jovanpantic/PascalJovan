program Napraviti;

var
  
  v,k,n,m,z,d: longint;
  a,b: array[1..1000,1..1000] of longint;
  c: array[1..1000] of longint;

begin

random;
read(m);
read(n);
d:=0;
for v := 1 to m do
begin
  z:=0;
  d:=d+1;
  for k := 1 to n do
  begin
  
  a[v,k] := round(Random * 98 + 10);
  z:=z+a[v,k];
   end;
   c[d]:=z;
end;
   for v:= 1 to m do 
   begin
   z:=0;
   for k:=1 to n do 
   begin
   b[v,k]:= round(c[v]/a[v,k]);
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
