program uneti_broj_z_i_posle_naci_mjegovu_poziciju_u_matrici;

var
  v,k,n,m,z: longint;
  a: array[1..1000,1..1000] of longint;

begin

  read(z);
  read(m);
  read(n);
  
  
  for v:=1 to m do
  begin
    for k:=1 to n do
    begin
      readln(a[v,k]);
    end;
  end;
  for v:=1 to m do
  begin
    for k:=1 to n do
    begin
      if z=a[v,k] then  writeln(v,',',k);

    end;
  end;
end.