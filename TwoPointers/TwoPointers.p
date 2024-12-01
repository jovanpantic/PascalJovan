program jedan;

var
a:array [1..100] of longint;
j,i,n,m,k:longint;

begin
  read(n);
  for i:= 1 to n do 
  begin
    read(a[i]);
  end;
  i:=1;
  j:=i+1;
  while j<=n do 
  begin
  while ((a[j] mod 10) <> 4) and (j<=n) do j:=j+1;
  while ((a[i] mod 10) = 4) and (i<=j) do i:=i+1;
  k:=a[j];
  a[j]:=a[i];
  a[i]:=k;
  end;
  m:=i;
  for i:= 1 to (m-1) do writeln(a[i]);
end.
