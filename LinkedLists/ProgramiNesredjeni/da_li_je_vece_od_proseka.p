program da_li_je_vece_od_proseka;

var
  p:real;
  i,n,k,z,m: longint;
  a: array[1..1000000] of longint;
  b: array[1..10000]of longint;
begin  
  read(n);
  k:=0;
  z:=0;
  m:=0;
  for i:=1 to n do 
  begin
    read(a[i]);
    z:=z+a[i];
    k:=k+1;
  end;
  p:=z/k;
  for i:=1 to n do 
  begin
    if a[i]>p then 
    begin
      m:=m+1;
      b[m]:=a[i];
    end;
  end;
  writeln('');
  for i:=1 to m do writeln(b[i]);
end.