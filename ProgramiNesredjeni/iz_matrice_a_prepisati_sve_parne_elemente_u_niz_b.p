program iz_matrice_a_prepisati_sve_parne_elemente_u_niz_b;

var
  v,k,n,m,l,i: longint;
  b: array[1..10000]of longint;
  a: array[1..1000,1..1000] of longint;

begin
  read(m);
  read(n);
  l:=0;
  for v:=1 to m do for k:=1 to n do read(a[v,k]);
  for v:=1 to m do
  begin
    for k:=1 to n do 
    begin
      if (a[v,k] mod 2) = 0 then 
      begin
        l:=l+1;
        b[l]:=a[v,k];
      end;
    end;
  end;
  writeln(' ');
  for i:=1 to l do writeln(b[i]);
end.