program iz_niza_odstampati_prosek_elemenata_na_pozicijama_deljivim_sa_sest_i_proizvod_elemenata_manjih_od_sto;

var
  t:real;
  n,i,pr,p,z: longint;
  a: array[1..1000000] of longint;
  
begin

  read(n);
  pr:=1;
  z:=0;
  p:=0;
  
  for i:= 1 to n do 
  begin 
    read(a[i]);
    if (i mod 6)=0 then
    begin
      z:=z+1;
      p:=p+a[i];
    end;
    if a[i]<100 then pr:=pr * a[i];
  end;
  t:=p/z;
  writeln(t);
  writeln(pr);
  
  
end.