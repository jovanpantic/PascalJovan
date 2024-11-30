program nizubrojeva1doNispisabrojsanajvecimzbiromcifara;

var
  n,a,z,min,max,m,i: integer;

begin
  read(n);
  read(a);
  z:=0;
  while a>0 do
  begin
    m:=a mod 10;
    z:=z+m;
    a:=a div 10;
  end;
  max:=z;
  min:=z;
  for i:=2 to n do 
  begin
    read(a);
    z:=0;
    m:=0;
    while a>0 do
    begin
      m:=a mod 10;
      z:=z+m;
      a:=a div 10;
    end;
    if z>max then max:=z;
    if z<min then min:=z;
  end;
  writeln(max);
  writeln(min);
end.
