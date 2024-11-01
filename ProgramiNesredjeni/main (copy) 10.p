program jedan;

var
  p:real;
  i,n,z,k: longint;
  a: array[1..1000000] of longint;
  b:array[1..10000]of real;
 
begin  
  z:=0;
  k:=0;
  read(n);
  for i:=1 to n do 
  begin
  read(a[i]);
  z:=z+a[i];
  k:=k+1;
  end;
  p:=z/k;
  writeln('-');
  for i:=1 to n do 
  begin
  if a[i]>p then b[i]:=a[i]-p
  else b[i]:=p-a[i];
  end;
  for i:=1 to n do writeln(a[i]);
  writeln('-');
  for i:=1 to n do writeln(b[i]);
end.