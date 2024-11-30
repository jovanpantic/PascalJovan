program jedan;

var
  v,k,n,z,m: longint;
  a,b: array[1..1000,1..1000] of longint;

begin  
  z:=0;
  read(n);
  read(m);
  for k:=1 to n do  for v:=1 to m do read(a[k,v]);
  for k:=1 to n do
  begin
  z:=0;
  for v:=1 to m do z:=z+a[k,v];
  b[n+1,k]:=z;
  end;
  for k:=1 to n do  for v:=1 to m do b[k,v]:=a[k,v];
  for k:=1 to n do
  begin
  writeln('');
  for v:=1 to m do
  begin;
  write('  ');
  write(b[k,v]);
  end;
  end;

  for v:=1 to m-1 do 
  begin
  writeln('');
  write(b[n+1,k])
  end;
end.