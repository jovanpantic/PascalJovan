program sortiranje;

var
  i,n,p,l,d: longint;
  a: array[1..1000000] of longint;
  b:array[1..10000]of longint;
  c:array[1..10000]of longint;
begin  

  read(n);
  for i:=1 to n do 
  begin
  read(a[i]);
  b[i]:=a[i];
  end;
  
  writeln('-');
  
  for l:=1 to (n-1) do 
  begin
    for d:=l+1 to n do
    begin
      if b[l]<b[d] then 
      begin 
      p:=b[l];
      b[l]:=b[d];
      b[d]:=p;
      end;
    end;
  end;
  
  for i:=1 to round(n/2) do c[i]:=b[n+1-i]+b[i];
  for i:=1 to n do writeln(a[i]);
  writeln('-');
  for i:=1 to n do writeln(b[i]);
  writeln('-');
  for i:=1 to round(n/2) do writeln(c[i]);
end.