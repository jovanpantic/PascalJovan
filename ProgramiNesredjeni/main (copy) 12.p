program jedan;

var
  v,k,n,m,z: longint;
  a: array[1..1000,1..1000] of longint;

begin

  read(m);
  read(n);
  z:=0;
  for v:=1 to m do
  begin
    
    for k:=1 to n do
    begin
      read(a[v,k]);
      write('  ');
    end;
    writeln('');
  end;
  for k:=1 to n do 
  begin
    if a[5,k] mod 2 = 0 then z:=z+a[5,k];
  end;
  writeln(z);
end.