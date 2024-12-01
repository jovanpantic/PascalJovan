program jedan;
var
a:array [1..100] of integer;
j,i,n,k,p:integer;
begin
  read(k);
  read(n);
  for i:= 1 to n do 
  begin
    read(a[i]);
  end;
  p:=0;
  i:=1;
  j:=n;
  while i<=j do 
  begin
    if (a[j]+a[i]) > k then j:=j-1;
    if (a[j]+a[i]) < k then i:=i+1;
    if (a[j]+a[i]) = k then 
    begin
    p:=1;
    break;
    end;
  end;
  if p=1 then writeln('ima') 
  else writeln('nema');
end.
