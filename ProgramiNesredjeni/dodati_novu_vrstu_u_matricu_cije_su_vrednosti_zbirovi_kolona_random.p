program dodati_novu_vrstu_u_matricu_cije_su_vrednosti_zbirovi_kolona_random;

var
  v,k,z,l,n,m: longint;
  a,b: array[1..1000,1..1000] of longint;

begin

random;

read(m);
read(n);

l:=0;

for v := 1 to m do
begin
  for k := 1 to n do
  begin
  a[v,k] := round(Random * 8 + 1); 
  b[v,k] := a[v,k];
   end;
end;

for k := 1 to n do
begin
  z:=0;
  
    for v:= 1 to m do
      begin
        z:=z+a[v,k];
      end;
      
     if l<= n then
     begin
        l:=l+1;
        b[m+1,l]:=z;
      end;
end;
  
  for v:= 1 to m+1 do
  begin
  writeln('');
  for k:=1 to n do
  begin
  write(b[v,k]);
  write('  ');
  end;
  end;
end.