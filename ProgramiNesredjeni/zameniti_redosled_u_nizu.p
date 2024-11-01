program zameniti_redosled_u_nizu;

var
  n,i: longint;
  a,b: array[1..1000000] of longint;
  
begin

  read(n);
  for i:= 1 to n do read(a[i]);
  writeln('');
  for i:= 1 to n do b[i]:=a[n-i+1];
  for i:=1 to n do writeln(b[i]);

end.