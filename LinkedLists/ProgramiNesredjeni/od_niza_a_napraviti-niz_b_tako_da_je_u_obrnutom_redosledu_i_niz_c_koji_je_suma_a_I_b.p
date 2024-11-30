program od_niza_a_napraviti_niz_b_tako_da_je_u_obrnutom_redosledu_i_niz_c_koji_je_suma_a_I_b;

var
  n,i: longint;
  a,b,c: array[1..1000000] of longint;
begin  
  read(n);
  for i:=1 to n do read(a[i]);
  writeln('');
  for i:=1 to n do b[i]:=a[n-i+1];
  for i:=1 to n do c[i]:=a[i]+b[i];
  for i:=1 to n do writeln(c[i]);
end.