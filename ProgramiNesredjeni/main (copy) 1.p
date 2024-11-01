program tri;

var
  i,n: longint;
  a,b: array[1..1000000] of real;

begin  

  read(n);
  for i := 1 to n do read(a[i]);
  writeln('');

  
  for i:=1 to round(n/4) do b[i]:=a[i+round(n/4)];
  for i:=round(n/4)+1 to round(2*n/4) do b[i]:=a[i+round(n/4)];
  for i:=round(2*n/4)+1 to round(3*n/4) do b[i]:=a[i+round(n/4)];
  for i:=round(3*n/4)+1 to round(4*n/4) do b[i]:=a[i-round(3*n/4)];

  for i:=1 to n do writeln(b[i]);

end.