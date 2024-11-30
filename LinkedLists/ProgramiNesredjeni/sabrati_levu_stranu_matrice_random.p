program iz_matrice_a_prepisati_sve_parne_elemente_u_niz_b_random;

var
  v,k,z: longint;
  a: array[1..1000,1..1000] of longint;

begin
random;
for v := 1 to 10 do
begin
  for k := 1 to 8 do
  begin
  a[v,k] := round(Random * 8 + 1); (* generate random numbers from 1 to 9 *)
   end;
end;
  z:=0;
  
  for v:=1 to 10 do for k:=1 to 4 do z:=z+a[v,k];
  writeln(' ');
  writeln(z);
end.