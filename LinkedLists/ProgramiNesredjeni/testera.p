program testera;
(* Dat je niz b, napraviti niz a koji se sastoji od elemenata niza b poređanih od najmanjeg ka najvećem *)
var
  i,n,p,l,d,k,m: longint;
  a: array[1..1000000] of longint;
  b:array[1..10000]of longint;
begin  
  k:=0;
  m:=0;
  read(n);
  for i:=1 to n do 
  begin
  read(a[i]);
  end;
  writeln('-');
  for l:=1 to (n-1) do 
  begin
    for d:=l+1 to n do
    begin
      if a[l]<a[d] then 
      begin 
      p:=a[l];
      a[l]:=a[d];
      a[d]:=p;
      end;
    end;
  end;
  for i:=1 to n do
  begin
    if (i mod 2)=0 then 
    begin
      m:=m+1;
      b[i]:=a[m];
    end
    else 
    begin
      k:=k+1;
      b[i]:=a[n+1-k];
    end;
  end;
  for i:=1 to n do writeln(a[i]);
  writeln('-');
  for i:=1 to n do writeln(b[i]);
end.