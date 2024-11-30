program najvecizbirdvasuseda;

var
  n,a,b,max,t,i: longint;
  
begin
  read(n);
  read(a);
  read(b);
  max:=a+b;
  t:=b;
  for i:=3 to n do
  begin
    read(a);
    if (a+t)>max then max:=a+t;
    t:=a
  end;
write(max);


end.