program tri;

var
  n,i: longint;
  a,b,c: array[1..1000000] of longint;
begin  
  read(n);
  for i:=1 to n do read(a[i]);
  writeln('');
  for i:=1 to n do b[i]:=a[i]*2;
  for i:=1 to n do c[i]:=a[i]+b[n-i+1];
  for i:=1 to n do writeln(c[i]);
end.