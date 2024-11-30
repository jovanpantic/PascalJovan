program ispisati_sve_parne_brojeve_matrice;

var
  v,k,n,m: longint;
  a: array[1..1000,1..1000] of longint;

begin
  read(m);
  read(n);
  for v:=1 to m do for k:=1 to n do read(a[v,k]);
  for k:=1 to n do
  begin
  for v:=1 to m do 
  begin
  if (a[v,k] mod 2) = 0 then write(a[v,k]); 
  end;
  end;
end.