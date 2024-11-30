program Napraviti;

var
  c:real;
  v,k,n,m,d: longint;
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
  b[v,k] := a[v,k];
   end;
end;
   for v:= 1 to m do 
   begin
   for k:=1 to n do 
   begin
   c:=sqrt(a[v,k]);
   d:=round(sqrt(a[v,k]));
   if c=d then b[v,k]:=a[v,k]
   else b[v,k]:=sqr(a[v,k]);
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
