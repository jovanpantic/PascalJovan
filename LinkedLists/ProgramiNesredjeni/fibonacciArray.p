program fibonacciArray;

var
  n,i: longint;
  a,b,c: array[1..1000000] of longint;
  
begin

read(n);

a[1]:=1;
a[2]:=1;

for i:=3 to n do a[i]:=a[i-1]+a[i-2];
for i:=1 to n do read(b[i]);

for i:=1 to n do 
  begin
  c[i]:=a[i]-b[i];
  writeln(a[i], ' ', b[i], ' ', c[i]);
  end;
  
end.