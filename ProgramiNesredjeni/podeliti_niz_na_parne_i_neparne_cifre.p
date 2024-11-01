program podeliti_niz_na_parne_i_neparne_cifre;

var
  n,i: longint;
  a: array[1..1000000] of longint;
  
begin
  read(n);
  for i:=1 to n do read(a[i]);
  for i:=1 to n do
    begin
      if (a[i] mod 2)=0 then write(a[i],',');
    end;
  writeln('');
  for i:=1 to n do
    begin
      if (a[i] mod 2)<>0 then write(a[i],',');
    end;
  
  
end.